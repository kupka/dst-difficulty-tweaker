function MobHealthTune()
    local mob_health_setting = GetModConfigData("mob_health_setting")
    print("mob_health_setting: " .. mob_health_setting)
    -- default for difficulty == "dst"
    local mh_mp_reduction = 0.0
    local mh_sp_modifer = 1.0

    if mob_health_setting == "ds" then
        mh_mp_reduction = 1.0
        mh_sp_modifer = 1.0
    end

    if mob_health_setting == "easier" then
        mh_mp_reduction = 1.0
        mh_sp_modifer = 0.75
    end

    if mob_health_setting == "super_easy" then
        mh_mp_reduction = 1.0
        mh_sp_modifer = 0.5
    end

    if mob_health_setting == "harcore" then
        mh_mp_reduction = 0.0
        mh_sp_modifer = 2.0
    end

    if mob_health_setting == "nightmare" then
        mh_mp_reduction = 0.0
        mh_sp_modifer = 4.0
    end

    local mh_mp_1_5 = (1.5 - (0.5 * mh_mp_reduction)) * mh_sp_modifer
    local mh_mp_2 = (2.0 - (1.0 * mh_mp_reduction)) * mh_sp_modifer
    local mh_mp_3 = (3.0 - (2.0 * mh_mp_reduction)) * mh_sp_modifer
    local mh_mp_4 = (4.0 - (3.0 * mh_mp_reduction)) * mh_sp_modifer

    print("mh_mp_reduction: " .. mh_mp_reduction)
    print("mh_sp_modifer: " .. mh_sp_modifer)

    TUNING.PIG_HEALTH = 250
    TUNING.WEREPIG_HEALTH = 350 * mh_mp_1_5-- harder for multiplayer
    TUNING.PIG_GUARD_HEALTH = 300 * mh_mp_2 -- harder for multiplayer
    TUNING.PERD_HEALTH = 50 * mh_sp_modifer
    TUNING.WALRUS_HEALTH = 150 * mh_mp_2 -- harder for multiplayer
    TUNING.LITTLE_WALRUS_HEALTH = 100 * mh_sp_modifer
    TUNING.PENGUIN_HEALTH = 150 * mh_sp_modifer
    TUNING.MUTATED_PENGUIN_HEALTH = 100 * mh_sp_modifer
    TUNING.KNIGHT_HEALTH = 300 * mh_mp_3 -- harder for multiplayer
    TUNING.BISHOP_HEALTH = 300 * mh_mp_3 -- harder for multiplayer
    TUNING.ROOK_HEALTH = 300 * mh_mp_3 -- harder for multiplayer
    TUNING.MINOTAUR_HEALTH = 2500 * mh_mp_4 -- harder for multiplayer
    TUNING.SLURTLE_HEALTH = 600 * mh_mp_2 -- harder for multiplayer
    TUNING.SNURTLE_HEALTH = 200 * mh_sp_modifer
    TUNING.SLURPER_HEALTH = 200 * mh_sp_modifer
    TUNING.LIGHTNING_GOAT_HEALTH = 350 * mh_mp_2 -- harder for multiplayer
    TUNING.DEER_HEALTH = 350 * mh_mp_2 -- harder for multiplayer
    TUNING.DEER_GEMMED_HEALTH = 1500 * mh_sp_modifer
    TUNING.KLAUS_HEALTH = 10000 * mh_sp_modifer
    TUNING.BUZZARD_HEALTH = 125 * mh_mp_2 -- harder for multiplayer
    TUNING.GHOST_HEALTH = 200 * mh_sp_modifer
    TUNING.BEEFALO_HEALTH = 500 * mh_mp_2 -- harder for multiplayer
    TUNING.BABYBEEFALO_HEALTH = 300 * mh_sp_modifer
    TUNING.KOALEFANT_HEALTH = 500 * mh_mp_2 -- harder for multiplayer
    TUNING.SPAT_HEALTH = 800 * mh_sp_modifer
    TUNING.BAT_HEALTH = 50 * mh_sp_modifer
    TUNING.SPIDER_HEALTH = 100 * mh_sp_modifer
    TUNING.SPIDER_WARRIOR_HEALTH = 200 * mh_mp_2 -- harder for multiplayer
    TUNING.SPIDER_HIDER_HEALTH = 150 * mh_mp_1_5-- harder for multiplayer
    TUNING.SPIDER_SPITTER_HEALTH = 175 * mh_mp_2 -- harder for multiplayer
    TUNING.SPIDER_MOON_HEALTH = 250 * mh_sp_modifer
    TUNING.LEIF_HEALTH = 2000 * mh_mp_1_5-- harder for multiplayer
    TUNING.DEERCLOPS_HEALTH = 2000 * mh_mp_2 -- harder for multiplayer
    TUNING.BEE_HEALTH = 100 * mh_sp_modifer
    TUNING.WORM_HEALTH = 900 * mh_sp_modifer
    TUNING.TENTACLE_HEALTH = 500 * mh_sp_modifer
    TUNING.TENTACLE_PILLAR_HEALTH = 500 * mh_mp_1_5-- harder for multiplayer
    TUNING.TENTACLE_PILLAR_ARM_HEALTH = 20 * mh_sp_modifer
    TUNING.EYEPLANT_HEALTH = 30 * mh_sp_modifer
    TUNING.TALLBIRD_HEALTH = 400 * mh_mp_2 -- harder for multiplayer
    TUNING.TEENBIRD_HEALTH = 400 * 0.75 * mh_mp_2 -- harder for multiplayer
    TUNING.SMALLBIRD_HEALTH = 50
    TUNING.RABBIT_HEALTH = 25
    TUNING.MOLE_HEALTH = 30
    TUNING.FROG_HEALTH = 100 * mh_sp_modifer
    TUNING.HOUND_HEALTH = 150 * mh_sp_modifer
    TUNING.FIREHOUND_HEALTH = 100 * mh_sp_modifer
    TUNING.ICEHOUND_HEALTH = 100 * mh_sp_modifer
    TUNING.MOONHOUND_HEALTH = 150 * mh_sp_modifer
    TUNING.MUTATEDHOUND_HEALTH = 100 * mh_sp_modifer
    TUNING.HEDGEHOUND_HEALTH = 50 * mh_sp_modifer
    TUNING.MOSQUITO_HEALTH = 100 * mh_sp_modifer
    TUNING.KRAMPUS_HEALTH = 200 * mh_mp_1_5-- harder for multiplayer
    TUNING.TERRORBEAK_HEALTH = 400 * mh_sp_modifer
    TUNING.CRAWLINGHORROR_HEALTH = 300 * mh_sp_modifer
    TUNING.BIRD_HEALTH = 25
    TUNING.SPIDERQUEEN_HEALTH = 1250 * mh_mp_2 -- harder for multiplayer
    TUNING.BUNNYMAN_HEALTH = 200
    TUNING.ROCKY_HEALTH = 1500 * mh_mp_2 -- harder for multiplayer
    TUNING.MONKEY_HEALTH = 125 * mh_sp_modifer
    TUNING.MOOSE_HEALTH = 3000 * mh_mp_2 -- harder for multiplayer
    TUNING.MOSSLING_HEALTH = 350 * mh_mp_1_5-- harder for multiplayer
    TUNING.TOADSTOOL_HEALTH = 52500 * mh_sp_modifer
    TUNING.TOADSTOOL_DARK_HEALTH = 99999 * mh_sp_modifer
    TUNING.BEEQUEEN_HEALTH = 22500 * mh_sp_modifer
    TUNING.BEEGUARD_HEALTH = 180 * mh_sp_modifer
    TUNING.DRAGONFLY_HEALTH = 27500 * mh_sp_modifer
    TUNING.LAVAE_HEALTH = 500 * mh_sp_modifer
    TUNING.BEARGER_HEALTH = 3000 * mh_mp_2 -- harder for multiplayer
    TUNING.WOLFGANG_HEALTH = 200 -- this is used for the character descriptions gameplay uses WOLFGANG_HEALTH_NORMAL
    TUNING.EYETURRET_HEALTH = 1000 * mh_sp_modifer
    TUNING.WARG_HEALTH = 600 * mh_mp_3 -- harder for multiplayer
    TUNING.WARGLET_HEALTH = 600 * mh_sp_modifer
    TUNING.ANTLION_HEALTH = 6000 * mh_sp_modifer
    TUNING.STALKER_HEALTH = 4000 * mh_sp_modifer
    TUNING.STALKER_ATRIUM_HEALTH = 16000 * mh_sp_modifer
    TUNING.STALKER_ATRIUM_PHASE2_HEALTH = 10000 * mh_sp_modifer
    TUNING.GESTALTGUARD_HEALTH = 200 * mh_sp_modifer
    TUNING.WATER_TURTLE_HEALTH = 300 * mh_sp_modifer
    TUNING.MERM_HEALTH = 250 * mh_mp_2 -- harder for multiplayer
    TUNING.MERM_GUARD_HEALTH = 660 * mh_sp_modifer
    TUNING.MERM_KING_HEALTH = 1000 * mh_sp_modifer
    TUNING.PUNY_MERM_HEALTH = 200 * mh_sp_modifer
    TUNING.MALBATROSS_HEALTH = 2500 * 2 * mh_sp_modifer
    TUNING.HORN_HEALTH = 130  * mh_sp_modifer
    TUNING.SQUID_HEALTH = 170 * mh_sp_modifer
    TUNING.CRABKING_HEALTH = 20000 * mh_sp_modifer
    TUNING.CRABKING_CLAW_HEALTH = 500 * mh_sp_modifer
    TUNING.MOLEBAT_HEALTH = 150 * mh_sp_modifer
    TUNING.MUSHGNOME_HEALTH = 600 * mh_sp_modifer
    TUNING.HUSK_HEALTH = 300 * mh_sp_modifer
    TUNING.LORDFRUITFLY_HEALTH = 1500 * mh_sp_modifer
    TUNING.FRUITFLY_HEALTH = 100 * mh_sp_modifer
    TUNING.ALTERGUARDIAN_PHASE1_HEALTH = 10000 * mh_sp_modifer
    TUNING.MUTANT_BIRD_HEALTH = 10 * mh_sp_modifer
    TUNING.MOONSTORM_SPARK_HEALTH = 100 * mh_sp_modifer
    TUNING.SPIDER_HEALER_HEALTH = 400 * mh_sp_modifer
    TUNING.SPIDER_WATER_HEALTH = 200 * mh_sp_modifer
    TUNING.GRASSGATOR_HEALTH = 500 * mh_mp_2 -- harder for multiplayer
    TUNING.EYEOFTERROR_HEALTH = 5000 * mh_sp_modifer
    TUNING.EYEOFTERROR_MINI_HEALTH = 200 * mh_sp_modifer
    TUNING.TWIN1_HEALTH				= 2.0 * TUNING.EYEOFTERROR_HEALTH
    TUNING.TWIN2_HEALTH				= 2.0 * TUNING.EYEOFTERROR_HEALTH
    TUNING.MONKEYISLANDDOCK_HEALTH = 300 * mh_sp_modifer
    TUNING.PRIME_MATE_HEALTH = 350 * mh_sp_modifer
    TUNING.POWDER_MONKEY_HEALTH = 200 * mh_sp_modifer
    TUNING.LIGHTCRAB_HEALTH = 25 * mh_sp_modifer
    TUNING.POLLY_ROGERS_MAX_HEALTH= 50 * mh_sp_modifer
    TUNING.DAYWALKER_HEALTH = 10000 * mh_sp_modifer
    TUNING.SHADOW_LEECH_HEALTH = 100 * mh_sp_modifer
    TUNING.LUNAR_GRAZER_HEALTH = 80 * 30 * mh_sp_modifer --30 seconds for full regen
    TUNING.LUNAR_GRAZER_HEALTH_REGEN = 80 * mh_sp_modifer --per second (only when dissipated)
    TUNING.LUNARTHRALL_PLANT_HEALTH = 1000 * mh_sp_modifer
    TUNING.LUNARTHRALL_PLANT_VINE_HEALTH = 200 * mh_sp_modifer
