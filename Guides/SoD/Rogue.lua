RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Shadowstrike-3（埃尔温森林）
#title Shadowstrike

step << Rogue
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_打开地面上的|cRXP_PICK_Defias Stashbox|r。为|r|T134419:0|t|cRXP_Loot_[暗影之符文]掠夺它|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[影击符文]|r|cRXP_WARN_学习|r|T132291:0|t[影击]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 太极拳-3（邓·莫洛）
#title Shadowstrike

step
    #optional
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >>进入霜窟
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>朝着内部的|cRXP_PICK_Frostmane织机缓存|r行进
step
    .goto Dun Morogh,30.773,80.063
    >>打开内部地面上的|cRXP_PICK_Frostmane Loot Cache|r。为|T134419:0|t|cRXP_Loot_[太极符文]|r掠夺它
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    .train 400105 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[太极符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-太极]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Shadowstrike-3（Shadowglen）
#title Shadowstrike

step << Rogue
    #season 2
    .goto Teldrassil,57.922,40.687,25,0
    .goto Teldrassil,58.709,38.782,10,0
    .goto Teldrassil,59.15,40.66,20,0
    .goto Teldrassil,59.674,42.613
    >>|cRXP_WARN_爬上Aldrassil树上的斜坡，跳上屋顶|r
    >>|cRXP_WARN_|cRXP_PICK_Idol|r位于屋顶顶部|r
    >>打开|cRXP_PICK_Idol |r。为|T134419:0|t|cRXP_Loot_[暗影符文]|r掠夺它
    >>|cRXP_WARN_如果你在跳上屋顶时遇到困难，试着在跑下坡道时跳过栏杆|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[太极符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-太极]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 快速绘图-8（埃尔温森林）
#title Quick Draw

step << Rogue
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Riverpaw Outrunners|r和|cRXP_ENEMY_River paw Runts|r。为|T134327:0|t[|cRXD_Loot_Bottom-Left地图块]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Kobold矿工|r和|cRXP_ENEMY_Kobold隧道工|r。为|T134327:0|t[|cRXD_Loot_Top-Right地图块]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Defias|r。为|T134327:0|t[|cRXP-Loot_Top-Left地图碎片]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    >>|cRXP_WARN_注意：这也可以来自Elwynn Forest中的任何其他|cRXP_ENEMY_Defias|r成员|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,75.4,85.4,60,0
    .goto Elwynn Forest,77.8,82.2,60,0
    .goto Elwynn Forest,83.2,87.0,60,0
    .goto Elwynn Forest,75.4,82.4
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Murloc Foragers|r和|cRXD_ENEMY_Mooloc Lurkers|r。为|T134269:0|t[|cRXP_Loot_Bottom-Right Map Piece]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    >>|cRXP_WARN_注意：这也可以来自Elwynn Forest中的任何其他|cRXP_ENEMY_Murloc|r|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Forager
    .mob Murloc Lurker
    .mob Murloc Streamrunner
    .mob Murloc
    .train 398196,1
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_使用|r|T134327:0|t[|cRXP_LOOT_Map Pieces]|r|cRXP _WARN_to将它们组合成|r|T134269:0|t[|cRXP_LOOT_Elwynn Treasure Map|r]中的任何一个
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_使用|r|T134269:0|t[|cRXP_LOOT_Elwynn藏宝图|r]|cRXP-WARN_at箭头位置。这将导致一个|cRXP_PICK_埋藏的宝藏|r弹出|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
step << Rogue
    #season 2
    >>打开|cRXP_PICK_埋藏的宝藏|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]掠夺它
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]|cRXP-WARN_to train|r|T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 快速绘图-8（Dun Morugh）
#title Quick Draw

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_黑铁间谍|r。为|T134327:0|t[|cRXP-Loot_Bottom-Left地图碎片]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Frostmane巨魔|r。为|T134327:0|t[|cRXP-Loot_Top-Right地图碎片]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Headhunter
    .mob Frostmane Hideskinner
    .mob Frostmane Shadowcaster
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,70.8,56.0
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Rockjaw颅骨撞击器|r和|cRXX_ENEMY_rockaw骨钉|r。为|T134327:0|t[|cRXD_Loot_Top-Left地图块]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,26.0,41.8
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Leper侏儒|r。为|T134269:0|t[|cRXP-Loot_Bottom-Right地图碎片]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_使用|r|T134327:0|t[|cRXP_LOOT_Map Pieces]|r|cRXP_WARN_将它们组合成|r|T134269:0|t[|cRXP-LOOT_Dun Morugh藏宝图|r]中的任何一个
    .collect 208220,1
    .itemcount 208219,1
    .itemcount 208213,1
    .itemcount 208215,1
    .itemcount 208218,1
    .use 208219
    .use 208213
    .use 208215
    .use 208218
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_使用|r|T134269:0|t[|cRXP_LOOT_Dun Morugh藏宝图|r]|cRXP_WARN_在小桥下。这将导致一个|cRXP_PICK_埋藏的宝藏|r弹出|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step << Rogue
    #season 2
    >>打开|cRXP_PICK_埋藏的宝藏|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]掠夺它
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]|cRXP-WARN_to train|r|T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 快速绘图-8（Teldrassil）
#title Quick Draw

step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Travel to Fel Rock
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>杀死|cRXP_ENEMY_Vicious Grell|r、|cRXD_ENEMY_Rascal精灵|r和|cRXP_ENEMY_Shadow精灵|r。为|T134327:0|t[|cRXP_Loot_Bottom-Left地图碎片]|r掠夺它们
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>杀死|cRXP_ENEMY_Timberlings|r。掠夺它们以获得|T134327:0|t[|cRXP-Loot_Top-Right地图碎片]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,46.8,54.6,60,0
    .goto Teldrassil,44.2,59.2
    >>杀死或|T133644:0|t[拾取口袋]|cRXP_ENEMY_Gnarlpine Furbolgs|r。为|T134327:0|t[|cRXP-Loot_Top-Left地图碎片]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>杀死或|T133644:0|t[拾取口袋]|cRXP_ENEMY_Bloodflowe Harpies|r。为|T134327:0|t[|cRXP-Loot_Top-Left地图碎片]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_使用|r|T134327:0|t[|cRXP_LOOT_Map Pieces]|r|cRXP_WARN_将它们组合成|r|T134269:0|t[|cRXP_LOOT_Teldrassil藏宝图|r]中的任何一个
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,55.339,90.818
    .cast 421424 >>|cRXP_WARN_使用|r|T134269:0|t[|cRXP_LOOT_Teldrassil藏宝图|r]|cRXP-WARN_in在Rut'theran村的树干旁。这将导致一个|cRXP_PICK_埋藏的宝藏|r弹出|r
    .use 208605
    .itemcount 208605,1
    .train 398196,1
