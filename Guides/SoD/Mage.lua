RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 冰枪-2（埃尔温森林）
#title Ice Lance
<< Human Mage SoD


step
    +|cRXP_WARN_你必须至少达到2级才能获得|r|T133816:0|t[雕刻手套-冰枪]|cRXP_WARN_因为这是获得|r| T133736:0|t[理解入门]的级别要求
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-冰枪]之前，您需要升级更多
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .train 401760,1
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Research
    .goto Elwynn Forest,48.33,41.90,15 >>Enter Northshire Abbey
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Research
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>前往楼上|cRXP_FRIENDLY_Khelden Bremen |r
    .train 401760,1
    .xp <2,1
step
    #label Research
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r, 他在里面
    .accept 77620 >>Accept Spell Research
    .target Khelden Bremen
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1429,48.303,42.098,15 >>Exit Northshire Abbey
    .train 401760,1
    .xp <2,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>杀死|cRXP_ENEMY_Defias Thugs |r。为|T134939:0|t|cRXP-FRIENDLY_[拼写说明：CALE ENCI]|r掠夺它们
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：CALE ENCI]|r|cRXP-WARN_学习|r|T133816:0|t[雕刻手套-冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #label IceLance2
    #completewith Research2
    .goto Elwynn Forest,48.33,41.90,15 >>Enter Northshire Abbey
    .isOnQuest 77620
    .xp <2,1
step
    #optional
    #requires IceLance2
    #completewith Research2
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>前往楼上|cRXP_FRIENDLY_Khelden Bremen |r
    .isQuestComplete 77620
    .xp <2,1
step
    #label Research2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r, 他在里面
    .turnin 77620 >>Turn in Spell Research
    .target Khelden Bremen
    .isQuestComplete 77620
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 冰枪-2（邓莫罗）
#title Ice Lance

<< Gnome Mage SoD


step
    +|cRXP_WARN_你必须至少达到2级才能获得|r|T133816:0|t[雕刻手套-冰枪]|cRXP_WARN_因为这是获得|r| T133736:0|t[理解入门]的级别要求
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-冰枪]之前，您需要升级更多
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.910,69.703,15,0
    .goto 1426,28.835,69.050,10,0
    .goto 1426,28.835,68.702,10,0
    .goto 1426,28.939,68.387,12 >>Enter Anvilmar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r, 他在里面
    .accept 77667 >>Accept Spell Research
    .target Marryk Nurribit
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.751,69.058,12,0
    .goto 1426,28.676,69.669,15 >>Exit Anvilmar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,26.733,72.552
    >>打开|cRXP_PICK_Rockjaw Footlocker|r。为|T134939:0|t|cRXP_FRIENDLY_[拼写说明：CALE ENCI]|r打开它
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：CALE ENCI]|r|cRXP-WARN_学习|r|T133816:0|t[雕刻手套-冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.676,69.669,15,0
    .goto 1426,28.751,69.058,10,0
    .goto 1426,28.758,68.721,10,0
    .goto 1426,28.645,68.364,12 >>Enter Anvilmar
    .isQuestComplete 77667
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r
    .turnin 77667 >>Turn in Spell Research
    .target Marryk Nurribit
    .isQuestComplete 77667
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Ice Lance - 2 (Durotar)
#title Ice Lance

<< Troll Mage SoD


step
    +|cRXP_WARN_你必须至少达到2级才能获得|r|T133816:0|t[雕刻手套-冰枪]|cRXP_WARN_因为这是获得|r| T133736:0|t[理解入门]的级别要求
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-冰枪]之前，您需要升级更多
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .accept 77643 >>Accept Spell Research
    .target Mai'ah
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Stashbox
    .goto 1411,45.363,55.673
    .subzone 365 >>进入燃烧之刃封面
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Stashbox
    .goto 1411,45.306,55.177,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,43.241,55.384,12,0
    .goto Durotar,43.004,54.456,15 >>前往|cRXP_PICK_Waterloged Stashbox |r
    .train 401760,1
    .xp <2,1
step
    #label Stashbox
    .goto Durotar,43.004,54.456
    >>打开洞穴内水下的|cRXP_PICK_Waterlogged Stashbox|r。为|T134939:0|t|cRXP_FRIENDLY_[拼写说明：CALE ENCI]|r窃取它
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：CALE ENCI]|r|cRXP-WARN_学习|r|T133816:0|t[雕刻手套-冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1411,43.241,55.384,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,45.306,55.177,12,0
    .goto 1411,45.245,56.520,15 >>退出燃烧的刀片封面
    .isQuestComplete 77643
    .subzoneskip 363
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .turnin 77643 >>Turn in Spell Research
    .target Mai'ah
    .isQuestComplete 77643
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 冰枪-2（Tirisfal）
#title Ice Lance
<< Undead Mage SoD


step
    +|cRXP_WARN_你必须至少达到2级才能获得|r|T133816:0|t[雕刻手套-冰枪]|cRXP_WARN_因为这是获得|r| T133736:0|t[理解入门]的级别要求
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-冰枪]之前，您需要升级更多
    .train 401760,1
    .xp >2,1
step
    #optional
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>进入死亡之钟的小教堂
    .train 401760,1
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莎贝拉|r
    .accept 77671 >>Accept Spell Research
    .target Isabella
    .xp <2,1
step
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
    >>杀死|cRXP_ENEMY_Scarlet启动|r。为|T134939:0|t|cRXP-FRIENDLY_[拼写说明：CALE ENCI]|r掠夺它们
    .collect 203751,1,77671,1 --Spell Notes: CALE ENCI (1)
    .mob Scarlet Initiate
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：CALE ENCI]|r|cRXP-WARN_学习|r|T133816:0|t[雕刻手套-冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>进入死亡之钟的小教堂
    .isQuestComplete 77671
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莎贝拉|r
    .turnin 77671 >>Turn in Spell Research
    .target Isabella
    .isQuestComplete 77671
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 再生-12（Westfall）
#title Regeneration

<< Alliance Mage SoD


step
    +|cRXP_WARN_你应该至少达到12级才能获得|r|T133815:0|t[铭刻胸甲-再生]|cRXP_WARN_in Westfall|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>进入Pestle的药剂师
    .train 401767,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·布舍尔|r, 他在里面
    >>|cRXP_BUY_从她那里购买一个或多个|r|T135933:0|t[理解符]|cRXP_Buy_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401767,1
step
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    .train 401767,1
step
    #loop
    .goto 1436,35.043,53.785,0
    .goto 1436,43.045,67.127,0
    .goto 1436,43.459,70.800,0
    .goto 1436,45.458,70.322,0
    .goto 1436,44.547,65.624,0
    .goto 1436,35.043,53.785,40,0
    .goto 1436,35.952,53.085,40,0
    .goto 1436,36.549,54.105,40,0
    .goto 1436,36.025,54.822,40,0
    .goto 1436,38.732,56.872,40,0
    .goto 1436,43.045,67.127,40,0
    .goto 1436,42.825,68.290,40,0
    .goto 1436,42.524,69.212,40,0
    .goto 1436,42.103,69.530,40,0
    .goto 1436,42.240,70.517,40,0
    .goto 1436,43.459,70.800,40,0
    .goto 1436,43.698,69.251,40,0
    .goto 1436,43.798,67.692,40,0
    .goto 1436,44.042,69.247,40,0
    .goto 1436,44.333,68.588,40,0
    .goto 1436,45.458,70.322,40,0
    .goto 1436,45.794,69.292,40,0
    .goto 1436,44.952,67.095,40,0
    .goto 1436,44.547,65.624,40,0
    >>杀死|cRXP_ENEMY_Defias Pillargers|r。为|T134939:0|t|cRXP_FRIENDLY_[拼写说明：TENGI RONEERA]|r掠夺它们
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Defias Pillager
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：TENGI RONEERA]|r|cRXP-WARN_to learn|r|T133815:0|t[铭刻胸甲-再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 再生-13（莫丹湖）
#title Regeneration

<< Alliance Mage SoD


step
    +|cRXP_WARN_你至少应该达到13级才能获得|r|T133815:0|t[铭刻胸甲-再生]|cRXP_WARN_in Loch Modan|r
    .train 401767,1
    .xp >13,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>输入|cRXP_FRIENDLY_Ginny Longberry|r的房子
    .train 401767,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩|r, 他在里面
    >>|cRXP_BUY_从她那里购买一个或多个|r|T135933:0|t[理解符]|cRXP_Buy_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401767,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
    .train 401767,1
step
    #optional
    #requires Loch1
    #completewith next
    .goto 1432,54.33,26.82,5 >>Enter the tent
    .train 401767,1
step
    #label Tengi
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>打开里面的|cRXP_PICK_Pile of Stolen Books|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：TENGI RONEERA|r]掠夺它们
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell备注：TENGI RONEERA|r]|cRXP-WARN_to learn|r|T133815:0|t[雕刻胸部-再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 再生-12（The Barrens）
#title Regeneration

<< Horde Mage SoD


step
    +|cRXP_WARN_你应该至少达到12级才能获得|r|T133815:0|t[雕刻宝箱-再生]|cRXP_WARN_in单独的Barrens|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师瓦巴恩|r
    >>|cRXP_BUY_从拍卖行购买|r|T134237:0|t[Kolkar Booty Key]|cRXP_Buy_|r
    >>|cRXP_WARN_这将为您节省几分钟时间|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 401767,1
step
    #optional
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
    >>|cRXP_BUY_从拍卖行购买|r|T134237:0|t[Kolkar Booty Key]|cRXP_Buy_|r
    >>|cRXP_WARN_这将为您节省几分钟时间|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 401767,1
step
    #completewith Regeneration
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .train 401767,1
step
    .goto 1413,51.393,30.203
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈拉玛|r
    >>|cRXP_BUY_从他那里购买一个或多个|r|T135933:0|t[理解符]|cRXP_Buy_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Hula'mahi
    .train 401767,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>杀死|cRXP_ENEMY_Kolkar牧马人|r和|cRXX_ENEMY_ Kolkar风暴者|r。掠夺他们一个|T134237:0|t[Kolkar Booty Key]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 401767,1
step
    #label Regeneration
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--   .goto The Barrens,44.33,37.66,-1
    >>打开地面上的|cRXP_PICK_Kolkars'靴|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：TENGI RONEERA|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：TENGI RONEERA|r]|cRXP-WARN_to train|r|T132869:0|t[再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 再生-12（银松森林）
#title Regeneration
<< Horde Mage SoD


step
    +|cRXP_WARN_您至少应达到12级才能单独获得|r|T133815:0|t[雕刻箱-再生]|cRXP_WARN_in银松森林|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .train 401767,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托马斯·莫丹|r
    >>|cRXP_BUY_从他那里购买一个或多个|r|T135933:0|t[理解符]|cRXP_Buy_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401767,1
step
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .train 401767,1
step
    #loop
    .goto 1421,52.375,56.808,0
    .goto 1421,49.614,60.886,0
    .goto 1421,51.556,64.300,0
    .goto 1421,52.689,71.258,0
    .goto 1421,52.375,56.808,45,0
    .goto 1421,51.644,57.939,45,0
    .goto 1421,50.539,59.184,45,0
    .goto 1421,50.826,59.697,45,0
    .goto 1421,50.053,60.021,45,0
    .goto 1421,49.614,60.886,45,0
    .goto 1421,50.449,60.894,45,0
    .goto 1421,50.914,61.289,45,0
    .goto 1421,51.749,61.612,45,0
    .goto 1421,50.566,62.991,45,0
    .goto 1421,51.556,64.300,45,0
    .goto 1421,52.412,63.834,45,0
    .goto 1421,51.969,65.028,45,0
    .goto 1421,52.850,66.113,45,0
    .goto 1421,51.986,66.138,45,0
    .goto 1421,52.689,71.258,45,0
    >>杀死|cRXP_ENEMY_Dalaran学徒|r。为|T134939:0|t|cRXP-FRIENDLY_[咒语注释：天幕罗奈拉]|r掠夺他们
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：TENGI RONEERA|r]|cRXP-WARN_to train|r|T132869:0|t[再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 霜之指-10（埃尔温森林）
#title Fingers of Frost

<< Alliance Mage SoD


step
    +|cRXP_WARN_你必须至少达到10级才能获得|r|T133815:0|t[铭刻胸甲-霜指]|cRXP_WARN_in单独在埃尔温森林|r
    .train 401765,1
    .xp >10,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>进入Pestle的药剂师
    .train 401765,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·布舍尔|r, 他在里面
    >>|cRXP_BUY_从她那里购买一个或多个|r|T135933:0|t[理解符]|cRXP_Buy_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401765,1
step
    #completewith next
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .train 401765,1
step
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,25.2,92.7,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>杀死|cRXP_ENEMY_Hogger|r。为|T134939:0|t|cRXP_FRIENDLY_[咒语注释：RING SEFF OSTROF]|r掠夺他
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .unitscan Hogger
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：RING SEFF OSTROF]|r|cRXP_WARN_学习|r|T133815:0|t[铭刻胸甲-霜指]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 霜之指-5（盾摩洛）
#title Fingers of Frost
<< Alliance Mage SoD


