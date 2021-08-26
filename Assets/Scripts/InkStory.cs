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

    [Header("UI")]
    public Text UIText;
    public Button nextButton;
    public GameObject choicePrefab;
    public Transform choicesContainer;

    // Start is called before the first frame update
    void Start()
    {
        _inkStory = new Story(inkScript.text);
        NextText();
        choicesContainer.gameObject.SetActive(false);
    }

    public void NextText() {
        if (_inkStory.canContinue) {
            string text = _inkStory.Continue();
            UIText.text = text.Trim();

            if (_inkStory.currentChoices.Count > 0) {
                ManageChoices();
            }
        }

        nextButton.interactable = _inkStory.canContinue;
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
        NextText();
    }
}