step << Rogue
    #season 2
    >>打开|cRXP_PICK_埋藏的宝藏|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]掠夺它
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]|cRXP-WARN_to train|r|T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 阴影中的屠杀-1（埃尔温森林）
#title Slaughter from the Shadows

step << Rogue
    #season 2
    .goto Elwynn Forest,46.122,62.937,5,0
    .goto Elwynn Forest,46.175,62.124
    >>|cRXP_WARN_用屋外的板条箱，跳上屋顶，跑到烟囱后面|r
    >>打开|cRXP_PICK_Rusty Lockbox |r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]打开它
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]|cRXP_WARN_to train|r|T236280:0|t[Slaughter from the Shadows]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 《阴影中的屠龙记-1》（邓·莫洛）
#title Slaughter from the Shadows

step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_登上哈拉诺斯旅馆的屋顶，然后跳上巨大的酒桶。按照箭头|r
    >>打开|cRXP_PICK_Rusty Lockbox |r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]打开它
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]|cRXP_WARN_to train|r|T236280:0|t[Slaughter from the Shadows]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 眼睛之间-8（暴风）
#title Between the Eyes

step << Rogue
    #season 2
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >>进入矮人区暴风城的割喉小巷
    .train 400081,1
step << Rogue
    #season 2
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_上楼进入房子|r
    >>打开|cRXP_PICK_Dusty Chest|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]抓取它
    >>|cRXP_WARN_这样做会产生两个10级|cRXP_ENEMY_Cut-throat麻瓜|r，它们会攻击你|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_精度调整|r]|cRXP_WARN_训练|r|T135610:0|t]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 眼睛之间-8（铁炉）
#title Between the Eyes

step << Rogue
    #season 2
    .goto Ironforge,51.913,13.383
    >>打开|cRXP_PICK_Dusty Chest|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]抓取它
    >>|cRXP_WARN_这样做会产生两个10级|cRXP_ENEMY_Cut-throat麻瓜|r，它们会攻击你|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_精度调整|r]|cRXP_WARN_训练|r|T135610:0|t]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 眼睛之间-8（Teldrassil）
#title Between the Eyes

step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>杀死或|T133644:0|t[拾取口袋]|cRXP_ENEMY_Gnarlpine探路者|r和|cRXX_ENEMY_Gnarlpine复仇者|r。掠夺他们获得|T134241:0|t[|cRXD_Loot_Gnarlpine Stash Key]|r
    .collect 208749,1 -- Gnarlpine Stash Key (1)
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Avenger
    .train 400081,1
step << Rogue
    #season 2
    .goto Teldrassil,37.836,82.588
    >>打开|cRXP_PICK_Gnarlpine Stash|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Precision|r]进行织机
    .collect 204174 -- Rune of Precision (1)
    .itemcount 208749,1
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_精度调整|r]|cRXP_WARN_训练|r|T135610:0|t]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 刀锋舞-10（西城）
#title Blade Dance

step << Rogue
    #season 2
    .goto Westfall,48.27,46.91,60,0
    .goto Westfall,46.39,37.38,60,0
    .goto Westfall,48.27,46.91
    >>|T133644:0|t[拾取口袋]整个Westfall的|cRXP_ENEMY_Defias|r。掠夺它们以获得|T133463:0|t[|cRXP_Loot_Dreeet Envelope]|r
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 209031,1 -- Discreet Envelope (1)
    .mob Defias Trapper
    .mob Defias Smuggler
    .mob Defias Looter
    .train 400099,1
step << Rogue
    #season 2
    >>打开|cRXP_PICK_Discreet信封|r。取出|T134237:0|t[|cRXP-Loot_Equipment Stash Key]|r
    .collect 209030,1 -- Equipment Stash Key (1)
    .use 209031
    .itemcount 209031,1
    .train 400099,1
step << Rogue
    #season 2
    #map Westfall
    .goto 1415,40.805,80.235
    >>前往聋人的后门
    >>打开|cRXP_PICK_Equipment Stash|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r]掠夺它
    .collect 208771,1 -- Rune of Blade Dance (1)
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r]|cRXP_WARN_to train|r|T132350:0|t[刀锋舞]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 刀锋舞-16（邓·莫洛）
#title Blade Dance

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_黑铁间谍|r。将其洗劫一空|T133875:0|t[|cRXX_Loot_黑铁锁箱]|r
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208838,1 -- Dark Iron Lockbox (1)
    .mob Dark Iron Spy
    .train 400099,1
step << Rogue
    #season 2
    >>打开|T133875:0|t[|cRXP_LOOT_Dark Iron Lockbox]|r。为|T134419:0|t[| cRXP_FRIENDLY_Rune of Blade Dance|r]掠夺它
    >>|cRXP_WARN_注意：您必须有来自培训师的|r|T136058:0|t[Lockpicking]|cRXP_WARN_f才能打开它|r
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 208838,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r]|cRXP_WARN_to train|r|T132350:0|t[刀锋舞]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 刀锋舞-16（黑暗海岸）
#title Blade Dance

step << Rogue
    #season 2
    #completewith learnBD
    .goto Darkshore,55.106,33.621,30 >>进入Cliffspring Naga洞穴
    .train 400099,1
step << Rogue
    #season 2
    .goto Darkshore,56.253,34.877
    >>杀死|cRXP_ENEMY_Stormscale警报器|r和|cRXX_ENEMY_ Stormscalee波浪骑士|r。掠夺它们一个|T134242:0|t[|cRXD_Loot_Clifffspring Key]|r
    .collect 211471,1 -- Cliffspring Key (1)
    .mob Stormscale Wave Rider
    .mob Stormscale Siren
    .train 400099,1
step << Rogue
    .goto Darkshore,56.253,34.877
    >>打开洞穴内部的|cRXP_PICK_Clliffspring胸脯|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r]掠夺它
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 211471,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r]|cRXP_WARN_to train|r|T132350:0|t[刀锋舞]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Mutilate-5（Elwynn森林）
#title Mutilate

