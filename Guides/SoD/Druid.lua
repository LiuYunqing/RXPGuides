RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 怒怒之怒-4（Nightglen）
#title Fury of Stormrage

step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>登上Aldrassil树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛丹特·硬木|r
    .accept 77571 >>Accept Relics of the Kaldorei
    .trainer >>训练你的法术。确保您学习|T136096:0|t[Moonfire]
    .target Mardant Strongoak
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,55.0,43.7
    >>杀死|cRXP_ENEMY_Grell|r和|cRXX_ENEMY_格雷尔金|r。为|T134903:0|t[|cRXP_FRIENDLY_Lunar Idol |r]掠夺它们
    .collect 208414,1 -- Lunar Idol (1)
    .mob Grell
    .mob Grellkin
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >>|cRXP_WARN_equp the |r|T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_在敌人受到|r|T136096:0|t[月火]的折磨时杀死敌人6次，获得|r|T237556:0|t]的叠加值
    >>|cRXP_WARN_一旦你在6次击杀后获得|r|T136116:0|t[灵感]|cRXP_WARN_buff，使用你刚刚装备的|r|T134903:0|t[|cRXP-FRIENDLY_Lunar Idol |r]|cRX P_WARN_again|r
    .complete 77571,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>登上Aldrassil树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛丹特·硬木|r
    .turnin 77571 >>Turn in Relics of the Kaldorei
    .target Mardant Strongoak
    .train 410061,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 活种子-10（Teldrassil）
#title Living Seed

step << Druid
    .goto Teldrassil,64.0,54.0,60,0
    .goto Teldrassil,59.0,60.0,60,0
    .goto Teldrassil,57.0,65.0,60,0
    .goto Teldrassil,69.0,55.0,60,0
    .goto Teldrassil,58.0,73.0,60,0
    .goto Teldrassil,61.0,54.0,60,0
    .goto Teldrassil,66.55,51.52
    >>地面上的织机|T133941:0|t|cRXP_Loot_Grade Flower|r
    >>|cRXP_WARN_这些东西遍布Teldrassil|r
    .collect 208609,3 -- Glade Flower (3)
    .train 416050,1
step << Druid
    >>|cRXP_WARN_使用|r|T133941:0|t|cRXP_LOOT_Glade Flowers |r|cRXP_WARN_将它们组合成|r|T132767:0|t[Glade Crown]
    .collect 208760,1 -- Glade Flower (3)
    .train 416050,1
step << Druid
    #completewith NatureSpirit
    .subzone 260 >>前往星光村
    .train 416050,1
step << Druid
    #completewith next
    .goto Teldrassil,67.026,58.039
    .cast 414724 >>|cRXP_WARN_在|cRXP_ENEMY_Wooden Effy|r上使用|r|T132767:0|t[Glade Crown]|cRXP_WARN_on。这将产生|r|cRXX_ENEMY_Unleashed Nature Spirit|r
    >>|cRXP_WARN_你可能需要等几分钟才能让它重生|r
    .use 208760
    .mob Wooden Effigy
    .train 416050,1
step << Druid
    #label NatureSpirit
    .goto Teldrassil,67.026,58.039
    >>杀死|cRXP_ENEMY_Unleashed Nature Spirit|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Natural Potential|r]掠夺它
    >>|cRXP_WARN_This is a level 7 elite|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step << Druid
    .train 416050 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_自然势调整|r]|cRXP_WARN_训练|r|T136152:0|t[活种子]
    .use 206963
    .itemcount 206963,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name Lifebloom-8（Teldrassil）
#title Lifebloom

step << Druid
    #sticky
    +|cRXP_WARN_你必须有一个助手来收集这个符文！它不能单独使用，因为他们必须协助点击需要第二名玩家的召唤仪式！|r
    .train 410033,1
step << Druid
    .goto Teldrassil,33.610,35.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Adventurer's Remains|r
    >>|cRXP_WARN_这将启动另一名玩家也需要点击的召唤仪式|r
    >>掠夺|cRXP_FRIENDLY_Adventurer的剩余|r用于|T134419:0|t[|cRXP_FRIENDLY_Rune of Life |r]
    .collect 206970,1 -- Rune of Life (1)
    .skipgossip
    .target Adventurer's Remains
    .train 410033,1
step << Druid
    .train 410033 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Life
    .use 206970
    .itemcount 206970,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 野蛮咆哮-20（黑暗海岸）
