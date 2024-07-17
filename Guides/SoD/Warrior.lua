RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 胜利冲刺-1（埃尔温森林）
#title Victory Rush

step << Warrior
    #season 2
    #optional
    #completewith next
    .goto 1429,48.086,30.502,20,0
    .goto 1429,48.379,29.579,20,0
    .goto 1429,48.336,28.597,20,0
    .goto 1429,48.679,26.618,20,0
    .goto 1429,49.919,25.792,20,0
    .goto 1429,50.639,27.274,15 >>前往回声岭矿井内的|cRXP_PICK_Kobold Stashbox|r
    .train 403470,1
step << Warrior
    #season 2
    .goto Elwynn Forest,50.640,27.276
    >>打开地面上的|cRXP_PICK_Kobold Stashbox|r。为|T134419:0|t|cRXP_Loot_[胜利冲刺符文]|r掠夺它
    .collect 204806,1 -- Rune of Victory Rush (1)
    .train 403470,1
step << Warrior
    #season 2
    .train 403470 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[胜利冲刺符文]|r|cRXP_WARN_学习|r|T132342:0|t[胜利冲刺]
    .use 204806
    .itemcount 204806,1 -- Rune of Victory Rush (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 胜利冲刺-3（邓·莫洛）
#title Victory Rush

step << Warrior
    #season 2
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>杀死|cRXP_ENEMY_Frostmane Troll Whelps|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]掠夺它们
    .collect 204806,1
    .mob Frostmane Troll Whelp
    .train 403470,1
step << Warrior
    #season 2
    #label WarriorVR
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 胜利冲刺-3（阴影）
#title Victory Rush

step << Warrior
    #season 2
    .goto Teldrassil,56.8,31.7
    >>杀死|cRXP_ENEMY_Webwood蜘蛛|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]掠夺它们
    .collect 204806,1 -- Rune of Victory Rush (1)
    .mob Webwood Spider
    .train 403470,1
step << Warrior
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Blood Frenzy-10（埃尔温森林）
#title Blood Frenzy

step << Warrior
    #season 2
    .goto Elwynn Forest,25.5,70.1,0
    .goto Elwynn Forest,22.1,73.8,0
    .goto Elwynn Forest,29.9,73.3,0
    .goto Elwynn Forest,36.1,80.4,0
    .goto Elwynn Forest,38.0,75.4,0
    .goto Elwynn Forest,25.5,70.1,70,0
    .goto Elwynn Forest,22.1,73.8,70,0
    .goto Elwynn Forest,29.9,73.3,70,0
    .goto Elwynn Forest,36.1,80.4,70,0
    .goto Elwynn Forest,38.0,75.4,70,0
    .goto Elwynn Forest,40.6,74.7
    >>Talk to a |cRXP_FRIENDLY_Wandering Swordsman|r in Elwynn Forest
    >>决斗击败|cRXP_ENEMY_游侠|r
    >>打开掉落在地上的|cRXP_PICK_Swordsman's Reward|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]掠夺它
    >>|cRXP_WARN_注：|cRXP_FRIENDLY_Wandering Swordsman|r可以在埃尔温森林的任何地方产卵|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]|cRXP_WARN_训练|r|T136012:0|t[Blood Frenchy]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 血腥狂热-10（邓·莫洛）
#title Blood Frenzy

step << Warrior
    #season 2
    .goto Dun Morogh,53.47,47.60
    >>Talk to a |cRXP_FRIENDLY_Wandering Swordsman|r in Dun Morogh
    >>决斗击败|cRXP_ENEMY_游侠|r
    >>打开掉落在地上的|cRXP_PICK_Swordsman's Reward|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]掠夺它
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]|cRXP_WARN_训练|r|T136012:0|t[Blood Frenchy]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Blood Frenzy-10（Teldrassil）
#title Blood Frenzy

step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,60,0
    .goto Teldrassil,43.8,76.8,60,0
    .goto Teldrassil,54.6,66.0,60,0
    .goto Teldrassil,62.6,71.8,60,0
    .goto Teldrassil,39.6,37.6
    >>Talk to a |cRXP_FRIENDLY_Wandering Swordsman|r in Teldrassil
    >>决斗击败|cRXP_ENEMY_游侠|r
    >>打开掉落在地上的|cRXP_PICK_Swordsman's Reward|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]掠夺它
    >>|cRXP_WARN_注：|cRXP_FRIENDLY_Wandering Swordsman|r可以在Teldrassil的任何地方产卵|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]|cRXP_WARN_训练|r|T136012:0|t[Blood Frenchy]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 狂暴之雷-6（埃尔温森林）
#title Furious Thunder

step << Warrior
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >>Enter Fargodeep Mine
    .train 403476,1
step << Warrior
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>杀死|cRXP_ENEMY_Goldtooth|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]掠夺他
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Goldtooth
    .train 403476,1
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]|cRXP_WARN_to train|r|T136048:0|t[狂暴的雷霆]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 狂暴之雷-9（邓·莫洛）
#title Furious Thunder

step << Warrior
    #season 2
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>杀死|cRXP_ENEMY_Fyodi|r。掠夺他获得|T134419:0|t|cRXP_Loot_[狂暴雷霆符文]|r
    >>|cRXP_WARN_尽管|cRXP_ENEMY_Fyodi|r显示为精英，但他的健康、伤害和护甲值都是标准暴徒的|r
    >>|cRXP_WARN_当他施放|r|T132337:0|t[Charge]|cRXP_WARN_（自瞬：增加移动速度3秒，命中时造成35-80近战伤害。仅在射程内施放）时要小心|r
    >>|cRXP_WARN_注：|r|T134419:0|t|cRXP_LOOT_[狂暴之雷符文]|r|cRXP_WARN_can还可以放下邓莫罗的每一个稀有暴徒，以及|cRXD_ENEMY_Vagash|r、|cRXT_ENEMY_Mangcaw|r和|r|cRXP_ENEMY_Old Icebbeard|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Fyodi
    .train 403476,1
    .xp >10,1
