VAR velocidad_texto = 1.0
VAR normal = 1.0
VAR nervous = 0.7
VAR surprised = 3.0

CONST ETSUKO_ROOM_DARK = 1
CONST HIBISCUS_AFTERNOON = 2
CONST ETSUKO_ROOM = 1
CONST HIBISCUS_ROOM_DARK = 3
CONST HIBISCUS_ROOM = 3
VAR scenario = 1

CONST ETSUKO = 1
CONST ETSUKO_SAD = 2
CONST HIBISCUS = 3
CONST HIBISCUS_ANGRY = 4
VAR char_left = 0
VAR char_right = 0

~char_left=0
~char_right=0

CONTENT WARNING: This game present instances of Online Harrasment, Stalking and Threats of Violence.
If you're not comfortable with any of these themes, please be wary about the contents of this visual novel.
Viewer discretion is advised

~char_left=ETSUKO_SAD

Etsuko sits quietly on the floor of the room, lights off phone in hand.
Someone had not only been following her, but also taking photos and posting them online in a message forum from a time ago.
It wasn't long before someone found her only social media account and shared it.
She was now receiving innappropiate messages from strangers on the internet. One of the few she felt brought her comfort.
A photo of her with Hibiscus, holding hands, started making the rounds and all the, already bad unwanted attention, turned into lesbophobia.
The messages went from unsolicited gross comments from strangers to people claiming that they knew where she lived, and that they wanted to harm her.
She was already experiencing agoraphobia before this, and she was now panicking real bad.


~velocidad_texto=nervous
Etsuko: W-What should I do...? 
+ [Message her girlfriend] -> yellow1
+ [Handle it on her own] -> blue1


== yellow1 ==
~velocidad_texto=normal
~char_left=0
~scenario=HIBISCUS_AFTERNOON
~char_right=HIBISCUS

The pink haired shop owner, Hibiscus, was finishing up cleaning up after work on her tea house, when her phone started to ring.
She took it out of her pockets to find a message from her girlfriend
Etsuko: Hey Hibiscus, sorry.
Etsuko: I don't think I'll be able to catch you at the end of your job today.
Hibiscus found this weird, Etsuko was too anxious to tell her that she wouldn't go so late in the day, so she inmediately thought it could be something urgent, and that she could be downplaying it.
She messaged her back.
Hibiscus: Is everything okay?
~char_right=0
...
~scenario=ETSUKO_ROOM_DARK
~char_left=ETSUKO_SAD
Etsuko recieved a message back from Hibiscus, her notifications on her social media app were exploding in the background.
+ I am kinda having a situation... -> orange1
+ It's nothing. -> green1
    -> END

== blue1 ==
~velocidad_texto=normal
~scenario=ETSUKO_ROOM
~char_left=ETSUKO_SAD

Etsuko decided to manage the situation on her own.
~char_left=0
Still sitting on the floor in the dark, she went into her DM requests, that sat on +99.
Some went on about her looks, some were gross comments or unsolizcited nudes.
She picked one at random, she decided to skip the message when she noticed a lesbophobic slur on it.
"Why are you doing this?" she wrote back.
Then she went into the messages of the next, this time she didn't skip the mssage, but she wish she did afterwards.
"Is this funny to you?", she wrote, feeling mad.
She went into another one.
...
She wasn't feeling well.
Etsuko spent hours on the unlight floor of her room answering messages from her harassers.
BAD END

    -> END
    
== orange1 ==

Etsuko explained to her girlfriend what was going on.
Etsuko: There's someone taking photos of me...
Etsuko: They're putting them up on this message board site, and it attracted a lot of people, and nasty comments.
Hibiscus: w-what?
Etsuko: Apparently it has been going on for a while, but I just started getting lots of messages...
Hibiscus: I'm going over right now, don't hang up.

~scenario=HIBISCUS_AFTERNOON
~char_left=0
~char_right=0

Hibiscus grabbed her keys, her jacket and closed the shop as it was.
She was holding her phone in her shoulder as she made her way to Etsuko's apartment and Etsuko told her what she knew.

~scenario=ETSUKO_ROOM_DARK
~char_right=HIBISCUS