step
    +|cRXP_WARN_你应该至少达到5级才能获得|r|T133815:0|t[铭刻胸甲-霜指]|cRXP_WARN_in Dun Morogh|r
    .train 401765,1
    .xp >5,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>输入|cRXP_FRIENDLY_Ginny Longberry|r的房子
    .train 401765,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩|r, 他在里面
    >>|cRXP_BUY_从她那里购买一个或多个|r|T135933:0|t[理解符]|cRXP_Buy_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401765,1
step
    #completewith next
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
    .train 401765,1
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
    >>杀死|cRXP_ENEMY_Fyodi|r。为|T134939:0|t|cRXP_FRIENDLY_[咒语注释：RING SEFF OSTROF]|r掠夺他
    >>|cRXP_WARN_尽管|cRXP_ENEMY_Fyodi|r显示为精英，但他的健康、伤害和护甲值都是标准暴徒的|r
    >>|cRXP_WARN_当他施放|r|T132337:0|t[Charge]|cRXP_WARN_（自瞬：增加移动速度3秒，命中时造成35-80近战伤害。仅在射程内施放）时要小心|r
    >>|cRXP_WARN_注：|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：RING SEFF OSTROF]|r|cRXP_WARN_can还可以放下邓莫罗的每一个稀有暴徒，以及|cRXD_ENEMY_Vagash|r、|cRXX_ENEMY_Mangcaw|r和|r|cRXP_ENEMY_Old Icebeard|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fyodi
    .train 401765,1
    .xp >10,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>杀死|cRXP_ENEMY_Vagash|r。为|T134939:0|t|cRXP_FRIENDLY_[咒语注释：RING SEFF OSTROF]|r掠夺他
    >>|cRXP_WARN_注：|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：RING SEFF OSTROF]|r|cRXP_WARN_can还可以放下邓莫罗的每一个稀有暴徒，以及|cRXD_ENEMY_Fyodi|r、|cRXX_ENEMY_Mangcaw|r和|r|cRXP_ENEMY_Old Icebeard|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Vagash
    .train 401765,1
    .xp <10,1
step
    .train 401765 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：RING SEFF OSTROF]|r|cRXP_WARN_学习|r|T133815:0|t[铭刻胸甲-霜指]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 霜之指-8（蒂里斯法尔格拉迪斯）
#title Fingers of Frost
<< Horde Mage SoD


step
    +|cRXP_WARN_你应该至少达到8级才能获得|r|T133815:0|t[铭刻胸甲-霜指]|cRXP_WARN_in Tirisfal Glades|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .train 401765,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托马斯·莫丹|r
    >>|cRXP_BUY_从他那里购买一个或多个|r|T135933:0|t[理解符]|cRXP_Buy_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401765,1
step
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .train 401765,1
step
    #optional
    #completewith next
    .goto 1420,28.649,46.992,40,0
    .goto 1420,27.849,46.734,40,0
    .goto 1420,27.076,46.855,40,0
    .goto 1420,26.213,47.473,40,0
    .goto Tirisfal Glades,25.53,48.39,60 >>前往|cRXP_ENEMY_Gillgar|r
step
    .goto Tirisfal Glades,25.53,48.39
    >>杀死|cRXP_ENEMY_Gillgar|r。为|T134939:0|t|cRXP_FRIENDLY_[咒语注释：RING SEFF OSTROF]|r掠夺他
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Gillgar
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：RING SEFF OSTROF]|r|cRXP_WARN_学习|r|T133815:0|t[铭刻胸甲-霜指]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 霜之指-8（Durotar）
#title Fingers of Frost


step
    +|cRXP_WARN_你应该至少达到8级才能获得|r|T133815:0|t[铭刻胸甲-霜指]|cRXP_WARN_in Durotar|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #completewith next
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .train 401765,1
step
    #label Comprehension
    .goto 1454,45.439,56.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍苏斯|r, 他在里面
    >>|cRXP_BUY_从他那里购买一个或多个|r|T135933:0|t[理解符]|cRXP_Buy_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Horthus
    .train 401765,1
step
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .train 401765,1
step
    .goto 1411,66.936,87.360,40,0
    .goto 1411,67.376,86.710,40,0
    .goto 1411,67.502,87.618
    >>杀死|cRXP_ENEMY_Zalazane|r。为|T134939:0|t|cRXP_FRIENDLY_[咒语注释：RING SEFF OSTROF]|r掠夺他
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Zalazane
    .train 401765,1
    .xp >12,1
step
    .goto 1411,42.123,26.666,40,0
    .goto 1411,42.654,26.448,40,0
    .goto 1411,42.123,26.666
    >>杀死|cRXP_ENEMY_Fizzle Darkstorm|r。掠夺他以获得|T134939:0|t|cRXP_FRIENDLY_[咒语注释：RING SEFF OSTROF]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fizzle Darkstorm
    .train 401765,1
    .xp <12,1
step
    .train 401765 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：RING SEFF OSTROF]|r|cRXP_WARN_学习|r|T133815:0|t[铭刻胸甲-霜指]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 燃尽-6（Dun Morugh）
#title Burnout

<< Alliance Mage SoD


step
    +|cRXP_WARN_你应该至少达到6级才能与其他玩家一起获得|r|T132686:0|t[铭刻胸甲-燃尽]|cRXP_WARN_in Dun Morugh|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
    .train 401759,1
step
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Trogg|r附近或普通聊天中寻找其他法师或术士（在聊天中键入/1）|r
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Trogg|r上铸造|r|T135812:0|t[火球]|cRXP_WARN_以施加|r|T135805:0|t[施加热量]|cRXP_WARN_的堆栈。一次叠加5个堆栈以杀死|cRXP_ENEMY_Frozen Trogg|r。为|r|T134939:0|t|cRXP-FRIENDLY_[拼写说明：耗尽]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step
    .train 401759 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：烧坏]|r|cRXP-WARN_学习|r|T132686:0|t[铭刻胸甲-烧坏]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 燃尽-6（埃尔温森林）
#title Burnout

<< Alliance Mage SoD

step
    +|cRXP_WARN_你必须至少达到6级才能与其他玩家一起在埃尔温森林获得|r|T132686:0|t[铭刻胸甲-燃尽]|cRXP_WARN_in|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .train 401759,1
step
    .goto 1429,77.015,51.901
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Murloc|r附近或普通聊天中查找其他法师或术士（在聊天中键入/1）|r
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Murloc|r上铸造|r|T135812:0|t[火球]|cRXP_WARN_以施加|r|T135805:0|t[施加热量]|cRXP_WARN_的堆栈。一次叠加5个堆栈以杀死|cRXP_ENEMY_Frozen Murloc|r。为|r|T134939:0|t|cRXP-FRIENDLY_[拼写说明：耗尽]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：烧坏]|r|cRXP-WARN_学习|r|T132686:0|t[铭刻胸甲-烧坏]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Burnout - 6 (Durotar)
#title Burnout

<< Horde Mage SoD

step
    +|cRXP_WARN_你应该至少达到6级才能与其他玩家一起获得|r|T132686:0|t[铭刻胸甲-燃尽]|cRXP_WARN_in Durotar|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .train 401579,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Makrura|r附近或普通聊天中寻找其他法师、术士或萨满（在聊天中键入/1）|r
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Makrura|r上铸造|r|T135812:0|t[火球]|cRXP_WARN_以施加|r|T135805:0|t[施加热量]|cRX P_WARN_的堆栈。一次叠加5个堆栈以杀死|cRXP_ENEMY_Frozen Makrura|r。为|r|T134939:0|t|cRXP-FRIENDLY_[拼写说明：耗尽]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .mob Frozen Makrura
    .train 401579,1
step
    .train 401759 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：烧坏]|r|cRXP-WARN_学习|r|T132686:0|t[铭刻胸甲-烧坏]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 燃尽-6（Tirisfal Glades）
#title Burnout

<< Horde Mage SoD


step
    +|cRXP_WARN_你必须至少达到6级才能与其他玩家一起获得|r|T132686:0|t[铭刻胸甲-燃尽]|cRXP_WARN_in Tirisfal Glades|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .train 401759,1
step
    .goto 1420,66.337,40.059
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Murloc|r附近或普通聊天中查找其他法师或术士（在聊天中键入/1）|r
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Murloc|r上铸造|r|T135812:0|t[火球]|cRXP_WARN_以施加|r|T135805:0|t[施加热量]|cRXP_WARN_的堆栈。一次叠加5个堆栈以杀死|cRXP_ENEMY_Frozen Murloc|r。为|r|T134939:0|t|cRXP-FRIENDLY_[拼写说明：耗尽]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：烧坏]|r|cRXP-WARN_学习|r|T132686:0|t[铭刻胸甲-烧坏]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 启蒙-8（埃尔温森林）
#title Enlightenment

<< Alliance Mage SoD


step
    +|cRXP_WARN_你必须至少达到8级才能获得|r|T133815:0|t[铭刻胸甲-启迪]|cRXP_WARN_因为这是训练的级别要求|r|T136071:0|t[变形]
    >>|cRXP_WARN_在尝试获得|r|T133815:0|t[铭刻胸甲-启迪]之前，您需要升级更多
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .train 415942,1
    .xp <8,1
step
    #optional
    #completewith next
    .goto 1429,43.133,65.740,8,0
    .goto 1429,43.226,65.953,8,0
    .goto 1429,43.824,66.361,8 >>进入金郡旅馆。上楼去
    .train 415942,1
    .xp <8,1