step << Warrior
    #season 2
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>杀死|cRXP_ENEMY_Vagash|r。掠夺他获得|T134419:0|t|cRXP_Loot_[狂暴雷霆符文]|r
    >>|cRXP_WARN_注：|r|T134419:0|t|cRXP_LOOT_[狂暴之雷符文]|r|cRXP_WARN_can还可以放下邓莫罗的每一个稀有暴徒，以及|cRXD_ENEMY_Fyodi|r、|cRXT_ENEMY_Mangcaw|r和|r|cRXP_ENEMY_Old Icebbeard|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Vagash
    .train 403476,1
    .xp <10,1
step << Warrior
    #label FuriousThunder
    #season 2
    .train 403476 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[狂雷符文]|r|cRXP_WARN_训练|r|T136048:0|t[狂雷]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 疯狂攻击-10（暴风）
#title Frenzied Assault

step << Warrior
    #season 2
    .gossipoption 109045 >>Talk to |cRXP_FRIENDLY_Liv Bradford|r inside the Inn at the Park
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >>Talk to |cRXP_ENEMY_Stuart|r, then beat him up. He will pass out at 0%
    .goto Stormwind City,21.213,62.781
    >>如果|cRXP_ENEMY_Stuart |r不在，请等待他重生
    .gossipoption 109044 >>Talk to |cRXP_FRIENDLY_Liv Bradford|r again after knocking out |cRXP_ENEMY_Stuart|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault |r]|cRXP_WARN_训练|r|T236317:0|t[Frenzed Assault]
    >>|cRXP_WARN_注意：这可能是相当困难的独奏取决于你的水平。如果需要，寻求帮助|r
    .use 204716
    .target Liv Bradford
    .mob Stuart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 疯狂攻击-10（铁炉）
#title Frenzied Assault

step << Warrior
    #season 2
    .goto Ironforge,72.512,76.942
    >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r
    >>Talk to |cRXP_ENEMY_Bruart|r by the doorway, then beat him up. He will pass out at 0%
    >>如果|cRXP_ENEMY_Bruart|r不在，请等待他重生
    >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r, Bruart, Rune of Frenzied Assault
    .train 425447,1 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault |r]|cRXP_WARN_训练|r|T236317:0|t[Frenzed Assault]
    >>|cRXP_WARN_注意：这可能是相当困难的独奏取决于你的水平。如果需要，寻求帮助|r
    .use 204716
    .target Bruuk Barleybeard
    .mob Bruart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 疯狂攻击-10（Teldrassil）
#title Frenzied Assault

step << Warrior
    #season 2
    .goto Teldrassil,55.619,59.787
    >>对话: |cRXP_FRIENDLY_旅店老板凯达米尔|r
    >>Talk to |cRXP_ENEMY_Syllart|r upstairs, then beat him up. He will pass out at 0%
    >>如果|cRXP_ENEMY_Syllart|r不在，请等待他重生
    >>对话: |cRXP_FRIENDLY_旅店老板凯达米尔|r, Syllart, Rune of Frenzied Assault
    .train 425447,1 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault |r]|cRXP_WARN_训练|r|T236317:0|t[Frenzed Assault]
    >>|cRXP_WARN_注意：这可能是相当困难的独奏取决于你的水平。如果需要，寻求帮助|r
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 无尽的愤怒-20（西城）
#title Endless Rage

step << Warrior
    #season 2
    .goto Westfall,34.43,83.93,55,0
    .goto Westfall,29.55,79.90,60,0
    .goto Westfall,28.29,71.07,60,0
    .goto Westfall,26.42,65.88,60,0
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>杀死|cRXP_ENEMY_Old Murk Eye |r。为|T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]掠夺他
    >>|cRXP_ENEMY_老鼠眼|r|cRXP_WARN_在龙穴上来回奔跑。如果你在Longshore没有看到它，请等待它在最南部的|cRXP_ENEMY_Murloc|r营地产卵|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Old Murk-Eye
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_使用|r|T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]|cRXP _WARN_to train|r|T132347:0 |t[Endless Rage]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 无尽的愤怒-16（黑暗海岸）
#title Endless Rage

step << Warrior
    #season 2
    #completewith next
    .goto Darkshore,55.106,33.621,30 >>进入Cliffspring Naga洞穴
    .train 403489,1
step << Warrior
    #season 2
    .goto Darkshore,55.40,36.05
    >>杀死|cRXP_ENEMY_Lady Sedorax|r。为|T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]掠夺她
    >>|cRXP_ENEMY_Lady Sedorax|r|cRXP_WARN_i是一个18级精英，周围也有其他暴徒。你可以选择从Westfall获得它，这要容易得多|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_使用|r|T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]|cRXP _WARN_to train|r|T132347:0 |t[Endless Rage]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 毁灭之城-8（埃尔温森林）
#title Devastate

step << Warrior
    #season 2
    >>杀死|cRXP_ENEMY_Kobold矿工|r和|cRXX_ENEMY_Kobold隧道工|r。掠夺他们的|T134168:0|t[|cRXD_Loot_被砍的Kobold头|r]
    >>杀死|cRXP_ENEMY_Murlocs|r和|cRXP_ENEMY_ Murloc Streamrunners|r。掠夺它们的|T134169:0|t[|cRXD_Loot_Severed Murloc Head|r]
    >>杀死|cRXP_ENEMY_Riverpaw符文|r和|cRXX_ENEMY_River paw跑者|r。掠夺他们的|T134163:0|t[|cRXD_Loot_Severed Gnoll Head|r]
    .collect 204476,1 -- Severed Kobold Head (1)
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    .collect 204477,1 -- Severed Murloc Head (1)
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .collect 204478,1 -- Severed Gnoll Head (1)
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,25.9,93.9
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .mob Murloc
	.mob Murloc Streamrunner
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step << Warrior
    #completewith RoDSW
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134168:0|t[|cRXP_LOOT_Severed Kobold Head|r] to receive |T134455:0|t[Monster Hunter's First Rune Fragment]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134169:0|t[|cRXP_LOOT_Severed Murloc Head|r] to receive |T134455:0|t[Monster Hunter's Second Rune Fragment]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134163:0|t[|cRXP_LOOT_Severed Gnoll Head|r] to receive |T134455:0|t[Monster Hunter's Third Rune Fragment]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >>|cRXP_WARN_使用|r|T134455:0|t[怪物猎人符文碎片]|cRXP_WARN_中的任何一个来创建|r|T134419:0|t[|cRXP-FRIENDLY_毁灭之恩|r]
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]|cRXP_WARN_to train|r|T135291:0|t[Devastate]
    .use 204703
    .itemcount 204703,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 毁灭性-6（Teldrassil）
