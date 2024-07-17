if not C_Seasons or C_Seasons.GetActiveSeason() ~= 2 then return end
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Legs << Warrior
#subgroup Chest << Hunter
#name Carrodin Runes
#displayname Consumed by Rage - 25 (Wetlands) << Warrior
#displayname Aspect of the Lion - 25 (Wetlands) << Hunter
#title Consumed by Rage << Warrior
#title Aspect of the Lion << Hunter

step
    #season 2
    #completewith next
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
step
    #season 2
    #completewith next
    .goto Wetlands,51.914,62.692,30 >>进入Thelgen岩洞
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step
    #season 2
    .goto Wetlands,47.24,65.34
    >>杀死|cRXP_ENEMY_Carrodin|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Consumping Rage|r]掠夺它 << Warrior
    >>杀死|cRXP_ENEMY_Carrodin|r。为|T134419:0|t[|cRXP_FRONDLY_Rune of the Aspect of the Lion|r]掠夺它 << Hunter
    .collect 210573,1 << Warrior --Rune of Consuming Rage (1)
    .collect 211205,1 << Hunter --Rune of Aspect of the Lion (1)
    .mob Carrodin
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step << Warrior
    #season 2
    .train 425446 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_消耗愤怒之路|r]|cRXP_WARN_训练|r|T136088:0|t[消耗愤怒]
    .use 210573
    .itemcount 210573,1
step << Hunter
    #season 2
    .train 410115 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Aspect of the Lion |r]|cRXP_WARN_to train|r|T132185:0|t[Aspect of the Lion]
    .use 211205
    .itemcount 211205,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name Envenom-25（希尔斯堡）
#title Envenom


    --Rune of Envenom

step
    #season 2
    #completewith next
	.goto Hillsbrad Foothills,76.72,46.22,60 >>前往Durnhold Keep
step
    #season 2
    .goto Hillsbrad Foothills,80.2,39.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克瑞斯·李盖斯|r
    >>|cRXP_BUY_从她那里购买|r|T133469:0|t[热门提示]|cRXP_Buy_|r
    .collect 210330,1 --Hot Tip (1)
    .target Kris Legace
    .train 400102,1
step
    #season 2
    .use 210330 >>打开|T133469:0|t[热提示]
    .collect 210323,1 --Safe Combination (1)
    .collect 210329,1 --Hillsbrad Treasure Map (1)
    .train 400102,1
step
    #completewith next
    .zone Western Plaguelands >>前往: |cRXP_PICK_西瘟疫之地|r
step
    #season 2
    .goto Western Plaguelands,59.4,84.5
    >>将|cRXP_PICK_Rusty Safe|r在水中打开|T134419:0|t[|cRXP-FRIENDLY_Rune of Venom|r]
    .collect 210322,1 --Rune of Venom (1)
    .train 400102,1
step
    #season 2
    .train 400102 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Venom|r]
    .use 210322
    .itemcount 210322,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Shiv - 25 (Duskwood)
#title Shiv


    --Rune of Shiving

step
    #season 2
    .goto Duskwood,81.24,71.86
    >>打开宁静花园Cemetary中的|cRXP_PICK_Offering Box |r以获得|T133343:0|t[|cRXP_LOOT_雕刻银戒指|r]
    .collect 210251,1 --Engraved Silver Ring (1)
    .train 424988,1
step
    #season 2
    .goto Duskwood,48.5,79.9
    >>使用|cRXP_ENEMY_Defias Night Runners|r上的|T133644:0|t[拾取口袋]来获得|T133345:0|t[|cRXX_LOOT_雕刻金戒指|r]
    .collect 210250,1 --Engraved Gold Ring (1)
    .mob Defias Night Runner
    .train 424988,1
step
    #season 2
    #completewith next
    .goto Duskwood,19.9,44.6,60,0 >>前往乌鸦山雕像
step
    #season 2
    .goto Duskwood,19.9,44.6
    .use 210250 >>装备两个戒指并在雕像前打字/跪下接受|T134419:0|t[|cRXP_FRIENDLY_Rune of Shiving|r]
    .use 210251
    .collect 210252,1 --Rune of Shiving (1)
    .train 424988,1
step
    #season 2
    .train 424988 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Shiving|r]
    .use 210252
    .itemcount 210252,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 狂野一击-14（石爪山）
#title Wild Strikes

step << Druid
    .goto Stonetalon Mountains,80.2,90.6,60,0
    .goto Stonetalon Mountains,83.2,87.0,60,0
    .goto Stonetalon Mountains,71.6,86.6,60,0
    .goto Stonetalon Mountains,76.6,91.0,60,0
    .goto Stonetalon Mountains,80.2,90.6
    >>杀死|cRXP_ENEMY_Grimtoms|r。为|T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]掠夺它们
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    .equip 18,210534 >>|cRXP_WARN_equp the |r|T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    >>|cRXP_WARN_施法|r|T136085:0|t[重生]|cRXP_WARN_or|r|T136041:0|t[Healing Touch]|cRXP_WARN_on 10种不同的友好动物，如狩猎宠物/熊形态的德鲁伊/鬼狼形态的萨满|r << Horde
    >>|cRXP_WARN_施法|r|T136085:0|t[Regrowth]|cRXP_WARN_or|r|T136041:0|t[治疗之触]|cRXP_WARN_on 10种不同的友好动物，如狩猎宠物或熊形态的德鲁伊|r << Alliance
    .train 410021 >>|cRXP_WARN_使用|r|T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]|cRXP_WARN_to train|r|T132143:0|t[狂野一击]
    .itemcount 210534,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 星潮-25（湿地）
#title Starsurge

step << Druid
    #completewith next
    +|cRXP_WARN_在1级时可以做到这一点，但你必须为此付出很多代价|r
    .train 424718,1
step << Druid
    .goto Wetlands,36.941,15.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grugimdern|r
    >>|cRXP_WARN_他会给你一个|r|T134052:0|t[|cRXP_LOOT_Marshroom|r]
    .collect 210499,1 -- Marshroom (1)
    .skipgossip
    .target Grugimdern
    .train 424718,1
step << Druid
    #completewith next
    .goto Wetlands,31.187,18.328
    .cast 426019 >>|cRXP_WARN_使用|r|T134052:0|t[|cRXP_LOOT_Marshroom|r]|cRXP-WARN_to吃掉它|r
    .use 210499
    .train 424718,1
step << Druid
    .goto Wetlands,31.187,18.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vodyanoi|r
    .collect 210500,1 -- Rune of the Stars (1)
    .skipgossip
    .target Vodyanoi
    .train 424718,1
step << Druid
    .train 424718 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Stars|r]|cRXP_WARN_to train|r|T135730:0|t[Starsurge]
    .use 210500
    .itemcount 210500,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest << Priest/Hunter/Druid/Warrior/Shaman
#subgroup Legs << Warlock/Paladin
#subgroup Gloves << Mage/Rogue
#name Grizzby Runes
#displayname Serendipity - 25 (The Barrens) << Priest
#displayname Lone Wolf - 25 (The Barrens) << Hunter
#displayname Survival of the Fittest - 25 (The Barrens) << Druid
#displayname Warbringer - 25 (The Barrens) << Warrior
#displayname Dual Wield Specialization - 25 (The Barrens) << Shaman
#displayname Demonic Pact - 25 (The Barrens) << Warlock
#displayname Divine Sacrifice - 25 (The Barrens) << Paladin
#displayname Rewind Time - 25 (The Barrens) << Mage
#displayname Main Gauche - 25 (The Barrens) << Rogue
#next 十字军打击-4（埃尔温森林） << Human Paladin
#next 十字军打击-4（邓·莫洛） << Dwarf Paladin
#next 熔岩爆发-25（Hillsbrad Foothills） << Shaman
#title Serendipity << Priest
#title Lone Wolf << Hunter
#title Survival of the Fittest << Druid
#title Warbringer << Warrior
#title Dual Wield Specialization << Shaman
#title Demonic Pact << Warlock
#title Divine Sacrifice << Paladin
#title Rewind Time << Mage
#title Main Gauche << Rogue

<< SoD

step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .goto The Barrens,61.8,39.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r in the inn
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_购买并使用|r|T135791:0|t[|cRXP_FRIENDLY_和谐主显节|r]|cRXP_WARN_训练|r|T237549:0|t[机缘巧合] << Priest
    .train 410010 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_牺牲之旅|r]|cRXP_WARN_to train|r|T134596:0|t[雕刻裤子-神圣牺牲] << Paladin
    .train 401761 >>|cRXP_WARN_购买并使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell备注：回放时间|r]|cRXP-WARN_to train|r|T237538:0|t[回放时间] << Mage
    .train 410122 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r]|cRXP_WARN_to train|r|T132266:0|t[孤狼] << Hunter
    .train 416042 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Survival << Druid
    .train 425445 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Warbringer|r]|cRXP_WARN_to train|r|T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r]|cRXP_WARN_to train|r|T237562:0|t[Demonic Pact] << Warlock
    .train 424990 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Main Gauche|r]|cRXP_WARN_to train|r|T237531:0|t[Main Gauche] << Rogue
    .train 410096 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Dual Wield Specialization|r]|cRXP_WARN_to train|r|T132686:0|t[Engrave Chest-Dual Wield Specialization] << Shaman
    .target Grizzby
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest << Shaman/Rogue
#subgroup Legs << Mage/Warlock/Hunter
#subgroup Gloves << Paladin/Warrior/Priest/Druid
#name Waylaid Runes
#displayname Mind Sear - 25 (Reputation) << Priest
#displayname Serpent Spread - 25 (Reputation) << Hunter
#displayname Skull Bash - 25 (Reputation) << Druid
#displayname Single-Minded Fury - 25 (Reputation) << Warrior
#displayname Healing Rain - 25 (Reputation) << Shaman
#displayname Everlasting Affliction - 25 (Reputation) << Warlock
#displayname 灯塔-25（声望） << Paladin
#displayname Arcane Surge - 25 (Reputation) << Mage
#displayname Just a Flesh Wound - 25 (Reputation) << Rogue
#next 神圣牺牲-25（艾泽拉斯） << Paladin
#title Mind Sear << Priest
#title Serpent Spread << Hunter
#title Skull Bash << Druid
#title Single-Minded Fury << Warrior
#title Healing Rain << Shaman
#title Everlasting Affliction << Warlock
#title Beacon of Light << Paladin
#title Arcane Surge << Mage
#title Just a Flesh Wound << Rogue

<< SoD

--VV if (Reputation) name formatting removed, change in Paladin guide too