step
    .goto 1429,43.248,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r
    .train 118 >>列车|T136071:0|t[变形]
    .target Zaldimar Wefhellt
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1429,49.68,73.74,0
    .goto 1429,79.92,64.51,0
    .goto 1429,83.61,83.86,0
    .goto 1429,77.54,40.05,0
    .goto 1429,83.67,83.53,0
    .goto 1429,49.68,73.74,40,0
    .goto 1429,49.04,55.23,40,0
    .goto 1429,58.93,59.8,40,0
    .goto 1429,62.95,63.3,40,0
    .goto 1429,70.46,63.41,40,0
    .goto 1429,79.92,64.51,40,0
    .goto 1429,85.79,65.94,40,0
    .goto 1429,82.89,70.69,40,0
    .goto 1429,79.07,79.02,40,0
    .goto 1429,82.61,86.35,40,0
    .goto 1429,83.61,83.86,40,0
    .goto 1429,87.27,82.16,40,0
    .goto 1429,90.67,77.25,40,0
    .goto 1429,86.02,66.26,40,0
    .goto 1429,80.6,50.21,40,0
    .goto 1429,77.54,40.05,40,0
    .goto 1429,73.96,41.08,40,0
    .goto 1429,65.67,41.75,40,0
    .goto 1429,58.87,59.97,40,0
    .goto 1429,79.37,78.84,40,0
    .goto 1429,83.67,83.53,40,0
    >>将|T136071:0|t[变形]投射到以下不寻常的生物上：|cRXP_ENEMY_Gazelles|r，|cRXD_ENEMY_Maggots|r、|cRXT_ENEMY_Parrots|r和|cRXP_ENEMY_Fire Beetles|r；|cRXC_ENEMY_Rams|r
    >>打开地面上的|cRXP_PICK_Spell Notes|r。为|T134332:0|t|cRXP_Loot_[Azora学徒笔记]|r抢劫
    .collect 204864,6 --Azora Apprentice Notes (6)
    .mob Gazelle
    .mob Maggot
    .mob Parrot
    .mob Fire Beetle
    .mob Ram
    .mob Larva
    .mob Cat
    .train 415942,1
    .xp <8,1
step
    >>使用|T134332:0|t|cRXP_LOOT_[Azora学徒笔记]|r创建|T134332_|t|cRXP_FRIENDLY_[拼写笔记：启蒙]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 204864
    .train 415942,1
    .xp <8,1
step
    .train 415942 >>|cRXP_WARN_使用|r|T134332:0|t|cRXP_FRIENDLY_[咒语注释：启迪]|r|cRXP-WARN_学习|r|T133815:0|t[铭刻胸甲-启迪]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 启蒙运动-8（蒂里斯法尔格莱德斯）
#title Enlightenment

<< Horde Mage SoD

step
    +|cRXP_WARN_你必须至少达到8级才能获得|r|T133815:0|t[铭刻胸甲-启迪]|cRXP_WARN_因为这是训练的级别要求|r|T136071:0|t[变形]
    >>|cRXP_WARN_在尝试获得|r|T133815:0|t[铭刻胸甲-启迪]之前，您需要升级更多
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .train 415942,1
step
    #optional
    #completewith next
    .goto 1420,61.619,52.856,8,0
    .goto 1420,61.734,52.720,8,0
    .goto 1420,61.958,52.066,8 >>进入布里尔旅馆。上楼去
    .train 415942,1
    .xp <8,1
step
    .goto 1420,61.972,52.476
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯恩·火歌|r
    .train 118 >>列车|T136071:0|t[变形]
    .target Cain Firesong
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1420,58.840,58.321,0
    .goto 1420,52.861,57.885,0
    .goto 1420,47.292,50.612,0
    .goto 1420,58.840,58.321,30,0
    .goto 1420,54.062,60.058,30,0
    .goto 1420,53.920,58.332,30,0
    .goto 1420,54.000,56.767,30,0
    .goto 1420,52.861,57.885,30,0
    .goto 1420,51.611,57.241,30,0
    .goto 1420,50.303,61.941,30,0
    .goto 1420,49.885,59.576,30,0
    .goto 1420,50.073,50.644,30,0
    .goto 1420,49.573,46.473,30,0
    .goto 1420,47.292,50.612,30,0
    >>在|cRXP_ENEMY_Odd Melons|r上铸造|T136071:0|t[变形]，然后等待RP
    >>将|T134332:0|t|cRXP_Loot_[药剂师笔记]|r洗劫一空
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
step
    >>使用|T134332:0|t|cRXP_LOOT_[药剂师笔记]|r创建|T134332_|t|cRXP_FRIENDLY_[拼写笔记：启蒙]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
step
    .train 415942 >>|cRXP_WARN_使用|r|T134332:0|t|cRXP_FRIENDLY_[咒语注释：启迪]|r|cRXP-WARN_学习|r|T133815:0|t[铭刻胸甲-启迪]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
]])

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Rune和书籍指南
<<Alliance Mage SoD
#subgroup Legs/Boots/Helm
#name 冰脉/法术力量/深度冻结-40（艾泽拉斯）
#title Icy Veins & Spell Power & Deep Freeze

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.
--QQQ WIP to here

step
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .cast 3561 >>使用[Teleport Stormwind]|cRXP_WARN_If you have|r|T134419:0|t[Teleport符文]
    .disablecheckbox
step
    .money <0.20
    .goto Stormwind City,55.8,65.2
    .collect 17031,10 >>购买|T134419:0|t[传送符文]，从|cRXP_FRIENDLY_Reagent，Arcane Goods，Scrolls&Potion Vendor处购买|r|cRXP_WARN_这将大大缩短旅行时间|r
    >>|cRXP_WARN_如果您想不执行，请手动跳过此步骤。|r
step
    .goto Stormwind City,56.4,73.2
    .bankwithdraw 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523,209846 >>|cRXP_WARN_检查你的银行，看有没有可能存入的书。|r
step
    .goto Stormwind City,57.2,57.2
    .vendor >>|cRXP_WARN_强烈建议进行修复，因为我们将使用死亡跳跃。|r
    >>|cFFFF0000如果您不希望使用死亡跳跃，请手动跳过此步骤|r
step
    .goto 1429,64.41,69.08,10,0
    .goto 1429,64.69,69.58,5,0
    .goto 1429,64.73,70.32,5,0
    .goto 1429,64.83,69.87,5,0
    .goto 1429,65.16,69.69,5,0
    .goto 1429,65.24,70.25,5,0
    .goto 1429,65.02,70,5,0
    .goto 1429,65.47,70.07
    >>点击位于Elwynn Forest货架上的|cFFfa9602的|cRXP_PICK_Library图书|r，获得|T133744:0|t[Archmage Theocritus Research Journal]
    .collect 203755,1
    .isQuestAvailable 79092
step
    #completewith Rumi of Gnomeregan the Collected Works
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    .fly Westfall >>如果您|cRXP_WARN_不在|r|cFFfa9602Elwynn Forest中，请选择飞往|cFFfa9602Westfall|r的飞行路线|r|r
    .disablecheckbox
    .isQuestAvailable 79093
-- step
--     #completewith Rumi of Gnomeregan the Collected Works
--
--     .deathskip >>在|cFF00FF25Spirit Healer处死亡并重生|r|cRXP_WARN_如果您想节省维修成本，还可以选择跳过任何死亡跳跃|r
--     >>|cRXP_WARN_如果您在飞行路线上，请手动跳过此步骤。|r
--     .isQuestAvailable 79092
step
    #label Rumi of Gnomeregan the Collected Works
    .goto 1436,53.01,53.34,10,0
    .goto 1436,52.64,53.83
    >>点击Westfall Inn |r表中的|cRXP_PICK_Gnomish Tome|r|cFFfa9602，得到|T133744:0|t[《Gnomeregan的鲁米文集》]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for human, can be picked up as a gnome.
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>前往: |cRXP_PICK_西部荒野|r |cRXP_WARN_by taking a flight path.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>单击位于|cFFfa9602的|cRXP_PICK_Spellbook|r，位于Westfall Moonbrook的一所小房子里的炼金柜上|r，获得|T133733:0|t[魔法和魅力。]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>前往: |cRXP_PICK_暮色森林|r
    .fly Westfall >>选择一条飞往|cFFfa9602Westfall|r|cRXP_WARN_if您已解锁但尚未到达的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>在Duskwood的炼金台上点击|cRXP_PICK_Book|r|cFFfa9602中的曙光木墓穴|r，获得|T133738:0|t[解剖罪]
    >>|cRXP_WARN_建议跑到地下墓穴的尽头去死。此外，您可能需要考虑分组。|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
    .fly Swamp of Sorrows >>选择飞往|cFFfa9602Swamp of Sorrows|r|cRXP_WARN_if您已解锁但尚未到达的航班路径|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>杀死|cRXP_ENEMY_Lost One Hunter|r，|cRXD_ENEMY_Lost One Muckdweller|r、|cRXP_ENEMY_ Lost One Cook|r和|cRXX_ENEMY_Lot One Seer|r。偷走它们|cRXP_Loot_|T237379:0|t[生锈的笼子钥匙]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>单击|cRXP_PICK_Rusted Cage|r以接收书籍|T133742:0|t[A Ludite’s Guide to Caring Your Demonic Pet]
    .collect 215824,1
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,70,51
    >>点击|cRXP_PICK_Book|r获得|T133738:0|t[Sanguine魔法]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
    .fly Blasted Lands >>选择飞往|cFFfa9602Blast Lands|r|cRXP_WARN_if您已解锁但尚未到达|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>点击|cRXP_PICK_Book|r获取|T133736:0|t[招魂符编码]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .fly Stranglethorn Vale >>选择一条飞往|cFFfa9602Stranglethorn Vale|r|cRXP_WARN_if you have unlock的航线|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>单击长椅上的|cRXP_PICK_Researchnotes|r以接收书籍|T237162:0|t[Basilisks:应该害怕石化吗？]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
    .fly Searing Gorge >>如果解锁了，请选择飞往|cFFfa9602轴承峡谷|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>点击|cRXP_PICK_Book|r获得|T133743:0|t[石雕设计]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
    .fly Searing Gorge >>如果解锁了，请选择飞往|cFFfa9602轴承峡谷|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>点击|cRXP_PICK_Book|r获得|T133743:0|t[石雕设计]
    .collect 220349,1
    .isQuestAvailable 81953
step
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .cast 3562 >>使用[Teleport Ironforge]|cRXP_WARN_If you have|r|T134419:0|t[Teleport符文]
    .disablecheckbox
step
    .goto 1455,31.96,57.93
    .vendor >>|cRXP_WARN_“强烈建议进行维修，因为我们将使用死亡跳跃。|r
    >>|cFFFF0000如果您不希望使用死亡跳跃，请手动跳过此步骤|r
step
    .goto 1455,69.76,24.39,10,0
    .goto 1455,70.43,18.37,10,0
    .goto 1455,75.99,10.55
    >>点击探索者大厅铁炉堡表上的|cRXP_PICK_Library图书|r|cFFfa9602，获得|T133744:0|t[大法师安东尼达斯未经修复的自传。]
    .collect 203754,1
    .isQuestAvailable 79091
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
    .fly Loch Modan >>如果已解锁，请使用|cFFfa9602Loch Modan|r|cRXP_WARN_i的飞行路径|r
    .disablecheckbox
    .isQuestAvailable 79093