step << Rogue
    #season 2
    .goto Elwynn Forest,57.5,48.2
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Garrick Padfoot|r用于|T134331:0|t[Cutty's Note]
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 203723,1 -- Cutty's Note (1)
    .mob Garrick Padfoot
    .train 400094,1
step << Rogue
    #season 2
    .goto Elwynn Forest,49.983,52.012
    >>Talk to |cRXP_FRIENDLY_Cutty|r just south of the Northshire Valley wall
    >>他会给你|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization |r]
    .collect 203990,1 -- Rune of Mutilation (1)
    .skipgossip
    .target Cutty
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization|r]
    .use 203990 -- Rune of Mutilation (1)
    .target Cutty
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 肉糜-8（Dun Morogh）
#title Mutilate

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_黑铁间谍|r。为|T134331:0|t[Blacrat's Note]而掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208205,1 --Blackrat's Note (1)
    .mob Dark Iron Spy
    .train 400094,1
step << Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Talk to |cRXP_FRIENDLY_Blackrat|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Saber Slash-12（Westfall）
#title Saber Slash

step << Rogue
    #season 2
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>|T133644:0|t[拾取口袋]用于|T134419:0|t的|cRXP_ENEMY_Defias Scout |r[|cRXP_RIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .mob Defias Scout
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Saber Slash-12（莫丹湖）
#title Saber Slash

step << Rogue
    #season 2
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,46.20,13.15,10 >>|cRXP_WARN_登上莫丹湖大坝墙，小心地落在大坝中心的岩架上。按照箭头|r
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,46.373,12.666
    >>打开壁架上的|cRXP_PICK_Stonemason工具箱|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]掠夺它
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,45.823,12.652
    .cast 6477 >>单击|cRXP_PICK_Escape Rope|r返回顶部
    .subzoneskip 146,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Saber Slash-1（暗岸）
#title Saber Slash

step << Rogue
    #season 2
    #completewith next
    .goto Darkshore,32.80,37.72,20 >>游到小岛上有灯塔
    .train 424785,1
step << Rogue
    #season 2
    .goto Darkshore,32.729,37.093
    >>打开树干内的|cRXP_PICK_Lighthouse Stash|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]掠夺它
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 太极拳-2（杜洛塔尔）
#title Shadowstrike


    --Rune of Shadowstrike

step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .accept 77592 >>Accept Atop the Cliffs << Troll
    .accept 77583 >>Accept Atop the Cliffs << Orc
    .target Rwag
step
    #season 2
    .goto Durotar,43.27,69.51
    >>打开|cRXP_PICK_Hidden Cache |r。为|T134419:0|t|cRXP_Loot_[暗影符文]|r掠夺它
    >>|cRXP_WARN_绕过去|r|cRXP_ENEMY_Sarkoth|r|cRXP_WARN_然后跳到胸部|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[太极符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-太极]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 77592 >>Turn in Atop the Cliffs << Troll
    .turnin 77583 >>Turn in Atop the Cliffs << Orc
    .target Rwag
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 太极拳-2（蒂里斯法尔）
#title Shadowstrike


    --Rune of Shadowstrike

step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .accept 77669 >>Accept The Scarlet Rune
    .target David Trias
step
    #season 2
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    >>杀死或扒窃|cRXP_ENEMY_Scarlet转化|r。为|T134419:0|t|cRXP-Loot_[暗影之符文]|r掠夺它们
    .collect 204795,1 --Rune of Shadowstrike (1)
    .mob Scarlet Convert
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[太极符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-太极]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Turn in The Scarlet Rune
    .target David Trias
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 致命酿造-25（银松森林）
#title Deadly Brew


    --Rune of Deadly Brew

step
    #season 2
    .goto Silverpine Forest,47.12,71.01
    >>单击银松林中的|cRXP_PICK_Dead Drop|r
    .accept 78261 >>Accept The Horn of Xelthos
step
    #season 2
    #completewith next
    .zone 209 >>Enter Shadowfang Keep
    >>|cRXP_WARN_你必须独自完成下一部分！分组将阻止您获得所需的密钥|r
step << Horde
    #season 2
    .gossipoption 96495,1 >>潜行通过|cRXP_ENEMY_Rethilgore|r，与|cRXP_FRIENDLY_Dathstalker Adamant|r和|T132331:0|t[Vanish]交谈。他会为你开门的
    .target Deathstalker Adamant
    .train 400080,1
step << Alliance
    #season 2
    .gossipoption 96494 >>悄悄地越过|cRXP_ENEMY_Rethilgore|r，与|cRXP_FRIENDLY_Sorcerer Ashcrombe|r交谈，并向后|T132331:0|t[Vanish]交谈。他会为你开门的
    .target Sorcerer Ashcrombe
    .train 400080,1
step
    #season 2
    #completewith next
    >>将|cRXP_ENEMY_Gemela|r上的|T133644:0|t[拾取口袋]用于|T134243:0|t[|cRXD_OOT_Sister’s Half-Key|r]
    >>|cRXP_WARN_她在底层的餐厅里|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
step
    #season 2
    >>使用|cRXP_ENEMY_Gefall|r上的|T133644:0|t[拾取口袋]用于|T134244:0|t[|cRXX_LOOT_Browther的半钥匙|r]
    >>|cRXP_WARN_他位于二楼餐厅的上方|r
    .collect 210212,1 --Brother's Half-Key (1)
    .mob Gefell
    .train 400080,1
step
    #season 2
    >>将|cRXP_ENEMY_Gemela|r上的|T133644:0|t[拾取口袋]用于|T134243:0|t[|cRXD_OOT_Sister’s Half-Key|r]
    >>|cRXP_WARN_她在底层的餐厅里|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
    .train 400080,1
step
    #season 2
    .use 210212 >>回到外面的院子，进入马厩。组合|T237379:0|t[|cRXP_OOT_Twin Key|r]的两个键
    .collect 210209,1 --Twin Key (1)
    .train 400080,1
step
    #season 2
    >>打开马厩中的|cRXP_PICK_饰箱|r，以获取|cRXP_LOOT_Horn of Xelthos|r
    .complete 78261,1 --Horn of Xelthos (1)
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>单击银松林中的|cRXP_PICK_Dead Drop|r
    .turnin 78261 >>Turn in The Horn of Xelthos
step
    #season 2
    #completewith next
    +|cRXP_WARN_您现在需要进入首都才能接收来自*C的邮件*|r
    .train 400080,1
step << Horde
    #season 2
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .fly Undercity >>Fly to the Undercity
    .target Karos Razok
    .zoneskip Undercity
    .train 400080,1
step << Alliance
    >>Run to Southshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >>飞往铁炉堡
    .target Darla Harris
    .train 400080,1
step
    .goto Undercity,68.290,38.043,5 >>|cRXP_WARN_前往: |cRXP_PICK_幽暗城|r. Check your mailbox for the letter from *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >>|cRXP_WARN_前往: |cRXP_PICK_铁炉堡|r. Check your mailbox for the letter from *C*. Skip this step if you're doing it in another major city|r << Alliance
    .train 400080,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_邮件到达后，打开邮箱阅读来自*C*的邮件。准备好后飞回银松|r << Horde
    +|cRXP_WARN_邮件到达后，打开邮箱阅读来自*C*的邮件。飞回南岸，准备好后前往银松|r << Alliance