#title Devastate

step << Warrior
    #season 2
    >>杀死|cRXP_ENEMY_Nightsabers|r或|cRXD_ENEMY_ Nightsaber Stalkers |r。掠夺他们的|cRXP_Loot_被砍的虎头|r
    >>杀死|cRXP_ENEMY_Strigid Owls|r或|cRXX_ENEMY_Strigid Screechers|r。掠夺它们的|cRXD_Loot_被砍的猫头鹰头|r
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r或|cRXX_ENEMY_Webwood毒虫|r。掠夺他们的|cRXD_Loot_被砍蜘蛛头|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .goto Teldrassil,53.6,62.4
    .collect 208610,1 -- Severed Owl Head (1)
    .goto Teldrassil,54.6,60.4
    .collect 208612,1 -- Severed Spider Head (1)
    .goto Teldrassil,53.0,67.0
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step << Warrior
    #completewith next
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Warrior
    #season 2
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delwynna|r upstairs
    >>|cRXP_WARN_交出三个|cRXP_OOT_Severed Heads|r后，您将收到|r|T134419:0|t[|cRXT_FRIENDLY_Rune of Devastate|r]
    .train 403475 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]|cRXP_WARN_to train|r|T135291:0|t[Devastate]
    .use 204703
    .skipgossip
    .target Delwynna
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 毁灭-6（盾魔罗）
#title Devastate

step << Warrior
    #season 2
    >>杀死|cRXP_ENEMY_Wendigo|r。掠夺他们的|cRXX_Loot_Severed Wendigo Paw|r
    >>杀死|cRXP_ENEMY_Frostmane巨魔|r。掠夺他们的|cRXX_Loot_被砍巨魔头|r
    >>杀死|cRXP_ENEMY_Rockjaw Troggs|r。掠夺他们的|cRXX_Loot_Pristine Troggs Heart|r
    .collect 208160,1 -- Severed Wendigo Paw (1)
    .goto Dun Morogh,42.2,52.6
    .collect 208159,1 -- Severed Troll Head (1)
    .goto Dun Morogh,41.6,43.8,60,0
    .goto Dun Morogh,42.2,35.0
    .collect 208158,1 -- Pristine Trogg Heart (1)
    .goto Dun Morogh,70.6,56.6
    .mob Young Wendigo
    .mob Wendigo
    .mob Frostmane Troll
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .mob Frostmane Seer
    .mob Rockjaw Ambusher
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 403475,1
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junni Steelpass|r
    >>|cRXP_WARN_交上三项后，您将收到|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .train 403475 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]|cRXP_WARN_to train|r|T135291:0|t[Devastate]
    .use 204703
    .skipgossip
    .target Junni Steelpass
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 胜利冲刺-2（杜罗塔）
#title Victory Rush


    --Rune of Victory Rush

step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .accept 77588 >>Accept A Trial of Fitness << Troll
    .accept 77582 >>Accept A Trial of Fitness << Orc
    .target Frang
step
    #season 2
    .goto Durotar,43.27,69.51
    >>为|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]掠夺|cRXP_PICK_Hidden Cache|r
    >>|cRXP_WARN_绕过去|r|cRXP_ENEMY_Sarkoth|r|cRXP_WARN_然后跳到胸部|r
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 77588 >>Turn in A Trial of Fitness << Troll
    .turnin 77582 >>Turn in A Trial of Fitness << Orc
    .target Frang

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 胜利冲刺-2（穆戈尔）
#title Victory Rush


    --Rune of Victory Rush

step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .accept 77651 >>Accept Into the Brambles
    .target Harutt Thunderhorn
step
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>为|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]掠夺|cRXP_PICK_Bristleback Loot Cache|r
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 77651 >>Turn in Into the Brambles
    .target Harutt Thunderhorn

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 胜利冲刺-2（蒂里斯法尔）
#title Victory Rush

    --Rune of Victory Rush

step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .accept 77668 >>Accept The Lost Rune
    .target Dannal Stern
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>在洞穴内偷走|cRXP_PICK_Lost Stache|r，以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Victory Rush|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 77668 >>Turn in The Lost Rune
    .target Dannal Stern

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 狂暴之雷-2（杜洛塔尔）
#title Furious Thunder

    --Rune of Furious Thunder

step
    #season 2
    .goto Durotar,40.60,66.80
    >>杀死|cRXP_ENEMY_Sarkoth|r。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Sarkoth
    .train 403476,1
step
    #season 2
    .train 403476 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 狂暴之雷-10（蒂里斯法尔）
#title Furious Thunder


    --Rune of Furious Thunder

step
    #season 2
    .goto Tirisfal Glades,25.79,48.00
    >>杀死|cRXP_ENEMY_Gillgar|r。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    >>|cRXP_WARN_This is a level 7 elite|r
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Gillgar
    .train 403476,1
step
    #season 2
    .train 403476 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 疯狂攻击-10（奥格里玛）
#title Frenzied Assault


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎姆沙|r, Gru'ark
    +当他变得敌对时杀死|cRXP_ENEMY_Gru'ark|r
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎姆沙|r
    >>收到她的|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzed Assault |r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzed Assault |r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 疯狂攻击-10（雷霆崖）
#title Frenzied Assault


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r and |cRXP_FRIENDLY_Mooart|r on the Spirit Rise
    +当他变得敌对时杀死|cRXP_FRIENDLY_Mooart|r
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r
    >>收到她的|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzed Assault |r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzed Assault |r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 疯狂攻击-10（蒂里斯法尔）
#title Frenzied Assault


    --Rune of Frenzied Assault

