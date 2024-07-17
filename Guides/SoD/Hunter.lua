RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 奇美拉射击-2（邓·莫洛）
#title Chimera Shot


step
    +|cRXP_WARN_你应该至少达到2级才能获得|r|T133816:0|t[雕刻手套-奇美拉射击]|cRXP_WARN_in Dun Morogh|r
    .train 410121,1
    .xp >2,1
step
    #completewith Rune
    #label Dun1
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
    .train 410121,1
step
    #optional
    #requires Dun1
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >>进入霜窟
    .train 410121,1
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>朝着内部的|cRXP_PICK_Frostmane织机缓存|r行进
    .train 410121,1
step
    #label Rune
    .goto Dun Morogh,30.773,80.063
    >>打开内部地面上的|cRXP_PICK_Frostmane Loot Cache|r。为|T134419:0|t|cRXP_Loot_[奇美拉符文]|r掠夺它
    .collect 206168,1 -- Rune of the Chimera (1)
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[嵌合体符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-嵌合体射击]
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Chimera射击-3（Teldrassil）
#title Chimera Shot

step
    +|cRXP_WARN_您必须至少达到3级才能单独获得|r|T133816:0|t[雕刻手套-Chimera射击]|cRXP_WARN_in Teldrassil|r
    .train 410121,1
    .xp >3,1
step
    #completewith Rune
    #label Teld1
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
    .train 410121,1
step
    #optional
    #requires Teld1
    #label ShadowCave1
    #completewith Rune
    .goto 1438,56.694,31.485
    .subzone 25 >>进入影线洞
    .train 410121,1
step
    #optional
    #requires ShadowCave1
    #completewith Rune
    .goto 1438,56.137,24.971,15,0
    .goto 1438,55.785,25.341,15,0
    .goto 1438,56.137,24.971,15,0
    .goto 1438,56.358,25.242,20,0
    .goto 1438,56.654,26.430,50,0
    .goto 1438,56.874,26.323,10 >>前往|cRXP_ENEMY_Githyiss内部的邪恶|r
    .train 410121,1
step
    #label Rune
    .goto Teldrassil,56.68,26.12
    >>杀死|cRXP_ENEMY_Githyiss the Vile |r。为|T134419:0|t|cRXP-Loot_[奇美拉符文]|r掠夺她
    .collect 206168,1 -- Rune of the Chimera (1)
    .mob Githyiss the Vile
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[嵌合体符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-嵌合体射击]
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 爆炸射击-5（邓莫罗）
#title Explosive Shot

step
    +|cRXP_WARN_你应该至少达到5级才能获得|r|T133816:0|t[雕刻手套-爆炸射击]|cRXP_WARN_in Dun Morogh|r
    .train 410123,1
    .xp >5,1
step
    #completewith Rune
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
    .train 410123,1
step
    #loop
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>杀死|cRXP_ENEMY_Fyodi|r。掠夺他获得|T134419:0|t|cRXP_Loot_[爆炸射击符文]|r
    >>|cRXP_WARN_尽管|cRXP_ENEMY_Fyodi|r显示为精英，但他的健康、伤害和护甲值都是标准暴徒的|r
    >>|cRXP_WARN_当他施放|r|T132337:0|t[Charge]|cRXP_WARN_（自瞬：增加移动速度3秒，命中时造成35-80近战伤害。仅在射程内施放）时要小心|r
    >>|cRXP_WARN_注：|r|T134419:0|t|cRXP_LOOT_[炸药射击符文]|r|cRXP_WARN_can还可以放下Dun Morugh的每一个稀有暴徒，以及|cRXD_ENEMY_Vagash|r、|cRXT_ENEMY_Mangcaw|r和|r|cRXP_ENEMY_Old Icebeard|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Fyodi
    .train 410123,1
    .xp >10,1
step
    #label Rune
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>杀死|cRXP_ENEMY_Vagash|r。掠夺他获得|T134419:0|t|cRXP_Loot_[爆炸射击符文]|r
    >>|cRXP_WARN_注：|r|T134419:0|t|cRXP_LOOT_[炸药射击符文]|r|cRXP_WARN_can还可以放下Dun Morugh的每一个稀有暴徒，以及|cRXD_ENEMY_Fyodi|r、|cRXT_ENEMY_Mangcaw|r和|r|cRXP_ENEMY_Old Icebeard|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Vagash
    .train 410123,1
    .xp <10,1