step << Horde
    #season 2
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fly The Sepulcher>>飞向坟墓
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Southshore >>飞往南岸
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .train 400080,1
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>单击银松林中的|cRXP_PICK_Dead Drop|r以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Deadly Brew|r]
    .collect 203994,1 --Rune of Deadly Brew (1)
    .train 400080,1
step
    #season 2
    .train 400080 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Deadly Brew|r]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 快速绘制-10（Durotar）
#title Quick Draw


    --Rune of Quick Draw

step
    #season 2
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死或使用|cRXP_ENEMY_Kul Tiras水手|r和|cRXD_ENEMY_Kul Tiras海军陆战队|r上的|T133644:0|t[拾取口袋]。掠夺它们|T134327:0|t[|cRXP_Loot_Top-Right地图片|r]
    .collect 207109,1 --Top-Right Map Piece (1)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .train 400095,1
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
    >>杀死或使用|cRXP_ENEMY_Razormane Quilboars|r和|cRXX_ENEMY_拉zormane Scouts|r上的|T133644:0|t[拾取口袋]。掠夺它们|T134327:0|t[|cRXP_Loot_Bottom-Right Map Piece|r]
    .collect 207107,1 --Bottom-Right Map Piece (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 400095,1
step
    #season 2
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>杀死或使用|cRXP_ENEMY_Hexed巨魔|r和|cRXX_ENEMY_Voodoo巨魔|r.上的|T133644:0|t[拾取口袋]。为|T134327:0|t[|cRXP_Loot_Bottom-Left地图碎片|r]掠夺它们
    .collect 207106,1 --Bottom-Left Map Piece (1)
    .mob Hexed Troll
    .mob Voodoo Troll
    .train 400095,1
step
    #completewith next
    .goto Durotar,55.12,10.10,60 >>前往骷髅岩
step
    #season 2
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    .goto Durotar,53.77,8.87
    >>杀死或使用|cRXP_ENEMY_Burning Blade兽人|r上的|T133644:0|t[拾取口袋]。掠夺它们|T134327:0|t[|cRXP-Loot_Top-Left地图碎片|r]
    .collect 207108,1 --Top-Left Map Piece (1)
    .mob Burning Blade Thug
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
    .train 400095,1
step
    #season 2
    .use 207108 >>使用|T134327:0|t[|cRXP_LOOT_Map Pieces|r]创建|T134269:0|t[|cRXP _LOOT_Durotar藏宝图|r]
    .collect 207110,1 --Durotar Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Durotar,62.14,94.66
    .use 207110 >>使用最南端回声岛上的|T134269:0|t[|cRXP_LOOT_Durotar藏宝图|r]
    >>掠夺为|T134419:0|t生成的|cRXP_PICK_Buried Treasure |r宝箱[|cRXP_FIRENDLY_Rune of Quick Draw|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]|cRXP-WARN_to train|r|T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 快速绘图-10（Tirisfal）
#title Quick Draw


    --Rune of Quick Draw

step
    #season 2
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>杀死或使用|cRXP_ENEMY_Tirisfal Farmers|r和|cRXX_ENEMY_Tyrisfal Farmhands|r上的|T133644:0|t[拾取口袋]。为|T134327:0|t[|cRXP_Loot_Top-Left地图片|r]掠夺它们
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #season 2
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>杀死或使用|cRXP_ENEMY_Scarlet Warriors|r上的|T133644:0|t[拾取口袋]。掠夺它们|T134327:0|t[|cRXX_Loot_Top-Right Map Piece|r]
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以掉落地图碎片|r
    .collect 208035,1 --Top-Right Map Piece (1)
    .mob Scarlet Warrior
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>杀死或使用|cRXP_ENEMY_Rot隐藏Gnolls|r上的|T133644:0|t[拾取口袋]。掠夺它们|T134327:0|t[|cRXP-Loot_Bottom-Left地图碎片|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
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
    >>杀死或使用|cRXP_ENEMY_Murlocs|r上的|T133644:0|t[拾取口袋]。掠夺它们|T134327:0|t[|cRXX_Loot_Bottom-Right Map Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step
    #season 2
    .use 208036 >>使用|T134327:0|t[|cRXP_LOOT_Map Pieces|r]创建|T134269:0|t[|cRXP _LOOT_Tirisfal藏宝图|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>使用桥下的|T134269:0|t[|cRXP_LOOT_Tirisfal藏宝图|r]
    >>掠夺为|T134419:0|t生成的|cRXP_PICK_Buried Treasure |r宝箱[|cRXP_FIRENDLY_Rune of Quick Draw|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]|cRXP-WARN_to train|r|T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 阴影中的屠杀-10（杜罗塔）
#title Slaughter from the Shadows


    --Rune of Slaughter from the Shadows

step
    #completewith next
    .goto Durotar,54.25,27.64,40 >>前往Dustwind洞穴以东的跳跃点
step
    #season 2
    .goto Durotar,54.25,27.64,40,0
    .goto Durotar,53.74,27.14
    >>为|T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]掠夺|cRXP_PICK_Rusty Lockbox |r
    >>|cRXP_WARN_你必须做一个小跳跃才能够到胸部|r
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]|cRXP_WARN_to train|r|T236280:0|t[Slaughter from the Shadows]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 《从阴影中屠杀》-10（蒂里斯法尔）
#title Slaughter from the Shadows


    --Rune of Slaughter from the Shadows


step
    #season 2
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >>前往Agamand Mills的地下室
step
    #season 2
#loop
	.line Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>杀死|cRXP_ENEMY_Wailing Ancestors|r和|cRXP_ENEMY_Rotting Ancestors |r。掠夺它们一个|T134245:0|t[|cRXD_Loot_Agamand Relic Coffer Key|r]
    >>|cRXP_WARN_小心！这个地下室里的暴民动态重生！|r
    .collect 208005,1 --Agamand Relic Coffer Key (1)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .train 42992,1
step
    #season 2
    .goto Tirisfal Glades,52.53,26.91
    >>打开|cRXP_PICK_Relic Coffer|r，用于|T134419:0|t[|cRXP-FRIENDLY_Rune of Slaughter|r]
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]|cRXP_WARN_to train|r|T236280:0|t[Slaughter from the Shadows]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Mutilate - 8 (Tirisfal)
#title Mutilate


    --Rune of Mutilate

step
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>使用|cRXP_ENEMY_Captain Perrine|r上的|T133644:0|t[拾取口袋]来获得|T133385:0|t[|cRXP-LOOT_Scarlet中尉签名戒指|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step
    #season 2
    #completewith next
    .goto Tirisfal Glades,60.90,51.49,10 >>前往布里尔市政厅
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>使用|T133385:0|t[|cRXP_LOOT_Scarlet中尉签名戒指|r]创建|T134328:0|t[|cRXP _LOOT_Forged Scarlet Memorial|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加米尔·诺瑞|r, Rune of Mutilation
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization|r]|cRXP-WARN_to train|r|T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Mutilate - 10 (Durotar)
#title Mutilate


    --Rune of Mutilate

step
    #season 2
    #completewith next
    .goto Durotar,53.18,29.15,50 >>前往Dustwind洞穴
step
    #season 2
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>在|cRXP_ENEMY_Burning Blade Thugs|r上使用|T133644:0|t[拾取口袋]用于|T134331:0|t[|cRXP-LOOT_Note from Ba'so|r]
    .collect 207098,1 --Note from Ba'so (1)
    .mob Burning Blade Thug
    .train 400094,1
step
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'so|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    >>|cRXP_WARN_He is stealthed!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization|r]|cRXP-WARN_to train|r|T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 眼睛之间-8（蒂里斯法尔）
#title Between the Eyes


    --Rune of Between the Eyes

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
    >>使用|cRXP_ENEMY_Vile Fin Murlocs|r上的|T133644:0|t[Pick Pocket]用于|T134241:0|t[|cRXX_LOOT_Shipwreck缓存密钥|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>为|T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]掠夺|cRXP_PICK_Shipwreck缓存|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_精度调整|r]|cRXP_WARN_训练|r|T135610:0|t]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 眼睛之间-8（Orgrimmar）
#title Between the Eyes


    --Rune of Between the Eyes

step
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>为|T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]掠夺|cRXP_PICK_Dusty Chest|r
    >>|cRXP_WARN_它位于楼上的The Drag|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_精度调整|r]|cRXP_WARN_训练|r|T135610:0|t]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 刀锋舞-15（The Barrens）