step
    .goto 1432,35.2,47.76,10,0
    .goto 1432,35.5,48.98
    >>点击莫丹湖客栈|r表中的|cRXP_PICK_Gnomish Tome|r|cFFfa9602，得到|T133744:0|t[《Gnomeregan的鲁米文集》]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for gnome, can be picked up as human.
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zoneskip Loch Modan
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
    .fly Loch Modan >>选择飞往|cFFfa9602Loch Modan|r|cRXP_WARN_if you have的航线。|r
    .disablecheckbox
    .isQuestAvailable 78148
step
    .goto 1432,74.61,19.91,10,0
    .goto 1432,75.46,18.66,5,0
    .goto 1432,75.18,16.41,5,0
    .goto 1432,76.42,14.67,5,0
    .goto 1432,77.45,14.15
    >>点击|cFFfa9602E磨丹湖精灵洞|r中的|cRXP_PICK_Scroll|r，获得|T134938:0|t[魔法师之王符文]
    >>|cRXP_WARN_建议跑到洞穴的尽头去死。此外，您可能需要考虑分组。|r
    .collect 209850,1
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zoneskip Ironforge
    .deathskip >>在|cFF00FF25Spirit Healer处死亡并重生|r|cRXP_WARN_如果您想节省维修成本，还可以选择跳过任何死亡跳跃|r
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
    .fly >>如果已解锁，请使用飞往|cFFfa9602Badlands|r|cRXP_WARN_i的飞行路径|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    #label Goaz Scrolls
    .goto Badlands,56.7,39.9
    >>点击书籍|T134937:0|t[木乃伊：未知亡灵指南]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .fly Menethil Harbor >>飞往|cFFfa9602Menethil港|r
    .isQuestAvailable 78146
step
    .goto 1437,33.61,47.82
    >>单击Wetlands|r中花瓶中的|cRXP_PICK_Scroll|r|cFFfa9602以获得|T237450:0|t[Goaz Scrolls]
    .collect 209848,1
    .isQuestAvailable 78146
-- step
--     #loop
--     .goto 1437,32.93,49.21,15,0
--     .goto 1437,34.1,49.75,15,0
--     .goto 1437,35.45,49.47,15,0
--     .goto 1437,35.41,47.44,15,0
--     .goto 1437,35.62,45.27,15,0
--     .goto 1437,34.2,43.89,15,0
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
--     .isQuestAvailable 78146
--     .zoneskip Ironforge
step
    .zoneskip Ironforge
    .goto Wetlands,8.0,55.8
    .vendor >>|cRXP_WARN_强烈建议进行修复，因为我们将使用死亡跳跃。|r
    >>|cFFFF0000如果您不希望使用死亡跳跃，请手动跳过此步骤|r
step
    #completewith next
    .goto 1437,4.64,57.24,20,0
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    .fly Menethil Harbor >>飞往|cFFfa9602Menethil Harbor|r|cRXP_WARN_如果您还没有到达那里|r
    .disablecheckbox
    .isQuestAvailable 78124
    --x shiek might add teleport darnassus step later
step
    #completewith next
    .deathskip >>淹死在水中，然后在|cFF00FF25精神治疗师处重生|r|cRXP_WARN_如果您想节省维修成本，还可以选择跳过任何死亡跳跃|r
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>单击|cFFfa9602Darkshore|r中的|cRXP_PICK_Scroll|r，获得|T23747:0|t[Nathalas Almanac vol 74.]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith Everyday Etiquette
    .goto 1439,59.35,22.55
    .isQuestAvailable 78146
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
step
    #completewith Everyday Etiquette
    .isQuestAvailable 81952
    .zone Azshara >>前往: |cRXP_PICK_艾萨拉|r
    .fly Ashenvale >>飞往|cFFfa9602Ashenval|r
    .disablecheckbox
step
    #label Everyday Etiquette
    .goto Azshara,20.7,62
    >>单击|cRXP_PICK_Book|r以获得|T133740:0|t[日常礼仪。]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .isQuestAvailable 78146
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .fly Stonetalon Mountains >>飞往|cFFfa9602Stonetalon山脉|r|cRXP_WARN_if您已解锁飞行路径|r
    .disablecheckbox
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>点击帐篷中的|cRXP_PICK_Scroll|r|cFFfa9602，位于斯通塔隆山脉的一个桶上|r，获得|T133209:0|t[大地之怒。]
    .collect 209851,1
    .isQuestAvailable 78149
step
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
    .fly Desolace >>如果解锁，请选择飞往|cFFfa9602地点|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>单击|cRXP_PICK_Scroll|r以接收书籍|T133733:0|t[Demons and You]r
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .fly Ratchet >>如果已解锁，请选择飞往|cFFfa9602Ratchet|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>点击|r|cRXP_FRIENDLY_Gazlowe|r旁边的|cRXP_PICK_Goblin Tome|r |cFFfa9602in Ratchet获得|T133744:0|t[Baxtan on Destination Magics]
    .collect 208800,1
    .isQuestAvailable 79097
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>点击位于荒地哭泣洞穴入口附近地面上的|cFFfa9602的|cRXP_PICK_Scroll|r，获得|T135142:0|t[梦想家的秘密]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith next
    .goto 1414,52.83,54.71
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
    .isQuestAvailable 78143
step
    .goto The Barrens,56.3,8.8
    >>点击桶内石油钻机顶部的|cRXP_PICK_Manual|r|cFFfa9602，|r获得|T134509:0|t[Arconic Systems Manual。]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
    .fly Dustwallow Marsh >>选择一条飞往|cFFfa9602Dustwallow Marsh|r|cRXP_WARN_if you have unlock的航线|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>单击|cRXP_PICK_Waterlogged Book |r以接收该书|T133740:0|t[RwlRwlRwl！]。
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
    .fly Thousand Needles >>如果解锁，请选择飞往|cFFfa9602 Housand Needles|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>点击|cRXP_PICK_Scroll|r，在帐篷里一个袋子旁边收到书|T133740:0|t[Geomancy:the Stone Cold Truth]。
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
    .fly Tanaris >>选择一条飞往|cFFfa9602Tanaris|r|cRXP_WARN_if you have unlock的航线|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>点击|cRXP_PICK_Book|r获取|T134941:0|t[潮汐传说]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .cast 3562 >>使用|T135757:0|t[Teleport Ironforge]|cRXP_WARN_If you have|r|T134419:0|t[Tyleportation符文]
    .disablecheckbox
step
    #completewith next
    .isQuestAvailable 78127
    -- .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    -- .fly Hillsbrad Foothills >>|cRXP_WARN_如果您的飞行路线未锁定，请飞往Hillsbrad Foothills。|r
    -- .disablecheckbox
    .fly Arathi Highlands >>|cRXP_WARN_如果您没有解锁Hillsbrad Foothils飞行路线，请飞往Arathi高地。|r
    .disablecheckbox
    .fly Wetlands >>|cRXP_WARN_如果你没有解锁阿拉蒂高地，就飞往湿地。|r
    .disablecheckbox
step
    #completewith next
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
    .fly Arathi Highlands >>选择一条飞往|cFFfa9602Arathi Highlands|r|cRXP_WARN_if you have unlock的航线|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>单击|cRXP_PICK_Scroll|r以接收书籍|T134331:0|t[谎言之网：揭开神话和传说的面纱]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
    .fly The Hinterlands >>如果解锁，请选择飞往|cFFfa9602腹地|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36,72.7
    >>点击|cRXP_PICK_Book|r获取|T134942:0|t[毒液之旅]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Alterac Mountains >>前往: |cRXP_PICK_奥特兰克山脉|r
    .fly Alterac Mountains >>选择一条飞往|cFFfa9602 Alterac Mountains|r|cRXP_WARN_if you have unlock的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>点击塔内板条箱上的|cRXP_PICK_Manual|r以获得书籍|T133736:0|t[防御魔法101]。
    .collect 215815,1
    .isQuestAvailable 79948
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>点击银松森林书架上琥珀山主城堡旁的|cRXP_PICK_Book|r|cFFfa9602以获得|T134917:0|t[达拉然文摘第23卷]
    .collect 209844,1
    .isQuestAvailable 78127
step
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .cast 3561 >>使用[Teleport Stormwind]|cRXP_WARN_If you have|r|T134419:0|t[Teleport符文]
    .disablecheckbox
step
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602in Stormwind, Mage Tower.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Turn in Nar'thalas Almanac
    .accept 78127 >>Turn in The Dalaran Digest
    .accept 78142 >>Turn in Bewitchments and Glamours
    .accept 78143 >>Turn in Secrets of the Dreamers
    .accept 78145 >>Turn in Arcanic Systems Manual
    .accept 78146 >>Turn in Goaz Scrolls
    .accept 78147 >>Turn in Crimes Against Anatomy
    .accept 78148 >>Turn in Runes of the Sorceror-Kings
    .accept 78149 >>Turn in Fury of the Land
    .accept 79091 >>Turn in Archmage Antonidas: The Unabridged Autobiography
    .accept 79092 >>Turn in Archmage Theocritus's Research Journal
    .accept 79093 >>Turn in Rumi of Gnomeregan: The Collected Works
    .accept 79094 >>Turn in The Lessons of Ta'zo
    .accept 79095 >>Turn in The Apothecary's Metaphysical Primer
    .accept 79096 >>Turn in Ataeric: On Arcane Curiosities
    .accept 79097 >>Turn in Ataeric: Baxtan: On Destructive Magics
    .accept 79535 >>Turn in Basilisks: Should Petrification be Feared?
    .accept 79947 >>Turn in Geomancy: The Stone-Cold Truth
    .accept 79948 >>Turn in Defensive Magics 101
    .accept 77949 >>接任务: |cRXP_WARN_[Fashion Feathers]|r
    .accept 79950 >>Turn in Demons and You
    .accept 79951 >>Turn in Mummies: A Guide to the Unsavory Undead
    .accept 79952 >>Turn in RwlRwlRwlRwl!
    .accept 81947 >>Turn in Sanguine Sorcery
    .accept 81949 >>Turn in Legends of the Tidesages
    .accept 81951 >>Turn in The Liminal and the Arcane
    .accept 81952 >>Turn in Everyday Etiquette
    .accept 81953 >>Turn in Stonewrought Design
    .accept 81954 >>Turn in Venomous Journeys
    .accept 81955 >>Turn in A Mind of Metal
    .accept 81956 >>Turn in Conjurer's Codex
    .accept 79953 >>Turn in A Ludite's Guide to Caring for Your Demonic Pet
    .accept 78150 >>Turn in Friend of the Library
    .accept 79536 >>Turn in Greater Friend of the Library
    .accept 82208 >>Turn in Greater Friend of the Library
    .target Garion Wendell
step
    .goto Stormwind City,56.4,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    .bankdeposit 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >>|cRXP_WARN_存放剩余的书籍。|r
    .target Newton Burnside
]]

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Rune和书籍指南
#subgroup Legs/Boots
#subgroup Legs/Boots/Helm
#name 冰脉/法术力量/深度冻结-40（艾泽拉斯）
#title Icy Veins & Spell Power & Deep Freeze

<< Horde Mage SoD

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.

step
    #completewith next
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .cast 3567 >>使用[Teleport Orgrimmar]|cRXP_WARN_If you have|r|T134419:0|t[Teleport符文]
    .disablecheckbox
    .isQuestAvailable 79094
step
    .money <0.20
    .goto Orgrimmar,45.6,56.8
    .collect 17031,10 >>购买|T134419:0|t[传送符文]，从|cRXP_FRIENDLY_Reagent，Arcane Goods，Scrolls&Potion Vendor处购买|r|cRXP_WARN_这将大大缩短旅行时间|r
    >>|cRXP_WARN_如果您想不执行，请手动跳过此步骤。|r
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Banker|r
    .bankwithdraw 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >>|cRXP_WARN_检查您的银行是否有任何可能已存入的账簿|r
    .target Karus
    .target Komawa
    .target Soran
