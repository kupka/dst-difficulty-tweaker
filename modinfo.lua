name = "Difficulty Tweaker"
description = "Tweak many things in DST "
author = "kupka"

version = "0.1"

api_version = 10

dont_starve_compatible = false
reign_of_giants_compatible = false
dst_compatible = true
restart_required = yes
icon = "tools.tex"
icon_atlas = "tools.xml"

configuration_options =
{
	{
		name = "mob_health_setting",
		label = "Mob Health Setting",
        hover = "Tweak the health of all unfriendly mobs.",
		options =
	{
		{description = "Don't Starve Together", data = "dst", hover = "The default DST experience (harder than DS, tweaked for multiplayer)."},
		{description = "Don't Starve", data = "ds", hover = "The default DS experience (for singleplayer)."},
		{description = "Easier", data = "easier", hover = "A bit easier than DS."},
		{description = "Super easy", data = "super_easy", hover = "Barely an inconvience."},
		{description = "Hardcore", data = "hardcore", hover = "A bit harder than DST."},
		{description = "Nightmare", data = "nightmare", hover = "Crazy hard."},
	},
		default = "dst",
	}
}