step
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>对话: |cRXP_FRIENDLY_本尼|r
    .target Penny Hawkins
    .train 425447,1
step
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>对话: |cRXP_FRIENDLY_琼娜·布鲁哈特|r
    .target Blueheart
    .train 425447,1
step
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>杀死|cRXP_ENEMY_Blueheart|r，然后与楼上的|cRXP-FRIENDLY_Penny|r通话
    .gossipoption 110751 >>收到她的|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzed Assault |r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzed Assault |r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Devastate - 8 (Durotar)
#title Devastate


    --Rune of Devastate

step
    #season 2
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    .goto Durotar,50.10,79.24
    >>杀死|cRXP_ENEMY_Kolkar Drudges|r和|cRXX_ENEMY_Colkar Outrunners|r。掠夺它们以获得|cRXD_Loot_被分割的半人马头|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #season 2
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>杀死|cRXP_ENEMY_Dustwind Harpies|r。掠夺它们以获得|cRXD_Loot_被砍的Harpies Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #season 2
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>杀死|cRXP_ENEMY_Razomane野猪|r。掠夺它们以获得|cRXX_Loot_被砍的野猪头|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 403475,1
step
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahi|r
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step
    #season 2
    .use 204688 >>使用|T134455:0|t[符文碎片]创建|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Devastate - 8 (Mulgore)
#title Devastate


    --Rune of Devastate

step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>杀死|cRXP_ENEMY_Palemane Gnolls|r。掠夺它们以获得|cRXD_Loot_被砍Gnoll头|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,34.08,43.71,32.98,42.96,31.72,43.08,31.08,42.09,31.12,40.87,31.74,40.31,32.44,41.17,33.57,41.30,33.82,40.26,34.48,41.21,34.50,42.29
	.goto Mulgore,34.08,43.71,25,0
	.goto Mulgore,32.98,42.96,25,0
	.goto Mulgore,31.72,43.08,25,0
	.goto Mulgore,31.08,42.09,25,0
	.goto Mulgore,31.12,40.87,25,0
	.goto Mulgore,31.74,40.31,25,0
	.goto Mulgore,32.44,41.17,25,0
	.goto Mulgore,33.57,41.30,25,0
	.goto Mulgore,33.82,40.26,25,0
	.goto Mulgore,34.48,41.21,25,0
	.goto Mulgore,34.50,42.29,25,0
    >>杀死|cRXP_ENEMY_Windfury Wind Witches|r和|cRXX_ENEMY_Windfury Harpies|r。掠夺它们以获得|cRXD_Loot_被砍的Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,59.85,25.62,61.14,22.93,61.77,22.49,62.18,22.05,62.32,20.89,61.62,19.50,60.44,19.50,60.16,21.06,60.41,21.96,61.12,22.88
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>杀死|cRXP_ENEMY_Bristleback Interopers|r。掠夺它们以获得|cRXX_Loot_被砍的野猪头|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vateya|r in Bloodhoof Village
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step
    #season 2
    .use 204688 >>使用|T134455:0|t[符文碎片]创建|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Devastate - 8 (Tirisfal)
#title Devastate


    --Rune of Devastate

step
    #season 2
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>杀死|cRXP_ENEMY_Rot隐藏Gnolls|r。掠夺它们以获得|cRXX_Loot_Severed Gnoll Head|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>杀死|cRXP_ENEMY_Murlocs|r。掠夺它们以获得|cRXD_Loot_被杀Murloc头|r
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorac|r in the Undercity
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step
    #season 2
    .use 204688 >>使用|T134455:0|t[符文碎片]创建|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Blood Frenzy-8（Durotar）
#title Blood Frenzy


    --Rune of Blood Frenzy

step
    #season 2
    .goto Durotar,56.10,21.61,0
    .goto Durotar,56.98,24.42,0
    .goto Durotar,55.42,38.55,0
    .goto Durotar,40.65,48.24,0
    .goto Durotar,36.11,47.85,0
    .goto Durotar,56.10,21.61,100,0
    .goto Durotar,56.98,24.42,100,0
    .goto Durotar,55.42,38.55,100,0
    .goto Durotar,40.65,48.24,100,0
    .goto Durotar,36.11,47.85,100,0
    .goto Durotar,56.10,21.61
    >>找到并决斗|cRXP_FRIENDLY_Wandering Swordsman|r。掠夺他为|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]掉落的|cRXP _PICK_Box|r
    >>|cRXP_ENEMY_他在整个地区巡逻，很难找到。该航路点将引导您经过已知的产卵位置|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Blood Frenzy-8（Mulgore）
#title Blood Frenzy


--Rune of Blood Frenzy

step
    #season 2
    .goto Mulgore,37.38,56.58,0
    .goto Mulgore,45.11,37.75,0
    .goto Mulgore,52.56,43.61,0
    .goto Mulgore,60.43,68.56,0
    .goto Mulgore,37.38,56.58,100,0
    .goto Mulgore,45.11,37.75,100,0
    .goto Mulgore,52.56,43.61,100,0
    .goto Mulgore,60.43,68.56,100,0
    .goto Mulgore,37.38,56.58
    >>找到并决斗|cRXP_FRIENDLY_Wandering Swordsman|r。掠夺他为|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]掉落的|cRXP _PICK_Box|r
    >>|cRXP_ENEMY_他在整个地区巡逻，很难找到。该航路点将引导您经过已知的产卵位置|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 血腥狂热-8（蒂里斯法尔）
#title Blood Frenzy


    --Rune of Blood Frenzy

step
    #season 2
    .goto Tirisfal Glades,79.25,65.02
    >>找到并决斗|cRXP_FRIENDLY_Wandering Swordsman|r。掠夺他为|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]掉落的|cRXP _PICK_Box|r
    >>|cRXP_ENEMY_他在Balnir农场的东边产卵|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 快速打击-12（莫丹湖）
#title Quick Strike

