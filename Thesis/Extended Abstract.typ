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
			name: "Sadaf Nezameddini",
			localname: "صدف نظام‌الدینی",
			mail: "nezameddini.s@northeastern.edu"
		),
		member(
			name: "Nian'yi Wang",
			localname: "王念一",
			mail: "wang.nian@northeastern.edu"
		)
	);
}

= Extended Abstract

In 2017, _Epic Games_ released their online video game _Fortnite_.
The game became a huge financial success quickly after being released, reaching over 10 million players within two weeks @wikipedia2024fortnite @josh2024howmany.
One of its game mode, _Battle Royale_, puts the players in a limited space and lets them defeat each other to win the first place.
This competitive survival game mode turns out to be the most popular one amongst all other game modes that _Fortnite_ provides @wikipedia2024fortnitebattleroyale.

Albeit widely receiving positive reviews, there are players complaining about the game's graphical interface design.
Some says that #quote[_Epic_ is intentionally inducing players into other game modes] @bt1234yt2023epicchangedui; some says that the UI design #quote[is mobile-first] and #quote[lacks proper beta tests because players definitely won't like it] @reddit2023fortniteinterface @paledot24662023epicchangedui.

There are more issues with the in-game HUDs, which are used to deliver to players important information (e.g. HP, location, inventory) or indicate the interactable elements in the game world.
Due to them being too scattered around the place, it is hard for players to organize the information in an effective and intuitive way.

The game does not feature a tutorial system to guide the players.
Some players might feel lost in their first round of battle, as they are unfamiliar with the goal of the _royale battle_ mode.
Also, some important systems of the game (like the building system) could be totally missed by new players.
Because there are no guidance that introduces the system to the players, the only way that players could realize that the system exists is by observing other players doing it in a real game; but by the time they need to use the system, they still don't know how to use it!

To investigate what gives the players bad experience, we plan to conduct a usability research on the game's graphical interface.
The sample for our research will be players who haven't tried this game before.
We would ask the players to play a round of the game first, then ask them to fill out a survey form to reflect their experience about the graphical interface.
After all data is collected, we will analyze it by coding the player responses into categories.
Then we will disscuss on each topic to see how they are reflected in the game and compare them to design principles proposed by other researchers preliminarily.

We hope that through our research, game designers could gain guidance on possible improvements of _Fortnite_'s UI, as well as insights for similar games in the future.

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