step
    >>出去找|T132765:0|t[Waylayed Supplies]。然后回到一个首都去送他们。如果你想更快地获得声誉，请在AH中购买所需物品进行升级。
    *|cRXP_WARN_You can farm lower level mobs until you hit Friendly. Afterwards you have to farm high level mobs (>=17).|r Chests in the open world have a 90%+ 有机会丢掉其中一件物品。
    .reputation 2587,friendly << Horde
    .reputation 2586,friendly << Alliance
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Supply Officer|r in the nearest city
    .goto Orgrimmar,51.6,64.6,-1 << Horde
    .goto Thunder Bluff,39.8,53.4,-1 << Horde
    .goto Undercity,64.6,38.2,-1 << Horde
    .goto Stormwind City,55.0,61.6,-1 << Alliance
    .goto Ironforge,24.6,67.2,-1 << Alliance
    .goto Darnassus,60.0,56.4,-1 << Alliance
    .use 211386 << Mage
    .use 211387 << Paladin
    .use 211392 << Warlock
    .use 211391 << Shaman
    .use 211385 << Hunter
    .use 211393 << Warrior
    .use 206002 << Druid
    .use 211390 << Rogue
    .use 205950 << Priest
    .train 415996 >>|cRXP_WARN_购买并使用|r|T135791:0|t[|cRXP_FRIENDLY_Tenebrous Epiphany|r]|cRXP-WARN_to train|r|T237565:0|t[Mind-Sear] << Priest
    .train 409999 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Becking Light |r]|cRXP_WARN_to train|r|T236247:0|t[灯塔] << Paladin
    .train 425171 >>|cRXP_WARN_购买并使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：奥术浪涌|r]|cRXP-WARN_to train|r|T135734:0|t[奥术浪涌] << Mage
    .train 425760 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Serpent Spread|r]|cRXP_WARN_to train|r|T132209:0|t[Serpent Spread] << Hunter
    .train 416046 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Skull Bash|r]|cRXP_WARN_to train|r|T133732:0|t[颅骨撞击] << Druid
    .train 416003 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Single Minded Fury|r]|cRXP_WARN_to train|r|T134919:0|t[SingleMinded Fory] << Warrior
    .train 416008 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Everlasting Aflication|r]|cRXP_WARN_to train|r|T236296:0|t[Everlasting aflication] << Warlock
    .train 400082 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Teasing|r]|cRXP_WARN_to train|r|T132284:0|t[只是一个肉伤] << Rogue
    .train 416057 >>|cRXP_WARN_购买并使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rain|r]|cRXP_WARN_to train|r|T136107:0|t[Healing Rain] << Shaman
    .target Elaine Compton << Alliance
    .target Tamelyn Aldridge << Alliance
    .target Macry Baker << Alliance
    .target Jornah << Horde
    .target Dokimi << Horde
    .target Gishah << Horde
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 野生生长-25（多个区域）
#title Wild Growth

step << Druid
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
step << Druid
    .goto Ashenvale,86.963,43.159
    >>单击|cRXP_PICK_Owl Statue|r开始活动
    >>|cRXP_WARN_你需要在23-25级的范围内一次击败3波2个暴徒|r
    >>|cRXP_WARN_确保|cRXP_FRIENDLY_Summeded Wisp|r没有死亡。不可能治愈它，但它会在波浪之间完全治愈|r
    >>击败所有波浪后，在地面上掠夺智慧者的|cRXP_PICK_Gift
    .collect 210044,1 -- Symbol of the First Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .goto Duskwood,46.91,58.76,50,0
    .goto Duskwood,45.13,58.26,25,0
    .goto Duskwood,49.520,33.851
    .subzone 856 >>前往Duskwood的暮光之林
    .train 410028,1
step << Druid
    .goto Duskwood,49.520,33.851
    .aura 424310 >>点击|cRXP_PICK_Owl Statue|r获得|T132150:0|t[猫头鹰之眼]增益
    .train 410028,1
step << Druid
    .goto Duskwood,45.13,58.26
    #completewith next
    +Exit the Twilight Grove
    .subzoneskip 856,1
    .train 410028,1
step << Druid
    .goto Duskwood,65.2,34.8,65,0
    .goto Duskwood,60.6,25.8,65,0
    .goto Duskwood,66.0,23.6,65,0
    .goto Duskwood,68.0,31.6,65,0
    .goto Duskwood,65.2,34.8
    >>杀死|cRXP_ENEMY_Agon|r。掠夺它以获得第二只猫头鹰的|cRXP_Loot_符号|r
    >>|cRXP_ENEMY_Agon|r|cRXP_WARN_轻微旋转|r
    >>|cRXP_WARN_您必须具有|r|T132150:0|t[Owl的眼睛]|cRXP_WARN_buff才能查看|r|cRXP_ENEMY_Agon|r
    .collect 210043,2 -- Symbol of the Second Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,36.914,76.142
    .goto Hillsbrad Foothills,54.424,82.016,0
    +点击|cRXP_PICK_双猫头鹰雕像|r获得|T237178:0|t[双猫头鹰光环]buff
    >>|cRXP_WARN_您有1分40秒的时间到达另一个小岛并点击另一个|r|cRXP_PICK_双猫头鹰雕像|r
    >>|cRXP_WARN_确保使用|r|T132112:0|t[水生形态]
    >>|cRXP_WARN_另一个岛在你的地图上标出了|r
    .aura 424181
    .aura 424182
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,54.424,82.016
    >>游到另一个岛上。在1分40秒内单击|cRXP_PICK_双猫头鹰雕像|r
    >>|cRXP_WARN_确保使用|r|T132112:0|t[水生形态]
    >>|cRXP_WARN_如果你失败并失去了buff，点击这个|cRXP_PICK_Twin Owl Statue|r并返回你刚刚来到的岛屿|r
    .collect 210026,3 -- Symbol of the Third Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >>前往: |cRXP_PICK_月光林地|r
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >>前往: |cRXP_PICK_月光林地|r
    .train 410028,1
step << Druid
    .goto Moonglade,52.53,40.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .accept 78229 >>Accept Trial of The Owls
    .turnin 78229 >>Turn in Trial of The Owls
    .target Loganaar
    .train 410028,1
step << Druid
    .train 410028 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Wild Growth|r]|cRXP _WARN_to train|r|T236153:0|t[野生生长]
    .use 210137
    .itemcount 210137,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Mage SoD
#group RestedXP Rune和书籍指南
#subgroup Chest << Warrior
#subgroup Legs << Mage
#name Duskwood Lich Runes
#displayname Flagellation - 25 (Duskwood) << Warrior
#displayname Mass Regeneration - 25 (Duskwood) << Mage
#title Flagellation << Warrior
#title Mass Regeneration << Mage

step << Warrior/Mage
    #completewith next
    .goto Duskwood,23.630,34.888,15 >>进入东北地穴
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,26.115,30.863
    >>打开|cRXP_PICK_Dusty Coffer|r。为|T2529996:0|t[|cRXP-Loot_Decrepit Phylactery|r]打开它
    .collect 210568,1 -- Decrepit Phylactery (1)
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,15.602,38.621,15 >>离开这个墓穴，向下进入西部墓穴
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,18.140,37.940
    .cast 426182 >>点击小王座上的|cRXP_PICK_Slumbering Bones|r
    >>|cRXP_WARN_这将召唤一个25级精英|r|cRXP_ENEMY_觉醒的巫妖|r
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,18.140,37.940
    >>杀死|cRXP_ENEMY_觉醒的巫妖|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Flagellation|r]掠夺它 << Warrior
    >>杀死|cRXP_ENEMY_觉醒的巫妖|r。为|T134939:0|t掠夺它[|cRXP-FRIENDLY_Spell注释：质量再生|r] << Mage
    >>|cRXP_WARN_如果有其他人在那里杀死|cRXP_ENEMY_Awakend Lich|r，你也可以帮助他们，你仍然可以掠夺它|r
    .collect 210569,1 << Warrior -- Rune of Flagellation (1)
    .collect 211514,1 << Mage -- Spell Notes: Mass Regeneration (1)
    .mob Awakened Lich
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior
    .train 416050 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Flagellation|r]|cRXP_WARN_to train|r|T133495:0|t[Flagellation]
    .use 210569
    .itemcount 210569,1
    .train 403480,1
step << Mage
    .train 416050 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：质量再生|r]|cRXP _WARN_to train|r|T132870:0|t[质量再生]
    .use 211514
    .itemcount 211514,1
    .train 415939,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Raging Blow-25（多区域）
#title Raging Blow

step << Warrior
    #completewith next
    .goto Wetlands,49.40,16.98
    .subzone 205 >>前往Dun Modr湿地
    .train 425444,1
step << Warrior
    .goto Wetlands,46.92,17.53,15,0
    .goto Wetlands,46.553,18.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑铁企业家|r
    >>|cRXP_WARN_你可能需要跑几次尸体才能找到他|r
    >>|cRXP_BUY_买一把|r|T135130:0|t[龙之枪]|cRXP_Buy_要75银|r
    .collect 209874,1,78134,1 -- Dragonslayer's Lance (1)
    .target Dark Iron Entrepreneur
    .train 425444,1
step << Warrior
    #completewith next
    .goto Redridge Mountains,69.928,55.814
    .subzone 2099 >>前往雷德里奇山脉的Stonewatch保护区
    .train 425444,1
step << Warrior
    .goto Redridge Mountains,69.928,55.814
    >>单击|cRXP_PICK_Wall-Mounted盾牌|r。将其掠夺为|cRXP _Loot_Dragonslayer的盾牌|r
    >>|cRXP_WARN_这是楼上主仓库的内部，在26级精英|cRXP_ENEMY_Gath'Ilzog|r后面|r
    >>|cRXP_WARN_你需要杀死|cRXP_ENEMY_Gath'Izog|r或让其他人雇佣他才能掠夺它。进去之前确保你有一个聚会|r
    .collect 209873,1,78133,1 -- Dragonslayer's Shield (1)
    .train 425444,1
step << Warrior
    #completewith next
    .subzone 209,2 >>找到一个组并输入Shadowfang Keep
step << Warrior
    >>打开|cRXP_PICK_Discarded Helm|r。为|cRXP _Loot_Dragonslayer的Helm|r掠夺它
    >>|cRXP_WARN_这是在|r|cRXP_ENEMY_Commander Springvale后面的长椅上发现的|r
    .collect 209872,1,78132,1 -- Dragonslayer's Helm (1)
    .train 425444,1
step << Warrior
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alonso|r
    .accept 78132 >>Accept Dragonslayer's Helm
    .accept 78134 >>Accept Dragonslayer's Lance
    .accept 78133 >>Accept Dragonslayer's Shield
    .turnin 78132 >>Turn In Dragonslayer's Helm
    .turnin 78134 >>Turn In Dragonslayer's Lance
    .turnin 78133 >>Turn In Dragonslayer's Shield
    .target Alonso
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alonso|r
    .accept 78144 >>Accept Alonso the Dragonslayer
    .target Alonso
    .train 425444,1
step << Warrior
    .goto Ashenvale,42.029,68.999
    >>杀死|cRXP_ENEMY_Green Dragon Whelp|r
    .complete 78144,1 -- Accompany Alonso to slay the dragon.
    .target Alonso
    .mob Green Dragon Whelp
    .train 425444,1
step << Warrior
    .goto Ashenvale,42.053,69.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alonso|r
    .turnin 78144 >>Turn in Alonso the Dragonslayer
    .target Alonso
    .train 425444,1
