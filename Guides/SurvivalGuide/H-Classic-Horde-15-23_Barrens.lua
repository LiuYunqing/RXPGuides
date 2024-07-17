local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 15-19 The Barrens
#version 1
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 1-20
#next 19-23 Stonetalon/Barrens/Ashenvale


step << !Tauren !Hunter !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加索克|r
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .target Gar'Thok
    .isQuestComplete 837
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
	.train 6074 >>训练你的职业技能
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
	.train 8102 >>训练你的职业技能
    .target Tai'jin
    .xp <16,1
step << Orc Warrior/Troll Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 1160 >>训练你的职业技能
    .target Tarshaw Jaggedscar
    .xp <14,1
    .xp >16,1
step << Orc Warrior/Troll Warrior
    #optional
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 285 >>训练你的职业技能
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 1758 >>训练你的职业技能
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 6761 >>训练你的职业技能
    .target Kaplak
    .xp <16,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 6222 >>训练你的职业技能
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基萨|r
    .collect 16316,1,842,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kitha
    .xp <16,1
step << Warlock
    #optional
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1455 >>训练你的职业技能
    .target Dhugru Gorelust
    .xp <16,1
step << !Tauren !Hunter !Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_WARN_部落的新兵|r
    .target Takrin Pathseeker
    .isQuestAvailable 840
step
    #optional
    .abandon 480 >>放弃编织者以避免任务日志问题。你稍后再拿
    .isOnQuest 480
step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .zoneskip The Barrens
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_WARN_十字路口征兵|r
    .target Kargal Battlescar
    .isOnQuest 840
step << !Tauren !Hunter !Shaman
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 809 >>交任务: |cRXP_FRIENDLY_雅克塞罗斯|r
    .accept 924 >>接任务: |cRXP_LOOT_恶魔之种|r
    .isOnQuest 809
    .target Ak'Zeloth
    .group
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_掠夺|r|T134095:0|t[有缺陷的力量石]|cRXP_WARN_下一个|r|cRXP-FRIENDLY_Ak'Zeloth|r|cRXP_WARN_。这个项目有一个30分钟的计时器，所以一定要快|r
    .turnin 926 >>交任务: |cRXP_FRIENDLY_有瑕疵的能量石|r
    .isOnQuest 924
    .group
step << !Tauren !Hunter !Shaman
    #completewith next
    .goto The Barrens,52.34,29.27,150 >>前往十字路口
step << !Undead !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r, |cRXP_FRIENDLY_加兹罗格|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, Tonga, |cRXP_FRIENDLY_曼科里克|r, |cRXP_FRIENDLY_索克|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
    .goto The Barrens,52.62,29.84
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
    .goto The Barrens,51.93,30.32
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
    .accept 844 >>接任务: |cRXP_WARN_平原陆行鸟的威胁|r
    .goto The Barrens,52.23,31.00
    .accept 870 >>接任务: |cRXP_WARN_遗忘之池|r
    .goto The Barrens,52.26,31.94
    .accept 899 >>接任务: |cRXP_WARN_复仇的怒火|r
    .accept 4921 >>接任务: |cRXP_LOOT_在战斗中失踪|r
    .goto The Barrens,52.00,31.60
    .accept 871 >>接任务: |cRXP_WARN_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_WARN_十字路口的补给品|r
    .goto The Barrens,51.50,30.87
    .target Zargh
    .target Gazrog
    .target Sergra Darkthorn
    .target Tonga Runetotem
    .target Mankrik
    .target Thork
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, Tonga, |cRXP_FRIENDLY_曼科里克|r, |cRXP_FRIENDLY_索克|r
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
    .goto The Barrens,51.93,30.32
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
    .accept 844 >>接任务: |cRXP_WARN_平原陆行鸟的威胁|r
    .goto The Barrens,52.23,31.00
    .accept 870 >>接任务: |cRXP_WARN_遗忘之池|r
    .goto The Barrens,52.26,31.94
    .accept 899 >>接任务: |cRXP_WARN_复仇的怒火|r
    .accept 4921 >>接任务: |cRXP_LOOT_在战斗中失踪|r
    .goto The Barrens,52.00,31.60
    .accept 871 >>接任务: |cRXP_WARN_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_WARN_十字路口的补给品|r
    .goto The Barrens,51.50,30.87
    .target Gazrog
    .target Sergra Darkthorn
    .target Tonga Runetotem
    .target Mankrik
    .target Thork
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接任务: |cRXP_LOOT_鹰身强盗|r
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r << !Tauren !Undead
    .accept 6384 >>接任务: |cRXP_WARN_飞往奥格瑞玛|r << !Tauren !Undead
    .fp Crossroads >>获取十字路口飞行路线
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 6365
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
    .accept 1492 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
	.turnin 1358 >>交任务: |cRXP_FRIENDLY_给赫布瑞姆的样本|r
    .target Apothecary Helbrim
step
    #completewith DemonSeed
    >>杀死|cRXP_ENEMY_Plainstrider|r。掠夺他们的|cRXX_Loot_Beak|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .group
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >>前往山顶
    .isOnQuest 924
step
    .group
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>右键单击|cRXP_PICK_Altar|r。确保您身上有|T134095:0|t[缺陷力量石]
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step
    .group
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,100 >>沿着你来的山往下走
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    >>杀死|cRXP_ENEMY_Plainstrider|r。掠夺他们的|cRXX_Loot_Beak|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>杀死|cRXP_ENEMY_Water Seekers|r、|cRXD_ENEMY_Thornweavers|r和|cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,3 --Razormane Hunter (3)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
    .mob Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step << !Tauren !Hunter !Shaman
    #label DisruptTheAttacks
#loop
	.line The Barrens,53.63,24.50,54.26,24.64,54.81,25.19,55.50,25.61,55.86,26.3,55.83,27.15,55.41,27.41,54.50,26.97,54.05,26.11,53.51,25.24,53.63,24.50
	.goto The Barrens,53.63,24.50,25,0
	.goto The Barrens,54.26,24.64,25,0
	.goto The Barrens,54.81,25.19,25,0
	.goto The Barrens,55.50,25.61,25,0
	.goto The Barrens,55.86,26.30,25,0
	.goto The Barrens,55.83,27.15,25,0
	.goto The Barrens,55.41,27.41,25,0
	.goto The Barrens,54.50,26.97,25,0
	.goto The Barrens,54.05,26.11,25,0
	.goto The Barrens,53.51,25.24,25,0
	.goto The Barrens,53.63,24.50,25,0
    >>杀死|cRXP_ENEMY_Water Seekers|r、|cRXD_ENEMY_Thornweavers|r和|cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,3 --Razormane Hunter (3)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
    .mob Razormane Hunter
step
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19
    >>杀死|cRXP_ENEMY_Plainstrider|r。掠夺他们的|cRXX_Loot_Beak|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_索克|r
    .turnin 844 >>交任务: |cRXP_FRIENDLY_平原陆行鸟的威胁|r
    .accept 845 >>接任务: |cRXP_LOOT_斑马的威胁|r
    .goto The Barrens,52.23,31.00
    .turnin 871 >>交任务: |cRXP_FRIENDLY_野猪人的袭击|r
    .accept 872 >>接任务: |cRXP_WARN_野猪人的头目|r
    .goto The Barrens,51.50,30.87
    .target Sergra Darkthorn
    .target Thork
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Tonga, |cRXP_FRIENDLY_曼科里克|r
    .accept 870 >>接任务: |cRXP_WARN_遗忘之池|r
    .goto The Barrens,52.26,31.94
    .accept 899 >>接任务: |cRXP_WARN_复仇的怒火|r
    .accept 4921 >>接任务: |cRXP_LOOT_在战斗中失踪|r
    .goto The Barrens,52.00,31.60
    .target Tonga Runetotem
    .target Mankrik
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接任务: |cRXP_LOOT_鹰身强盗|r
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
    .accept 1492 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
	.turnin 1358 >>交任务: |cRXP_FRIENDLY_给赫布瑞姆的样本|r
    .target Apothecary Helbrim
step << !Tauren !Undead
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
    .target Zargh
    .isOnQuest 6386
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找一个团队去Ragefire Chasm
    .dungeon RFC
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
    .dungeon RFC
step << !Tauren
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .zoneskip Stonetalon Mountains
    .dungeon RFC
step << !Tauren
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左边的小路向上走
    .dungeon RFC
step << !Tauren
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳到其中一个笼子上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>|cRXP_WARN_单击此处查看示例|r
    .dungeon RFC
step << !Tauren
    #completewith RFCPickups
    .goto Thunder Bluff,50.75,37.07,40 >>乘电梯到雷霆崖
    .dungeon RFC
step << Tauren
    #completewith RFCPickups
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
    .dungeon RFC
step
    #label RFCPickups
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .accept 5722 >>接任务: |cRXP_WARN_寻找背包|r
    .accept 5723 >>接任务: |cRXP_WARN_试探敌人|r
    .target Rahauro
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >>获得Thunder Bluff飞行路线 << !Tauren
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tal
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .accept 5726 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .dungeon RFC
step
    .goto Durotar,53.08,9.19,0
    >>杀死头骨岩中的|cRXP_ENEMY_燃烧之刃|r暴民，直到|cRXD_LOOT_中尉徽章|r掉落
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5726 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5727 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .accept 5761 >>接任务: |cRXP_WARN_饥饿者塔拉加曼|r
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5727 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5728 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>输入RFC实例门户。区域在
    .dungeon RFC
step
    #completewith next
    >>杀死|cRXP_ENEMY_Ragefire Troggs|r和|cRXP_ENEMY_Ragefire萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .complete 5723,2 --Ragefire Shaman (8)
    .mob Ragefire Trogg
    .mob Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >>交任务: |cRXP_FRIENDLY_寻找背包|r
    .accept 5724 >>接任务: |cRXP_WARN_归还背包|r
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 5724 >>接任务: |cRXP_WARN_归还背包|r
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step
    #label TroggsShamans
    >>杀死|cRXP_ENEMY_Ragefire Troggs|r和|cRXP_ENEMY_Ragefire萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .complete 5723,2 --Ragefire Shaman (8)
    .mob Ragefire Trogg
    .mob Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>杀死|cRXP_ENEMY_灼热之刃邪教者|r和|cRXX_ENEMY_灼热之刃术士|r。掠夺他们以获得|cRXD_Loot_阴影咒语|r和| cRXP_Loot_虚空咒语|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    >>杀死饥饿者|cRXP_ENEMY_Taragaman |r。掠夺他的|cRXX_Loot_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step
    #label BazzalanandJergosh
    >>杀死|cRXP_ENEMY_Bazzalan|r和|cRXP_ENEMY_Jergoh调用程序|r
    .complete 5728,1 --Bazzalan (1)
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob Bazzalan
    .mob Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step
    >>杀死|cRXP_ENEMY_灼热之刃邪教者|r和|cRXX_ENEMY_灼热之刃术士|r。掠夺他们以获得|cRXD_Loot_阴影咒语|r和| cRXP_Loot_虚空咒语|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 5761 >>交任务: |cRXP_FRIENDLY_饥饿者塔拉加曼|r
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5728 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5729 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .accept 5729 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 5729 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5730 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5730 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
    .dungeon RFC
step
    .goto Durotar,50.8,13.8,40 >>上齐柏林塔
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith Varimathras
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
    .dungeon RFC
step
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
    .goto Undercity,56.2,96.2
    .dungeon RFC
step
    #label Varimathras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
    .turnin 5725 >>交任务: |cRXP_FRIENDLY_毁灭之力|r
    .target Varimathras
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith next
    .hs >>十字路口之心
    .use 6948
    .dungeon RFC
step
    #completewith FinalRFCTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon RFC
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 >>交任务: |cRXP_FRIENDLY_归还背包|r
    .turnin 5723 >>交任务: |cRXP_FRIENDLY_试探敌人|r
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 >>交任务: |cRXP_FRIENDLY_归还背包|r
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step
    #label FinalRFCTurnin
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5723 >>交任务: |cRXP_FRIENDLY_试探敌人|r
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step
    #completewith KreenigSnarlsnout
    .hs >>十字路口之心
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >>飞向十字路口
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    #optional
    .abandon 5723 >>放弃测试敌人的力量
    .isOnQuest 5723
    .dungeon RFC
step
    #optional
    .abandon 5725 >>Abandon 交任务: |cRXP_FRIENDLY_毁灭之力|r
    .isOnQuest 5725
    .dungeon RFC
step
    #optional
    .abandon 5728 >>Abandon Hidden Enemies
    .isOnQuest 5728
    .dungeon RFC
step
    #optional
    .abandon 5761 >>放弃屠兽
    .isOnQuest 5761
    .dungeon RFC
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
    .mob Razormane Geomancer
    .mob Razormane Defender
step
    #completewith next
    >>掠夺|cRXP_PICK_Crossroads的补给箱|r。它有多个产卵位置
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>杀死|cRXP_ENEMY_Kreenig Snarlsnous|r。掠夺他的|cRXX_Loot_TASK|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step
    #completewith next
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
    .mob Razormane Geomancer
    .mob Razormane Defender
step
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>掠夺|cRXP_PICK_Crossroads的补给箱|r。它有多个产卵位置
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
#loop
	.line The Barrens,59.37,25.38,59.63,24.46,59.63,23.88,59.06,23.89,58.62,23.98,57.83,24.28,56.87,24.55,56.74,25.37,57.25,25.46,57.52,25.63,57.65,25.08,58.24,24.98,58.90,25.37
	.goto The Barrens,59.37,25.38,25,0
	.goto The Barrens,59.63,24.46,25,0
	.goto The Barrens,59.63,23.88,25,0
	.goto The Barrens,59.06,23.89,25,0
	.goto The Barrens,58.62,23.98,25,0
	.goto The Barrens,57.83,24.28,25,0
	.goto The Barrens,56.87,24.55,25,0
	.goto The Barrens,56.74,25.37,25,0
	.goto The Barrens,57.25,25.46,25,0
	.goto The Barrens,57.52,25.63,25,0
	.goto The Barrens,57.65,25.08,25,0
	.goto The Barrens,58.24,24.98,25,0
	.goto The Barrens,58.90,25.37,25,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
    .mob Razormane Geomancer
    .mob Razormane Defender
step
    #completewith next
    >>杀死你看到的任何|cRXP_ENEMY_Zhevra|r。掠夺他们的|cRXP_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .group
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 924 >>交任务: |cRXP_FRIENDLY_恶魔之种|r
    .target Ak'Zeloth
    .isQuestComplete 924