#title Savage Roar

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_注意：你必须达到20级才能装备|r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol |r]|cRXP_WARN_这是学习|r|T236167:0|t[野蛮咆哮]所必需的
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>杀死|cRXP_ENEMY_Den Mother|r。为|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]掠夺她
    >>|cRXP_WARN_注意|cRXP_ENEMY_Thistle Cubs|r，它可以让你眩晕2秒|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >>|cRXP_WARN_equp the |r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol |r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_从|r|T132152:0|t[Rip]|cRXP_WARN_or|r|T132122:0|t[Rake]|cRXP_WARN_to类人身上获得20次流血伤害，然后使用|r|T232942:0|t[|cRXP-FRIENDLY_Ferocious Idol |r]|cRX P_WARN_gain学习|r|T236167:0|t[野蛮咆哮]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 野蛮咆哮-20（西城区）
#title Savage Roar

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_注意：你必须达到20级才能装备|r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol |r]|cRXP_WARN_这是学习|r|T236167:0|t[野蛮咆哮]所必需的
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Westfall,56.6,13.2,70,0
    .goto Westfall,52.8,15.4,70,0
    .goto Westfall,44.8,13.8,70,0
    .goto Westfall,41.6,20.6,70,0
    .goto Westfall,56.6,13.2
    >>杀死|cRXP_ENEMY_Riverpaw Gnolls|r，|cRXD_ENEMY_River paw Scouts|r和|cRXP_ENEMY_ Riverpav Mongrels|r。为|T132942:0|t[|cRXT_FRIENDLY_Ferocious Idol|r]掠夺它们
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
    .mob Riverpaw Mongrel
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >>|cRXP_WARN_equp the |r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol |r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_从|r|T132152:0|t[Rip]|cRXP_WARN_or|r|T132122:0|t[Rake]|cRXP_WARN_to类人身上获得20次流血伤害，然后使用|r|T232942:0|t[|cRXP-FRIENDLY_Ferocious Idol |r]|cRX P_WARN_gain学习|r|T236167:0|t[野蛮咆哮]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 太阳火-6（Teldrassil）
#title Sunfire

step << Druid
    #season 2
    .goto Teldrassil,52.831,78.731,20,0
    .goto Teldrassil,52.988,80.086,15,0
    .goto Teldrassil,52.831,78.731
    >>|cRXP_WARN_在巨大的树枝上，你会看到3|r|cRXP_ENEMY_Lunar Stones|r
    >>|cRXP_WARN_投掷|r|T136096:0|t[月火]|cRXP_WARN_在所有3个|r|cRXP-ENEMY_月石|r|cRXP_WARN_在树枝上，然后在随后产生的箭头位置掠夺箱子|r
    .collect 206989,1 -- Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r]|cRXP_WARN_列车|r|T236216:0|t[太阳火]
    .use 206989
    .itemcount 206989,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 花边-10（莫丹湖）
#title Lacerate

step << Druid
    #season 2
    .goto Loch Modan,40.371,39.404,10,0
    .goto Loch Modan,39.467,39.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡拉·深水|r
    >>|cRXP_BUY_BUY a|r|T237270:0|t[彩虹鳍Albacore Chum]
    .collect 208855,1 -- Rainbow Fin Albacore Chum (1)
    .target Khara Deepwater
    .train 416049,1
step << Druid
    #season 2
    .goto Loch Modan,46.6,35.6
    .use 208855 >>|cRXP_WARN_使用|r|T237270:0|t[彩虹鳍Albacore Chum]|cRXP_WARN_on a|cRXP_ENEMY_Young Threshadon|r接收|r|T134419:0|t[|cRXP-FRIENDLY_Rune of Lacerate |r]
    .collect 208687,1 -- Rune of Lacerate (1)
    .target Young Threshadon
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate |r]|cRXP_WARN_to train|r|T132131:0|t[Lacerate]
    .use 208687
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 怒怒之怒-4（马尔戈）
#title Fury of Stormrage


    --Rune of Fury of Stormrage

step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .accept 77648 >>Accept Relics of the Tauren
    .trainer >>训练你的法术。确保您学习|T136096:0|t[Moonfire]
    .target Gart Mistrunner