step
    .goto Orgrimmar,55.8,73.0
    .vendor >>|cRXP_WARN_强烈建议进行修复，因为我们将使用死亡跳跃。|r
    >>|cFFFF0000如果您不希望使用死亡跳跃，请手动跳过此步骤|r
step
    .goto 1454,38.66,78.43
    >>点击Orgrimmar |r墙上的|cRXP_PICK_Giant Stone|r|cFFfa9602获得|T134938:0|t[Ta'zo的教训]
    .collect 207972,1
    .isQuestAvailable 79094
step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .fly Ratchet >>如果已解锁，请选择飞往|cFFfa9602Ratchet|r|cRXP_WARN_i的飞行路线|r
    .fly Crossroads >>如果没有Ratchet，请乘坐Flightpath前往|cFFfa9602十字路口|r|cRXP_WARN_i|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>点击|r|cRXP_FRIENDLY_Gazlowe|r旁边的|cRXP_PICK_Goblin Tome|r |cFFfa9602in Ratchet获得|T133744:0|t[Baxtan on Destination Magics]
    .collect 208800,1
    .isQuestAvailable 79097
step
    #completewith next
    .fly Crossroads >>选择一条通往|cRXP_WARN_Crossroad|r的飞行路线，如果解锁，|cRXD_WARN_otherwise步行|r
    .disablecheckbox
    .isQuestAvailable 78143
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>点击位于荒地哭泣洞穴入口附近地面上的|cFFfa9602的|cRXP_PICK_Scroll|r，获得|T135142:0|t[梦想家的秘密]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zoneskip Orgrimmar
    .goto 1414,52.83,54.71
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .fly Crossroads >>选择一条通往|cRXP_WARN_Crossroad|r的飞行路线，如果解锁，|cRXD_WARN_otherwise步行|r
    .disablecheckbox
    .isQuestAvailable 78145
step
    #label Arcanic Systems Manual
    .goto The Barrens,56.3,8.8
    >>点击桶内石油钻机顶部的|cRXP_PICK_Manual|r|cFFfa9602，|r获得|T134509:0|t[Arconic Systems Manual。]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
    .fly Desolace >>如果解锁，请选择飞往|cFFfa9602地点|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>单击|cRXP_PICK_Scroll|r以接收书籍|T133733:0|t[Demons and You]r
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .fly Ratchet >>如果已解锁，请选择飞往|cFFfa9602Ratchet|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .fly Stonetalon Mountains >>如果已解锁，请从|cFFfa9602Orgrimmar|r选择飞行路线。
    .disablecheckbox
    .isQuestAvailable 78149
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>点击石塔龙山|r中的|cRXP_PICK_Scroll|r|cFFfa9602获得|T133209:0|t[大地之怒]
    .collect 209851,1
    .isQuestAvailable 78149
step
    .isQuestAvailable 81952
    .zone Azshara >>前往: |cRXP_PICK_艾萨拉|r
    .fly Ashenvale >>飞往|cFFfa9602Ashenval|r
    .disablecheckbox
step
    .goto Azshara,20.7,62
    >>单击|cRXP_PICK_Book|r以获得|T133740:0|t[日常礼仪。]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    .disablecheckbox
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>单击|cFFfa9602Darkshore|r中的|cRXP_PICK_Scroll|r，获得|T23747:0|t[Nathalas Almanac vol 74.]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith next
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
    .fly Dustwallow Marsh >>选择一条飞往|cFFfa9602Dustwallow Marsh|r|cRXP_WARN_if you have unlock的航线|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>单击|cRXP_PICK_Waterlogged Book |r以接收该书|T133740:0|t[RwlRwlRwl！]。
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
    .fly Thousand Needles >>如果解锁，请选择飞往|cFFfa9602 Housand Needles|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>点击|cRXP_PICK_Scroll|r，在帐篷里一个袋子旁边收到书|T133740:0|t[Geomancy:the Stone Cold Truth]。
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
    .fly Tanaris >>选择一条飞往|cFFfa9602Tanaris|r|cRXP_WARN_if you have unlock的航线|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>点击|cRXP_PICK_Book|r获取|T134941:0|t[潮汐传说]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .cast 3563 >>使用[Teleport Undercity]|cRXP_WARN_If you have|r|T134419:0|t[Teleport符文]
    .disablecheckbox
step
    .goto Undercity,69.8,27.6
    .vendor >>|cRXP_WARN_强烈建议进行修复，因为我们将使用死亡跳跃。|r
    >>|cFFFF0000如果您不希望使用死亡跳跃，请手动跳过此步骤|r
step
    .goto 1420,59.62,52.05,5,0
    .goto 1420,59.39,52.29
    >>点击Brill Tirisfal Glades的|cRXP_PICK_the Apothecary’s Society Primer|r|cFFfa9602，获得|T133737:0|t[the Apothacary’s Metaphysical Primer]
    .collect 208185,1
    .isQuestAvailable 79095
step
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .fly Silverpine Forest >>Take a flight path to |cFFfa9602Silverpine Forest|r |cRXP_WARN_if you are in|r |cFFfa9602Undercity.|r
    .disablecheckbox
    .isQuestAvailable 79096
step
    .goto 1421,43.12,41.39,5,0
    .goto 1421,42.7,41.37,5,0
    .goto 1421,42.72,40.85,5,0
    .goto 1421,43.43,41.29
    >>点击银松森林中的|cRXP_PICK_Arcane Secrets|r|cFFfa9602|r获得|T133744:0|t[Ataric:on Arcane Curiosities]
    .collect 219177,1
    .isQuestAvailable 79096
step
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .fly Silverpine Forest >>Take a flight path to |cFFfa9602Silverpine Forest|r |cRXP_WARN_if you are in|r |cFFfa9602Undercity.|r
    .disablecheckbox
    .isQuestAvailable 78127
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>点击银松森林琥珀山主城堡旁的|cRXP_PICK_Book|r|cFFfa9602，获取|T134917:0|t[达拉然文摘第23卷]
    .collect 209844,1
    .isQuestAvailable 78127
step
    #completewith next
    .zone Alterac Mountains >>前往: |cRXP_PICK_奥特兰克山脉|r
    .fly Alterac Mountains >>选择一条飞往|cFFfa9602 Alterac Mountains|r|cRXP_WARN_if you have unlock的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>点击塔内板条箱上的|cRXP_PICK_Manual|r以获得书籍|T133736:0|t[防御魔法101]。
    .collect 215815,1
    .isQuestAvailable 79948
step
    #completewith next
    .zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
    .fly Hinterlands >>如果解锁，请选择飞往|cFFfa9602Hinterlands|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36.0,72.7
    >>点击|cRXP_PICK_Book|r获取|T134942:0|t[毒液之旅]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
    .fly Arathi Highlands >>选择一条飞往|cFFfa9602Arathi Highlands|r|cRXP_WARN_if you have unlock的航线|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>单击|cRXP_PICK_Scroll|r以接收书籍|T134331:0|t[谎言之网：揭开神话和传说的面纱]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
    .fly >>如果已解锁，请使用飞往|cFFfa9602Badlands|r|cRXP_WARN_i的飞行路径|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    .goto Badlands,56.7,39.9
    >>点击书籍|T134937:0|t[木乃伊：未知亡灵指南]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .goto 1437,33.61,47.82
    >>单击Wetlands|r中花瓶中的|cRXP_PICK_Scroll|r|cFFfa9602以获得|T237450:0|t[Goaz Scrolls]
    .collect 209848,1
    .isQuestAvailable 78146
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>前往: |cRXP_PICK_西部荒野|r |cRXP_WARN_by taking a flight path.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>单击位于|cFFfa9602的|cRXP_PICK_Spellbook|r，位于Westfall Moonbrook的一所小房子里的炼金柜上|r，获得|T133733:0|t[魔法和魅力。]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>前往: |cRXP_PICK_暮色森林|r
    .fly Westfall >>选择一条飞往|cFFfa9602Westfall|r|cRXP_WARN_if您已解锁但尚未到达的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>在Duskwood的炼金台上点击|cRXP_PICK_Book|r|cFFfa9602中的曙光木墓穴|r，获得|T133738:0|t[解剖罪]
    >>|cRXP_WARN_建议跑到地下墓穴的尽头去死。此外，您可能需要考虑分组。|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
    .fly Swamp of Sorrows >>选择飞往|cFFfa9602Swamp of Sorrows|r|cRXP_WARN_if您已解锁但尚未到达的航班路径|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>杀死|cRXP_ENEMY_Lost One Hunter|r，|cRXD_ENEMY_Lost One Muckdweller|r、|cRXP_ENEMY_ Lost One Cook|r和|cRXX_ENEMY_Lot One Seer|r。偷走它们|cRXP_Loot_|T237379:0|t[生锈的笼子钥匙]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>单击|cRXP_PICK_Rusted Cage|r以接收书籍|T133742:0|t[A Ludite’s Guide to Caring Your Demonic Pet]
    .collect 215824,1
    .isQuestAvailable 79953
step
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
    .fly Swamp of Sorrows >>选择飞往|cFFfa9602Swamp of Sorrows|r|cRXP_WARN_if您已解锁但尚未到达的航班路径|r
    .disablecheckbox
    .isQuestAvailable 81947
step
    .goto Swamp of Sorrows,70,51
    >>点击|cRXP_PICK_Book|r获得|T133738:0|t[Sanguine魔法]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
    .fly Blasted Lands >>选择飞往|cFFfa9602Blast Lands|r|cRXP_WARN_if您已解锁但尚未到达|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>点击|cRXP_PICK_Book|r获取|T133736:0|t[招魂符编码]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .fly Stranglethorn Vale >>选择一条飞往|cFFfa9602Stranglethorn Vale|r|cRXP_WARN_if you have unlock的航线|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>单击长椅上的|cRXP_PICK_Researchnotes|r以接收书籍|T237162:0|t[Basilisks:应该害怕石化吗？]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
    .fly Searing Gorge >>如果解锁了，请选择飞往|cFFfa9602轴承峡谷|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>点击|cRXP_PICK_Book|r获得|T133743:0|t[石雕设计]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
    .fly Searing Gorge >>如果解锁了，请选择飞往|cFFfa9602轴承峡谷|r|cRXP_WARN_i的飞行路线|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>点击|cRXP_PICK_Book|r获得|T133743:0|t[石雕设计]
    .collect 220349,1
    .isQuestAvailable 81953
step
    #completewith next
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .cast 3563 >>使用|T135766:0|t[Teleport Undercity]|cRXP_WARN_If you have|r|T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602in Undercity, Magic Quarter.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Turn in Nar'thalas Almanac
    .accept 78127 >>Turn in The Dalaran Digest
    .accept 78142 >>Turn in Bewitchments and Glamours
    .accept 78143 >>Turn in Secrets of the Dreamers
    .accept 78145 >>Turn in Arcanic Systems Manual
    .accept 78146 >>Turn in Goaz Scrolls
    .accept 78147 >>Turn in Crimes Against Anatomy
    .accept 78148 >>Turn in Runes of the Sorceror-Kings
    .accept 78149 >>Turn in Fury of the Land
    .accept 79094 >>Turn in The Lessons of Ta'zo
    .accept 79095 >>Turn in The Apothecary's Metaphysical Primer
    .accept 79096 >>Turn in Ataeric: On Arcane Curiosities
    .accept 79097 >>Turn in Ataeric: Baxtan: On Destructive Magics
    .accept 79535 >>Turn in Basilisks: Should Petrification be Feared?
    .accept 79947 >>Turn in Geomancy: The Stone-Cold Truth
    .accept 79948 >>Turn in Defensive Magics 101
    .accept 77949 >>接任务: |cRXP_WARN_[Fashion Feathers]|r
    .accept 79950 >>Turn in Demons and You
    .accept 79951 >>Turn in Mummies: A Guide to the Unsavory Undead
    .accept 79952 >>Turn in RwlRwlRwlRwl!
    .accept 81947 >>Turn in Sanguine Sorcery
    .accept 81949 >>Turn in Legends of the Tidesages
    .accept 81951 >>Turn in The Liminal and the Arcane
    .accept 81952 >>Turn in Everyday Etiquette
    .accept 81953 >>Turn in Stonewrought Design
    .accept 81954 >>Turn in Venomous Journeys
    .accept 81955 >>Turn in A Mind of Metal
    .accept 81956 >>Turn in Conjurer's Codex
    .accept 79953 >>Turn in A Ludite's Guide to Caring for Your Demonic Pet
    .accept 78150 >>Turn in Friend of the Library
    .accept 79536 >>Turn in Greater Friend of the Library
    .accept 82208 >>Turn in Greater Friend of the Library
    .target Owen Thadd
    .target Garion Wendell
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Banker|r
    .bankdeposit 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >>|cRXP_WARN_存放剩余的书籍。|r
    .target Karus
    .target Komawa
    .target Soran
]]

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 活火焰-6（埃尔温森林）
#title Living Flame

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4,56.6,-1
    >>从|cRXP_FRIENDLY_Reagent供应商处购买一个或多个|T135933:0|t[理解符]|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