step
    #completewith next
    >>杀死你看到的任何|cRXP_ENEMY_Zhevra|r。掠夺他们的|cRXP_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .goto The Barrens,63.08,36.56,120 >>向南行驶至Ratchet
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
    .accept 887 >>接任务: |cRXP_WARN_南海海盗|r
    .target Gazlowe
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fp Ratchet >>获取棘轮飞行路径
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, Wanted poster
    .accept 894 >>接任务: |cRXP_LOOT_什么什么平衡器|r
    .goto The Barrens,62.98,37.22
    .accept 895 >>接任务: |cRXP_WARN_通缉：巴隆·朗绍尔|r
    .goto The Barrens,62.59,37.47
    .target Sputtervalve
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith BarenLongshore
    +装备|T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一把|r|T132394:0|t[胡子斧]|r
    .collect 2025,1,895,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith BarenLongshore
    +装备|T132394:0|t[带胡子的斧头]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一个|r|T133046:0|t[石锤]|r
    .collect 2026,1,895,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #completewith BarenLongshore
    +当你达到16级时，装备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #completewith BarenLongshore
    +装备|T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一把|r|T135343:0|t[弯刀]|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买第二把|r|T135343:0|t[弯刀]|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
    .accept 821 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
    .target Brewmaster Drohn
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维尔雷|r
    >>|cRXP_BUY_从他那里购买|r|T133918:0|t[Longjaw Mud Snappers]|cRXP_Buy_|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_它们非常便宜，想买多少就买多少|r
    .vendor >>供应商垃圾箱
    .collect 4592,40,895,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .home >>把你的炉石放在棘轮上
    .target Innkeeper Wiley
step
    #completewith BarenLongshore
    .destroy 5088 >>摧毁: |cRXP_ENEMY_控制台操作手册|r
step
    #completewith BarenLongshore
    >>杀死|cRXP_ENEMY_南海旅行家|r和|cRXX_ENEMY_南海炮手|r
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
    .mob Southsea Brigand
    .mob Southsea Cannoneer
step << Orc Rogue/Troll Rogue
	#completewith next
	>>杀死|cRXP_ENEMY_Tazan|r。抢走他的|cRXX_Loot_Satchel|r。他在山上巡逻
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BarenLongshore
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    .goto The Barrens,64.21,47.14
    >>杀死|cRXP_ENEMY_Baron Longshore|r。掠夺他的|cRXX_Loot_Head |r他可以在其中一个营地找到
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step << Orc Rogue/Troll Rogue
	#completewith next
	>>杀死|cRXP_ENEMY_Tazan|r。抢走他的|cRXX_Loot_Satchel|r。他在山上巡逻
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10
    >>杀死|cRXP_ENEMY_南海旅行家|r和|cRXX_ENEMY_南海炮手|r
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
    .mob Southsea Brigand
    .mob Southsea Cannoneer
step << Orc Rogue/Troll Rogue
    .goto The Barrens,63.70,44.32,50,0
    .goto The Barrens,62.70,44.07,50,0
    .goto The Barrens,62.18,44.47
    >>杀死|cRXP_ENEMY_Tazan|r。抢走他的|cRXX_Loot_Satchel|r。他在山上巡逻
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
    .turnin 887 >>交任务: |cRXP_FRIENDLY_南海海盗|r
    .turnin 895 >>交任务: |cRXP_FRIENDLY_通缉：巴隆·朗绍尔|r
    .accept 890 >>接任务: |cRXP_WARN_丢失的货物|r
    .target Gazlowe
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 1492 >>交任务: |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 890 >>交任务: |cRXP_FRIENDLY_丢失的货物|r
    .accept 892 >>接任务: |cRXP_WARN_丢失的货物|r
    .accept 896 >>接任务: |cRXP_LOOT_矿工的宝贝|r
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
    .turnin 892 >>交任务: |cRXP_FRIENDLY_丢失的货物|r
    .accept 888 >>接任务: |cRXP_LOOT_被窃的货物|r
    .target Gazlowe
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith FlyToXroads1
    +装备|T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一把|r|T132394:0|t[胡子斧]|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith FlyToXroads1
    +装备|T132394:0|t[带胡子的斧头]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一个|r|T133046:0|t[石锤]|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #completewith FlyToXroads1
    +当你达到16级时，装备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #completewith FlyToXroads1
    +装备|T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一把|r|T135343:0|t[弯刀]|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买第二把|r|T135343:0|t[弯刀]|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step
    .goto The Barrens,63.89,35.93,50,0
    .goto The Barrens,64.28,35.60,50,0
    .goto The Barrens,64.54,34.93,50,0
    .goto The Barrens,64.42,33.12,50,0
    .goto The Barrens,63.90,32.03,50,0
    .goto The Barrens,63.78,31.03,50,0
    .goto The Barrens,62.89,29.77,50,0
    .goto The Barrens,64.28,35.60
    >>完成杀戮|cRXP_ENEMY_Zhevras|r。掠夺它们|cRXX_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label FlyToXroads1
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>飞向十字路口
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 5041 >>交任务: |cRXP_FRIENDLY_十字路口的补给品|r
    .turnin 872 >>交任务: |cRXP_FRIENDLY_野猪人的头目|r
    .goto The Barrens,51.50,30.87
    .turnin 845 >>交任务: |cRXP_FRIENDLY_斑马的威胁|r
    .accept 903 >>接任务: |cRXP_WARN_草原上的徘徊者|r
    .goto The Barrens,52.23,31.00
    .target Sergra Darkthorn
    .target Thork
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step
    #completewith RegtharDeathgate1
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 850 >>接任务: |cRXP_LOOT_科卡尔首领|r
    .accept 855 >>接任务: |cRXP_LOOT_半人马护腕|r
    .target Regthar Deathgate
step
    #completewith Leaders
    >>杀死|cRXP_ENEMY_Kolkar牧马人|r和|cRXD_ENEMY_ Kolkar风暴者|r。掠夺他们的|cRXP_Loot_Bracers|r
    >>|cRXP_WARN_现在不必完成此任务|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith next
    >>在被遗忘的水池周围收集|cRXP_LOOT_Laden蘑菇|r
    >>|cRXP_WARN_现在不必完成此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>潜入水下至|cRXP_PICK_气泡裂缝|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    .goto The Barrens,42.82,23.52
    >>杀死|cRXP_ENEMY_Barak Kodobane|r。掠夺他的|cRXX_Loot_Head|r
    >>|cRXP_WARN_小心！他的近战命中造成大量伤害，并受到|r|cRXP_ENEMY_Kolkar牧马人|r|cRXP_WARN_的保护。他们可以网住你，并从远处向你射击|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .accept 851 >>接任务: |cRXP_WARN_狂热的维罗戈|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label Leaders
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .accept 851 >>接任务: |cRXP_WARN_狂热的维罗戈|r
    .target Regthar Deathgate
step
    #completewith next
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    >>|cRXP_WARN_现在不必完成此任务|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    .goto The Barrens,41.62,23.42,50,0
    .goto The Barrens,41.30,24.31,50,0
    .goto The Barrens,40.52,22.88,50,0
    .goto The Barrens,41.00,21.19,50,0
    .goto The Barrens,40.32,20.69,50,0
    .goto The Barrens,41.62,23.42
    >>杀死|cRXP_ENEMY_Savannah Prowlers |r。掠夺他们的|cRXD_Loot_爪|r和|cRXX_Loot_獠牙|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    .goto The Barrens,41.51,19.09,60,0
    .goto The Barrens,40.82,18.23,60,0
    .goto The Barrens,40.95,16.80,60,0
    .goto The Barrens,41.23,15.79,60,0
    .goto The Barrens,41.21,14.75,60,0
    .goto The Barrens,41.84,14.81
    >>杀死|cRXP_ENEMY_Witching Harpies|r和|cRXX_ENEMY_ Witching Roguefeatures|r。掠夺它们的|cRXD_Loot_Talons|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step
    #completewith Samophlange
    +|cRXP_WARN_小心该区域中的|r|cRXP_ENEMY_Sunscale镰刀爪|r|cRXP_WARN_in。他们达到18级，可以|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外发动2次攻击）|r
step
    #sticky
    #completewith Samophlange
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩·凝血|r
	.vendor	>>供应商垃圾和维修
    .target Vrang Wildgore
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>单击|cRXP_PICK_Control控制台|r
    .turnin 894 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .accept 900 >>接任务: |cRXP_LOOT_什么什么平衡器|r
step
    .goto The Barrens,52.33,11.57
    >>单击|cRXP_PICK_Valve|r
    >>|cRXP_WARN_小心！关闭阀门后，两个暴民将产生|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>单击|cRXP_PICK_Valve|r
    >>|cRXP_WARN_关闭阀门后会有一个暴民产生|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>单击|cRXP_PICK_Valve|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>单击|cRXP_PICK_Control控制台|r
    .turnin 900 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .accept 901 >>接任务: |cRXP_LOOT_什么什么平衡器|r
step
    .goto The Barrens,52.84,10.40
    >>杀死建筑物中的|cRXP_ENEMY_Tinkerer Sniggles|r。抢走他的|cRXP_Loot_COnsoe密钥|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto The Barrens,52.40,11.65
    >>单击|cRXP_PICK_Control控制台|r
    .turnin 901 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .accept 902 >>接任务: |cRXP_LOOT_什么什么平衡器|r
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 5211 >>训练你的职业技能
    .target Loganaar
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 1430 >>训练你的职业技能
    .target Loganaar
    .xp <18,1
step
    #completewith next
    .hs >>赫斯到棘轮
    .use 6948
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维尔雷|r
    >>|cRXP_BUY_从他那里购买|r|T133918:0|t[Longjaw Mud Snappers]|cRXP_Buy_|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_它们非常便宜，想买多少就买多少|r
    .vendor >>供应商垃圾箱
    .collect 4592,40,896,1 --Longjaw Mud Snapper (40)
    .collect 1205,40,896,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (40)
    .target Innkeeper Wiley
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 902 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .accept 3921 >>接任务: |cRXP_WARN_维妮·布特巴克|r
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .target Sputtervalve
step
    #completewith Crossroadsturnins2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>飞向十字路口
    .target Bragok
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r, Tonga, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_加兹罗格|r
    .turnin 867 >>交任务: |cRXP_FRIENDLY_鹰身强盗|r
    .accept 875 >>接任务: |cRXP_WARN_鹰身人首领|r
    .goto The Barrens,51.62,30.90
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_WARN_死水绿洲|r
    .goto The Barrens,52.26,31.93
    .turnin 903 >>交任务: |cRXP_FRIENDLY_草原上的徘徊者|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .goto The Barrens,52.24,31.01
    .turnin 869 >>交任务: |cRXP_FRIENDLY_偷钱的迅猛龙|r
    .accept 3281 >>接任务: |cRXP_LOOT_被偷走的银币|r
    .goto The Barrens,51.93,30.32
    .target Darsok Swiftdagger
    .target Tonga Runetotem
    .target Sergra Darkthorn
    .target Gazrog
    .isQuestComplete 869