Hibiscus made it to Etsuko's apartment and told her she was entering over the phone as she used her copy of the keys.
She found Etsuko in her room sitting on the floor in the dark.
~char_left=ETSUKO
Hibiscus: Etsuko!
Etsuko: H-Hibiscus...

    ->yellow2

    -> END
    
== green1 ==

Etsuko sent the message back, then silenced her phone, and curled up agaisnt herself.
She was getting too many gross messages, and too much hate for her to handle.
~char_left=0
...
~scenario=HIBISCUS_AFTERNOON
~char_right=HIBISCUS
Hibiscus waited a few seconds and got an answer back.
Etsuko: "It's nothing."
Hibiscus read her girlfriend's answer a first time, then a second. She thought it was 'out of character', and worried.
She sent a last message to her girlfriend.
Hibiscus: I'm coming over.
Hibiscus rushed to finish up her chores in her store and headed for Etsuko's apartment.
...
Etsuko still sat on the floor of her dark room, unable to think what to do.
Etsuko: Are these people serious?
Etsuko: There's a big chance that... they're just saying stuff like that to scare me...
Etsuko knew she suffered from paranoid thoughts because of her anxiety, so she didn't want to rush to the conclusion that this was, in fact, an actual risk.
While she thought about how real was the danger she could be in, she felt the knob of her door start to move.
Etsuko panicked, as she thought someone who claimed to know where she lived did actually know and was trying to break in.

~char_left=ETSUKO_SAD

Etsuko: It's okay, it's not like they can actually break in, right?

~char_left=0
The door opened.

Etsuko froze up.
Hibiscus entered the room and turned on the lights, Etsuko jumped from the impression, but relaxed as soon as she noticed who she was looking at.

~char_left=ETSUKO_SAD
Etsuko: Hibiscus! You're... here?
Hibiscus: Etsuko! What happened?
Etsuko: I... I don't know how to explain it.
Hibiscus: You could start with why you're not answering your phone, I tried calling you so much before just using the keys you gave me.
Etsuko: Oh... I'm sorry... And I appreciate you trying to not scare me.
Etsuko: ...

Etsuko looked down to the floor, unable to get the words out.

Etsuko: The thing is...

Etsuko took in a deep breath, in which she tohught she might begin crying in any moment.

Etsuko: T-There... There are guys taking photos of me, and putting them on some site...
~char_right=HIBISCUS_ANGRY
Hibiscus: ... What?!
Etsuko: And someone found my social and put it next to it...
Etsuko: I've been receiving a lot of agressive... and gross messages...
Etsuko began crying between her words.

Etsuko: And some of them even have said they want to harm me, and that they know where I live...
Hibiscus: WHAT?!
Etsuko: T-There's photos of both of us there, and it prompted so much hate...
Etsuko was now fully crying
Hibiscus: Homophobic pieces of shit.
-> yellow2
    -> END
    
== yellow2 ==
~char_right=0
Hibiscus gave Etsuko a long hug, she felt her girlfriend tearing up and shaking. She felt horrible Etsuko had to go through something like this.
She went into Etsuko's closet, taking out her travel bag and start filling it with her clothes.
Hibiscus: You're staying over with me.
Etsuko: Uh...?
Hibiscus: You're not safe.
Etsuko: I... I don't...
Hibiscus: You're not safe. We're reporting this to the police, and you'll be with me until we know you're safe.
Hibiscus: Go get your laptop and your phone.

Etsuko noded, and swept some tears away, as she stood up to store her stuff.
Once they both finished putting Etsuko's stuff away, they both left.


{orange1} -> orange2
{not orange1} -> green2




    -> END

== green2 ==
~scenario=HIBISCUS_ROOM_DARK
~char_left=0
~char_right=0