step << Druid
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>为|T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]掠夺|cRXP_PICK_Bristleback Loot Cache|r
    .collect 208414,1,77648,1 --Lunar Idol (1)
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >>|cRXP_WARN_equp the |r|T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_在敌人受到|r|T136096:0|t[月火]的折磨时杀死敌人6次，获得|r|T237556:0|t]的叠加值
    >>|cRXP_WARN_一旦你在6次击杀后获得|r|T136116:0|t[灵感]|cRXP_WARN_buff，使用你刚刚装备的|r|T134903:0|t[|cRXP-FRIENDLY_Lunar Idol |r]|cRX P_WARN_again|r
    .complete 77648,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 77648 >>Turn in Relics of the Tauren
    .target Gart Mistrunner

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Mangle - 10 (Mulgore)
#title Mangle


    --Rune of Mangle

step
    #season 2
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    .goto Mulgore,43.78,10.96
    >>杀死|cRXP_ENEMY_Flatland Prowlers |r和|cRXX_ENEMY_Prairie Wolf Alphas|r。掠夺它们|T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step
    #season 2
    .equip 18,206954 >>|cRXP_WARN_equp the |r|T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .use 206954
    .train 410025,1
step
    #completewith next
    +|cRXP_WARN_保持50+愤怒至少60秒，以学习|r|T132135:0|t[Mangle]
step
    #season 2
    .train 410025 >>|cRXP_WARN_使用|r|T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]|cRXP-WARN_to train|r|T132135:0|t[Mangle]
    .use 206954
    .itemcount 206954,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Sunfire - 5 (Mulgore)
#title Sunfire


    --Rune of Sunfire

step
    #season 2
    .goto Mulgore,35.72,69.57
    >>在三块|cRXP_ENEMY_月球石|r上铸造|T136096:0|t[月火]。石头之间会出现一个箱子
    >>打开|cRXP_PICK_Lunar胸脯|r以获取|T134419:0|t[|cRXP-FRIENDLY_Rune of the Sun |r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step
    #season 2
    .train 416044 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r]|cRXP_WARN_列车|r|T236216:0|t[太阳火]
    .use 206989
    .itemcount 206989,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 生命之花-10（Mulgore）
#title Lifebloom

    --Rune of Lifebloom

step
    #season 2
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adventurer's Spirit|r outside of the Venture Co. Mine
    >>|cRXP_WARN_其他玩家需要单击门户。掠夺|r|cRXP_FRIENDLY_Adventurer的精神|r|cRXP_WARN_afterwards for |r|T134419:0|t[|cRXP_FRIENDLY_Rune of Life |r]
    .collect 206970,1 --Rune of Life (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410033,1
step << Druid
    #season 2
    .train 410033 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Life
    .use 206970
    .itemcount 206970,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 活种子-8（Mulgore）
#title Living Seed

    --Rune of Living Seed

step
    #season 2
    .goto Mulgore,58.88,51.18,50,0
    .goto Mulgore,50.94,45.98,50,0
    .goto Mulgore,44.95,46.88,50,0
    .goto Mulgore,39.88,51.61,50,0
    .goto Mulgore,41.36,63.26
    >>织机|T133941:0|t|cRXP_Loot_草原花|r在地上
    >>|cRXP_WARN_这些东西遍布马尔戈尔|r
    .collect 206469,3 -- Glade Flower (3)
    .train 416050,1
step
    #season 2
    .use >>|cRXP_WARN_使用|r|T133941:0|t|cRXP_LOOT_草原花|r|cRXP_WARN_将它们组合成|r|T132767:0|t[草原皇冠]
    .collect 206466,1 -- Prairie Crown (1)
    .train 416050,1
step
    #season 2
    #completewith next
    .goto Mulgore,37.70,49.52
    .cast 414724 >>|cRXP_WARN_在|cRXP_ENEMY_Wooden Effy|r上使用|r|T132767:0|t[Glade Crown]|cRXP_WARN_on。这将产生|r|cRXX_ENEMY_Unleashed Nature Spirit|r
    >>|cRXP_WARN_你可能需要等几分钟才能让它重生|r
    .use 206466
    .mob Wooden Effigy
    .train 416050,1
step
    #season 2
    .goto Mulgore,37.70,49.52
    >>杀死|cRXP_ENEMY_Unleashed Nature Spirit|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Natural Potential|r]掠夺它
    >>|cRXP_WARN_This is a level 7 elite|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step
    #season 2
    .train 416050 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_自然势调整|r]|cRXP_WARN_训练|r|T136152:0|t[活种子]
    .use 206963
    .itemcount 206963,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 系带-15（The Barrens）
#title Lacerate

    --Rune of Lacerate

step
    #season 2
    #completewith next
    .subzone 386 >>前往被遗忘的水池