step
    #label Crossroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r, |cRXP_FRIENDLY_达索克·快刀|r, Tonga, |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 867 >>交任务: |cRXP_FRIENDLY_鹰身强盗|r
    .accept 875 >>接任务: |cRXP_WARN_鹰身人首领|r
    .goto The Barrens,51.62,30.90
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_WARN_死水绿洲|r
    .goto The Barrens,52.26,31.93
    .turnin 903 >>交任务: |cRXP_FRIENDLY_草原上的徘徊者|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .goto The Barrens,52.24,31.01
    .target Darsok Swiftdagger
    .target Tonga Runetotem
    .target Sergra Darkthorn
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里购买|r|T134410:0|t[中等测验]|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,1800,896,1 --Sharp Arrow (1800)
    .target Uthrok
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
step
    #completewith CatsEye
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
step << !Tauren !Undead
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Gryshka|r交谈
    .turnin 6384 >>交任务: |cRXP_FRIENDLY_飞往奥格瑞玛|r
    .accept 6385 >>接任务: |cRXP_WARN_双足飞龙管理员多拉斯|r
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r
    .accept 6386 >>接任务: |cRXP_WARN_返回十字路口|r
    .target Doras
    .isOnQuest 6385
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8019 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 913 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <18,1
step
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>接任务: |cRXP_WARN_石爪之灵|r
    .target Zor Lonetree
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .train 6480 >>列车|T136058:0|t[开锁]
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .accept 2379 >>接任务: |cRXP_LOOT_赞杜沙|r
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟祖克|r
    .turnin 1963 >>交任务: |cRXP_FRIENDLY_碎手氏族|r
    .accept 1858 >>接任务: |cRXP_WARN_碎手氏族|r
    .target Therzok
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞杜沙|r
    .turnin 2379 >>交任务: |cRXP_FRIENDLY_赞杜沙|r
    .accept 2382 >>接任务: |cRXP_LOOT_棘齿城的维尼克斯|r
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #completewith next
    .goto Orgrimmar,42.10,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_交谈。从他那里买一个|r|T134065:0|t[盗贼工具]|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.52
    >>|cRXP_WARN_Use|r|T136058:0|t[拾取锁定]|cRXP_WARN_to open |r|T133626:0|t[Tazan's Satchel]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟祖克|r
    .turnin 1858 >>交任务: |cRXP_FRIENDLY_碎手氏族|r
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,53.99,68.05
    >>|cRXP_WARN_Use|r|T133644:0|t[拾取口袋]|cRXP_WARN_on|r|cRXP_ENEMY_Gamon|r|cRXP_WARN_in the Inn。用他的钥匙打开|r|T133626:0|t[Tazan's Satchel]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟祖克|r
    .turnin 1858 >>交任务: |cRXP_FRIENDLY_碎手氏族|r
    .target Therzok
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
    .train 1455 >>训练你的职业技能
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
    .train 1014 >>训练你的职业技能
    .target Mirket
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
    .collect 16316,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 285 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 8198 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
    .train 13795 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
    .train 2643 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
    .train 24557 >>训练你的宠物法术
    .target Xao'tsu
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 227 >>火车杆
    .target Hanashi
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 8102 >>训练你的职业技能
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 970 >>训练你的职业技能
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
    .train 2120 >>训练你的职业技能
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
    .train 3140 >>训练你的职业技能
    .target Pephredo
    .xp <18,1
step
    #completewith next
    .skill firstaid,40 >>创建|T133685:0|t[亚麻绷带]直到你的技能达到40或更高
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Arnok|r交谈
    .train 3276 >>火车|T133688:0|t[粗布绷带]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >>创建|T133688:0|t[粗布绷带]直到你的技能达到50或更高
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Arnok|r交谈
    .train 3274 >>列车乘务员急救
    .target Arnok
    .skill firstaid,<1,1
step
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .zoneskip The Barrens
    .isOnQuest 896
step
    #label CatsEye
    .goto The Barrens,63.55,4.92,100,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43
    >>杀死|cRXP_ENEMY_Venture Co.执法者|r和|cRXX_ENEMY_Venture Co.监管者|r。掠夺他们|cRXD_Loot_Cats Eye Emerald|r
    >>|cRXP_WARN_避免进入矿井。暴徒很容易被双重逮捕，几乎没有逃跑的空间|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    .goto The Barrens,63.55,4.92,100,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43
    >>杀死|cRXP_ENEMY_Venture Co.的监督者|r。掠夺他们的|T132794:0|t[|cRXP-Loot_油瓶|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #completewith Wenikee
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #label Wenikee
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维妮·布特巴克|r
    .turnin 3921 >>交任务: |cRXP_FRIENDLY_维妮·布特巴克|r
    .accept 3922 >>接任务: |cRXP_WARN_高强度齿轮|r
    .target Wenikee Boltbucket
step
    #sticky
    #completewith Slugs
    >>从污泥箱周围的地面上掠夺|cRXP_PICK_Tool Buckets|r。
    .complete 3922,1 --Nugget Slugs (15)
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与污泥箱中的|r|cRXP_FRIENDLY_Wizzlecrank碎纸机|r对话
    .accept 858 >>接任务: |cRXP_LOOT_打火钥匙|r
    .target Wizzlecrank's Shredder
step
    #completewith next
    +|cRXP_WARN_如果|r|cRXP_ENEMY_Foreman Grills|r|cRXP_WARN_or|r| cRXP__ENEMY_Sludge Beast|r|C RXP_WARN_i启动，请小心。他们是19级稀有怪物|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>杀死|cRXP_ENEMY_Supervisor Lugwizzle|r。抢走他的|cRXP-Loot_Key|r。他在平台上来回巡逻
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Wizzlecrank的碎纸机交谈|r
    >>|cRXP_WARN_这将开始护送。确保你完全健康|r
    .turnin 858 >>交任务: |cRXP_FRIENDLY_打火钥匙|r
    .accept 863 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
    .target Wizzlecrank's Shredder
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_当碎纸机移动到较高的地面上时，两个|r|cRXP_ENEMY_Venture Co.雇佣军|r|cRXP_WARN_将产生。杀死他们，然后在最后等待他的RP事件|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
step
#loop
	.line The Barrens,55.50,7.98,55.60,8.85,56.04,9.79,56.68,8.82,57.17,9.08,57.61,8.41,57.31,7.20,56.72,6.92,56.17,6.80,55.69,6.94
	.goto The Barrens,55.50,7.98,25,0
	.goto The Barrens,55.60,8.85,25,0
	.goto The Barrens,56.04,9.79,25,0
	.goto The Barrens,56.68,8.82,25,0
	.goto The Barrens,57.17,9.08,25,0
	.goto The Barrens,57.61,8.41,25,0
	.goto The Barrens,57.31,7.20,25,0
	.goto The Barrens,56.72,6.92,25,0
	.goto The Barrens,56.17,6.80,25,0
	.goto The Barrens,55.69,6.94,25,0
    >>从污泥箱周围的地面上掠夺|cRXP_PICK_Tool Buckets|r。
    .complete 3922,1 --Nugget Slugs (15)
step
	#completewith NuggetSlugsTurnIn
	+|cRXP_WARN_如果您有超过15个|cRXP_OOT_Nugget Slugs|r|cRXP-WARN_，请拆分任何额外的堆栈（按住shift键并单击），然后删除它们|r
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,55.80,17.03
    .use 10327 >>使用|T134227:0|t[埃切亚克之角]召唤|cRXP_ENEMY_埃切亚克|r
    >>杀死他并掠夺他的|cRXP_loot_Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
step
    #label NuggetSlugsTurnIn
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维妮·布特巴克|r
    .turnin 3922 >>交任务: |cRXP_FRIENDLY_高强度齿轮|r
    .accept 3923 >>接任务: |cRXP_WARN_雷里·格里斯高布|r
    .target Wenikee Boltbucket
step
    .goto The Barrens,47.81,14.18,50,0
    .goto The Barrens,45.78,14.74,50,0
    .goto The Barrens,44.60,15.04,50,0
    .goto The Barrens,47.81,14.18
    >>完成杀死|cRXP_ENEMY_Raptors|r。掠夺它们的|cRXX_Loot_Heads|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r    
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
#loop
	.line The Barrens,40.28,15.49,39.50,14.68,39.47,13.24,38.94,12.80,38.18,12.56,37.96,13.52,38.62,13.95,38.18,14.62,38.14,15.59,37.29,15.68,37.24,16.26,37.67,16.34,38.35,17.08,38.83,17.71,39.37,17.21,39.87,16.66,40.15,15.98
	.goto The Barrens,40.28,15.49,25,0
	.goto The Barrens,39.50,14.68,25,0
	.goto The Barrens,39.47,13.24,25,0
	.goto The Barrens,38.94,12.80,25,0
	.goto The Barrens,38.18,12.56,25,0
	.goto The Barrens,37.96,13.52,25,0
	.goto The Barrens,38.62,13.95,25,0
	.goto The Barrens,38.18,14.62,25,0
	.goto The Barrens,38.14,15.59,25,0
	.goto The Barrens,37.29,15.68,25,0
	.goto The Barrens,37.24,16.26,25,0
	.goto The Barrens,37.67,16.34,25,0
	.goto The Barrens,38.35,17.08,25,0
	.goto The Barrens,38.83,17.71,25,0
	.goto The Barrens,39.37,17.21,25,0
	.goto The Barrens,39.87,16.66,25,0
	.goto The Barrens,40.15,15.98,25,0
    >>杀死|cRXP_ENEMY_Witchwing Slayers|r。掠夺他们的|cRXP_Loot_Rings
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Witchwing Slayers|r|cRXP_WARN_can execute。保持20%以上的健康|r
    >>|cRXP_WARN_注意|r|cRXP_ENEMY_巫师伏击者|r|cRXP_WARN_。他们在该地区潜行巡逻|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step
    #completewith FoodandWater1
    .hs >>十字路口之心
    .use 6948
    .cooldown item,6948,>0
    .subzoneskip 380
step
    #completewith FoodandWater1
    .goto The Barrens,52.09,30.43,120 >>前往十字路口。您也可以升级直到您的|T134414:0|t[炉石]恢复
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #completewith next
    +|cRXP_WARN_确保您的|r|T132794:0|t[|cRXP_OOT_Flask of Oil|r]未售出！
    .itemcount 814,5
    .dungeon DM
step
    #label FoodandWater1
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
step << !Tauren !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r, |cRXP_FRIENDLY_扎尔夫|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 869 >>交任务: |cRXP_FRIENDLY_偷钱的迅猛龙|r
    .accept 3281 >>接任务: |cRXP_LOOT_被偷走的银币|r
    .goto The Barrens,51.93,30.32
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
    .goto The Barrens,52.62,29.84
    .turnin 881 >>交任务: |cRXP_FRIENDLY_埃其亚基|r
    .accept 905 >>接任务: |cRXP_WARN_狂暴的镰爪龙|r
    .goto The Barrens,52.23,31.00
    .turnin 875 >>交任务: |cRXP_FRIENDLY_鹰身人首领|r
    .accept 876 >>接任务: |cRXP_WARN_塞瑞娜·血羽|r
    .goto The Barrens,51.62,30.90
    .target Gazrog
    .target Zargh
    .target Sergra Darkthorn
    .target Darsok Swiftdagger
    .isQuestComplete 869
    .isOnQuest 6386
step << !Tauren !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
    .goto The Barrens,52.62,29.84
    .turnin 881 >>交任务: |cRXP_FRIENDLY_埃其亚基|r
    .accept 905 >>接任务: |cRXP_WARN_狂暴的镰爪龙|r
    .goto The Barrens,52.23,31.00
    .turnin 875 >>交任务: |cRXP_FRIENDLY_鹰身人首领|r
    .accept 876 >>接任务: |cRXP_WARN_塞瑞娜·血羽|r
    .goto The Barrens,51.62,30.90
    .target Zargh
    .target Sergra Darkthorn
    .target Darsok Swiftdagger
    .isOnQuest 6386
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 869 >>交任务: |cRXP_FRIENDLY_偷钱的迅猛龙|r
    .accept 3281 >>接任务: |cRXP_LOOT_被偷走的银币|r
    .goto The Barrens,51.93,30.32
    .turnin 881 >>交任务: |cRXP_FRIENDLY_埃其亚基|r
    .accept 905 >>接任务: |cRXP_WARN_狂暴的镰爪龙|r
    .goto The Barrens,52.23,31.00
    .turnin 875 >>交任务: |cRXP_FRIENDLY_鹰身人首领|r
    .accept 876 >>接任务: |cRXP_WARN_塞瑞娜·血羽|r
    .goto The Barrens,51.62,30.90
    .target Gazrog
    .target Sergra Darkthorn
    .target Darsok Swiftdagger
    .isQuestComplete 869
step
    #label EcheyakeeTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 881 >>交任务: |cRXP_FRIENDLY_埃其亚基|r
    .accept 905 >>接任务: |cRXP_WARN_狂暴的镰爪龙|r
    .goto The Barrens,52.23,31.00
    .turnin 875 >>交任务: |cRXP_FRIENDLY_鹰身人首领|r
    .accept 876 >>接任务: |cRXP_WARN_塞瑞娜·血羽|r
    .goto The Barrens,51.62,30.90
    .target Sergra Darkthorn
    .target Darsok Swiftdagger
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith TheEscapeTurnIn
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Ratchet >>飞到棘轮
    .target Devrak
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>交任务: |cRXP_FRIENDLY_棘齿城的维尼克斯|r
    .accept 2381 >>接任务: |cRXP_WARN_抢劫海盗|r
    .target Wrenix the Wretched
step << Rogue
    .goto The Barrens,63.12,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尼克斯的机械设备|r
    >>|cRXP_WARN_Obtain an|r|T134059:0|t[E.C.A.C.]|cRXP_WARN_and A|r|T134065:0|t[盗贼工具]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 863 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .goto The Barrens,62.98,37.22
    .turnin 896 >>交任务: |cRXP_FRIENDLY_矿工的宝贝|r
    .goto The Barrens,63.35,38.45
    .target Sputtervalve
    .target Wharfmaster Dizzywig
    .isQuestComplete 896
step
    #label TheEscapeTurnIn
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 863 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .target Sputtervalve
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 865 >>接任务: |cRXP_LOOT_迅猛龙角|r
    .accept 1069 >>接任务: |cRXP_WARN_深苔蜘蛛的卵|r
    .target Sputtervalve
    .target Mebok Mizzyrix
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维尔雷|r
    >>|cRXP_BUY_从他那里购买|r|T133918:0|t[Longjaw Mud Snappers]|cRXP_Buy_|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_它们非常便宜，想买多少就买多少|r
    .vendor >>供应商垃圾箱
    .collect 4592,40,888,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .target Innkeeper Wiley
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_跳上船，下到二楼，将你的锁调平至至少70|r
step << Rogue
    .goto The Barrens,64.95,45.44
    >>一旦你的开锁完成70，就到船的底层打开|cRXP_PICK_南海宝石|r
    >>|cRXP_WARN_使用|r|T134059:0|t[E.C.A.C.]|cRXP_WARN_on|r|cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    .goto The Barrens,63.58,49.25
    >>将|cRXP_PICK_Crate|r洗劫一空
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >>将|cRXP_PICK_Crate|r洗劫一空
    .complete 888,1 --Shipment of Boots (1)
step
    #completewith TestSeeds
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>杀死你看到的任何|cRXP_ENEMY_Sunscale Scythefaw|r。掠夺它们的|cRXP_Loot_Horns|r和|cRXX_Loot_Features|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r    
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>偷走|cRXP_PICK_被盗的白银|r
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>在停滞的绿洲周围收集|cRXP_OOT_Laden蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>在湖心水下潜水，然后单击|cRXP_PICK_Bubble Fissure|r
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .goto The Barrens,52.95,41.75,0
    >>杀死|cRXP_ENEMY_Verog|r。掠夺他的|cRXX_Loot_Head|r
    >>|cRXP_WARN_每当一个|r|cRXP_ENEMY_Centaur|r|cRXP_WARN_i被杀死时，他都有机会产卵|r
    .complete 851,1 --Verog's Head (1)
    .mob Verog the Dervish
    .isOnQuest 851
step
    #loop
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    .goto The Barrens,55.80,45.78,50,0
    >>在绿洲周围升级|cRXP_ENEMY_Centaurs|r。掠夺他们的|cRXP_Loot_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    #loop
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    .goto The Barrens,55.80,45.78,50,0
    >>在绿洲周围升级|cRXP_ENEMY_Centaurs|r。一旦|cRXP_ENEMY_Verog|r产卵，杀死他并掠夺他的|cRXP_loot_Head|r
    >>|cRXP_ENEMY_每次杀死一个|r|cRXP_ENEMY_Centaur|r|cRXP_WARN_i时，Verog|r|rRXP_WARN_都有机会产卵|r
    .complete 851,1 --Verog's Head (1)
    .mob Verog the Dervish
step
    #loop
    .goto The Barrens,55.72,42.14,30,0
    .goto The Barrens,55.49,41.75,30,0
    .goto The Barrens,55.09,41.58,30,0
    .goto The Barrens,55.03,42.24,30,0
    .goto The Barrens,55.27,43.17,30,0
    .goto The Barrens,55.78,43.47,30,0
    .goto The Barrens,56.15,43.28,30,0
    .goto The Barrens,56.08,42.58,30,0
    .goto The Barrens,55.72,42.14,30,0
    >>在停滞的绿洲周围收集|cRXP_OOT_Laden蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LizardHorn
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >>点击蓝色猛禽巢穴。杀死更多|cRXP_ENEMY_如果你没有|T132914:0|t[太阳鳞片羽毛]
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r  
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>点击红色猛禽巢穴。杀死更多|cRXP_ENEMY_如果你没有|T132914:0|t[太阳鳞片羽毛]
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r  
    .complete 905,3 --Visit Red Raptor Nest (1)
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>点击黄色猛禽巢穴。杀死更多|cRXP_ENEMY_如果你没有|T132914:0|t[太阳鳞片羽毛]
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r  
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    .goto The Barrens,57.3,53.7
    >>完成杀戮|cRXP_ENEMY_Sunscale镰刀爪|r。为它们的角掠夺它们
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik's Wife|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
step
    #label LizardHorn
    #completewith SetCampTaurajoHS
    >>杀死|cRXP_ENEMY_Stormstouts|r。掠夺它们以获得|cRXP_Loot_Horn|r。现在不必完成此操作
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    .goto The Barrens,45.23,58.41,120 >>Travel to Camp Taurajo
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
    .home >>将您的炉石设置为陶拉霍营地
    .target Innkeeper Byula
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
    .accept 878 >>接任务: |cRXP_LOOT_野猪人的内战|r
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>获得Taurajo营地飞行路线 << !Tauren
    .fly Crossroads >>飞向十字路口
    .target Omusa Thunderhorn
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_曼科里克|r, Tonga, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_加兹罗格|r
    .turnin 4921 >>交任务: |cRXP_FRIENDLY_在战斗中失踪|r
    .goto The Barrens,52.00,31.60
    .turnin 877 >>交任务: |cRXP_FRIENDLY_死水绿洲|r
    .accept 880 >>接任务: |cRXP_LOOT_变异的生物|r
    .goto The Barrens,52.26,31.93
    .turnin 905 >>交任务: |cRXP_FRIENDLY_狂暴的镰爪龙|r
    .accept 3261 >>接任务: |cRXP_LOOT_乔恩·星眼|r
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>交任务: |cRXP_FRIENDLY_被偷走的银币|r
    .goto The Barrens,51.93,30.32
    .target Mankrika
    .target Tonga Runetotem
    .target Sergra Darkthorn
    .target Gazrog
step
    .destroy 5165 >>摧毁: |cRXP_ENEMY_赤鳞迅猛龙的羽毛|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 851 >>交任务: |cRXP_FRIENDLY_狂热的维罗戈|r
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestComplete 851
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith next
    .goto The Barrens,35.26,27.88,100 >>前往: |cRXP_PICK_石爪山脉|r
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r, |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 1061 >>交任务: |cRXP_FRIENDLY_石爪之灵|r
    .accept 1062 >>接任务: |cRXP_LOOT_地精侵略者|r
    .goto The Barrens,35.26,27.88
    .accept 6548 >>接任务: |cRXP_LOOT_为我的村庄复仇|r
    .goto The Barrens,35.19,27.79
    .target Seereth Stonebreak
    .target Makaba Flathoof

]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 19-23 Stonetalon/Barrens/Ashenvale
#version 1
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 1-20
#next 23-25 Hillsbrad

step
    #optional
    #completewith next
    >>放弃向卡德拉克报告以避免任务日志问题。你稍后再拿
    .abandon 6541 >>向Kadrak提交放弃报告
    .isOnQuest 6541
step
#loop
	.line Stonetalon Mountains,80.62,89.99,79.79,88.75,81.19,87.56,81.70,86.44,82.26,86.10,82.55,85.22,83.64,85.02,84.20,85.20,83.80,86.38,83.25,87.23,82.33,89.73,82.33,90.43,81.34,90.78
	.goto Stonetalon Mountains,80.62,89.99,25,0
	.goto Stonetalon Mountains,79.79,88.75,25,0
	.goto Stonetalon Mountains,81.19,87.56,25,0
	.goto Stonetalon Mountains,81.70,86.44,25,0
	.goto Stonetalon Mountains,82.26,86.10,25,0
	.goto Stonetalon Mountains,82.55,85.22,25,0
	.goto Stonetalon Mountains,83.64,85.02,25,0
	.goto Stonetalon Mountains,84.20,85.20,25,0
	.goto Stonetalon Mountains,83.80,86.38,25,0
	.goto Stonetalon Mountains,83.25,87.23,25,0
	.goto Stonetalon Mountains,82.33,89.73,25,0
	.goto Stonetalon Mountains,82.33,90.43,25,0
	.goto Stonetalon Mountains,81.34,90.78,25,0
    >>杀死该区域的|cRXP_ENEMY_Grimtotam痞子|r和|cRXX_ENEMY_grimtotam雇佣军|r
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob Grimtotem Ruffian
    .mob Grimtotem Mercenary
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6548 >>交任务: |cRXP_FRIENDLY_为我的村庄复仇|r
    .accept 6629 >>接任务: |cRXP_WARN_杀死格鲁迪格·暗云|r
    .target Makaba Flathoof
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>沿着小路往篝火前走
step
    .goto Stonetalon Mountains,73.65,86.13
    >>杀死|cRXP_ENEMY_Grundig Darkcloud|r和|cRXX_ENEMY_Grimtomem Brutes|r
    >>|cRXP_WARN_在开始内部任务之前，请确保您杀死所有六个|r|cRXP_ENEMY_Grimtotam Brutes|r|cRXP_WARN_b|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob Grundig Darkcloud
    .mob Grimtotem Brute
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaya|r
    .accept 6523 >>接任务: |cRXP_LOOT_保护卡雅|r
    .target Kaya Flathoof
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>护送|cRXP_FRIENDLY_Kaya|r并靠近她
    >>|cRXP_WARN_小心！当你到达Aparaje营地的篝火时，三个|r|cRXP_ENEMY_Grimtoms|r|cRXP_WARN_将产卵|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛吉拉|r
    .accept 6461 >>接任务: |cRXP_LOOT_盗窃的蜘蛛|r
    .target Xen'Zilla
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,68.59,88.34,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    >>杀死你看到的每一个|cRXP_ENEMY_Deepmoss Creeper|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,49.38,61.68,50 >>前往太阳岩疗养院
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>沿着左边的小路跑
    .group
step
    #label InDeepTrouble
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩罗加尔|r
    .accept 6421 >>接任务: |cRXP_WARN_滚岩峡谷|r
    .target Mor'Rogal
    .group
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板杰卡|r
    >>|cRXP_WARN_不要设置炉石！|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Jayka
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基达|r
    .vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_如果它们用完了|r << !Warrior
    .vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134413:0|t[生命根]|cRXP-Buy_如果它们用完了|r << Warrior
    .target Jeeda
step
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔姆|r
    .fp Sun Rock Retreat >>获取Sun Rock Retreat飞行路线
    .target Tharm
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >>前往Windshear Crag
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
    .turnin 1483 >>交任务: |cRXP_FRIENDLY_菲兹克斯|r
    .accept 1093 >>接任务: |cRXP_LOOT_超级收割机6000|r
    .target Ziz Fizziks
step
    #completewith next
    >>杀死|cRXP_ENEMY_Deepmoss毒液发射器|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>在树旁偷走|cRXP_PICK_蜘蛛蛋|r
    >>|cRXP_WARN_小心！|r|cRXP_ENEMY_Deepmoth孵化器|r|cRXP_WARN_有机会召唤出22级|r| cRXP__ENEMY_Deemmoth矩阵|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
#loop
	.line Stonetalon Mountains,59.25,61.55,60.37,60.10,61.34,59.15,61.15,57.85,61.41,56.77,62.21,58.55,63.12,60.02,64.69,60.03,62.76,61.69,62.50,62.92,62.48,64.15,61.85,66.07,60.71,66.12,60.96,63.99,60.25,63.21
	.goto Stonetalon Mountains,59.25,61.55,25,0
	.goto Stonetalon Mountains,60.37,60.10,25,0
	.goto Stonetalon Mountains,61.34,59.15,25,0
	.goto Stonetalon Mountains,61.15,57.85,25,0
	.goto Stonetalon Mountains,61.41,56.77,25,0
	.goto Stonetalon Mountains,62.21,58.55,25,0
	.goto Stonetalon Mountains,63.12,60.02,25,0
	.goto Stonetalon Mountains,64.69,60.03,25,0
	.goto Stonetalon Mountains,62.76,61.69,25,0
	.goto Stonetalon Mountains,62.50,62.92,25,0
	.goto Stonetalon Mountains,62.48,64.15,25,0
	.goto Stonetalon Mountains,61.85,66.07,25,0
	.goto Stonetalon Mountains,60.71,66.12,25,0
	.goto Stonetalon Mountains,60.96,63.99,25,0
	.goto Stonetalon Mountains,60.25,63.21,25,0
    >>杀死|cRXP_ENEMY_Deepmoss毒液发射器|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Undead Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Undead Warrior
    #completewith BluePrints
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Orc Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。从他那里购买|r|T135423:0|t[战斧]|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <0.9784
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Orc Warrior
    #completewith BluePrints
    +装备|T135423:0|t[战斧]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Tauren Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。从他那里购买|r|T133044:0|t[Moul]|r
    .collect 924,1,899,1 --Collect Maul (1)
    .money <1.0972
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Tauren Warrior
    #completewith BluePrints
    +装备|T133044:0|t[Maul]
    .use 924
    .itemcount 924,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #completewith BluePrints
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。从他那里买一个|r|T135324:0|t[长剑]|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #completewith BluePrints
    +装备|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step
    #completewith next
    >>杀死|cRXP_ENEMY_Venture Co.记录器|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #label BluePrints
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    .goto Stonetalon Mountains,62.8,53.7
    >>杀死|cRXP_ENEMY_Venture Co.的操作员|r。掠夺他们的|cRXX_Loot_Blueprint |r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
#loop
	.line Stonetalon Mountains,61.50,55.12,60.48,55.10,59.80,53.69,59.53,52.52,60.80,51.23,62.06,54.39,62.63,55.35,63.63,54.42,65.42,54.15,66.83,54.92,68.64,54.03,69.86,53.53,70.34,56.41,67.90,56.96,66.25,56.64,65.29,57.14,64.27,57.63
	.goto Stonetalon Mountains,61.50,55.12,25,0
	.goto Stonetalon Mountains,60.48,55.10,25,0
	.goto Stonetalon Mountains,59.80,53.69,25,0
	.goto Stonetalon Mountains,59.53,52.52,25,0
	.goto Stonetalon Mountains,60.80,51.23,25,0
	.goto Stonetalon Mountains,62.06,54.39,25,0
	.goto Stonetalon Mountains,62.63,55.35,25,0
	.goto Stonetalon Mountains,63.63,54.42,25,0
	.goto Stonetalon Mountains,65.42,54.15,25,0
	.goto Stonetalon Mountains,66.83,54.92,25,0
	.goto Stonetalon Mountains,68.64,54.03,25,0
	.goto Stonetalon Mountains,69.86,53.53,25,0
	.goto Stonetalon Mountains,70.34,56.41,25,0
	.goto Stonetalon Mountains,67.90,56.96,25,0
	.goto Stonetalon Mountains,66.25,56.64,25,0
	.goto Stonetalon Mountains,65.29,57.14,25,0
	.goto Stonetalon Mountains,64.27,57.63,25,0
    >>杀死|cRXP_ENEMY_Venture Co.记录器|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
	#completewith next
	+|cRXP_WARN_如果您有超过15个|cRXP_OOT_Deepmoth Eggs |r|cRXP-WARN_，请拆分任何额外的堆栈（按住shift键并单击），然后删除它们|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
    .turnin 1093 >>交任务: |cRXP_FRIENDLY_超级收割机6000|r
    .accept 1094 >>接任务: |cRXP_WARN_新的指示|r
    .target Ziz Fizziks
step
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    .goto Stonetalon Mountains,59.04,73.01
    >>完成击杀|cRXP_ENEMY_Deepmoss爬行器|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 1430 >>训练你的职业技能
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 768 >>训练你的职业技能
    .target Loganaar
    .xp <20,1
step
    #completewith next
    .hs >>Hearth前往陶拉霍营地
    .use 6948
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Byula
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 3261 >>交任务: |cRXP_FRIENDLY_乔恩·星眼|r
    .accept 882 >>接任务: |cRXP_LOOT_伊沙姆哈尔|r
    .target Jorn Skyseer
step
	#completewith LakotaMani
    >>杀死|cRXP_ENEMY_Stormstouts|r。掠夺它们以获得|cRXX_Loot_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>杀死大量|cRXP_ENEMY_Bristleback Quillbars|r。掠夺它们的|cRXP_Loot_TASK|r。保存您获得的|T134128:0|t[|cRXX_Loot_Blood Shard|r]
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label LakotaMani
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34
	>>在该区域周围找到并杀死|cRXP_ENEMY_Lakota'mani|r（Gray Kodo）。以|T132318:0|t[|cRXP_Loot_Hoof of Lakota'mani|r]的名义掠夺他。使用它开始任务
    >>|cRXP_WARN_如果找不到他，请跳过此任务|r
	.collect 5099,1,878 --Collect Hoof of Lakota'Mani
	.accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>杀死|cRXP_ENEMY_Stormstouts|r。掠夺它们以获得|cRXX_Loot_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,50.71,54.60,0
    .goto The Barrens,50.71,54.60,60,0
    .goto The Barrens,50.74,55.33,60,0
    .goto The Barrens,50.73,56.78,60,0
    .goto The Barrens,50.42,57.23,60,0
    .goto The Barrens,50.50,57.65,60,0
    .goto The Barrens,50.87,57.50,60,0
    .goto The Barrens,51.26,57.84,60,0
    .goto The Barrens,51.74,57.69,60,0
    .goto The Barrens,51.79,57.10,60,0
    .goto The Barrens,53.08,54.69,60,0
    .goto The Barrens,53.65,54.27,60,0
    .goto The Barrens,53.63,53.53,60,0
    .goto The Barrens,53.35,52.72,60,0
    .goto The Barrens,53.00,51.83,60,0
    .goto The Barrens,52.62,52.19,60,0
    .goto The Barrens,52.59,52.71,60,0
    .goto The Barrens,52.41,53.07,60,0
    .goto The Barrens,52.32,53.71,60,0
    .goto The Barrens,51.39,54.22,60,0
    >>杀死大量|cRXP_ENEMY_Bristleback Quillbars|r。掠夺它们的|cRXP_Loot_TASK|r。保存您获得的|T134128:0|t[|cRXX_Loot_Blood Shard|r]
    .complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    .goto The Barrens,50.88,52.96
    >>杀死|cRXP_ENEMY_Stormstouts|r。掠夺它们以获得|cRXX_Loot_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    .goto The Barrens,53.98,51.68
    >>完成杀戮|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>杀死湖中及周围的|cRXP_ENEMY_Oasis Snapjaws |r。掠夺它们的|cRXP_OOT_Shell|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #completewith next
    >>杀死任何|cRXP_ENEMY_Zhevra|r。掠夺它以获得|cRXX_Loot_新鲜Zhevra尸体|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    .goto The Barrens,59.87,30.41
    .use 10338 >>使用枯树处的|T134368:0|t[|cRXP_LOOT_Fresh Zhevra Carcass|r]召唤|cRXT_ENEMY_Ishamuhale|r。杀死并掠夺他的|cRXX_LOOT_Fang |r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .goto The Barrens,63.00,36.42,100 >>跑向棘轮
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>交任务: |cRXP_FRIENDLY_抢劫海盗|r
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
    .turnin 888 >>交任务: |cRXP_FRIENDLY_被窃的货物|r
    .target Gazlowe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r, Drohn
    .turnin 1094 >>交任务: |cRXP_FRIENDLY_新的指示|r
    .accept 1095 >>接任务: |cRXP_WARN_新的指示|r
    .goto The Barrens,62.98,37.22
    .turnin 865 >>交任务: |cRXP_FRIENDLY_迅猛龙角|r
    .turnin 1069 >>交任务: |cRXP_FRIENDLY_深苔蜘蛛的卵|r
    .accept 1491 >>接任务: |cRXP_LOOT_智慧饮料|r
    .goto The Barrens,62.37,37.62
    .turnin 821 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
    .accept 822 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
    .goto The Barrens,62.27,38.39
    .target Sputtervalve
    .target Mebok Mizzyrix
    .target Brewmaster Drohn
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r, Drohn
    .turnin 1094 >>交任务: |cRXP_FRIENDLY_新的指示|r
    .accept 1095 >>接任务: |cRXP_WARN_新的指示|r
    .goto The Barrens,62.98,37.22
    .turnin 865 >>交任务: |cRXP_FRIENDLY_迅猛龙角|r
    .turnin 1069 >>交任务: |cRXP_FRIENDLY_深苔蜘蛛的卵|r
    .goto The Barrens,62.37,37.62
    .turnin 821 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
    .accept 822 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
    .goto The Barrens,62.27,38.39
    .target Sputtervalve
    .target Mebok Mizzyrix
    .target Brewmaster Drohn
step << Warrior
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉利克斯|r
    .vendor >>从他那里购买|T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r]（如果有）
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克斯宾德|r
    .vendor >>从他那里购买|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]（如果有）
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维尔雷|r
    .home >>把你的炉石放在棘轮上
    .target Innkeeper Wiley
    .dungeon WC
