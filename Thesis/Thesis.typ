// Preambles

#set page(paper: "us-letter", margin: 0.8in)
#set par(justify: true)
#set cite(style: "alphanumeric")
// #set text(font: "Times New Roman")
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
		To investigate what gives the players bad experience, we conducted a research targeting on players who are new to this game.
		The players would play a round of the game while doing think-aloud protocols, then take surveys to reflect their experience about the game's graphical interface.
		By analyzing the collected data, we could gain guidance on possible improvements of _Fortnite_'s UI design, as well as insights for similar games in the future.
	];

	line(length: 100%, stroke: 0.5pt);
}

// Context

#columns(2)[
	= Introduction

	= Related Works
]

// Bibliography

#bibliography("bibliography.bib",
	full: true,
	style: "ieee"
)