step
    .train 410123 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[爆炸射击符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-爆炸射击]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 爆炸射击-2（Durotar）
#title Explosive Shot


    --Rune of Explosive Shot

step
    #season 2
    .goto Durotar,40.60,66.80
    >>杀死|cFFFF5722Sarkoth |r。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r]
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Sarkoth
    .train 410123,1
step
    #season 2
    .train 410123 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Chimera Shot-2（Durotar）
#title Chimera Shot


    --Rune of Chimera Shot

step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25基沙|r
    .accept 77590 >>Accept Rugged Terrain << Troll Hunter
    .accept 77584 >>Accept Hunt for the Rune << Orc Hunter
    .target Jen'shan
step
    #season 2
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>杀死|cFFFF5722 Scorpid Workers |r。掠夺他们|T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Scorpid Worker
    .train 410121,1
step
    #season 2
    .train 410121 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of the Chimera|r]
    .use 206168
    .itemcount 206168,1
step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25基沙|r
    .turnin 77590 >>Turn in Rugged Terrain << Troll Hunter
    .turnin 77584 >>Turn in Hunt for the Rune << Orc Hunter
    .target Jen'shan
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 奇美拉射击-2（穆戈尔）
#title Chimera Shot


    --Rune of Chimera Shot

step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .accept 77649 >>Accept A Hunter's Strength
    .target Lanka Farshot
step
    #season 2
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34
    >>杀死|cRXP_ENEMY_Bristleback Battleboars|r。掠夺它们|T134419:0|t[|cRXP_FIRENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Bristleback Battleboar
    .train 410121,1
step
    #season 2
    .train 410121 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of the Chimera|r]
    .use 206168
    .itemcount 206168,1
step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .turnin 77649 >>Turn in A Hunter's Strength
    .target Lanka Farshot
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 神枪手大师-6（杜洛塔尔）
#title Master Marksman


    --Rune of Master Marksman