#title Blade Dance


    --Rune of Blade Dance

step
    #season 2
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10
    >>使用|cRXP_ENEMY_Southsea Brigands|r上的|T133644:0|t[拾取口袋]用于|T132761:0|t[|cRXX_LOOT_Buccaneer's Matchbox|r]
    .collect 208768,1 --Buccaneer's Matchbox (1)
    .mob Southsea Brigand
    .train 400099,1
step
    #season 2
    .goto The Barrens,61.82,45.80
    >>单击火药桶。掠夺为|T134419:0|t[|cRXP_PRIENDLY_Rune of Blade Dance|r]生成的|cRX_PICK_Southsea Loot Stash|r
    .collect 208771,1 --Rune of Blade Dance (1)
    .train 400099,1
step
    #season 2
    .train 400099 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r]|cRXP_WARN_to train|r|T132350:0|t[刀锋舞]
    .use 208771
    .itemcount 208771,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Saber Slash-15（The Barrens）
#title Saber Slash


    --Rune of Saber Slash

step
    #season 2
    #completewith next
    +|cRXP_WARN_你的撬锁技能必须至少达到80才能获得此符文！|r
    .skill pick lock,>80,1
step
    #season 2
    .goto The Barrens,62.31,54.22
    >>将|cRXP_PICK_Stable手的躯干|r在马厩顶部掠夺|T134419:0|t[|cRXP-FRIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_往山上跑，跳到城堡的墙上。从那里你可以跳到马厩的顶部|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]|cRXP_WARN_to train|r|T132375:0|t[Saber Slash]
    .use 208772
    .itemcount 208772,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Saber Slash-15（银松）
#title Saber Slash

    --Rune of Saber Slash

step
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>掠夺影方旁边的|cRXP_PICK_Rusty胸脯|r保持入口|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_使用|r|T132307:0|t[SSprint]|cRXP_WARN_然后从驾驶台跳向胸部|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]|cRXP_WARN_to train|r|T132375:0|t[Saber Slash]
    .use 208772
    .itemcount 208772,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#title Shadowstep
#name 影步-30（银松森林）

step
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
step
    .train 400101,1
    >>单击|cRXP_PICK_Dead Drop|r chest on the ground
    .goto Silverpine Forest,47.114,70.974
    .accept 78676 >>Accept The Eye of Bhossca