end

function PlayerDamageTune()
    local player_damage_setting = GetModConfigData("player_damage_setting")
    print("player_damage_setting: " .. player_damage_setting)
    -- default for difficulty == "dst" and "ds"
    local tuned_damage = 34

    if player_damage_setting == "easier" then
        tuned_damage = 51
    end

    if player_damage_setting == "super_easy" then
        tuned_damage = 68
    end

    if player_damage_setting == "harcore" then
        tuned_damage = 26
    end

    if player_damage_setting == "nightmare" then
        tuned_damage = 17
    end

    print("tuned_damage: " .. tuned_damage)

    TUNING.BASE_SURVIVOR_ATTACK = tuned_damage
    TUNING.NIGHTSWORD_DAMAGE = tuned_damage*2
    TUNING.BATBAT_DAMAGE = tuned_damage * 1.25
    TUNING.BATBAT_DRAIN = tuned_damage * 0.2
    TUNING.SPIKE_DAMAGE = tuned_damage*1.5
    TUNING.HAMBAT_DAMAGE = tuned_damage*1.75
    TUNING.SPEAR_DAMAGE = tuned_damage
    TUNING.CLAW_GLOVE_DAMAGE = tuned_damage*1.5
    TUNING.WATHGRITHR_SPEAR_DAMAGE = tuned_damage * 1.25
    TUNING.AXE_DAMAGE = tuned_damage*.8
    TUNING.PICK_DAMAGE = tuned_damage*.8
    TUNING.BOOMERANG_DAMAGE = tuned_damage*.8
    TUNING.TORCH_DAMAGE = tuned_damage*.5
    TUNING.HAMMER_DAMAGE = tuned_damage*.5
    TUNING.SHOVEL_DAMAGE = tuned_damage*.5
    TUNING.PITCHFORK_DAMAGE = tuned_damage*.5
    TUNING.FARM_HOE_DAMAGE = tuned_damage*.5
    TUNING.BUGNET_DAMAGE = tuned_damage*.125
    TUNING.WHIP_DAMAGE = tuned_damage*.8
    TUNING.BULLKELP_ROOT_DAMAGE = tuned_damage*.8
    TUNING.FISHINGROD_DAMAGE = tuned_damage*.125
    TUNING.UMBRELLA_DAMAGE = tuned_damage*.5
    TUNING.CANE_DAMAGE = tuned_damage*.5
    TUNING.MULTITOOL_DAMAGE = tuned_damage*1.25
    TUNING.RUINS_BAT_DAMAGE = tuned_damage * 1.75
    TUNING.NIGHTSTICK_DAMAGE = tuned_damage*.85 -- Due to the damage being electric it will get multiplied by 1.5 against any mob
    TUNING.MINIFAN_DAMAGE = tuned_damage*.5
    TUNING.SADDLEHORN_DAMAGE = tuned_damage*.5
    TUNING.BRUSH_DAMAGE = tuned_damage*.8
    TUNING.OAR_DAMAGE = tuned_damage*.5
    TUNING.FENCE_ROTATOR_DAMAGE = tuned_damage
    TUNING.PICKAXE_LUNARPLANT_DAMAGE = tuned_damage * 1.25 - 10
    TUNING.SHOVEL_LUNARPLANT_DAMAGE = tuned_damage * .8 - 10
    TUNING.SWORD_LUNARPLANT_DAMAGE = tuned_damage * 2 - 30
    TUNING.LIGHTER_DAMAGE = tuned_damage*.5
    TUNING.WINONA_CATAPULT_DAMAGE = tuned_damage * 1.25
    TUNING.MOONGLASSAXE.DAMAGE = tuned_damage
    TUNING.GLASSCUTTER.DAMAGE = tuned_damage * 2
    TUNING.BOAT.OARS.BASIC.DAMAGE = tuned_damage*.5
    TUNING.BOAT.OARS.DRIFTWOOD.DAMAGE = tuned_damage*.5
    TUNING.BOAT.OARS.MALBATROSS.DAMAGE = tuned_damage*.8
    TUNING.BOAT.OARS.MONKEY.DAMAGE = tuned_damage*1.5
    TUNING.ARMORBRAMBLE_DMG = tuned_damage/1.5
    TUNING.BEAVER_DAMAGE = tuned_damage * .8
    TUNING.BEAVER_WOOD_DAMAGE = tuned_damage * .5 -- extra damage to wood things
    TUNING.WEREMOOSE_DAMAGE = tuned_damage * 1.75
    TUNING.SLINGSHOT_AMMO_DAMAGE_ROCKS = tuned_damage * 0.5              -- 17
    TUNING.SLINGSHOT_AMMO_DAMAGE_GOLD = tuned_damage                             -- 34
    TUNING.SLINGSHOT_AMMO_DAMAGE_MARBLE = tuned_damage * 1.5             -- 51
    TUNING.SLINGSHOT_AMMO_DAMAGE_THULECITE = tuned_damage * 1.5  -- 51
    TUNING.SLINGSHOT_AMMO_DAMAGE_SLOW = tuned_damage * 0.5               -- 17
    TUNING.SLINGSHOT_AMMO_DAMAGE_TRINKET_1 = tuned_damage * 1.75 -- 59.5
    TUNING.POCKETWATCH_SHADOW_DAMAGE = tuned_damage*2.4
    TUNING.POCKETWATCH_DEPLETED_DAMAGE = tuned_damage*.8
    TUNING.TRIDENT.DAMAGE = tuned_damage * 0.8 -- Same damage as an axe... hahaha.
    TUNING.TRIDENT.OCEAN_DAMAGE = tuned_damage * 2
    TUNING.ALTERGUARDIANHAT_GESTALT_DAMAGE = tuned_damage * 1.25
    TUNING.SHIELDOFTERROR_DAMAGE = tuned_damage*1.5
    TUNING.DUMBBELL_DAMAGE_ROCK = tuned_damage*.5
    TUNING.DUMBBELL_DAMAGE_GOLD = tuned_damage*.8
    TUNING.DUMBBELL_DAMAGE_MARBLE = tuned_damage
    TUNING.DUMBBELL_DAMAGE_GEM = tuned_damage * 1.25
    TUNING.CUTLESS_DAMAGE = tuned_damage*.8