step
    #season 2
    .goto Durotar,40.61,52.19
    >>铸造|T132212:0|t[Hunter's Mark]在|cRXP_ENEMY_Rustling Bush|r上
    >>杀死产生的|cRXP_ENEMY_Razomane Poacher|r。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 神枪手大师-6（马尔戈）
#title Master Marksman


    --Rune of Master Marksman

step
    #season 2
    .goto Mulgore,59.02,54.36
    >>铸造|T132212:0|t[Hunter's Mark]在|cRXP_ENEMY_Rustling Bush|r上
    >>杀死产生的|cRXP_ENEMY_Venture Co.Poacher|r。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 神枪手大师-6（邓·莫洛）
#title Master Marksman


    --Rune of Master Marksman

step
    #season 2
    .goto Dun Morogh,28.852,49.859
    >>铸造|T132212:0|t[Hunter's Mark]在|cRXP_ENEMY_Rustling Bush|r上
    >>杀死产生的|cRXP_ENEMY_Razomane Poacher|r。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 神枪手大师-6（Teldrassil）
#title Master Marksman


    --Rune of Master Marksman

step
    #season 2
    .goto Teldrassil,46.6,46.3
    >>铸造|T132212:0|t[Hunter's Mark]在|cRXP_ENEMY_Rustling Bush|r上
    >>杀死产生的|cRXP_ENEMY_Fallenrot Poacher|r。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name Flanking - 6 (Mulgore)
#title Flanking


    --Rune of Flanking

step
    #season 2
    .goto Mulgore,41.41,66.32,60,0
    .goto Mulgore,38.66,66.29,60,0
    .goto Mulgore,37.63,63.00,60,0
    .goto Mulgore,36.74,58.53
    >>杀死|cRXP_ENEMY_Plainstrider|r和|cRXP_ENEMY_Swoops|r。掠夺它们|T134025:0|t[|cRXD_Loot_Mulgore鸟肉|r]
    .collect 205961,1 --Mulgore Bird Meat (1)
    .mob Elder Plainstrider
    .mob Adult Plainstrider
    .mob Swoop
    .mob Wiry Swoop
    .mob Taloned Swoop
    .train 425762,1
step
    #season 2
    .goto Mulgore,35.22,57.42
    >>使用屠体处的|T134025:0|t[|cRXP_LOOT_Multgore鸟肉|r]召唤|cRXT_ENEMY_Mokwa|r
    >>杀死他并掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Mokwa
    .use 205961
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_侧击路线|r]|cRXP-WARN_训练|r|T132175:0|t[侧击]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name Flanking - 6 (Durotar)
#title Flanking


    --Rune of Flanking

step
    #season 2
    .goto Durotar,53.43,48.62,70,0
    .goto Durotar,51.77,56.01,70,0
    .goto Durotar,54.04,67.14
    >>杀死|cRXP_ENEMY_Dire Mottled Boar|r。掠夺它们|T134026:0|t[|cRXP-Loot_Durotar Pig Meat|r]
    .collect 207590,1 --Durotar Pig Meat (1)
    .mob Dire Mottled Boar
    .train 425762,1
step
    #season 2
    .goto Durotar,68.67,71.68
    .use 207590 >>使用胴体处的|T134026:0|t[|cRXP_LOOT_Durotar Pig Meat|r]召唤|cRXT_ENEMY_Raluk|r
    >>杀死他并掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Raluk
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_侧击路线|r]|cRXP-WARN_训练|r|T132175:0|t[侧击]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Carve - 10 (Durotar)
#title Carve


    --Rune of Carve

step
    #season 2
    #completewith n`t
    +|cRXP_WARN_你需要学会|r|T132164:0|t[驯服野兽]|cRXP_WARN_to才能获得此符文|r
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
    >>杀死|cRXP_ENEMY_Razormane Quilboars|r。掠夺它们|T134743:0|t[|cRXP-Loot_Adder费洛蒙|r]
    .collect 207631,1 --Adder Pheromone (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 425758,1
step
    #season 2
    #completewith next
    +找到一个|cRXP_ENEMY_Adder|r（小动物）。使用您的|T134743:0|t[|cRXP_LOOT_Adder费洛蒙|r]并施放|T132164:0|t[驯服野兽]
    >>|cRXP_WARN_它们更容易在剃刀山周围找到|r
    .use 207631
    .unitscan Adder
step
    #season 2
    .goto Durotar,52.15,44.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzil|r
    >>将|cRXP_ENEMY_Adder|r发送到接收|T134419:0|t[|cRXP-FRIENDLY_Rune of Carve|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Razzil
    .train 425758,1
step
    #season 2
    .train 425758 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .use 206032
    .itemcount 206032,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Carve - 10 (Mulgore)
#title Carve


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_你需要学会|r|T132164:0|t[驯服野兽]|cRXP_WARN_to才能获得此符文|r
step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>杀死|cRXP_ENEMY_Palemane Gnolls|r。掠夺它们|T134419:0|t[|cRXD_Loot_Prairie Dog Musk|r]
    .collect 205995,1 --Prairie Dog Musk (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 425758,1
step
    #season 2
    #completewith next
    +找到一只|cRXP_ENEMY_Prairie Dog|r（小动物）。使用您的|T134419:0|t[|cRXP_LOOT_Prairie Dog Musk|r]并施放|T132164:0|t[驯服野兽]
    >>|cRXP_WARN_沿着血蹄村以南/以东的道路更容易找到它们|r
    .use 205995
    .unitscan Prairie Dog
step
    #season 2
    .goto Mulgore,46.19,60.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takoda|r
    >>将|cRXP_ENEMY_Prairie Dog|r交付至接收|T134419:0|t[|cRXP_FIRENDLY_Rune of Carve|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Takoda Sunmane
    .train 425758,1
step
    #season 2
    .train 425758 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .use 206032
    .itemcount 206032,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Carve - 10 (Dun Morogh)
#title Carve


    --Rune of Carve
step
    #season 2
    #completewith next
    +|cRXP_WARN_你需要学会|r|T132164:0|t[驯服野兽]|cRXP_WARN_to才能获得此符文|r
step
    #season 2
    #loop
    .goto Dun Morogh,68.2,56.2,20,0
    .goto Dun Morogh,68.8,58.2,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,72.6,52.6,20,0
    >>杀死|cRXP_ENEMY_Rockjaw Troggs|r。掠夺它们|T134419:0|t[|cRXP-Loot_兔子麝香。|r]
    .collect 208180,1 --Rabbit Musk (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .mob Rockjaw Backbreaker
    .mob Rockjaw Ambusher
    .train 425758,1
step
    #season 2
    #completewith next
    .goto Dun Morogh,44.4,56.2,20,0
    .goto Dun Morogh,44.8,59.8,20,0
    .goto Dun Morogh,47.4,54.4,20,0
    .goto Dun Morogh,49.2,46.0,20,0
    .goto Dun Morogh,47.0,44.6,20,0
    .goto Dun Morogh,46.8,47.8
    >>在|cRXP_ENEMY_Rabbit|r|cRXP_WARN_上使用|T134419:0|t[Rabbit Musk]不要丢弃当前宠物|r
    .use 208180
    .unitscan Rabbit
step
    #season 2
    .goto Dun Morogh,63.40,50.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toby|r
    >>将|cRXP_ENEMY_Rabit|r交付至接收|T134419:0|t[|cRXP-FRIENDLY_Rune of Carve|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Toby
    .train 425758,1
step
    #season 2
    .cast 402265 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Carve - 10 (Teldrassil)
#title Carve


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_你需要学会|r|T132164:0|t[驯服野兽]|cRXP_WARN_to才能获得此符文|r
step
    #season 2
    .goto Teldrassil,46.2,51.2,20,0
    .goto Teldrassil,46.8,54.6,20,0
    .goto Teldrassil,48.8,55.4,20,0
    .goto Teldrassil,71.0,58.0,20,0
    .goto Teldrassil,44.8,61.2
    >>杀死|cRXP_ENEMY_Gnarlpines|r。掠夺它们|T134419:0|t[|cRXP-Loot_Darl Musk|r]
    .collect 208607,1 --Deer Musk (1)
    .train 425758,1
    .mob Gnarlpine Augur
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Totemic
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Defender
    .mob Gnarlpine Avenger
    .mob Gnarlpine Shaman
step
    #season 2
    #completewith next
    .goto Teldrassil,42.2,71.6,20,0
    .goto Teldrassil,43.2,74.2,20,0
    .goto Teldrassil,47.6,74.0,20,0
    .goto Teldrassil,53.4,77.0,20,0
    .goto Teldrassil,54.8,58.4
    >>在|cRXP_ENEMY_Deer|r|cRXX_WARN_上使用|T134419:0|t[亲爱的马斯克]不要解雇你当前的宠物|r
    .use 208607,1
    .unitscan Deer
step
    #season 2
    .goto Teldrassil,39.8,9.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Relaeron|r in |cFFfa9602Darnassus|r
    >>将|cRXP_ENEMY_Deer|r交付至接收|T134419:0|t[|cRXP-FRIENDLY_Rune of Carve|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Relaeron
    .train 425758,1
step
    #season 2
    .cast 402265 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Carve|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 野兽精通-16（荒原）
#title Beast Mastery

    --Rune of Beast Mastery

step
    #season 2
    #completewith next
    +|cRXP_WARN_你需要学会|r|T135813:0|t[自焚陷阱]|cRXP_WARN_or任何其他陷阱才能获得此符文|r
step
    #season 2
    .goto The Barrens,44.60,55.51,40,0
    .goto The Barrens,44.05,56.20,40,0
    .goto The Barrens,43.12,57.37
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>在|cRXP_ENEMY_Patroling Cheetah|r的巡逻路径上使用|T135813:0|t[自焚陷阱]移除其buff
    >>杀死他并掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step
    #season 2
    .train 410110 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_野兽精通之路|r]|cRXP-WARN_训练|r|T132270:0|t[野兽精通]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 野兽精通-16（银松）
#title Beast Mastery

    --Rune of Beast Mastery

step
    #season 2
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    .goto Silverpine Forest,41.60,21.65
    >>杀死|cRXP_ENEMY_凶猛的灰熊|r，直到一个|cRXX_ENEMY_Grizzled Protecter|r（16精英）出生
    >>杀死他并掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Ferocious Grizzled Bear
    .mob Grizzled Protecter
step
    #season 2
    .train 410110 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_野兽精通之路|r]|cRXP-WARN_训练|r|T132270:0|t[野兽精通]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 狙击手训练-18（黑暗海岸）
#title Sniper Training


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
step
    #season 2
    .goto 1439,44.081,20.739
    >>从骷髅的眼睛里偷走|T135129:0|t[Gnarled Harpoon]
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 416091,1
step
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_使用|r|T135129:0|t[Gnarled Harpoon]|cRXP_WARN_on|cRXP_ENEMY_Paxnozz|r将他的最大生命值降低到743|r
    .train 416091,1
step
    #season 2
    #loop
    .goto Darkshore,48.0,18.0,0
    .goto Darkshore,47.6,13.2,0
    .goto Darkshore,50.4,12.0,0
    .goto Darkshore,48.8,16.0,0
    .goto Darkshore,48.0,18.0,40,0
    .goto Darkshore,47.6,13.2,40,0
    .goto Darkshore,50.4,12.0,40,0
    .goto Darkshore,48.8,16.0,40,0
    >>杀死|cRXP_ENEMY_Paxnozz|r。掠夺他获得|T134419:0|t|cRXP_Loot_[狙击手符文]|r
    >>|cRXP_WARN_小心点，因为他是20级精英|r
    .collect 208777,1 --Rune of the Sniper (1)
    .train 416091,1
    .use 209047
    .mob Paxnozz
step
    #season 2
    .train 416091 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r]|cRXP-WARN_训练|r|T132212:0|t[狙击手训练]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 狙击手训练-16（Westfall）
#title Sniper Training


    --Rune of the Sniper

step
    #season2
    #completewith next
    .train 416091,1
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step
    #season 2
    #loop
    .goto Westfall,51.2,47.0,20,0
    .goto Westfall,50.2,48.6,20,0
    .goto Westfall,51.6,55.6,20,0
    >>杀死|cRXP_ENEMY_Defias Scout|r。掠夺他获得|T134419:0|t[|cRXX_Loot_狙击手符文|r]
    .collect 208777,1
    .train 416091,1
    .mob Defias Scout
step
    #season 2
    .train 416091 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r]|cRXP-WARN_训练|r|T132212:0|t[狙击手训练]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 狙击手训练-16（莫丹湖）
#title Sniper Training


    --Rune of the Sniper

step
    #season2
    #completewith next
    .train 416091,1
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
step
    #season 2
    #loop
    .goto Loch Modan,55.6,52.2,20,0
    .goto Loch Modan,55.8,54.4,20,0
    .goto Loch Modan,54.2,56.8,20,0
    .goto Loch Modan,53.8,54.4,20,0
    >>杀死|cRXP_ENEMY_Kackle|r。掠夺他获得|T134419:0|t[|cRXX_Loot_狙击手符文|r]
    .collect 208777,1
    .train 416091,1
    .mob Kackle
step
    #season 2
    .train 416091 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r]|cRXP-WARN_训练|r|T132212:0|t[狙击手训练]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 侧卫-7（Dun Morugh）
#title Flanking


    --Rune of Flanking

step
    #season2
    #loop
    .goto Dun Morogh,43.4,65.6,20,0
    .goto Dun Morogh,49.2,61.4,20,0
    .goto Dun Morogh,51.0,51.8,20,0
    .goto Dun Morogh,45.8,50.0,20,0
    .goto Dun Morogh,42.6,60.2,20,0
    .goto Dun Morogh,38.2,60.6,20,0
    .train 425762,1
    >>杀死|cRXP_ENEMY_Boars|r。掠夺它们|T134026:0|t[Dun Morogh Pig Meat]
    .collect 208192,1
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #season2
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>在|cFFfa9602Cefflow洞穴|r的尸体附近使用|T134026:0|t[Dun Morogh Pig Meat]召唤|cRXP_ENEMY_Jorul|r
    >>杀死|cRXP_ENEMY_Jorul|r并掠夺他|T135142:0|t|cRXP-loot_[侧翼符文]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step
    #season 2
    .train 425762 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_侧击路线|r]|cRXP-WARN_训练|r|T132175:0|t[侧击]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 侧翼-7（Teldrassil）
#title Flanking


    --Rune of Flanking
step
    #season2
    #loop
    .goto Teldrassil,42.6,52.6,20,0
    .goto Teldrassil,39.8,53.2,20,0
    .goto Teldrassil,39.4,36.2,20,0
    .goto Teldrassil,40.8,31.6,20,0
    .goto Teldrassil,46.6,31.2,20,0
    .train 425762,1
    >>在|cFFfa9602Teldrassil|r中杀死|cRXP_ENEMY_Birds |r并掠夺它们|T134025:0|t[Teldrassil Bird Meat]
    .collect 208608,1
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Strigid Hunter
step
    #season2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>使用尸体附近的|T134025:0|t[Teldrassil Bird Meat]召唤|cRXP_ENEMY_Mowgh|r
    >>杀死|cRXP_ENEMY_Mowgh|r并掠夺他|T134419:0|t|cRXP-loot_[侧翼符文]|r
    .collect 205979,1
    .use 208608
    .mob Mowgh
step
    #season 2
    .train 425762 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_侧击路线|r]|cRXP-WARN_训练|r|T132175:0|t[侧击]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#title Expose Weakness
#name 暴露弱点-40（艾泽拉斯）


-- Expose Weakness

step
    #optional
    .train 426445,1
    +|cRXP_WARN_您必须达到26级以上才能获得|r|T132353:0|t[暴露弱点]|cRXP_WARN_run|r
    .xp >26,1
step
    #completewith next
    .zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
step
    .goto Badlands,66.6,23.4,0
    .goto Badlands,51.2,69.4,0
    .goto Badlands,29.6,56.8,0
    .goto Badlands,62.6,69.2,0
    .goto Badlands,9.6,77.6,0
    .goto Badlands,66.6,23.4,50,0
    .goto Badlands,51.2,69.4,50,0
    .goto Badlands,29.6,56.8,50,0
    .goto Badlands,62.6,69.2,50,0
    .goto Badlands,9.6,77.6
    .use 211269 >>杀死任何|cRXP_ENEMY_Dustbelcher Ogre|r或|cRXX_ENEMY_Stonevault Trogg|r。为|T237388:0|t[|cRXD_Loot_Primental Drawing|r]掠夺它们
    >>|cRXP_WARN_使用|r|T237388:0|t[|cRXP_OOT_Primitive Drawing|r]|cRXP-WARN_to开始任务|r
    >>|cRXP_WARN_他们的位置标记在地图上|r
    .collect 211269,1,78823,1 --Primitive Drawing
    .accept 78823 >>Accept Terror of the Desert Skies
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
    .mob Dustbelcher Mauler
    .mob Dustbelcher Mystic
    .mob Dustbelcher Shaman
    .mob Dustbelcher Warrior
    .mob Dustbelcher Wyrmhunter
    .mob Stonevault Bonesnapper
    .mob Stonevault Shaman
    .train 410114,1
step
    #optional
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
    .turnin 78823 >>Turn in Terror of the Desert Skies
    .accept 78830 >>Accept Terror of the Desert Skies
    .target Hemet Nesingwary
    .train 410114,1
step
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    .use 211272 >>|cRXP_WARN_在STV中使用|r|T132599:0|t[空饵笼]|cRXP_WARN_on a|cRXP_ENEMY_Arbor Tarantula |r动物。它们是在树桩上发现的|r
    >>|cRXP_WARN_你也可以在世界上看到的任何其他动物身上使用它|r
    .collect 211273,1 --Trapped Critter
    .mob Arbor Tarantula
    .mob Rat
    .mob Black Rat
    .mob Chicken
    .train 410114,1
step
    #completewith next
    .zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
    .train 410114,1
step
    #completewith next
    .goto Badlands,22.352,67.733
    +点击山顶上的|cRXP_PICK_Large Nest|r召唤|cRXP_ENEMY_Gharik|r
    .itemcount 211272,<1
step
    .goto Badlands,22.352,67.733
    >>杀死|cRXP_ENEMY_Gharik|r。掠夺她获得|cRXD_Loot_深红奖杯被子|r
    .complete 78830,1 --Crimson Trophy Quill (1)
    .mob Gharik
    .train 410114,1
step
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
    .turnin 78830 >>Turn in Terror of the Desert Skies
    .target Hemet Nesingwary
    .train 410114,1
step
    #season 2
    .train 410114 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_暴露弱点的调整|r]|cRXP-WARN_训练|r|T132353:0|t[暴露弱点]
    .use 211301
    .itemcount 211301,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#title Steady Shot
#name 稳定射击-30（阿拉蒂高地）

step
    #completewith next
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    .train 410109,1
    #loop
    .goto Arathi Highlands,67.8,66.0,0
    .goto Arathi Highlands,69.4,63.2,25,0
    .goto Arathi Highlands,67.8,66.0,25,0
    .goto Arathi Highlands,68.4,68.2,25,0
    >>杀死|cRXP_ENEMY_Needletoth|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Steady Shot|r]掠夺它
    >>|cRXP_ENEMY_Needletoth|r|cRXP_WARN_是一条在Witherbark村湖中游泳的鱼|r
    .collect 213122,1
    .mob Needletooth
