name = "Difficulty Tweaker"
description = "Tweak many things in DST."
author = "itchy.de"

version = "0.3"

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
                {description = "Super Easy", data = "super_easy", hover = "Barely an inconvience."},
                {description = "Hardcore", data = "hardcore", hover = "A bit harder than DST."},
                {description = "Nightmare", data = "nightmare", hover = "Crazy hard."},
            },
		default = "dst",
	},
	{
		name = "player_damage_setting",
		label = "Player Damage Setting",
        hover = "Tweak the damage that players do.",
		options =
            {
                {description = "Don't Starve Together", data = "dst", hover = "The default DST experience (actually, same as DS)."},
                {description = "Don't Starve", data = "ds", hover = "The default DS experience (actually, same as DST)."},
                {description = "Easier", data = "easier", hover = "Hit a bit harder."},
                {description = "Super Easy", data = "super_easy", hover = "Hit a lot harder."},
                {description = "Hardcore", data = "hardcore", hover = "Hit a bit weaker."},
                {description = "Nightmare", data = "nightmare", hover = "Hit a lot weaker."},
            },
		default = "dst",
	},
    {
		name = "food_perish_setting",
		label = "Food Perish Setting",
        hover = "Tweak the time until food perishes.",
		options =
            {
                {description = "Don't Starve Together", data = "dst", hover = "The default DST experience (actually, same as DS)."},
                {description = "Don't Starve", data = "ds", hover = "The default DS experience (actually, same as DST)."},
                {description = "Easier", data = "easier", hover = "Food perishes a bit slower."},
                {description = "Super Easy", data = "super_easy", hover = "Food perishes a lot slower."},
                {description = "Hardcore", data = "hardcore", hover = "Food perishes a bit quicker."},
                {description = "Nightmare", data = "nightmare", hover = "Food perishes a lot quicker."},
            },
		default = "dst",
	},
    {
		name = "tool_durability_setting",
		label = "Tools and Weapons Durability Setting",
        hover = "Tweak the durability of tools and weapons.",
		options =
            {
                {description = "Don't Starve Together", data = "dst", hover = "The default DST experience (actually, same as DS)."},
                {description = "Don't Starve", data = "ds", hover = "The default DS experience (actually, same as DST)."},
                {description = "Easier", data = "easier", hover = "Tools and weapons last a bit longer."},
                {description = "Super Easy", data = "super_easy", hover = "Tools and weapons last a lot longer."},
                {description = "Hardcore", data = "hardcore", hover = "Tools and weapons break a bit quicker."},
                {description = "Nightmare", data = "nightmare", hover = "Tools and weapons break a lot quicker."},
            },
		default = "dst",
	}

}