step
    #season 2
    .goto The Barrens,44.73,22.18
    >>将|cRXP_PICK_遗弃的Snapjaw巢|r在地上掠夺|T294479:0|t[|cRXP _Loot_遗弃的Snapjaw蛋|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    #season 2
    #completewith next
    .subzone 387 >>前往卢什沃特绿洲
step
    #season 2
    .goto The Barrens,48.32,40.25
    >>打开地面上的|cRXP_PICK_Empty Snapjaw Nest|r进行|T134419:0|t[|cRXP-FRIENDLY_Rune of Lacerate|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step
    #season 2
    .train 416049 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate |r]|cRXP_WARN_to train|r|T132131:0|t[Lacerate]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 野蛮咆哮-15（荒原）
#title Savage Roar

    --Rune of Savage Roar

step
    #season 2
    #sticky
    +|cRXP_WARN_注意：你必须达到20级才能装备|r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol |r]|cRXP_WARN_这是学习|r|T236167:0|t[野蛮咆哮]所必需的
    .xp 20,1
    .train 407988,1
step
    #season 2
    .goto The Barrens,43.57,23.48,50,0
    .goto The Barrens,43.84,21.47,50,0
    .goto The Barrens,45.04,20.04,50,0
    .goto The Barrens,46.60,22.98,50,0
    .goto The Barrens,45.71,25.63,50,0
    .goto The Barrens,43.55,26.39,50,0
    .goto The Barrens,42.21,26.92,50,0
    .goto The Barrens,42.02,24.68,50,0
    .goto The Barrens,43.57,23.48
    >>杀死|cRXP_ENEMY_Kolkar牧马人|r和|cRXD_ENEMY_ Kolkar风暴者|r。掠夺它们一个|T134237:0|t[|cRXP_Loot_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #season 2
    #loop
    .goto The Barrens,44.3,37.7,0
    .goto The Barrens,43,23.5,0
    .goto The Barrens,52.7,41.8,0
    .goto The Barrens,44.3,37.7,20,0
    .goto The Barrens,43,23.5,20,0
    .goto The Barrens,52.7,41.8,20,0
    >>打开一个|cRXP_PICK_Kolkar Booty|r箱子|T132942:0|t[|cRXP-FRIENDLY_Ferocious Idol|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .train 407988,1
step
    #season 2
    .equip 18,208689 >>|cRXP_WARN_equp the |r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol |r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step
    #season 2
    .train 407988 >>|cRXP_WARN_从|r|T132152:0|t[Rip]|cRXP_WARN_or|r|T132122:0|t[Rake]|cRXP_WARN_to类人身上获得20次流血伤害，然后使用|r|T232942:0|t[|cRXP-FRIENDLY_Ferocious Idol |r]|cRX P_WARN_gain学习|r|T236167:0|t[野蛮咆哮]
    .use 208689
    .itemcount 208689,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 狂战士-28（千针）
#title Berserk

step
    #optional
    +|cRXP_WARN_您必须达到28级以上才能学习|r|T236149:0|t[狂暴]
    .xp >29,1
step
    #optional
    .train 424760,1
    .train 5209 >>|cRXP_WARN_您必须经过|r|T132117:0|t[挑战咆哮]|cRXP_WARN_trained才能获得|r|T236149:0|t[狂暴]|cRX P_WARN_run|r
step
    #completewith next
    .train 424760,1
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .aura 435081 >>|cRXP_WARN_站在|cRXP_PICK_Beasty Effy|r雕像旁领取|r|T134912:0|t[野兽雕像]|cRXP_WARN_buff|r
step
    #completewith next
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .cast 5209 >>|cRXP_WARN_进入|r|T132276:0|t[熊形态]|cRXP_WARN_施放|r|T132117:0|t[挑战咆哮]|cRX _ WARN_召唤|r|cRX _ENEMY_Zai'enki|r|c RX _ WARN_（28级精英）|r
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    >>杀死|cRXP_ENEMY_Zai'enki|r。为|T134912:0|t[|cRXP-FRIENDLY_Idol of the Heckler |r]掠夺它
    .collect 213594,1
    .mob Zai'enki
step
    .train 424760,1
    .equip 18,213594 >>装备|T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler |r]
    .use 213594
step
    #title Gain 5x |T237556:0|t[Building Inspiration]
    .itemcount 213594,1
    .train 424760,1
    .aura 408828 >>|cRXP_WARN_施法|r|T132117:0|t[挑战咆哮]|cRXP_WARN_to嘲讽至少两个敌人并杀死其中一个敌人，同时他们拥有|r|T132117:0| t[挑战怒吼]|cRXP_WARN_debuff。这将为您提供一堆|r|T237556:0|t[建筑灵感]|cRXP_WARN_buff。重复此操作5次，直到获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    *|cRXP_WARN_It's recommened you fight one mob and almost kill it, then pull a 2nd and cast|r |T132117:0|t[Challenging Roar]|cRXP_WARN_, then kill the low health mob. You will lose all stacks of|r |T237556:0|t[Building Inspiration] |cRXP_WARN_if you die|r
step
    .itemcount 213594,1
    .use 213594
    .train 424760 >>|cRXP_WARN_使用|r|T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler |r]|cRXP-WARN_to train|r|T236149:0|t[Berserk]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name Dreamstate-33（Desolace）