step
    #loop
    .goto Elwynn Forest,61.0,49.2,20,0
    .goto Elwynn Forest,61.2,51.6,20,0
    .goto Elwynn Forest,62.6,54.2,20,0
    .goto Elwynn Forest,63.6,58.6,20,0
    .train 401556,1
    >>杀死|cRXP_ENEMY_Kobold Geomancer|r掠夺他们|cRXD_loot_|T134939:0|t[拼写说明：MILEGIN VALF]|r
    .collect 203752,1
    .mob Kobold Geomancer
step
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r]|cRXP_WARN_to learn|r|T135820:0|t[活火焰]
    .use 203752
-- step
    --.engrave 7,401556 >>打开字符表，在腿上刻上|T135820:0|t[Living Flame.]|cRXP_WARN_highly recommended|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 活的火焰-7（邓莫罗）
#title Living Flame

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>从|cRXP_FRIENDLY_Reagent供应商处购买一个或多个|T135933:0|t[理解符]|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
step
    #loop
    .goto Dun Morogh,42.0,45.6,10,0
    .goto Dun Morogh,40.2,42.8,10,0
    .goto Dun Morogh,42.0,44.6,10,0
    .goto Dun Morogh,41.4,36.0,10,0
    .goto Dun Morogh,42.6,33.6,10,0
    .goto Dun Morogh,42.8,36.6,10,0
    .train 401556,1
    >>为|cRXP_LOOT_|T134939:0|t[拼写说明：MILEGIN VALF]|r杀死|cRXD_ENEMY_Frostmane Shadowcaster|r和|cRXP_ENEMY_Frostmane Seer|r
    .collect 203746,1
    .mob Frostmane Shadowcaster
    .mob Frostmane Seer
step
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r]|cRXP_WARN_to learn|r|T135820:0|t[活火焰]
    .use 203752
-- step
    --.engrave 7,401556 >>打开字符表，在腿上刻上|T135820:0|t[Living Flame.]|cRXP_WARN_highly recommended|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 活的火焰-6（杜洛塔）
#title Living Flame

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>从|cRXP_FRIENDLY_Reagent供应商处购买一个或多个|T135933:0|t[理解符]|r
    .collect 211779,1
step
    #completewith Flame
    .train 401768,1
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step
    .train 401768,1
    >>在尘风洞穴内杀死|cRXP_ENEMY_Burning Blade兽人|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r]掠夺它们
    .collect 203752,1
    .goto Durotar,52.83,29.02
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .xp >10,1
step
    #label Flame
    .train 401768,1
    >>在骷髅岩洞穴内杀死|cRXP_ENEMY_Burning Blade兽人|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r]掠夺它们
    .collect 203752,1
    .goto Durotar,55.0,9.8
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r]|cRXP_WARN_to learn|r|T135820:0|t[活火焰]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 活的火焰-6（蒂里斯法尔峡谷）
#title Living Flame

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>从|cRXP_FRIENDLY_Reagent供应商处购买一个或多个|T135933:0|t[理解符]|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    .train 401768,1
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
    >>杀死|cRXP_ENEMY_Scarlet Humans|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r]掠夺他们
    .collect 203752,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
    .mob Scarlet Zealot
step
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r]|cRXP_WARN_to learn|r|T135820:0|t[活火焰]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 奥术爆炸-18（灰烬谷）
#title Arcane Blast

<< Mage SoD

step << Alliance
    .train 401757,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>从|cRXP_FRIENDLY_Reagent供应商处购买一个或多个|T135933:0|t[理解符]|r
    .collect 211779,1
step << Horde
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>从|cRXP_FRIENDLY_Reagent供应商处购买一个或多个|T135933:0|t[理解符]|r
    .collect 211779,1
step
    .train 401757,1
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
step
    .aura 430139,1 >>|cRXP_WARN_施法|r|T136116:0|t[奥术爆炸]|cRXP_WARN_紧挨|r|cRX_PICK_紫水晶|r|cRXP_WARN_获得|r|T135734:0|t[奥术冲锋]|cRX P_WARN_buff|r
    .goto Ashenvale,13.06,24.84
    .train 401757,1
step
    .aura 430139,2+ >>|cRXP_WARN_施放|r|T136116:0|t[奥术爆炸]|cRXP_WARN_在|r|cRX_PICK_Purple Crystal|r|cRXP_WARN_to获得另一堆|r|T135734:0|t[Arcane Charge]|cRXP-WARN_buff|r
    .goto Ashenvale,14.04,19.80
    .train 401757,1
step
    .aura 430139,3+ >>|cRXP_WARN_施放|r|T136116:0|t[奥术爆炸]|cRXP_WARN_在|r|cRX_PICK_Purple Crystal|r|cRXP_WARN_to获得另一堆|r|T135734:0|t[Arcane Charge]|cRXP-WARN_buff|r
    .goto Ashenvale,13.50,15.75
    .train 401757,1
step
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 401757 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：奥术爆炸|r]|cRXP-WARN_to train|r|T135820:0|t[奥术爆炸]
    .use 211691
step
    #optional
    .destroy 211777 >>销毁|T133737:0|t[那伽手稿]。你不再需要它
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 活炸弹-11（莫丹湖）
#title Living Bomb

<< Alliance Mage SoD


step
    +|cRXP_WARN_你必须至少达到11级才能单独获得|r|T236220:0|t[活炸弹]|cRXP_WARN_in莫丹湖|r
    .train 415936,1
    .xp >11,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .train 415936,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>输入|cRXP_FRIENDLY_Ginny Longberry|r的房子
    .train 415936,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩|r, 他在里面
    >>|cRXP_BUY_从她那里购买一个或多个|r|T135933:0|t[理解符]|cRXP_Buy_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 415936,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
    .train 415936,1
step
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>杀死|cRXP_ENEMY_Stonessplit Seer|r并掠夺它们以获得|cRXP_loot_|T134939:0|t[咀嚼咒语]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes|r]学习|T236220:0|t[活炸弹]
    .use 208854
-- step
    --.engrave 9,400613 >>打开字符表，在手套上刻上|T236220:0|t[活炸弹。]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 活炸弹-18（西城区）
#title Living Bomb

<< Alliance Mage SoD


step
    .train 415936,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>从|cRXP_FRIENDLY_Reagent供应商处购买一个或多个|T135933:0|t[理解符]|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>为|cRXP_LOOT_|T132996:0|t[收割者备件]|r杀死|cRXT_ENEMY_Harvest Watcher|r
    .train 401417,1
    .collect 209056,1
    .mob Harvest Golem
    .mob Harvest Repair
    .mob Harvest Watcher
    .mob Rusty Harvest Golem
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>为|cRXP_LOOT_|T132842:0|t[元素核心]|r杀死|cRXD_ENEMY_尘魔|r
    .train 401417,1
    .collect 209058,1
    .mob Dust Devil
step
    .train 401417,1
    >>使用|T132996:0|t[收割器备件]|r|创建|T133000:0|t[原型发动机]
    .collect 209057,1
    .use 209058
    .use 209056
step
    .train 401417,1
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    .collect 208851,1 >>找到一个|cRXP_FRIENDLY_Harvest收割者原型|r，并在其上使用|T133000:0|t[原型引擎]。继续杀死|cRXP_ENEMY_Harvest收割器原型|r
    .target Harvest Reaper Prototype
    .mob Harvest Reaper Prototype
    .use 209057
step
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes|r]学习|T236220:0|t[活炸弹]
    .use 208854
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 活炸弹-17（银松森林）
#title Living Bomb

<< Horde Mage SoD

step
    .train 415936,1
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
step
    .train 415936,1
    >>杀死芬里斯岛上的|cRXP_ENEMY_Rot隐藏物|r|cFFfa9602|r把它们偷走|T134173:0|t[会说话的脑袋]|cRXP_WARN_在包里点击它|r
    .goto Silverpine Forest,66.0,24.7
    .collect 3317,1
    .accept 460 >>接任务: |cRXP_WARN_支离破碎|r
    .use 3317
    .mob Rot Hide Brute
    .mob Rot Hide Plague Weaver
    .mob Rot Hide Savage
    .mob Raging Rot Hide
step
    .train 415936,1
    >>与|cRXP_PICK_Shallow Grave|r交互
    .goto Silverpine Forest,67.8,24.8
    .turnin 460 >>交任务: |cRXP_FRIENDLY_支离破碎|r
    .accept 461 >>接任务: |cRXP_WARN_密室|r
    .target Shallow Grave
step
    .train 415936,1
    >>与|cRXP_PICK_Dusty Shelf|r|cRXP-WARN_in左上角塔楼中的城堡一侧互动（在第一个楼梯后向左走）|r
    .goto Silverpine Forest,65.3,24.8
    .turnin 461 >>交任务: |cRXP_FRIENDLY_密室|r
    .accept 491 >>接任务: |cRXP_WARN_给比索的魔杖|r
    .target Dusty Shelf
step
    .train 415936,1
    #completewith next
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
    .goto Undercity,83.8,16.2
    .turnin 491 >>交任务: |cRXP_FRIENDLY_给比索的魔杖|r
    .accept 78277 >>Accept A Token of Gratitude
    .turnin 78277 >>Turn in A Token of Gratitude
    .train 415936 >>|cRXP_WARN_你将通过在任务中转身自动训练符文|r
    .target Bethor Iceshard
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 活炸弹-20（The Barrens）
#title Living Bomb

<< Horde Mage SoD

