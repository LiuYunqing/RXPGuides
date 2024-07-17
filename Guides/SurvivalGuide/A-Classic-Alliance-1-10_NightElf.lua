local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 1-6 幽影谷
#version 1
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 1-20
#defaultfor NightElf
#next 6-11 泰达希尔
step << !NightElf
    #sticky
    #completewith next
    +你选择了一个暗夜精灵的向导。你应该选择与你开始时相同的起始区域
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .accept 456 >>接任务: |cRXP_WARN_自然的平衡|r
step
    #sticky
    #label balance1
    >>杀死|cRXP_ENEMY_Young夜刀|r和|cRXX_ENEMY_杨氏蓟船|r
    .goto Teldrassil,62.0,42.6
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    .xp 2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪兰妮亚·月光|r, |cRXP_FRIENDLY_麦利萨尔·鹿盔|r
    .accept 4495 >>接任务: |cRXP_LOOT_好朋友|r
    .goto Teldrassil,60.899,41.961
    .accept 458 >>接任务: |cRXP_WARN_森林守护者|r
	.goto Teldrassil,59.924,42.474
    .target Dirania Silvershine
    .target Melithar Staghelm
step << Hunter
    #era
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >>升级直到距离4级610xp(790/1400)
step << Hunter
    #som--xpgate
    .goto Teldrassil,59.8,34.1
    .xp 4-755 >>升级直到距离4级755xp(645/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务: |cRXP_FRIENDLY_好朋友|r
    .target Iverron
    .accept 3519 >>接任务: |cRXP_LOOT_需要帮助的朋友|r
step << Hunter
    #completewith next
    .hs >>赫斯到阴影谷
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务: |cRXP_FRIENDLY_森林守护者|r
    .target Tarindrella
    .accept 459 >>接任务: |cRXP_WARN_森林守护者|r
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 456,1 >>交任务: |cRXP_FRIENDLY_自然的平衡|r << Hunter
    .turnin 456 >>交任务: |cRXP_FRIENDLY_自然的平衡|r << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >>接任务: |cRXP_WARN_自然的平衡|r
	.accept 3116 >>接任务: |cRXP_LOOT_简易符记|r << Warrior
	.accept 3117 >>接任务: |cRXP_LOOT_风化符记|r << Hunter
--	.accept 3118 >>接任务: |cRXP_WARN_密文符记|r << Rogue
	.accept 3119 >>接任务: |cRXP_LOOT_神圣符记|r << Priest
	.accept 3120 >>接任务: |cRXP_LOOT_绿色符记|r << Druid
step << Warrior
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奇娜|r
	.vendor >>|cRXP_WARN_供应商垃圾|r
    .target Keina
step << Warrior
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莉希亚|r
	.turnin 3116 >>交任务: |cRXP_FRIENDLY_简易符记|r
    .trainer >>训练你的职业技能
step << !Hunter
    .goto Teldrassil,59.8,34.1
    >>杀死|cRXP_ENEMY_Mangy Nightsabers|r和|cRXX_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step << !Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务: |cRXP_FRIENDLY_好朋友|r
    .target Iverron
    .accept 3519 >>接任务: |cRXP_LOOT_需要帮助的朋友|r
step << !Hunter
    #completewith next
    .hs >>赫斯到阴影谷
step << !Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务: |cRXP_FRIENDLY_森林守护者|r
    .target Tarindrella
    .accept 459 >>接任务: |cRXP_WARN_森林守护者|r
step << !Hunter
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 457 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪兰妮亚·月光|r
    .turnin 3519 >>交任务: |cRXP_FRIENDLY_需要帮助的朋友|r
    .target Dirania Silvershine
    .accept 3521 >>接任务: |cRXP_WARN_埃沃隆的解药|r
step << Hunter
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奇娜|r
	.vendor >>|cRXP_BUY_BUY 3叠|r|T132382:0|t[粗箭头]
    .target Keina
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .accept 916 >>接任务: |cRXP_LOOT_树林蜘蛛的毒囊|r
step << Hunter
    #era
    .xp 4-40
step << Hunter
    #som--xpgate
    .xp 4-50
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>登上Aldrassil树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿亚娜·远途|r
    .turnin 3117 >>交任务: |cRXP_FRIENDLY_风化符记|r
    .train 1978 >>火车蛇刺
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>将|cRXP_Loot_月瓣百合|r掠夺到地上
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,56.8,31.7
    >>杀死|cRXP_ENEMY_Webwood蜘蛛|r。掠夺它们的|cRXD_Loot_Ichor|r和|cRXX_Loot_Venom Sachs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    .goto Teldrassil,55.0,43.7
    >>杀死|cRXP_ENEMY_Grell|r和|cRXX_ENEMY_格雷尔金|r。掠夺它们的|cRXD_Loot_MMushroom|r和| cRXP_Loot_Fel Moss|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 459 >>交任务: |cRXP_FRIENDLY_森林守护者|r
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪兰妮亚·月光|r
    .turnin 3521 >>交任务: |cRXP_FRIENDLY_埃沃隆的解药|r
    .target Dirania Silvershine
    .accept 3522 >>接任务: |cRXP_WARN_埃沃隆的解药|r
step << !Priest
    #completewith next
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奇娜|r
	.vendor >>|cRXP_WARN_供应商垃圾|r << !Hunter
	.vendor >>|cRXP_BUY_购买3或4堆|r|T132382:0|t[粗箭头] << Hunter
    .target Keina
step << Warrior
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莉希亚|r
	.trainer >>训练你的职业技能
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_简娜·明月|r, 他在楼上
	.vendor >>|cRXP_WARN_供应商垃圾|r
    .target Janna Brightmoon
step << Priest
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊达|r, 他在楼上
	.turnin 3119 >>交任务: |cRXP_FRIENDLY_神圣符记|r
	.trainer >>训练你的职业技能
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .turnin 916 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的毒囊|r
    .target Gilshalan Windwalker
    .accept 917 >>接任务: |cRXP_LOOT_树林蜘蛛的卵|r
step << Druid
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>登上Aldrassil树
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛丹特·硬木|r
	.turnin 3120 >>交任务: |cRXP_FRIENDLY_绿色符记|r
	.train 8921 >>火车月光
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 3522 >>交任务: |cRXP_FRIENDLY_埃沃隆的解药|r
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >>进入影线洞
step
    .goto Teldrassil,57.0,26.4
    >>在洞穴后面的地上偷走一个|cRXP_Loot_Webwood Egg|r
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
	#hardcore
	#completewith next
	+|cRXP_WARN_注销跳过|cRXP_LOOT_Webwood Eggs|r后面的突出部分。移动你的角色，直到它们看起来像是漂浮的，然后注销，然后返回|r
	>>|cRXP_WARN_如果你摔倒了，就正常地跑出洞穴，去完成任务|r
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>|cRXP_WARN_单击此处查看视频指南|r
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .turnin 917 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的卵|r
    .target Gilshalan Windwalker
    .accept 920 >>接任务: |cRXP_WARN_特纳隆的召唤|r
step
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>登上Aldrassil树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 920 >>交任务: |cRXP_FRIENDLY_特纳隆的召唤|r
    .target Tenaron Stormgrip
    .accept 921 >>接任务: |cRXP_WARN_大地之冠|r
step
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >>|cRXP_WARN_使用|r|T134776:0|t[Crystal Phial]|cRXP_WARN_at the Moonwell|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    >>杀死|cRXP_ENEMY_Mangy Nightsabers|r和|cRXX_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step
    #requires vial1
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step << Hunter
    #requires vial1
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 457,2 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊达|r
    .accept 5622 >>接任务: |cRXP_WARN_月神的恩赐|r
step
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>登上Aldrassil树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 921 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Tenaron Stormgrip
    .accept 928 >>接任务: |cRXP_WARN_大地之冠|r
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯萨努斯|r
    .accept 2159 >>接任务: |cRXP_LOOT_多兰纳尔的货物|r
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 6-11 泰达希尔
#version 1
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 1-20
#defaultfor NightElf
#next 11-13黑暗海岸（暗夜精灵）
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .accept 488 >>接任务: |cRXP_LOOT_赛恩的要求|r
step
    #sticky
    #completewith zenn
    >>杀死|cRXP_ENEMY_Nightsabers|r。掠夺他们的|cRXX_Loot_Fangs|r
    >>杀死|cRXP_ENEMY_Strigid Owls|r。掠夺它们的|cRXX_Loot_Features|r
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r。掠夺他们的|cRXD_Loot_Silk|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    #sticky
	#completewith spiderLegs
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r和|cRXX_ENEMY_Webwood毒虫|r。掠夺它们的|cRXD_Loot_小蜘蛛腿|r
    >>|cRXP_WARN_你以后的任务需要这些|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
    .accept 997 >>接任务: |cRXP_LOOT_德纳兰的泥土|r
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .accept 475 >>接任务: |cRXP_WARN_烦恼之风|r
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5622 >>交任务: |cRXP_FRIENDLY_月神的恩赐|r
    .target Laurna Morninglight
    .accept 5621 >>接任务: |cRXP_WARN_月光之衣|r
	.trainer >>训练你的职业技能
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥蒂亚|r, 他在楼上
    .vendor >>|cRXP_BUY_购买并装备一把|r|T135426:0|t[小飞刀]
    .target Aldia
step
    #era
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .accept 932 >>接任务: |cRXP_LOOT_扭曲的仇恨|r
    .accept 2438 >>接任务: |cRXP_WARN_翡翠摄梦符|r
step
    #som
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .accept 932 >>接任务: |cRXP_LOOT_扭曲的仇恨|r << !Hunter
    .accept 2438 >>接任务: |cRXP_WARN_翡翠摄梦符|r
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
    >>|cRXP_BUY_购买并装备一把|r|T135499:0|t[Hornwood递归弓]|cRXP_Buy_如果你能负担得起（2s 85c），如果不能跳过这一步|r
    >>|cRXP_BUY_购买|r|T132382:0|t[粗箭头]|cRXP_Buy_直到测验满为止|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >>训练你的职业技能
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
	.trainer >>训练你的职业技能
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一台|r|T135321:0|t[Gladius]|cRXP_Buy_如果你能负担得起（5s 36c），如果不能跳过这一步|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一个|r|T135641:0|t[Stiletto]|cRXP_Buy_如果你能负担得起（4s 1c），如果不能跳过这一步|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一个|r|T135145:0|t[手杖]|cRXP_Buy_如果你能负担得起（5s 4c），如果不能跳过这一步|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板凯达米尔|r
    .turnin 2159,2 >>交任务: |cRXP_FRIENDLY_多兰纳尔的货物|r << Hunter
    .turnin 2159 >>交任务: |cRXP_FRIENDLY_多兰纳尔的货物|r << !Hunter
    .home >>将您的炉石设置为Dolanar
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
	.train 3044>>火车奥术射击
    .target Dazalar
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔|r
	.trainer >>训练你的职业技能
    .target Kal
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 928 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Corithras Moonrage
    .accept 929 >>接任务: |cRXP_WARN_大地之冠|r
step << Druid
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛洛尼·刃叶|r
    .train 2366 >>列车|T136065:0|t[草药学]
    >>|T136065:0|t[草药学]|cRXP_WARN_i需要在15级任务后收集5|r|T134187:0|t[Earthroot]|cRXP_WARN_form。你以后可以忘掉它|r
    .target Malorne Bladeleaf
step << Druid
    #completewith end
    >>|cRXP_WARN_等级|r|T136065:0|t[草药学]|cRXP_WARN_to 15|r
    >>|cRXP_WARN_从地面上拾取5个地球根，稍后进行15级任务|r
    .collect 2449,5
step << Priest
    .goto Teldrassil,57.242,63.511
    >>目标|cRXP_FRIENDLY_大陆沙雅|r
    >>|cRXP_WARN_施法|r|T135929:0|t[较轻治疗（等级2）]|cRXP_WARN_and|r|T135987:0|t[力量词：坚韧]|cRX P_WARN_on|r|cRX _弗兰德利_大陆沙雅|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 997 >>交任务: |cRXP_FRIENDLY_德纳兰的泥土|r
    .target Denalan
    .accept 918 >>接任务: |cRXP_WARN_林精的种子|r
    .accept 919 >>接任务: |cRXP_WARN_林精的新芽|r
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>杀死|cRXP_ENEMY_Timberlings|r。掠夺它们的|cRXX_Loot_Seeds|r
    >>在地面上掠夺|cRXP_Loot_林木萌芽|r
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 918 >>交任务: |cRXP_FRIENDLY_林精的种子|r
    .target Denalan
    .accept 922 >>接任务: |cRXP_WARN_雷利亚·绿树|r
    .turnin 919 >>交任务: |cRXP_FRIENDLY_林精的新芽|r
step
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >>前往星光村
step
    .goto Teldrassil,68.02,59.66
    >>打开|cRXP_PICK_Tallonkai的Dresser|r。为|cRXP _Loot_Emerald Dreamcatcher|r抢劫它
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r, 他在楼上
    .turnin 475 >>交任务: |cRXP_FRIENDLY_烦恼之风|r
    .target Gaerolas Talvethren
    .accept 476 >>接任务: |cRXP_WARN_瘤背熊怪的堕落|r
step
    #label zenn
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_使用|r|T134721:0|t[Jade Phial]|cRXP_WARN_at Starbreeze Village Moonwell|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    >>杀死|cRXP_ENEMY_Nightsabers|r。掠夺他们的|cRXX_Loot_Fangs|r
    >>杀死|cRXP_ENEMY_Strigid Owls|r。掠夺它们的|cRXX_Loot_Features|r
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r。掠夺他们的|cRXD_Loot_Silk|r
    >>|cRXP_WARN_保存任意|r|T132832:0|t[小鸡蛋]|cRXP_WARN_and|r|T134321:0|t[蜘蛛腿]|cRXP-WARN_to用于调平|T133971:0|t[烹饪]|cRXP_WARN_water|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    #era
    .goto Teldrassil,60.7,54.4
	.xp 7+3500 >>升级到7级+3500xp
step
    #som--xpgate
    .goto Teldrassil,60.7,54.4
	.xp 7+2900 >>升级到7级+2900xp
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 488 >>交任务: |cRXP_FRIENDLY_赛恩的要求|r
step
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
    .accept 489 >>接任务: |cRXP_WARN_寻求救赎！|r
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .turnin 476 >>交任务: |cRXP_FRIENDLY_瘤背熊怪的堕落|r
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5621 >>交任务: |cRXP_FRIENDLY_月光之衣|r
	.trainer >>训练你的职业技能
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .turnin 2438 >>交任务: |cRXP_FRIENDLY_翡翠摄梦符|r
    .target Tallonkai Swiftroot
    .accept 2459 >>接任务: |cRXP_WARN_噬梦者菲罗斯塔|r
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
    >>|cRXP_BUY_购买并装备一把|r|T135499:0|t[Hornwood递归弓]|cRXP_Buy_如果你能负担得起（2s 85c），如果不能跳过这一步|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
	.vendor >>|cRXP_BUY_最多购买800 |r|T132382:0|t[粗箭头]
    .target Jeena Featherbow
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
	.trainer >>训练你的职业技能
    .target Dazalar
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >>训练你的职业技能
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
	.trainer >>训练你的职业技能
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一台|r|T135321:0|t[Gladius]|cRXP_Buy_如果你能负担得起（5s 36c），如果不能跳过这一步|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一个|r|T135641:0|t[Stiletto]|cRXP_Buy_如果你能负担得起（4s 1c），如果不能跳过这一步|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一个|r|T135145:0|t[手杖]|cRXP_Buy_如果你能负担得起（5s 4c），如果不能跳过这一步|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Corithras Moonrage
    .accept 933 >>接任务: |cRXP_WARN_大地之冠|r
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔|r
	.trainer >>训练你的职业技能
    .target Kal
step
	#completewith jewel
    >>将|cRXP_Loot_Fel Cones|r洗劫一空
    >>|cRXP_WARN_它们通常位于树干旁边|r
    .complete 489,1 --Collect Fel Cone (x3)
step
    #completewith next
    >>杀死|cRXP_ENEMY_Gnarlpine神秘人|r
    >>|cRXP_WARN_如果没有多少|cRXP_ENEMY_Gnarlpine神秘人|r，你可能必须杀死|cRXX_ENEMY_Gnarlpine战士|r才能让他们产卵|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>杀死|cRXP_ENEMY_Ferocitas the Dream Eater |r。掠夺他获得|T133288:0|t[|cRXX_Loot_Gnarlpine项链|r]
    .use 8049 >>|cRXP_WARN_使用|T133288:0|t[|cRXP_LOOT_Gnarlpine项链|r]掠夺|r|cRXP _LOOT_Tallonkai的珠宝|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>杀死|cRXP_ENEMY_Gnarlpine神秘人|r
    >>|cRXP_WARN_如果没有多少|cRXP_ENEMY_Gnarlpine神秘人|r，你可能必须杀死|cRXX_ENEMY_Gnarlpine战士|r才能让他们产卵|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>将|cRXP_Loot_Fel Cones|r洗劫一空
    >>|cRXP_WARN_它们通常位于树干旁边|r
    .complete 489,1 --Collect Fel Cone (x3)
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 489 >>交任务: |cRXP_FRIENDLY_寻求救赎！|r
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Travel to Fel Rock
step << Hunter
    #era
    .goto Teldrassil,51.2,50.6
    >>杀死|cRXP_ENEMY_Lord Melenas|r。掠夺他的|cRXX_Loot_Head |r
    >>|cRXP_ENEMY_Lord Melenas|r可能位于整个Fel Rock的许多不同产卵位置
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << !Hunter
    .goto Teldrassil,51.2,50.6
    >>杀死|cRXP_ENEMY_Lord Melenas|r。掠夺他的|cRXX_Loot_Head |r
    >>|cRXP_ENEMY_Lord Melenas|r可能位于整个Fel Rock的许多不同产卵位置
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #softcore
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step << !Druid
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务: |cRXP_FRIENDLY_大地之冠|r
step
	#era/som
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .accept 933 >>接任务: |cRXP_WARN_大地之冠|r
step
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >>前往Teldrassil西南部
step
	#era/som
	.goto Teldrassil,42.61,76.18
	>>单击|cRXP_PICK_Strange Fruited Plant|r
	.accept 930 >>接任务: |cRXP_WARN_发光的水果|r
step
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >>前往阿利特里恩水池
step
	#era/som
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_使用|r|T134765:0|t[Tourmaline Phial]|cRXP_WARN_at the Pools of Arlithreen moonwell|r
	.complete 933,1
step
	#era/som
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r和|cRXX_ENEMY_Webwood毒虫|r。掠夺它们的|cRXD_Loot_小蜘蛛腿|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >>Travel to Dolanaar
step
	#era/som
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 933 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Corithras Moonrage
    .accept 7383 >>接任务: |cRXP_WARN_大地之冠|r
step
	#era/som
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞恩|r
    .train 2550 >>火车烹饪
    .accept 4161 >>接任务: |cRXP_WARN_卡多雷的菜谱|r
    .turnin 4161 >>交任务: |cRXP_FRIENDLY_卡多雷的菜谱|r
    .target Zarrin
step
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜恩希|r
    .train 3273 >>列车|T135966:0|t[急救]
    .target Byancie
step
    #som
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .turnin 932 >>交任务: |cRXP_FRIENDLY_扭曲的仇恨|r << !Hunter
    .turnin 2459 >>交任务: |cRXP_FRIENDLY_噬梦者菲罗斯塔|r
step
    #era
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .turnin 932 >>交任务: |cRXP_FRIENDLY_扭曲的仇恨|r
    .turnin 2459 >>交任务: |cRXP_FRIENDLY_噬梦者菲罗斯塔|r
step
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_月亮女祭司阿玛拉|r|cRXP_WARN_在多兰纳尔以西的道路上行驶|r
    .accept 487 >>接任务: |cRXP_WARN_达纳苏斯之路|r
    .target Moon Priestess Amara
step
    .goto Teldrassil,46.6,53.0
    >>杀死|cRXP_ENEMY_Gnarlpine救护车|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_月亮女祭司阿玛拉|r|cRXP_WARN_在多兰纳尔以西的道路上行驶|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
    .target Moon Priestess Amara
step
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >>前往神谕圣地
step
	#era/som
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >>接任务: |cRXP_WARN_神谕林地|r
step
	#era/som
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_使用|r|T134798:0|t[Amethyst Phial]|cRXP_WARN_at the Oracle Glade moonwell|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#era/som
    #completewith xp10
	#label harpies
    >>杀死|cRXP_ENEMY_Bloodflowe Harpies|r。掠夺它们的|cRXP-Loot_Barret|r
    >>|cRXP_ENEMY_血羽矩阵|r|cRXP_WARN_cast|r|T136052:0|t[治疗波]|cRXD_WARN_and|r|T136048:0|t[Lightning Bolt]|cRXP_WARN_造成大量伤害。试着快速爆裂|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#era/som
    .goto Teldrassil,34.61,28.79
    >>单击|cRXP_PICK_Strange Fronded Plant |r
    .accept 931 >>接任务: |cRXP_WARN_发光的树叶|r
step << Hunter
	#era/som
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_这将开始一个护送任务|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
    .target Mist
step << Hunter
    #era
    #sticky
    #label xp10
    .xp 10-2670 >>升级，直到距离10级2670 xp(3830/6500)
    >>|cRXP_WARN_一旦你到达这个xp断点，跳过harpy/护送任务，直接前往Darnassus。稍后你将有另一次机会完成这些任务|r
step << Hunter
    #era/som--xpgate
    #sticky
    #label xp10
    .xp 10-3330 >>升级直到距离10级3330 xp(3170/6500)
    >>|cRXP_WARN_一旦你到达这个xp断点，跳过harpy/护送任务，直接前往Darnassus。稍后你将有另一次机会完成这些任务|r
step << Hunter
	#era/som
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step << Hunter
	#era/som
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
step << !Hunter
	#era/som
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_这将开始一个护送任务|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
    .target Mist
step << !Hunter
	#era/som
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step << !Hunter
    #era
    #label xp10
    .xp 10-750 << Druid
    .xp 10-3110 << !Druid
step << !Hunter
	#som--xpgate
    #phase 1-2
	#label xp10
   .xp 10-930 << Druid
   .xp 10-3880 << !Druid
step
	#som--xpgate
    #phase 3-6
	.goto Teldrassil,38.6,58.0
	>>完成收集7条小蜘蛛腿
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
	#som--xpgate
	#phase 3-6
	#label xp10
	.xp 10-640
    .goto Teldrassil,38.3,34.4
	>>如果你在xp上还落后，那就向北执行harpy任务
step << !Druid
	#som--xpgate
	#phase 3-6
	#label xp10
	.xp 10-3300
step << !Rogue
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>前往: |cRXP_PICK_达纳苏斯|r
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >>交任务: |cRXP_FRIENDLY_雷利亚·绿树|r
    .target Rellian Greenspyre
    .accept 923 >>接任务: |cRXP_LOOT_青苔之瘤|r
step << !Hunter !Rogue
	#era/som
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r, 他在树上
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r, 他在中层
    .accept 5921 >>接任务: |cRXP_LOOT_月光林地|r
	.trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >>接任务: |cRXP_WARN_月神的泪水|r
step << Druid
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
    >>|cRXP_WARN_它将出现在你的拼写手册中|r
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r, 他在楼上
    .turnin 5921 >>交任务: |cRXP_FRIENDLY_月光林地|r
    .target Dendrite Starblaze
    .accept 5929 >>接任务: |cRXP_WARN_巨熊之灵|r
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨熊之灵|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
    >>|cRXP_WARN_这会让你更快地返回|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r, 他在楼上
    .turnin 5929 >>交任务: |cRXP_FRIENDLY_巨熊之灵|r
    .target Dendrite Starblaze
    .accept 5931 >>接任务: |cRXP_WARN_返回达纳苏斯|r
step
    #requires xp10 << Rogue
    #completewith next << !Rogue
    .hs >>从赫斯到多拉纳尔
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
	.vendor >>|cRXP_BUY_购买4堆|r|T132382:0|t[尖箭头]|cRXP_Buy_。达到10级后立即装备他们|r
    .target Jeena Featherbow
step
	#som
	#phase 3-6
    .goto Teldrassil,57.121,61.296
    .train 2550 >>火车烹饪
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞恩|r
    .accept 4161 >>接任务: |cRXP_WARN_卡多雷的菜谱|r
    .turnin 4161 >>交任务: |cRXP_FRIENDLY_卡多雷的菜谱|r
step
	#som
	#phase 3-6
    .goto Teldrassil,51.9,56.4
    >>找到月亮女祭司阿玛拉，她在多拉纳尔以西的路上巡逻
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
	.maxlevel 9
step << Hunter
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .accept 6063 >>接任务: |cRXP_WARN_驯服野兽|r
	.train 13165 >>训练你的10级法术
step << Hunter
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6063 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6101 >>接任务: |cRXP_WARN_驯服野兽|r
step
	#era/som
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 7383 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Corithras Moonrage
    .accept 935 >>接任务: |cRXP_WARN_大地之冠|r
step
	#era/som
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 931 >>交任务: |cRXP_FRIENDLY_发光的树叶|r
    .turnin 930 >>交任务: |cRXP_FRIENDLY_发光的水果|r
step
	#era/som
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
	.turnin 927 >>交任务: |cRXP_FRIENDLY_布满苔藓的心脏|r
    .isOnQuest 927
step
	#era/som
	.goto Teldrassil,60.78,68.59
	>>单击|cRXP_LOOT_Denalans播种机|r
	.turnin 941 >>交任务: |cRXP_FRIENDLY_培养心脏|r
	.isQuestTurnedIn 927
step << Hunter
	#era/som
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_你必须右键点击你的宠物框架并解散你的宠物，然后才能驯服另一只|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
    #label L10
    .xp 10
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
	.trainer >>训练你的职业技能
    .target Laurna Morninglight
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >>训练你的职业技能
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
	.trainer >>训练你的职业技能
    .target Jannok Breezesong
step << Hunter
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .accept 6063 >>接任务: |cRXP_WARN_驯服野兽|r
	.trainer >>训练你的职业技能
step << Hunter
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6063 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6101 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_你必须右键点击你的宠物框架并解散你的宠物，然后才能驯服另一只|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6101 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6102 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Strigid Screecher|r
    >>|cRXP_WARN_你必须右键点击你的宠物框架并解散你的宠物，然后才能驯服另一只|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6102 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6103 >>接任务: |cRXP_WARN_训练野兽|r
step << Warrior
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_月亮女祭司阿玛拉|r|cRXP_WARN_在多兰纳尔以西的道路上行驶|r
    .accept 1684 >>接任务: |cRXP_LOOT_艾兰娜瑞|r
    .target Moon Priestess Amara
step << Rogue
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
    .accept 2241 >>接任务: |cRXP_LOOT_詹诺克的花|r
step << Hunter
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_BUY a|r|T135145:0|t[手杖]
    >>|cRXP_WARN_你稍后会装备这个。如果您碰巧找到其他员工，请跳过此步骤|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
step << !Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_月亮女祭司阿玛拉|r|cRXP_WARN_在多兰纳尔以西的道路上行驶|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
    .target Moon Priestess Amara
step << Rogue
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>前往: |cRXP_PICK_达纳苏斯|r
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >>交任务: |cRXP_FRIENDLY_雷利亚·绿树|r
    .target Rellian Greenspyre
    .accept 923 >>接任务: |cRXP_LOOT_青苔之瘤|r
step << Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r, 他在树上
    .turnin 935 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r
    .target Arch Druid Fandral Staghelm
    .accept 952 >>接任务: |cRXP_WARN_古树之林|r
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
    .turnin 2241 >>交任务: |cRXP_FRIENDLY_詹诺克的花|r
    .target Syurna
    .accept 2242 >>接任务: |cRXP_LOOT_命运的召唤|r
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >>接任务: |cRXP_WARN_月神的泪水|r
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_Cast|r|T132164:0|t[驯服野兽]| cRXP_WARN_on a|cRXP_ENEMY_Strigid Hunter|r驯服它|r--.Tame 1997
    .train 2981 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级2）]
    .link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
	.unitscan Strigid Hunter