step << Warrior
    #completewith FlytoXroads
    +装备|T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
step << Rogue/Hunter/Warrior/Shaman/Druid
    #completewith FlytoXroads
    +装备|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .accept 959 >>接任务: |cRXP_WARN_港口的麻烦|r
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>飞向十字路口
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_曼科里克|r, Tonga
    .turnin 899 >>交任务: |cRXP_FRIENDLY_复仇的怒火|r
    .goto The Barrens,51.95,31.58
    .turnin 880 >>交任务: |cRXP_FRIENDLY_变异的生物|r
    .accept 1489 >>接任务: |cRXP_LOOT_哈缪尔·符文图腾|r
    .accept 3301 >>接任务: |cRXP_LOOT_茉拉·符文图腾|r
    .goto The Barrens,52.26,31.93
    .target Tonga Runetotem
    .target Mankrik
step
    .destroy 5085 >>摧毁: |cRXP_ENEMY_刺背野猪人的獠牙|r
    .itemcount 5085,1
step
    #label XroadsHS2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
step << Shaman
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto Orgrimmar,37.96,37.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔恩·火结|r
	.accept 1528 >>接任务: |cRXP_LOOT_水之召唤|r
    .target Searn Firewarder
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 2645 >>训练你的职业技能
    .target Kardris Dreamseeker
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .trainer >>训练你的职业技能
    .accept 1507 >>接任务: |cRXP_WARN_噬魂者|r
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto Orgrimmar,47.05,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡祖尔|r
    .turnin 1507 >>交任务: |cRXP_FRIENDLY_噬魂者|r
    .accept 1508 >>接任务: |cRXP_LOOT_盲眼卡祖尔|r
    .target Cazul
step << Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Katis|r|cRXP_BUY_交谈。从她那里买一个|r|T135139:0|t[Burning Wand]|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto Orgrimmar,37.03,59.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞卡沙|r
    .turnin 1508 >>交任务: |cRXP_FRIENDLY_盲眼卡祖尔|r
    .accept 1509 >>接任务: |cRXP_LOOT_多格兰的消息|r
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >>现在你应该找一个Deadmins的小组
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8052 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 2645 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
	.train 14318 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
	.train 14290 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.33,14.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
	.train 5118 >>训练你的宠物法术
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
	.train 8198 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 845 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
    .train 1943 >>训练你的职业技能
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泽弗洛斯特|r
    .train 1014 >>训练你的职业技能
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泽弗洛斯特|r
    .train 706 >>训练你的职业技能
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
    .train 3140 >>训练你的职业技能
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
    .train 1953 >>训练你的职业技能
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 970 >>训练你的职业技能
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 14914 >>训练你的职业技能
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
step
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto Durotar,50.8,13.8,40 >>上齐柏林塔
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto Stranglethorn Vale,30.51,29.10,40,0
    .goto Stranglethorn Vale,27.09,31.27,40,0
    .goto Stranglethorn Vale,22.90,31.17,60,0
    .goto Stranglethorn Vale,19.06,27.00,60,0
    .goto Stranglethorn Vale,16.33,23.46,60,0
    .goto Stranglethorn Vale,13.49,19.04,60,0
    .goto Westfall,41.08,98.55,60,0
    .goto Westfall,37.10,89.16,40,0
    .goto Westfall,30.01,86.02,200 >>从Grom'Gol直接向西游到Vile Reef，然后向北游到Westfall
    >>|cRXP_WARN_避开小岛。为了安全起见，请按照航路点！|r
    .dungeon DM
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >>前往Westfall灯塔
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞森船长|r
    .accept 104 >>接任务: |cRXP_WARN_海岸上的威胁|r
    .accept 103 >>接任务: |cRXP_WARN_长明的灯塔|r
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞森船长|r
    .turnin 103 >>交任务: |cRXP_FRIENDLY_长明的灯塔|r
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>杀死|cRXP_ENEMY_Old Murk Eye|r。掠夺他的|cRXP_Loot_Scale|r
    >>|cRXP_ENEMY_老鼠眼|r|cRXP_WARN_在龙穴上来回奔跑。如果你在Longshore没有看到它，请等待它在最南部的|cRXP_ENEMY_Murloc|r营地产卵|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞森船长|r
    .turnin 104 >>交任务: |cRXP_FRIENDLY_海岸上的威胁|r
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >>放弃火焰守护者
    .dungeon DM
step
    #label EnterDM
    .goto Eastern Kingdoms,40.92,81.97,8,0
    .goto Eastern Kingdoms,40.92,82.02,8,0
    .goto Eastern Kingdoms,40.89,82.04,8,0
    .goto Eastern Kingdoms,40.96,82.10,8,0
    .goto Eastern Kingdoms,40.92,82.16,15,0
    .goto Eastern Kingdoms,40.82,82.30,15,0
    .goto Eastern Kingdoms,40.77,82.52,15,0
    .goto Eastern Kingdoms,40.74,82.61,15,0
    .goto Eastern Kingdoms,40.63,82.49,15,0
    .goto Eastern Kingdoms,40.50,82.45
    .zone 291 >>进入Deadmines实例门户。区域在
    .dungeon DM
step
    .hs >>在完成Deadmins后向Barrens致敬
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .use 6948
    .dungeon DM
step
    #optional
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维尔雷|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Wiley
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>飞向十字路口
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
	.fly Crossroads >>飞向十字路口
    .zoneskip Orgrimmar,1
    .target Doras
step << Warlock
    #label TurninDogran
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r
    .turnin 1509 >>交任务: |cRXP_FRIENDLY_多格兰的消息|r
    .accept 1510 >>接任务: |cRXP_LOOT_多格兰的消息|r
    .target Gazrog
step << Shaman
    #completewith CallofWater01
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    .fly Ratchet >>飞到棘轮
    .target Doras
    .zoneskip Orgrimmar,1
step << Shaman
    #optional
    #completewith CallofWater01
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Ratchet >>飞到棘轮
    .target Bragok
    .subzoneskip 392,1
    .dungeon DM
step << Shaman
    #label CallofWater01
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
    .turnin 1528 >>交任务: |cRXP_FRIENDLY_水之召唤|r
    .accept 1530 >>接任务: |cRXP_LOOT_水之召唤|r
    .target Islen Waterseer
step << !Warlock !Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Bragok
step << !Shaman
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Devrak
    .subzoneskip 380,1
