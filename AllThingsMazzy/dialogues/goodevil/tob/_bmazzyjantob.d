// 1st Mazzy-Jan Scene
APPEND MAZZY25J IF  WEIGHT #-1 ~Global("_bMazzyJan","GLOBAL",3)~ THEN _bMazzyJandialogue1
	SAY @0 /*Help me! Arvoreen protect me!*/
	++ @1 /*Mazzy, wake up. It's just a nightmare.*/ + _bMazzyJandialogue2
	++ @2 /*Are you all right? What's going on?*/ + _bMazzyJandialogue2
	++ @3 /**sigh* I'm never going to get a full night's sleep at this rate. Wake up, will you?*/ + _bMazzyJandialogue2
	END
	
	IF ~~ THEN _bMazzyJandialogue2
	SAY @4 /**gasp* Thank you. My apologies. I did not mean to disturb you.*/ 
	++ @5 /*Hey, that's all right. You've done the same for me.*/ + _bMazzyJandialogue3
	++ @6 /*I was awake already.*/ + _bMazzyJandialogue3
	++ @7 /*I need everyone in fighting shape. And that means I need you rested.*/ + _bMazzyJandialogue3
	END
	
	IF ~~ THEN _bMazzyJandialogue3
	SAY @8 /*Well, I am still sorry. I was dreaming about turnips. I was naked and unarmed in a frozen wasteland, trying to flee while being attacked by giant flesh-eating turnips. That may seem funny now, but I assure you it was terrifying at the time.*/
	++ @9 /*Nightmares always are. I will listen if you wish.*/ EXTERN JAN25J _bMazzyJandialogue4
	++ @10 /*Do you want to talk about it?*/ EXTERN JAN25J _bMazzyJandialogue4
	++ @11 /*I need my henchmen rested, but that does not mean I want to listen to your problems.*/ DO ~SetGlobal("_BMazzyFriendship","GLOBAL",3)~ EXTERN JAN25J _bMazzyJandialogue4
	++ @12 /*Turnips? You were dreaming about turnips? Ha ha ha ha ha ha ha ha ha ha ha ha ha ha!*/ EXTERN JAN25J _bMazzyJandialogue4
	END
END

CHAIN JAN25J _bMazzyJandialogue4
@13 /*Excuse me, Mazzy, <CHARNAME>, but I couldn't help overhearing your conversation. You said you were having a turnip dream, didn't you? That is very odd; my spell should have protected you.*/
== MAZZY25J @14 /*What spell? This is your fault? Why am I not surprised?*/
== JAN25J @15 /*Well, it may be. You see, over the course of my many fascinating adventures, I once angered the god of turnips.*/
== MAZZY25J @16 /*The god of turnips?*/
== JAN25J @17 /*Yes, have you not heard of him? Äkräs is his name. He's worshiped by people far, far to the north, turnips being important to their survival through the winter. You see, turnips are a very special vegetable – they grow underground so they're resistant to cold and they can be stored much longer than many other foods.*/
== MAZZY25J @18 /*I do not care about turnips.*/
== JAN25J @19 /*Well, you did. You were dreaming of them. That is how this conversation started. Anyway, one day I was near a temple of Äkräs and I did not know that the turnips in the garden outside were divine turnips, only to be eaten by the faithful.*/
= @20 /*I was very hungry, but I had no shortage of coin, so I pulled up a turnip and went to the temple to pay. However, by the time I made it inside, I had already eaten half, and this caused no small amount of consternation among the priesthood, let me tell you.*/
= @21 /*I tried to explain that I had the money to pay. I told them to just weigh the half I hadn't eaten and figure out the price from that, but they would not listen. Soon I found myself tied down to a table and ready to be sacrificed.*/
== MAZZY25J @22 /*Yet you are still here.*/
== JAN25J @23 /*Well, of course, Mazzy. I escaped with my usual combination of brilliant inventions and arcane spells, but not before incurring the wrath of Äkräs for all eternity.*/
== MAZZY25J @24 /*You killed his priests?*/
== JAN25J @25 /*Oh no, I did not hurt them, but I ate half a sacred turnip, and I pulled up three more on my way out. They are prickly about food up north, what with those harsh winters. So there I was, fleeing southward as fast as my walruses could take me.*/
== MAZZY25J @26 /*Walruses...?*/
== JAN25J @27 /*Fish the size of horses with great tusks like boars. I had befriended four of them to pull my boat – so much faster than rowing, you see, and well worth the price of fish. But no matter how far I fled, the turnip dreams still followed me. Every night they would torment me and I would flee and wake exhausted.*/
= @28 /*So I dedicated myself to writing a scroll of Protection from Turnips. It took three years to finish, but it keeps me sleeping as peacefully as a drunken baby.*/
== MAZZY25J @29 /*Fine. I will choose to believe that this world contains both walruses and Protection from Turnips incantations. But why was your dream affecting me?*/
== JAN25J @30 /*Well, that is the question. You see, the dream does affect my companions as well, but I always cast Protection from Turnips each night in a 40-foot radius when I prepare to sleep. Maybe you were not within range and I did not notice? I have been doing this for so long that I nearly forgot about it until you mentioned your nightmare.*/
== MAZZY25J @31 /*I had gone to relieve myself. Clearly that was a mistake.*/
== JAN25J @32 /*Yes, it was. You should warn me of these things first. Say, “Excuse me Jan, would you wait to cast your spell? I must answer a call of nature.”*/
== MAZZY25J @33 /*Never. I will never do that. Just check that I am present in the future.*/
== JAN25J @34 /*I will try, but next time you find yourself fleeing from thirty-foot turnips and dreading the gnash of their terrible teeth, don't say I didn't warn you. Äkräs's vengeance is a hideous thing.*/
== MAZZY25J @35 /*Jan... *sigh*... I am going to relieve myself. Once I return, please cast your spell so that I may catch a few hours of sleep before it is time to depart.*/
== JAN25J @36 /*Of course, my dear girl. Was that so hard?*/
== MAZZY25J @37 /*Yes, yes it was. But life is full of trials and one must persevere.*/
DO ~RestParty() SetGlobal("_bmazzyJan","GLOBAL",4)~
EXIT
