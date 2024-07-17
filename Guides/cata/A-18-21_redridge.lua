local _,addon = ...
if addon.game ~= "CATA" or addon.player.faction ~= 'Alliance' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#name 15-20 Redridge
#displayname 18-21 Redridge
#next 20-25 Duskwood
<<Alliance

--TODO: Figure out how flight paths work while leveling
--FPs from lower level zones are supposed to open up as you level: https://youtu.be/9Y_PE0Wb4IM?si=H5H-FVQ-5StEQUfI&t=929

step << NightElf/Draenei/Worgen
    .goto 62,51.701,17.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
    .target Teldira Moonfeather
    .fly Rut'theran Village >>飞往Rut'theran村
    .zoneskip Darkshore,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>穿过入口到达达纳苏斯
    .train 33388,1
    .xp <20,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>穿过入口到达达纳苏斯
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.497,32.595
    >>对话: |cRXP_FRIENDLY_莱兰奈|r
    +|cRXP_BUY_购买一个|r|T132267:0|t[Saber]|cRXP_Buy_mount，你要到20级才能使用它，把它放在包里待用|r
    .target Lelanai
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,48.125,21.796
    >>对话: |cRXP_FRIENDLY_贾萨姆|r
    .train 33388 >>Train Apprentice Riding
    .target Jartsam
    .money <3.6000 
    .xp <20,1
step << NightElf
    .goto 89,36.547,50.413
    .zone 57 >>穿过入口返回Rut'Thean村
    .zoneskip 89,1
step << Draenei
    .goto 57,52.30,89.50
    .zone Azuremyst Isle >>前往: |cRXP_PICK_秘蓝岛|r
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto Azuremyst Isle,81.497,51.456
    >>对话: |cRXP_FRIENDLY_象群管理者妥拉留斯|r
    +买一个Elekk，你要到20级才能使用，把它放在包里待用
    .target Torallius the Pack Handler
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto 89,81.348,52.623
    >>对话: |cRXP_FRIENDLY_埃亚伦|r
    .train 33388 >>Train Apprentice Riding
    .target Aalun
    .money <3.6000 
    .xp <20,1
    .zoneskip Azuremyst Isle,1
step << Draenei
    .goto Azuremyst Isle,20.41,54.18
    .zone 57 >>乘船回鲁特朗村
    .zoneskip Azuremyst Isle,1
step << NightElf/Draenei/Worgen
    .goto 57,55.037,93.677,25,0
    .goto 57,55.037,93.677,0
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Gnome/Dwarf
#completewith next
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Kharanos >>Fly to Kharanos << Gnome
    .fly Gol'Bolar Quarry >>Fly to Gol'Bolar Quarry << Dwarf
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Gnome
    .goto 1426/0,-618.400,-5451.100
    >>对话: |cRXP_FRIENDLY_米利·羽哨|r
    +|cRXP_BUY_购买一个|r|T132247:0|t[Mechanontrider]|cRXP_Buy_mount，你要到20级才能使用它，把它放在包里待用|r
    .target Milli Featherwhistle
    .mountcount 0-150,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Dwarf
    .goto 1426/0,-1322.500,-5539.800
    >>对话: |cRXP_FRIENDLY_维隆·冻石|r
    +|cRXP_BUY_购买一个|r|T132248:0|t[Ram]|cRXP_Buy_mount，你要到20级才能使用它，把它放在包里待用|r
    .target Veron Amberstill
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
step << Human/Dwarf/Gnome
    .goto 48,33.938,50.932,-1
    .goto 1426/0,-497.200,-5663.700,-1 << Gnome
    .goto 1426/0,-1578.000,-5718.000,-1 << Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Stormwind >>飞到暴风城
    .target Thorgrum Borrelson
    .target Brolan Galebeard << Gnome
    .target Dominic Galebeard << Dwarf
    .zoneskip Stormwind City
    .zoneskip Elwynn Forest
    .zoneskip Redridge Mountains
step
    .goto Stormwind City,62.875,71.490
    >>单击|cRXP_PICK_Hero的呼叫板|r
    .accept 28563 >>接任务: |cRXP_WARN_英雄的召唤：赤脊山！|r
    >>|cRXP_WARN_如果没有提供此任务，请跳过此步骤|r
    .isQuestAvailable 26504
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_从她那里买一个|r|T135280:0|t[Dacian Falx]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marda Weller
    .xp <21,1
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_从她那里买一个|r|T135280:0|t[Dacian Falx]|cRXP_Buy_。当你达到21级时装备|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marda Weller
    .xp >21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_从她那里买一个|r|T135324:0|t[长剑]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marda Weller
    .xp <21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_从她那里买一个|r|T135324:0|t[长剑]|cRXP_Buy_。当你达到21级时装备|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marda Weller
    .xp >21,1
step << Shaman
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_从她那里买一个|r|T132415:0|t[双轴]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 927,1 -- Double Axe (1)
    .money <0.5911
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黎娜·斯图瓦|r
    >>|cRXP_BUY_从她那里购买|r|T135612:0|t[BKP 2700“Enforcer”]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp <21,1
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黎娜·斯图瓦|r
    >>|cRXP_BUY_从她那里购买|r|T135612:0|t[BKP 2700“Enforcer”]|cRXP_Buy_。当你达到21级时装备|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp >21,1
step << Warrior/Paladin
    #optional
    #completewith EnterRR
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Rogue
    #optional
    #completewith EnterRR
    +|cRXP_WARN_equp the |r|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Shaman
    #optional
    #completewith EnterRR
    +|cRXP_WARN_调用|r|T132415:0|t[双轴]
    .use 927
    .itemcount 927,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Hunter
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equip the |r|T135612:0|t[BKP 2700“Enforcer”]
    .use 3024
    .itemcount 3024,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
    #optional
    #completewith next
    .goto 84,64.55,70.61,15,0
    .goto 84,68.50,73.43,10,0
    .goto 84,68.54,74.89,10,0
    .goto 84,70.94,72.47,10 >>前往|cRXP_FRIENDLY_Dungar Longdrink|r
    .noflyable --Azeroth Flying
step
    #completewith next
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Eastvale Logging Camp >>飞往伊斯特韦尔伐木营地
	.target Dungar Longdrink
    .zoneskip 49 --Redridge Mountains
    .noflyable --Azeroth Flying
step
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰达尔·亨特|r
    .train 33388 >>Train Apprentice Riding
    .money <3.6000 
    .target Randal Hunter
    .xp <20,1
step << Human
    .train 33388,3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯蒂·亨特|r
    +|cRXP_BUY_从她那里买一匹|r|T132261:0|t[马]|cRXP_Buy_|r
    .money <0.08
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    #label EnterRR
    .goto 49,11.78,64.40
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
    .isQuestAvailable 26504
step
    .goto 49,16.032,64.633
    >>单击|cRXP_PICK_Wanted海报|r 
    .accept 26504 >>接任务: |cRXP_WARN_通缉：赤脊山豺狼人|r
step
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达希·帕克|r, 他在里面
    .accept 26506 >>接任务: |cRXP_WARN_茄汁黄豆|r
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
    .turnin 28563 >>交任务: |cRXP_FRIENDLY_英雄的召唤：赤脊山！|r
    .accept 26503 >>接任务: |cRXP_WARN_继续评估威胁|r
    .target Watch Captain Parker
    .isOnQuest 28563
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
    .accept 26503 >>接任务: |cRXP_WARN_继续评估威胁|r
    .target Watch Captain Parker
