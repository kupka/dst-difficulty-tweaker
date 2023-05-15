function DifficultyTune()
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

DifficultyTune()