step
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    >>|cRXP_WARN_Open the|r |cRXP_PICK_Supply Locker|r |cRXP_WARN_inside the stable to get the|r |T132665:0|t[Scarlet Initiate's Uniform]
    .goto Tirisfal Glades,81.2,32.12
    .collect 210955,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.44,19.69,10,0
    .goto Eastern Kingdoms,47.73,19.39,5 >>进入猩红修道院：|cRXP_WARN_Graveyard|r地牢|cRXP-WARN_ALONE|r
step
    >>在|cRXP_ENEMY_Scarlet Scryer |r上使用|T133644:0|t[拾取口袋]获得|T134241:0|t[Scryer的钥匙]
    >>|cRXP_WARN_Make use of|r |T132289:0|t[Distract] |cRXP_WARN_to avoid being detected|r
    .goto Eastern Kingdoms,47.73,19.39
    .collect 210963,1
    .mob Scarlet Scryer
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >>进入猩红修道院：|cRXP_WARN_Library|r地牢|cRXD_WARN_LONE|r
step
    #completewith next
    +|cRXP_WARN_Run to the hallway before the last boss|r
step
    >>Loot the |cRXP_PICK_Personal Letterbox|r on the left for the |T134331:0|t[|cRXP_LOOT_Confidential Message|r]
    .use 210955 >>|cRXP_WARN_Use the|r |T132665:0|t[Scarlet Initiate's Uniform] |cRXP_WARN_to make the NPCs neutral|r
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210967,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.73,19.39,5 >>进入猩红修道院：|cRXP_WARN_Graveyard|r地牢|cRXP-WARN_ALONE|r
step
    >>|cRXP_WARN_前往地牢内部的外部区域，在左右墙上的两尊雕像之间寻找一条长凳|r
    *|cRXP_WARN_On both sides|r use /sit (doable while in stealth) on the benches until the emote |cRXP_WARN_"You hear the sound of stone moving"|r appears in chat.
    *Afterwards go to the Tomb next to |cRXP_WARN_the right wall|r and open the |cRXP_PICK_Stone Coffer|r for the |T134242:0|t[Reliquary Key]
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210968,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >>进入猩红修道院：|cRXP_WARN_Library|r地牢|cRXD_WARN_LONE|r
step
    #completewith next
    +|cRXP_WARN_Run to the "Gallery of Treasures"|r
step
    >>Loot the |cRXP_PICK_Padlocked Reliquary|r in the first room on the left for the |T134331:0|t[|cRXP_LOOT_Eye of Bhossca|r]
    .use 210955 >>|cRXP_WARN_Use the|r |T132665:0|t[Scarlet Initiate's Uniform] |cRXP_WARN_to make the NPCs neutral|r
    .goto Eastern Kingdoms,47.79,19.59
    .complete 78676,1 --1/1 Eye of Bhossca
    .train 400101,1
step
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
step
    .train 400101,1
    >>单击|cRXP_PICK_Dead Drop|r chest on the ground
    .goto Silverpine Forest,47.1,71.1
    .turnin 78676 >>Turn in The Eye of Bhossca
step
    #completewith next
    +|cRXP_WARN_您现在需要进入首都才能接收来自*C的邮件*|r
    .train 400101,1
step << Horde
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .fly Undercity >>Fly to the Undercity
    .target Karos Razok
    .zoneskip Undercity
    .train 400101,1
step << Alliance
    >>Run to Southshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >>飞往铁炉堡
    .target Darla Harris
    .train 400101,1
step
    .goto Undercity,68.290,38.043,5 >>|cRXP_WARN_前往: |cRXP_PICK_幽暗城|r. Check your mailbox for the letter from *C* and take it with you|r << Horde
    .goto Ironforge,71.485,72.280,5 >>|cRXP_WARN_前往: |cRXP_PICK_铁炉堡|r. Check your mailbox for the letter from *C* and take it with you. Skip this step if you're doing it in another major city|r << Alliance
    .train 400101,1
step
    #completewith next
    +|cRXP_WARN_邮件到达后，打开邮箱阅读来自*C*的邮件。准备好后飞回银松|r << Horde
    +|cRXP_WARN_邮件到达后，打开邮箱阅读来自*C*的邮件。飞回南岸，准备好后前往银松|r << Alliance
step << Horde
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fly The Sepulcher>>飞向坟墓
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Southshore >>飞往南岸
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .train 400101,1
step
    .goto Silverpine Forest,47.114,70.974
    >>单击|cRXP_PICK_Dead Drop|r chest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstep|r]
    .collect 210979,1 --Rune of Shadowstep (1)
    .train 400101,1
step
    .train 400101 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstep|r] |cRXP_WARN_to learn|r |T132303:0|t[Shadowstep]
    .use 210979
    .itemcount 210979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name Shuriken投掷-30（悲伤沼泽）
#title Shuriken Toss

step
    .train 400096,1
    .train 1842 >>你必须学习|T136162:0|t[解除陷阱]才能获得|T134419:0|t[|cRXP_FRIENDLY_Rune of the Assassin|r]
    .collect 5060,1 >>您还需要|T134065:0|t[盗贼工具]
step
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
    .train 400096,1
    >>在树上的|cRXP_PICK_Dart Trap|r上使用|T136162:0|t[Disarm Trap]|cRXP_WARN_踏足胸部获得|T134419:0|t[|cRXP_FRIENDLY_Rune of the Assassin|r]|r
    .goto Swamp of Sorrows,41.9,30.2
    .collect 213139,1
step
    .itemcount 213139,1
    .use 213139
    .train 400096 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Assassin|r]|cRXP_WARN_to learn|r|T132330:0|t[Shuriken Toss]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 微妙大师-34（Stranglethorn Vale）
#title Master of Subtlety

step
    .train 425103,1
    .skill lockpicking,125 >>|cRXP_WARN_您必须将|r|T136058:0|t[Lockpicking]|cRXP_WARN_to至少调平125才能获得|r|T132299:0|t[字幕大师]|cRXP_WARN_run|r
step
    .train 425103,1
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step
    .train 425103,1
    #completewith Uniform
    .goto Stranglethorn Vale,46.30,7.61,30 >>进入仓库（库尔岑洞穴）
step
    .train 425103,1
    #completewith next
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Kurzen精英|r和|cRXD_ENEMY_Kurzen子组|r用于|cRXP_LOOT_复合笼密钥|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    #label Uniform
    .train 425103,1
    .goto Stranglethorn Vale,49.616,7.743
    >>打开|cRXP_PICK_Kurzen补给箱|r。将其洗劫一空，以获取|cRXP _Loot_Kurzen战斗机制服|r
    .collect 216617,1
step
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Kurzen精英|r和|cRXD_ENEMY_Kurzen子组|r用于|cRXP_LOOT_复合笼密钥|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    .train 425103,1
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >>离开洞穴。向塔外的|cRXP_FRIENDLY_Wendel Mathers|r行进
step
    .train 425103,1
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
    >>|cRXP_WARN_他有一个大约3分钟的重生计时器|r
    .destroy 216616 >>将|cRXP_LOOT_复合笼钥匙|r递给他
    .destroy 216617 >>将|cRXP_LOOT_Kurzen战斗机制服|r交给他
    .skipgossip 218230,1
    .target Wendel Mathers
step
    .train 425103,1
    #completewith next
    .subzone 35 >>Travel to Booty Bay
step
    .train 425103,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Aransas|r
    >>她会给你|T133640:0|t[|cRXP_LOOT_Aransas船长的奖励|r]
    .goto Stranglethorn Vale,27.681,76.648
    .skipgossip
    .collect 216618,1
    .target Captain Aransas
step
    .train 425103,1
    .use 216618 >>打开|T133640:0|t[|cRXP_LOOT_Aransas船长奖励|r]获得|T134419:0|t[| cRXP_FRIENDLY_Rune of Sublty|r]和|T338666:0|t[|cRXP-FRIENDLY_Jani’s Charm|r]
    >>|cRXP_WARN_不要破坏|r|T338666:0|t[|cRXP_FRIENDLY_Jani的符咒|r]|cRXP_WARN_a，因为它用于收集未来的符文|r
    .collect 213136,1
step
    .itemcount 213136,1
    .use 213136
    .train 425103 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_转租合同|r]|cRXP_WARN_to train|r|T132299:0|t[转租主合同]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#title Rolling with the Punches
#name 用冲头滚动-27（千针）


step
    #optional
    .train 400093,1
    .skill lockpicking,45 >>|cRXP_WARN_您必须将您的|r|T136058:0|t[Lockpicking]|cRXP_WARN_to调平至至少45才能获得|r|T134919:0|t[Rolling with the Punches]|cRXP_WARN_run|r
step
    .train 400093,1
    #completewith next
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
    .train 400093,1
    #completewith next
    .goto Thousand Needles,18.44,21.58,10 >>进入E’shok营地的大帐篷
step
    .train 400093,1
    .goto Thousand Needles,18.686,21.126
    >>打开|cRXP_PICK_Sizable Stolen Strongbox|r。为|T132597:0|t[|cRXP _Loot_Large Strongbox|1r]抢劫它
    .collect 215451,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_铸造|r|T136058:0|t[拾取锁定]|cRXP_WARN_on the |r|T132597:0|t[|cRXP_OOT_Large Strongbox|r]|cRX P_WARN_to解锁|r
    .usespell 1804
    .use 215451