step << Warrior
    .goto Loch Modan,33.2,73.8
    >>杀死|cRXP_ENEMY_Troggs|r。掠夺它们以获得|cRXD_Loot_Skull-Shapped Geode|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8
    >>杀死一个|cRXP_ENEMY_Stonessplit头骨重击者|r
    >>|cRXP_WARN_在战斗中，它会给你一个很好的重击，这会把|cRXP_LOOT_Sull-Shapped Geode|r变成|r|T236489:0|t[|cRXD_LOOT_Cracked Skull-Shaped Geode|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .use 208848 >>|cRXP_WARN_使用|r|T236489:0|t[|cRXP_LOOT_Cracked Skull Shaped Geode|r]|cRXP_WARN_to接收|r|T134419:0|t[| cRXP_FRIENDLY_Rune of Quick Strike|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    .train 425443 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]|cRXP_WARN_to train|r|T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 无尽的愤怒-15（The Barrens）
#title Endless Rage


    --Rune of Endless Rage

step
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>单击|cRXP_PICK_部落战旗|r
    .train 403489,1
step
    #season 2
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Ratchet >>飞到棘轮
    .target Devrak
step
    #completewith next
    .subzone 385 >>前往Northwatch Hold
step
    #season 2
    .goto The Barrens,62.55,56.31
    >>单击|cRXP_PICK_Alliance Warbanner |r
    >>在斯通布雷中尉出生时杀死他。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]|cRXP_WARN_to train|r|T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 无尽的愤怒-15（银松森林）
#title Endless Rage


    --Rune of Endless Rage

step
    #season 2
    #completewith next
    +|cRXP_WARN_建议分组，因为你必须杀死一个17级精英|r
step
    #season 2
    .goto Silverpine Forest,35.03,7.73
    >>攻击|cRXP_ENEMY_Webbed Victim|r并杀死产生的|cRXX_ENEMY_Lost Adventurer|r。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    >>|cRXP_WARN_你必须在|r|cRXP_ENEMY_Webbed受害者每隔几秒钟恢复一次生命值后引爆他|r
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Webbed Victim
    .mob Lost Adventurer
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]|cRXP_WARN_to train|r|T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 快速打击-20（黑暗海岸）
#title Quick Strike

step << Warrior
    .goto 1439,44.081,20.739
    >>从骷髅的眼睛里偷走|T135129:0|t[Gnarled Harpoon]
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 425443,1
step << Warrior
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_使用|r|T135129:0|t[Gnarled Harpoon]|cRXP_WARN_on|cRXP_ENEMY_Paxnozz|r将他的最大生命值降低到743|r
    .train 425443,1
step << Warrior
    #loop
    .goto Darkshore,48.0,18.0,0
    .goto Darkshore,47.6,13.2,0
    .goto Darkshore,50.4,12.0,0
    .goto Darkshore,48.8,16.0,0
    .goto Darkshore,48.0,18.0,40,0
    .goto Darkshore,47.6,13.2,40,0
    .goto Darkshore,50.4,12.0,40,0
    .goto Darkshore,48.8,16.0,40,0
    >>杀死|cRXP_ENEMY_Paxnozz|r。掠夺他获得|T134419:0|t|cRXP_Loot_[快速攻击符文]|r
    >>|cRXP_WARN_小心点，因为他是20级精英|r
    .collect 208778,1 -- Rune of Quick Strike (1)
    .unitscan Paxnozz
    .use 209047
    .train 425443,1
step << Warrior
    .train 425443 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]|cRXP_WARN_to train|r|T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 血涌-40（艾泽拉斯）
#title Blood Surge

step
    .train 416004,1
    #completewith SpiceBlend
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    #completewith IllegibleReciple
    +|cRXP_WARN_你可能想找到一个团队，因为你必须杀死37+级精英才能获得|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Surge|r]
    .subzoneskip 324
step
    #label IllegibleReciple
    .train 416004,1
    #loop
    .goto Alterac Mountains,39.0,54.6,0
    .goto Arathi Highlands,24.14,61.85,0
    .goto Arathi Highlands,24.14,61.85,30,0
    .goto Arathi Highlands,24.25,64.97,30,0
    .goto Arathi Highlands,21.22,66.52,40,0
    .goto Arathi Highlands,20.21,67.17,40,0
    >>杀死斯特罗姆加德要塞内的|cRXP_ENEMY_Boulderfist食人魔|r。掠夺它们以获得|T237451:0|t[|cRXP_OOT_Illegible Recipe|r]
    >>|cRXP_WARN_使用|r|T237451:0|t[|cRXP_OOT_Illegible Recipe|r]|cRXP-WARN_to开始任务|r
    >>|cRXP_WARN_或者，你也可以在Alterac山脉杀死|cRXP_ENEMY_Crushridge Ogres|r|r
    .collect 213422,1,79624 --Illegible Recipe (1x)
    .accept 79624 >>Accept Anyone Can Cook
    .mob Boulderfist Shaman
    .mob Boulderfist Mauler
    .mob Boulderfist Lord
    .mob Crushridge Mauler
    .mob Crushridge Mage
    .mob Crushridge Enforcer
    .mob Crushridge Warmonger
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >>上山到达|cRXP_FRIENDLY_Skonk|r
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skonk|r
    .turnin 79624 >>Turn in Anyone Can Cook
    .accept 79677 >>Accept A Quick Grocery Run
    .target Skonk
step
    #completewith SpiceBlend
    .goto Arathi Highlands,30.74,66.94,60,0
    .goto Arathi Highlands,22.72,71.98,50,0
    .goto Arathi Highlands,21.50,75.91,40,0
    .goto Arathi Highlands,21.98,79.96,30 >>Travel to Faldir's Cove
step
    #label SpiceBlend
    .train 416004,1
    .goto Arathi Highlands,20.47,84.90,8,0
    .goto Arathi Highlands,21.379,83.919
    >>打开|cRXP_PICK_密封桶|r。将其洗劫一空，以获取|cRXP_Loot_走私者香料混合物|r
    >>|cRXP_WARN_它位于沉船的底部。游过最底部的大洞就可以到达它|r
    .complete 79677,2 --Smuggler's Spice Blend (1x)