#title Dreamstate

step
    #completewith next
    .train 410060,1
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 410060,1
    #loop
    .goto Desolace,70.6,39.8,0
    .goto Desolace,70.6,39.8,25,0
    .goto Desolace,69.2,46.6,25,0
    .goto Desolace,68.6,52.6,25,0
    >>杀死|cRXP_ENEMY_Kolkars|r并掠夺它们|T134187:0|t[干燥种子荚]
    .collect 213574,1
    .mob Kolkar Centaur
    .mob Kolkar Mauler
    .mob Kolkar Scout
    .mob Kolkar Windchaser
step
    .train 410060,1
    >>在水中游泳，等待豆荚变成|T134208:0|t[莎草球茎]
    .goto Desolace,70.8,71.8
    .collect 206966,1
step
    .goto Desolace,75.5,20.7
    .train 410060 >>点击|cRXP_PICK_Sandy Loam|r播种学习|T136090:0|t[梦想状态]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name Nourish - 35 (Azeroth)
#title Nourish

-- Probably needs better waypoints to avoid some dangerous mobs or anything else that could kill you

step
    #completewith next
    .train 410059,1
    .goto Dustwallow Marsh,30.2,47.3,200,0
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
step
    .train 410059,1
    >>杀死|cRXP_ENEMY_Rotting Ancient|r。掠夺它以获得|T134217:0|t[腐烂的种子]|cRXP_WARN_在包里点击它|r
    #loop
    .goto Dustwallow Marsh,43.6,41.0,40,0
    .goto Dustwallow Marsh,40.91,43.52,40,0
    .collect 212693,1
    .accept 79348 >>Accept The Lost Ancient
    .mob Rotting Ancient
step
    #completewith next
    .train 410059,1
    .zone Moonglade >>前往: |cRXP_PICK_月光林地|r
step
    #completewith next
    +|cRXP_WARN_你必须严格遵守即将到来的每一条指示。死亡、分阶段、召唤、使用传送或获得“荣誉目标”增益都可能导致任务失败（你失去了增益），所以不要使用任何飞行点进入有争议的区域。|r
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orokai|r
    *|cRXP_WARN_Accepting the next quest start a 1 hour timer. Make sure that you can commit the whole hour.|r
    .turnin 79348 >>Turn in The Lost Ancient
    .accept 79377 >>Accept The Lost Saplings
    .timer 3600,Water Duration
    .target Orokai
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德拉尔|r
    .goto Moonglade,48.11,67.37
    .fly Auberdine >>飞往奥伯丁
    .target Sindrayl
step << Alliance
    .train 410059,1
    .goto Darkshore,36.90,44.13,10,0
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
step << Alliance
    #completewith next
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step << Alliance
    .train 410059,1
    >>在|cRXP_FRIENDLY_Ancient Sapling|r上使用|T132852:0|t[精灵之水]
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Alterac Mountains >>前往: |cRXP_PICK_奥特兰克山脉|r
step << Alliance
    .train 410059,1
    >>在|cRXP_FRIENDLY_Ancient Sapling|r上使用|T132852:0|t[精灵之水]
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Western Plaguelands >>前往: |cRXP_PICK_西瘟疫之地|r
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比比尔法兹|r
    .goto Western Plaguelands,42.93,85.07
    .fly Stormwind >>飞到暴风城
    .target Bibilfaz Featherwhistle
step << Alliance
    #completewith AncientSapling3Alliance
    .goto Deadwind Pass,32.5,35,7,50,0
    .zone Deadwind Pass >>前往: |cRXP_PICK_逆风小径|r