step << Warrior
    .train 425444 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Raging Blow|r]|cRXP_WARN_to train|r|T132215:0|t[Raging Blow]
    .use 210015
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 灵魂力量-22（灰烬谷）
#title Strength of Soul

step << Priest
    .goto Ashenvale,32.0,43.0,65,0
    .goto Ashenvale,33.6,38.8,65,0
    .goto Ashenvale,37.6,34.0
    >>杀死|cRXP_ENEMY_Thistlefur图腾|r和|cRXP_ENEMY_ ThistlefurShaman|r。为|T135736:0|t[原始洞察]掠夺它们
    .collect 211534,1 -- Primal Insight (1)
    .mob Thistlefur Totemic
    .mob Thistlefur Shaman
    .train 415997,1
step << Priest
    .goto Ashenvale,38.002,29.528,40,0
    .goto Ashenvale,37.938,27.958,30,0
    .goto Ashenvale,38.819,27.160,30,0
    .goto Ashenvale,38.804,26.558
    >>|cRXP_WARN_跑上洞穴入口旁的大树。小心地按箭头|r
    .use 211534 >>|cRXP_WARN_当你在树上的两个捕梦者旁边时，使用|r|T135736:0|t[Primal Insight]|cRXP_WARN_来创建|r|T135975:0|t[|cRXP-FRIENDLY_Pophyof Seven Visitors]|r
    .collect 211531,1 -- Prophecy of Seven Visitors (1)
    .train 415997,1
step << Priest
    >>你现在必须获得两个|T135934:0|t|T136057:0|t[冥想]增益 << Alliance
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想]增益 << Horde
    >>您必须/跪在以下地点之一：北郡修道院、暴风大教堂、安维尔玛的光明祭坛、莫丹湖或铁炉堡的神秘病房 << Human/Dwarf
    >>你必须/跪在以下一个地方：月井，比如暴风城的月井或达纳苏斯的月井 << NightElf
    >>你必须/跪在任何墓地 << Undead
    >>你必须跪在任何一个Loa祭坛前，比如Sen'Jin村的那个或the Barrens十字路口的那个 << Troll
    >>为了获得你的第二个【冥想】增益|T135934:0|t|T136057:0|t，这需要你跪在一个与你有不同【冥想】的牧师面前，他们必须在针对你的时候祈祷 << Alliance
    >>为了获得你的第二个|T237569:0|t|T136077:0|t[冥想]增益，这需要你跪在与你有不同|T135934:0|t| T136057:0|t[冥想]的牧师面前，他们必须/祈祷，同时瞄准你 << Horde
    .train 415997 >>|cRXP_WARN_一旦你同时拥有这两个|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXP_FRIENDLY_七个访客的概念]|r|cRXP_WARN_to学习|r|T235911:0|t[灵魂的力量] << Alliance
    .train 415997 >>|cRXP_WARN_一旦你同时拥有这两个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXP_FRIENDLY_七个访客的概念]|r|cRXP_WARN_to学习|r|T135911:0|t[灵魂的力量] << Horde
    .use 211531
    .itemcount 211531,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 力量词：屏障-22（雷德里奇山脉）
#title Power Word: Barrier

step << Priest
    #completewith next
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
    .train 425213,1
step << Priest
    .goto Redridge Mountains,67.2,53.6
    .goto Redridge Mountains,68.8,57.4
    >>杀死|cRXP_ENEMY_Blackrock Shadowcaster|r。为|T135975:0|t[|cRXP_FRIENDLY_一个城市的热情|r]掠夺它们
    >>|cRXP_ENEMY_贝莱德影星|r|cRXP_WARN_是22-23级精英。为此查找组|r
    .collect 211530,1 -- Prophecy of a City Enthralled (1)
    .mob Blackrock Shadowcaster
    .train 425213,1
step << Priest
    >>你现在必须获得两个|T135934:0|t|T136057:0|t[冥想]增益 << Alliance
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想]增益 << Horde
    >>您必须/跪在以下地点之一：北郡修道院、暴风大教堂、安维尔玛的光明祭坛、莫丹湖或铁炉堡的神秘病房 << Human/Dwarf
    >>你必须/跪在以下一个地方：月井，比如暴风城的月井或达纳苏斯的月井 << NightElf
    >>你必须/跪在任何墓地 << Undead
    >>你必须跪在任何一个Loa祭坛前，比如Sen'Jin村的那个或the Barrens十字路口的那个 << Troll
    >>为了获得你的第二个【冥想】增益|T135934:0|t|T136057:0|t，这需要你跪在一个与你有不同【冥想】的牧师面前，他们必须在针对你的时候祈祷 << Alliance
    >>为了获得你的第二个|T237569:0|t|T136077:0|t[冥想]增益，这需要你跪在与你有不同|T135934:0|t| T136057:0|t[冥想]的牧师面前，他们必须/祈祷，同时瞄准你 << Horde
    .train 425213 >>|cRXP_WARN_一旦你同时拥有这两个|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_热情城市的哲学|r]|cRXP_WARN_to learn|r|T253400:0|t] << Alliance
    .train 425213 >>|cRXP_WARN_一旦你同时拥有这两个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_热情城市的哲学|r]|cRXP_WARN_to learn|r|T253400:0|t][力量词：屏障] << Horde
    .use 211530
    .itemcount 211530,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 治疗圈-25（黄昏）
#title Circle of Healing

step << Priest
    .goto Duskwood,50.4,70.8,60,0
    .goto Duskwood,50.2,76.4
    >>杀死|cRXP_ENEMY_Defias夜行者|r、|cRXD_ENEMY_Defias夜刃|r和|cRXP_ENEMY_Desias魔法师|r。为|T135736:0|t[|cRXP_Loot_DDark Insight |r]掠夺它们
    .collect 211528,1 -- Dark Insight (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Night Enchanter
    .train 402859,1
step << Priest
    .goto Duskwood,91.11,30.58
    .use 211528 >>|cRXP_WARN_使用|r|T135736:0|t[|cRXP_LOOT_Dark Insight |r]|cRXP_WARN_在塔后的隐蔽坟墓处接收|r|T135975:0|t[|cRXP_RIENDLY_千光之父|r]
    .collect 211490,1 -- Prophecy of a Thousand Lights (1)
    .train 402859,1
step << Priest
    >>你现在必须获得两个|T135934:0|t|T136057:0|t[冥想]增益 << Alliance
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想]增益 << Horde
    >>您必须/跪在以下地点之一：北郡修道院、暴风大教堂、安维尔玛的光明祭坛、莫丹湖或铁炉堡的神秘病房 << Human/Dwarf
    >>你必须/跪在以下一个地方：月井，比如暴风城的月井或达纳苏斯的月井 << NightElf
    >>你必须/跪在任何墓地 << Undead
    >>你必须跪在任何一个Loa祭坛前，比如Sen'Jin村的那个或the Barrens十字路口的那个 << Troll
    >>为了获得你的第二个【冥想】增益|T135934:0|t|T136057:0|t，这需要你跪在一个与你有不同【冥想】的牧师面前，他们必须在针对你的时候祈祷 << Alliance
    >>为了获得你的第二个|T237569:0|t|T136077:0|t[冥想]增益，这需要你跪在与你有不同|T135934:0|t| T136057:0|t[冥想]的牧师面前，他们必须/祈祷，同时瞄准你 << Horde
    .train 402859 >>|cRXP_WARN_一旦你同时拥有这两个|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_千光之父]|r|cRXP_WARN_to学习|r|T235887:0|t][疗愈圈] << Alliance
    .train 402859 >>|cRXP_WARN_一旦你同时拥有这两个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_千光之父]|r|cRXP_WARN_to学习|r|T135887:0|t][疗愈圈] << Horde
    .use 211490
    .itemcount 211490,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 眼镜蛇攻击-25（Hillsbrad Foothills）
#title Cobra Strikes


    --Rune of Cobra Strikes

step
    #season 2
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r << Horde
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r << Alliance
step
    #season 2
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>寻找|cRXP_FRIENDLY_Zixil|r。他在Tarren Mill和南岸之间巡逻。向他购买|T134041:0|t[淡水鲷鱼鱼饵]
    .collect 210410,1 --Freshwater Snapper Bait (1)
    .target Zixil
    .train 425759,1
step
    #season 2
    .goto Hillsbrad Foothills,61.05,33.36
    .use 210410 >>在池塘中央的船上使用|T134041:0|t[淡水Snapper鱼饵]
    >>杀死|cRXP_ENEMY_Koartul|r（25精英）。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Cobra Strikes|r]
    .collect 210596,1 --Rune of Cobra Strikes (1)
    .mob Koartul
    .train 425759,1
step
    #season 2
    .train 425759 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_眼镜蛇攻击的路线|r]|cRXP_WARN_训练|r|T236177:0|t[眼镜蛇攻击]
    .use 210596
    .itemcount 210596,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 杀戮命令-25（多区域）
#title Kill Command

step
    #completewith WyvernWrangling
    >>|cRXP_BUY_从拍卖行购买|r|T135144:0|t[Greater Magic Wand]|cRXP_Buy_|r
    .collect 11288,1 --Greater Magic Wand (1)
    .train 410111,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_开始寻找哭泣洞穴的团队|r
step
    #season 2
    #completewith next
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.18
    .zone 279 >>Enter Wailing Caverns
step
    #season 2
    >>杀死吞噬者|cRXP_ENEMY_Mutanus |r。掠夺他|T132775:0|t[|cRXD_Loot_催眠水晶|r]
    .collect 209838,1 --Hypnotic Crystal (1)
    .mob Mutanus the Devourer
    .train 410111,1
step
    #season 2
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
step
    #season 2
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    .goto Ashenvale,35.75,32.01
    >>杀死|cRXP_ENEMY_Thistlefur萨满|r。掠夺他们|T237004:0|t[|cRXX_Loot_狂野魔法精华|r]
    .collect 209841,1 --Wild Magic Essence (1)
    .mob Thistlefur Shaman
    .train 410111,1
step
    #season 2
    .use 209841 >>使用|T237004:0|t[|cRXP_OOT_Wild Magic Essence|r]创建|T237489:0|t[| cRXP_LOOT_Gnarled Wand of Wild Magic|r]
    .collect 209840,1 --Gnarled Wand of Wild Magic (1)
    .train 410111,1