step
    .goto The Barrens,44.55,59.27
    >>杀死|cRXP_ENEMY_Bristleback Quillbars|r。掠夺它们一个|T134128:0|t[|cRXP_OOT_Blood Shard|r
    .collect 5075 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
    .turnin 878 >>交任务: |cRXP_FRIENDLY_野猪人的内战|r
    .accept 5052 >>接任务: |cRXP_WARN_阿迦玛甘的血岩碎片|r
    .turnin 5052 >>交任务: |cRXP_FRIENDLY_阿迦玛甘的血岩碎片|r
    .target Mangletooth
    .addquestitem 4075,5052
step
    #optional
    #completewith Thunderhawk
    .goto The Barrens,44.55,59.27,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
    +|cRXP_WARN_使用您的|r|T134128:0|t[|cRXP_OOT_Blood Shard|r]|cRXP-WARN_to获取buff。至少保存其中的4个以便以后使用|r
    +|cRXP_WARN_请确保关闭Questie或Leatrix Plus等插件的任何自动完成功能！|r
    .target Mangletooth
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务: |cRXP_FRIENDLY_伊沙姆哈尔|r
    .accept 907 >>接任务: |cRXP_WARN_被激怒的雷霆蜥蜴|r
    .target Jorn Skyseer
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
    .target Jorn Skyseer
    .itemcount 5099,1
step
    .goto The Barrens,44.32,60.84,60,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    .goto The Barrens,44.32,60.84
    >>杀死|cRXP_ENEMY_Thunder Lizards|r。掠夺它们的|cRXX_Loot_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>交任务: |cRXP_FRIENDLY_被激怒的雷霆蜥蜴|r
    .accept 913 >>接任务: |cRXP_WARN_雷鹰的嘶鸣|r
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,43.42,77.41,60>>向南行驶至|cRXP_FRIENDLY_Brine|r
step << Shaman
    #completewith next
    >>杀死一只|cRXP_ENEMY_Thunderhawk|r。掠夺它的|cRXD_Loot_Fwing|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞恩|r
    .turnin 1530 >>交任务: |cRXP_FRIENDLY_水之召唤|r
    .accept 1535 >>接任务: |cRXP_LOOT_水之召唤|r
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >>把你的|T132825:0|t[空的棕色水皮]倒在布林小屋下面的水坑里
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞恩|r
    .turnin 1535 >>交任务: |cRXP_FRIENDLY_水之召唤|r
    .accept 1536 >>接任务: |cRXP_LOOT_水之召唤|r
    .target Brine
step << Shaman
    #completewith ThunderhawkTurnin
    .goto The Barrens,44.85,59.14,200 >>返回Taurajo营地
step
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    .goto The Barrens,44.83,63.12
    >>杀死一只|cRXP_ENEMY_Thunderhawk|r。掠夺它的|cRXD_Loot_Fwing|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
    .accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,45.66,40.34,120 >>前往卢什沃特绿洲
    .isQuestTurnedIn 851
step
    #loop
    .goto The Barrens,45.64,38.16,0
    .goto The Barrens,45.64,38.16,50,0
    .goto The Barrens,45.84,37.86,50,0
    .goto The Barrens,45.78,37.41,50,0
    .goto The Barrens,45.95,37.11,50,0
    .goto The Barrens,45.93,36.91,50,0
    .goto The Barrens,46.14,36.85,50,0
    .goto The Barrens,46.19,36.88,50,0
    .goto The Barrens,46.28,36.86,50,0
    .goto The Barrens,46.46,37.17,50,0
    .goto The Barrens,46.58,37.31,50,0
    .goto The Barrens,46.63,37.93,50,0
    .goto The Barrens,46.75,38.39,50,0
    .goto The Barrens,47.27,38.98,50,0
    .goto The Barrens,47.47,39.27,50,0
    .goto The Barrens,48.20,39.57,50,0
    .goto The Barrens,48.40,39.58,50,0
    .goto The Barrens,48.60,39.51,50,0
    .goto The Barrens,48.54,39.96,50,0
    .goto The Barrens,48.58,40.52,50,0
    .goto The Barrens,48.27,40.82,50,0
    .goto The Barrens,48.06,40.82,50,0
    .goto The Barrens,47.86,41.13,50,0
    .goto The Barrens,47.49,41.33,50,0
    .goto The Barrens,47.34,41.61,50,0
    .goto The Barrens,47.22,41.64,50,0
    .goto The Barrens,46.85,42.05,50,0
    .goto The Barrens,46.56,41.93,50,0
    .goto The Barrens,46.27,41.76,50,0
    .goto The Barrens,46.03,41.15,50,0
    .goto The Barrens,45.86,41.32,50,0
    .goto The Barrens,46.09,40.98,50,0
    .goto The Barrens,46.08,40.68,50,0
    .goto The Barrens,45.71,40.56,50,0
    .goto The Barrens,45.64,38.16,50,0
    >>找到并杀死|cRXP_ENEMY_Hezrul血痕|r，他在湖边巡逻。抢劫他的|cRXP_Loot_Head|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 >>交任务: |cRXP_FRIENDLY_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 4021 >>接任务: |cRXP_LOOT_人马无双！|r
    --.timer 183,Warlord Krom'zar Spawn
    .target Regthar Deathgate
    .isQuestTurnedIn 852
    .group
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto The Barrens,44.48,28.15
    >>一旦克罗姆扎尔出现，杀死他。抢走他掉在地上的|cRXP_PICK_Banner |r
    >>|cRXP_WARN_小心！他是一名强大的精英，由至少两名|r|cRXP_ENEMY_Kolkar|r|cRXP_WARN_mobs防守|r
    >>|cRXP_WARN_它可能需要3分钟才能产卵|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .group 3
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
    .target Regthar Deathgate
    .isQuestComplete 4021
    .group
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
    .group
step
    #optional
    >>如果你现在还没有完成，就放弃半人马座手镯
    .abandon 855 >>Abandon Centaur Bracers
    .isOnQuest 855
step
    .goto The Barrens,39.16,12.16
    >>杀死|cRXP_ENEMY_Serena Bloodflowe|r。为她掠夺她|cRXX_Loot_Head |r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
step
    #completewith ApothecaryPickup
    .hs >>十字路口之心
    .use 6948
    .cooldown item,6948,>0
    .isQuestComplete 876
step
    #completewith next
    .goto The Barrens,52.09,30.43,120 >>前往十字路口。您也可以升级直到您的|T134414:0|t[炉石]恢复
    .cooldown item,6948,<0
    .isQuestComplete 876
step
    #label ApothecaryPickup
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r, |cRXP_FRIENDLY_药剂师赫布瑞姆|r, |cRXP_FRIENDLY_科兰|r
    .turnin 876 >>交任务: |cRXP_FRIENDLY_塞瑞娜·血羽|r
    .accept 1060 >>接任务: |cRXP_LOOT_写给金吉尔的信|r
    .goto The Barrens,51.62,30.90
    .accept 853 >>接任务: |cRXP_WARN_药剂师扎玛|r
    .goto The Barrens,51.44,30.15
    .accept 868 >>接任务: |cRXP_LOOT_蝎卵|r
    .goto The Barrens,51.10,29.60
    .target Darsok Swiftdagger
    .target Apothecary Helbrim
    .target Korran
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_你正在进行一个定时任务，不要害怕。它将在提取后10-15分钟内被翻转|r
    .solo
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_你正在进行一个定时任务，不要害怕。取车后20-30分钟内即可转动|r
    .group
step
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r, |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 1062 >>交任务: |cRXP_FRIENDLY_地精侵略者|r
    .timer 4,Goblin Invaders RP
    .accept 1063 >>接任务: |cRXP_WARN_长者|r
    .accept 1068 >>接任务: |cRXP_WARN_伐木机|r
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>交任务: |cRXP_FRIENDLY_杀死格鲁迪格·暗云|r
    .turnin 6523 >>交任务: |cRXP_FRIENDLY_保护卡雅|r
    .accept 6401 >>接任务: |cRXP_LOOT_卡雅还活着|r
    .goto The Barrens,35.19,27.79
    .target Seereth Stonebreak
    .target Makaba Flathoof
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左边的小路向上走
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >>交任务: |cRXP_FRIENDLY_写给金吉尔的信|r
    .accept 1058 >>接任务: |cRXP_WARN_金吉尔的森林魔法|r
    .target Witch Doctor Jin'Zil
    .group
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯兹格拉|r
    .turnin 1510 >>交任务: |cRXP_FRIENDLY_多格兰的消息|r
    .accept 1511 >>接任务: |cRXP_WARN_肯兹格拉的伤药|r
    .target Ken'zigla
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛吉拉|r
    .turnin 6461 >>交任务: |cRXP_FRIENDLY_盗窃的蜘蛛|r
    .target Xen'Zilla
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >>交任务: |cRXP_FRIENDLY_写给金吉尔的信|r
    .accept 1058 >>接任务: |cRXP_WARN_金吉尔的森林魔法|r
    .target Witch Doctor Jin'Zil
    .solo
step
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳到其中一个笼子上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>|cRXP_WARN_单击此处查看示例|r
    .solo
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >>进入博尔德滑动峡谷，进入北部洞穴
    .group
step
    .goto Stonetalon Mountains,60.16,90.92,30,0
    .goto Stonetalon Mountains,58.44,89.90
    >>攻击|cRXP_PICK_Resolnite水晶|r，并深入洞穴调查该区域
    >>|cRXP_WARN_小心！这些暴徒比他们看起来更强硬，很容易被双重拉住|r|cRXP_ENEMY_Gogger岩石守护者|r|cRXP_WARN_cast|r|T136026:0|t[地球震动]|cRXP-WARN_造成大量伤害！|r
    .complete 6421,1 --Investigate Cave in Boulderslide Ravine
    .complete 6421,2 --Resonity Crystal (x10)
    .isOnQuest 6421
    .group
step
    #completewith next
    .goto Stonetalon Mountains,64.62,93.86,25,0
    .goto Stonetalon Mountains,64.80,95.27,20,0
    .goto Stonetalon Mountains,64.32,95.84,15 >>进入博尔德滑动峡谷的南部洞穴
    .group
step
    .goto Stonetalon Mountains,64.28,96.60
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳过右边的岩石。通过定位你的角色直到看起来像是漂浮的，然后注销并重新登录，来执行注销跳过|r
    .link https://www.youtube.com/watch?v=j_DRDkqWeuE&ab >>|cRXP_WARN_单击此处查看示例|r
    .group
step
    #completewith ElderCroneTurnin
    .goto Thunder Bluff,54.18,27.01,20,0
    .goto Thunder Bluff,50.75,37.07,40 >>乘电梯到雷霆崖
step << Druid
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_彻斯姆|r
    .bankdeposit 5075 >>存放您的|T134128:0|t[血碎片]
    .bankdeposit 5099 >>存入您的|T132938:0|t[挖爪]
    .target Chesmu
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将您的炉石设置为雷霆崖
    .target Innkeeper Pala
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
step
    #label ElderCroneTurnin
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    .turnin 1063 >>交任务: |cRXP_FRIENDLY_长者|r
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    >>|cRXP_WARN_等待RP完成|r
    .accept 1064 >>接任务: |cRXP_LOOT_被遗忘者的援助|r
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r, Nara
    .turnin 1489 >>交任务: |cRXP_FRIENDLY_哈缪尔·符文图腾|r
    .accept 1490 >>接任务: |cRXP_LOOT_纳拉·蛮鬃|r
    .target Arch Druid Hamuul Runetotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r, Nara
    .turnin 1490 >>交任务: |cRXP_FRIENDLY_纳拉·蛮鬃|r
    .accept 914 >>接任务: |cRXP_WARN_尖牙德鲁伊|r
    .target Nara Wildmane
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r, Nara
    .turnin 1490 >>交任务: |cRXP_FRIENDLY_纳拉·蛮鬃|r
    .target Nara Wildmane
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .trainer >>训练你的职业技能
    .accept 27 >>接任务: |cRXP_WARN_必修的课程|r
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 27 >>交任务: |cRXP_FRIENDLY_必修的课程|r
    .accept 28 >>接任务: |cRXP_WARN_湖中试炼|r
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>偷走湖底的|cRXP_PICK_Bauble Container|r以获得|T134125:0|t[Srine Bauble]
    >>|cRXP_WARN_在你到达包布尔正上方之前，不要下水|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >>在雷穆洛斯神殿使用|T134125:0|t[Srine Bauble]
    .complete 30,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔加里|r
    .turnin 28 >>交任务: |cRXP_FRIENDLY_湖中试炼|r
    .accept 30 >>接任务: |cRXP_WARN_海狮试炼|r
    .target Tajarri
step << Druid
    .hs >>火炉到雷霆崖
    .use 6948
    .cooldown item,6948,>0
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑟恩·草风|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Hunter
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >>猎人崛起之旅
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
    .train 5118 >>训练你的职业技能
    .target Urek Thunderhorn
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
    .train 24494 >>训练你的宠物法术
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >>猎人崛起之旅
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
    .train 845 >>训练你的职业技能
    .accept 1823 >>接任务: |cRXP_LOOT_和鲁迦交谈|r
    .target Torm Ragetotem
step << !Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将您的炉石设置为雷霆崖
    .target Innkeeper Pala
step << !Druid
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_彻斯姆|r
    .bankdeposit 5075 >>存放您的|T134128:0|t[血碎片]
    .bankdeposit 868 >>存入您的|T132938:0|t[挖爪]
    .target Chesmu
step << Orc Warrior/Tauren Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 227 >>火车杆
    .train 199 >>Train Two-Handed Maces
    .target Ansekhwa
step << Troll Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 199 >>Train Two-Handed Maces
    .target Ansekhwa
step << Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 227 >>火车杆
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 198 >>火车梅斯
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,38.95,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_交谈。向他购买|r|T135423:0|t[致命飞斧]|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂之旅崛起，进入视野之池
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
    .accept 1065 >>接任务: |cRXP_WARN_塔伦米尔之旅|r
    .accept 962 >>接任务: |cRXP_LOOT_毒蛇花|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .dungeon WC
step
    #label ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
    .accept 1065 >>接任务: |cRXP_WARN_塔伦米尔之旅|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
    .accept 5644 >>接任务: |cRXP_WARN_噬灵瘟疫|r << Undead Priest
    .accept 5642 >>接任务: |cRXP_WARN_暗影守卫|r << Troll Priest
    .trainer >>训练你的职业技能
    .target Miles Welsh
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
    .train 12051 >>训练你的职业技能
    .target Archmage Shymm
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
    .train 2645 >>训练你的职业技能
    .target Tigor Skychaser
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
    .train 8498 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <22,1
step
    #completewith next
    .skill firstaid,80 >>创建|T133688:0|t[粗布绷带]直到你的技能达到80或更高
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
    .train 3277 >>火车|T133684:0|t[羊毛绷带]
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kard|r|cRXP_BUY_交谈。从他那里买一个|r|T135324:0|t[长剑]|r
    .collect 923,1,493,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #completewith KayaLives
    +装备|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Orc Warrior
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Delgo|r|cRXP_BUY_交谈。从他那里购买|r|T135423:0|t[战斧]|r
    .collect 926,1,493,1 --Collect Battle Axe (1)
    .target Delgo Ragetotem
    .money <0.9784
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Orc Warrior
    #completewith KayaLives
    +装备|T135423:0|t[战斧]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Tauren Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Etu|r|cRXP_BUY_交谈。从他那里购买|r|T133044:0|t[Moul]|r
    .collect 924,1,493,1 --Collect Maul (1)
    .money <1.0972
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Tauren Warrior
    #completewith KayaLives
    +装备|T133044:0|t[Maul]
    .use 924
    .itemcount 924,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Troll Warrior/Undead Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Etu|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Undead Warrior
    #completewith KayaLives
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Etu|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #completewith KayaLives
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna|r|cRXP_BUY_交谈。从她那里买一个|r|T135489:0|t[重循环弓]|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Thunderhorn
step << Hunter
    #completewith KayaLives
    +装备重型递归弓
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna交谈|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Thunderhorn
step << Warlock
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >>获得Thunder Bluff飞行路线 << !Tauren
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Tal
    .zoneskip The Barrens
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_步兵劳格玛|r
    .turnin 1511 >>交任务: |cRXP_FRIENDLY_肯兹格拉的伤药|r
    .accept 1515 >>接任务: |cRXP_WARN_多格兰之囚|r
    .target Grunt Logma
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_步兵多格兰|r
    .turnin 1515 >>交任务: |cRXP_FRIENDLY_多格兰之囚|r
    .accept 1512 >>接任务: |cRXP_LOOT_爱的礼物|r
    .target Grunt Dogran
step << !Warlock
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >>获得Thunder Bluff飞行路线 << !Tauren
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Tal
    .zoneskip The Barrens
    .dungeon WC
step
    #sticky
    #completewith EnterWC
    .goto The Barrens,45.40,53.96,80,0
    .goto The Barrens,44.79,51.77,80,0
    .goto The Barrens,43.25,47.98,80,0
    .goto The Barrens,40.92,45.16,80,0
    .goto The Barrens,45.40,53.96
    .subzone 718 >>现在你应该找一个团队去哭泣的洞穴
    >>组装哭泣洞穴小组时升级|cRXP_ENEMY_Quilboars|r
    .dungeon WC
step
    .goto The Barrens,46.15,36.93,100 >>前往哭泣的洞穴
    .isOnQuest 914
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔帕克|r, |cRXP_FRIENDLY_厄布鲁|r
    >>|cRXP_WARN_它们位于哭泣洞穴的洞穴入口上方|r
    .accept 1486 >>接任务: |cRXP_LOOT_变异皮革|r
    .goto Kalimdor,51.91,55.42
    .accept 1487 >>接任务: |cRXP_WARN_清除变异者|r
    .goto Kalimdor,51.92,55.44
    .target Nalpak
    .target Ebru
    .dungeon WC
step
    #completewith EnterWC
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Serpentbloom|r|cRXP_WARN_forEveryone|r
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #completewith EnterWC
    >>杀死你看到的所有|cRXP_ENEMY_Deviate Beast|r。掠夺他们的|cRXP_Loot_Hides|r
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_LOOT_Hides|r|cRXP_WARN_forEveryone|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>杀死|cRXP_ENEMY_Ectoplasm|r。掠夺它们的|cRXP_Loot_Essent|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    .goto Kalimdor,51.90,55.43,30,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15
    >>杀死|cRXP_ENEMY_Mad Magglish|r。为|cRXP-Loot_99年前的港口而掠夺他|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.18
    .zone 279 >>进入WC实例入口。区域在
    .dungeon WC
step
    #completewith GlowingShard
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Serpentbloom|r|cRXP_WARN_forEveryone|r
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #completewith GlowingShard
    >>杀死|cRXP_ENEMY_Ectoplasm|r。掠夺它们的|cRXP_Loot_Essent|r
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_LOOT_Hides|r|cRXP_WARN_forEveryone|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>杀死|cRXP_ENEMY_Deviate Ravagers|r，|cRXD_ENEMY_Vipers|r，| cRXP__ENEMY_Shamblers |r和|cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .complete 1487,2 --Deviate Viper (7)
    .complete 1487,3 --Deviate Shambler (7)
    .complete 1487,4 --Deviate Dreadfang (7)
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>杀死|cRXP_ENEMY_Lord Cobrahn |r，|cRXD_ENEMY_Lady Anacondra |r，| cRXP__ENEMY_LordPythas|r和|cRXP_ENEMY_Lod Serpentis|r。掠夺他们的|cRXP_Loot_Gems|r
    .complete 914,1 --Gem of Cobrahn (1)
    .complete 914,2 --Gem of Anacondra (1)
    .complete 914,3 --Gem of Pythas (1)
    .complete 914,4 --Gem of Serpentis (1)
    .mob Lord Cobrahn
    .mob Lady Anacondra
    .mob Lord Pythas
    .mob Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Disciple of Naralex, |cRXP_FRIENDLY_纳拉雷克斯|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>一旦你到达|cRXP_FRIENDLY_Naralex|r，你将受到两波敌人的攻击，最后是吞噬者|cRXP_ENEMY_Mutanus |r
    >>杀死他并掠夺他以获得|T135229:0|t[|cRXP_loot_发光碎片|r]并使用它开始任务
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >>接任务: |cRXP_WARN_发光的碎片|r
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #completewith DeviateRaptors
    >>杀死|cRXP_ENEMY_Ectoplasm|r。掠夺它们的|cRXP_Loot_Essent|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith next
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #label DeviateRaptors
    >>杀死|cRXP_ENEMY_Deviate Ravagers|r，|cRXD_ENEMY_Vipers|r，| cRXP__ENEMY_Shamblers |r和|cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .complete 1487,2 --Deviate Viper (7)
    .complete 1487,3 --Deviate Shambler (7)
    .complete 1487,4 --Deviate Dreadfang (7)
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1487
    .isOnQuest 1486
    .dungeon WC
 step
    #label DeviateRaptors
    >>杀死|cRXP_ENEMY_Deviate Ravagers|r，|cRXD_ENEMY_Vipers|r，| cRXP__ENEMY_Shamblers |r和|cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .complete 1487,2 --Deviate Viper (7)
    .complete 1487,3 --Deviate Shambler (7)
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1487
    .dungeon WC
step
    #label DeviateRaptors
    >>杀死|cRXP_ENEMY_Deviate Raptors|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
    .dungeon WC
step
    #completewith next
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    >>杀死|cRXP_ENEMY_Ectoplasm|r。掠夺它们的|cRXP_Loot_Essent|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #completewith next
    .hs >>赫斯到棘轮
    .use 6948
    .dungeon WC
step
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervale|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervale
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >>交任务: |cRXP_FRIENDLY_港口的麻烦|r
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .turnin 1491 >>交任务: |cRXP_FRIENDLY_智慧饮料|r
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>飞向十字路口
    .target Bragok
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >>上山旅行
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >>交任务: |cRXP_FRIENDLY_发光的碎片|r
    .accept 3369 >>接任务: |cRXP_WARN_在噩梦中|r
    .target Falla
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla|r
    .accept 3369 >>接任务: |cRXP_WARN_在噩梦中|r
    .target Falla
    .isQuestTurnedIn 6981
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔帕克|r, |cRXP_FRIENDLY_厄布鲁|r
    >>|cRXP_WARN_它们位于哭泣洞穴的洞穴入口上方|r
    .turnin 1486 >>交任务: |cRXP_FRIENDLY_变异皮革|r
    .goto Kalimdor,51.91,55.42
    .turnin 1487 >>交任务: |cRXP_FRIENDLY_清除变异者|r
    .goto Kalimdor,51.92,55.44
    .target Nalpak
    .target Ebru
    .isQuestComplete 1487
    .isQuestComplete 1486
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄布鲁|r
    >>|cRXP_WARN_他位于哭泣洞穴的洞穴入口上方|r
    .turnin 1487 >>交任务: |cRXP_FRIENDLY_清除变异者|r
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|
    >>|cRXP_WARN_他位于哭泣洞穴的洞穴入口上方|r
    .turnin 1486 >>交任务: |cRXP_FRIENDLY_变异皮革|r
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith next
    .goto The Barrens,44.45,59.16,100 >>向南前往Taurajo营地
    .dungeon WC
step
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Omusa Thunderhorn
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>交任务: |cRXP_FRIENDLY_尖牙德鲁伊|r
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
    .turnin 3369 >>交任务: |cRXP_FRIENDLY_在噩梦中|r
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,23.0,21.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 962 >>交任务: |cRXP_FRIENDLY_毒蛇花|r
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将您的炉石设置为雷霆崖
    .target Innkeeper Pala
    .dungeon WC
step << Warlock
    #completewith KayaLives
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Sun Rock Retreat >>飞到太阳岩度假酒店
    .target Omusa Thunderhorn
    .zoneskip Stonetalon Mountains
    .dungeon !WC
step
    #completewith KayaLives
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >>获得Thunder Bluff飞行路线 << !Tauren
    .fly Sun Rock Retreat >>飞到太阳岩度假酒店
    .target Tal
    .zoneskip Thunder Bluff,1
step
    #optional
    .abandon 1486 >>Abandon Deviate Hides
    .isOnQuest 1486
    .dungeon WC
step
    #optional
    .abandon 1487 >>放弃根除偏差
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    .abandon 1491 >>Abandon Smart Drinks
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    .abandon 959 >>放弃码头的麻烦
    .isOnQuest 959
    .dungeon WC
step
    #optional
    .abandon 914 >>弃方首领
    .isOnQuest 914
    .dungeon WC
step
    #optional
    .abandon 962 >>Abandon Serpentbloom
    .isOnQuest 962
    .dungeon WC
step
    #label KayaLives
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
    .turnin 6401 >>交任务: |cRXP_FRIENDLY_卡雅还活着|r
    .target Tammra Windfield
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板杰卡|r
    >>|cRXP_WARN_不要设置炉石！|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Jayka
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基达|r
    .vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_如果它们用完了|r << !Warrior
    .vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134413:0|t[生命根]|cRXP-Buy_如果它们用完了|r << Warrior
    .target Jeeda
step
    #completewith InDeepTrouble2
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>沿着小路向右跑
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏纳曼|r, |cRXP_FRIENDLY_摩罗加尔|r
    .accept 6562 >>接任务: |cRXP_WARN_帮助耶努萨克雷|r
    .accept 6393 >>接任务: |cRXP_LOOT_元素战争|r
    .goto Stonetalon Mountains,47.36,64.25
    .turnin 6421 >>交任务: |cRXP_FRIENDLY_滚岩峡谷|r
    .accept 6481 >>接任务: |cRXP_WARN_土灵的觉醒|r
    .goto Stonetalon Mountains,47.21,64.05
    .target Tsunaman
    .target Mor'Rogal
    .isQuestComplete 6421
    .group
step
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩罗加尔|r
    .accept 6481 >>接任务: |cRXP_WARN_土灵的觉醒|r
    .target Mor'Rogal
    .isQuestTurnedIn 6421
    .group
step
    #label InDeepTrouble2
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏纳曼|r
    .accept 6562 >>接任务: |cRXP_WARN_帮助耶努萨克雷|r
    .accept 6393 >>接任务: |cRXP_LOOT_元素战争|r
    .target Tsunaman
step
    .goto Stonetalon Mountains,59.08,75.70
    >>单击|cRXP_FRIENDLY_Wanted海报|r
    .accept 6284 >>接任务: |cRXP_LOOT_贝瑟莱斯|r
    .group
step
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67
    >>杀死|cRXP_ENEMY_Besseleth|r。为她掠夺她|cRXX_Loot_Fang |r
    >>|cRXP_WARN_在你拉她之前，先把这个区域清理干净。小心，她能给你10秒钟的时间！|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .group 3
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >>进入博尔德滑动峡谷，进入北部洞穴
    .group
    .isOnQuest 6481
step
    .goto Stonetalon Mountains,59.50,90.40,40,0
    .goto Stonetalon Mountains,57.65,89.52
    >>点击|cRXP_PICK_Resolnite Cask|r召唤|cRXP_ENEMY_Goggeroc|r，在他产卵时杀死他
    .complete 6481,1 --Goggeroc slain (1)
    .mob Goggeroc
    .group 2
    .isOnQuest 6481
step
    .goto Stonetalon Mountains,58.24,89.81
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_跳到一个黄色蘑菇上。跳到空中，同时注销和重新登录，进行注销跳跃。如果不成功，请返回太阳岩休养地|r
    .link https://www.youtube.com/watch?v=DGsL3FX9_TE&ab >>|cRXP_WARN_单击此处查看示例|r
    .group
    .isQuestComplete 6481
    --VV Jump logout required for it to work, remove if it doesn't work on new servers
step
    #completewith EarthenAriseTurnin
    .goto Stonetalon Mountains,49.38,61.68,50 >>前往太阳岩疗养院
    .group
    .isQuestComplete 6481
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>沿着左边的小路跑
    .group
    .isQuestComplete 6481
step
    #label EarthenAriseTurnin
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩罗加尔|r
    .turnin 6481 >>交任务: |cRXP_FRIENDLY_土灵的觉醒|r
    .target Mor'Rogal
    .isQuestComplete 6481
    .group
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
	.turnin 6284 >>交任务: |cRXP_FRIENDLY_贝瑟莱斯|r
    .target Maggran Earthbinder
	.isQuestComplete 6284
    .group
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >>前往Windshear Crag
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
    .turnin 1095 >>交任务: |cRXP_FRIENDLY_新的指示|r
    .target Ziz Fizziks
step
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto Stonetalon Mountains,67.18,46.87,50,0
    .goto Stonetalon Mountains,66.53,46.95,50,0
    .goto Stonetalon Mountains,65.72,45.09,50,0
    .goto Stonetalon Mountains,63.73,45.02,50,0
    .goto Stonetalon Mountains,63.72,45.92,50,0
    .goto Stonetalon Mountains,63.43,46.57,50,0
    .goto Stonetalon Mountains,64.43,46.13,50,0
    .goto Stonetalon Mountains,64.72,46.63,50,0
    .goto Stonetalon Mountains,64.82,47.72,50,0
    .goto Stonetalon Mountains,65.11,48.31,50,0
    .goto Stonetalon Mountains,65.98,48.67,50,0
    .goto Stonetalon Mountains,66.24,49.65,50,0
    .goto Stonetalon Mountains,66.65,49.58,50,0
    .goto Stonetalon Mountains,66.88,48.95,50,0
    .goto Stonetalon Mountains,68.41,49.58,50,0
    .goto Stonetalon Mountains,69.45,46.56,50,0
    .goto Stonetalon Mountains,70.22,48.62,50,0
    .goto Stonetalon Mountains,70.95,48.49,50,0
    .goto Stonetalon Mountains,71.41,45.54,50,0
    .goto Stonetalon Mountains,71.25,43.45,50,0
    .goto Stonetalon Mountains,64.82,47.23
    >>杀死|cRXP_ENEMY_XT:9|r。它在河的南侧巡逻
    >>|cRXP_WARN_现在不需要完成此任务|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
step
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto Stonetalon Mountains,67.18,46.87,50,0
    .goto Stonetalon Mountains,66.53,46.95,50,0
    .goto Stonetalon Mountains,65.72,45.09,50,0
    .goto Stonetalon Mountains,63.73,45.02,50,0
    .goto Stonetalon Mountains,63.72,45.92,50,0
    .goto Stonetalon Mountains,63.43,46.57,50,0
    .goto Stonetalon Mountains,64.43,46.13,50,0
    .goto Stonetalon Mountains,64.72,46.63,50,0
    .goto Stonetalon Mountains,64.82,47.72,50,0
    .goto Stonetalon Mountains,65.11,48.31,50,0
    .goto Stonetalon Mountains,65.98,48.67,50,0
    .goto Stonetalon Mountains,66.24,49.65,50,0
    .goto Stonetalon Mountains,66.65,49.58,50,0
    .goto Stonetalon Mountains,66.88,48.95,50,0
    .goto Stonetalon Mountains,68.41,49.58,50,0
    .goto Stonetalon Mountains,69.45,46.56,50,0
    .goto Stonetalon Mountains,70.22,48.62,50,0
    .goto Stonetalon Mountains,70.95,48.49,50,0
    .goto Stonetalon Mountains,71.41,45.54,50,0
    .goto Stonetalon Mountains,71.25,43.45,50,0
    .goto Stonetalon Mountains,64.82,47.23
    >>杀死|cRXP_ENEMY_XT:4|r。它在河的北侧巡逻
    >>|cRXP_WARN_现在不需要完成此任务|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
step
    #completewith next
    .subzone 2160 >>进入Windshear矿场
    .group
step
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_匹兹尼克|r
    .accept 1090 >>接任务: |cRXP_WARN_格雷苏的要求|r
    .target Piznik
    .group 3
step
    .goto Stonetalon Mountains,71.77,60.19
    >>保护|cRXP_FRIENDLY_Piznik|r不受传入|cRXP_ENEMY_Windshear Vermin|r的影响
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 3
step
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_匹兹尼克|r
    .turnin 1090 >>交任务: |cRXP_FRIENDLY_格雷苏的要求|r
    .accept 1092 >>接任务: |cRXP_WARN_格雷苏的要求|r
    .target Piznik
    .group
step
    .goto Stonetalon Mountains,71.83,60.34
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_跳上木轮。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
    .group
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
    .turnin 1092 >>交任务: |cRXP_FRIENDLY_格雷苏的要求|r
    .target Ziz Fizziks
    .isQuestTurnedIn 1090
    .group
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >>输入Talondeep路径
step
    .goto Stonetalon Mountains,78.89,41.24
    .goto Ashenvale,40.40,53.06,30 >>|cRXP_WARN_跳到你右边的白色石头上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
    .zoneskip Ashenvale
step
	#completewith ZoramFP
    .goto Ashenvale,39.45,55.29,50,0
    .goto Ashenvale,36.47,57.15,50,0
    .goto Ashenvale,34.56,54.13,30,0
    .goto Ashenvale,32.14,52.12,60,0
    .goto Ashenvale,28.64,48.10,50,0
    .goto Ashenvale,26.34,45.44,50,0
    .goto Ashenvale,25.40,39.00,70,0
    .goto Ashenvale,11.96,34.28,80 >>前往佐拉姆加前哨
    >>|cRXP_WARN_途中一定要避开阿斯特拉纳尔护卫队。为了安全起见，请遵循航路点|r
    .unitscan Astranaar Sentinel
step
    #optional
#loop
	.line Ashenvale,10.86,26.99,11.23,25.73,11.83,25.75,12.51,24.09,14.18,24.03,14.85,23.08,14.13,20.77,14.73,19.56,14.59,17.90,13.38,16.39,13.62,14.48,14.15,15.31,15.88,15.42,15.40,16.96,15.22,18.81,15.33,20.78,15.33,22.51,15.32,24.90,14.76,25.52,14.62,26.49,14.52,28.25,13.55,29.36,12.41,29.15,11.22,31.04,10.38,29.60,11.01,28.57
	.goto Ashenvale,10.86,26.99,25,0
	.goto Ashenvale,11.23,25.73,25,0
	.goto Ashenvale,11.83,25.75,25,0
	.goto Ashenvale,12.51,24.09,25,0
	.goto Ashenvale,14.18,24.03,25,0
	.goto Ashenvale,14.85,23.08,25,0
	.goto Ashenvale,14.13,20.77,25,0
	.goto Ashenvale,14.73,19.56,25,0
	.goto Ashenvale,14.59,17.90,25,0
	.goto Ashenvale,13.38,16.39,25,0
	.goto Ashenvale,13.62,14.48,25,0
	.goto Ashenvale,14.15,15.31,25,0
	.goto Ashenvale,15.88,15.42,25,0
	.goto Ashenvale,15.40,16.96,25,0
	.goto Ashenvale,15.22,18.81,25,0
	.goto Ashenvale,15.33,20.78,25,0
	.goto Ashenvale,15.33,22.51,25,0
	.goto Ashenvale,15.32,24.90,25,0
	.goto Ashenvale,14.76,25.52,25,0
	.goto Ashenvale,14.62,26.49,25,0
	.goto Ashenvale,14.52,28.25,25,0
	.goto Ashenvale,13.55,29.36,25,0
	.goto Ashenvale,12.41,29.15,25,0
	.goto Ashenvale,11.22,31.04,25,0
	.goto Ashenvale,10.38,29.60,25,0
	.goto Ashenvale,11.01,28.57,25,0
    .xp 21 >>升级到21级
step
    #label ZoramFP
    .goto Ashenvale,12.20,33.80
    .fp Zoram'gar Outpost >>获取Zoram'gar前哨飞行路线
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r, |cRXP_FRIENDLY_卡拉恩·阿玛卡|r, |cRXP_FRIENDLY_米苏瓦|r, |cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6562 >>交任务: |cRXP_FRIENDLY_帮助耶努萨克雷|r
    .accept 6563 >>接任务: |cRXP_WARN_阿库麦尔水晶|r
    .goto Ashenvale,11.56,34.29
    .accept 216 >>接任务: |cRXP_WARN_蓟皮熊怪的麻烦|r
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>接任务: |cRXP_LOOT_巨魔符咒|r
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>接任务: |cRXP_WARN_佐拉姆海岸的纳迦|r
    .goto Ashenvale,11.69,34.90
    .target Je'neu Sancrea
    .target Karang Amakkar
    .target Mitsuwa
    .target Marukai
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r, |cRXP_FRIENDLY_卡拉恩·阿玛卡|r, |cRXP_FRIENDLY_米苏瓦|r, |cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6562 >>交任务: |cRXP_FRIENDLY_帮助耶努萨克雷|r
    .goto Ashenvale,11.56,34.29
    .accept 216 >>接任务: |cRXP_WARN_蓟皮熊怪的麻烦|r
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>接任务: |cRXP_LOOT_巨魔符咒|r
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>接任务: |cRXP_WARN_佐拉姆海岸的纳迦|r
    .goto Ashenvale,11.69,34.90
    .target Je'neu Sancrea
    .target Karang Amakkar
    .target Mitsuwa
    .target Marukai
step
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格拉什|r
    >>|cRXP_WARN_这将开始一个护送任务。困难时要小心|r
    .accept 6641 >>接任务: |cRXP_WARN_鞭笞者沃尔沙|r
    .target Muglash
    .group 2
step
    .goto Ashenvale,9.63,27.63
    >>到达后单击|cRXP_PICK_Brazier|r
    >>|cRXP_WARN_将有|r|cRXP_ENEMY_Naga|r|cRXP_WARN_的波浪产生。小心一次|r|cRXP_ENEMY_Vorsha|r|cRXP_WARN_comes，他打得很重|r
    >>|cRXP_WARN_你可以让|r|cRXP_FRIENDLY_Muglash|r|cRXP_WARN_在与他战斗之前发动一些攻击|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
    .group 2
step
#loop
	.line Ashenvale,10.86,26.99,11.23,25.73,11.83,25.75,12.51,24.09,14.18,24.03,14.85,23.08,14.13,20.77,14.73,19.56,14.59,17.90,13.38,16.39,13.62,14.48,14.15,15.31,15.88,15.42,15.40,16.96,15.22,18.81,15.33,20.78,15.33,22.51,15.32,24.90,14.76,25.52,14.62,26.49,14.52,28.25,13.55,29.36,12.41,29.15,11.22,31.04,10.38,29.60,11.01,28.57
	.goto Ashenvale,10.86,26.99,25,0
	.goto Ashenvale,11.23,25.73,25,0
	.goto Ashenvale,11.83,25.75,25,0
	.goto Ashenvale,12.51,24.09,25,0
	.goto Ashenvale,14.18,24.03,25,0
	.goto Ashenvale,14.85,23.08,25,0
	.goto Ashenvale,14.13,20.77,25,0
	.goto Ashenvale,14.73,19.56,25,0
	.goto Ashenvale,14.59,17.90,25,0
	.goto Ashenvale,13.38,16.39,25,0
	.goto Ashenvale,13.62,14.48,25,0
	.goto Ashenvale,14.15,15.31,25,0
	.goto Ashenvale,15.88,15.42,25,0
	.goto Ashenvale,15.40,16.96,25,0
	.goto Ashenvale,15.22,18.81,25,0
	.goto Ashenvale,15.33,20.78,25,0
	.goto Ashenvale,15.33,22.51,25,0
	.goto Ashenvale,15.32,24.90,25,0
	.goto Ashenvale,14.76,25.52,25,0
	.goto Ashenvale,14.62,26.49,25,0
	.goto Ashenvale,14.52,28.25,25,0
	.goto Ashenvale,13.55,29.36,25,0
	.goto Ashenvale,12.41,29.15,25,0
	.goto Ashenvale,11.22,31.04,25,0
	.goto Ashenvale,10.38,29.60,25,0
	.goto Ashenvale,11.01,28.57,25,0
    >>杀死|cRXP_ENEMY_Writhtail Nagas|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 6442,1 --Wraithtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    .goto Kalimdor,43.89,35.23,100 >>前往Blackfinth Deeps的入口
    .isOnQuest 6563
    .group
step
    #completewith next
    >>Loot |cRXP_PICK_Sapphire of Aku'Mai|r from the wall
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4
step
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,43.94,34.86
    >>杀死|cRXP_ENEMY_Blackfinth潮汐女祭司|r。掠夺她们一个|T134332:0|t[|cRXP-Loot_Damp-Note|r]并用它开始任务
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >>接任务: |cRXP_WARN_上古之神的仆从|r
    .mob Blackfathom Tide Priestess
    .use 16790
    .group 4
step
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11
    >>Loot |cRXP_PICK_Sapphire of Aku'Mai|r from the wall
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4
step
#loop
	.line Ashenvale,10.86,26.99,11.23,25.73,11.83,25.75,12.51,24.09,14.18,24.03,14.85,23.08,14.13,20.77,14.73,19.56,14.59,17.90,13.38,16.39,13.62,14.48,14.15,15.31,15.88,15.42,15.40,16.96,15.22,18.81,15.33,20.78,15.33,22.51,15.32,24.90,14.76,25.52,14.62,26.49,14.52,28.25,13.55,29.36,12.41,29.15,11.22,31.04,10.38,29.60,11.01,28.57
	.goto Ashenvale,10.86,26.99,25,0
	.goto Ashenvale,11.23,25.73,25,0
	.goto Ashenvale,11.83,25.75,25,0
	.goto Ashenvale,12.51,24.09,25,0
	.goto Ashenvale,14.18,24.03,25,0
	.goto Ashenvale,14.85,23.08,25,0
	.goto Ashenvale,14.13,20.77,25,0
	.goto Ashenvale,14.73,19.56,25,0
	.goto Ashenvale,14.59,17.90,25,0
	.goto Ashenvale,13.38,16.39,25,0
	.goto Ashenvale,13.62,14.48,25,0
	.goto Ashenvale,14.15,15.31,25,0
	.goto Ashenvale,15.88,15.42,25,0
	.goto Ashenvale,15.40,16.96,25,0
	.goto Ashenvale,15.22,18.81,25,0
	.goto Ashenvale,15.33,20.78,25,0
	.goto Ashenvale,15.33,22.51,25,0
	.goto Ashenvale,15.32,24.90,25,0
	.goto Ashenvale,14.76,25.52,25,0
	.goto Ashenvale,14.62,26.49,25,0
	.goto Ashenvale,14.52,28.25,25,0
	.goto Ashenvale,13.55,29.36,25,0
	.goto Ashenvale,12.41,29.15,25,0
	.goto Ashenvale,11.22,31.04,25,0
	.goto Ashenvale,10.38,29.60,25,0
	.goto Ashenvale,11.01,28.57,25,0
    .xp 23 >>升级到23级
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6563 >>交任务: |cRXP_FRIENDLY_阿库麦尔水晶|r
    .turnin 6564 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6563
    .isQuestComplete 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6563 >>交任务: |cRXP_FRIENDLY_阿库麦尔水晶|r
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6564 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6564
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战歌信使|r, |cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6641 >>交任务: |cRXP_FRIENDLY_鞭笞者沃尔沙|r
    .goto Ashenvale,12.22,34.21
    .turnin 6442 >>交任务: |cRXP_FRIENDLY_佐拉姆海岸的纳迦|r
    .goto Ashenvale,11.69,34.90
    .target Warsong Runner
    .target Marukai
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6442 >>交任务: |cRXP_FRIENDLY_佐拉姆海岸的纳迦|r
    .target Marukai
step
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡拉恩·阿玛卡|r
    .accept 216 >>接任务: |cRXP_WARN_蓟皮熊怪的麻烦|r
    .target Karang Amakkar
step
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德鲁克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Andruk
    .zoneskip Orgrimmar
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .trainer >>训练你的职业技能
    .turnin 1512 >>交任务: |cRXP_FRIENDLY_爱的礼物|r
    .accept 1513 >>接任务: |cRXP_LOOT_誓缚|r
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>在召唤圈使用|T133290:0|t[多兰吊坠]
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>杀死|cRXP_ENEMY_召唤的女妖|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .turnin 1513 >>交任务: |cRXP_FRIENDLY_誓缚|r
    .target Gan'rul Bloodeye
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kareth|r|cRXP_BUY_交谈。如果你没有匕首，就从他那里买一把|r|T135640:0|t[Jambiya]|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .train 8676 >>列车|T132282:0|t[救护车]
    .train 1943 >>列车|T132302:0|t[破裂]
    .train 1856 >>列车|T132331:0|t[消失]
    .train 1725 >>列车|T132289:0|t[分心]
    .train 1785 >>列车|T132320:0|t[潜行等级2]
    .accept 2460 >>接任务: |cRXP_WARN_碎手军礼|r
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>在|cRXP_FRIENDLY_Shenthul|r敬礼后，在瞄准他的同时键入/敬礼
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 2460 >>交任务: |cRXP_FRIENDLY_碎手军礼|r
    .accept 2458 >>接任务: |cRXP_LOOT_卧底密探|r
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_交谈。从他那里购买|r|T134387:0|t[Flash Powder]|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rilli |r
    .turnin 3923 >>交任务: |cRXP_FRIENDLY_雷里·格里斯高布|r
    .accept 3924 >>接任务: |cRXP_WARN_主动式负载平衡器说明书|r
    .target Rilli Greasygob
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Katis|r|cRXP_BUY_交谈。从她那里买一个|r|T135139:0|t[Burning Wand]|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
    .train 2138 >>训练你的职业技能
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
    .train 2121 >>训练你的职业技能
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与小屋顶部的|r|cRXP_FRIENDLY_Thuul|r交谈
    .train 3567 >>火车|T135759:0|t[电传：Orgrimar]
    .target Thuul
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .turnin 5642 >>交任务: |cRXP_FRIENDLY_暗影守卫|r
    .trainer >>训练你的职业技能
    .target Ur'kyo
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 8103 >>训练你的职业技能
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 3747 >>训练你的职业技能
    .target Ur'kyo
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,30,0
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120 >>前往污泥Ven
step << Druid
    .goto The Barrens,56.67,8.32
    >>将|cRXP_PICK_Strange Lockbox |r放入水中，用于|T133443:0|t[水生敏捷的半挂件]
    .collect 15883,1,3924,1 --Half Pendant of Aquatic Agility (1)
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
    +目标|cRXP_FRIENDLY_Taskmaster Fizzule|r，然后使用|T134536:0|t[火炬枪]两次并键入/礼炮
    >>|cRXP_WARN_小心！在他变得友好之前不要接近他，否则他会攻击你！|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    #label MissionProbable
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Taskmaster Fizzule|r交谈
    .turnin 2458 >>交任务: |cRXP_FRIENDLY_卧底密探|r
    .accept 2478 >>接任务: |cRXP_WARN_基本不可能的任务|r
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,54.80,5.97
    >>使用|cRXP_ENEMY_Foreman Silixiz|r上的|T133644:0|t[拾取口袋]作为他的|cRXP_LOOT_Tower钥匙|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_这里的每个暴民都会对某些能力造成更大的伤害|r
    >>在|cRXP_ENEMY_Mutatied Venture Co.无人机上使用|T132282:0|t[Ambush]|r
    >>在|cRXP_ENEMY_Venture Co.巡逻机上使用|T132302:0|t[破裂]|r
    >>在|cRXP_ENEMY_Venture Co.Lookouts|r上使用|T132292:0|t[Eviscerate]一次（1个组合点）
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>跑进盗贼塔并杀死|cRXP_ENEMY_Drones|r、|cRXX_ENEMY_Patrolers|r和|cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --变异创业公司无人机 (2)
    .complete 2478,3 --Venture Co. Patroller (2)
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob 变异创业公司无人机
    .mob Venture Co. Patroller
    .mob Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>在塔顶，你会发现|cRXP_ENEMY_Gallywix|r。偷走他的|cRXX_Loot_Head|r
    >>|cRXP_WARN_Use|r|T132282:0|t[Ambush]|cRXP_WARN_to将生命值减半。使用|r|T132155:0|t[Gouge]|cRXP_WARN_to恢复能量并使用|r| T136205:0|t[躲避]
	>>|cRXP_WARN_记得使用药剂和|r|T132819:0|t[Tistle Tea]|cRXP_WARN_if needed|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto The Barrens,54.77,5.57
    >>使用您的开锁功能打开|cRXP_PICK_Gallywix的锁箱|r并洗劫|cRXP-loot_Mixin|r。
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #completewith SamophlangePages
    .goto The Barrens,61.33,4.21,120 >>前往Boulder Lode矿场
step << !Rogue/Druid
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .zoneskip The Barrens
    .isOnQuest 3924
step
    #completewith next
    >>杀死|cRXP_ENEMY_Venture Co.的执行者|r和|cRXX_ENEMY_Venture Co.的监督者|r。掠夺它们以获取|cRXD_Loot_Samphilange手册页|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #label SamophlangePages
    .goto The Barrens,60.90,3.84,20,0
    .goto The Barrens,59.99,4.13
    >>杀死矿井后面的|cRXP_ENEMY_Boss Copperplug|r。掠夺他|cRXP_Loot_Samoplange手动封面|r
    .collect 11147,1 --Samophlange Manual Cover (1)
    .mob Boss Copperplug
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #label SamophlangePages2
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43
    >>杀死|cRXP_ENEMY_Venture Co.的执行者|r和|cRXX_ENEMY_Venture Co.的监督者|r。掠夺它们以获取|cRXD_Loot_Samphilange手册页|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #requires SamophlangePages
    #requires SamophlangePages2
    >>单击|T133735:0|t[Samoplange Manual Cover]创建|cRXP_LOOT_Manual|r
    .complete 3924,1 -- Samophlange Manual
    .use 6626
step
    .goto The Barrens,60.00,4.09
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_跳上帐篷。通过注销并重新登录来执行注销跳过。如果不成功，请跑回Orgrimmar|r
    .link https://www.youtube.com/watch?v=cOxspH4RcI8&ab >>|cRXP_WARN_单击此处查看示例|r
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .turnin 2478 >>交任务: |cRXP_FRIENDLY_基本不可能的任务|r
    .accept 2479 >>接任务: |cRXP_WARN_希诺特的帮助|r
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_交谈。从他那里购买|r|T133849:0|t[衰变的灰尘]|cRXP_Buy_和|r|T132793:0|t[Empty Vials]|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8498 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 905 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <24,1
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rilli |r
    .turnin 3924 >>交任务: |cRXP_FRIENDLY_主动式负载平衡器说明书|r
    .target Rilli Greasygob
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 197 >>Train Two-Handed Axes
    .target Hanashi
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 6192 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 5308 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
    .train 14323 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
    .train 14262 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
    .train 24558 >>训练你的宠物法术
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_交谈。向他购买|r|T135423:0|t[致命飞斧]|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target K'waii
step
    #optional
    .abandon 6421 >>放弃Boulderside峡谷
    .isOnQuest 6421
step
    #optional
    .abandon 4021 >>Abandon Counterattack!
    .isOnQuest 4021
step
    #optional
    .abandon 6481 >>Abandon Earthen Arise
    .isOnQuest 6481
step
    #optional
    .abandon 6284 >>Abandon Arachnophobia
    .isOnQuest 6284
step
    #optional
    .abandon 6641 >>放弃拉舍尔
    .isOnQuest 6641
step
    #optional
    .abandon 6563 >>放弃阿库迈的本质
    .isOnQuest 6563
step
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>上齐柏林塔
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades

]])