step
    .train 416004,1
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
step
    .train 416004,1
    #loop
    .goto Hillsbrad Foothills,84.34,32.40,0
    .goto Hillsbrad Foothills,81.33,34.03,50,0
    .goto Hillsbrad Foothills,84.34,32.40,50,0
    .goto Hillsbrad Foothills,82.09,36.92,50,0
    >>杀死|cRXP_ENEMY_Wild Gryphons|r。掠夺它们的|cRXP-Loot_Hydroxy Haunch|r
    .complete 79677,1 --Hybrid Haunch (1x)
    .mob Kurdros << Horde
    .mob Granistad << Horde
    .mob Wild Gryphon
step
    .train 416004,1
    #completewith next
    .zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
step
    #completewith next
    .goto Badlands,42.87,29.77,60 >>Enter Angor Fortress
step
    .train 416004,1
    .goto Badlands,41.92,26.26,20,0
    .goto Badlands,41.383,27.964
    >>单击|cRXP_PICK_Tapped Shadowforge Keg|r。为|cRXP_Loot_Balmy Brew|r掠夺它
    >>|cRXP_WARN_保持最大射程以避免搁浅|r|cRXP_ENEMY_Ambassador Infernus|r
    .complete 79677,3 --Balmy Brew (1x)
step
    .train 416004,1
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
    .train 416004,1
    #loop
    .goto Swamp of Sorrows,56.16,61.19,0
    .goto Swamp of Sorrows,62.11,65.79,0
    .goto Swamp of Sorrows,68.52,73.12,0
    .goto Swamp of Sorrows,72.50,82.18,0
    .goto Swamp of Sorrows,78.49,88.19,0
    .goto Swamp of Sorrows,56.16,61.19,60,0
    .goto Swamp of Sorrows,62.11,65.79,60,0
    .goto Swamp of Sorrows,68.52,73.12,60,0
    .goto Swamp of Sorrows,72.50,82.18,60,0
    .goto Swamp of Sorrows,78.49,88.19,60,0
    >>杀死|cRXP_ENEMY_Deathstrike狼蛛|r。掠夺它们的|cRXD_Loot_粘性毒液|r
    >>|cRXP_WARN_它们可以在悲伤沼泽的东南部地区找到|r
    .complete 79677,4 --Viscous Venom (1x)
    .mob Deathstrike Tarantula
step
    .train 416004,1
    #completewith GroceryRun
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >>上山到达|cRXP_FRIENDLY_Skonk|r
step
    #label GroceryRun
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skonk|r
    .turnin 79677 >>Turn in A Quick Grocery Run
    .accept 79678 >>接任务: |cRXP_WARN_尝味|ring
    .timer 23,Taste Testing RP
    .target Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>在他吃完饭后击败|cRXP_ENEMY_Skonk|r
    .complete 79678,1 --Taste Testing
    .mob Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skonk|r
    .turnin 79678 >>Turn in Taste Testing
    .target Skonk
step
    .train 416004 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Surge|r]|cRXP _WARN_to train|r|T236306:0|t[Blood Surge]
    .use 213103
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 聚焦愤怒-35（阿拉蒂高地）
#title Focused Rage

-- Focused Rage

step
    .train 409163,1
    #completewith WitherbarkCave
    +|cRXP_WARN_考虑在试图获得|r|T134419:0|t[|cRXP_LOOT_Focused Rage符文|r]|cRXP-WARN_a之前寻找额外的党员，因为这需要同时杀死35级精英和2名暴徒|r
step
    .train 409163,1
    #completewith WitherbarkCave
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    .train 409163,1
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    >>杀死|cRXP_ENEMY_Witherbark巨魔|r。为|T133057:0|t[|cRXP-Loot_Witherbark Mallet|r]掠夺它们
    >>|cRXP_WARN_您也可以从拍卖行购买|r|T133057:0|t[|cRXP_LOOT_Witherbark Mallet |r]|cRXP_WARN_f|r
    .collect 216483,1
    .mob Witherbark Shadow Hunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step
    .train 409163,1
    #label WitherbarkCave
    .goto Arathi Highlands,68.363,75.806,25 >>进入Witherbark洞穴
step
    .train 409163,1
    #completewith next
    .goto Arathi Highlands,69.502,81.924
    .cast 436278 >>|cRXP_WARN_使用|r|T133057:0|t[|cRXP_LOOT_Witherbark Mallet |r]|cRXP_WARN_at |cRX_PICK_Gong|r在洞穴内|r
    .use 216483 >>|cRXP_WARN_这将产生一个|cRXP_ENEMY_Witherbark巨人|r（35级精英）以及2个额外的暴民|r
step
    .train 409163,1
    .goto Arathi Highlands,69.61,81.60
    >>杀死|cRXP_ENEMY_Witherbark Goliath|r。为|T134419:0|t[|cRXP-Loot_集中愤怒符文|r]掠夺它
    .collect 213109,1
    .mob Witherbark Goliath
step
    .train 409163 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_LOOT_聚焦愤怒符文|r]|cRXD_WARN_训练|r|T132345:0|t[聚焦愤怒]
    .use 213109
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 干预-24（千针）
#title Intervene

-- Intervene

step
    #optional
    .train 403472,1
    +|cRXP_WARN_您必须至少达到24级才能获得|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r]
    .xp >24,1
step
    .train 403472,1
    #completewith next
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_您必须训练|r|T132357:0|t[Shield Bash]|cRXP_WARN_to才能获得|r|T134419:0|t[|cRXP-FRIENDLY_Rune of Intervention|r]
step
    .train 403472,1
    .train 5308,1
    .train 20658,1
    .train 20660,1
    .train 20661,1
    .train 20662,1
    +|cRXP_WARN_您必须训练|r|T135358:0|t[Execute]|cRXP_WARN_to获取|r|T134419:0|t[|cRXP-FRIENDLY_Rune of Intervention|r]
step
    .train 403472,1
    #optional
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_您必须训练|r|T132357:0|t[Shield Bash]|cRXP_WARN_to才能获得|r|T134419:0|t[|cRXP-FRIENDLY_Rune of Intervention|r]
step
    .train 403472,1
    #completewith next
    >>|cRXP_WARN_在你前往千针之前，确保你拥有以下装备（他们的力量无关紧要）|r
    +A one-handed weapon
    +A shield