step
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>杀死|cRXP_ENEMY_Timberling Tramplers|r，|cRXD_ENEMY_ Timberling Mire Beasts|r和|cRXP_ENEMY_Elder Timberlings|r掠夺它们的|cRXP_OOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>杀死|cRXP_ENEMY_Lady Sathrah|r。掠夺它的|cRXD_Loot_Spinnerets|r
    >>|cRXP_ENEMY_萨特拉夫人|r|cRXP_WARN_can在3个不同的地点产卵|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_在|cRXP_ENEMY_Sethir the Ancient上铸造|r|T133644:0|t[拾取口袋]|r
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    >>|cRXP_ENEMY_Sethir the Ancient|r |cRXP_WARN_walks along the big tree branch|r
    >>|cRXP_WARN_避免战斗|cRXP_ENEMY_Sethir the Ancient |r。让他从你身边走过，然后|r|T132320:0|t[Stealth]|cRXP-WARN_and|r|T133644:0|t[Spick Pocket]|cRXP-WARN_when你在他身后|r
    .complete 2242,1
    .mob Sethir the Ancient
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >>接任务: |cRXP_WARN_神谕林地|r
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819
    >>杀死|cRXP_ENEMY_Bloodflowe Harpies|r。掠夺它们的|cRXP-Loot_Barret|r
    >>|cRXP_ENEMY_血羽矩阵|r|cRXP_WARN_cast|r|T136052:0|t[治疗波]|cRXD_WARN_and|r|T136048:0|t[Lightning Bolt]|cRXP_WARN_造成大量伤害。试着快速爆裂|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,31.54,31.62
    .target Mist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_这将开始一个护送任务|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #requires harpies2
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
step
    #completewith NessaShadowsong
    .goto Darnassus,82.01,36.70,100 >>前往: |cRXP_PICK_达纳苏斯|r
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>购买以下物品，以便很快在Darkshore立即出现。如果您不想购买，请跳过此步骤
    >>|T133972:0|t[条纹肉]
    >>|T133912:0|t[暗岸石斑鱼]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step
    #label NessaShadowsong
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈德兰努尔|r
    .accept 6344 >>接任务: |cRXP_WARN_尼莎·影歌|r
