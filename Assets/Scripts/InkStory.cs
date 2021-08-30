using System.Collections;
using System.Collections.Generic;

using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class InkStory : MonoBehaviour
{
    [Header("Config")]
    public TextAsset inkScript;
    Story _inkStory;

    public float charPerSecond = 20f;
    [Range(0.1f, 3f)]
    public float speedMultipler;
    bool _animText;
    string _currentString;
    Coroutine textAnimation;

    public Sprite[] scenarios;
    public Sprite[] characters;

    [Header("UI")]
    public Text UIText;
    public Button nextButton;
    public GameObject choicePrefab;
    public Transform choicesContainer;
    public Image background;
    public Image leftCharacter;
    public Image rightCharacter;

    // Start is called before the first frame update
    void Start()
    {
        _inkStory = new Story(inkScript.text);
        _inkStory.ObserveVariable("velocidad_texto", (_, newValue) => {
            speedMultipler = (float)newValue;
        });
        _inkStory.ObserveVariable("scenario", (_, newValue) => {
            background.sprite = scenarios[(int)newValue];
        });
        _inkStory.ObserveVariable("char_left", (_, newValue) => {
            leftCharacter.sprite = characters[(int)newValue];
        });
        _inkStory.ObserveVariable("char_right", (_, newValue) => {
            rightCharacter.sprite = characters[(int)newValue];
        });

        NextText();
        choicesContainer.gameObject.SetActive(false);        
    }

    public void NextText() {
        if (_animText){
            StopCoroutine(textAnimation);
            EndText();
            return;
        }

        if (_inkStory.canContinue) {
            string text = _inkStory.Continue();
            _currentString = text.Trim();
            textAnimation = StartCoroutine(AnimateText(_currentString));
            // UIText.text = text.Trim();
        }
    }

    void ManageChoices() {
        choicesContainer.gameObject.SetActive(true);
        choicesContainer.DestroyChildren();

        for (int i = 0; i < _inkStory.currentChoices.Count; i++) {
            var index = i;
            var go = Instantiate(choicePrefab, choicesContainer);
            go.GetComponentInChildren<Text>().text = _inkStory.currentChoices[i].text;
            go.GetComponentInChildren<Button>().onClick.AddListener(() => {
                ChooseOption(index);
            });
        }
    }

    void ChooseOption(int index) {
        _inkStory.ChooseChoiceIndex(index);
        choicesContainer.gameObject.SetActive(false);
        nextButton.interactable = true;
        NextText();
    }

    void EndText() {
        UIText.text = _currentString;
        if (_inkStory.currentChoices.Count > 0) {
            ManageChoices();
        }

        nextButton.interactable = _inkStory.canContinue;
        _animText = false;
    }

    IEnumerator AnimateText(string text) {
        _animText = true;
        int letterCounter = 1;

        while (letterCounter < text.Length){
            UIText.text = text.Substring(0, letterCounter);
            letterCounter++;
            yield return new WaitForSeconds(speedMultipler/charPerSecond);
        }

        EndText();
    }
}