step
    .train 410109 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_稳定射击调整|r]| cRXP_WARN_训练|r|T132213:0|t][稳定射击]
    .use 213122
    .itemcount 213122,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#title Dual-Wield Specialization
#name Dual Wield专业化-32（Stranglethorn Vale）

step
    #optional
    .train 410116,1
    +|cRXP_WARN_您必须至少达到32级才能获得|r|T132147:0|t[双Wield专长]|cRXP_WARN_run|r
    .xp >32,1
step
    .train 410116,1
    #optional
    .train 1543 >>|cRXP_WARN_您必须训练|r|T135815:0|t[Flare]|cRXP_WARN_to才能获得|r|T132147:0|t[Dual Wield Specialization]|cRXP_WARN_run|r
step
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    +|cRXP_WARN_行进到箭头位置并四处奔跑，直到名为|r|T132118:0|t[危险！]|cRXP_WARN_的buff出现在你身上|r
    .aura 435548
    .aura 435428
    .aura 435546
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    #completewith next
    .cast 1543 >>|cRXP_WARN_铸造|r|T135815:0|t[闪光]|cRXP_WARN_to揭示|r|cRXP-ENEMY_Bloodscap游击队|r
    .usespell 1543
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    >>杀死|cRXP_ENEMY_Bloodship Guerrilla|r。掠夺他以获得|T134419:0|t[|cRXP_FRIENDLY_Rune of the Scraper|r]
    .collect 213126,1
    .mob Bloodscalp Guerrilla