step
    #season 2
    #completewith WyvernWrangling
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
step
    #season 2
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jixo Madrocket|r in Stonetalon Mountains
    .accept 78114 >>Accept Wild Wyvern Wrangling
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    #label WyvernWrangling
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jixo Madrocket|r
    .turnin 78114 >>Turn in Wild Wyvern Wrangling
    .accept 78121 >>Accept Wrangling a Wild Wyvern
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .goto Stonetalon Mountains,60.70,62.33
    >>与|cRXP_FRIENDLY_Jixo Madrocket|r呆在一起，看着他驯服|cRXP_ENEMY_Wyvern|r
    .turnin 78121 >>Turn in Wrangling a Wild Wyvern
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .train 410111 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Kill Command|r]|cRXP-WARN_训练|r|T132176:0|t[Kill Command]
    .use 209852
    .itemcount 209852,1


]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
<< SoD
#subgroup Chest << Shaman
#subgroup Belt << Warrior/Hunter/Mage/Paladin
#subgroup Boots << Warlock/Priest/Rogue/Druid
#name Dark Rider Runes
#displayname Spirit of the Redeemer - 40 (Azeroth) << Priest
#displayname Melee Specialist - 40 (Azeroth) << Hunter
#displayname King of the Jungle - 40 (Azeroth) << Druid
#displayname Precise Timing - 40 (Azeroth) << Warrior
#displayname Two-Handed Mastery - 40 (Azeroth) << Shaman
#displayname Demonic Knowledge - 40 (Azeroth) << Warlock
#displayname Infusion of Light - 40 (Azeroth) << Paladin
#displayname Missile Barrage - 40 (Azeroth) << Mage
#displayname Waylay - 40 (Azeroth) << Rogue
#title Spirit of the Redeemer << Priest
#title Melee Specialist << Hunter
#title King of the Jungle << Druid
#title Precise Timing << Warrior
#title Two-Handed Mastery << Shaman
#title Demonic Knowledge << Warlock
#title Infusion of Light << Paladin
#title Missile Barrage << Mage
#title Waylay << Rogue

step
    #completewith Sigil
    +|cRXP_WARN_在尝试获得这个符文之前，强烈建议你找一个小组。你必须杀死41级精英总共7次|r
step
    #completewith next
    .zone Deadwind Pass >>前往: |cRXP_PICK_逆风小径|r
step
    #label Sigil
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dalaran Agent|r to receive |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r]
    .skipgossip 218920,1
    .collect 216941,1
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .equip 13 >>|cRXP_WARN_equp|r|T338784:0|t[|cRXP_FRIENDLY_Ariden’s Sigil|r]
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,45.04,28.88
    .aura 438288 >>|cRXP_WARN_行驶至箭头位置。当你靠近时，你将收到|r|T237534:0|t[黑暗存在]|cRXP_WARN_buff|r
    >>|cRXP_WARN_你也必须下马才能获得BUFF！|r
    >>|cRXP_WARN_确保您有|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP-WARN_equied|r
    .use 216941
    .itemcount 216945,<1
step
    #completewith next
    .goto Deadwind Pass,45.04,28.88
    .cast 438305 >>|cRXP_WARN_使用|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP_WARN_to揭示|r|cRXP-ENEMY_Dark Rider|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,45.04,28.88
    >>杀死|cRXP_ENEMY_Dark Rider |r。掠夺他获得|cRXD_Loot_好奇达拉然遗迹|r
    .use 216941
    .collect 216945,1
    .mob Dark Rider
step
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Swamp of Sorrows,69,28
    .aura 438288 >>|cRXP_WARN_行驶至箭头位置。当你靠近时，你将收到|r|T237534:0|t[黑暗存在]|cRXP_WARN_buff|r
    >>|cRXP_WARN_你也必须下马才能获得BUFF！|r
    >>|cRXP_WARN_确保您有|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP-WARN_equied|r
    .use 216941
    .itemcount 216948,<1
step
    #completewith next
    .goto Swamp of Sorrows,69,28
    .cast 438305 >>|cRXP_WARN_使用|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP_WARN_to揭示|r|cRXP-ENEMY_Dark Rider|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Swamp of Sorrows,69,28
    >>杀死|cRXP_ENEMY_Dark Rider |r。掠夺他获得|cRXD_Loot_Odd达拉然遗迹|r
    .use 216941
    .collect 216948,1
    .mob Dark Rider
step
    #completewith next
    .zone Duskwood >>前往: |cRXP_PICK_暮色森林|r
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Duskwood,23,47
    .aura 438288 >>|cRXP_WARN_行驶至箭头位置。当你靠近时，你将收到|r|T237534:0|t[黑暗存在]|cRXP_WARN_buff|r
    >>|cRXP_WARN_你也必须下马才能获得BUFF！|r
    >>|cRXP_WARN_确保您有|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP-WARN_equied|r
    .use 216941
    .itemcount 216946,<1
step
    #completewith next
    .goto Duskwood,23,47
    .cast 438305 >>|cRXP_WARN_使用|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP_WARN_to揭示|r|cRXP-ENEMY_Dark Rider|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Duskwood,23,47
    >>杀死|cRXP_ENEMY_Dark Rider |r。掠夺他获得|cRXD_Loot_闪闪发光的达拉然遗迹|r
    .use 216941
    .collect 216946,1
    .mob Dark Rider
step
    #completewith next
    .zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Badlands,58,54
    .aura 438288 >>|cRXP_WARN_行驶至箭头位置。当你靠近时，你将收到|r|T237534:0|t[黑暗存在]|cRXP_WARN_buff|r
    >>|cRXP_WARN_你也必须下马才能获得BUFF！|r
    >>|cRXP_WARN_确保您有|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP-WARN_equied|r
    .use 216941
    .itemcount 216951,<1
step
    #completewith next
    .goto Badlands,58,54
    .cast 438305 >>|cRXP_WARN_使用|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP_WARN_to揭示|r|cRXP-ENEMY_Dark Rider|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Badlands,58,54
    >>杀死|cRXP_ENEMY_Dark Rider |r。掠夺他获得|cRXD_Loot_Slippery Dalaran遗迹|r
    .use 216941
    .collect 216951,1
    .mob Dark Rider
step
    #completewith next
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Arathi Highlands,60,40
    .aura 438288 >>|cRXP_WARN_行驶至箭头位置。当你靠近时，你将收到|r|T237534:0|t[黑暗存在]|cRXP_WARN_buff|r
    >>|cRXP_WARN_你也必须下马才能获得BUFF！|r
    >>|cRXP_WARN_确保您有|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP-WARN_equied|r
    .use 216941
    .itemcount 216947,<1
step
    #completewith next
    .goto Arathi Highlands,60,40
    .cast 438305 >>|cRXP_WARN_使用|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP_WARN_to揭示|r|cRXP-ENEMY_Dark Rider|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Arathi Highlands,60,40
    >>杀死|cRXP_ENEMY_Dark Rider |r。掠夺他获得|cRXD_Loot_Wirring Dalaran遗迹|r
    .use 216941
    .collect 216947,1
    .mob Dark Rider
step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto The Barrens,52,36
    .aura 438288 >>|cRXP_WARN_行驶至箭头位置。当你靠近时，你将收到|r|T237534:0|t[黑暗存在]|cRXP_WARN_buff|r
    >>|cRXP_WARN_你也必须下马才能获得BUFF！|r
    >>|cRXP_WARN_确保您有|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP-WARN_equied|r
    .use 216941
    .itemcount 216949,<1
step
    #completewith next
    .goto The Barrens,52,36
    .cast 438305 >>|cRXP_WARN_使用|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP_WARN_to揭示|r|cRXP-ENEMY_Dark Rider|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto The Barrens,52,36
    >>杀死|cRXP_ENEMY_Dark Rider |r。掠夺他获得|cRXD_Loot_重型达拉然遗迹|r
    .use 216941
    .collect 216949,1
    .mob Dark Rider
step
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Desolace,65,25
    .aura 438288 >>|cRXP_WARN_行驶至箭头位置。当你靠近时，你将收到|r|T237534:0|t[黑暗存在]|cRXP_WARN_buff|r
    >>|cRXP_WARN_你也必须下马才能获得BUFF！|r
    >>|cRXP_WARN_确保您有|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP-WARN_equied|r
    .use 216941
    .itemcount 216950,<1
step
    #completewith next
    .goto Desolace,65,25
    .cast 438305 >>|cRXP_WARN_使用|r|T338784:0|t[|cRXP_FRIENDLY_Ariden的Sigil|r]|cRXP_WARN_to揭示|r|cRXP-ENEMY_Dark Rider|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Desolace,65,25
    >>杀死|cRXP_ENEMY_Dark Rider |r。掠夺他获得|cRXD_Loot_恐怖达拉然遗迹|r
    .use 216941
    .collect 216950,1
    .mob Dark Rider
step
    #completewith next
    .zone Deadwind Pass >>前往: |cRXP_PICK_逆风小径|r
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dalaran Agent|r
    .turnin 80147 >>Turn in Curious Dalaran Relic
    .turnin 80149 >>Turn in Curious Dalaran Relic
    .turnin 80098 >>Turn in Curious Dalaran Relic
    .turnin 80152 >>Turn in Curious Dalaran Relic
    .turnin 80148 >>Turn in Curious Dalaran Relic
    .turnin 80150 >>Turn in Curious Dalaran Relic
    .turnin 80151 >>Turn in Curious Dalaran Relic
    .turnin 80120 >>Turn in A Service to Dalaran
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    >>打开|T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r]以接收|T135791:0|t[|cRXP-FRIENDLY_Luminous Epiphany|r] << Priest
    >>打开|T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r]接收|T134419:0|t[| cRXP_FRAIENDLY_Rune of Infusions |r] << Paladin
    >>打开|T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r]以接收|T134939:0|t[|cRXP-FRIENDLY_Spell Notes：导弹弹幕|r] << Mage
    >>打开|T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r]接收|T134419:0|t[| cRXP_FRAIENDLY_Rune of Close Combat|r] << Hunter
    >>打开|T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r]领取|T134419:0|t[| cRXP_FRAIENDLY_Rune of the Jungle King|r] << Druid
    >>打开|T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r]接收|T134419:0|t[| cRXP_FRAIENDLY_Rune of Ruthless Precision|r] << Warrior
    >>打开|T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r]接收|T134419:0|t[| cRXP-FRIENDLY_Rune of Forbidden Knowledge|r] << Warlock
    >>打开|T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r]以接收|T134419:0|t[| cRXP_FRAIENDLY_Rune of the Assilant|r] << Rogue
    >>打开|T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r]领取|T134419:0|t[| cRXP_FRAIENDLY_Rune of Two-Handed Mastery|r] << Shaman
    .use 217014
    .collect 213144,1 << Priest
    .collect 213130,1 << Paladin
    .collect 213112,1 << Mage
    .collect 213124,1 << Hunter
    .collect 213118,1 << Druid
    .collect 213104,1 << Warrior
    .collect 213100,1 << Warlock
    .collect 213137,1 << Rogue
    .collect 216606,1 << Shaman