Once they were in Hibiscus' place, and Etsuko had a moment to breathe, Hibiscus asked for Etsuko's phone.
Hibiscus: Let me have a look into your inbox.
Etsuko unlocked her phone and gave it to Hibiscus, who opened up her social media app and went into the Message Requests tab.
Almost all messages were disgusting, and it wasn't long before she felt too disgusted to continue reading just the first words of each of them.
She took screenshots of the messages for evidence, while trying to consciously not read them, and deleted the app.
Hibiscus: You don't need to keep seeing this right now.
Etsuko nodded.
Hibiscus: Where are the photos?
Etsuko took her phone, opened her web browser and gave it back to Hibiscus.
There were post with photos of Etsuko outside near her house, and one of them both holding hands walking around.
There were also lots of text posts with really gross comments.
She took screenshots of what she found and then she called the cops while she left Etsuko to finally sleep in her lap.

...

Hibiscus hung up. She had filed a report for online harrasment and threats of violence.
Etsuko was sleeping soundly.
The poor girl had been going through some really bad anxiety since she realized what was going on.
Being somewhere else with Hibiscus, gave her the first chance to put down her defenses for a long while.
Hibiscus carried Etsuko to her bed and left her to sleep, then walked over to her living room to work on something

...
    -> yellow3

== orange2 ==
~scenario=HIBISCUS_ROOM

Once they were in Hibiscus' place, Hibiscus had convinced Etsuko that she should make a police report.
They both took screenshots of everything on the message board page and the DM's she had gotten.
Etsuko, after a minute of breathing and preparing, called the police and connected with someone that recieved her evidence.

    -> yellow3
    
== yellow3 ==

~scenario=HIBISCUS_ROOM

Etsuko woke up, it was morning already and she found herself sleeping on Hibiscus bed.
For just a moment, she had forgotten what happened the previous day.
She quickly jumped up, and looked around for Hibiscus, who she found sleeping on top of her laptop.
On her screen there was a 404 error.

~char_left=ETSUKO
Etsuko: H-Hibiscus?
Hibiscus slowly woke up, and saw Etsuko.
~char_right=HIBISCUS
Hibiscus: Oh... Hey Etsuko...
Hibiscus stretched and gave a look to her laptop's screen.
After noticing what was on it, she went through a few tabs and after comfirming it, she raised her hands and gave Etsuko a tired
Hibiscus: yaaaayyy~
Etsuko: W-What happened?
Hibiscus: After talking to the police, I looked onto having your photos taken down.
Hibiscus: I talked to their service provider and I think they had their service cut for not following their terms of service by harrasing people with it.
Etsuko: O-Oh! That's great!
Hibiscus noticed Etsuko tearing up.
Hibiscus: I don't know what to do about what you've gotten into your social apart from blocking and reporting, but you should be left alone sooner than later...
Etsuko: W-Will everything be alright?
Hibiscus: You're staying with me longer, at least until the police catch the creep who took the photos.
Etsuko: Is that okay?
Hibiscus: Obviously it's okay. You're not gonna rest one bit at your apartment. Aren't you?
Etsuko: M-Maybe...
Hibiscus hugged Etsuko and they spent a moment appreciating the silence.
Hibiscus: Etsuko... I'm really sorry you had to go through this...I'm sorry you're still going through this...
Etsuko: ...
Hibiscus: It's really messed up, no one should have to go through this.
Hibiscus: Your anxiety must have been killing you.
Etsuko let her tears go out .
Hibiscus: You can stay for however long you like, Etsuko.
Etsuko: T-Thank you...

~char_left=0
~char_right=0

~scenario=0
...
~scenario=HIBISCUS_ROOM
A few months had gone by, but then Etsuko and Hibiscus finally got word that the person who was taking the photos was caught.
They had found the originals in the camera's memory and even all the places it was posted so it could be taken down.
Etsuko finally could rest a bit better, thinking most of the presence of those photos were deleted.
But she also knew that a lot of people had saved them.
Etsuko went back into her social media account for the first time in months, and she found most of her notifs weren't recent.
Just deleting the first page she had found had minimized most of the damage.
She then went to write a post, where she talked about the experience she had to go through, and how you don't have to handle it alone.
...
After some months more, Etsuko decided to move in with Hibiscus permanently, and sell her old apartment.
She didn't feel safe anymore in that area knowing what had happened and knowing more people claimed to know where she lived.
But she finally felt at peace.

GOOD END
    -> END 