step
    .train 403472,1
    .goto Thousand Needles,67.84,89.50,100 >>前往|cFFfa9602 Housand Needles|r的Rustmaul挖掘现场
step
    #completewith next
    +|cRXP_WARN_确保你已经装备好你的单手武器和盾牌|r
step
    .train 403472,1
    .goto Thousand Needles,67.968,89.800
    .cast 5308,20658,20660,20661,20662 >>|cRXP_WARN_在|cRXP_ENEMY_Combat Dummy|r上铸造|r|T135358:0|t[执行]|cRXP_WARN_，然后移动到下一个|r|cRXX_ENEMY_comat Dummy|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.845,89.511
    .cast 355 >>|cRXP_WARN_铸造|r|T136080:0|t[Taunt]|cRXP_WARN_on the |cRXP-ENEMY_Combat Dummy|r，然后移动到下一个|r|cRXP_ENEMY_comat Dummy|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.713,89.245
    .cast 72,1671,1672 >>|cRXP_WARN_在|r|cRXP_ENEMY_Combat假人上铸造|r|T132357:0|t[盾牌猛击]|cRXP-WARN_|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.933,89.408
    >>打开|cRXP_PICK_Warrior的赏金箱。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Intervention|r]掠夺它
    .collect 213111,1 --Rune of Intervention (1x)
step
    .train 403472 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_干预调整|r]|cRXP-WARN_训练|r|T132365:0|t[干预]
    .use 213111
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 集结呐喊-40（荒地）
#title Rallying Cry

-- Rallying Cry

step
    .train 426491,1
    #completewith next
    .zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
step
    .train 426491,1
    #loop
    .goto Badlands,15.6,45.8,0
    .goto Badlands,20.0,57.0,0
    .goto Badlands,27.8,67.8,0
    .goto Badlands,33.0,66.2,0
    .goto Badlands,36.6,56.8,0
    .goto Badlands,15.6,45.8,30,0 << Alliance
    .goto Badlands,20.0,57.0,30,0 << Alliance
    .goto Badlands,27.8,67.8,30,0 << Alliance
    .goto Badlands,33.0,66.2,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Horde
    .goto Badlands,33.0,66.2,30,0 << Horde
    .goto Badlands,27.8,67.8,30,0 << Horde
    .goto Badlands,20.0,57.0,30,0 << Horde
    .goto Badlands,15.6,45.8,30,0 << Horde
    >>Talk to a |cRXP_FRIENDLY_Wandering Swordsman|r in Badlands
    >>决斗击败|cRXP_ENEMY_游侠|r
    >>打开掉落在地上的|cRXP_PICK_Swordsman|r奖励。为|T134419:0|t[|cRXP_FRIENDLY_Rune of the Commander|r]掠夺它
    >>|cRXP_WARN_注：|cRXP_FRIENDLY_Wandering Swordsman|r可以在荒地的许多地方产卵|r
    .collect 213110,1 --Rune of the Commander (1x)
    .unitscan Wandering Swordsman
    .skipgossip
step
    .train 426491 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Commander|r]|cRXP_WARN_学习|r|T132339:0|t[呐喊]
    .use 213110
]])


RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Rampage
#name Rampage - 43 (Feralas)


step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
step
    .goto Feralas,75,35.2,20 >>前往Mojache营地以北的Gordunni前哨洞穴
step
    .goto Feralas,74.8,24.9
    >>进入洞穴，寻找奥兹，一个43级的精英食人魔。为|T134419:0|t[|cRXP_FRIENDLY_Rune of the Unbridged|r]杀死他
    .collect 220682,1 -- Rune of Unbridled 1/1
    .unitscan Ohk'zi
step
    .train 426940 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Unbridged|r]|cRXP-WARN_to learn|r|T132352:0|t[横冲直撞]
    .use 220682

]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Wrecking Crew
#name 摔跤队-40人（腹地）

step
    #completewith next
    .zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
    #loop
    .goto The Hinterlands,23.6,57.4
    .goto The Hinterlands,36.6,66.2,0
    .goto The Hinterlands,31.6,59.8,0
    >>杀死地图西部的任何一个|cRXP_ENEMY_Witherbark巨魔|r，直到你从他们那里掠夺一个|T133054:0|t|cRXX_loot_Geode Hammer |r
    .collect 220912,1 --Geode Hammer 1/1
    .mob Witherbark Sadist
    .mob Witherbark Scalper
    .mob Witherbark Zealot
    .mob Witherbark Hideskinner
    .mob Witherbark Venomblood
step
    .equip 16,220912 >>装备|T133054:0|t|cRXP_LOOT_大地测量锤|r作为您的主要武器。继续与暴徒战斗，直到锤子破碎并变成|T133054:0|t|cRXP_LOOT_破碎的大地锤|r
    .collect 220914,1 --Broken Geode Hammer
step
    >>右键单击|T133054:0|t|cRXP_LOOT_Broken Geode Hammer |r以掠夺它|T134419:0|t[|cRXP_FRIENDLY_Rune of the Demovation|r]
    .collect 220913,1 --Rune of the Demolition
step
    .train 427065 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Removation|r]|cRXP_WARN_to learn|r|T132364:0|t[Wrecking Crew]
    .use 220913
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#title Taste for Blood
#name 血的味道-50（灼热峡谷）

step
    #completewith SlagPits
    .zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
step
    #sticky
    #completewith summonIodax
    >>|cRXP_WARN_为了完成这个任务，你需要召唤并杀死一个50级的精英傀儡，其生命值约为12k。独奏是可能的，但我建议找一个团体。为了召唤傀儡，你需要从灼热峡谷的矿渣坑中收集4个部分。但是，如果你能找到其他人来为你召唤老板，你就不需要收集它们。在这种情况下，您可以直接跳到步骤13|r
    .collect 221258,1 --Right Foot of the Obliterator
    .collect 221256,1 --Right Arm of the Obliterator
    .collect 221259,1 --Left Foot of the Obliterator
    .collect 221257,1 --Left Arm of the Obliterator