step
    .itemcount 213144,1 << Priest
    .itemcount 213130,1 << Paladin
    .itemcount 213112,1 << Mage
    .itemcount 213124,1 << Hunter
    .itemcount 213118,1 << Druid
    .itemcount 213104,1 << Warrior
    .itemcount 213100,1 << Warlock
    .itemcount 213137,1 << Rogue
    .itemcount 216606,1 << Shaman
    .use 213144 << Priest
    .use 213130 << Paladin
    .use 213112 << Mage
    .use 213124 << Hunter
    .use 213118 << Druid
    .use 213104 << Warrior
    .use 213100 << Warlock
    .use 213137 << Rogue
    .use 216606 << Shaman
    .train 425312 >>|cRXP_WARN_使用|r|T135791:0|t[|cRXP_FRIENDLY_Luminous Epiphany|r]|cRXP_WARN_to train|r|T132864:0|t[救世主的精神] << Priest
    .train 426180 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Infusions |r]|cRXP_WARN_to train|r|T236254:0|t[Infusion of Light] << Paladin
    .train 401763 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell备注：导弹弹幕|r]|cRXP-WARN_训练|r|T236221:0|t[导弹弹幕] << Mage
    .train 416086 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_近战调整|r]|cRXP-WARN_训练|r|T132394:0|t[近战专家] << Hunter
    .train 424765 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle King|r]|cRXP_WARN_to train|r|T236159:0|t[King of the Jungle] << Druid
    .train 416005 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Ruthless Precision|r]|cRXP_WARN_训练|r|T134377:0|t[精确计时] << Warrior
    .train 416014 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_禁忌知识调整|r]|cRXP_WARN_训练|r|T136172:0|t[恶魔知识] << Warlock
    .train 415926 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Assailant|r]|cRXP_WARN_to train|r|T236286:0|t[Waylay] << Rogue
    .train 436368 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Two-Handed Mastery|r]|cRXP-WARN_to train|r|T135145:0|t[Two-Handd Mastery] << Shaman
]])

RXPGuides.RegisterGuide([[

#classic
<< SoD
#group RestedXP Rune和书籍指南
#subgroup Belt << Druid/Priest/Rogue/Warlock
#subgroup Boots << Mage/Shaman/Hunter/Paladin/Warrior
#name Desolace Chain Runes
#displayname Mind Spike - 35 (Azeroth) << Priest
#displayname Trap Launcher - 35 (Azeroth) << Hunter
#displayname Eclipse - 35 (Azeroth) << Druid
#displayname Enraged Regeneration - 35 (Azeroth) << Warrior
#displayname Ancestral Awakening - 35 (Azeroth) << Shaman
#displayname Shadow and Flame - 35 (Azeroth) << Warlock
#displayname The Art of War - 35 (Azeroth) << Paladin
#displayname Brain Freeze - 35 (Azeroth) << Mage
#displayname Poisoned Knife - 35 (Azeroth) << Rogue
#title Mind Spike << Priest
#title Trap Launcher << Hunter
#title Eclipse << Druid
#title Enraged Regeneration << Warrior
#title Ancestral Awakening << Shaman
#title Shadow and Flame << Warlock
#title The Art of War << Paladin
#title Brain Freeze << Mage
#title Poisoned Knife << Rogue

step
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>单击|cRXP_PICK_灭火的篝火|r
    .goto Desolace,47.532,54.605
    .accept 79229 >>Accept Highway Robbery
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比布里·弗斯巴克|r
    .goto Desolace,62.314,38.965
    .turnin 79229 >>Turn in Highway Robbery
    .accept 79235 >>Accept On the Lam
    .target Bibbly F'utzbuckle
step
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79235 >>Turn in On the Lam
    .accept 79236 >>Accept Cherry for Your Thoughts?
    .target Tokal
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼克拉克斯·菲拉莫格|r
    >>|cRXP_BUY_BUY a|r|T132790:0|t[Cherry Grog]
    .goto Stranglethorn Vale,27.039,77.168
    .collect 4600,1,79236,1
    .target Nixxrax Fillamug
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79236 >>Turn in Cherry for Your Thoughts?
    .accept 79242 >>Accept No Honor Among Thieves
    .target Tokal
step
    #completewith next
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
step
    .goto Wetlands,58.320,6.927
    .cast 6477 >>在水中输入|cRXP_PICK_Rowboat|r
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .subzoneskip 308
step << NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r to receive |cRXP_LOOT_Illari's Key|r
    .complete 79242,1 --Found Illari Duskfeather
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,2
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    #completewith next
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r. You will have to fight her after
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip 215655,1,1,1
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>杀死|cRXP_ENEMY_Illari Duskweather|r。打开她掉在地上的|cRX_PICK_Dropped Pouch|r。为|cRXP_Loot_Illari的密钥|r抢劫它
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,1
    .mob Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip
    .target Illari Duskfeather
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>单击地面上的|cRXP_PICK_Illari的织机缓存|r
    .goto Arathi Highlands,94.154,69.266
    .turnin 79242 >>Turn in No Honor Among Thieves
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>打开|T135791:0|t的|T133876:0|t[|cRXP_LOOT_Jewel-Enclusted Box |r] << Priest
    >>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r]的|T133876:0|t[| cRXP_LOOT_Jewel-Encrusted Box|r] << Paladin
    >>打开|T134939:0|t[|cRXP_FRIENDLY_Spell注释：Brain Freeze |r] << Mage
    >>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r]的|T133876:0|t[| cRXP_LOOT_Jewel-Enclusted Box|r] << Hunter
    >>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse |r]的|T133876:0|t[| cRXP_LOOT_Jewel-Enclusted Box|r] << Druid
    >>打开|T134419:0|t的|T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box |r] << Warrior
    >>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness |r]的|T133876:0|t[| cRXP_LOOT_Jewel-Enclusted Box |r] << Warlock
    >>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of毒刃|r]的|T133876:0|t[| cRXP_LOOT_Jewel-Encusted Box|r] << Rogue
    >>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of Ancestoral Awakeng|r]的|T133876:0|t[| cRXP_LOOT_Jewel-Encrusted Box |r] << Shaman
    .collect 212552,1 << Priest
    .collect 212551,1 << Paladin
    .collect 208853,1 << Mage
    .collect 212549,1 << Hunter
    .collect 212548,1 << Druid
    .collect 212562,1 << Warrior
    .collect 212561,1 << Warlock
    .collect 212559,1 << Rogue
    .collect 212560,1 << Shaman
    .use 212553 --Jewel-Encrusted Box (1)
step
    .train 431663 >>|cRXP_WARN_使用|r|T135791:0|t[|cRXP_FRIENDLY_精神显象|r]|cRXP_WARN_训练|r|T136181:0|t[心尖] << Priest
    .train 416031 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r]|cRXP_WARN_to train|r|T236246:0|t[战争艺术] << Paladin
    .train 401752 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：大脑冻结|r]|cRXP_WARN_训练|r|T236206:0|t[大脑冻结] << Mage
    .train 410118 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r]|cRXP-WARN_to train|r|T133882:0|t[陷阱发射器] << Hunter
    .train 410029 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse |r]|cRXP _WARN_to train|r|T236151:0|t[Eclipse] << Druid
    .train 403467 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r]|cRXP-WARN_训练|r|T132345:0|t[愤怒的再生] << Warrior
    .train 426452 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_燃烧黑暗之旅|r]|cRXP _WARN_to train|r|T135823:0|t[阴影与火焰] << Warlock
    .train 425102 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_毒刃之刃|r]|cRXP-WARN_训练|r|T236270:0|t[毒刃] << Rogue
    .train 425883 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_祖先觉醒之旅|r]|cRXP_WARN_训练|r|T237571:0|t[祖先觉醒] << Shaman
    .use 212552 << Priest
    .use 212551 << Paladin
    .use 208853 << Mage
    .use 212549 << Hunter
    .use 212548 << Druid
    .use 212562 << Warrior
    .use 212561 << Warlock
    .use 212559 << Rogue
    .use 212560 << Shaman
    .itemcount 212552,1 << Priest
    .itemcount 212551,1 << Paladin
    .itemcount 208853,1 << Mage
    .itemcount 212549,1 << Hunter
    .itemcount 212548,1 << Druid
    .itemcount 212562,1 << Warrior
    .itemcount 212561,1 << Warlock
    .itemcount 212559,1 << Rogue
    .itemcount 212560,1 << Shaman
step
    .goto 1417,89.536,78.149
    .cast 6477 >>在水中输入|cRXP_PICK_Rowboat|r返回Arathi
    .subzoneskip 308,1
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune和书籍指南
#subgroup Spell Books
#name Spell Book Runes
#displayname Totemic Projection - 27-40 (Scarlet Monastery) << Shaman
#title Totemic Projection << Shaman
#displayname Expanded Intellect - 27-40 (Scarlet Monastery) << Mage
#title Expanded Intellect << Mage
#displayname Treatise on Aspect of the Viper - 27-40 (Scarlet Monastery) << Hunter
#title Treatise on Aspect of the Viper << Hunter
#displayname Soul Harvesting/Portal of Summoning - 27-40 (Scarlet Monastery) << Warlock
#title Soul Harvesting/Portal of Summoning << Warlock
#displayname Redirect - 27-40 (Scarlet Monastery) << Rogue
#title Redirect << Rogue
#displayname Shadowfiend/Increased Fortitude - 27-40 (Scarlet Monastery) << Priest
#title Shadowfiend/Increased Fortitude << Priest
#displayname Enhanced Blessings - 27-40 (Scarlet Monastery) << Paladin
#title Enhanced Blessings << Paladin
#displayname Enhanced Restoration/Revive/Deeper Wilds - 27-40 (Scarlet Monastery) << Druid
#title Enhanced Restoration/Revive/Deeper Wilds << Druid
#displayname Commanding Shout - 27-40 (Scarlet Monastery) << Warrior
#title Commanding Shout << Warrior

step
    .train 438040,1 << Rogue
    .train 436949,1 << Mage
    .train 436956,1 << Druid
    .train 417123,1 << Druid
    .train 437138,1 << Druid
    .train 415423,1 << Hunter
    .train 435984,1 << Paladin
    .train 401977,1 << Priest
    .train 436951,1 << Priest
    .train 437032,1 << Warlock
    .train 437169,1 << Warlock
    .train 403215,1 << Warrior
    .train 437009,1 << Shaman
    #completewith Interrogator Vishas
    +技能书可以被猩红修道院内的暴民获取：墓地/图书馆。以下敌人掉落的几率增加：第一个和最后一个地牢首领，或罕见的敌人，|cRXP_enemy_Ironscree|r。强烈建议5人一组|r
step
    .train 438040,1 << Rogue
    .train 436949,1 << Mage
    .train 436956,1 << Druid
    .train 417123,1 << Druid
    .train 437138,1 << Druid
    .train 415423,1 << Hunter
    .train 435984,1 << Paladin
    .train 401977,1 << Priest
    .train 436951,1 << Priest
    .train 437032,1 << Warlock
    .train 437169,1 << Warlock
    .train 403215,1 << Warrior
    .train 437009,1 << Shaman
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    .train 438040,1 << Rogue
    .train 436949,1 << Mage
    .train 436956,1 << Druid
    .train 417123,1 << Druid
    .train 437138,1 << Druid
    .train 415423,1 << Hunter
    .train 435984,1 << Paladin
    .train 401977,1 << Priest
    .train 436951,1 << Priest
    .train 437032,1 << Warlock
    .train 437169,1 << Warlock
    .train 403215,1 << Warrior
    .train 437009,1 << Shaman
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10,0
    .goto 1415,47.73,19.39,5 >>进入猩红寺地牢：墓地