step << Alliance
    #completewith AncientSapling3Alliance
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step << Alliance
    #label AncientSapling3Alliance
    .train 410059,1
    >>在|cRXP_FRIENDLY_Ancient Sapling|r上使用|T132852:0|t[精灵之水]
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Alliance
    #completewith next
    .goto Swamp of Sorrows,3.5,61.3,50,0
    .goto Deadwind Pass,32.3,36.0,50,0
    .goto Duskwood,44.6,87.3,50,0
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step << Alliance
    .train 410059,1
    >>在|cRXP_FRIENDLY_Ancient Sapling|r上使用|T132852:0|t[精灵之水]
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑟恩·草风|r
    .goto Moonglade,44.29,45.86
    .skipgossip 11798,1
    .zone Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Bunthen Plainswind
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .goto Thunder Bluff,47.00,49.82
    .fly Ratchet >>飞到棘轮
    .target Tal
step << Horde
    .goto The Barrens,63.677,38.618
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step << Horde
    .train 410059,1
    >>在|cRXP_FRIENDLY_Ancient Sapling|r上使用|T132852:0|t[精灵之水]
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    #completewith next
    .goto Duskwood,44.0,66.4,100,0
    .goto Duskwood,89,4,41.2,50,0
    .goto Deadwind Pass,58.3,42.0,50,0
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step << Horde
    .train 410059,1
    >>在|cRXP_FRIENDLY_Ancient Sapling|r上使用|T132852:0|t[精灵之水]
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Horde
    .goto Swamp of Sorrows,46.10,54.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷依克|r
    .fly Undercity >>飞到地下城
	.target Breyk
step << Horde
    .goto Tirisfal Glades,61.6,62.2,50,0
    .goto Tirisfal Glades,54.7,73.0,50,0
    .goto Silverpine Forest,66.7,8.8,50,0
    .zone Alterac Mountains >>|cRXP_WARN_前往: |cRXP_PICK_奥特兰克山脉|r|r
step << Horde
    .train 410059,1
    >>在|cRXP_FRIENDLY_Ancient Sapling|r上使用|T132852:0|t[精灵之水]
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
    step << Horde
    #completewith next
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step << Horde
    .train 410059,1
    >>在|cRXP_FRIENDLY_Ancient Sapling|r上使用|T132852:0|t[精灵之水]
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step
    #completewith next
    .train 410059,1
    .zone Moonglade >>前往: |cRXP_PICK_月光林地|r
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orokai|r
    .turnin 79377 >>Turn in The Lost Saplings
    .target Orokai
step
    .itemcount 213594,1
    .use 213594
    .train 410059 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Nourishing|r]学习|T236162:0|t[Nourish]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#name 风化-45（艾泽拉斯）

step
    #optional
    .train 431468,1
    .train 2728 >>|cRXP_WARN_您必须经过|r|T135952:0|t[移除诅咒]|cRXP_WARN_trained才能获得|r|T134222:0|t[褪色]|cRXP_WARN_rune|r
step
    #optional
    .train 431468,1
    .train 8946 >>|cRXP_WARN_您必须经过|r|T136067:0|t[治毒]|cRXP_WARN_trained才能获得|r|T134222:0|t[变色]|cRXP_WARN_rune|r
step
    #optional
    .train 431468,1
    .train 16914 >>|cRXP_WARN_您必须经过|r|T136018:0|t[飓风]|cRXP_WARN_trained才能获得|r|T134222:0|t[Efference]|cRXP_WARN_rune|r
step
    #optional
    .train 431468,1
    .train 740 >>|cRXP_WARN_您必须经过|r|T136107:0|t[平静]|cRXP_WARN_trained才能获得|r|T134222:0|t[消散]|cRXP_WARN_rune|r
step
    #optional
    .train 431468,1
    .train 768 >>|cRXP_WARN_您必须经过|r|T132115:0|t[Cat Form]|cRXP_WARN_trained才能获得|r|T134222:0|t[Efflorence]|cRXP_WARN_run|r
step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_inside the tower|r
    .goto Feralas,57.2,69.0
    .accept 81924 >>Accept Wisdom of the Guardians
    .target Tyrisius
step
    .train 431468,1
    .aura 446488 >>点击|cRXP_PICK_典狱长神殿|r获得|T132145:0|t[典狱长职责]buff
    .goto Feralas,58.7,52.4
step
    .train 431468,1
    #sticky
    #label MarkoftheWarden
    .aura 446467 >>按照以下步骤获得|T236157:0|t[典狱长标记]buff