step
    .itemcount 213126,1
    .use 213126
    .train 410116 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Scraper|r]|cRXP-WARN_to train|r|T132147:0|t[双Wield专业化]
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Focus Fire
#name 焦点之火-40（瑟林峡谷）

step
    >>|cRXP_WARN_你必须在敌对区域杀死一名45级暴民才能获得此符文。如果你的级别较低，一定要得到帮助。
    .goto Searing Gorge,53.29,57.35,5
step
    .goto Searing Gorge,53.10,55.85
    >>小心地沿着树枝向鸟巢走去。从中掠夺|cRXP_PICK_StormcrowEgg|r。
    .collect 221544,1 --Stormcrow Egg
step
    .goto 1427/0,-1532.400,-6953.600
    >>沿着树枝往回走。等待几秒钟，让|cRXP_ENEMY_Enraged Stormcrow|r产卵。杀死它并掠夺它|T134419:0|t[|cRXP_FRIENDLY_Rune of Focus Fire|r]
    .collect 221445,1
    .mob Enraged Stormcrow
step
    .itemcount 221445,1
    .use 221445
    .train 428726 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_聚焦火力调整|r]|cRXP-WARN_训练|r|T135548:0|t[聚焦火力]
 ]])

 RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune和书籍指南
    #subgroup Bracers
    #title Raptor Fury
    #name 猛禽狂怒-40（塔纳里斯）