step
    .train 438040,1 << Rogue
    .train 436949,1 << Mage
    .train 436956,1 << Druid
    .train 417123,1 << Druid
    .train 437138,1 << Druid
    .train 415423,1 << Hunter
    .train 435984,1 << Paladin
    .train 401977,1 << Priest
    .train 436951,1 << Priest
    .train 437032,1 << Warlock
    .train 437169,1 << Warlock
    .train 403215,1 << Warrior
    .train 437009,1 << Shaman
    #label Interrogator Vishas
    >>杀死老板、稀有动物和怪物。为|r|cRXP_WARN_重定向的|cRXP_OOT_Manual抓取它们这可能需要多次运行|r << Rogue
    >>杀死老板、稀有动物和怪物。掠夺它们以获取|cRXP_Loot_增强恢复传单|r、|T134914:0|t|cRXP_Loot_[复活传单]|r和|T134914-0|t| cRXP_OOT_[更深荒野传单]|r|cRXP-WARN_这可能需要多次运行|r << Druid
    >>杀死老板、稀有动物和怪物。为|cRXP_Loot_论毒蛇的方面|r|cRXP_WARN_这可能需要多次运行|r << Hunter
    >>杀死老板、稀有动物和怪物。为|cRXP_OOT_Tome of Expanded Intellection|r|cRXT_WARN_This可能需要多次运行|r << Mage
    >>杀死老板、稀有动物和怪物。掠夺它们|T133745:0|t|cRXP_Loot_[增强祝福的遗嘱]|r|cRXP-WARN_这可能需要多次运行|r << Paladin
    >>杀死老板、稀有动物和怪物。掠夺它们以获得|cRXP_Loot_阴影之滚动|r，|T237543:0|t[增加的坚韧度]|cRXT_WARN_这可能需要多次运行|r << Priest
    >>|cRXP_WARN_另外，点击无头骑士产卵位置附近的|cRXP_PICK_Tombstone |r以收集|cRXP_LOOT_|T136222:0|t[墓地回声]|r|cFFFF0000这是止痛符文所必需的。如果你已经有了这个符文，你可以跳过它。 << Priest
    >>杀死老板、稀有动物和怪物。掠夺它们|T133733:0|t|cRXP_Loot_[灵魂收割的冷酷]|r，|T133733-:0|t| cRXP_OOT_[召唤之门的冷酷]| r|cRXP-WARN_这可能需要多次运行|r << Warlock
    >>杀死老板、稀有动物和怪物。为指挥官的|r|cRXP_WARN_符文|cRXP_OOT_Rune掠夺它们这可能需要多次运行|r << Warrior
    >>杀死老板、稀有动物和怪物。为指挥官的|r|cRXP_WARN_符文|cRXP_OOT_Rune掠夺它们这可能需要多次运行|r << Shaman
    .link https://imgur.com/a/lqRc0i6 >>|cRXP_WARN_单击此处获取|T136222:0|t[Graveyard Echo]|r的图片参考。 << Priest
    .collect 216738,1 << Rogue -- Manual of Redirect
    .collect 216740,1 << Mage -- Tome of Expanded Intellect
    .collect 216744,1 << Priest -- Scroll of Increased Fortitude
    .collect 216745,1 << Priest -- Scroll of Shadowfiend
    .collect 215426,1 << Priest -- Graveyard Echo
    .collect 216746,1 << Warrior -- Handbook of Commanding Shout
    .collect 216747,1 << Warlock -- Grimoire of Soul Harvesting
    .collect 216748,1 << Warlock -- Grimoire of Portal of Summoning
    .collect 216764,1 << Druid -- Leaflet of Deeper Wilds
    .collect 216767,1 << Druid -- Leaflet of Revive
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 216769,1 << Shaman -- Revelation of Totemic Projection
    .collect 216770,1 << Hunter -- Treatise on Aspect of the Viper
    .collect 216771,1 << Druid -- Leaflet of Enhanced Restoration
    .mob Interrogator Vishas
    .mob Bloodmage Thalnos
    .mob Ironspine
    .mob Houndmaster Loksey
    .mob Arcanist Doan
step
    .train 438040 >>|cRXP_WARN_使用|r|T133735:0|t|cRXP_OOT_[重定向手册]|r|cRXP-WARN_学习|r|T135425:0|t[重定向] << Rogue
    .train 436949 >>|cRXP_WARN_使用|r|T133736:0|t|cRXP_LOOT_[扩展的智力]|r|cRXP-WARN_学习|r|T236513:0|t[扩展的智慧] << Mage
    .train 436956 >>|cRXP_WARN_使用|r|T134914:0|t|cRXP_LOOT_[深层野生动物传单]|r|cRXP_WARN_学习|r|T132124:0|t[深层野生] << Druid
    .train 417123 >>|cRXP_WARN_使用|r|T134914:0|t|cRXP_LOOT_[增强恢复传单]|r|cRXP_WARN_学习|r|T136073:0|t[增强恢复] << Druid
    .train 437138 >>|cRXP_WARN_使用|r|T134914:0|t|cRXP_LOOT_[复活传单]|r|cRXP-WARN_学习|r|T132132:0|t[437138] << Druid
    .train 415423 >>|cRXP_WARN_使用|r|T133739:0|t|cRXP_LOOT_[论毒蛇的方面]|r|cRXP-WARN_to learn|r|T132160:0|t[毒蛇的方面 << Hunter
    .train 435984 >>|cRXP_WARN_使用|r|T133745:0|t|cRXP_LOOT_[增强祝福的遗嘱]|r|cRXP_WARN_学习|r|T236248:0|t[增强祝福] << Paladin
    .train 401977 >>|cRXP_WARN_使用|r|T237162:0|t|cRXP_LOOT_[阴影朋友的滚动]|r|cRXP_WARN_学习|r|T136199:0|t[阴影朋友] << Priest
    .train 436951 >>|cRXP_WARN_使用|r|T237162:0|t|cRXP_LOOT_[增加坚韧的滚动]|r|cRXP_WARN_学习|r|T237543:0|t[增加坚韧] << Priest
    .train 437032 >>|cRXP_WARN_使用|r|T133733:0|t|cRXP_LOOT_[灵魂收割的苦闷]|r|cRXP_WARN_学习|r|T132851:0|t[灵魂收割] << Warlock
    .train 437169 >>|cRXP_WARN_使用|r|T133733:0|t|cRXP_LOOT_[召唤之门的魔法]|r|cRXP_WARN_学习|r|T134423:0|t[召唤之口] << Warlock
    .train 403215 >>|cRXP_WARN_使用|r|T133741:0|t|cRXP_LOOT_[指挥呐喊手册]|r|cRXP-WARN_学习|r|T132351:0|t[指挥呐喊] << Warrior
    .train 437009 >>|cRXP_WARN_使用|r|T133747:0|t|cRXP_LOOT_[图腾投射的启示]|r|cRXD_WARN_学习|r|T310733:0|t[图腾投射] << Shaman
    .use 216738 << Rogue -- Manual of Redirect
    .use 216740 << Mage -- Tome of Expanded Intellect
    .use 216744 << Priest -- Scroll of Increased Fortitude
    .use 216745 << Priest -- Scroll of Shadowfiend
    .use 216746 << Warrior -- Handbook of Commanding Shout
    .use 216747 << Warlock -- Grimoire of Soul Harvesting
    .use 216748 << Warlock -- Grimoire of Portal of Summoning
    .use 216764 << Druid -- Leaflet of Deeper Wilds
    .use 216767 << Druid -- Leaflet of Revive
    .use 216768 << Paladin -- Testament of Enhanced Blessings
    .use 216769 << Shaman -- Revelation of Totemic Projection
    .use 216770 << Hunter -- Treatise on Aspect of the Viper
    .use 216771 << Druid -- Leaflet of Enhanced Restoration
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name Bugcatcher Runes
#displayname Invigoration - 35 (Azeroth) << Hunter
#displayname Survival Instincts - 35 (Azeroth) << Druid
#title Invigoration << Hunter
#title Survival Instincts << Druid

step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaryllis Webb|r
    >>|cRXP_BUY_BUY a|r|T133653:0|t[昆虫学入门套件]
    .collect 213565,1 --Entomology Starter Kit (1x)
    .target Amaryllis Webb
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    >>打开|T133653:0|t[昆虫学入门套件]
    .use 213565
    .collect 213562,1 --Bug Catching Net (1x)
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    >>|cRXP_WARN_使用|r|T134325:0|t[Bug Catching Net]|cRXP_WARN_on a|r|cRXP-ENEMY_Arbor Tarantula|r
    >>|cRXP_WARN_它们是在树桩上发现的|r
    .use 213562
    .collect 213566,1 --Arbor Tarantula Specimen (1x)
    .mob Arbor Tarantula
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Arathi Highlands,54.0,38.6,0
    .goto Arathi Highlands,57.0,39.8,0
    .goto Arathi Highlands,59.6,57.0,0
    .goto Arathi Highlands,61.2,55.6,0
    .goto Arathi Highlands,54.0,38.6,20,0
    .goto Arathi Highlands,57.0,39.8,20,0
    .goto Arathi Highlands,59.6,57.0,20,0
    .goto Arathi Highlands,61.2,55.6,20,0
    .goto Arathi Highlands,62.6,56.0,20,0
    >>|cRXP_WARN_使用|r|T134325:0|t[Bug Catching Net]|cRXP_WARN_on a|r|cRXP-ENEMY_Hay Weevil|r
    >>|cRXP_WARN_这些可以在任何农场找到，包括谷仓内部|r
    .use 213562
    .collect 213568,1 --Hay Weevil Specimen (1x)
    .mob Hay Weevil
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Desolace,53.0,59.0,0
    .goto Desolace,50.0,55.8,30,0
    .goto Desolace,53.0,59.0,30,0
    .goto Desolace,54.0,62.6,30,0
    >>|cRXP_WARN_在|r|cRXP_ENEMY_Flesh Picker上使用|r|T134325:0|t[Bug Catching Net]| cRXP_WARN_on|r
    >>|cRXP_WARN_这些是在Kodo墓地发现的|r
    .use 213562
    .collect 213567,1 --Flesh Picker Specimen (1x)
    .mob Flesh Picker
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>Talk to |cRXP_FRIENDLY_Amaryllis Webb|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Invigoration|r] << Hunter
    >>Talk to |cRXP_FRIENDLY_Amaryllis Webb|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Instinct|r] << Druid
    .collect 213125,1 << Hunter --Rune of Invigoration (1x)
    .collect 213119,1 << Druid --Rune of Instinct (1x)
    .skipgossip 217412,1
    .target Amaryllis Webb
