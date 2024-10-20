// Preambles

#set page(paper: "us-letter", margin: 0.8in)
#set par(justify: true)
#set cite(style: "alphanumeric")
#set text(font: "Times New Roman")
#show link: set text(size: 0.9em, font: "Consolas")
#set quote(quotes: true);
#show quote: set text(style: "italic");

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
			localname: "王念一",
			mail: "wang.nian@northeastern.edu"
		),
		member(
			name: "Sadaf Nezameddini",
			localname: "صدف نظام‌الدینی",
			mail: "nezameddini.s@northeastern.edu"
		)
	
	);
}

= Extended Abstract

In 2017, _Epic Games_ released their online video game _Fortnite_.
The game became a huge financial success quickly after being released, reaching over 10 million players within two weeks @wikipedia2024fortnite @josh2024howmany. Among its various game modes, _Battle Royale_ which is a competitive survival game mode, turns out to be the most popular one. @wikipedia2024fortnitebattleroyale.

Albeit widely receiving positive reviews, there are players complaining about the game's graphical interface design.
Some says that #quote[_Epic_ is intentionally inducing players into other game modes] @bt1234yt2023epicchangedui; some says that the UI design #quote[is mobile-first] and #quote[lacks proper beta tests because players definitely won't like it] @reddit2023fortniteinterface @paledot24662023epicchangedui.

There are more issues with the in-game HUDs, which are used to deliver the players important information (e.g. HP, location, inventory) or indicate the interactable elements in the game world.
Since there is too many information on the screen at the same time, the UI feels too complex and confusing. This complexity seems to disproportionately affect novice players, making the learning curve steep and often overwhelming. The game does not feature a tutorial system to guide the players.
Some players might feel lost in their first round of battle, as they are unfamiliar with the goal of the  _Battle Royale_ mode.
Also, some important systems of the game (like the building system) could be totally missed by new players.
This is because there is no in-game guidance introducing these systems to the players. The only way for players to discover them is by observing other players using these mechanics during live gameplay. But by the time they need to use the system themselves, they still don't know how to do it.

The problem we aim to address is the usability of Fortnite's interface for new players who are unfamiliar with the game. By interfaces, we mean the game lobby, menus, and HUD. Our study will focus on the learnability aspect of usability, as the challenges experienced by novice players are likely linked to their ability to learn and navigate the game's interface effectively.

Our research sample consists of gamers with no prior experience playing _Fortnite_. Participants will engage in a brief play session (one round of the _Battle royale_ mode) and then complete a detailed survey. The survey begins with general questions to understand the participants' gaming backgrounds and preferences.

We then will move to questions focused on their perceptions of different usability elements in the game, such as how easily they were able to navigate the game menus, how quickly they could find the information they needed on the screen, and what percentage of the interface elements they believe they understood.

To gain deeper insights, we will include more detailed questions, using images of specific interface elements. Participants will be asked to explain the meaning and usage of these elements to verify their understanding. This approach helps ensure their responses accurately reflect their usability experience.


After all data is collected, we will analyze it by coding the player responses into categories.
Then we will disscuss on each topic to see how they are reflected in the game and compare them to usability and design principles proposed by other researchers preliminarily.

The expected outcome of this research is providing valuable insights not only for future Fortnite updates but also for game developers more broadly. We hope to offer practical design recommendations that prioritize novice-friendly interfaces without compromising complexity for experienced players.

= Related Works

Beside of players' disputes, the graphical interface of a video game is often discussed from two opposite aspects in academical literatures.
One aspect stands on the players' subjective stance and tries to analyze the players' experiences; the other aspects evaluates the graphical interface by applying general design principles.

== Player-centric

== Design Principle-based

// Bibliography

#bibliography("bibliography.bib",
	full: true,
	style: "ieee"
)