step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
step
    #loop
    .goto 1446/1,-3973.700,-7372.900,0
    .goto 1446/1,-3777.100,-7358.200,0
    .goto 1446/1,-3290.200,-7330.700,0
    .goto 1446/1,-3563.000,-7352.400,0
    .goto 1446/1,-3386.400,-7337.400,0
    .goto 1446/1,-3290.200,-7330.700,0
    >>杀死|cRXP_ENEMY_Zopilote|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of the Raptor|r]掠夺它
    >>|cRXP_ENEMY_Zopilote|r|cRXP_WARN_i是一种腐肉鸟，它在从Sandsorry Watch南部到Gadgetzan的大片地区从东向西巡逻|r
    >>提示：您可以使用|T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r]来侦察他的位置，而不是四处乱跑。如果你找不到他，他可能已经死了，应该在地图上标有“2+”的地方重生
    .collect 220687,1
    .unitscan Zopilote
step
    .train 415358 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Raptor|r]|cRXP_WARN_训练|r|T132253:0|t[Raptor Fury]
    .use 2220687
    .itemcount 220687,1

    ]])
RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune和书籍指南
    #subgroup Helmet
    #title Catlike Reflexes
    #name 猫状反射-40（Feralas）

step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
step
    +|cRXP_WARN_您需要|T133951:0|t|cRXP_PICK_Soft Banana Bread|r或|T133980:0|t| cRXP_ICK_Tel'Abim Banana |r中的一个才能获得此符文|cRXP_FRIENDLY_Madrack Greenwell|r为联盟出售费瑟蒙的面包|cRXP_FRIENDLY_Inkeeper Greul|r在部落的Mojache营地出售。
    .itemcount 4601,<1 --Soft Banana Bread
    .itemcount 4537,<1 --Tel'Abim Banana
    .target Innkeeper Greul
    .target Madrack Greenwell