end

function FoodPerishTune()
    local food_perish_setting = GetModConfigData("food_perish_setting")
    print("food_perish_setting: " .. food_perish_setting)
    -- default for difficulty == "dst" and "ds"
    local perish_modifier = 1

    if food_perish_setting == "easier" then
        perish_modifier = 2
    end

    if food_perish_setting == "super_easy" then
        perish_modifier = 4
    end

    if food_perish_setting == "harcore" then
        perish_modifier = 0.5
    end

    if food_perish_setting == "nightmare" then
        perish_modifier = 0.25
    end

    print("perish_modifier: " .. perish_modifier)

    TUNING.PERISH_ONE_DAY = 1 * TUNING.TOTAL_DAY_TIME * perish_modifier
    TUNING.PERISH_TWO_DAY = 2 * TUNING.TOTAL_DAY_TIME * perish_modifier
    TUNING.PERISH_SUPERFAST = 3 * TUNING.TOTAL_DAY_TIME * perish_modifier
    TUNING.PERISH_FAST = 6 * TUNING.TOTAL_DAY_TIME * perish_modifier
    TUNING.PERISH_FASTISH = 8 * TUNING.TOTAL_DAY_TIME * perish_modifier
    TUNING.PERISH_MED = 10 * TUNING.TOTAL_DAY_TIME * perish_modifier
    TUNING.PERISH_SLOW = 15 * TUNING.TOTAL_DAY_TIME * perish_modifier
    TUNING.PERISH_PRESERVED = 20 * TUNING.TOTAL_DAY_TIME * perish_modifier
    TUNING.PERISH_SUPERSLOW = 40 * TUNING.TOTAL_DAY_TIME * perish_modifier