step
    #optional
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,13.543,66.732,50,0
    .goto 49,12.566,69.384,50,0
    .goto 49,14.471,75.116,50,0
    .goto 49,15.220,73.203,50,0
    >>杀死|cRXP_ENEMY_Tarantula |r。掠夺它们的|cRXD_Loot_Tarantula Eyes |r
    >>杀死在上空飞行或栖息的|cRXP_ENEMY_Dire秃鹰|r。掠夺他们的|cRXP_Loot_Condor Giblets|r
    .complete 26506,1,2 --Tarantula Eyes (2/4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .disablecheckbox
    .unitscan Dire Condor
    .mob Tarantula
    .maxlevel 20
step
    #completewith GnollGuide
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    >>杀死|cRXP_ENEMY_Tarantula |r。掠夺它们的|cRXD_Loot_Tarantula Eyes |r
    >>杀死|cRXP_ENEMY_Dire秃鹰|r在上空飞行或坐在栖息处。掠夺他们的|cRXP_Loot_Condor Giblets|r
    >>杀死|cRXP_ENEMY_Great Goretusks|r。掠夺他们的|cRXP-Loot_Goretusk Kidneys|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .complete 26506,3 --Goretusk Kidney (4)
    .mob +Great Goretusk
    .maxlevel 20
step
    #completewith Kidneys
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>杀死|cRXP_ENEMY_Redridge Thrasher|r、|cRXD_ENEMY_Redridge Mongrels|r和|cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #optional
    #completewith next
    .goto 49,23.281,68.320,50,0
    .goto 49,28.028,74.887,30 >>前往|cRXP_PICK_Gnoll订单|r
    .noflyable --Azeroth Flying
step
    #label GnollOrders
    .goto 49,28.028,74.887
    >>将|cRXP_PICK_Gnoll Orders|r抢劫到桶上
    .complete 26503,2 --Gnoll Orders (1)
step
    #label GnollGuide
    .goto 49,30.563,62.710
    >>在地面上掠夺|cRXP_PICK_Gnoll战略指南|r
    .complete 26503,3 --Gnoll Strategy Guide (1)
step
    #label Kidneys
    #loop
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    .goto 49,27.403,59.815,50,0
    .goto 49,29.142,56.606,50,0
    .goto 49,32.433,54.249,50,0
    .goto 49,33.624,57.701,50,0
    .goto 49,35.378,64.225,50,0
    .goto 49,32.309,63.674,50,0
    .goto 49,29.952,64.571,50,0
    >>杀死|cRXP_ENEMY_Great Goretusks|r。掠夺他们的|cRXP-Loot_Goretusk Kidneys|r
    .complete 26506,3 --Goretusk Kidney (4)
    .mob Great Goretusk
    .maxlevel 20
step
    #optional
    #completewith RRGnolls
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    >>杀死|cRXP_ENEMY_Tarantula |r。掠夺它们的|cRXD_Loot_Tarantula Eyes |r
    >>杀死|cRXP_ENEMY_Dire秃鹰|r在上空飞行或坐在栖息处。掠夺他们的|cRXP_Loot_Condor Giblets|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .maxlevel 20
step
    #optional
    #completewith next
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>杀死|cRXP_ENEMY_Redridge Thrasher|r、|cRXD_ENEMY_Redridge Mongrels|r和|cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #label GnollPlans
    .goto 49,16.203,55.263
    >>在地面上掠夺|cRXP_PICK_Gnoll作战计划|r
    .complete 26503,1 --Gnoll Battle Plans (1)
step
    #label RRGnolls
    #loop
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    .goto 49,16.188,59.307,50,0
    .goto 49,18.410,58.985,50,0
    .goto 49,17.988,55.657,50,0
    .goto 49,15.728,54.280,50,0
    .goto 49,16.049,56.984,50,0
    >>杀死|cRXP_ENEMY_Redridge Thrasher|r、|cRXD_ENEMY_Redridge Mongrels|r和|cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #sticky
    #label Eyes
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .waypoint 49,13.543,66.732,40,0
    .waypoint 49,12.566,69.384,40,0
    .waypoint 49,14.471,75.116,40,0
    .waypoint 49,15.220,73.203,40,0
    >>杀死|cRXP_ENEMY_Tarantula |r。掠夺它们的|cRXD_Loot_Tarantula Eyes |r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob Tarantula
    .maxlevel 20
step
    #loop
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,16.461,54.587,40,0
    .goto 49,20.199,58.665,40,0
    .goto 49,20.881,65.321,40,0
    .goto 49,20.123,66.613,40,0
    .goto 49,16.993,63.436,40,0
    .goto 49,13.697,68.732,40,0
    .goto 49,13.265,62.483,40,0
    >>杀死|cRXP_ENEMY_Dire秃鹰|r在上空飞行或坐在栖息处。掠夺他们的|cRXP_Loot_Condor Giblets|r
    .complete 26506,2 --Condor Giblets (4)
    .unitscan Dire Condor
    .maxlevel 20
step
    #requires Eyes
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达希·帕克|r, 他在里面
    .turnin 26506 >>交任务: |cRXP_FRIENDLY_茄汁黄豆|r
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
    .turnin 26504 >>交任务: |cRXP_FRIENDLY_通缉：赤脊山豺狼人|r
    .turnin 26503 >>交任务: |cRXP_FRIENDLY_继续评估威胁|r
    .accept 26505 >>接任务: |cRXP_WARN_帕克的报告|r
    .target Watch Captain Parker
step
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Lakeshire >>获取莱克郡航线
    .target Ariena Stormfeather
step
    #optional
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖恩|r
    .accept 26508 >>接任务: |cRXP_WARN_尼达的项链|r
    .target Shawn
    .flyable --Azeroth Flying
step
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖恩|r
    .accept 26508 >>接任务: |cRXP_WARN_尼达的项链|r
    .target Shawn
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入莱克郡市政厅
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Bailiff Conacher|r and |cRXP_FRIENDLY_Magistrate Solomon, 他在里面
    .accept 26511 >>接任务: |cRXP_WARN_打扫止水湖|r
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26505 >>交任务: |cRXP_FRIENDLY_帕克的报告|r
    .accept 26510 >>接任务: |cRXP_WARN_必须准备万全！|r
    .goto 49,28.910,41.111
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>离开莱克郡市政厅
step
    #sticky
    #label EverstillMurlocs
    #loop
    .goto 49,37.818,42.158,0
    .goto 49,39.626,46.404,0
    .waypoint 49,36.095,45.006,40,0
    .waypoint 49,36.580,43.202,40,0
    .waypoint 49,37.798,41.157,40,0
    .waypoint 49,38.840,41.673,40,0
    .waypoint 49,40.457,44.698,40,0
    .waypoint 49,42.557,47.125,40,0
    .waypoint 49,40.397,48.986,40,0
    .waypoint 49,36.943,50.290,40,0
    .waypoint 49,36.640,46.754,40,0
    >>杀死|cRXP_ENEMY_Murloc Flesheers|r和|cRXP_ENEMY_ Murloc Scouts|r
    .complete 26511,1 --Lake Everstill Murloc (10)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 49,37.818,42.158
    >>将|cRXP_PICK_Gnomecorder|r洗劫一空
    .complete 26510,1 --Gnomecorder (1)
step
    #optional
    #requires EverstillMurlocs
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入莱克郡市政厅
step
    #requires EverstillMurlocs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Bailiff Conacher|r and |cRXP_FRIENDLY_Magistrate Solomon, 他在里面
    .turnin 26511 >>交任务: |cRXP_FRIENDLY_打扫止水湖|r
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26510 >>交任务: |cRXP_FRIENDLY_必须准备万全！|r
    .accept 26512 >>接任务: |cRXP_WARN_调试侏儒通讯器|r
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>离开莱克郡市政厅
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r 
    .accept 26513 >>接任务: |cRXP_WARN_无影无踪|r
    .target Marshal Marris
step
    .goto 49,32.330,39.544
	>>|cRXP_WARN_前往莱克郡墓地|r
    .complete 26512,1 --Test the Gnomecorder at the Lakeshire Graveyard
    .turnin 26512 >>交任务: |cRXP_FRIENDLY_调试侏儒通讯器|r
    .accept 26514 >>接任务: |cRXP_WARN_峡谷嬉戏|r
--TODO: Quest is an auto turnin/pickup from the quest log, research how to automate it
--XX     >>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
step
    #sticky
    #label DirtScroll
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>杀死|cRXP_ENEMY_Redridge Gnolls|r。为|T134944:0|t|cRXP-Loot_[脏卷轴]|r掠夺它们
    >>|cRXP_WARN_使用|T134944:0|t|cRXP_LOOT_[脏卷轴]|r开始任务|r
    .collect 58898,1,26519,1 --Dirt-Stained Scroll (1)
    .accept 26519 >>接任务: |cRXP_WARN_只要控制了双头魔|r
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .use 58898
step
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .goto 49,36.305,30.502,50,0
    .goto 49,32.496,24.909,50,0
    .goto 49,30.051,28.018,50,0
    .goto 49,27.453,27.292,50,0
    .goto 49,27.470,34.077,50,0
    .goto 49,21.637,34.274,50,0
    .goto 49,23.390,26.005,50,0
    >>在地面上掠夺|cRXP_Loot_Redridge补给箱|r
    >>杀死|cRXP_ENEMY_Redridge Drudger|r，|cRXD_ENEMY_ Redridge Mystics|r，| cRXP__ENEMY_Redbridge Bashers|r、|cRXT_ENEMY_Redridge Alphas|r和|cRXP_ENEMY_Redridge Brutes|r。掠夺他们的|cRXP_Loot_Redridge Gnoll项圈|r
    >>|cRXP_WARN_避免拉动在该区域巡逻的|cRXP_ENEMY_Canyon Ettins|r|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .disablecheckbox
    .complete 26514,1 --Redridge Gnoll Collar (10)
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .unitscan Canyon Ettin
step
    .goto 49,20.431,26.655
    >>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
    .turnin 26514 >>交任务: |cRXP_FRIENDLY_峡谷嬉戏|r
    .accept 26544 >>接任务: |cRXP_WARN_他们变聪明了……|r
--TODO: Auto turn in, research how to automate it
step
    #optional
    #completewith next
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    >>在地面上掠夺|cRXP_Loot_Redridge补给箱|r
    >>|cRXP_WARN_避免拉动在该区域巡逻的|cRXP_ENEMY_Canyon Ettins|r|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #completewith Ardo
    #requires DirtScroll
    .goto 49,20.431,26.655
    .subzone 98 >>进入Rethban洞穴
    .isOnQuest 26544
step
    #sticky
    #requires DirtScroll
    #label Missive1
    #loop
    .goto 49,20.337,15.044,0
    .goto 49,22.424,17.323,0
    .goto 49,22.425,21.890,0
    .goto 49,21.588,23.647,0
    .goto 49,19.525,24.078,0
    .goto 49,20.141,21.509,0
    .goto 49,16.783,19.487,0
    .waypoint 49,20.337,15.044,20,0
    .waypoint 49,22.424,17.323,20,0
    .waypoint 49,22.425,21.890,20,0
    .waypoint 49,21.588,23.647,20,0
    .waypoint 49,19.525,24.078,20,0
    .waypoint 49,20.141,21.509,20,0
    .waypoint 49,16.783,19.487,20,0
    >>杀死雷思班洞穴内的|cRXP_ENEMY_Blackrock监督|r。为|cRXP_Loot_Blackrock兽人导弹掠夺它们|r
    .complete 26544,1 --Blackrock Orc Missive (1)
    .mob *Blackrock Overseer
step
    #sticky
    #label Missive2
    #requires Missive1
    >>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
    .turnin 26544 >>交任务: |cRXP_FRIENDLY_他们变聪明了……|r
    .accept 26545 >>接任务: |cRXP_WARN_犹勒必须死！|r
step
    #optional
    #completewith next
    #requires DirtScroll
    .goto 49,19.502,24.380,20,0
    .goto 49,18.121,22.037,20,0
    .goto 49,17.650,17.871,20,0
    .goto 49,19.884,17.025,15 >>前往Rethban洞穴内的|cRXP_ENEMY_Ardo Dirtpaw|r
step
    #requires DirtScroll
    #label Ardo
    >>杀死|cRXP_ENEMY_Ardo Dirtpaw|r。单击他旁边的|cRX_PICK_Ettin控制Orb|r
    .complete 26519,1 --Ardo Dirtpaw (1)
    .goto 49,18.432,18.172
    .mob +Ardo Dirtpaw
    .turnin 26519 >>交任务: |cRXP_FRIENDLY_只要控制了双头魔|r
    .accept 26520 >>接任务: |cRXP_WARN_拯救工头奥斯洛|r
    .goto 49,17.841,18.619
step
    #requires Missive1
    .goto 49,20.431,26.655,25,0
    .goto 49,21.318,27.426,40 >>退出Rethban洞穴
    .isOnQuest 26520
    .zoneskip 49,1 --Redridge Mountains
step
    #sticky
    #label SupplyCrates
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>在地面上掠夺|cRXP_Loot_Redridge补给箱|r
    >>|cRXP_WARN_避免拉动在该区域巡逻的|cRXP_ENEMY_Canyon Ettins|r|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #requires Missive2
    .goto 49,26.870,21.977
    >>杀死|cRXP_ENEMY_Yowler|r。为|cRXX_Loot_Blackrock入侵计划而掠夺他|r
    .complete 26545,1 --Yowler (1)
    .complete 26545,2 --Blackrock Invasion Plans (1)
    .mob Yowler
step
    #completewith next
    #requires SupplyCrates
    #loop
    .goto 49,23.859,29.302,0
    .goto 49,22.766,34.745,0
    .goto 49,24.022,35.828,0
    .goto 49,28.492,36.235,0
    .goto 49,27.799,30.853,0
    .line 49,23.859,29.302,23.973,30.595,23.762,32.089,22.766,34.745,23.014,35.134,23.619,34.381,24.022,35.828,25.529,35.789,26.902,36.339,28.492,36.235,28.357,34.410,27.054,32.432,27.799,30.853,27.502,28.865,26.595,28.355,25.013,28.408
    .goto 49,23.859,29.302,50,0
    .goto 49,23.973,30.595,50,0
    .goto 49,23.762,32.089,50,0
    .goto 49,22.766,34.745,50,0
    .goto 49,23.014,35.134,50,0
    .goto 49,23.619,34.381,50,0
    .goto 49,24.022,35.828,50,0
    .goto 49,25.529,35.789,50,0
    .goto 49,26.902,36.339,50,0
    .goto 49,28.492,36.235,50,0
    .goto 49,28.357,34.410,50,0
    .goto 49,27.054,32.432,50,0
    .goto 49,27.799,30.853,50,0
    .goto 49,27.502,28.865,50,0
    .goto 49,26.595,28.355,50,0
    .goto 49,25.013,28.408,50,0
    .cast 80704 >>站着不动时，在|cRXP_ENEMY_Canyon Ettin|r上使用|T332402:0|t[Ettin Control Orb]
    .use 58895
    .unitscan Canyon Ettin
    .isOnQuest 26520
step
    #requires SupplyCrates
    .goto 49,31.480,44.344
    >>前往|cRXP_FRIENDLY_Foreman Oslow|r。使用他旁边的|T332402:0|t[Ettin Control Orb]，同时控制|cRXP_FRIENDLY_Subdued Canyon Ettin|r
    .complete 26520,1 --Foreman Oslow Saved (1)
    .use 58895 
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r 
    .turnin 26513 >>交任务: |cRXP_FRIENDLY_无影无踪|r
    .target Marshal Marris
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入莱克郡市政厅
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Magistrate Solomon|r and |cRXP_FRIENDLY_Colonel Troteman, 他在里面
    .turnin 26545 >>交任务: |cRXP_FRIENDLY_犹勒必须死！|r
    .turnin 26520 >>交任务: |cRXP_FRIENDLY_拯救工头奥斯洛|r
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    .accept 26567 >>接任务: |cRXP_WARN_约翰·J·基沙恩|r
    .goto 49,28.659,40.744,5,0
    .goto 49,28.892,40.894,5,0
    .goto 49,28.659,40.744
    .target +Colonel Troteman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜里弗·科纳彻尔|r
    >>|cRXP_WARN_如果你已经接受了英雄的召唤：黄昏！之前的暴风任务，跳过这一步|r
    .accept 26728 >>接任务: |cRXP_WARN_英雄的召唤：暮色森林！|r
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Bailiff Conacher|r and |cRXP_FRIENDLY_Magistrate Solomon, 他在里面
    .accept 26728 >>接任务: |cRXP_WARN_英雄的召唤：暮色森林！|r
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26545 >>交任务: |cRXP_FRIENDLY_犹勒必须死！|r
    .turnin 26520 >>交任务: |cRXP_FRIENDLY_拯救工头奥斯洛|r
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    --XX Level 19/20 xp gate needed? (Hero's Call req is 19)
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>离开莱克郡市政厅
------Skip/remove section if Keeshan added
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r 
    .accept 26509 >>接任务: |cRXP_WARN_不速之客|r
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>杀死|cRXP_ENEMY_Bellygrub|r。为|cRXX_Loot_Bellygrub's Tusk|r掠夺她
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
    .turnin 26509 >>交任务: |cRXP_FRIENDLY_不速之客|r
    .target Martie Jainrose
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_在水下游泳并检查产卵位置。有10个地点同时有2个产卵点|r
    >>打开|cRXP_PICK_Glating Mud|r。把它偷走|cRXP_Loot_Nida的项链|r
    .complete 26508,1 --Nida's Necklace (1)
step
    .train 33388,1
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Eastvale Logging Camp >>飞往伊斯特韦尔伐木营地
	.target Ariena Stormfeather
step << Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯蒂·亨特|r
    +|cRXP_BUY_从她那里买一匹|r|T132261:0|t[马]|cRXP_Buy_|r
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    .train 33388,1
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰达尔·亨特|r
    .train 33388 >>Train Apprentice Riding
    .money <3.6000 
    .target Randal Hunter
    .xp <20,1
step
    .train 33388,3
    .goto 37,81.830,66.553
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迅翼高斯|r
    .fly Lakeshire, Redridge >>飞往莱克郡
	.target Goss the Swift
    .zoneskip 37,1
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼达|r
    .turnin 26508 >>交任务: |cRXP_FRIENDLY_尼达的项链|r
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼达|r
    .turnin 26508 >>交任务: |cRXP_FRIENDLY_尼达的项链|r
    .target Nida
    .noflyable --Azeroth Flying
------XX Optional Section
step
    #optional
    #completewith KeeshanStart
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >>Enter the Lakeshire Inn
step
    .goto 49,26.393,41.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板布瑞安娜|r
    .home >>将你的炉石设置为莱克郡
    .target Innkeeper Brianna
    .isOnQuest 26567
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>进入密室，然后朝着|cRXP_FRIENDLY_John J.Keeshan|r下楼
step
    #label KeeshanStart
    .goto 49,26.297,40.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .turnin 26567 >>交任务: |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .accept 26568 >>接任务: |cRXP_WARN_和我无关|r
    .target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,25.990,42.754,10 >>离开Lakeshhire Inn——向西出口（可选部分）
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r 
    .accept 26509 >>接任务: |cRXP_WARN_不速之客|r
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>杀死|cRXP_ENEMY_Bellygrub|r。为|cRXX_Loot_Bellygrub's Tusk|r掠夺她
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
    .turnin 26509 >>交任务: |cRXP_FRIENDLY_不速之客|r
    .target Martie Jainrose
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_在水下游泳并检查产卵位置。有10个地点同时有2个产卵点|r
    >>打开|cRXP_PICK_Glating Mud|r。把它偷走|cRXP_Loot_Nida的项链|r
    .complete 26508,1 --Nida's Necklace (1)
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼达|r
    .turnin 26508 >>交任务: |cRXP_FRIENDLY_尼达的项链|r
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼达|r
    .turnin 26508 >>交任务: |cRXP_FRIENDLY_尼达的项链|r
    .target Nida
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入莱克郡市政厅
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德曼上校|r, 他在里面
    .turnin 26568 >>交任务: |cRXP_FRIENDLY_和我无关|r
    .accept 26571 >>接任务: |cRXP_WARN_战争的武器|r
    .accept 26586 >>接任务: |cRXP_WARN_寻找B连|r
    .target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>离开莱克郡市政厅
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r, |cRXP_FRIENDLY_治安官马瑞斯|r
    .accept 26569 >>接任务: |cRXP_WARN_测量设备|r
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .accept 26570 >>接任务: |cRXP_WARN_撕裂者大军|r
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
	#completewith Render
    .goto 49,44.299,30.816,0
    .goto 49,41.458,35.639,0
    .goto 49,44.548,35.896,0
    .goto 49,47.950,33.981,0
    .goto 49,47.671,40.994,0
    .goto 49,51.823,42.459,0
    .goto 49,53.901,37.198,0
	>>杀死|cRXP_ENEMY_Blackrock叛徒|r和|cRXX_ENEMY_ Blackrock童子军|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Scout
	.mob Blackrock Renegade
step
    #completewith Messner1
    .goto 49,39.751,37.234,50,0
    .goto 49,44.242,39.198,50,0
    .goto 49,47.119,41.138,15,0
    .goto 49,47.529,41.955,12 >>前往|cRXP_FRIENDLY_Messner|r
    .noflyable --Azeroth Flying
step
    #label Messner1
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅森纳|r
    .turnin 26586 >>交任务: |cRXP_FRIENDLY_寻找B连|r
    .accept 26587 >>接任务: |cRXP_WARN_越狱不容易|r
    .target Messner
step
	>>杀死|cRXP_ENEMY_Murdunk|r和|cRXP_ENEMY_Homurk|r。掠夺它们以获得|cRXD_Loot_Keeshan的弓|r和| cRXP_Loot_Kishan的生存刀|r
    .complete 26571,2 --Keeshan's Survival Knife (1)
    .goto 49,51.525,41.398
	.mob +Homurk
    .complete 26571,1 --Keeshan's Bow (1)
    .goto 49,51.681,41.330
	.mob +Murdunk
step
    #sticky
    #label Heart
    >>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
    .turnin 26571 >>交任务: |cRXP_FRIENDLY_战争的武器|r
    .accept 26573 >>接任务: |cRXP_WARN_他的心必须在|r
step
    .goto 49,49.234,38.005
    >>打开树桩中的|cRXP_PICK_Blackrock钥匙袋|r。偷走|cRXP_Loot_Messner的笼子钥匙|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_Blackrock战虫队长|r和|cRXX_ENEMY_ Blackrock战斗虫|r|r
    .complete 26587,1 --Messner's Cage Key (1)
	.unitscan Blackrock Worg Captain
    .mob Blackrock Battle Worg
step
    #requires Heart
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅森纳|r
    .turnin 26587 >>交任务: |cRXP_FRIENDLY_越狱不容易|r
    .timer 3,Messner RP
    .accept 26560 >>接任务: |cRXP_WARN_约根森|r
	.target Messner
step
    #optional
    #label Render
    .goto 49,44.518,27.137,70 >>前往Render营地的郊区
    .isOnQuest 26560
    .noflyable --Azeroth Flying
step
    #completewith Danforth
    #label Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>杀死|cRXP_ENEMY_Blackrock召唤师|r和|cRXD_ENEMY_Blackrock追踪者|r。掠夺|cRXP_ENEMY_ Blackrock追踪器|r的|cRXP_Loot_Black间谍眼镜|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,<5 --Blackrock Spyglass (<5)
step
    #optional
    #completewith Danforth
    #requires Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>杀死|cRXP_ENEMY_Blackrock召唤师|r和|cRXX_ENEMY_Blackrock追踪者|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,5 --Blackrock Spyglass (5)
step
    .goto 49,43.546,10.819
    >>杀死女钥匙|cRXP_ENEMY_Utroka |r。偷走她|cRXX_Loot_Jorgensen的笼钥匙|r
    .complete 26560,1 --Jorgensen's Cage Key (1)
	.mob Utroka the Keymistress
step
    #optional
    #completewith next
    .goto 49,37.338,15.299,40,0
    .goto 49,35.846,14.524,40,0
    .goto 49,33.538,11.867,15 >>前往|cRXP_FRIENDLY_Jorgensen|r
    .noflyable --Azeroth Flying
step
    .goto 49,33.538,11.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约根森|r
    .turnin 26560 >>交任务: |cRXP_FRIENDLY_约根森|r
    .timer 3,Jorgensen RP
    .accept 26561 >>接任务: |cRXP_WARN_卡拉克尔|r
	.target Jorgensen
step
    #completewith BlackrockC
    #label RendersRock
    .goto 49,30.861,9.190,20 >>Enter Render's Rock
    .isOnQuest 265261
step
    #sticky
    #label Tarak
    #requires RendersRock
    .goto 49,26.057,10.450,0,0
    >>杀死|cRXP_ENEMY_Ritualist Tarak|r内部
    .complete 26561,1 --Ritualist Tarak (1)
	.mob +Ritualist Tarak
step
    #optional
	#completewith BlackrockC
    #requires RendersRock
    .goto 49,30.050,9.353,15,0
    .goto 49,29.150,10.594,15,0
    .goto 49,26.586,10.530,15 >>前往|cRXP_PICK_Blackrock Coffer|r内部
step
	#label BlackrockC
    .goto 49,26.586,10.530
    >>打开里面地面上的|cRXP_PICK_Blackrock咖啡壶。为|cRXP_Loot_Keeshan的红头带|r和|cRXX_Loot_Keeshan的玉符|r抢劫
    .complete 26573,1 --Keeshan's Red Headband (1)
    .complete 26573,2 --Keeshan's Jade Amulet (1)
step
    #requires Tarak
    .goto 49,25.906,10.487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡拉克尔|r
    .turnin 26561 >>交任务: |cRXP_FRIENDLY_卡拉克尔|r
    .timer 3,Krakauer RP
    .accept 26562 >>接任务: |cRXP_WARN_最后但同样重要的……丹弗斯|r
	.target Krakauer
step
    #optional
    #completewith next
    .goto 49,26.615,13.314,15,0
    .goto 49,25.552,14.772,15,0
    .goto 49,25.856,16.403,15,0
    .goto 49,27.634,18.155,15 >Travel toward |cRXP_ENEMY_Overlord Barbarius|r inside
step
    .goto 49,27.634,18.155
    >>杀死里面的|cRXP_ENEMY_霸王巴巴里乌斯|r。抢走他|cRXP_Loot_Blackrock杠杆钥匙|r
	>>|cRXP_WARN_当你跳下去时，确保你的守护者传送下来|r
    .complete 26562,1 --Overlord Barbarius (1)
    .complete 26562,2 --Blackrock Lever Key (1)
	.mob Overlord Barbarius
step
	#completewith next
    .goto 49,27.765,17.943
	.cast 80887 >>|cRXP_WARN_单击内部地面上的|cRXP_PICK_Chain Lever|r|r
	.isOnQuest 26562
step
    #label Danforth
    .goto 49,28.326,17.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹弗斯|r
    .turnin 26562 >>交任务: |cRXP_FRIENDLY_最后但同样重要的……丹弗斯|r
    .timer 3,Danforth RP
    .accept 26563 >>接任务: |cRXP_WARN_B连归来|r
	.target Danforth
--ZXCV Logout Skip here (if it works) add solid Spyglass step
step
    #optional
	#completewith next
    .goto 49,30.100,15.657,15,0
    .goto 49,30.004,12.928,15,0
    .goto 49,29.820,10.349,15,0
    .goto 49,30.372,9.117,15,0
    .goto 49,31.635,9.630,30 >>Exit Render's Rock
step
    #optional
    #loop
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    .goto 49,45.155,23.968,55,0
    .goto 49,42.789,21.487,55,0
    .goto 49,41.185,20.004,55,0
    .goto 49,41.167,17.881,55,0
    .goto 49,43.357,17.991,55,0
    .goto 49,44.269,13.930,55,0
    .goto 49,41.899,12.146,55,0
    .goto 49,42.034,14.041,55,0
    .goto 49,40.282,16.319,55,0
    .goto 49,38.889,17.678,55,0
    .goto 49,36.291,15.982,55,0
    .goto 49,34.239,13.808,55,0
    .goto 49,34.298,11.938,55,0
    .goto 49,32.625,10.192,55,0
    >>杀死|cRXP_ENEMY_Blackrock召唤师|r和|cRXD_ENEMY_Blackrock追踪者|r。掠夺|cRXP_ENEMY_ Blackrock追踪器|r的|cRXP_Loot_Black间谍眼镜|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
step
    #completewith next
    .hs >>赫斯到莱克郡
step
    .goto 49,26.456,42.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_金伯利·海特|r
    .vendor >>供应商和维修
    .target Kimberly Hiett
	.isOnQuest 26573
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入莱克郡市政厅
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德曼上校|r
    .turnin 26563 >>交任务: |cRXP_FRIENDLY_B连归来|r
    .turnin 26573 >>交任务: |cRXP_FRIENDLY_他的心必须在|r
    .accept 26607 >>接任务: |cRXP_WARN_他们流下第一滴血|r
	.target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>离开莱克郡市政厅
step
    #optional
    #completewith Keeshan2
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >>Enter the Lakeshire Inn
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>进入密室，然后朝着|cRXP_FRIENDLY_John J.Keeshan|r下楼
step
#questguide
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .turnin 26607 >>交任务: |cRXP_FRIENDLY_他们流下第一滴血|r
    .accept 26616 >>接任务: |cRXP_WARN_战争不会结束|r
	.target John J. Keeshan
step
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .turnin 26607 >>交任务: |cRXP_FRIENDLY_他们流下第一滴血|r
	.target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.108,42.747,10 >>离开Lakeshhire Inn——East
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r, |cRXP_FRIENDLY_治安官马瑞斯|r
    .turnin 26569 >>交任务: |cRXP_FRIENDLY_测量设备|r
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .turnin 26570 >>交任务: |cRXP_FRIENDLY_撕裂者大军|r
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
#questguide
	#label Boat
    .goto 49,34.426,45.914
	.vehicle >>进入|cRXP_PICK_Keeshan的Riverboat|r
	.timer 43,It's Never Over RP
    .isOnQuest 26616
step
#questguide
    .goto 49,52.901,52.999
    >>等待RP
    >>|cRXP_WARN_计时器结束时手动离开船|r
    .complete 26616,1 --Keeshan's Riverboat Ride Complete
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r, |cRXP_FRIENDLY_卡拉克尔|r, |cRXP_FRIENDLY_梅森纳|r, |cRXP_FRIENDLY_丹弗斯|r
    .turnin 26616 >>交任务: |cRXP_FRIENDLY_战争不会结束|r
    .accept 26639 >>接任务: |cRXP_WARN_接头人：布鲁贝克|r
    .goto 49,52.551,55.408
	.target +John J. Keeshan
    .accept 26636 >>接任务: |cRXP_WARN_B连战斗工具：伪装|r
    .goto 49,52.402,55.407
	.target +Krakauer
    .accept 26637 >>接任务: |cRXP_WARN_B连战斗工具：麻醉剂|r
    .goto 49,52.432,55.541
	.target +Messner
    .accept 26638 >>接任务: |cRXP_WARN_猎杀黑石猎人|r
    .goto 49,52.533,55.557
	.target +Danforth
step
#questguide
    #loop
    .goto 49,48.669,54.976,0
    .goto 49,46.956,56.688,0
    .goto 49,43.168,55.127,0
    .goto 49,39.453,57.087,0
    .goto 49,39.358,50.183,0
    .goto 49,45.014,49.280,0
    .goto 49,48.669,54.976,55,0
    .goto 49,48.798,57.741,55,0
    .goto 49,46.786,58.420,55,0
    .goto 49,46.956,56.688,55,0
    .goto 49,44.610,54.864,55,0
    .goto 49,44.320,52.796,55,0
    .goto 49,43.168,55.127,55,0
    .goto 49,41.915,53.874,55,0
    .goto 49,40.214,54.370,55,0
    .goto 49,39.453,57.087,55,0
    .goto 49,38.895,60.012,55,0
    .goto 49,38.064,52.309,55,0
    .goto 49,39.358,50.183,55,0
    .goto 49,40.550,47.338,55,0
    .goto 49,42.860,49.655,55,0
    .goto 49,45.014,49.280,55,0
    >>在水下杀死|cRXP_ENEMY_Muckdwellers|r。掠夺他们的|cRXP_Loot_Muckdweller Glands|r
    >>|cRXP_WARN_避免|r|cRXP_ENEMY_Ol'Gummers|r
    .complete 26637,1 --Muckdweller Gland (8)
	.mob Muckdweller
	.unitscan Ol' Gummers
step
#questguide
    #sticky
    #label Hunters
    #loop
    .goto 49,55.822,66.568,0
    .goto 49,53.086,69.251,0
    .goto 49,50.922,65.688,0
    .goto 49,49.219,67.953,0
    .goto 49,47.151,66.384,0
    .goto 49,45.798,69.412,0
    .goto 49,43.679,70.878,0
    .goto 49,39.093,68.551,0
    .waypoint 49,55.822,66.568,20,0
    .waypoint 49,54.430,68.474,20,0
    .waypoint 49,53.627,69.824,20,0
    .waypoint 49,53.086,69.251,20,0
    .waypoint 49,52.089,69.305,20,0
    .waypoint 49,49.800,69.120,20,0
    .waypoint 49,50.922,65.688,20,0
    .waypoint 49,50.313,66.097,20,0
    .waypoint 49,49.024,66.516,20,0
    .waypoint 49,49.219,67.953,20,0
    .waypoint 49,48.006,68.721,20,0
    .waypoint 49,48.030,67.211,20,0
    .waypoint 49,47.151,66.384,20,0
    .waypoint 49,46.832,67.484,20,0
    .waypoint 49,45.871,66.825,20,0
    .waypoint 49,46.634,70.734,20,0
    .waypoint 49,45.798,69.412,20,0
    .waypoint 49,43.680,66.576,20,0
    .waypoint 49,43.679,70.878,20,0
    .waypoint 49,41.375,69.805,20,0
    .waypoint 49,39.093,68.551,20,0
    >>杀死|cRXP_ENEMY_Blackrock猎人|r
    >>|cRXP_WARN_小心他们|r|T136041:0|t[伪装]
    .complete 26638,1 --Blackrock Hunter (8)
	.mob Blackrock Hunter
step
#questguide
    .goto 49,39.080,69.773,0
    .goto 49,41.122,69.990,0
    .goto 49,42.532,70.274,0
    .goto 49,45.198,68.405,0
    .goto 49,47.075,66.697,0
    .goto 49,39.080,69.773,40,0
    .goto 49,39.687,69.959,40,0
    .goto 49,40.424,68.797,40,0
    .goto 49,41.122,69.990,40,0
    .goto 49,41.557,68.559,40,0
    .goto 49,42.280,69.740,40,0
    .goto 49,42.532,70.274,40,0
    .goto 49,44.090,70.194,40,0
    .goto 49,43.958,67.755,40,0
    .goto 49,45.198,68.405,40,0
    .goto 49,46.057,69.072,40,0
    .goto 49,47.075,66.697,40,0
	>>将|cRXP_Loot_成堆的树叶|r和|cRXP _Loot_Fox Poop|r洗劫一空
    .complete 26636,1 --Pile of Leaves (5)
    .complete 26636,2 --Fox Poop (5)
step
#questguide
    .goto 49,53.052,67.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布鲁贝克|r
    .turnin 26639 >>交任务: |cRXP_FRIENDLY_接头人：布鲁贝克|r
    .accept 26640 >>接任务: |cRXP_WARN_虐囚|r
	.target Brubaker
step
#questguide
    #optional
    #questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅森纳|r, |cRXP_FRIENDLY_卡拉克尔|r, |cRXP_FRIENDLY_丹弗斯|r, |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .turnin 26637 >>交任务: |cRXP_FRIENDLY_B连战斗工具：麻醉剂|r
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>交任务: |cRXP_FRIENDLY_B连战斗工具：伪装|r
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>交任务: |cRXP_FRIENDLY_猎杀黑石猎人|r
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>交任务: |cRXP_FRIENDLY_虐囚|r
    .accept 26646 >>接任务: |cRXP_WARN_战俘|r
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step
#questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅森纳|r, |cRXP_FRIENDLY_卡拉克尔|r, |cRXP_FRIENDLY_丹弗斯|r, |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .turnin 26637 >>交任务: |cRXP_FRIENDLY_B连战斗工具：麻醉剂|r
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>交任务: |cRXP_FRIENDLY_B连战斗工具：伪装|r
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>交任务: |cRXP_FRIENDLY_猎杀黑石猎人|r
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>交任务: |cRXP_FRIENDLY_虐囚|r
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step << Human
#questguide
    #completewith next
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿尔伦·玛尔斯特|r
    .fly Eastvale Logging Camp >>飞往伊斯特韦尔伐木营地
	.target Arlen Marsters
    .isQuestAvailable 26646 --Prisoners of War
    .skill riding,75,1
    .zoneskip 49,1
step << Human
#questguide
    .goto 37,84.321,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰达尔·亨特|r
    .skill riding,75 >>火车|T136103:0|t（学徒骑马）
    .target Randal Hunter
step << Human
#questguide
    .goto 37,84.150,65.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯蒂·亨特|r
    +|cRXP_BUY_从她那里买任何你喜欢的|r|T132261:0|t[Horse]|cRXP_Buy_|r
	.target Katie Hunter
    .itemcount 2414,<1 --Pinto Bridle
    .itemcount 5655,<1 --Chestnut Mare Bridle
    .itemcount 5656,<1 --Brown Horse Bridle
    .skill riding,<75,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >>使用|T132261:0|t[Pinto Bridle]学习
    .use 2414
    .itemcount 2414,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >>使用|T132261:0|t[Chestnut Mare Bridle]学习
    .use 5655
    .itemcount 5655,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >>使用|T132261:0|t[Brown Horse Bridle]学习
    .use 5656
    .itemcount 5656,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132261:0|t[Pinto]|cRXP_WARN_拖动到动作栏中|r
    .cast 472 >>安装|T132261:0|t[Pinto]
    .train 472,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132261:0|t[Chestnut Mare]|cRXP_WARN_拖动到动作栏中|r
    .cast 6648 >>登上你的|T132261:0|t[Chestnut Mare]
    .train 6648,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_按“Shift+P”打开您的“装载”选项卡|r
    >>|cRXP_WARN_将|r|T132261:0|t[Brown Horse]|cRXP_WARN_拖动到动作栏中|r
    .cast 458 >>登上您的|T132261:0|t[Brown Horse]
    .train 458,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #label Goss
    #completewith Duskwood
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迅翼高斯|r
    .fly Darkshire >>飞到Darkhire
    .target Goss the Swift
    .zoneskip 37,1
step
#questguide
    #optional
    #completewith Duskwood
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿尔伦·玛尔斯特|r
    .fly Darkshire >>飞到Darkhire
	.target Arlen Marsters
    .isQuestAvailable 26646
    .skill riding,<75,1 << Human
    .zoneskip 49,1
------start of optional Keeshan questline
step
    #questguide
    #completewith SeaforiumD
    +|cRXP_WARN_使用|r|T133878:0|t[Bravo公司现场工具包]|cRXP_WARN_in|r|cRXP-WARN_Rander's Valley|r
    >>|cRXP_WARN_您可以正常装载物品，但不能|r|T136041:0|t[伪装] << !Druid
    >>|cRXP_WARN_您可以正常装载物品并飞入|r|T132128:0|t[飞行形态]|cRXP_WARN_hilst|r|T136041:0|t[Camouflaged] << Druid
    >>铸造|T136074:0|t[伪装]（1）变成隐形|r
    >>施放|T132289:0|t[分散注意力]（2）使|cRXP_ENEMY_Blackrock兽人|r移动
    >>铸造|T136090:0|t[三氯甲烷]（3）使|cRXP_ENEMY_Blackrock Wardens|r和|cRXD_ENEMY_Blackrock Guards|r休眠。这对|cRXP_ENEMY_ Blackrock Drake Riders|r无效
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .flyable << Druid --Azeroth Flying
step << Druid
    #questguide
    #optional
    #completewith SeaforiumD
    +|cRXP_WARN_使用|r|T133878:0|t[Bravo公司现场工具包]|cRXP_WARN_in|r|cRXP-WARN_Rander's Valley|r
    >>|cRXP_WARN_您可以正常装载物品，但不能|r|T136041:0|t[伪装]
    >>铸造|T136074:0|t[伪装]（1）变成隐形|r
    >>施放|T132289:0|t[分散注意力]（2）使|cRXP_ENEMY_Blackrock兽人|r移动
    >>铸造|T136090:0|t[三氯甲烷]（3）使|cRXP_ENEMY_Blackrock Wardens|r和|cRXD_ENEMY_Blackrock Guards|r休眠。这对|cRXP_ENEMY_ Blackrock Drake Riders|r无效
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #completewith next
    .goto 49,68.486,75.120,20 >>进入Render山谷的洞穴
step
    #questguide
    .goto 49,69.525,76.315
    >>打开里面的|cRXP_PICK_Blackrock钥匙袋|r。为|cRXP_Loot_Blackrock握笔键|r抢劫它
    .collect 59261,1,26646,1 --Blackrock Holding Pen Key (1)
step
    #questguide
    .goto 49,69.805,59.125,-1
    .goto 49,68.970,60.132,-1
    >>打开任何|cRXP_PICK_Blackrock Holding Pens|r
    .complete 26646,1 --Prisoners of War Freed (1)
step
    #questguide
    #sticky
    #label Prisoners
    >>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
    .turnin 26646 >>交任务: |cRXP_FRIENDLY_战俘|r
    .accept 26651 >>接任务: |cRXP_WARN_要赢得战争，就要比战争还残酷|r
step
    #questguide
    #optional
    #completewith next
    .goto 49,66.318,70.789,15 >>Go inside the tower
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,66.411,71.479
    >>在配备了|T133878:0|t[Bravo公司现场工具包]的情况下，将|T136173:0|t[Plant Seaforium]（4）浇筑在塔架中间的中间楼层
    .complete 26651,2 --Seaforium Planted at Blackrock Tower (1)
step
    #questguide
    #label SeaforiumD
    .goto 49,64.112,70.826
    >>配备了|T133878:0|t[Bravo公司现场工具包]，在小屋外墙上浇筑|T136173:0|t[Plant Seaforium]（4）
    .complete 26651,1 --Seaforium Planted at Munitions Hut (1)
step
    #questguide
    #optional
    #label FieldKit
    #completewith War
    .aura -82587 >>|cRXP_WARN_单击|r|T133878:0|t[Bravo公司现场工具包]|cRXP_WARN_buff|r
    .isOnQuest 26651
step
    #questguide
    #optional
    #requires FieldKit
    #completewith War
    >>|cRXP_WARN_避开|cRXP_ENEMY_Blackrock Wardens|r、|cRXD_ENEMY_ Blackrock Guards|r和|r|cRXX_ENEMY_Blackrock Drake Riders|r
    .goto 49,77.683,65.506,15 >>前往|cRXP_FRIENDLY_John J.Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #label War
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
	>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
    .turnin 26651 >>交任务: |cRXP_FRIENDLY_要赢得战争，就要比战争还残酷|r
    .accept 26668 >>接任务: |cRXP_WARN_引爆山谷|r
    .target John J. Keeshan
step
    #questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r, |cRXP_FRIENDLY_丹弗斯|r
    .turnin 26668 >>交任务: |cRXP_FRIENDLY_引爆山谷|r
    .accept 26693 >>接任务: |cRXP_WARN_黑暗之塔|r
    .goto 49,77.683,65.506
    .target +John J. Keeshan
    .accept 26692 >>接任务: |cRXP_WARN_暗皮大灭绝|r
    .goto 49,77.628,65.341
    .target +Danforth
step
    #questguide
    #sticky
    #label Shadowhide
    .goto 49,73.167,48.650,0
    .goto 49,74.650,52.479,0
    .goto 49,72.277,51.252,0
    .goto 49,69.079,50.430,0
    .goto 49,67.317,43.754,0
    .goto 49,66.197,37.545,0
    .goto 49,71.332,33.267,0
    .goto 49,70.571,38.254,0
    .goto 49,73.004,43.909,0
    .waypoint 49,73.167,48.650,50,0
    .waypoint 49,73.795,49.819,50,0
    .waypoint 49,76.102,53.026,50,0
    .waypoint 49,74.650,52.479,50,0
    .waypoint 49,73.531,53.657,50,0
    .waypoint 49,73.185,50.399,50,0
    .waypoint 49,72.277,51.252,50,0
    .waypoint 49,71.567,50.196,50,0
    .waypoint 49,71.349,48.124,50,0
    .waypoint 49,69.079,50.430,50,0
    .waypoint 49,66.885,47.661,50,0
    .waypoint 49,67.015,45.857,50,0
    .waypoint 49,67.317,43.754,50,0
    .waypoint 49,65.054,40.527,50,0
    .waypoint 49,64.633,37.658,50,0
    .waypoint 49,66.197,37.545,50,0
    .waypoint 49,66.330,33.341,50,0
    .waypoint 49,68.025,35.534,50,0
    .waypoint 49,71.332,33.267,50,0
    .waypoint 49,72.209,34.231,50,0
    .waypoint 49,71.606,35.978,50,0
    .waypoint 49,70.571,38.254,50,0
    .waypoint 49,70.569,41.638,50,0
    .waypoint 49,73.004,43.909,50,0
    >>杀死|cRXP_ENEMY_Rabid Shadowwhide Gnolls|r，|cRXD_ENEMY_Shadowwhide Darkwavers|r，| cRXP__ENEMY_ShadowWhide Assassins|r，|1cRXP_ENDEMY_Shadowwhide Warriors|r、|cRXC_ENEMY_ShadeWhide Slayers|r、|1cRXD_ENDEMY_ Shadowwhide Brutes|r和|cRXT_ENDEMY_Shadewhide Gnills|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_Shadowwhide Assassins|r是|r|T132320:0|t[隐身]
    .complete 26692,1 --Shadowhide Gnoll (20)
    .mob Rabid Shadowhide Gnoll
    .mob *Shadowhide Darkweaver
    .mob *Shadowhide Assassins
    .mob *Shadowhide Warrior
    .mob *Shadowhide Slayer
    .mob *Shadowhide Brute
    .mob *Shadowhide Gnoll 
step
    #questguide
    #sticky
    #requires Shadowhide
    #label Extinction
    >>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
    .turnin 26692 >>交任务: |cRXP_FRIENDLY_暗皮大灭绝|r
step
    #questguide
    #optional
    #completewith next
    .goto 49,67.611,30.650 >>进入|cRXP_ENEMY_General Fangore|r的洞穴
step
    #questguide
    .goto 49,67.542,28.902
    >>杀死里面的|cRXP_ENEMY_General Fangore|r。为Ilgalar|r的|cRXP_Loot_Key抢劫他
    .complete 26693,1 --Key of Ilgalar (1)
    .mob General Fangore
step
    #questguide
    >>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
    .turnin 26693 >>交任务: |cRXP_FRIENDLY_黑暗之塔|r
    .accept 26694 >>接任务: |cRXP_WARN_大魔导师杜内|r
step
    #questguide
    #optional
    #label Ilgalar1
    #completewith next
    .goto 49,72.538,44.629,20,0
    .goto 49,71.952,44.819,15 >>前往Ilgalar塔的入口
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #label Ilgalar2
    #requires Ilgalar1
    #completewith next
    .goto 49,71.952,44.819
    .cast 81776 >>点击Ilgalar塔底部的|cRXP_PICK_Ward|r
    .isOnQuest 26694
step
    #questguide
    .goto 49,71.491,44.896,0
    .goto 49,71.256,45.402
    >>在Ilgalar塔顶上击败|cRXP_ENEMY_Grand Magus Doane|r
    .complete 26694,1 --Grand Magus Doane confronted (1)
    .mob Grand Magus Doane
step
    #questguide
    #optional
    #requires Extinction
    #completewith next
    .goto 49,76.973,52.844,40,0
    .goto 49,77.906,58.960,40,0
    .goto 49,77.683,65.506,15 >>返回|cRXP_FRIENDLY_John J.Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #requires Extinction
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .turnin 26694 >>交任务: |cRXP_FRIENDLY_大魔导师杜内|r
    .timer 29,The Grand Magus Doane RP
    .target John J. Keeshan
step
    #questguide
    .goto 49,77.204,65.923
    >>|cRXP_WARN_等待RP|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德曼上校|r
    .accept 26708 >>接任务: |cRXP_WARN_啊啊啊啊啊啊啊啊啊啊啊！啊啊啊啊啊啊啊啊啊！！！|r
    .target Colonel Troteman
step
    #questguide
    #completewith BlackrockInvaders
    #label BravoCompany
    .goto 49,76.916,66.133
    .vehicle >>进入|cRXP_FRIENDLY_Bravo连围攻坦克|r
    .target Bravo Company Siege Tank
    .isOnQuest 26708
step
    #questguide
    #optional
    #completewith BlackrockInvaders
    #requires BravoCompany
    .goto 49,77.906,58.960,40,0
    .goto 49,76.869,54.470,40 >>|cRXP_WARN_儿童乘坐|cRXP_FRIENDLY_Bravo连围攻坦克|r，返回加拉德尔山谷
    .isOnQuest 26708
step
    #questguide
    #label BlackrockInvaders
    .goto 49,75.045,50.854,0
    .goto 49,71.179,48.591,0
    .goto 49,67.150,44.692,0
    .goto 49,63.587,39.740,0
    .goto 49,63.587,39.740,50,0
    .goto 49,75.045,50.854,50,0
    .goto 49,60.660,36.666
    >>|cRXP_WARN_在|cRXP_FRIENDLY_Bravo连围攻坦克|r中，穿过|cRXP_ENEMY_Blackrock入侵者|r驶向基山哨所，投掷|r|T252187:0|t[Ram]（1）|cRXP _WARN_on冷却|r
    .complete 26708,1 --Blackrock Invader (200)
    .mob Blackrock Invader
step
    #questguide
    #optional
    #completewith next
    >>|cRXP_WARN_退出|r|cRXP_FRIENDLY_Bravo连围攻坦克|r
    >>|cRXP_WARN_这将立即使您退出与|cRXP_ENEMY_Blackrock Invaders|r的阶段，并返回到与|r|cRXX_ENEMY_Shadowwhide Gnolls的阶段|r
    .goto 49,60.660,36.666,15 >>返回|cRXP_FRIENDLY_Colonel Troteman|r
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德曼上校|r
    .turnin 26708 >>交任务: |cRXP_FRIENDLY_啊啊啊啊啊啊啊啊啊啊啊！啊啊啊啊啊啊啊啊啊！！！|r
    .accept 26713 >>接任务: |cRXP_WARN_决战石堡要塞|r
    .target Colonel Troteman
step
    #questguide
    #optional
    #completewith Darkblaze
    +|cRXP_WARN_继续之前，请确保您的团队与您在一起。它们应该在你接近|cRXP_ENEMY_Tharil'zun|r时繁殖。如果没有，请注销并重新登录|r
step
    #questguide
    .goto 49,60.307,47.402
    >>杀死|cRXP_ENEMY_Tharil'zun|r
    .complete 26713,1 --Tharil'zun (1)
    .mob Tharil'zun
step
    #questguide
    #optional
    #completewith next
    .goto 49,60.307,47.402,40,0
    .goto 49,57.775,56.285,45 >>前往|cRXP_ENEMY_Gath'Ilzog|r
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,57.775,56.285
    >>杀死|cRXP_ENEMY_Gath'Izog|r
    .complete 26713,2 --Gath'Ilzogg (1)
    .mob Gath'Ilzogg
step
    #questguide
    >>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
    .turnin 26713 >>交任务: |cRXP_FRIENDLY_决战石堡要塞|r
    .goto 49,58.651,55.469
    .accept 26714 >>接任务: |cRXP_WARN_黑暗烈焰，灭世者的子嗣|r
    .timer 25,Darkblaze RP
    .goto 49,60.660,36.666
step
    #questguide
    #label Darkblaze
    .goto 49,58.651,55.469
    >>|cRXP_WARN_等待|cRXP_ENEMY_Grand Magus Doane|r变换RP|r
    >>|cRXP_WARN_RP完成后击败|cRXP_ENEMY_Darkblaire|r|r
    >>|cRXP_WARN_如果失败，使用地面上的|cRXP_PICK_召唤之角|r来恢复公共|r|cRXP-ENEMY_Grand Magus Doane|r
    .complete 26714,1 --Darkblaze Defeated (1)
    .mob Darkblaze
    .mob *Grand Magus Doane
--XX     .goto 49,58.608,55.390 Horn of Summoning
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德曼上校|r
    .turnin 26714 >>交任务: |cRXP_FRIENDLY_黑暗烈焰，灭世者的子嗣|r
    .accept 26726 >>接任务: |cRXP_WARN_凯旋而归|r
    .target Colonel Troteman
step
    #questguide
    #completewith next
    .hs >>赫斯到莱克郡
    .cooldown item,6948,>2
    .isOnQuest 26726
    .subzoneskip 69 --Yes that is Lakeshire's subzone id
step
    #questguide
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入莱克郡市政厅
    .isOnQuest 26726
step
    #questguide
    .goto 49,28.971,41.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r, 他在里面
    .turnin 26726 >>交任务: |cRXP_FRIENDLY_凯旋而归|r
	.target Magistrate Solomon
------End of optional Keeshan questline
]])