step
    #optional
    .train 415936,1
    .train 1953,1
    +|cRXP_WARN_你必须训练|r|T135736:0|t[Blink]|cRXP_WARN_to才能获得|r|T236220:0|t[Living Bomb]|cRXP_WARN_run|r
step
    #optional
    .train 415936,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_Reagent供应商处购买一个或多个|r|T135933:0|t[理解符]|cRXP-Buy_|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .train 415936,1
    .goto The Barrens,45.45,80.00
    .aura 421063,1 >>|cRXP_WARN_对着墙壁上的|r|cRXP_PICK_蚀刻雕刻|r|cRXP_WARN_闪烁，得到|r|T236168:0|t[无台阶路径]|cRXP-WARN_buff|r
step
    .train 415936,1
    .goto The Barrens,45.28,80.14,5,0
    .goto The Barrens,45.23,80.42,5,0
    .goto The Barrens,45.06,80.57,5,0
    .goto The Barrens,44.94,80.80,5,0
    .goto The Barrens,44.87,81.08,5,0
    .goto The Barrens,44.80,81.37
    .train 415936 >>|cRXP_WARN_Cast|r|T135736:0|t[闪烁]|cRXP_WARN_一个接一个地进入绿色圆圈。最后，对着|r|cRXP_PICK_Etched Carving|r|cRXP_WARN_to train|r|T236220:0|t[活炸弹]眨眼
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#title Spellfrost Bolt/Frostfire Bolt
#name 魔法霜螺栓/霜火螺栓-37（Stranglethorn Vale）

step << Alliance
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_Reagent供应商处购买一个或多个|r|T135933:0|t[理解符]|cRXP-Buy_|r
    .collect 211779,1
step << Horde
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_Reagent供应商处购买一个或多个|r|T135933:0|t[理解符]|cRXP-Buy_|r
    .collect 211779,1
step
    .train 415948,1
    .train 401762,1
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step
    .train 415948,1
    .train 401762,1
    #loop
    .goto Stranglethorn Vale,46.6,30.0,60,0
    .goto Stranglethorn Vale,43.6,33.2,60,0
    .goto Stranglethorn Vale,46.4,40.6,60,0
    .goto Stranglethorn Vale,48.6,40.8,60,0
    >>杀死|cRXP_ENEMY_Skullsplitter神秘人|r。为|T134939:0|t[|cRXP_Loot_Spell Notes:PELFRB STOLLOTS]|r和|T1349399:0|t[|cRXX_Loot_Speel Notes:TROFF IRESTBOL|r]掠夺它们
    .collect 213127,1
    .collect 217161,1
    .mob Skullsplitter Mystic
step << Alliance
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_从|cRXP_FRIENDLY_Reagent供应商|r处购买一个或多个|r|T135933:0|t[理解符咒]|cRXP_Buy_以破解符文|r
    .collect 211779,1
step << Horde
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_从|cRXP_FRIENDLY_Reagent供应商|r处购买一个或多个|r|T135933:0|t[理解符咒]|cRXP_Buy_以破解符文|r
    .collect 211779,1
step
    .train 415948 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_LOOT_Spell注释：PELFRB STOLLOTS|r]|cRXP _WARN_to train|r|T135780:0|t[Spellfrost Bolt]
    .train 401762 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_LOOT_拼写说明：TROFF IRESTBOL|r]|cRXP-WARN_to train|r|T236217:0|t[霜丝螺栓]
    .use 213127
    .use 217161
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 热条纹-32（Alterac山脉）
#title Hot Streak

-- Hot Streak

step
    #optional
    .train 401749,1
    .train 2121,1 -- flamestrike r2
    .train 8422,1 -- flamestrike r3
    .train 8423,1 -- flamestrike r4
    .train 2120 >>|cRXP_WARN_您必须经过|r|T135826:0|t[Framestrike]|cRXP_WARN_trained才能获得|r|T236218:0|t[Hot Streak]|cRXP_WARN_rune|r
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286
    .zone Alterac Mountains >>前往: |cRXP_PICK_奥特兰克山脉|r
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286,-1
    .goto Alterac Mountains,60.278,44.900,-1
    >>|cRXP_WARN_铸造|r|T135826:0|t[火焰打击]|cRXP_WARN_在Strahnbrad铁匠楼的两个波纹管上。一旦其中一个风箱开始发出红色和炽热的光芒，就在第二个风箱上施放|r|T135826:0|t[火焰打击]|cRXP_WARN_again来点燃它。这将触发|cRXP_ENEMY_Ancient Fire Elemental|r生成|r
    >>杀死|cRXP_ENEMY_Ancient Fire Elemental|r。为|T134939:0|t[|cRXP-Loot_Spell Notes:Hot Streak|r]掠夺它
    .collect 213113,1
    .mob Ancient Fire Elemental
step
    .train 401749 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_LOOT_拼写注释：热点|r]|cRXP-WARN_训练|r|T236218:0|t[热点]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 热条纹-37（阿拉蒂高地）
#title Hot Streak

-- Hot Streak

step
    .train 401749,1
    #completewith next
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    .train 401749,1
    .goto Arathi Highlands,67.46,28.79,40,0
    .goto Arathi Highlands,65.47,28.77,40,0
    .goto Arathi Highlands,65.87,31.24,40,0
    .goto Arathi Highlands,67.47,30.65,40,0
    .goto Arathi Highlands,66.82,29.77
    >>杀死|cRXP_ENEMY_Burning Exiles|r。为|T134939:0|t[|cRXP-Loot_Spell Notes:Hot Streak|r]掠夺它们
    >>|cRXP_WARN_注：据报道，这是一个相对较低的下降率。你可能想考虑从Alterac山脉购买|r
    .collect 213113,1
    .mob Burning Exile
step
    .train 401749 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_LOOT_拼写注释：热点|r]|cRXP-WARN_训练|r|T236218:0|t[热点]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 计时保护-30（千针）
#title Chronostatic Preservation

step
    .train 416028,1
    #completewith SpellNotes
    +|cRXP_WARN_请确保至少带一个其他|cFF69CCF0Mage|r朋友执行以下步骤！下一部分无法单独完成！|r
step
    .train 425189,1
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
    .train 425189,1
    #loop
    .goto Thousand Needles,23.2,25.0,25,0
    .goto Thousand Needles,20.2,22.0,25,0
    .goto Thousand Needles,17.6,19.6,25,0
    .goto Thousand Needles,18.6,24.6,25,0
    >>杀死|cRXP_ENEMY_Galak掠夺者|r、|cRXD_ENEMY_加拉克掠夺者| r和|cRXP_ENEMY_加拉克风暴者|r。抢走他们的|cRXT_Loot_美洲狮笼钥匙|r
    .collect 214435,1
    .mob Galak Mauler
    .mob Galak Marauder
    .mob Galak Stormer
    .itemcount 213634,<1
step
    #completewith next
    .goto Thousand Needles,23.714,24.780
    +打开|cRXP_PICK_Cougar Cage |r以释放|cRXP_ENEMY_Seared Needles Cougar |r
    .itemcount 214435,1
step
    .train 425189,1
    .goto Thousand Needles,23.714,24.780
    >>杀死|cRXP_ENEMY_Seared Needles美洲狮|r。掠夺她以获得|T134943:0|t[|cRXP_Loot_部分咒语注释|r]
    >>|cRXP_WARN_你只能使用冰霜魔法来削弱它，这样它才能被伤害|r
    .mob Seared Needles Cougar
    .collect 213634,1
step
    .train 425189,1
    .goto Thousand Needles,13.598,33.854,40,0
    .goto Thousand Needles,10.81,39.60
    >>杀死|cRXP_ENEMY_Singed高位配偶|r。为|T134938:0|t[|cRXP_Loot_Partial Spell Notes|r]掠夺它
    >>|cRXP_WARN_你只能使用冰霜魔法来削弱它，这样它才能被伤害|r
    .collect 213633,1
    .mob Singed Highperch Consort
step
    #label SpellNotes
    .train 425189,1
    .goto Thousand Needles,26.66,46.38
    >>杀死|cRXP_ENEMY_Scoched Screeching Roguefeath|r。为|T134937:0|t[|cRXP_OOT_Partial Spell Notes|r]掠夺它
    >>|cRXP_WARN_你只能使用冰霜魔法来削弱它，这样它才能被伤害|r
    .collect 213632,1
    .mob Scorched Screeching Roguefeather
step
    .train 425189,1
    >>|cRXP_WARN_使用|r|T134943:0|t|T134938:0|t| T134937:0|t[|cRXP_LOOT_部分拼写注释|r]|cRXP_WARN_创建|r|T134939:0|t[|cRXT_FRIENDLY_拼写注释：计时保存|r]
    .collect 213116,1
    .use 213634
    .use 213633
    .use 213632
step
    .train 425189 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：计时保护|r|cRXP-WARN_to train|r|T135729:0|t[计时保护]
    .use 213116
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Helmet
#name 时间异常-42（艾泽拉斯）


<< Mage SoD

step
    .train 429306,1
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
step
    .train 429306,1
    #loop
    .goto Feralas,76.0,58.4,20,0
    .goto Feralas,76.8,63.6,20,0
    .goto Feralas,72.6,63.8,20,0
    .goto Feralas,75.0,59.2,20,0
    >>杀死|cRXP_ENEMY_Zukk'ash部队|r为|T237070:0|t[Zukk'ash Resin]掠夺它们
    .collect 221361,5
    .mob Zukk'ash Worker
    .mob Zukk'ash Stinger
    .mob Zukk'ash Tunneler
    .mob Zukk'ash Wasp
step
    .train 429306,1
    .zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
    .train 429306,1
    >>杀死|cRXP_ENEMY_Owlbeast|r为|cRXP_Loot_|T132914:0|t水晶猫头鹰被子而掠夺它们|r
    .collect 221359,1
    .mob Primitive Owlbeast
    .mob Savage Owlbeast
    .mob Vicious Owlbeast
step
    .train 429306,1
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
step
    .train 429306,1
    >>杀死|cRXP_ENEMY_Zul'Farrak Zombie|r。掠夺它们以换取|cRXX_Loot_|T237132:0|t法拉基纸莎草|r
    .collect 221360,8
    .mob Zul'Farrak Zombie
step << Horde
    .train 429306,1
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602in Undercity, Magic Quarter.|r
    .accept 82054
step << Alliance
    .train 429306,1
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602in Stormwind, Mage Tower.|r
    .accept 82054
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Bracers(Balefire Bolt)
#name Balefire螺栓-15（Westfall）

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行购买|r|T134945:0|t[空间修补卷轴]|cRXP_Buy_|r|cRXP_WARN_另外一个附魔师可以为你制作它。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step
    .train 429311,1
    #loop
    .goto Westfall,47.0,39.4,40,0
    .goto Westfall,51.0,32.6,40,0
    .goto Westfall,47.6,22.0,40,0
    .goto Westfall,46.8,12.6,40,0
    .goto Westfall,41.6,15.2,40,0
    .goto Westfall,32.4,29.2,40,0
    .goto Westfall,29.8,34.4,40,0
    .goto Westfall,31.8,39.4,40,0
    .goto Westfall,28.6,44.0,40,0
    .goto Westfall,29.0,47.8,40,0
    .goto Westfall,29.0,58.8,40,0
    .goto Westfall,31.4,65.6,40,0
    .goto Westfall,29.6,69.4,40,0
    .goto Westfall,32.2,76.0,40,0
    .goto Westfall,32.2,80.2,40,0
    .goto Westfall,34.0,82.2,40,0
    .goto Westfall,37.8,85.4,40,0
    .goto Westfall,47.6,79.6,40,0
    .goto Westfall,51.6,71.4,40,0
    .goto Westfall,47.6,67.2,40,0
    .goto Westfall,62.6,26.6,40,0
    .goto Westfall,57.0,10.6,40,0
    .cast 448381 >>在|cRXP_PICK_Portal|r上使用|cRXP_FRIENDLY_Scroll of Spatial Mending|r调用|cRXP _ENEMY_Fel Interoper|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>杀死|cRXP_ENEMY_Fel Interoper|r。为|cRXX_Loot_|T134939:0|t抢劫他|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Bracers(Balefire Bolt)