step
	.abandon 927 >>抛弃苔藓缠绕的心
step << Warrior
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1684 >>交任务: |cRXP_FRIENDLY_艾兰娜瑞|r
    .target Elanaria
    .accept 1683 >>接任务: |cRXP_LOOT_沃鲁斯·邪蹄|r
step << Warrior
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >>前往|cRXP_ENEMY_Vorlus Vilehof|r
step << Warrior
    .goto Teldrassil,47.2,63.7
    >>杀死|cRXP_ENEMY_Vorlus Vilehof|r。掠夺他的|cRXX_Loot_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>前往: |cRXP_PICK_达纳苏斯|r
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1683 >>交任务: |cRXP_FRIENDLY_沃鲁斯·邪蹄|r
--	.accept 1686 >>接任务: |cRXP_WARN_艾鲁拉的阴影|r
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r, 他在中层
    .turnin 5931 >>交任务: |cRXP_FRIENDLY_返回达纳苏斯|r
    .target Mathrengyl Bearwalker
    .accept 6001 >>接任务: |cRXP_LOOT_身心之力|r
step
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 935 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r << Hunter
    .target Arch Druid Fandral Staghelm
    .accept 952 >>接任务: |cRXP_WARN_古树之林|r
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
    .turnin 6103 >>交任务: |cRXP_FRIENDLY_训练野兽|r
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
    .turnin 2242 >>交任务: |cRXP_FRIENDLY_命运的召唤|r