step
    .train 431468,1
    #loop
    .goto Feralas,61.8,55.6,35,0
    .goto Feralas,58.6,66.2,35,0
    >>攻击一个|cRXP_ENEMY_Gordunni Warlock|r.|cRXP-WARN_Wait，直到他们对你使用|r|T136121:0|t[Srink]|cRXP_WARN_on|r 
    .cast 2728 >>|cRXP_WARN_使用|r|T135952:0|t[移除诅咒]|cRXP_WARN_to移除|r|T136121:0|t[收缩]|cRXP_WARN_debuff|r
    .mob Gordunni Warlock
step
    .train 431468,1
    .goto Feralas,73.8,61.6
    >>攻击一只|cRXP_ENEMY_Zukk’ash Wasp|r.|cRXP-WARN_Wait，直到它们对你使用|r|T136016:0|t[毒药]|cRXP_WARN_on|r
    .cast 526 >>|cRXP_WARN_使用|r|T135952:0|t[治疗毒药]|cRXP_WARN_too移除|r|T136016:0|t[毒药]|cRXP_WARN_debuff|r
    .mob Zukk'ash Wasp
step
    #requires MarkoftheWarden
    .train 431468,1
    >>|cRXP_WARN_点击/运行到|r|cRXP_PICK_典狱长神殿|r|cRXP_WARN_to召唤|cRXP _ENEMY_Treant化身|r|r
    >>杀死|cRXP_ENEMY_Treant化身|r。
    .complete 81924,1 --Guardian of Feralas
    .goto Feralas,58.7,52.4
    .mob Treant Avatar
step
    .train 431468,1
    #completewith next
    .zone Azshara >>前往: |cRXP_PICK_艾萨拉|r
step
    .train 431468,1
    .goto Azshara,34.6,49.0
    .gossip 441947,0 >>单击|cRXP_PICK_野兽神殿|r
    *|cRXP_WARN_Skip this step manually if it doesn't complete|r
step
    .train 431468,1
    >>杀死|cRXP_ENEMY_Apa'ro之子|r|cRXP_WARN_近战能力（变成猫或熊形态）|r。为|T134338:0|t[|cRXP-Loot_Scred Stag Heart|r]掠夺它
    .collect 221326,1
    .mob Child of Apa'ro
step
    #completewith next
    .itemcount 221362,1
    .use 221326
    .goto Azshara,34.6,49.0
    .cast 446509 >>|cRXP_WARN_使用|r|T134338:0|t[|cRXP_LOOT_Sacred Stag Heart|r]|cRXP_WARN_next到|r|cRX_PICK_野兽神殿|r|cRXP_WARN_to召唤|r| cRXP_ENEMY_Hippogryph化身|r
    .train 431468,1
step
    .train 431468,1
    >>杀死|cRXP_ENEMY_Hippogryph化身|r
    .goto Azshara,34.6,49.0
    .complete 81924,3 --Guardian of Azshara
    .mob Hippogryph Avatar
step
    .train 431468,1
    #completewith next
    .zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
    .train 431468,1
    .goto The Hinterlands,66.2,53.1
    .gossip 441946,0 >>点击山顶的|cRXP_PICK_月亮神殿|r
    *|cRXP_WARN_Skip this step manually if it doesn't complete|r
step
    .train 431468,1
    .cast 740 >>|cRXP_WARN_Use|r|T136107:0|t[宁静]
step
    .train 431468,1
    .cast 16914 >>|cRXP_WARN_Use|r|T136018:0|t[飓风]
step
    .train 431468,1
    >>杀死|cRXP_WARN_Monokin化身|r
    .goto The Hinterlands,66.2,53.1
    .complete 81924,2 --Guardian of the Hinterlands
    .mob Moonkin Avatar
step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_inside the tower|r
    .goto Feralas,57.2,69.0
    .turnin 81924 >>Turn in Wisdom of the Guardians
    .target Tyrisius
step
    .itemcount 220360,1
    .use 220360
    .train 431468 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Efforcence|r]学习|T134222:0|t[Efforcense]
    
]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune和书籍指南
-- #subgroup Bracers
-- #name 强化疯狂再生
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#name 大风-40（费拉拉）

step
    #completewith NamidaGrimtotem
    .train 431451,1
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
step
    #label NamidaGrimtotem
    .train 431451,1
    >>杀死|cRXP_ENEMY_Namida Grimtomet|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of the Windstorm|r]掠夺她
    .goto Feralas,66.8,38.6
    .collect 220754,1 
    .mob Namida Grimtotem