step
    >>去高野野地的雪人洞
    .goto 1444/1,1599.300,-4977.800,10
step
    .goto 1444/1,1778.900,-5179.100,
    >>进入第二个洞穴后，在十字路口走中间的小路。在它的后面，你会发现一个|cRXP_FRIENDLY_Groddoc婴儿|r
    .gossip 222376,1 >>完成猴子对话，给它喂|T133951:0|t|cRXP_PICK_Soft Banana Bread|r或|T133980:0|t| cRXP_PICK_Tel'Abim Banana |r。它会生成一个版本，跟随你。
    .target Groddoc Infant
step
    .goto 1444/1,1330.900,-5078.100
    >>护送|cRXP_FRIENDLY_Groddoc婴儿|r到地图上标记的|cRXP_FRIENDLY_Groddoc矩阵|r处。小心，婴儿攻击性强，会攻击附近的敌人，包括对方阵营的玩家。
    .gossip 222406,1 >>一旦你到达那里，与女族长交谈并完成她的对话，即可接收|T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle Cat |r]
    .collect 220791,1 -- Rune of the Jungle Cat
step
    .train 415428 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle Cat |r]|cRXP-WARN_to train|r|T132167:0|t[Catlike Reflexes]
    .use 220791
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group RestedXP Rune和书籍指南
    #subgroup Helmet
    #title Rapid Killing
    #name 快速杀伤-45（灼热的峡谷和爆炸的土地）
