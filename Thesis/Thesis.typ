// Preambles

#set page(paper: "us-letter", margin: 0.8in)
#set par(justify: true, linebreaks: "optimized")
#set cite(style: "alphanumeric")
#set text(font: "Times New Roman")
#show text.where(lang: "zh"): set text(font: "KaiTi")
#show link: set text(size: 0.9em, font: "Consolas")
#show heading.where(level: 1): set heading(numbering: "1")
#show heading.where(level: 2): set text(size: 12pt)

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

Speaking on the general design principles, J. Nielsen has proposed a set of heuristics back in 1994 @nielsen1994enhancing.
His work compared several published set of UI usability heuristics to determine what heuristics explain actual usability problems best.

In 2008, usability heuristics on game UI started appearing.
_Pinelle at al_ collected a wide range of game reviews and developed 10 usability heuristics based on the coded categories @Pinelle2008heuristic.

_Desurvire_ and _Wiberg_ furtherly proposed a more refined and complete list of heuristics on game play in 2009 @Desurvire2009gameusability, called _Heuristics of Playability_ (PLAY) which can be applied game development to aid game developers in usability/playability research during the development cycle.

Similar to @bergman2023effect, _Fagerholt_ and _Lorentzon_ tried a constructive approach by studying preliminary academical literatures in various related fields and formulating hypothesis how player immersion is connected to the user interfaces @fagerholt2009beyond.
After evaluated by user studies and user tests, they proposed a set of guidelines that cover different aspects of the designing of an FPS game.

/*
Although with these heuristics it shall be easier to identify the usability problems in _Fortnite_, _Cheremnykh_'s research in 2024 showed that a one-size-fits-all approach to UX design or gamification may not be universally effective @cheremnykh2024gaming.
Therefore in this research, we will use these previously proposed heuristics and frameworks only as a general guidance instead of a fixed rulebook.
*/

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

= Results

After the survey data is collected, we applied qualitative method on it by analyzing the important information and coding them into key themes.
Below are the themes we've found in the data.

#show quote: set text(style: "italic")
/*
#show quote: set block(above: 0.8em, below: 0.8em)
#show quote: set par(leading: 0.5em)
#show quote: body => block(body, inset: (x: 0.5em))
*/
#set quote(block: false)

== Counter-intuitiveness and Lacking Clarity

Most straight-forwardly, the game's UI are definitely causing confusions to players during gameplay:
#quote[There were definitely a few moments of confusion, especially around building and combat.]

Certain elements' visual appearances are designed poorly,
#quote[The icons were too plain so I couldn't tell what they exactly meant.]
Some others are confusing when put into the context along with other elements,
#quote[When I pressed 1, I expected to switch my weapon to the pickaxe, but no, the pickaxe was at F. Press 1 to select the 2nd, that was a little bit weird.]
#quote[I couldn't remember which number key to hit to switch to a specific weapon I want.]

Some systems are so subtle or unfamiliar that the players could hardly learn to use them in a short time.
#quote[The total system was beyond my control. I could hardly think of building when I encountered enemies.]

== Lacking Simplicity/Minimalism

While some parts of the UI are hard to use, another serious issue is that there are too much information on the screen:
#quote[Too much infomation all at once. I wasn't able to process everything the game was telling me.]
#quote[The first minute of the first game can be very overwhelming with all this information in the screen and the pop-ups that just keep appearing.]
It could be inferred that new players are not familiar with the UI language the game is using, otherwise there should be little issue on the first encountering.

This does not only happen duing the gameplay, but also in the lobby:
#quote[Not at first because the game showed me a lot of options. I think I saw _Battle Royale_ but when I clicked it, it showed me a cutscene of _Marvel_ characters, not sure why. After I skip it, it returned me to the lobby and then I found the button again, clicked it and the screen only scrolled up and I could press Solo Ranked or Play. Seems I was in _Battle Royale_ mode all along? Confusing. Weird and confusing.]
This matches with the negative comments of the game's lobby UI on _Reddit_.

Combined with the previous issue, it seems like only a very small portion of the game's UI is actually directly usable for new players.

== Lacking Guidance

Theoretically, all these issues could be solved with a proper guidance before the first round of battle, but unfortunately, it seems like that the dev team of _Fortnite: Royale Battle_ never considered that as an option:
#quote[The Battle Royale mode was easy to find. but other things could be tricky, such as the tutorial. I saw nowhere to play a tutorial. or does Fortnite have no tutorials at all?]
Or there might be some, but very poorly designed, because it didn't meet its designed purpose at all:
#quote[Not really, when it's your first game there are some pop-ups tutorial style with some information, but since you are figuring out everything else, I wasn't looking at them.]