step
    .itemcount 220754,1
    .use 220754
    .train 431451 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Windstorm|r]|cRXP_WARN_to train|r|T236154:0|t[Gale Winds]

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#name 艾露恩之火-45（阿扎拉）

step
    #completewith next
    .zone Azshara >>前往: |cRXP_PICK_艾萨拉|r
    .train 416051,1
step
    --PERMOK: Check coordiantes
    .train 416051,1
    >>单击|cRXP_PICK_Traveller的背包|r以掠夺|T236229:0|t[|cRXP_loot_Field Medicine Kit |r]和|T133741:0|t[|cRXP-loot_Kelara的日志|r]
    .goto Azshara,20.61,61.97
    .collect 221018,1
    .collect 221017,1
step
    .train 416051,1
    --PERMOK: Fix coordiantes
    #loop
    .goto Azshara,20,65,30,0
    .goto Azshara,20,62,30,0
    .goto Azshara,21,61,30,0
    >>拾取3 |T134218:0|t[|cRXP_Pick_Satyrweed Samples|r]
    .collect 221019,3
step
    >>|cRXP_WARN_使用|r|T236229:0|t[|cRXP_LOOT_Field Medicine Kit
    .collect 221199,1
step
    .train 416051,1
    #loop
    .goto Azshara,16.0,49.6,30,0
    .goto Azshara,18.6,66.6,30,0
    .goto Azshara,21.0,56.2,30,0
    >>寻找带有|T136134:0|t[Satyr Corruption]debuff的|cRXP_ENEMY_Thunderhead Hyppogryph|r
    *|cRXP_WARN_If it has the debuff then it emits a green poison cloud|r.
    .cast 2637 >>在|cRXP_ENEMY_Thunderhead Hyppogryph|r上使用|T136090:0|t[Hybernate]
    .mob Thunderhead Hyppogryph
step
    .train 416051,1
    >>|cRXP_WARN_在|cRXP_ENEMY_Thunderhead Hyppogryph|r上使用|r|T236868:0|t[Satyrweed Tincte]|cRXP_WARN_移除|r|T136134:0|t[Satyr Corruption]|cRXP_WARN_debuff|r并获得|T134419:0|t[|cRXT_FRIENDLY_Rune of the Moon Godden|r] 
    .itemcount 221199,1
    .use 221199
    .collect 221020,1
    .mob Thunderhead Hyppogryph
step
    .itemcount 221020,1
    .use 221020
    .train 416051 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Windstorm|r]|cRXP_WARN_to train|r|T236163:0|t[Elune’s Fires]
]]) 

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune和书籍指南
-- #subgroup Helmet
-- #name Gore
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#name 改良树皮-44（Tanaris）

step
    #optional
    .train 431468,1
    .train 22812 >>|cRXP_WARN_您必须经过|r|T136097:0|t[树皮]|cRXP_WARN_trained才能获得|r|T136097:0 |t[改良树皮]|cRXP_WARN_rune|r
step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
    .train 431449,1
step
    #loop
    .goto Tanaris,28.2,63.0,40,0
    .goto Tanaris,28.2,68.6,40,0
    .goto Tanaris,30.8,63.4,40,0
    >>杀死|cRXP_ENEMY_Thistle灌木露水收集器|r和|cRXD_ENEMY_ Thistle灌木生根器|r。为|T136061:0|t[|cRXP_Loot_Idoll of the Raging Shambler|r]掠夺它们
    .collect 220915,1
    .mob Thistleshrub Dew Collector
    .mob Thistleshrub Rootshaper
step
    .equip 18,220915 >>|cRXP_WARN_equp the |r|T136061:0|t[|cRXP_FRIENDLY_Idol of the Raging Shambler|r]
step
    .aura 408828 >>在|T136097:0|t[树皮]的作用下，用自然法术（如愤怒）杀死|cRXP_WARN_五个敌人|r 
    *|cRXP_WARN_Use |T136097:0|t[Barkskin] when the enemy is at low HP and finish him with a Wrath or another Nature spell|r
step
    .itemcount 221020,1
    .use 221020
    .train 416051 >>|cRXP_WARN_使用|r|T136061:0|t[|cRXP_FRIENDLY_Idol of the Raging Shambler|r]|cRXP_WARN_to train|r|T136097:0|t[改良树皮]
]])