step
    #completewith next
    .zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
step
    .goto 1427/0,-832.800,-6647.500,10
    >>前往FirewatchRidge的洞穴入口。注意，你需要进入一个充满47-48级精英的洞穴。话虽如此，使用死亡之路完成这一部分是可能的。
step
    .goto Searing Gorge,14.5,36.5
    >>|cRXP_WARN_当你进入洞穴时，走右边的路。你会很快看到一块名为|cRXP_FRIENDLY_Weathered Etching|r的大药片，它位于洞穴中部的一个隆起处。跑过去接受任务。
    >>提示：如果你独自一人，在使用|T132293:0|t[|cRXP_FRIENDLY_Feign Death|r]从暴民中释放攻击之前，请尝试使用陷阱和你的宠物尽可能远。或者，你也可以用尸体冲向物品。
    .accept 81900 >>Accept The Burning Beast
step
    #completewith next
    .zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
step
    .goto Blasted Lands,50.6,14.2
    >>对话: |cRXP_FRIENDLY_血法师莱诺雷|r
    .turnin 81900 >>Turnin燃烧的野兽
    .accept 81917 >>Accept Chains That Bind
    .target Bloodmage Lynnore
step
    .goto Blasted Lands,64.24,32.36
    >>前往带阴影的洞穴区域，杀死任何|cRXP_ENEMY_带阴影的邪教者、暴徒或Adept|r，以获得|cRXP_LOOT_INternal Chains|r
    .complete 81917,1 --Infernal Chains 5/5
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
step
    .goto Blasted Lands,50.6,14.2
    >>对话: |cRXP_FRIENDLY_血法师莱诺雷|r
    .turnin 81917 >>Turnin Chains That Bind
    .accept 81919 >>Accept Brought to Heel
    .target Bloodmage Lynnore
step
    #loop
    .goto 1419/0,-2976.500,-11483.101
    .goto 1419/0,-2778.300,-11420.800
    .goto 1419/0,-2821.900,-11353.700
    .goto 1419/0,-2934.700,-11419.101
    >>寻找|cRXP_ENEMY_Calefurus the Unleashed|r一个50级绿色猎狼。他在地图红色部分的南部边缘有多个产卵点。尝试使用|T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r]查找他。找到他后，对他使用|T136091:0|t|cRXP_LOOT_INternal Lasso|r，杀死他，然后掠夺他的鲜血。
    .complete 81919,1 --Fel Lifeblood 1/1
    .use 220216
    .unitscan Calefactus the Unleashed
step
    .goto Blasted Lands,50.6,14.2
    >>对话: |cRXP_FRIENDLY_血法师莱诺雷|r
    .turnin 81919 >>Turnin Brought to Heel
    .target Bloodmage Lynnore
step
    .train 415405 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of the Ravenous |r]|cRXP-WARN_to train|r|T132205:0|t[快速杀伤]
    >>您还收到了一个|T136091:0|t|cRXP_LOOT_INternal Lasso|r小饰品，可以用来驯服猎兔犬
    .use 220217
]])
