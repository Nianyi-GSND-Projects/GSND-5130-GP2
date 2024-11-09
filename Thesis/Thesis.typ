// Preambles

#set page(paper: "us-letter", margin: 0.8in)
#set par(justify: true, linebreaks: "optimized")
#set cite(style: "alphanumeric")
#set text(font: "Times New Roman")
#show text.where(lang: "zh"): set text(font: "KaiTi")
#show link: set text(size: 0.9em, font: "Consolas")

// Title

#(body => {
	set align(left);
	set text(size: 19pt, weight: "bold");
	v(1em);
	body;
})[Inspecting the Usability Issues of _Fortnite: Battle Royale_'s Graphical Interface];

#{
	v(-0.5em);
	let member(name: "", localname: "", mail: "") = {
		show link: set text(font: "Consolas");
		set align(center);

		text()[#name (#localname)];
		linebreak();
		link("mailto:" + mail)[<#mail>];
	};
	table(
		columns: (1fr, 1fr),
		stroke: none,

		member(
			name: "Nian'yi Wang",
			localname: text(lang: "zh")[王念一],
			mail: "wang.nian@northeastern.edu"
		),
		member(
			name: "Sadaf Nezameddini",
			localname: text(lang: "fa")[صدف نظام‌الدینی],
			mail: "nezameddini.s@northeastern.edu"
		),
	);
}

// Abstract

#{
	line(length: 100%, stroke: 0.5pt);

	(body => {
		set align(center);
		show heading: set text(size: 0.9em);
		v(-0.5em);
		heading(level: 1)[#smallcaps(body)];
		v(0.5em);
	})[Abstract];

	par[
		The 2017 video game _Fortnite_ developed by _Epic Games_ is one of the most popular battle royale game across the globe.
		Albeit widely receiving positive reviews, there are players complaining about the game's graphical interface.
		To investigate what gives the players bad experience, we conducted a usability research targeting on new players to this game.
		The players would be asked to play the game for a short time, then take surveys to reflect their experience about the game's graphical interface.
		By analyzing the collected data, we could gain guidance on possible improvements of _Fortnite_'s UI design, as well as insights for similar games in the future.
	];

	v(0.5em);

	line(length: 100%, stroke: 0.5pt);

	v(0.5em);
}

// Context

#columns(2)[

= Introduction

In 2017, _Epic Games_ released their online video game _Fortnite_.
The game became a huge financial success quickly after being released, reaching over 10 million players within two weeks @wikipedia2024fortnite @josh2024howmany. Among its various game modes, _Battle Royale_ which is a competitive survival game mode, turns out to be the most popular one. @wikipedia2024fortnitebattleroyale.

Albeit widely receiving positive reviews, there are players complaining about the game's graphical interface design.
Some says that #quote[_Epic_ is intentionally inducing players into other game modes] @bt1234yt2023epicchangedui; some says that the UI design #quote[is mobile-first] and #quote[lacks proper beta tests because players definitely won't like it] @reddit2023fortniteinterface @paledot24662023epicchangedui.

There are more issues with the in-game HUDs, which are used to deliver the players important information (e.g. HP, location, inventory) or indicate the interactable elements in the game world.
Since there is too many information on the screen at the same time, the UI feels too complex and confusing. This complexity seems to disproportionately affect novice players, making the learning curve steep and often overwhelming. The game does not feature a tutorial system to guide the players.
Some players might feel lost in their first round of battle, as they are unfamiliar with the goal of the  _Battle Royale_ mode.
Also, some important systems of the game (like the building system) could be totally missed by new players.
This is because there is no in-game guidance introducing these systems to the players. The only way for players to discover them is by observing other players using these mechanics during live gameplay. But by the time they need to use the system themselves, they still don't know how to do it.

The problem we aim to address is the usability of _Fortnite_'s interface for new players who are unfamiliar with the game. By interfaces, we mean the game lobby, menus, and HUD. Our study will focus on the learnability aspect of usability, as the challenges experienced by novice players are likely linked to their ability to learn and navigate the game's interface effectively.

= Related Work

Beside of players' disputes, the graphical interface of a video game is often discussed from two opposite aspects in academical literatures.
One aspect stands on the players' subjective stance and tries to analyze the players' experiences; the other aspect evaluates the graphical interface by applying general design principles.

== Player-centric

The earliest usability studies on video games could be traced back to the beginning of the 2000 decade.

_S. Cornett_'s study in 2004 examined usability challenges faced by new players of MMORPGs, the results of which showed that huge improvements for players that are not familiar with the target genre could be done @Cornett2004usability.

In _H. Fricker_'s study in 2012, players were asked to play a collection of high-rated FPS games for a week-long period @fricker2012game.
Follow-up surveys yielded some useful understandings of certain UI features used with the FPS game that players found the most helpful.
We will try to follow these understandings in our research.

_E. Bergman_ and _T. Hermansson_'s research in 2023 specifically studied the effect of one particular form of in-game GUIs---Head-up Display (HUD)---on game immersion @bergman2023effect.
A group of experiment participants were asked to play _Fortnite_ while their biometric data were being measured.
The results showed no significant effect of the choice of HUD design on game immersion, but the players' subjective rating were affected by the design.

== Design Principle-based

This style of approach started a bit later than the previous approach.

In 2008, _Pinelle at al_ collected a wide range of game reviews and developed 10 usability heuristics based on the coded categories @Pinelle2008heuristic.

_Desurvire_ and _Wiberg_ furtherly proposed a more refined and complete list of heuristics on game play in 2009 @Desurvire2009gameusability, called _Heuristics of Playability_ (PLAY) which can be applied game development to aid game developers in usability/playability research during the development cycle.

Similar to @bergman2023effect, _Fagerholt_ and _Lorentzon_ tried a constructive approach by studying preliminary academical literatures in various related fields and formulating hypothesis how player immersion is connected to the user interfaces @fagerholt2009beyond.
After evaluated by user studies and user tests, they proposed a set of guidelines that cover different aspects of the designing of an FPS game.

Although with these heuristics it shall be easier to identify the usability problems in _Fortnite_, _Cheremnykh_'s research in 2024 showed that a one-size-fits-all approach to UX design or gamification may not be universally effective @cheremnykh2024gaming.
Therefore in this research, we will use these previously proposed heuristics and frameworks only as a general guidance instead of a fixed rulebook.

= Method

We ask players with no prior experience playing _Fortnite_.
Participants would be asked to perform two tasks:

+ Play Session:
	We ask participants to play a full round of Battle Royale mode in _Fortnite_ game. This takes about 20 minutes in total. 

+ Survey:
	After the end of the play session, we send players a link to an online survey.
	Refer to @table:survey-questions in the appendix for the survey questions.

The survey begins with general questions to understand the participants' gaming backgrounds and preferences.

We then will move to questions focused on their perceptions of different usability elements in the game, such as how easily they were able to navigate the game menus, how quickly they could find the information they needed on the screen, and what percentage of the interface elements they believe they understood.

To gain deeper insights, we will include more detailed questions,
about specific graphical elements on the game screen. Participants will be asked to explain the meaning and usage of these elements to verify their understanding. 

After all data is collected, we will analyze it by coding the player responses into categories.
Then we will disscuss on each topic to see how they are reflected in the game and compare them to usability and design principles proposed by other researchers preliminarily.

= results

= Discussion

= Limitations and Future Work

= Conclusion

]

// Bibliography

#bibliography("bibliography.bib",
	full: true,
	style: "ieee"
)

= Appendix

#show table.cell.where(y: 0): set text(weight: "bold")
#figure(
	caption: [The questions used in the survey.],
	table(
		columns: (3em, 1fr),
		align: left,
		stroke: none,
		table.hline(stroke: 1pt),
		table.header([No.], [Question]),
		table.hline(stroke: 0.5pt),
		[1], [
				Have you played any battle royale games (like _PUBG_/_Unturned_) previously?
				How familiar are you with this genre/mode?
		],
		[2], [What's your thoughts on _Fortnite_ based on your first round of play?],
		[3], [Have you played any battle royale games (like PUBG/Unturned) previously? How familiar are you with this game mode?],
		[4], [Were you able to find the _Battle Royale_ mode easily?],
		[5], [What weapons/props have you used in the play?],
		[6], [
			Did you build any structures in the game?
			If yes, how did you learn the building mechanic?
		],
		[7], [Were you able to find the information you need easily on the screen?],
		[9], [Did you find the on-screen signs and elements easy to understand?],
		[10], [
			\[Show a picture\]
			Could you briefly explain the meaning of each of these numbers in this picture?
			How did you learn them?
		],
		table.hline(stroke: 1pt),
	)
) <table:survey-questions>