step
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 923 >>交任务: |cRXP_FRIENDLY_青苔之瘤|r
step << Rogue
    #completewith next
    .goto Darnassus,62.68,65.58,30 >>前往|cRXP_FRIENDLY_Turian|r
step << Rogue
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    >>|cRXP_BUY_BUY a|r|T135641:0|t[平衡飞刀]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2518 >>交任务: |cRXP_FRIENDLY_月神的泪水|r
    .target Priestess A'moora
    .accept 2520 >>接任务: |cRXP_WARN_萨丝拉的祭品|r
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_使用|r|T135652:0|t[Sathrah的牺牲]|cRXP_WARN_at喷泉|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2520 >>交任务: |cRXP_FRIENDLY_萨丝拉的祭品|r
step << Druid
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲罗迪恩·唤月|r
    .train 2366 >>列车|T136065:0|t[草药学]
    >>|T136065:0|t[草药学]|cRXP_WARN_i需要在15级任务后收集5|r|T134187:0|t[Earthroot]|cRXP_WARN_form。你以后可以忘掉它|r
    .target Firodren Mooncaller
step << Hunter/Warrior/Priest
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .train 227 >>火车杆
    >>如果你的包里有一根棍子，就装备它 << Hunter
    .target Ilyenia Moonfire
step << Hunter
    #completewith FlyDS
    +|cRXP_WARN_挥动|r|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter
    .goto Darnassus,58.76,44.48
	.money <0.1751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
	>>|cRXP_BUY_购买并装备一把|r|T135489:0|t[叠层递归弓]
    >>|cRXP_BUY_BUY|r|T132382:0|t[尖箭头]
	.collect 2507,1
    .target Ariyell Skyshadow
step << Warrior
    .goto Darnassus,58.76,44.48
    .money <0.3022
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_购买|r|T135154:0|t[季度员工]|cRXP_Buy_。装备到11级|r
	.collect 854,1
    .target Ariyell Skyshadow
step << Warrior
    .goto Darnassus,58.76,44.48
    .money <0.2023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
	>>|cRXP_BUY_如果买不起|r|T135154:0|t[Cutlass]|cRXP_BUY_，请购买并装备|r|T135346:0|t[Quarter Staff]
	.collect 851,1
    .target Ariyell Skyshadow
step
    #completewith next
    .goto Darnassus,30.00,41.43,10 >>前往: |cRXP_PICK_泰达希尔|r
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6344 >>交任务: |cRXP_FRIENDLY_尼莎·影歌|r
    .target Nessa Shadowsong
    .accept 6341 >>接任务: |cRXP_WARN_泰达希尔的渔业|r
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .turnin 6341 >>交任务: |cRXP_FRIENDLY_泰达希尔的渔业|r
    .target Vesprystus
    .accept 6342 >>接任务: |cRXP_WARN_飞往奥伯丁|r
step
    #label FlyDS
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞到黑海岸
    .target Vesprystus
]])