end

function ToolsDurationTune()
    local tool_durability_setting = GetModConfigData("tool_durability_setting")
    print("tool_durability_setting: " .. tool_durability_setting)
    -- default for difficulty == "dst" and "ds"
    local durability_modifier = 1

    if tool_durability_setting == "easier" then
        durability_modifier = 2
    end

    if tool_durability_setting == "super_easy" then
        durability_modifier = 4
    end

    if tool_durability_setting == "harcore" then
        durability_modifier = 0.5
    end

    if tool_durability_setting == "nightmare" then
        durability_modifier = 0.25
    end

    print("durability_modifier: " .. durability_modifier)

    TUNING.AXE_USES = 100 * durability_modifier
    TUNING.HAMMER_USES = 75 * durability_modifier
    TUNING.SHOVEL_USES = 25 * durability_modifier
    TUNING.PITCHFORK_USES = 25 * durability_modifier
    TUNING.FARM_HOE_USES = 25 * durability_modifier
    TUNING.PICKAXE_USES = 33 * durability_modifier
    TUNING.BUGNET_USES = 10 * durability_modifier
    TUNING.WHIP_USES = 175 * durability_modifier
    TUNING.SPEAR_USES = 150 * durability_modifier
    TUNING.CLAW_GLOVE_USES = 200 * durability_modifier
    TUNING.WATHGRITHR_SPEAR_USES = 200 * durability_modifier
    TUNING.SPIKE_USES = 100 * durability_modifier
    TUNING.FISHINGROD_USES = 9 * durability_modifier
    TUNING.TRAP_USES = 8 * durability_modifier
    TUNING.BOOMERANG_USES = 10 * durability_modifier
    TUNING.NIGHTSWORD_USES = 100 * durability_modifier
    TUNING.ICESTAFF_USES = 20 * durability_modifier
    TUNING.FIRESTAFF_USES = 20 * durability_modifier
    TUNING.TELESTAFF_USES = 5 * durability_modifier
    TUNING.HAMBAT_USES = 100 * durability_modifier
    TUNING.BATBAT_USES = 75 * durability_modifier
    TUNING.MULTITOOL_AXE_PICKAXE_USES = 800 * durability_modifier
    TUNING.PICKAXE_LUNARPLANT_USES = 600 * durability_modifier
    TUNING.SHOVEL_LUNARPLANT_USES = 250 * durability_modifier
    TUNING.STAFF_LUNARPLANT_USES = 50 * durability_modifier
    TUNING.SWORD_LUNARPLANT_USES = 200 * durability_modifier
    TUNING.RUINS_BAT_USES = 200 * durability_modifier
    TUNING.SADDLEHORN_USES = 10 * durability_modifier
    TUNING.BRUSH_USES = 75 * durability_modifier
    TUNING.FENCE_ROTATOR_USES = 200 * durability_modifier
    TUNING.REDAMULET_USES = 20 * durability_modifier
    TUNING.YELLOWSTAFF_USES = 20 * durability_modifier
    TUNING.OPALSTAFF_USES = 50 * durability_modifier
    TUNING.ORANGEAMULET_USES = 225 * durability_modifier
    TUNING.ORANGESTAFF_USES = 20 * durability_modifier
    TUNING.GREENAMULET_USES = 5 * durability_modifier
    TUNING.GREENSTAFF_USES = 5 * durability_modifier
    TUNING.POCKETSCALE_USES = 100 * durability_modifier
    TUNING.SADDLE_BASIC_USES = 5 * durability_modifier
    TUNING.SADDLE_WAR_USES = 8 * durability_modifier
    TUNING.SADDLE_RACE_USES = 8 * durability_modifier
    TUNING.POOP_CAN_USES = 8 * durability_modifier
    TUNING.SOILAMENDER_FERMENTED_USES = 5 * durability_modifier
    TUNING.HEATROCK_NUMUSES = 8 * durability_modifier
    TUNING.PANFLUTE_USES = 10 * durability_modifier
    TUNING.HORN_USES = 10 * durability_modifier
    TUNING.HOUNDWHISTLE_USES = 10 * durability_modifier
    TUNING.TRAP_TEETH_USES = 10 * durability_modifier
    TUNING.TENT_USES = 15 * durability_modifier
    TUNING.SIESTA_CANOPY_USES = 15 * durability_modifier
    TUNING.PORTABLE_TENT_USES = 10 * durability_modifier
    TUNING.BEDROLL_FURRY_USES = 3 * durability_modifier
    TUNING.UMBRELLA_USES = 20 * durability_modifier
    TUNING.SEWINGKIT_USES = 5 * durability_modifier
    TUNING.FERTILIZER_USES = 10 * durability_modifier
    TUNING.GLOMMERBELL_USES = 3 * durability_modifier
    TUNING.TORNADOSTAFF_USES = 15 * durability_modifier
    TUNING.FEATHERFAN_USES = 15 * durability_modifier
    TUNING.SALTLICK_BEEFALO_USES = 2 / durability_modifier
    TUNING.SALTLICK_KOALEFANT_USES = 4 / durability_modifier
    TUNING.SALTLICK_LIGHTNINGGOAT_USES = 1 / durability_modifier
    TUNING.SALTLICK_DEER_USES = 1 / durability_modifier
    TUNING.SALTLICK_GRASSGATOR_USES = 4 / durability_modifier
    TUNING.PERDFAN_USES = 9 * durability_modifier
    TUNING.GLASSCUTTER_USES = 75 * durability_modifier
    TUNING.FISHING_NET_USES = 22 * durability_modifier
    TUNING.BOAT.OARS.BASIC.USES = 500 * durability_modifier
    TUNING.BOAT.OARS.DRIFTWOOD.USES = 400 * durability_modifier
    TUNING.BOAT.OARS.MALBATROSS.USES = 1500 * durability_modifier
    TUNING.BOAT.OARS.MONKEY.USES = 500 * durability_modifier
    TUNING.TRAP_BRAMBLE_USES = 10 * durability_modifier
    TUNING.GNARWAIL_HORN.USES = 10 * durability_modifier
    TUNING.TRIDENT.USES = 150 * durability_modifier
    TUNING.ARCHIVE_RESONATOR.USES = 10 * durability_modifier
    TUNING.FARM_PLOW_USES = 4 * durability_modifier
    TUNING.WATERINGCAN_USES = 40 * durability_modifier
    TUNING.PREMIUMWATERINGCAN_USES = 160 * durability_modifier
    TUNING.SPIDER_REPELLENT_USES = 20 * durability_modifier
    TUNING.WX78_MODULE_USES = 4 * durability_modifier
    TUNING.CUTLESS_USES = 150 * durability_modifier
    TUNING.FIREPEN_MAXUSES = 10 * durability_modifier
    TUNING.BOOK_USES_SMALL = 3 * durability_modifier
    TUNING.BOOK_USES_LARGE = 5 * durability_modifier
    TUNING.ANTLIONHAT_USES = 400 * durability_modifier