#name Balefire螺栓-35（Desolace）

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行购买|r|T134945:0|t[空间修补卷轴]|cRXP_Buy_|r|cRXP_WARN_另外一个附魔师可以为你制作它。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 429311,1
    #loop
    .goto Desolace,71.6,18.4,40,0
    .goto Desolace,73.6,24.8,40,0
    .goto Desolace,80.4,17.0,40,0
    .goto Desolace,74.6,10.4,40,0
    .goto Desolace,54.4,19.2,40,0
    .goto Desolace,47.4,22.2,40,0
    .goto Desolace,56.0,74.8,40,0
    .goto Desolace,52.0,85.6,40,0
    .goto Desolace,49.6,74.8,40,0
    .cast 448381 >>在|cRXP_PICK_Portal|r上使用|cRXP_FRIENDLY_Scroll of Spatial Mending|r调用|cRXP _ENEMY_Fel Interoper|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>杀死|cRXP_ENEMY_Fel Interoper|r。为|cRXX_Loot_|T134939:0|t抢劫他|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Bracers(Balefire Bolt)
#name Balefire螺栓-45（Feralas）

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行购买|r|T134945:0|t[空间修补卷轴]|cRXP_Buy_|r|cRXP_WARN_另外一个附魔师可以为你制作它。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
step
    .train 429311,1
    #loop
    .goto Feralas,74.2,50.8,40,0
    .goto Feralas,73.2,54.4,40,0
    .goto Feralas,74.2,56.8,40,0
    .goto Feralas,76.2,56.6,40,0
    .goto Feralas,74.2,60.0,40,0
    .goto Feralas,76.6,63.6,40,0
    .goto Feralas,72.6,63.8,40,0
    .goto Feralas,70.6,62.6,40,0
    .goto Feralas,68.2,58.8,40,0
    .cast 448381 >>在|cRXP_PICK_Portal|r上使用|cRXP_FRIENDLY_Scroll of Spatial Mending|r调用|cRXP _ENEMY_Fel Interoper|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>杀死|cRXP_ENEMY_Fel Interoper|r。为|cRXX_Loot_|T134939:0|t抢劫他|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt-45（阿扎拉）

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行购买|r|T134945:0|t[空间修补卷轴]|cRXP_Buy_|r|cRXP_WARN_另外一个附魔师可以为你制作它。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Azshara >>前往: |cRXP_PICK_艾萨拉|r
step
    .train 429311,1
    #loop
    .goto Azshara,17.6,58.8,40,0
    .goto Azshara,16.6,51.0,40,0
    .goto Azshara,21.2,54.0,40,0
    .goto Azshara,24.8,47.8,40,0
    .goto Azshara,33.0,81.6,40,0
    .goto Azshara,30.2,79.8,40,0
    .goto Azshara,25.2,81.6,40,0
    .cast 448381 >>在|cRXP_PICK_Portal|r上使用|cRXP_FRIENDLY_Scroll of Spatial Mending|r调用|cRXP _ENEMY_Fel Interoper|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>杀死|cRXP_ENEMY_Fel Interoper|r。为|cRXX_Loot_|T134939:0|t抢劫他|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Bracers(Balefire Bolt)
#name Balefire螺栓-35（爆破地面）

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City>>前往: |cRXP_PICK_暴风城|r
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行购买|r|T134945:0|t[空间修补卷轴]|cRXP_Buy_|r|cRXP_WARN_另外一个附魔师可以为你制作它。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
step
    .train 429311,1
    #loop
    .goto Blasted Lands,56.2,36.6,40,0
    .goto Blasted Lands,62.0,39.2,40,0
    .goto Blasted Lands,60.2,46.8,40,0
    .goto Blasted Lands,49.0,48.2,40,0
    .goto Blasted Lands,46.8,39.2,40,0
    .goto Blasted Lands,41.4,33.6,40,0
    .goto Blasted Lands,43.8,25.0,40,0
    .goto Blasted Lands,35.0,54.8,40,0
    .cast 448381 >>在|cRXP_PICK_Portal|r上使用|cRXP_FRIENDLY_Scroll of Spatial Mending|r调用|cRXP _ENEMY_Fel Interoper|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>杀死|cRXP_ENEMY_Fel Interoper|r。为|cRXX_Loot_|T134939:0|t抢劫他|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Bracers(Balefire Bolt)
#name 打捆机螺栓-15（桶）

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行购买|r|T134945:0|t[空间修补卷轴]|cRXP_Buy_|r|cRXP_WARN_另外一个附魔师可以为你制作它。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step
    .train 429311,1
    #loop
    .goto The Barrens,60.2,36.0,40,0
    .goto The Barrens,60.8,29.0,40,0
    .goto The Barrens,59.8,27.6,40,0
    .goto The Barrens,57.6,23.6,40,0
    .goto The Barrens,42.0,14.2,40,0
    .goto The Barrens,40.0,18.4,40,0
    .goto The Barrens,44.4,50.0,40,0
    .goto The Barrens,46.4,52.6,40,0
    .goto The Barrens,47.6,49.4,40,0
    .goto The Barrens,54.4,48.6,40,0
    .goto The Barrens,58.2,49.6,40,0
    .goto The Barrens,51.8,53.4,40,0
    .goto The Barrens,48.6,83.0,40,0
    .goto The Barrens,46.2,85.6,40,0
    .goto The Barrens,43.8,83.8,40,0
    .cast 448381 >>在|cRXP_PICK_Portal|r上使用|cRXP_FRIENDLY_Scroll of Spatial Mending|r调用|cRXP _ENEMY_Fel Interoper|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>杀死|cRXP_ENEMY_Fel Interoper|r。为|cRXX_Loot_|T134939:0|t抢劫他|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Bracers(Balefire Bolt)
#name Balefire螺栓-15（深色海岸）

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行购买|r|T134945:0|t[空间修补卷轴]|cRXP_Buy_|r|cRXP_WARN_另外一个附魔师可以为你制作它。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
step
    .train 429311,1
    #loop
    .goto Darkshore,43.2,27.0,40,0
    .goto Darkshore,47.4,28.8,40,0
    .goto Darkshore,56.4,24.8,40,0
    .goto Darkshore,59.8,21.8,40,0
    .goto Darkshore,49.8,36.8,40,0
    .goto Darkshore,46.2,46.8,40,0
    .goto Darkshore,37.6,63.8,40,0
    .cast 448381 >>在|cRXP_PICK_Portal|r上使用|cRXP_FRIENDLY_Scroll of Spatial Mending|r调用|cRXP _ENEMY_Fel Interoper|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>杀死|cRXP_ENEMY_Fel Interoper|r。为|cRXX_Loot_|T134939:0|t抢劫他|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt-15（银松森林）

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行购买|r|T134945:0|t[空间修补卷轴]|cRXP_Buy_|r|cRXP_WARN_另外一个附魔师可以为你制作它。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step
    .train 429311,1
    #loop
    .goto Silverpine Forest,45.6,31.8,40,0
    .goto Silverpine Forest,44.6,25.8,40,0
    .goto Silverpine Forest,38.8,23.4,40,0
    .goto Silverpine Forest,38.8,18.4,40,0
    .goto Silverpine Forest,49.8,13.4,40,0
    .goto Silverpine Forest,55.6,24.6,40,0
    .goto Silverpine Forest,50.2,56.8,40,0
    .goto Silverpine Forest,50.2,65.2,40,0
    .cast 448381 >>在|cRXP_PICK_Portal|r上使用|cRXP_FRIENDLY_Scroll of Spatial Mending|r调用|cRXP _ENEMY_Fel Interoper|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>杀死|cRXP_ENEMY_Fel Interoper|r。为|cRXX_Loot_|T134939:0|t抢劫他|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Bracers(Balefire Bolt)
#name Balefire螺栓-35（悲伤沼泽）

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行购买|r|T134945:0|t[空间修补卷轴]|cRXP_Buy_|r|cRXP_WARN_另外一个附魔师可以为你制作它。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
    .train 429311,1
    #loop
    .goto Swamp of Sorrows,36.6,50.0,40,0
    .goto Swamp of Sorrows,27.0,49.8,40,0
    .goto Swamp of Sorrows,22.8,64.6,40,0
    .goto Swamp of Sorrows,16.6,63.6,40,0
    .goto Swamp of Sorrows,10.6,60.2,40,0
    .goto Swamp of Sorrows,12.6,29.6,40,0
    .goto Swamp of Sorrows,34.6,28.0,40,0
    .goto Swamp of Sorrows,49.8,38.6,40,0
    .goto Swamp of Sorrows,61.0,43.4,40,0
    .goto Swamp of Sorrows,60.8,27.4,40,0
    .goto Swamp of Sorrows,72.8,10.4,40,0
    .goto Swamp of Sorrows,87.6,26.0,40,0
    .goto Swamp of Sorrows,81.4,34.6,40,0
    .goto Swamp of Sorrows,91.6,56.4,40,0
    .goto Swamp of Sorrows,91.0,65.6,40,0
    .goto Swamp of Sorrows,83.8,66.4,40,0
    .goto Swamp of Sorrows,77.4,89.6,40,0
    .goto Swamp of Sorrows,77.6,90.0,40,0
    .goto Swamp of Sorrows,69.8,78.0,40,0
    .goto Swamp of Sorrows,56.8,65.6,40,0
    .cast 448381 >>在|cRXP_PICK_Portal|r上使用|cRXP_FRIENDLY_Scroll of Spatial Mending|r调用|cRXP _ENEMY_Fel Interoper|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>杀死|cRXP_ENEMY_Fel Interoper|r。为|cRXX_Loot_|T134939:0|t抢劫他|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune和书籍指南
#subgroup Bracers(Balefire Bolt)
#name Balefire Bolt-28（雷德里奇山脉）

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行购买|r|T134945:0|t[空间修补卷轴]|cRXP_Buy_|r|cRXP_WARN_另外一个附魔师可以为你制作它。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
step
    .train 429311,1
    #loop
    .goto Redridge Mountains,29.8,30.4,40,0
    .goto Redridge Mountains,79.2,33.8,40,0
    .goto Redridge Mountains,83.2,45.2,40,0
    .goto Redridge Mountains,81.8,60.8,40,0
    .goto Redridge Mountains,79.0,73.0,40,0
    .goto Redridge Mountains,71.4,83.6,40,0
    .cast 448381 >>在|cRXP_PICK_Portal|r上使用|cRXP_FRIENDLY_Scroll of Spatial Mending|r调用|cRXP _ENEMY_Fel Interoper|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>杀死|cRXP_ENEMY_Fel Interoper|r。为|cRXX_Loot_|T134939:0|t抢劫他|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓]
    .use 223147
]])