step
    .train 400093,1
    .use 215451 >>打开|T132597:0|t[|cRXP_LOOT_Large Strongbox|r]。为|T132597:0|t[|cRXP_Loot_Medium Strongbox|r]掠夺它
    .collect 215452,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_铸造|r|T136058:0|t[拾取锁定]|cRXP_WARN_on the |r|T132597:0|t[|cRXP_OOT_Medium Strongbox|r]|cRX P_WARN_to解锁|r
    .usespell 1804
    .use 215452
step
    .train 400093,1
    .use 215452 >>打开|T132597:0|t[|cRXP_LOOT_Medium Strongbox|r]。为|T132597:0|t[|cRXP_Loot_Small Strongbox|r]掠夺它
    .collect 215453,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_铸造|r|T136058:0|t[拾取锁定]|cRXP_WARN_on the |r|T132597:0|t[|cRXP_OOT_Small Strongbox|r]|cRX P_WARN_to解锁|r
    .usespell 1804
    .use 215453
step
    .train 400093,1
    .use 215453 >>打开|T132597:0|t[|cRXP_LOOT_Small Strongbox|r]。为|T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r]掠夺它
    .collect 213138,1
step
    .itemcount 213138,1
    .use 213138
    .train 400093 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r]|cRXP-WARN_to train|r|T134919:0|t[Rolling with the Punches]
]])

 RXPGuides.RegisterGuide([[
 #classic
 << Rogue SoD
 #group RestedXP Rune和书籍指南
 #subgroup Helmet
 #title Focused Attacks
 #name 重点攻击-34（腹地）

 step
    >>|cRXP_WARN_You will need|r |T136175:0|t[Blind] |cRXP_WARN_and|r |T133587:0|t[Blinding Powder] |cRXP_WARN_to obtain the|r |T236274:0|t[Focused Attacks] |cRXP_WARN_rune|r
    .train 2094 >>Train |T136175:0|t[Blind]
    .collect 5530,1 -- Blinding Powder 1/1
    .train 432291,1
step
    #completewith next
    .zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
    .goto The Hinterlands,72.76,52.91
    >>Cast |T136175:0|t[Blind] on the |cRXP_ENEMY_Vilebranch Mask|r, then loot the |cRXP_PICK_Treasure of the Bat|r chest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Focus|r]
    .collect 221433,1 -- rune of focus
    .mob Vilebranch Mask
    .train 432291,1
step
    .itemcount 221433,1
    .use 221433
    .train 432291 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Focus|r] |cRXP_WARN_to train|r |T236274:0|t[Focused Attacks]
 ]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Unfair Advantage
#name 不公平优势-40（Tanaris）

step
    .train 921 >>|cRXP_WARN_You need to train|r |T133644:0|t[Pick Pocket] |cRXP_WARN_to obtain the|r |T236285:0|t[Unfair Advantage] |cRXP_WARN_rune|r
    .train 432301,1
step
    #completewith CoinPurse
    .zone Tanaris >>|cRXP_WARN_Travel to|r |cFFfa9602Tanaris|r
step
    #completewith next
    .subzone 1336 >>前往Lost Rigger Cove
step
    #label CoinPurse
	.line Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
	.goto Tanaris,70.94,42.85,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,71.07,46.03,50,0
	.goto Tanaris,71.25,47.98,50,0
	.goto Tanaris,72.39,48.23,50,0
	.goto Tanaris,72.59,47.10,50,0
	.goto Tanaris,73.27,47.99,50,0
	.goto Tanaris,74.25,47.27,50,0
	.goto Tanaris,73.68,45.89,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,70.94,42.85,50,0
    >>|cRXP_WARN_Cast|r |T133644:0|t[Pick Pocket] |cRXP_WARN_on|r |cRXP_ENEMY_Southsea Pirates|r |cRXP_WARN_and|r |cRXP_ENEMY_Southsea Freebooters|r |cRXP_WARN_untill you receive a|r |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r
    .collect 221371,1 - Kidnapper's Coin Purse 1/1
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .train 432301,1
step
    >>打开|T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r并将其掠夺为|T133302:0|t| cRXP_OOT_Precious Medalion|r
    .collect 221370,1 -- Precious Medalion 1/1
    .use 221371
    .train 432301,1
step << Rogue
    .goto Tanaris,67,22
    .gossipoption 122303 >>对话: |cRXP_FRIENDLY_加贝|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r]
    .collect 221428,1 -- Rune of Foul Play
    .target Jabbey
    .train 432301,1
    .itemcount 221370,1
step << Rogue
    .itemcount 221428,1
    .use 221428
    .train 432301 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r] |cRXP_WARN_to train|r |T236285:0|t[Unfair Advantage]

]])
RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Carnage
#name 康乃馨-45（爆破地）

step
    #optional
    .skill lockpicking,225 >>|cRXP_WARN_您必须将|r|T136058:0|t[Lockpicking]|cRXP_WARN_to至少调平到225才能获得|r|T236268:0|t[Carnage]|cRXP_WARN_run|r
step
    #completewith next
    .zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
step
    #completewith next
    .goto Blasted Lands,45.27,16.52 >>Travel to the top of the tower in front of Dreadmaul Hold
step
    .goto Blasted Lands,45.27,16.52
    >>Open the |cRXP_PICK_Abandoned Cache|r. Kill the |cRXP_ENEMY_Murderous Lost One|r (level 46) that spawns
    >>Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Carnage|r]
    .collect 221461,1 -- Rune of Carnage 1/1
    .unitscan Murderous Lost One
step
    .use 221461
    .train 432299 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Carnage|r] |cRXP_WARN_to train|r |T236268:0|t[Carnage]

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#title Honor Among Thieves
#name 盗贼中的荣誉-45（艾泽拉斯）

step
    #optional
    .xp 45 >>|cRXP_WARN_You need to reach level 45 in order to obtain this rune|r
step
    #optional
    .train 400101 >>|cRXP_WARN_You must have trained|r |T132303:0|t[Shadowstep] |cRXP_WARN_in order to obtain this rune|r
step
    #optional
    .train 400080,1 >>|cRXP_WARN_You must have trained|r |T236270:0|t[Deadly Brew] |cRXP_WARN_in order to obtain this rune|r
step
    #optional
    #completewith letterC
    >>|cRXP_WARN_In order to start the quest for this rune you need to have completed "The Manor, Ravenholdt" quest introducing you to the Ravenholdt rogue faction. In order to receive it talk to|r |cRXP_FRIENDLY_Osborne the Night Man|r |cRXP_WARN_in Stormwind|r << Alliance
    +|cRXP_WARN_In order to start the quest for this rune you need to have completed "The Manor, Ravenholdt" quest introducing you to the Ravenholdt rogue faction. In order to receive it talk to|r |cRXP_FRIENDLY_Ormok|r |cRXP_WARN_in Orgrimmar|r << Horde
    .accept 6681 >>Accept The Manor, Ravenholdt << Alliance
    .isQuestAvailable 6681