end

function ArmorDurabilityTune()
    local armor_durability_setting = GetModConfigData("armor_durability_setting")
    print("armor_durability_setting: " .. armor_durability_setting)
    -- default for difficulty == "dst"
    local wilson_health = 150
    local durability_modifier = 0.7

    if armor_durability_setting == "ds" then
        durability_modifier = 1.0
    end

    if armor_durability_setting == "easier" then
        durability_modifier = 2.0
    end

    if armor_durability_setting == "super_easy" then
        durability_modifier = 4.0
    end

    if armor_durability_setting == "harcore" then
        durability_modifier = 0.5
    end

    if armor_durability_setting == "nightmare" then
        durability_modifier = 0.25
    end

    print("durability_modifier: " .. durability_modifier)

    TUNING.ARMORGRASS = wilson_health*1.5*durability_modifier
    TUNING.ARMORWOOD = wilson_health*3*durability_modifier
    TUNING.ARMORMARBLE = wilson_health*7*durability_modifier
    TUNING.ARMORSNURTLESHELL = wilson_health*7*durability_modifier
    TUNING.ARMORRUINS = wilson_health * 12*durability_modifier
    TUNING.ARMORSLURPER = wilson_health * 4*durability_modifier
    TUNING.ARMOR_FOOTBALLHAT = wilson_health*3*durability_modifier
    TUNING.ARMOR_COOKIECUTTERHAT = wilson_health*5*durability_modifier
    TUNING.ARMORDRAGONFLY = wilson_health * 9*durability_modifier
    TUNING.ARMOR_WATHGRITHRHAT = wilson_health * 5*durability_modifier
    TUNING.ARMOR_RUINSHAT = wilson_health*8*durability_modifier
    TUNING.ARMOR_SLURTLEHAT = wilson_health*5*durability_modifier
    TUNING.ARMOR_BEEHAT = wilson_health*10*durability_modifier
    TUNING.ARMOR_SANITY = wilson_health * 5*durability_modifier
    TUNING.ARMOR_HIVEHAT = wilson_health * 9 * durability_modifier
    TUNING.ARMOR_SKELETONHAT = wilson_health * 9 * durability_modifier
    TUNING.ARMOR_DREADSTONEHAT = wilson_health * 8 * durability_modifier
    TUNING.ARMORDREADSTONE = wilson_health * 8 * durability_modifier
    TUNING.ARMOR_LUNARPLANT = wilson_health * 6 * durability_modifier + 20 * 10
    TUNING.ARMOR_LUNARPLANT_HAT = wilson_health * 6 * durability_modifier + 20 * 10
    TUNING.ARMOR_VOIDCLOTH = wilson_health * 6 * durability_modifier + 20 * 10
    TUNING.ARMOR_VOIDCLOTH_HAT = wilson_health * 6 * durability_modifier + 20 * 10
    TUNING.ARMORBRAMBLE = wilson_health*5*durability_modifier
    TUNING.SHIELDOFTERROR_ARMOR = wilson_health*3*durability_modifier
end


print("Tuning mob health.")
MobHealthTune()
print("Tuning player damage")
PlayerDamageTune()
print("Tuning food perish")
FoodPerishTune()
print("Tuning tools and weapons durability")
ToolsDurationTune()
print("Tuning armor durability")
ArmorDurabilityTune()

print("tweak_everything done.") 