step
    .train 416089 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Vibration|r]|cRXP _WARN_to train|r|T236184:0|t[Vibration] << Hunter
    .train 410027 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Instinct|r]|cRXP-WARN_训练|r|T132266:0|t[生存本能] << Druid
    .use 213125 << Hunter
    .use 213119 << Druid
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune和书籍指南
#subgroup Extras
#subweight -1
#name Cozy Sleeping Bag - 14
#title Cozy Sleeping Bag

step
    #optional
    +|cRXP_WARN_您必须至少达到14级才能开始寻求|r|T133662:0|t[|cRXP_LOOT_舒适睡袋|r]
    .xp >14,1
step << Alliance
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step << Alliance
    .goto Westfall,37.413,50.701
    >>单击地面上的|cRXP_PICK_Burned-Out Remains|r
    .accept 79008 >>Accept ...and that note you found
step << Alliance
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step << Alliance
    .goto The Barrens,46.361,73.904
    >>单击地面上的|cRXP_PICK_Burned-Out Remains|r
    .turnin 79008 >>Turn in ...and that note you found
    .accept 79192 >>Accept Stepping Stones
step << Horde
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step << Horde
    .goto The Barrens,46.361,73.904
    >>单击地面上的|cRXP_PICK_Burned-Out Remains|r
    .accept 79007 >>Accept ...and that note you found
step << Horde
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step << Horde
    .goto Westfall,37.413,50.701
    >>单击地面上的|cRXP_PICK_Burned-Out Remains|r
    .turnin 79007 >>Turn in ...and that note you found
    .accept 79192 >>Accept Stepping Stones
step
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
step
    #completewith next
    .goto Stonetalon Mountains,50.29,52.94,25 >>沿着太阳岩疗养院以北的土路上行
step
    .goto Stonetalon Mountains,40.748,52.576
    >>单击框上的|cRXP_PICK_Pocket Litter|r
    .turnin 79192 >>Turn in Stepping Stones
    .accept 79980 >>Accept Scramble
step
    #completewith next
    .goto Stonetalon Mountains,40.19,50.80,15 >>沿着穿过群山的小路走
step
    .goto Stonetalon Mountains,39.614,49.783
    >>单击地面上的|cRXP_PICK_Mound of Dirt|r
    .turnin 79980 >>Turn in Scramble
    .accept 79974 >>Accept Wet Job
step
    #completewith next
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
step
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,49.4,12.9,8 >>|cRXP_WARN_登上莫丹湖大坝墙，小心地落在大坝中心的岩架上。按照箭头|r
step
    .goto Loch Modan,49.421,12.917
    >>单击壁架上的|cRXP_PICK_雕刻人像|r
    .turnin 79974 >>Turn in Wet Job
    .accept 79975 >>Accept Eagle's Fist
step
    #completewith next
    .goto Hillsbrad Foothills,87.691,48.166,10 >>前往Arathi高地/Hillsbrad Foothills地区边界的Thoradin长城
step
    #completewith next
    .goto Arathi Highlands,24.132,21.470,7 >>爬上马车，沿着墙往上走
step
    .goto Arathi Highlands,22.466,24.127
    >>点击挂在墙上的|cRXP_PICK_Messenger Bag|r
    .turnin 79975 >>Turn in Eagle's Fist
    .accept 79976 >>Accept This Must Be The Place
step
    .goto Arathi Highlands,22.466,24.127
    >>单击地面上的|cRXP_PICK_Hastilly Rolled Up Satchel|r
    .turnin 79976 >>Turn in This Must Be The Place
step
    +|cRXP_WARN_强烈建议您在食用前将|r|T134057:0|t[|cRXP_LOOT_Student Fodder|r]|cRXP-WARN_for更高级别。每次使用|r|T134057:0|t[|cRXP_LOOT_Student Fodder|r]|cRXP-WARN_added 20%的休息体验给你的角色，因此在更高级别使用更有效|r
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet <<Druid/Shaman/Warrior
#subgroup Bracers <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#name Emerald Wardens Runes
#displayname Molten Armor <<Mage
#displayname Gore <<Druid
#displayname T.N.T. <<Hunter
#displayname Improved Hammer of Wrath <<Paladin
#displayname Void Zone <<Priest
#displayname Cut to the Chase <<Rogue
#displayname Burn <<Shaman
#displayname Unstable Affliction <<Warlock
#displayname Shield Mastery <<Warrior

step
    +|cRXP_WARN_转到下面列出的任何区域。在每一个对应的标记位置，你会发现一个来自新派系的NPC，|r|cRXP_FRIENDLY_the Emerald Wardens|r|cRXP_WARN_要解锁这个符文，你需要完成他们的任务并与他们一起到达|r |cRXP_FRIENDLY_FRIENDLY|r |c Rxp_WARN_reputation|r
    >>|cRXP_WARN_小贴士：如果你接近50级或以上，请前往Feralas或The Hinterlands。在这些区域中，您可以每天完成额外1000个声望的任务|r。|cRXP_WARN_在团队中完成此声望的武装也会更高效，因此您可以在团队成员之间共享任务|r
    >>Duskwood
    >>Ashenvale
    >>Feralas
    >>The Hinterlands
    .zoneskip Duskwood
    .zoneskip Ashenvale
    .zoneskip Feralas
    .zoneskip The Hinterlands
step
    .reputation 2641,friendly >>在标记的位置查找|cRXP_FRIENDLY_The Emerald Wardens|r的军需官。开始为他们执行任务，直到达到|cRXP_FRIENDLY_FRIENDLY|r状态
    .link https://www.wowhead.com/classic/guide/season-of-discovery/emerald-wardens-reputation-nightmare-incursions >>单击此处获取|cRXP_FRIENDLY_The Emerald Wardens|r声誉的更深入指南
    .goto Duskwood,45.6,51.2,-1
    .goto Ashenvale,89.6,40.6,-1
    .goto Feralas,48.6,12.6,-1
    .goto The Hinterlands,61.4,34.6,-1
    .target Quartermaster Falinar
    .target Quartermaster Kyleen
    .target Quartermaster Valdane
    .target Quartermaster Alandra
step
    >>返回|cRXP_FRIENDLY_the Quartermaster|r并从他们那里购买符文
    .goto Duskwood,45.6,51.2,-1
    .goto Ashenvale,89.6,40.6,-1
    .goto Feralas,48.6,12.6,-1
    .goto The Hinterlands,61.4,34.6,-1
    .target Quartermaster Falinar
    .target Quartermaster Kyleen
    .target Quartermaster Valdane
    .target Quartermaster Alandra
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alclarity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
step
    .train 431681 >>|cRXP_WARN_使用|r|T135791:0|t[|cRXP_FRIENDLY_Nihilist主显节|r]|cRXP_WARN_列车|r|T132886:0|t[空白区] << Priest
    .train 428741 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell备注：熔甲|r]|cRXP-WARN_to train|r|T132221:0|t[熔甲] << Mage
    .train 427717 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Afflicky|r]|cRXP_WARN_to train|r|T136228:0|t[不稳定的事务] << Warlock
    .train 415231 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_烧伤调整|r]|cRXP-WARN_训练|r|T135822:0|t[Burn] << Shaman
    .train 426980 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Protector|r]|cRXP-WARN_to train|r|T132359:0|t[防护罩掌握] << Warrior
    .train 432271 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Alcarity|r]|cRXP-WARN_训练|r|T236269:0|t[切入追逐] << Rogue
    .train 428717 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_引爆路线|r]|cRXP-WARN_训练|r|T133713:0|t[t.NT.] << Hunter
    .train 417145 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Bloodshed|r]|cRXP_WARN_to train|r|T304501:0|t[Gore] << Druid
    .train 429152 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Hammer |r]|cRXP-WARN_to train|r|T236262:0|t[愤怒之锤改进] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221511 << Shaman --Rune of the Protector
    .use 221512 << Rogue --Rune of Alclarity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer

]])


RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#subgroup Bracers <<Druid/Shaman/Warrior
#name Wild Offering Runes
#displayname Advanced Warding - 40 (Azeroth) <<Mage
#displayname Lock and Load - 40 (Azeroth) <<Hunter
#displayname Improved Sanctuary - 40 (Azeroth) <<Paladin
#displayname Divine Aegis - 40 (Azeroth) <<Priest
#displayname Combat Potency - 40 (Azeroth) <<Rogue
#displayname Riptide - 40 (Azeroth) <<Shaman
#displayname Vengeance - 40 (Azeroth) <<Warlock
#displayname Sword and Board - 40 (Azeroth) <<Warrior
#displayname 强化疯狂再生 - 40 (Azeroth) <<Druid

step
    #completewith next
    .zone Felwood >>前往: |cRXP_PICK_费伍德森林|r
step
    .goto Felwood,51.6,82.0
    >>Talk to the |cRXP_FRIENDLY_Shadowtooth Emissary|r near the Emerald Sanctuary
    .accept 82043 >>Accept The Wild Gods
    .target Shadowtooth Emissary
step
    #optional
    #completewith next
    .goto The Hinterlands,66.27,65.13,0
    >>|cRXP_WARN_为了完成这个任务，你需要一个人带着|r|T134799:0|t|cRXP_LOOT_WWildwshiper Draught|r|cRXP-WARN_In袋子。它是从腹地金塔勒的精英巨魔那里掉落的。只有在你的Razorfen Downs派对上没有人拥有的情况下才能得到它|r
    .collect 221261,1 --Wildwhisper Draught
step
    .goto The Barrens,45.5,92.4
    >>为Razorfen Downs找一个团队。你需要清除通往最终老板的螺旋线并杀死他。之后，小组中的一个人必须使用他们的|T134799:0|t|cRXP_LOOT_WardwshiperDraught|r来召唤阿加马甘的幽灵|cRXT_FRIENDLY_Spirit|r。与他交谈以完成任务并接受后续行动
    .turnin 82043 >>Turn in The Wild Gods
    .accept 82044 >>Accept The Wild Gods
    .target Spirit of Agamaggan
    .mob Amnennar the Coldbringer
    .use 221261