step << Horde
    .goto Orgrimmar,43.91,54.69
    .gossipoption 96925 >>对话: |cRXP_FRIENDLY_奥莫克|r to receive an |T133460:0|t[|cRXP_LOOT_Elegant Letter|r]. Use it to accept the quest
    .disablecheckbox
    .collect 17126,1,6681
    .accept 6681 >>Accept The Manor, Ravenholdt
    .target Ormok
    .isQuestAvailable 6681
step
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
    .isOnQuest 6681
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Enter Ravenholdt Manor
    .isOnQuest 6681
step
    .goto Hillsbrad Foothills,78.62,17.96
    >>Move toward the |cRXP_PICK_Chest|r
    .complete 6681,1 --Rite of Cunning: 1/1
    .isOnQuest 6681
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahrad|r upstairs
    .turnin 6681 >>Turn in The Manor, Ravenholdt
    .isOnQuest 6681
step << Alliance
    +|cRXP_WARN_Travel to any Major City|r
    >>Darnassus
    >>Ironforge
    >>Stormwind City
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Stormwind City
step << Horde
    +|cRXP_WARN_Travel to any Major City|r
    >>Undercity
    >>Thunder Bluff
    >>Orgrimmar
    .zoneskip Undercity
    .zoneskip Thunder Bluff
    .zoneskip Orgrimmar
step
    #label letterC
    >>转到任何邮箱。你将收到一封开始探索的信。接受它
    .accept 80526 >>Accept Fool Me Twice
step
    #optional
    #completewith next
    .zone Alterac Mountains >>前往: |cRXP_PICK_奥特兰克山脉|r
step
    .goto Alterac Mountains,84.6,80.2
    >>前往Ravenholdt庄园，与|cRXP_FRIENDLY_Fahrad|r交谈
    .turnin 80526 >>Turn in Fool Me Twice
    .accept 80411 >>Accept The Talisman of Kazdor
    .target Fahrad
step
    #optional
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
step
    .goto Tanaris,38.69,20.20
    >>|cRXP_WARN_前往塔纳里斯的祖法拉克。你不能在一个小组里。进入Zul'Farrak将使你处于一个特殊版本的实例中，在那里你将能够完成任务的目标|r
    >>侦察巨魔帐篷寻找|cRXP_PICK_Clay Vessels |r掠夺它们|T134799:0|t|cRXP-loot_Ville Concoctions |r。您需要其中两个才能完成任务
    .collect 217716,2
step
    >>前往|cRXP_ENEMY_Antu'sul的|r洞穴，在旁边的大锅上使用您的|T134799:0|t|cRXP-LOOT_Vile Concoctions |r之一。它不会破坏您的隐身能力。当老板分心时，你可以掠夺|cRXP_PICK_Antu'Sul的背包|r以换取|T133724:0|t|cRXP_loot_提供骨头|r
    .collect 217721,1 --Offering of Bone
    .use 217716
step
    >>去墓地。使用你的第二个|T134799:0|t|cRXP_LOOT_Ville Concoction|r在|cRXD_ENEMY_Witch Doctor Zum'rah|r旁边的大锅上。当他分心时，掠夺|T136232:0|t| cRXP_OOT_Ward of the Dead|r
    .collect 217727,1 --ward of the dead
    .use 217716
step
    .equip 13,217727 >>装备你刚刚掠夺的|T136232:0|t|cRXP_LOOT_Ward of the Dead|r饰品。它将显示您需要掠夺的|cRXP_PICK_graves |r之一|T236304:0|t|cRXP_loot_提供肉|r
    .collect 217720,1 --offering of flesh
step
    >>使用您刚刚收集的|T236304:0|t|cRXP_LOOT_OfFlesh|r将其与|T133724:0|t|cRXP_LOUT_OfBone|r组合成|T236305:0|t| cRXP_OOT_Blood Magic Essence |r
    .collect 217719,1 --Blood Magic Essence
    .use 217720
step
    >>走到金字塔楼梯的脚下，向右看。在墙的一侧，你会看到一个小石块。跳到上面，然后走到边缘。在第二个阳台上，你会发现一个小箱子。掠夺一个|T237274:0|t|cRXP_Loot_空心徽章|r
    .collect 217717,1 --Hollow Emblem
step
    >>使用您刚刚掠夺的|T237274:0|t|cRXP_LOOT_空心徽章|r将其与|T236305:0|t| cRXP_OOT_血液魔法精华|r组合，并获得|T133572:0|t|| cRXP_LOCOT_血液魔法徽章|r
    .collect 217718,1 --Emblem of Blood Magic
step
    >>爬上楼梯到金字塔顶部，为|T133313:0|t|cRXP_loot_Kazdor的Talisman|r掠夺|cRXP_PICK_Spellbound War Chest|r
    .collect 217609,1 --Talisman of Kazdor
step
    #optional
    #completewith next
    .zone Alterac Mountains >>前往: |cRXP_PICK_奥特兰克山脉|r
step
    .goto Alterac Mountains,84.6,80.2
    >>返回Ravenholdt庄园，与|cRXP_FRIENDLY_Fahrad|r交谈
    .turnin 80411 >>Turn in The Talisman of Kazdor
    .accept 80453 >>Accept Best Laid Plans
    .target Fahrad
step
    .goto Alterac Mountains,86.0,80.0
    >>前往豪宅的地下室。寻找|cRXP_FRIENDLY_Zan Shivsproket|r侏儒工程师
    .turnin 80453 >>Turn in Best Laid Plans
    .accept 80454 >>Accept One Last Drop
    .target Zan Shivsproket
step
    #optional
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
step
    .goto Silverpine Forest,47.1,71.1
    >>前往银松森林Pyrewood村的一间小屋
    .turnin 80454 >>Turnin One Last Drop
    .accept 80455 >>Accept Biding Our Time
step
    #optional
    #completewith next
    .zone Alterac Mountains >>前往: |cRXP_PICK_奥特兰克山脉|r
step
    .goto Alterac Mountains,84.6,80.2
    >>返回Ravenholdt庄园，与|cRXP_FRIENDLY_Fahrad|r交谈
    .turnin 80455 >>Turn in Biding Our Time
    .target Fahrad
step
    .train 432264 >>使用您收到的|T134419:0|t|cRXP_FRIENDLY_Rune of the Coterie |r进行训练|T236275:0|t[盗贼中的荣誉]
    .use 217736
]])