There are many "unfair settings" which if the players were not told to do so, they may never figure out how to do it on themselves:
#quote[I dont know how to throw things I dont want in my bag.]
#quote[I was button smashing to figure out which key does what.]

There is one hotspot for this issue to happen: The building system.
It is supposed to be serving for players to build architectures to protect themselves in the battles, but the system is novice to see among other games of similar genre, and there is no guidance to introduce it to new players.
#quote[I didn't really understood how the material system worked nor how much I needed to build the walls or other type of structures.]
#quote[I see the materials and build patterns at right below of HUD firstly. after I see others build strcuture to block my bullet, I learned when not in a battle.]
So either a player couldn't have a chance to find it at all, or they might experience great difficulties on figuring it out.
#quote[To learn the building mechanics, I relied on a mix of trial and error and watching a few quick tutorials that explained the basics.]
#quote[I randomly pressed the keys and found that Q for building.]

== Enjoyment

Although there are a lot of complaints about the game's interface, we also found some positive feedbacks, although very few:
#quote[I enjoyed the game the second time I played. Doing that thing was so cool.]

It is interesting to see this contrast of the amounts of the comments of both sides, because we surely didn't manipulate the player sample, nor designed inducible questions to get the desired results.
It only leads to the conclusion that _Fortnite: Royale Battle_ is really unfriendly to new players.

= Discussion

Inspecting through all the pre-existing heuristics in academical literatures, we found that, surprisingly, Nielsen's work in 1994 @nielsen1994enhancing matches our result best.
After furtherly analyzed our results under the direction of Nielsen's heuristics, we recognized three major aspects where _Fortnite: Battle Royale_'s designers could work on to improve plaer experience.

== Visibility of System Status & Consistency

The game's interface fails to deliver information to players clearly and consistently.
Certain symbols or icons are confusing to players, making them uncertain what the data appearing on screen means.
Sometimes, the information players are looking for couldn't be easily found with one spot.
These would cause unnecessary difficulties for new players who are yet unfamiliar with this game.

== Recognition Rather Than Recall & Help and Documentation

It is adviced that an user interface should minimize the user's memory load by making elements, actions, and options visible; that is, to let users recognize, rather than recall.
It is so obvious that the game heavily relies on letting users recall.
There are little visual guidance or official documentation provided within the game.
Players would often need to seek for external help such as video tutorials to learn vital mechanisms.
It would certainly augment the friendliness towards new players of the game if the development team could add proper guidance elements.

== Aesthetic and Minimalist Design

Interestingly, the results include mixed opinions regarding the game's information density.
While some players feel overwhelmed by the amount of information presented, others appreciate the complexity.
This divergence shows that there is a balance between the simplicity of the game interface and its richness.
The game designers should take more care on thinking what's really needed for the game, and what could be hidden under the sublevels of the graphical interface.
It is also possible to implement an adaptive UI system that could be customized based on players' preferences or level.

= Limitations and Future Work

This is a small research project with a short time window for about one month.
There certainly are some aspects which the research team wanted to but didn't have a chance to explore.

- Sample size and demographics:
	Our research only reached to a small group of players.
	Their ideas might not be able to fully represent the full spectrum of _Fortnite_'s player base.
	Although there is no standard of how big the sample needs to be in order to be qualified to represent the entire spectrum, it is always welcomed for future researchers to expand the base as much as possible within the range of their ability.

- Methodological constraints:
	Our research is based on survey questions.
	This approach, while informative, may not be able to capture the full depth of players' experiences, especially the ones that were generated during gameplay.
	If combined with other researching approaches, e.g. a think-aloud protocol, we could get grasp of a more complete view of players' experiences.

- Lack of longitudinal perspective:
	Our approach only focus on the first rounds of battle of new players,
	but as the players keep playing the game, their perceptions might evolve over time as they become more familiar with it.
	Future researchers could conduct longitudinal studies on a selective sample of _Fortnite_ players.

- Absence of comparative analysis:
	It's hard to say whether these issues are unique to this title or common across the genre without comparing _Fortnite_ to other battle royale games.
	The easiest way to test this, we think, is to perform a quasi-experiment to test out if the addressed issues exist on other games of the same genre.

= Conclusion

]

// Bibliography

#bibliography("bibliography.bib",
	// full: true,
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