step
    >>您现在收到了一个|T237378:0|t|cRXP_LOOT_Agamagan's Roar|r。此物品可以在|cRX_PICK_Blackrock Depths|r、|cRXP_ICK_Zul'farrak|r和|cRXT_ICK_Maraudon|r的特定区域使用，以召唤一个新的|cRXD_ENEMY_Delirious Ancient|r boss，该boss在杀死时总是掉落一个|T132119:0|t|cRXP_LOUT_Awild Offering|r。收集其中的3个以便完成任务|T132119:0|t|cRXP_LOOT_Wild Offerings|r也被用作货币，从|cRXP_FRIENDLY_Shadowtooth Emissary|r购买非常强大的物品，因此您可能希望为您的符文耕种不仅仅是3件物品
    >>|cRXP_WARN_在|r|cRXP_FRIENDLY_Zul'farrak|r|cRXP_WARN_杀死任意3个boss后，您将能够在Ghaz'rilla池中生成|r|d|r
    >>|cRXP_WARN_在|r|cRXP_FRIENDLY_Maraudon|r|cRXP_WARN_kill|r|r cRXP_ENEMY_ Theradras公主|r| cRXP_WARN_an中，您将能够在她的竞技场中生成一个|r |c Rxp_ENEMY_Delirious Ancient|r |cRXP_WARN_In|r
    >>|cRXP_WARN_在|r|cRXP_FRIENDLY_Blackrock Depths|r|cRXP_WARN_kill|r| cRXP_ENEMY_High Interrogator Gerstahn|r，|cRXP _ENEMY_Houndmaster Grebmar|r|C RXP_WARN_and complete|r| c RXP_ENEMY_the Arena|r|cRXP_WARN_event中。之后，您将能够在黑铁公路（通往Bael'gar的道路）上生成|r|cRXP_ENEMY_Delirious Ancient|r|cRXP_WARN_|r
    >>|cRXP_WARN_提示：|r可以在一次突袭中收集祭品，并且可以重复运行同一个地牢。目前养殖它们最快的方法是|cRXP_WARN_加入10人突袭|r并运行|cRXP-WARN_repeat Maraudon Princess或Zul’farrak运行|r
    .complete 82044,1 --Wild Offering 3/3
    .use 221418
    .mob Delirious Ancient
step
    #optional
    #completewith next
    .zone Felwood >>前往: |cRXP_PICK_费伍德森林|r
step
    .goto Felwood,51.6,82.0
    >>Talk to the |cRXP_FRIENDLY_Shadowtooth Emissary|r near the Emerald Sanctuary
    .turnin 82044 >>Turn in The Wild Gods
    .target Shadowtooth Emissary
step
    .train 431622 >>|cRXP_WARN_使用您收到的|r|T236160:0|t[|cRXP_FRIENDLY_Hyjal的智慧|r]物品|cRXP_WARN_训练|r|T237539:0|t[神盾] << Priest
    .train 431389 >>|cRXP_WARN_使用您收到的|r|T236160:0|t[|cRXP_FRIENDLY_Hyjal的智慧|r]物品|cRXP_WARN_to train|r|T132091:0|t[强化疯狂再生] << Druid
    .train 428738 >>|cRXP_WARN_使用您收到的|r|T236160:0|t[|cRXP_FRIENDLY_Hyjal的智慧|r]物品|cRXP_WARN_to train|r|T135733:0|t[高级监护] << Mage
    .train 415413 >>|cRXP_WARN_使用您收到的|r|T236160:0|t[|cRXP_FRIENDLY_Hyjal的智慧|r]项目|cRXP_WARN_to train|r|T236185:0|t[锁定和装载] << Hunter
    .train 429133 >>|cRXP_WARN_使用您收到的|r|T236160:0|t[|cRXP_FRIENDLY_Hyjal的智慧|r]物品|cRXP_WARN_to train|r|T135925:0|t[改良避难所] << Paladin
    .train 432259 >>|cRXP_WARN_使用您收到的|r|T236160:0|t[|cRXP_FRIENDLY_Hyjal的智慧|r]物品|cRXP_WARN_训练|r|T135673:0|t[战斗力] << Rogue
    .train 409954 >>|cRXP_WARN_使用您收到的|r|T236160:0|t[|cRXP_FRIENDLY_Hyjal的智慧|r]物品|cRXP_WARN_to train|r|T252995:0|t[激流] << Shaman
    .train 426469 >>|cRXP_WARN_使用您收到的|r|T236160:0|t[|cRXP_FRIENDLY_Hyjal的智慧|r]物品|cRXP_WARN_训练|r|T236299:0|t[复仇] << Warlock
    .train 426978 >>|cRXP_WARN_使用您收到的|r|T236160:0|t[|cRXP_FRIENDLY_Hyjal的智慧|r]物品|cRXP_WARN_训练|r|T236315:0|t[剑和板] << Warrior
    .use 222962 --Hyjal's Wisdom
]])

RXPGuides.RegisterGuide([[
<<Warlock/Priest/Mage/Paladin
<< SoD
#classic
#group RestedXP Rune和书籍指南
#subgroup Helmet <<Warlock
#subgroup Bracers <<Paladin/Priest/Mage
#name Ley Crystal Runes 
#displayname Displacement - 45 (Azeroth) <<Mage
#displayname Purifying Power - 45 (Azeroth) <<Paladin
#displayname Despair - 45 (Azeroth) <<Priest
#displayname Backdraft - 45 (Azeroth) <<Warlock

step
    #optional
    #completewith next
    >>|cRXP_WARN_为了找到这个符文，你需要获得4|r|T134938:0|t|cRXP_LOOT_几何卷轴|r|cRXP_WARN_并在世界上的各个区域将一个通道导入四个Ley水晶中，以生成|r|cRXP_ENEMY_愤怒的Leywalkers|r|d cRXP_WARN_或者你可以与其他拥有卷轴的法师或拥有|r|T132842:0|t| cRXP_FRIENDLY_Worldcore碎片的术士组队|r << Mage
    >>|cRXP_WARN_为了找到这个符文，你需要从你的|r|T236294:0|t[|cRXP_FRIENDLY_ExplorerImp|r]|cRXP_WARN_expeditions中获得4|r|T132842:0|t|cRXP_RIENDLY_Worldcore碎片|r|cRXP_WARN_或者你可以与其他拥有碎片或图像的术士组队|r|t1349 38:0|t|cRXP_LOOT_几何卷轴|r << Warlock
    +|cRXP_WARN_为了找到这个符文，你需要与一个带有|r|T132842:0|t|cRXP_FRANDLY_Worldcore Fragments|r|cRXP_WARN_o的术士组队，或者与一个具有|r|T134938:0|t| cRXP_LOOT_几何卷轴|r|cRXP_WARN_to的法师组队，以召唤所需的怪物。你不能自己召集他们|r << Priest/Paladin
    .collect 223171,4 << Mage
    .collect 223168,4 << Warlock

step
    >>前往地图上标记的每个Ley水晶，并在其上使用您的|T134938:0|t|cRXP_LOOT_风水卷轴|r，或者让您的团队中的某个人这样做来召唤一个|cRXD_ENEMY_Enraged Leywalk|r。击败它并掠夺它的|cRXX_LOOT_ Leycryst|r。这可以按任何顺序进行 << Mage
    >>前往地图上标记的每个Ley Crystals，并在其上使用|T132842:0|t|cRXP_FRIENDLY_Worldcore Fragment|r，或者让你的团队中的某个人这样做来召唤一个|cRXP_ENEMY_Enraged Leyworker|r。击败它并掠夺它的|cRXP-loot_Leycryst|r。这可以按任何顺序进行 << Warlock
    >>前往地图上标记的每个Ley水晶，让你的团队中的法师或法师召唤一个|cRXP_ENEMY_Enraged Leyworker|r。击败它并为它的|cRXX_loot_Leycryst|r进行掠夺。这可以按任何顺序进行 << Priest/Paladin
    .goto Azshara,22.0,79.0,-1
    .goto Feralas,57.0,60.0,-1
    .goto The Hinterlands,48.0,59.0,-1
    .goto Searing Gorge,55,65,-1
    .collect 221318,1 >>|T237193:0|t|cRXP_LOOT_Azshara Leycryst|r来自Forlorn山脊附近的|cRX_PICK_Azshara|r
    .collect 221317,1 >>|T237189:0|t|cRXP_LOOT_Ferralas Leycryst|r来自|cRX_PICK_Feralas|r在高荒野
    .collect 221319,1 >>|T237192:0|t|cRXP_LOOT_Blackrock Leycryst|r来自南部|cRXP _PICK_Searing Gorge|r
    .collect 221320,1 >>|T237191:0|t|cRXP_LOOT_腹地Leycryst|r来自|cRX_PICK_祖尔祭坛以北的腹地|r
    .mob Enraged Leywalker
step
    .train 428861 >>|cRXP_WARN_使用您收集的四个晶体中的任何一个来组合它们，并学习|r|T132171:0|t[位移] << Mage
    .train 427713 >>|cRXP_WARN_使用您收集的四种晶体中的任何一种将其组合并学习|r|T236290:0|t[背景草稿] << Warlock
    .train 429144 >>|cRXP_WARN_使用您收集的四种晶体中的任何一种将它们组合起来，并学习|r|T135950:0|t[净化能力] << Paladin
    .train 431670 >>|cRXP_WARN_使用您收集的四种晶体中的任何一种将其组合并学习|r|T237555:0|t[Despair] << Priest
    .use 221318 --Azshara Leycryst
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD/Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#title Mental Dexterity << Shaman
#title Pain and Suffering << Priest
#name 精神灵活性-43（Tanaris） << Shaman
#name 痛苦与折磨-43（Tanaris） << Priest

-- Mental Dexterity/Pain and Suffering
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    #completewith next
    >>杀死|cRXP_ENEMY_Wastwark阴影法师|r。为|T134939:0|t[|cRXP-Loot_Coded Warlock Notes|r]掠夺它们
    .collect 221547,1
    .mob Wastewander Shadow Mage
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,59.8,24.0,35,0
    .goto Tanaris,65.6,32.2,35,0
    .goto Tanaris,62.4,33.2,30,0
    >>杀死|cRXP_ENEMY_Wastwark盗贼|r。为|T134329:0|t[|cRXP-Loot_Westwalk密码|r]掠夺他们
    .collect 221549,1
    .mob Wastewander Thief
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,58.4,38.6,40,0
    .goto Tanaris,60.3,23.4,40,0
    .goto Tanaris,66.2,35.0,40,0
    >>杀死|cRXP_ENEMY_Wastwark阴影法师|r。为|T134939:0|t[|cRXP-Loot_Coded Warlock Notes|r]掠夺它们
    .collect 221547,1
    .mob Wastewander Shadow Mage
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_使用|r|T134329:0|t[Wastwark密码]|cRXP_WARN_to receive|r|T237018:0|t[Decidered Warlock Notes]
    .goto Tanaris,58.0,36.0
    .use 221549
    .collect 221545,1
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_Stand位于|r“召唤的神秘卷轴”顶部|cRXP_WARN_站在卷轴上方使用|r|T237018:0|t[解密Warlock笔记]|cRXP_WARN_。
    >>杀死|cRXP_ENEMY_Enraged虚空行者|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Mental Dexterity|r]掠夺它 << Shaman
    >>杀死|cRXP_ENEMY_Enraged虚空行者|r。为|T135975:0|t[|cRXP_FRIENDLY_Prophyof Verdant Winter|r]掠夺它 << Priest
    .collect 220610,1 << Shaman
    .collect 221979,1 << Priest
step
    .itemcount 220610,1 << Shaman
    .itemcount 221979,1 << Priest
    .use 220610 << Shaman
    .use 221979 << Priest
    .train 416055 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Mental Dexterity|r]|cRXP_WARN_to learn|r|T136055:0|t[Mental Dextrity] << Shaman
    .train 415991 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_宋体，Verdant Winter|r]|cRXP_WARN_学习|r|T237567:0|t[疼痛和折磨] << Priest
]])
