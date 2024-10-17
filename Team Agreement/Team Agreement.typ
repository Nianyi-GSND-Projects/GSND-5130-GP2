#set page(paper: "us-letter")
#let team_name = [Group 4 of GSND 5130 GP2]
#{
	set align(center);
	set text(17pt, weight: "bold");
	text[
		Team Agreement of
		#set text(style: "italic")
		#team_name
	];
}

#{
	set align(center);
	v(-0.5em);
	datetime.today().display("[month]/[day]/[year]");
	v(0.5em);
}

This is group 4 for the second group project of GSND 5130.
Unlike the first group project, this time we get to choose our teammates.
Since there are only two members in the group, many rules that are meant for regulating many people could be saved this time.

= Members

#let member(name: "", localname: "", mail: "") = {
	show link: set text(font: "Consolas");
	set align(center);

	text(size: 1.2em)[#name (#localname)];
	linebreak();
	link("mailto:" + mail)[<#mail>];
}

#table(
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
)

= Goals

By this stage, everyone has already gained experience of conducting qualitative researches.
In this group project, we aim to furtherly generalize our ability to _usability researches_ by designing a research proposal and then realizing it.

= Behavioral Expectations

- Respect each other.
	Treat each other as equal co-workers and talk things in an adequate way.

- Get work done on time.
	Try not to do everything in the last minutes.
	Always keep the project's affairs in mind.

- Hold each other accountable.
	A member's responsibility not only includes speed, but also quality.
	If you ever find another member's work is not capable, point it out.

= In-team Communication

For regular communication, use _Telegram_.

For big/complex topics, go for an in-person meeting.
Because we share the same class schedule, it is convenient for us to meet before/after class.
Other urgent business should be appointed at least one day prior than the meeting.

= Decision Making

When a disagreement is encountered, lay out our reasons.
Carefully analyze the pros and cons of each of them and see which could be compromised.
A possible solution should then pop out.
If still not resolved, reach for the professor for advice.