step
    #label SlagPits
    .goto 1427/0,-1247.100,-6906.900,10 >>从这里的洞穴进入矿渣坑
step
    .goto 1427/0,-1257.200,-6764.300
    >>进入洞穴后，沿着弯曲的小路向前走。斜方的|cRXP_LOOT_右臂|r躺在地上，旁边是一堆箱子和桶
    .collect 221256,1 --Right Arm of the Obliterator 1/1
step
    .goto 1427/0,-1161.500,-6756.500,10 >>跑向大门并穿过大门
step
    .goto 1427/0,-1303.200,-6461.500,15 >>继续沿着前进的道路前进。在地板上有一个巨大的傀儡的大房间里，走坡道到坑的上层
step
    .goto 1427/0,-1301.900,-6584.700
    >>Loot the |cRXP_LOOT_Right Foot of the Obliterator|r laying on the ground
    .collect 221258,1 --Right Foot of the Obliterator
step
    .goto 1427/0,-1387.200,-6722.700,10 >>朝着桥的南端走去
step
    .goto 1427/0,-1428.600,-6656.800
    >>Jump off the bridge towards the Incendosaur cave. Loot the |cRXP_LOOT_Left Arm of the Obliterator|r from the floor next to the lava pool
    .collect 221257,1 --Left Arm of the Obliterator
step
    .goto 1427/0,-1271.900,-6553.500
    >>Go to the very back of the Incendosaur cave. Loot the |cRXP_LOOT_Left Foot of the Obliterator|r from the ground there
    .collect 221259,1
step
	#completewith next
	+跳到脚后的岩石上注销跳过并注销
	.link https://youtu.be/oBnDG1AWcxU >>单击此处以供参考
step
    #label summonIodax
    #optional
    #completewith next
    .goto 1427/0,-1791.400,-6774.900
    .cast 446363 >>转到地图上标记的“债务人之首”。使用您收集的零件召唤|cRXP_ENEMY_Iodax|r一个50级精英巨人
    .unitscan Iodax the Obliterator
step
    .goto 1427/0,-1791.400,-6774.900
    >>杀死|cRXP_ENEMY_Iodax|r并掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of the Bloodyckey|r]
    .collect 221267,1 --Rune of the Bloodthirsty
    .unitscan Iodax the Obliterator
step
    .train 426953 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_嗜血之恩|r]|cRXP_WARN_学习|r|T236276:0|t[品尝血液]
    .use 221267
    .itemcount 221267,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#title Vigilance
#name Vigilance - 46 (Feralas)

step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
step
    .goto Feralas,77.6,62.0,30 >>朝着Writing Deep前进，这是一个位于Feralas的silithid蜂房|cRXP_WARN_你需要杀死一个46级精英暴徒。如果您不是50级|r，请查找一组
step
    .goto Feralas,77.6,62.0
    >>寻找|cRXP_ENEMY_Hive的暴君|r，杀死他并掠夺|T134419:0|t[|cRXP_FRIENDLY_Rune of the Watchman|r]
    .collect 221473,1 --Rune of the watchman
    .unitscan Tyrant of the Hive
step
    .train 426972 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Watchman|r]|cRXP_WARN_学习|r|T236318:0|t[警惕]
    .use 221473
]])
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#title Gladiator Stance
#name 角斗士姿态-45（塔纳里斯和阿兹萨拉）

step
    #completewith theOldChamp
    +|cRXP_WARN_为了解锁|r|T236541:0|t[角斗士姿态]|cRXP_WARN_你需要击败两名游侠，他们奖励|r|T132334:0|t[Blood Frenzy]和|T132339:0|t[TRally Cry]|cRX P_WARN_runes。在继续之前，请确保您已完成该操作。如果你不确定在哪里可以找到它们，请使用它们各自的符文指南|r
    +|cRXP_WARN_执行此任务时，不要与任何人分组。据报道，目前经常出现错误，导致任务无法完成|r
step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
step
    #label theOldChamp
    .goto Tanaris,51.6,27.6
    >>Talk to |cRXP_FRIENDLY_Fizbuz Mithril|r in Gadgetzan
    .accept 81682 >>Accept The Old Champ
    .target Fizbuz Mithril
step
    #completewith next
    .zone Azshara >>前往: |cRXP_PICK_艾萨拉|r
step
    .goto Azshara,27,61,40 >>找一条通向山的小路。上面有部落的横幅
step
    .goto Azshara,25.4,66.2
    >>Talk to |cRXP_FRIENDLY_Kajind|r atop the mountain path
    .turnin 81682 >>Turn in The Old Champ
    .accept 81697 >>Accept Defanged
    .target Kajind
step
    .goto Azshara,39.4,72.4
    >>寻找|cRXP_ENEMY_Ceruleos|r一条50级蓝色巨龙。他在湖的北侧巡逻。掠夺他|T251962:0|t|cRXP_Loot_Kajind之刃|r
    .complete 81697,1 --Kajind's Blade
    .unitscan Ceruleos
step
    .goto Azshara,25.4,66.2
    >>返回|cRXP_FRIENDLY_Kajind|r
    .turnin 81697 >>Turn Defanged
    .accept 81801 >>Accept Return to the Arena
    .target Kajind
step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
step
    .goto Tanaris,51.6,27.6
    >>返回Gadgetzan并与|cRXP_FRIENDLY_Fizbuz Mithri|r交谈
    .turnin 81801 >>Turn in Return to the Arena
    .accept 81877 >>Accept Fight Night
    .target Fizbuz Mithril
step
    >>在Gadgetzan竞技场击败|cRXP_ENEMY_Kajind|r
    .complete 81877,1 --Arena Victory 1/1
    .unitscan Kajind
step
    .goto Tanaris,51.6,27.6
    >>在|cRXP_FRIENDLY_Fizbuz Mithri|r提交任务
    .turnin 81877 >>Turn in Fight Night
    .target Fizbuz Mithril
step
    .train 412513 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Gladiator |r]|cRXP_WARN_学习|r|T236541:0|t[角斗士姿势]
    .use 220164
]])
