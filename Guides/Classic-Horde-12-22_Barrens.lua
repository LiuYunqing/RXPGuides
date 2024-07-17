local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#xprate <1.99
<< Horde
#name 12-17 贫瘠之地
#version 11
#group RestedXP部落1-22
#next 17-22 石爪山脉/贫瘠之地/灰谷


step << Tauren Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_WARN_部落的新兵|r
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >>Go into Dustwind Cave
step << Tauren Shaman
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>杀死|cRXP_ENEMY_Cultist|r。掠夺他们获得|cRXP_Loot_Agent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_WARN_十字路口征兵|r
    .target Kargal Battlescar
step << Warrior !Undead
    #xprate <1.5
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>前往山顶
step << Warrior !Undead
    #xprate <1.5
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .turnin 1502 >>交任务: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .accept 1503 >>接任务: |cRXP_LOOT_锻造好的钢锭|r
    .target Thun'grim Firegaze
step << Warrior !Undead
    #xprate <1.5
    .goto The Barrens,55.05,26.65
    >>偷走|cRXP_PICK_Stolen铁箱|r用于其|cRXP_Loot_锻钢棒|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior !Undead
    #xprate <1.5
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>前往山顶
step << Warrior !Undead
    #xprate <1.5
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .turnin 1503 >>交任务: |cRXP_FRIENDLY_锻造好的钢锭|r
    .target Thun'grim Firegaze
step << !Shaman !Warrior/Undead
    #softcore
    #completewith ThievesPickup
    .goto The Barrens,50.72,32.61
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .subzoneskip 380
step << !Shaman !Warrior/Undead
    #hardcore
    #completewith ThievesPickup
    .goto The Barrens,52.34,29.27,150 >>前往十字路口
step << !Shaman !Warrior/Undead
    #softcore
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>接任务: |cRXP_WARN_遗忘之池|r
    .target Tonga Runetotem
    .subzoneskip 380
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #hardcore
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
    .target Zargh
step << !Shaman !Warrior/Undead
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r << !Druid
    .accept 844 >>接任务: |cRXP_WARN_平原陆行鸟的威胁|r
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Shaman !Warrior/Undead
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .accept 844 >>接任务: |cRXP_WARN_平原陆行鸟的威胁|r
    .target Sergra Darkthorn
step << !Shaman !Warrior/Undead
    #hardcore
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>接任务: |cRXP_WARN_遗忘之池|r
    .target Tonga Runetotem
step << !Shaman !Warrior/Undead
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
    .accept 871 >>接任务: |cRXP_WARN_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_WARN_十字路口的补给品|r
    .target Thork
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #hardcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    >>|cRXP_WARN_不要飞往奥格里玛！|r
    .fp The Crossroads >>获得the Crossroads飞行路线
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
    .accept 6384 >>接任务: |cRXP_WARN_飞往奥格瑞玛|r
    .target Devrak
step << Undead
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fp The Crossroads >>获得the Crossroads飞行路线
    .target Devrak
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 1492 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
    .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
    .turnin 1358 >>交任务: |cRXP_FRIENDLY_给赫布瑞姆的样本|r << Undead/Rogue/Mage/Priest/Warlock
    .target Apothecary Helbrim
    .isQuestAvailable 848
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 1492 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
    .turnin 1358 >>交任务: |cRXP_FRIENDLY_给赫布瑞姆的样本|r << Undead/Rogue/Mage/Priest/Warlock
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里买一个|r|T135499:0|t[叠层递归弓]|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Orc Hunter/Troll Hunter
    #completewith DisruptTheAttacks
    +装备|T135499:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里买一个|r|T135613:0|t[Hunter's Boomstick]|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #completewith DisruptTheAttacks
    +装备|T135613:0|t[猎人的Boomstick]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << !Shaman !Warrior/Undead
    #label ThievesPickup
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
    .target Gazrog
step << Undead
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
    .dungeon !RFC
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
    .dungeon RFC
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #softcore
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
    .target Zargh
step
    #completewith DisruptTheAttacks
    >>杀死|cRXP_ENEMY_Plainstrider|r。掠夺他们的|cRXX_Loot_Beak|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    #completewith next
    #label DemonMountain
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.65,19.21,100 >>前往山顶
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    #completewith next
    #requires DemonMountain
    .goto The Barrens,47.65,19.21,15 >>Go inside Dreadmist Den
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    #label DemonSeed
    .goto The Barrens,47.97,19.07
    >>右键单击|cRXP_PICK_Altar|r。确保您身上有|T134095:0|t[缺陷力量石]
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << skip
    #xprate <1.5 << !Hunter
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,100 >>沿着你来的山往下走
    .isQuestComplete 924
--XX !Tauren !Undead
step << Shaman
    #completewith DisruptTheAttacks
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>杀死一个|cRXP_ENEMY_Razormane找水器|r或|cRXX_ENEMY_拉佐曼Thornweaver |r。掠夺它们以获得|cRXD_Loot_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #completewith next
    >>杀死|cRXP_ENEMY_Water Seekers|r、|cRXD_ENEMY_Thornweavers|r和|cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step
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
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Warrior !Undead
    #xprate >1.49
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>前往山顶
step << Warrior !Undead
    #xprate >1.49
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .turnin 1502 >>交任务: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .accept 1503 >>接任务: |cRXP_LOOT_锻造好的钢锭|r
    .target Thun'grim Firegaze
step << Warrior !Undead
    #xprate >1.49
    .goto The Barrens,55.05,26.65
    >>偷走|cRXP_PICK_Stolen铁箱|r用于其|cRXP_Loot_锻钢棒|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior !Undead
    #xprate >1.49
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>前往山顶
step << Warrior !Undead
    #xprate >1.49
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .turnin 1503 >>交任务: |cRXP_FRIENDLY_锻造好的钢锭|r
    .target Thun'grim Firegaze
step << !Undead !Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找一个团队去Ragefire Chasm
    .dungeon RFC
 step
    #completewith next
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
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
step << Shaman Troll/Shaman Orc/Warrior Orc/Warrior Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
    .target Zargh
    .isOnQuest 6386
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_索克|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r << Tauren Shaman
    .turnin 844 >>交任务: |cRXP_FRIENDLY_平原陆行鸟的威胁|r
    .accept 845 >>接任务: |cRXP_LOOT_斑马的威胁|r
    .goto The Barrens,52.24,31.01
    .turnin 871 >>交任务: |cRXP_FRIENDLY_野猪人的袭击|r
    .accept 872 >>接任务: |cRXP_WARN_野猪人的头目|r
    .goto The Barrens,51.50,30.87
    .target Sergra Darkthorn
    .target Thork
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接任务: |cRXP_LOOT_鹰身强盗|r
    .target Darsok Swiftdagger
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
    .accept 6384 >>接任务: |cRXP_WARN_飞往奥格瑞玛|r
    .target Devrak
step << Orc Hunter/Troll Hunter
    #optional
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里买一个|r|T135499:0|t[叠层递归弓]|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Tauren Hunter
    #optional
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里买一个|r|T135613:0|t[Hunter's Boomstick]|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << !Undead !Tauren
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
    .isOnQuest 867
step << Orc Warrior/Troll Warrior/Tauren Warrior
    #sticky
    #completewith KreenigSnarlsnout1
    .goto The Barrens,52.5,30.7,0
    .vendor >>|cRXP_WARN_检查|r|cRXP_FRIENDLY_Lizzarik|r|cRXP_WARN_i是否在十字路口中。他卖药水和|r|T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r]|cRXP-WARN_这是一种限量供应的商品|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << !Undead !Tauren
    #completewith HiddenEnemiesPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon RFC
step << Tauren
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
    .dungeon RFC
step << Tauren
    #completewith KreenigSnarlsnout1
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    #completewith next
    >>掠夺|cRXP_PICK_Crossroads的补给箱|r。它有多个产卵位置
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
    #label KreenigSnarlsnout1
    .goto The Barrens,58.69,27.08
    >>杀死|cRXP_ENEMY_Kreenig Snarlsnous|r。掠夺他的|cRXX_Loot_TASK|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .dungeon RFC
step << Tauren
    #completewith next
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>掠夺|cRXP_PICK_Crossroads的补给箱|r。它有多个产卵位置
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
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
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    #completewith next
    >>杀死你看到的任何|cRXP_ENEMY_Zhevra|r。掠夺他们的|cRXP_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >>沿着小路上山，前往|cRXP_FRIENDLY_Telf|r
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1525 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1526 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Telf Joolam
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>使用|T134732:0|t[Fire Sapta]
    .use 6636
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.96,58.22
    >>杀死|cRXP_ENEMY_轻微火焰显现|r。掠夺他获得|cRXX_Loot_光辉徽章|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.96,58.22
    >>单击地面上的|cRXP_PICK_Brazier|r
    .turnin 1526 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1527 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .dungeon RFC
step << Tauren Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 1527 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .target Kranal Fiss
    .dungeon RFC
step << Tauren Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. Wait for the respawn if it's not up
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
    .dungeon RFC
step << Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找一个团队去Ragefire Chasm
    .dungeon RFC
step << Tauren
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .dungeon RFC
step << Tauren
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >>获取Orgrimmar飞行路线
    .target Doras
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
    #label HiddenEnemiesPickup
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
    >>|cRXP_WARN_如果可能，让队员分享以下任务|r
    .accept 5722 >>接任务: |cRXP_WARN_寻找背包|r
    .accept 5723 >>接任务: |cRXP_WARN_试探敌人|r
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
step << Tauren
    #completewith RFCTurninsTB1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Doras
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren
    #completewith RFCTurninsTB1
    .goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 >>交任务: |cRXP_FRIENDLY_归还背包|r
    .turnin 5723 >>交任务: |cRXP_FRIENDLY_试探敌人|r
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 >>交任务: |cRXP_FRIENDLY_归还背包|r
    .target Rahauro
    .isOnQuest 5724
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step << Tauren
    #label RFCTurninsTB1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5723 >>交任务: |cRXP_FRIENDLY_试探敌人|r
    .target Rahauro
    .isQuestComplete 5723
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .hs >>十字路口之心
    .use 6948
    .zoneskip The Barrens
    .dungeon RFC
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. Wait for the respawn if it's not up
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
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
step << Warlock
    #season 2
    .train 403932,1
    >>|cRXP_WARN_Go to the Altar of Thorns|r。铸造|T136126:0|t【生命敲击】直到你快死了。然后在你的宠物身上施放|T136168:0|t[健康漏斗]致死并获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    *|cRXP_WARN_You will be revived immediately after dying|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
step << Warlock
    #season 2
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_通道调整|r]|cRXP-WARN_训练|r|T136168:0|t[主通道器]
step
    #completewith next
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
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
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step << !Tauren !Undead
    #completewith next
    >>杀死你看到的任何|cRXP_ENEMY_Zhevra|r。掠夺他们的|cRXP_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 924 >>交任务: |cRXP_FRIENDLY_恶魔之种|r
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #completewith ShamanDurotar
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith ShamanDurotar
    >>杀死你看到的任何|cRXP_ENEMY_Zhevra|r。掠夺他们的|cRXP_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto Durotar,36.74,57.78
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >>沿着小路上山，前往|cRXP_FRIENDLY_Telf|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1525 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1526 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>使用|T134732:0|t[Fire Sapta]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>杀死|cRXP_ENEMY_轻微火焰显现|r。掠夺他获得|cRXX_Loot_光辉徽章|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>单击地面上的|cRXP_PICK_Brazier|r
    .turnin 1526 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1527 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << Shaman
    #completewith FireEnd
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith next
    >>杀死你看到的任何|cRXP_ENEMY_Zhevra|r。掠夺他们的|cRXP_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Shaman
    #label FireEnd
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 1527 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. Wait for the respawn if it's not up
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step << skip
    #completewith RatchetEnter
    >>杀死|cRXP_ENEMY_Sunscale尖叫者|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
--XX Need to add goto about halfway down since they only spawn up north, would be too messy to add it
step
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>杀死|cRXP_ENEMY_Zhevra跑步者|r。掠夺他们的|cRXX_Loot_ Hooves |r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto The Barrens,62.68,36.23
    .subzone 392 >>Travel to Ratchet
    .isOnQuest 845
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, Wanted Poster
    .accept 894 >>接任务: |cRXP_LOOT_什么什么平衡器|r
    .goto The Barrens,62.98,37.22
    .accept 895 >>接任务: |cRXP_WARN_通缉：巴隆·朗绍尔|r
    .goto The Barrens,62.59,37.47
    .target Sputtervalve
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135353:0|t[Espadon]|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +当你达到16级时装备|T135353:0|t[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +装备|T135353:0|t[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #completewith BaronLongshore
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
    #completewith BaronLongshore
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
    #optional
    #completewith BaronLongshore
    +当你达到16级时，装备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +配备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #completewith BaronLongshore
    +装备|T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一个|r|T133052:0|t[Hammer]|r
    .collect 2028,1,895,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #completewith BaronLongshore
    +装备|T133052:0|t[锤子] 
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一把|r|T135343:0|t[弯刀]|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #completewith BaronLongshore
    +装备|T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买第二把|r|T135343:0|t[弯刀]|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #completewith BaronLongshore
    +装备第二把|T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
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
    >>|T133918:0|t[Longjaw Mud Snappers]|cRXP_WARN_非常便宜，想买多少就买多少|r
    .vendor >>供应商垃圾箱
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_控制台操作手册|r, 它在你的背包中. 不再需要它了|r
step
    #completewith BaronLongshore
    >>杀死|cRXP_ENEMY_南海旅行家|r和|cRXX_ENEMY_南海炮手|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
	#completewith next
	>>杀死|cRXP_ENEMY_Tazan|r。抢走他的|cRXX_Loot_Satchel|r。他在山上巡逻
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
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
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
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
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135353:0|t[Espadon]|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +当你达到16级时装备|T135353:0|t[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +装备|T135353:0|t[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
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
    #optional
    #completewith FlyToXroads1
    +当你达到16级时，装备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +配备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #completewith BaronLongshore
    +装备|T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一个|r|T133052:0|t[Hammer]|r
    .collect 2028,1,895,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #completewith BaronLongshore
    +装备|T133052:0|t[锤子] 
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一把|r|T135343:0|t[弯刀]|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #completewith FlyToXroads1
    +装备|T135343:0|t[弯刀]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买第二把|r|T135343:0|t[弯刀]|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #completewith FlyToXroads1
    +装备|T135343:0|t[弯刀]
    .use 923
    .itemcount 923,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    --Enter completewith label
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
--XX Level 14 training here?
step << skip
    #sticky
    #completewith ZhevraTurnIn
    .goto The Barrens,52.5,30.7,0
    .vendor >>沿着这条路走到十字路口。留意|cRXP_FRIENDLY_Lizzarik|r购买|T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r]（如果有）
	.unitscan Lizzarik
step << skip
    #completewith ZhevraTurnIn
    .subzone 380 >>前往十字路口
step
    #label ZhevraTurnIn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 872 >>交任务: |cRXP_FRIENDLY_野猪人的头目|r
    .turnin 5041 >>交任务: |cRXP_FRIENDLY_十字路口的补给品|r
    .goto The Barrens,51.50,30.87
    .turnin 845 >>交任务: |cRXP_FRIENDLY_斑马的威胁|r
    .accept 903 >>接任务: |cRXP_WARN_草原上的徘徊者|r
    .goto The Barrens,52.24,31.01
    .target Sergra Darkthorn
    .target Thork
step << Troll Hunter/Orc Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    >>|cRXP_BUY_从他那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    >>|cRXP_BUY_从他那里购买|r|T132384:0|t[Heavy Shots]|cRXP_Buy_|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok交谈|r
    .vendor >>|cRXP_BUY_从他那里购买|r|T135490:0|t[|cRXP_FRIENDLY_Fine Longbow|r]|cRXP-Buy_（如果有），并储备箭头|r
    >>|cRXP_WARN_如果没有，请购买|r|T135490:0|t[加固弓]|cRXP_WARN_instead|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .isOnQuest 903
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里买一个|r|T135613:0|t[Hunter's Boomstick]|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
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
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 850 >>接任务: |cRXP_LOOT_科卡尔首领|r
    .accept 855 >>接任务: |cRXP_LOOT_半人马护腕|r
    .target Regthar Deathgate
step
    #xprate >1.49
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 850 >>接任务: |cRXP_LOOT_科卡尔首领|r
    .target Regthar Deathgate
step
    #optional
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 850 >>接任务: |cRXP_LOOT_科卡尔首领|r
    .target Regthar Deathgate
step
    #xprate <1.5
    #completewith KodobaneTurnin
    >>杀死|cRXP_ENEMY_Kolkar牧马人|r和|cRXD_ENEMY_ Kolkar风暴者|r。掠夺他们的|cRXP_Loot_Bracers|r
    >>|cRXP_WARN_现在不必完成此任务|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .isOnQuest 855
step
    #completewith Barak
    >>在被遗忘的水池周围收集|cRXP_LOOT_Laden蘑菇|r
    >>|cRXP_WARN_现在不必完成此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Druid
    #season 2
    .goto The Barrens,44.73,22.18
    >>将|cRXP_PICK_遗弃的Snapjaw巢|r在地上掠夺|T294479:0|t[|cRXP _Loot_遗弃的Snapjaw蛋|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    .goto The Barrens,45.06,22.54
    >>潜入水下至|cRXP_PICK_气泡裂缝|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>杀死|cRXP_ENEMY_Barak Kodobane|r。掠夺他的|cRXX_Loot_Head|r
    >>|cRXP_WARN_小心，因为|cRXP_ENEMY_Barak Kodobane|r的近战命中造成了很大的伤害，并且他受到|cRXX_ENEMY_Kolkar牧马人|r的保护。他们可以网住你，并从远处向你射击|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .accept 851 >>接任务: |cRXP_WARN_狂热的维罗戈|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .accept 851 >>接任务: |cRXP_WARN_狂热的维罗戈|r
    .target Regthar Deathgate
step
    #xprate <1.5
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 851 >>接任务: |cRXP_WARN_狂热的维罗戈|r
    .target Regthar Deathgate
    .isQuestTurnedIn 850
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
step << Orc Warrior/Troll Warrior/Tauren Warrior
    #season 0
    #completewith next
    .goto The Barrens,43.80,12.22,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩·凝血|r
    >>|cRXP_FRIENDLY_Vrang|r|cRXP_WARN_sells|r|T133476:0|t[|cRXP-FRIENDLY_Heavy Spiked Mace|r]|cRXP_WARN_which is a limited supply item|r << Orc Warrior/Troll Warrior/Tauren Warrior
	.vendor	>>供应商垃圾和维修
    .dungeon RFC
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
step << !Tauren
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .zoneskip Stonetalon Mountains
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << !Tauren
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左边的小路向上走
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << !Tauren
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳到其中一个笼子上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>|cRXP_WARN_单击此处查看示例|r
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << !Tauren
    #completewith RFCPickups
    .goto Thunder Bluff,50.75,37.07,40 >>乘电梯去雷霆崖
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 >>交任务: |cRXP_FRIENDLY_归还背包|r
    .turnin 5723 >>交任务: |cRXP_FRIENDLY_试探敌人|r
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << !Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 >>交任务: |cRXP_FRIENDLY_归还背包|r
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step << !Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5723 >>交任务: |cRXP_FRIENDLY_试探敌人|r
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step << !Tauren
    #completewith Samophlange
    .hs >>十字路口之心
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
step << !Tauren
    #completewith Samophlange
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
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
    .target Apothecary Helbrim
    .isQuestComplete 848
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <1.5
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 867 >>交任务: |cRXP_FRIENDLY_鹰身强盗|r
    .accept 875 >>接任务: |cRXP_WARN_鹰身人首领|r
    .target Darsok Swiftdagger
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate >1.49
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 867 >>交任务: |cRXP_FRIENDLY_鹰身强盗|r
    .target Darsok Swiftdagger
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_WARN_死水绿洲|r
    .target Tonga Runetotem
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 903 >>交任务: |cRXP_FRIENDLY_草原上的徘徊者|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .target Sergra Darkthorn
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,55.80,17.03
    >>使用|T134227:0|t[埃切亚克之角]召唤|cRXP_ENEMY_埃切亚克|r
    >>杀死|cRXP_ENEMY_Echeyake|r。掠夺他|cRXD_Loot_Echeyake's Hide|r
    >>|cRXP_WARN_如果|cRXP_ENEMY_Echeyake|r在使用|r|T134227:0|t[Horn of Echeyaakee]|cRXP-WARN_后没有产卵，或者在它产卵时没有得到标签，请跳过此步骤|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_如果|cRXP_ENEMY_Echeyake|r在使用|r|T134227:0|t[Horn of Echeyake]|cRXP-WARN_后没有产卵，或者在它产卵时你没有得到标签，那么放弃Echeyakee，然后返回城镇并再次接受它|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,55.80,17.03
    >>使用|T134227:0|t[埃切亚克之角]召唤|cRXP_ENEMY_埃切亚克|r
    >>杀死|cRXP_ENEMY_Echeyake|r。掠夺他|cRXD_Loot_Echeyake's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #completewith Samophlange
    +|cRXP_WARN_小心区域中的|r|cRXP_ENEMY_Sunscale镰刀爪|r|cRXP_WARN_in。他们达到18级，可以|r|T132152:0|t[色雷斯]
    .dungeon RFC
    .xp >17,1
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #completewith Samophlange
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .dungeon RFC
step
    #completewith Samophlange
    +|cRXP_WARN_小心区域中的|r|cRXP_ENEMY_Sunscale镰刀爪|r|cRXP_WARN_in。他们达到18级，可以|r|T132152:0|t[色雷斯]
    .dungeon !RFC
    .xp >17,1
step
    #completewith Samophlange
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .dungeon !RFC
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩·凝血|r
    >>|cRXP_FRIENDLY_Vrang|r|cRXP_WARN_sells|r|T133476:0|t[|cRXP-FRIENDLY_Heavy Spiked Mace|r]|cRXP_WARN_which is a limited supply item|r << Orc Warrior/Troll Warrior/Tauren Warrior
	.vendor	>>供应商垃圾和维修
    .dungeon !RFC
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
step
    #completewith Ignition
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    .goto The Barrens,54.3,12.3
    >>杀死|cRXP_ENEMY_Raptor|r。掠夺它们的|cRXX_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #optional
    .goto The Barrens,56.5,7.5
    >>在这里磨到16级很重要，因为接下来的3个任务相当艰难
	.xp 16
step
    #label Ignition
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与污泥箱中的|r|cRXP_FRIENDLY_Wizzlecrank碎纸机|r对话
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
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
    .isOnQuest 858
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Wizzlecrank的碎纸机交谈|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    >>|cRXP_WARN_这将开始护送。确保你完全健康|r
    .turnin 858 >>交任务: |cRXP_FRIENDLY_打火钥匙|r
    .accept 863 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Wizzlecrank的碎纸机交谈|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    >>|cRXP_WARN_这将开始护送。确保你完全健康|r
    .accept 863 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_当碎纸机移动到较高的地面上时，两个|r|cRXP_ENEMY_Venture Co.雇佣军|r|cRXP_WARN_将产生。杀死他们，然后在最后等待他的RP事件|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step
    #completewith next
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label CatsEye
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
    >>|cRXP_WARN_如果它在25次以上的暴民后没有掉落，请随意跳过此任务|r
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
    .goto The Barrens,60.48,3.76
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_跳到木梁上。通过注销并重新登录来执行注销跳过。如果不成功，请跑回Orgrimmar|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
    .zoneskip Orgrimmar
step
    #completewith next
    .skill firstaid,40 >>|cRXP_WARN_创建|r|T133685:0|t[亚麻绷带]|cRXP_WARN_直到你的技能达到40或更高|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Arnok|r交谈
    >>|cRXP_WARN_如果您没有足够的|r|T132889:0|t[亚麻布]|cRXP_WARN_to达到40技能，请跳过此步骤|r
    .train 3276 >>火车|T133688:0|t[粗布绷带]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >>|cRXP_WARN_创建|r|T133688:0|t[Heavy Linen Bandages]|cRXP_WARN_直到你的技能达到50或更高|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Arnok|r交谈
    >>|cRXP_WARN_如果您没有足够的|r|T132889:0|t[亚麻布]|cRXP_WARN_to达到50技能，请跳过此步骤|r
    .train 3274 >>列车乘务员急救
    .target Arnok
    .skill firstaid,<40,1
step
    #completewith next
    +|cRXP_WARN_确保您的|r|T132794:0|t[|cRXP_OOT_Flask of Oil|r]未售出！
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 8102 >>训练你的职业技能
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    #season 2
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 527 >>火车|T135894:0|t[驱散魔法]
    >>|cRXP_WARN_您稍后需要|r|T135894:0|t[驱散魔法]|cRXP_WARN_才能获得符文|r
    .target Ur'kyo
    .xp <18,1
step << Priest
    #optional
    #season 0
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
step << !Tauren !Undead !Shaman !Warrior
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Gryshka|r交谈
    .turnin 6384 >>交任务: |cRXP_FRIENDLY_飞往奥格瑞玛|r
    .accept 6385 >>接任务: |cRXP_WARN_双足飞龙管理员多拉斯|r
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead !Shaman !Warrior
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r
    .accept 6386 >>接任务: |cRXP_WARN_返回十字路口|r
    .target Doras
    .isOnQuest 6385
step << !Tauren !Undead !Shaman !Warrior
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .accept 6386 >>接任务: |cRXP_WARN_返回十字路口|r
    .target Doras
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >>获取Orgrimmar飞行路线
    .zoneskip The Barrens
    .target Doras
step << Shaman
    #season 2
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    >>|cRXP_WARN_确保您已经训练过|r|T136075:0|t[Purge]|cRXP_WARN_as以后需要获得符文|r
    .train 8019 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 2
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    >>|cRXP_WARN_确保您已经训练过|r|T136075:0|t[Purge]|cRXP_WARN_as以后需要获得符文|r
    .train 913 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <18,1
step << Shaman
    #season 0
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8019 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 0
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 913 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <18,1
step
    #Label SpiritsPickup
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>接任务: |cRXP_WARN_石爪之灵|r
    .target Zor Lonetree
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .train 1804 >>列车|T136058:0|t[开锁]
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
step << Troll Hunter/Orc Hunter/Priest
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 227 >>火车杆
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 264 >>火车弓
    .target Hanashi
step << Troll Warrior/Tauren Warrior/Undead Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 172 >>Train Two-Handed Axes
    .train 227 >>火车杆
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r|cRXP_BUY_。从他那里买一个|r|T135490:0|t[加固弓]|r
    .collect 3026,1,3281,1 --Collect Laminated Recurve Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #completewith FoodandWater2
    +装备|T135490:0|t[加固弓]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step << Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r|cRXP_BUY_。从他那里购买|r|T135423:0|t[战斧]|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior
    #optional
    #completewith FoodandWater2
    +当你达到20级时装备|T135423:0|t[战斧]
    .use 926
    .itemcount 926,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior
    #optional
    #completewith FoodandWater2
    +装备|T135423:0|t[战斧]
    .use 926
    .itemcount 926,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Druid/Mage
    #season 2
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_如果可能的话，从拍卖行购买|r|T134237:0|t[Kolkar Booty Key]|cRXP_Buy_|r
    >>|cRXP_WARN_你需要这个才能获得|r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]|cRXP-WARN_to train|r|T236167:0|t[野蛮咆哮] << Druid
    >>|cRXP_WARN_你需要这个来获得|r|T134939:0|t|cRXP_FRIENDLY_[拼写说明：TENGI RONEERA]|r|cRXP-WARN_to train|r|T132869:0|t[再生] << Mage
    .collect 5020,1 --Kolkar Booty Key (1)
	.target Auctioneer Thathung
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step
    #completewith FoodandWater2
    .hs >>十字路口之心
    .cooldown item,6948,>0
    .use 6948
step
    #completewith FoodandWater2
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .fly Crossroads >>飞向十字路口
    .target Doras
    .cooldown item,6948,<0
step
    #label FoodandWater2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r
    .turnin 869 >>交任务: |cRXP_FRIENDLY_偷钱的迅猛龙|r
    .accept 3281 >>接任务: |cRXP_LOOT_被偷走的银币|r
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <1.5
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 867 >>交任务: |cRXP_FRIENDLY_鹰身强盗|r
    .accept 875 >>接任务: |cRXP_WARN_鹰身人首领|r
    .target Darsok Swiftdagger
step
    #xprate >1.49
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 867 >>交任务: |cRXP_FRIENDLY_鹰身强盗|r
    .target Darsok Swiftdagger
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_WARN_死水绿洲|r
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 903 >>交任务: |cRXP_FRIENDLY_草原上的徘徊者|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .target Sergra Darkthorn
step << !Tauren !Undead !Warrior !Shaman
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
    .target Zargh
    .isOnQuest 6386
step
    .goto The Barrens,55.80,17.03
    >>使用|T134227:0|t[埃切亚克之角]召唤|cRXP_ENEMY_埃切亚克|r
    >>杀死|cRXP_ENEMY_Echeyake|r。掠夺他|cRXD_Loot_Echeyake's Hide|r
    >>|cRXP_WARN_如果|cRXP_ENEMY_Echeyake|r在使用|r|T134227:0|t[Horn of Echeyaakee]|cRXP-WARN_后没有产卵，或者在它产卵时没有得到标签，请跳过此步骤|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_如果|cRXP_ENEMY_Echeyake|r在使用|r|T134227:0|t[Horn of Echeyake]|cRXP_WARN_or后没有生成标签，请放弃Echeyakee，然后返回城镇并再次接受它|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>使用|T134227:0|t[埃切亚克之角]召唤|cRXP_ENEMY_埃切亚克|r
    >>杀死|cRXP_ENEMY_Echeyake|r。掠夺他|cRXD_Loot_Echeyake's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 881 >>交任务: |cRXP_FRIENDLY_埃其亚基|r
    .accept 905 >>接任务: |cRXP_WARN_狂暴的镰爪龙|r
    .target Sergra Darkthorn
step << Warrior
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>单击|cRXP_PICK_部落战旗|r
    .train 403489,1
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_曼科里克|r
    .accept 899 >>接任务: |cRXP_WARN_复仇的怒火|r
    .accept 4921 >>接任务: |cRXP_LOOT_在战斗中失踪|r
    .target Mankrik
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    >>|cRXP_BUY_从他那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHorsPickup
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
    .turnin 902 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .turnin 863 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
    .accept 3921 >>接任务: |cRXP_WARN_维妮·布特巴克|r << Hunter
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .goto The Barrens,62.98,37.22
    .turnin 896 >>交任务: |cRXP_FRIENDLY_矿工的宝贝|r
    .goto The Barrens,63.35,38.45
    .target Sputtervalve
    .target Wharfmaster Dizzywig
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 902 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .accept 3921 >>接任务: |cRXP_WARN_维妮·布特巴克|r << Hunter
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .goto The Barrens,62.98,37.22
    .turnin 896 >>交任务: |cRXP_FRIENDLY_矿工的宝贝|r
    .goto The Barrens,63.35,38.45
    .target Sputtervalve
    .target Wharfmaster Dizzywig
    .isQuestComplete 896
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 863 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .target Sputtervalve
    .isQuestComplete 863
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .target Sputtervalve
step
    #label RapHorsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 865 >>接任务: |cRXP_LOOT_迅猛龙角|r
    .accept 1069 >>接任务: |cRXP_WARN_深苔蜘蛛的卵|r
    .target Sputtervalve
    .target Mebok Mizzyrix
step << Warrior
    #season 2
    .goto The Barrens,62.77,38.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔克斯|r
    >>|cRXP_BUY_从他那里买一只|r|T135129:0|t[鱼叉]|cRXP_Buy_|r
    .collect 208773,1 --钓鱼 Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .goto The Barrens,64.51,39.32
    .use 208773 >>在|cRXP_ENEMY_Bruuz|r上使用|T135129:0|t[鱼叉]并杀死他。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] << Warrior
    >>|cRXP_WARN_他在水中的沉船周围巡逻|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]|cRXP_WARN_to train|r|T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_Inkeeper Wiley|r交谈
    >>|cRXP_BUY_从他那里购买|r|T133918:0|t[Longjaw Mud Snappers]|cRXP_Buy_|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|t[Longjaw Mud Snappers]|cRXP_WARN_非常便宜，想买多少就买多少|r
    .vendor >>供应商垃圾箱
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
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
    #label LeaveRatchet
    .goto The Barrens,63.58,49.25
    >>将|cRXP_PICK_Crate|r洗劫一空
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >>将|cRXP_PICK_Crate|r洗劫一空
    .complete 888,1 --Shipment of Boots (1)
step << Warrior
    #completewith next
    .subzone 385 >>前往Northwatch Hold
step << Warrior
    #season 2
    .goto The Barrens,62.55,56.31
    >>单击|cRXP_PICK_Alliance Warbanner |r
    >>在斯通布雷中尉出生时杀死他。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]|cRXP_WARN_to train|r|T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1
step
    #completewith TestSeeds
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>杀死|cRXP_ENEMY_Sunscale镰刀爪|r。掠夺它们的|cRXP_Loot_Horns|r和|cRXP-Loot_Features|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>偷走地上的|cRXP_PICK_Stolen Silver|r
    .complete 3281,1 --Stolen Silver (1)
step
    #xprate <1.5
    #completewith Verog
    >>在停滞的绿洲周围收集|cRXP_OOT_Laden蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate >1.49
    #completewith next
    >>在停滞的绿洲周围收集|cRXP_OOT_Laden蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>单击水下的|cRXP_PICK_Bubble Fissure|r
    .complete 877,1 --Test the Dried Seeds (1)
step << Druid/Mage
    #season 2
    #completewith Verog
    >>杀死|cRXP_ENEMY_Kolkar|r。掠夺它们一个|T134237:0|t[|cRXD_Loot_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step
    #xprate <1.5
    #completewith next
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
    >>在绿洲周围杀死|cRXP_ENEMY_Kolkar|r。掠夺他们的|cRXP_Loot_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #xprate <1.5
    #label Verog
    .goto The Barrens,52.95,41.75
    >>杀死|cRXP_ENEMY_Verog|r。掠夺他的|cRXX_Loot_Head|r
    >>|cRXP_WARN_每次杀死一个|cRXP_ENEMY_Kolkar|r时，他都有机会产卵|r
    >>|cRXP_WARN_在人口稠密的服务器或新发布的服务器上，你最好的选择是露营他的产卵点|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step << Druid/Mage
    #season 2
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
    >>杀死|cRXP_ENEMY_Kolkar|r。掠夺它们一个|T134237:0|t[|cRXD_Loot_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid/Mage
    #season 2
    .goto The Barrens,52.7,41.8
    >>打开一个|cRXP_PICK_Kolkar Booty|r箱子|T132942:0|t[|cRXP-FRIENDLY_Ferocious Idol|r] << Druid
    >>打开|cRXP_PICK_Kolkar Booty|r胸部|T134939:0|t[|cRXP_FRIENDLY_Spell备注：TENGI RONEERA|r] << Mage
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 << Druid --Ferocious Idol (1)
    .collect 208754,1 << Mage --Spell Notes: TENGI RONEERA (1)
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid
    #season 2
    #completewith Nest
    .equip 18,208689 >>|cRXP_WARN_quip the |r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol |r]|cRXP-WARN_Once you learned |r|T132115:0|t[Cat Form]
    .use 208689
    .itemcount 208689,1
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid
    #season 2
    #completewith Nest
    .train 407988 >>|cRXP_WARN_从|r|T132152:0|t[Rip]|cRXP_WARN_or|r|T132122:0|t[Rake]|cRXP_WARN_to类人身上获得20次流血伤害，然后使用|r|T232942:0|t[|cRXP-FRIENDLY_Ferocious Idol |r]|cRX P_WARN_gain学习|r|T236167:0|t[野蛮咆哮]
    .use 208689
    .itemcount 208689,1
step << Mage
    #season 2
    .train 401767 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：TENGI RONEERA|r]|cRXP-WARN_to train|r|T132869:0|t[再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step
    #loop
    .goto The Barrens,55.72,42.14,0
    .waypoint The Barrens,55.72,42.14,30,0
    .waypoint The Barrens,55.49,41.75,30,0
    .waypoint The Barrens,55.09,41.58,30,0
    .waypoint The Barrens,55.03,42.24,30,0
    .waypoint The Barrens,55.27,43.17,30,0
    .waypoint The Barrens,55.78,43.47,30,0
    .waypoint The Barrens,56.15,43.28,30,0
    .waypoint The Barrens,56.08,42.58,30,0
    .waypoint The Barrens,55.72,42.14,30,0
    >>在停滞的绿洲周围收集|cRXP_OOT_Laden蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LakotaMani
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >>单击|cRXP_PICK_Blue Raptor Nest|r。如果您没有|T132914:0|t[Sunscale Feather]，请杀死更多|cRXP_ENEMY_Sunscale Scythefalls|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>单击|cRXP_PICK_Red Raptor Nest|r。如果您没有|T132914:0|t[Sunscale Feather]，请杀死更多|cRXP_ENEMY_Sunscale Scythefalls|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>单击|cRXP_PICK_Yellow Raptor Nest|r。如果您没有|T132914:0|t[Sunscale Feather]，请杀死更多|cRXP_ENEMY_Sunscale Scythefalls|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>杀死|cRXP_ENEMY_Sunscale镰刀爪|r。掠夺它们的|cRXX_Loot_Horns|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血肉模糊的尸体|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>杀死|cRXP_ENEMY_Stormsnouts|r。掠夺它们以获得|cRXX_Loot_雷霆蜥蜴角|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>杀死|cRXP_ENEMY_Lakota'mani|r。为|T132318:0|t[|cRXP-Loot_Hoof|r]掠夺他
    >>|cRXP_WARN_使用|T132318:0|t[|cRXP_LOOT_Hoop of Lakota'mani|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    >>|cRXP_WARN_如果找不到他，跳过这一步|r
	.collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
	.accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
    .use 5099
    .unitscan Lakota'mani
step
    #completewith SetCampTaurajoHS
    >>杀死|cRXP_ENEMY_Stormsnouts|r。掠夺它们以获得|cRXP_Loot_Horn|r。现在不必完成此操作
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_你需要学会|r|T135813:0|t[自焚陷阱]|cRXP_WARN_or任何其他陷阱才能获得此符文|r
step << Hunter
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
step << Hunter
    #season 2
    .train 410110 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_野兽精通之路|r]|cRXP-WARN_训练|r|T132270:0|t[野兽精通]
    .use 208701
    .itemcount 208701,1
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
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
    .target Jorn Skyseer
    .isOnQuest 883
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
    .goto The Barrens,51.95,31.58
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
    .destroy 5165 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_赤鳞迅猛龙的羽毛|r|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里购买|r|T134410:0|t[中等测验]|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 851 >>交任务: |cRXP_FRIENDLY_狂热的维罗戈|r
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label Leaders
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 851 >>交任务: |cRXP_FRIENDLY_狂热的维罗戈|r
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
    .target Regthar Deathgate
step
    #xprate >1.49
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .target Regthar Deathgate
step
    #xprate <1.5
    #completewith Hezrul
    .subzone 387 >>前往卢什沃特绿洲
    .isQuestTurnedIn 851
step
    #xprate <1.5
    #completewith Hezrul
    >>杀死你正在寻找的|cRXP_ENEMY_Oasis Snapjaws |r |cRXX_ENEMY_Hezrul Bloodmark|r。掠夺它们的|cRXP_OOT_Shell|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #xprate <1.5
    #completewith next
    >>在绿洲周围杀死|cRXP_ENEMY_Kolkar|r。掠夺他们的|cRXP_Loot_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #xprate <1.5
    #loop
    #label Hezrul
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
    #xprate <1.5
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
    >>在绿洲周围杀死|cRXP_ENEMY_Kolkar|r。掠夺他们的|cRXP_Loot_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .itemcount 5030,5 --Centaur Bracers (5)
    .isOnQuest 855
step << Druid
    #season 2
    .goto The Barrens,48.32,40.25
    >>打开地面上的|cRXP_PICK_Empty Snapjaw Nest|r进行|T134419:0|t[|cRXP-FRIENDLY_Rune of Lacerate|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate |r]|cRXP_WARN_to train|r|T132131:0|t[Lacerate]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
step
    #xprate <1.5
    #completewith CounterattackComplete
    .abandon 855 >>放弃半人马座手镯，因为你之前没有掠夺足够的东西来完成它
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 >>交任务: |cRXP_FRIENDLY_赫兹鲁尔·血印|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 >>交任务: |cRXP_FRIENDLY_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #completewith CounterattackComplete
    +|cRXP_WARN_下一个任务很难&建议分组。你可以使用任务给予者所在的建筑将战神克罗姆扎尔风筝放在周围|r
    +|cRXP_WARN_如果你不能完成这个任务，就跳过它。你将有另一个机会在更高的水平上完成它|r
    .isQuestTurnedIn 852
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 4021 >>接任务: |cRXP_LOOT_人马无双！|r
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <1.5
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>一旦克罗姆扎尔出现，杀死他。抢走他掉在地上的|cRXP_PICK_Banner |r
    >>|cRXP_WARN_小心！他是一名强大的精英，由至少两名|r|cRXP_ENEMY_Kolkar|r|cRXP_WARN_mobs防守|r
    >>|cRXP_WARN_它可能需要3分钟才能产卵|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #completewith StonetalonPickups
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <1.5
    #loop
    .goto The Barrens,40.28,15.49,0
    .waypoint The Barrens,40.28,15.49,40,0
    .waypoint The Barrens,39.50,14.68,40,0
    .waypoint The Barrens,39.47,13.24,40,0
    .waypoint The Barrens,38.94,12.80,40,0
    .waypoint The Barrens,38.18,12.56,40,0
    .waypoint The Barrens,37.96,13.52,40,0
    .waypoint The Barrens,38.62,13.95,40,0
    .waypoint The Barrens,38.18,14.62,40,0
    .waypoint The Barrens,38.14,15.59,40,0
    .waypoint The Barrens,37.29,15.68,40,0
    .waypoint The Barrens,37.24,16.26,40,0
    .waypoint The Barrens,37.67,16.34,40,0
    .waypoint The Barrens,38.35,17.08,40,0
    .waypoint The Barrens,38.83,17.71,40,0
    .waypoint The Barrens,39.37,17.21,40,0
    .waypoint The Barrens,39.87,16.66,40,0
    .waypoint The Barrens,40.15,15.98,40,0
    >>杀死|cRXP_ENEMY_Witchwing Slayers|r。掠夺他们的|cRXP_Loot_Rings
    >>|cRXP_WARN_小心|cRXP_ENEMY_Witchwing Slayers|r cast|r|T135358:0|t[Execute]|cRXP_WARN_（当你的生命值低于20%时会造成大量伤害），|cRXD_ENEMY_ WitchwingAmbusher|r是|r|T132320:0|t[Stealted]|cRXP_WARN_并四处巡逻|r
    >>|cRXP_WARN_注意|r|cRXP_ENEMY_巫师伏击者|r|cRXP_WARN_。他们在该地区潜行巡逻|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
    .isOnQuest 875
step
    #label StonetalonPickups
    #completewith next
    .goto The Barrens,35.26,27.88,30 >>向|cRXP_FRIENDLY_Sereth|r行进
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    #label StonetalonPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r, |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 1061 >>交任务: |cRXP_FRIENDLY_石爪之灵|r
    .accept 1062 >>接任务: |cRXP_LOOT_地精侵略者|r
    .goto The Barrens,35.26,27.88
    .accept 6548 >>接任务: |cRXP_LOOT_为我的村庄复仇|r
    .goto The Barrens,35.19,27.79
    .target Seereth Stonebreak
    .target Makaba Flathoof
    .maxlevel 20 << !Druid
step
    #optional
    #map Stonetalon Mountains
    #label StonetalonPickups
    .goto The Barrens,35.26,27.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .turnin 1061 >>交任务: |cRXP_FRIENDLY_石爪之灵|r
    .accept 1062 >>接任务: |cRXP_LOOT_地精侵略者|r
    .target Seereth Stonebreak
]])

RXPGuides.RegisterGuide([[
#classic
#xprate <1.99
<< Horde
#name 17-22 石爪山脉/贫瘠之地/灰谷
#version 11
#group RestedXP部落1-22
#next RestedXP部落22-30\22-24 Hillsbrad


step << Druid
    #season 2
    #completewith next
    >>杀死|cRXP_ENEMY_Grimtotam牛头人|r。掠夺他们以获得|T134233:0|t[|cRXP-FRIENDLY_Idol of the Wild|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .train 410021,1
step
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .waypoint Stonetalon Mountains,80.62,89.99,40,0
    .waypoint Stonetalon Mountains,79.79,88.75,40,0
    .waypoint Stonetalon Mountains,81.19,87.56,40,0
    .waypoint Stonetalon Mountains,81.70,86.44,40,0
    .waypoint Stonetalon Mountains,82.26,86.10,40,0
    .waypoint Stonetalon Mountains,82.55,85.22,40,0
    .waypoint Stonetalon Mountains,83.64,85.02,40,0
    .waypoint Stonetalon Mountains,84.20,85.20,40,0
    .waypoint Stonetalon Mountains,83.80,86.38,40,0
    .waypoint Stonetalon Mountains,83.25,87.23,40,0
    .waypoint Stonetalon Mountains,82.33,89.73,40,0
    .waypoint Stonetalon Mountains,82.33,90.43,40,0
    .waypoint Stonetalon Mountains,81.34,90.78,40,0
    >>杀死该区域的|cRXP_ENEMY_Grimtotam痞子|r和|cRXX_ENEMY_grimtotam雇佣军|r
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob Grimtotem Ruffian
    .mob Grimtotem Mercenary
    .isOnQuest 6548
step << Druid
    #season 2
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
    #season 2
    #completewith AvengeVillageTurnin
    .equip 18,210534 >>|cRXP_WARN_equp the |r|T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #season 2
    #completewith next
    >>|cRXP_WARN_施法|r|T136085:0|t[重生]|cRXP_WARN_or|r|T136041:0|t[Healing Touch]|cRXP_WARN_on 10种不同的友好动物，如狩猎宠物/熊形态的德鲁伊/鬼狼形态的萨满|r
    .train 410021 >>|cRXP_WARN_使用|r|T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]|cRXP_WARN_to train|r|T132143:0|t[狂野一击]
    .itemcount 210534,1
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6548 >>交任务: |cRXP_FRIENDLY_为我的村庄复仇|r
    .accept 6629 >>接任务: |cRXP_WARN_杀死格鲁迪格·暗云|r
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #optional
    #label AvengeVillageTurnin
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .accept 6629 >>接任务: |cRXP_WARN_杀死格鲁迪格·暗云|r
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>沿着小路往篝火前走
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>杀死|cRXP_ENEMY_Grundig Darkcloud|r和|cRXX_ENEMY_Grimtomem Brutes|r
    >>|cRXP_WARN_在开始内部任务之前，请确保您杀死所有六个|r|cRXP_ENEMY_Grimtotam Brutes|r|cRXP_WARN_b|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob Grundig Darkcloud
    .mob Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaya|r
    .accept 6523 >>接任务: |cRXP_LOOT_保护卡雅|r
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>护送|cRXP_FRIENDLY_Kaya|r并靠近她
    >>|cRXP_WARN_小心！当你到达Aparaje营地的篝火时，三个|r|cRXP_ENEMY_Grimtoms|r|cRXP_WARN_将产卵|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛吉拉|r
    .accept 6461 >>接任务: |cRXP_LOOT_盗窃的蜘蛛|r
    .target Xen'Zilla
step << Priest/Mage/Warlock
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    >>杀死你看到的每一个|cRXP_ENEMY_Deepmoss Creeper|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    .goto Stonetalon Mountains,59.08,75.70
    >>单击|cRXP_FRIENDLY_Wanted海报|r
    .accept 6284 >>接任务: |cRXP_LOOT_贝瑟莱斯|r
    .group << Priest/Mage
step << Warlock/Priest/Mage
    #completewith Besseleth1
    >>杀死|cRXP_ENEMY_Deepmoth毒液施放器|r和|cRXX_ENEMY_deepmoth爬行器|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Venomspitter
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    #completewith next
    >>在树旁偷走|cRXP_PICK_蜘蛛蛋|r
    >>|cRXP_WARN_小心！|r|cRXP_ENEMY_Deepmoth孵化器|r|cRXP_WARN_有机会召唤出22级|r| cRXP__ENEMY_Deemmoth矩阵|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    #label Besseleth1
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67
    >>杀死|cRXP_ENEMY_Besseleth|r。为她掠夺她|cRXX_Loot_Fang |r
    >>|cRXP_WARN_清除|r|cRXP_ENEMY_Besseleth|r|cRXP_WARN_周围的区域。她给你织网时要小心。用圆点让她永远感到恐惧|r << Warlock
    >>|cRXP_WARN_这个任务是可选的。如果你做不到，跳过这个任务。你可以稍后再试|r << Warlock
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .group 2 << Priest/Mage
step << Warlock/Priest/Mage
    .goto Stonetalon Mountains,54.99,76.03
    >>杀死|cRXP_ENEMY_Deepmoth爬行器|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
    .group 0 << Priest/Mage
step << !Warlock
    .goto Stonetalon Mountains,67.38,86.99,80,0
    .goto Stonetalon Mountains,61.44,81.74,80,0
    .goto Stonetalon Mountains,58.44,75.90,40,0
    .goto Stonetalon Mountains,54.99,76.03
    >>杀死|cRXP_ENEMY_Deepmoth爬行器|r
    >>|cRXP_WARN_保存任意|r|T134339:0|t[小毒囊]|cRXP_WARN_您的战利品|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>前往太阳岩疗养院
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板杰卡|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isOnQuest 1483
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基达|r
    .vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_如果它们用完了|r << !Warrior
    .vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134413:0|t[生命根]|cRXP-Buy_如果它们用完了|r << Warrior
    .target Jeeda
    .isOnQuest 1483
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
	.turnin 6284 >>交任务: |cRXP_FRIENDLY_贝瑟莱斯|r
    .target Maggran Earthbinder
	.isQuestComplete 6284
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔姆|r
    .fp Sun Rock Retreat >>获取Sun Rock Retreat飞行路线
    .target Tharm
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >>向|cRXP_FRIENDLY_Ziz|r行进
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
    .turnin 1483 >>交任务: |cRXP_FRIENDLY_菲兹克斯|r
    .accept 1093 >>接任务: |cRXP_LOOT_超级收割机6000|r
    .target Ziz Fizziks
step
    #completewith next
    >>杀死|cRXP_ENEMY_Deepmoss毒液发射器|r
    >>|cRXP_WARN_保存任意|r|T134339:0|t[小毒囊]|cRXP_WARN_您的战利品|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step
    #completewith Windshear
    >>在树旁偷走|cRXP_PICK_蜘蛛蛋|r
    >>|cRXP_WARN_小心！|r|cRXP_ENEMY_Deepmoth孵化器|r|cRXP_WARN_有机会召唤出22级|r| cRXP__ENEMY_Deemmoth矩阵|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
    .waypoint Stonetalon Mountains,59.25,61.55
    .waypoint Stonetalon Mountains,60.37,60.10
    .waypoint Stonetalon Mountains,61.34,59.15
    .waypoint Stonetalon Mountains,61.15,57.85
    .waypoint Stonetalon Mountains,61.41,56.77
    .waypoint Stonetalon Mountains,62.21,58.55
    .waypoint Stonetalon Mountains,63.12,60.02
    .waypoint Stonetalon Mountains,64.69,60.03
    .waypoint Stonetalon Mountains,62.76,61.69
    .waypoint Stonetalon Mountains,62.50,62.92
    .waypoint Stonetalon Mountains,62.48,64.15
    .waypoint Stonetalon Mountains,61.85,66.07
    .waypoint Stonetalon Mountains,60.71,66.12
    .waypoint Stonetalon Mountains,60.96,63.99
    .waypoint Stonetalon Mountains,60.25,63.21
    >>杀死|cRXP_ENEMY_Deepmoss毒液发射器|r
    >>|cRXP_WARN_保存任意|r|T134339:0|t[小毒囊]|cRXP_WARN_您的战利品|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Orc Warrior/Tauren Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #completewith BluePrints
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Undead Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尼克斯|r
    .vendor >>|cRXP_BUY_从他那里买一把|r|T135329:0|t[刽子手之剑]|cRXP_Buy_|r
    >>|cRXP_WARN_如果没有，请购买|r|T135280:0|t[Dacian Falx]|cRXP_WARN_instead|r
    .money <1.5024
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Undead Warrior
    #completewith BluePrints
    +装备|T135329:0|t[刽子手之剑]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Undead Warrior
    #completewith BluePrints
    +装备|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Shaman
    #season 0
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #completewith BluePrints
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 2
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。从他那里买一个|r|T133476:0|t[Flail]|r
    .collect 925,1,899,1 --Collect Flail (1)
    .money <0.7797
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #completewith BluePrints
    +装备|T133476:0|t[襟翼]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
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
    #label Windshear
    .subzone 461 >>前往Windshear Crag
    .isOnQuest 1093
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
    .goto Stonetalon Mountains,61.50,55.12,0
    .waypoint Stonetalon Mountains,61.50,55.12,50,0
    .waypoint Stonetalon Mountains,60.48,55.10,50,0
    .waypoint Stonetalon Mountains,59.80,53.69,50,0
    .waypoint Stonetalon Mountains,59.53,52.52,50,0
    .waypoint Stonetalon Mountains,60.80,51.23,50,0
    .waypoint Stonetalon Mountains,62.06,54.39,50,0
    .waypoint Stonetalon Mountains,62.63,55.35,50,0
    .waypoint Stonetalon Mountains,63.63,54.42,50,0
    .waypoint Stonetalon Mountains,65.42,54.15,50,0
    .waypoint Stonetalon Mountains,66.83,54.92,50,0
    .waypoint Stonetalon Mountains,68.64,54.03,50,0
    .waypoint Stonetalon Mountains,69.86,53.53,50,0
    .waypoint Stonetalon Mountains,70.34,56.41,50,0
    .waypoint Stonetalon Mountains,67.90,56.96,50,0
    .waypoint Stonetalon Mountains,66.25,56.64,50,0
    .waypoint Stonetalon Mountains,65.29,57.14,50,0
    .waypoint Stonetalon Mountains,64.27,57.63,50,0
    >>杀死|cRXP_ENEMY_Venture Co.记录器|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
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
    >>|cRXP_WARN_保存任意|r|T134339:0|t[小毒囊]|cRXP_WARN_您的战利品|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
    .zoneskip Moonglade
step << Druid
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
    #completewith JornSkyseerTurnin
    .hs >>Hearth前往陶拉霍营地
    .use 6948
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Byula
    .isOnQuest 3261
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 3261 >>交任务: |cRXP_FRIENDLY_乔恩·星眼|r
    .accept 882 >>接任务: |cRXP_LOOT_伊沙姆哈尔|r
    .target Jorn Skyseer
step
	#completewith LakotaMani
    >>杀死|cRXP_ENEMY_Stormsnouts|r。掠夺它们以获得|cRXP_Loot_Horn|r
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
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>杀死|cRXP_ENEMY_Lakota'mani|r。为|T132318:0|t[|cRXP-Loot_Hoof|r]掠夺他
    >>|cRXP_WARN_使用|T132318:0|t[|cRXP_LOOT_Hoop of Lakota'mani|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    >>|cRXP_WARN_如果找不到他，跳过这一步|r
	.collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
	.accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>杀死|cRXP_ENEMY_Stormsnouts|r。掠夺它们以获得|cRXP_Loot_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
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
step << Warlock/Shaman
#loop
	.line The Barrens,50.71,54.60,50.74,55.33,50.73,56.78,50.42,57.23,50.50,57.65,50.87,57.50,51.26,57.84,51.74,57.69,51.79,57.10,53.08,54.69,53.65,54.27,53.63,53.53,53.35,52.72,53.00,51.83,52.62,52.19,52.59,52.71,52.41,53.07,52.32,53.71,51.39,54.22
	.goto The Barrens,50.71,54.60,25,0
	.goto The Barrens,50.74,55.33,25,0
	.goto The Barrens,50.73,56.78,25,0
	.goto The Barrens,50.42,57.23,25,0
	.goto The Barrens,50.50,57.65,25,0
	.goto The Barrens,50.87,57.50,25,0
	.goto The Barrens,51.26,57.84,25,0
	.goto The Barrens,51.74,57.69,25,0
	.goto The Barrens,51.79,57.10,25,0
	.goto The Barrens,53.08,54.69,25,0
	.goto The Barrens,53.65,54.27,25,0
	.goto The Barrens,53.63,53.53,25,0
	.goto The Barrens,53.35,52.72,25,0
	.goto The Barrens,53.00,51.83,25,0
	.goto The Barrens,52.62,52.19,25,0
	.goto The Barrens,52.59,52.71,25,0
	.goto The Barrens,52.41,53.07,25,0
	.goto The Barrens,52.32,53.71,25,0
	.goto The Barrens,51.39,54.22,25,0
    .xp 19+11000 >>升级到11000+/21300 xp
    --VV 1.5x Add 1.5x grind step
step
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    .goto The Barrens,50.88,52.96
    >>杀死|cRXP_ENEMY_Stormsnouts|r。掠夺它们以获得|cRXP_Loot_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>杀死|cRXP_ENEMY_Sunscale镰刀爪|r。掠夺它们的|cRXX_Loot_Horns|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
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
    .goto The Barrens,52.0,46.5,90,0
    .goto The Barrens,57.3,53.7
    >>杀死|cRXP_ENEMY_Sunscale镰刀爪|r。掠夺它们的|cRXX_Loot_Horns|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>杀死任何|cRXP_ENEMY_Zhevra|r。掠夺它以获得|cRXX_Loot_新鲜Zhevra尸体|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
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
step << Shaman/Priest
    #season 2
    #loop
    .goto The Barrens,55.77,34.01,40,0 --Spawn 1
    .goto The Barrens,55.83,34.21,40,0
    .goto The Barrens,54.81,35.95,40,0 --Spawn 2
    .goto The Barrens,54.96,35.72,40,0
    .goto The Barrens,57.47,36.03,40,0 --Spawn 3
    .goto The Barrens,57.56,35.78,40,0
    .goto The Barrens,57.46,35.70,40,0
    .goto The Barrens,57.59,38.36,40,0 --Spawn 4
    .goto The Barrens,57.49,38.65,40,0
    .goto The Barrens,58.82,37.67,40,0 --Spawn 5
    .goto The Barrens,58.92,37.53,40,0
    .goto The Barrens,58.94,37.73,40,0
    >>在|cRXP_ENEMY_Desert Mirage|r上施放|T136075:0|t[清除]以杀死它。为|T134419:0|t|cRXX_Loot_[地球符文]|r掠夺它 << Shaman
    >>在|cRXP_ENEMY_Desert Mirage|r上施放|T135894:0|t[驱散魔法]以杀死它。为|T135975:0|t[|cRXP_FRIENDLY_王者幻灭之神|r]掠夺它 << Priest
    .collect 208758,1 << Shaman --Earthen Rune (1)
    .collect 205932,1 << Priest-- Prophecy of a King's Demise (1)
    .unitscan Desert Mirage
    .train 410107,1 << Shaman
    .train 402849,1 << Priest
    .train 370,3 << Shaman --Purge
    .train 527,3 << Priest --Dispel Magic
--XX Respawns after 85s-170s
step
    #completewith next
    >>杀死任何|cRXP_ENEMY_Zhevra|r。掠夺它以获得|cRXX_Loot_新鲜Zhevra尸体|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto The Barrens,59.71,30.33
    .use 10338 >>使用枯树处的|T134368:0|t[|cRXP_LOOT_Fresh Zhevra Carcass|r]召唤|cRXT_ENEMY_Ishamuhale|r。杀死并掠夺他的|cRXX_LOOT_Fang |r
    >>|cRXP_WARN_尸体只有30分钟的持续时间！|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .goto The Barrens,63.07,36.31 << Rogue
    .goto The Barrens,62.68,36.23 << !Rogue
    .subzone 392 >>Travel to Ratchet
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
    #sticky
    #completewith FlytoXroads
    #season 2
    .goto The Barrens,61.8,39.4
    >>|cRXP_WARN_如果你有|cRXP_LOOT_3黄金|r，你可以从棘轮客栈|r|cRXP_FRIENDLY_Grizzby|r|cRXP_WARN_in购买符文。自己判断你是否负担得起，符文是否对你的职业有用。你以后总是可以买的|r
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
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
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
    .isQuestTurnedIn 865
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克斯宾德|r
    .vendor >>从他那里购买|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]（如果有）
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
step << Warrior
    #completewith FlytoXroads
    +装备|T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r] 
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
step << Rogue/Hunter/Warrior/Shaman/Druid
    #completewith FlytoXroads
    +装备|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .xp <20,1
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维尔雷|r
    .home >>把你的炉石放在棘轮上
    .target Innkeeper Wiley
    .dungeon WC
    .isQuestTurnedIn 865
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
step << Hunter
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
    .accept 6541 >>接任务: |cRXP_LOOT_向卡德拉克报到|r
    .target Thork
step
    #xprate <1.5
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .turnin 875 >>交任务: |cRXP_FRIENDLY_鹰身人首领|r
    .accept 876 >>接任务: |cRXP_WARN_塞瑞娜·血羽|r
    .target Darsok Swiftdagger
    .isQuestComplete 875
 step
    #xprate <1.5
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .accept 876 >>接任务: |cRXP_WARN_塞瑞娜·血羽|r
    .target Darsok Swiftdagger
    .isQuestTurnedIn 875
step
    #label XroadsHS2
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
    .destroy 5085 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_刺背野猪人的獠牙|r|r
    .itemcount 5085,1
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .dungeon !WC
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
    .goto Eastern Kingdoms,40.89,82.09,8,0
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
step
    #optional
    #completewith Thunderhawk
    .goto The Barrens,44.55,59.27,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
    +|cRXP_WARN_使用您的|r|T134128:0|t[|cRXP_OOT_Blood Shard|r]|cRXP-WARN_to获取buff。至少保存其中的4个以便以后使用|r
    +|cRXP_WARN_请确保关闭Questie或Leatrix Plus等插件的任何自动完成功能！|r
    .target Mangletooth
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务: |cRXP_FRIENDLY_伊沙姆哈尔|r
    .accept 907 >>接任务: |cRXP_WARN_被激怒的雷霆蜥蜴|r
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务: |cRXP_FRIENDLY_伊沙姆哈尔|r
    .accept 907 >>接任务: |cRXP_WARN_被激怒的雷霆蜥蜴|r
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
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
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .turnin 907 >>交任务: |cRXP_FRIENDLY_被激怒的雷霆蜥蜴|r
    .accept 913 >>接任务: |cRXP_WARN_雷鹰的嘶鸣|r
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>交任务: |cRXP_FRIENDLY_被激怒的雷霆蜥蜴|r
    .accept 913 >>接任务: |cRXP_WARN_雷鹰的嘶鸣|r
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
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
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
step
    #completewith next
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    >>|cRXP_WARN_如果你找不到他，暂时跳过这一步|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
step
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    .goto The Barrens,44.83,63.12
    >>杀死一个|cRXP_ENEMY_Thunderhawk Hatchling|r或一个|rRXP_ENEMY_Thunder霍克Cloudscraper|r。掠夺它的|cRXD_Loot_TThunderhake Wing|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
    .accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
    .accept 6382 >>接任务: |cRXP_WARN_灰谷狩猎|r << Hunter
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
    .accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
    .accept 6382 >>接任务: |cRXP_WARN_灰谷狩猎|r << Hunter
    .target Jorn Skyseer
step
    #xprate <1.5
    #completewith Serena
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>飞向十字路口
    .target Omusa Thunderhorn
    .isQuestTurnedIn 852 << !Hunter
step
    #xprate >1.49
    #completewith CounterattackTurnin2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>飞向十字路口
    .target Omusa Thunderhorn
    .isQuestTurnedIn 852 << !Hunter
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 >>交任务: |cRXP_FRIENDLY_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #completewith Serena
    .abandon 855 >>Abandon Centaur Bracers
step
    #completewith CounterattackTurnin2
    +|cRXP_WARN_下一个任务很难&建议分组。你可以使用任务给予者所在的建筑将战神克罗姆扎尔风筝放在周围|r
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 4021 >>接任务: |cRXP_LOOT_人马无双！|r
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto The Barrens,44.48,28.15
    >>一旦克罗姆扎尔出现，杀死他。抢走他掉在地上的|cRXP_PICK_Banner |r
    >>|cRXP_WARN_小心！他是一名强大的精英，由至少两名|r|cRXP_ENEMY_Kolkar|r|cRXP_WARN_mobs防守|r
    >>|cRXP_WARN_它可能需要3分钟才能产卵|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #label CounterattackTurnin2
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label Serena
    .goto The Barrens,39.16,12.16
    >>杀死|cRXP_ENEMY_Serena Bloodflowe|r。为她掠夺她|cRXX_Loot_Head |r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
    .isQuestTurnedIn 875
step << Hunter
    .goto The Barrens,49.05,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维妮·布特巴克|r
    .turnin 3921 >>交任务: |cRXP_FRIENDLY_维妮·布特巴克|r
    .target Wenikee Boltbucket
    .isOnQuest 3921
step << Hunter
    .goto The Barrens,48.12,5.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托雷克|r
    .turnin 6541 >>交任务: |cRXP_FRIENDLY_向卡德拉克报到|r
    .target Kadrak
step << Hunter
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托雷克|r
    >>|cRXP_FRIENDLY_Torek|r|cRXP_WARN_has a 5 minutes respawn time|r
    .accept 6544 >>接任务: |cRXP_LOOT_托雷克的突袭|r
    .target Torek
step << Hunter
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>关注|cRXP_FRIENDLY_Torek|r
    >>让|cRXP_FRIENDLY_TORK|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r坦克|cRXP_ENEMY_Silverwing Warriors|r和|cRXD_ENEMY_ SilverwingSentinel|r
    >>当你清空大楼时，向阳台跑去。当|cRXP_ENEMY_Duriel Moonfire|r到来时，让|cRXP_FRIENDLY_Torek|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r在你造成伤害之前发动攻击
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step << Hunter
    .goto Ashenvale,73.04,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔托格·怒齿|r
    .turnin 6544 >>交任务: |cRXP_FRIENDLY_托雷克的突袭|r
    .target Ertog Ragetusk
    .isQuestComplete 6544
step << Hunter
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
    .turnin 6382 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
    .turnin 6383 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
    .target Senani Thunderheart
step << Hunter
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
    .fp Splintertree Post >>获取Splinterree Post飞行路径
    .target Vhulgra
step << Hunter
    #completewith EnterSTM2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
    .fly Crossroads >>飞向十字路口
    .target Vhulgra
    .cooldown item,6948,<0
    .zoneskip The Barrens
step
    #completewith EnterSTM2
    .hs >>十字路口之心
    .use 6948
    .cooldown item,6948,>0
    .isQuestComplete 876
    .dungeon !WC
    .zoneskip The Barrens
step << !Hunter
    #completewith EnterSTM2
    .goto The Barrens,52.09,30.43,120 >>前往十字路口。您也可以升级直到您的|T134414:0|t[炉石]恢复
    .cooldown item,6948,<0
    .isQuestComplete 876
    .dungeon !WC
step
    #completewith next
    .hs >>赫斯到棘轮
    .use 6948
    .cooldown item,6948,>0
    .isQuestComplete 876
    .dungeon WC
step
    #completewith EnterSTM2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>飞向十字路口
    .target Bragok
    .dungeon WC
step
    #xprate <1.5
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 876 >>交任务: |cRXP_FRIENDLY_塞瑞娜·血羽|r
    .accept 1060 >>接任务: |cRXP_LOOT_写给金吉尔的信|r
    .target Darsok Swiftdagger
    .isQuestComplete 876
step
    #xprate <1.5
    #optional
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    .accept 1060 >>接任务: |cRXP_LOOT_写给金吉尔的信|r
    .target Darsok Swiftdagger
    .isQuestTurnedIn 876
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    >>|cRXP_FRIENDLY_Helbrif|r|cRXP_WARN_开始一个45分钟的定时任务|r
    .accept 853 >>接任务: |cRXP_WARN_药剂师扎玛|r
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
    .accept 868 >>接任务: |cRXP_LOOT_蝎卵|r
    .target Korran
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_你正在进行一个定时任务，不要害怕。它将在提取后10-15分钟内被翻转|r
    .isOnQuest 853
step
    #label EnterSTM2
    #completewith STMturnins1
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
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r, |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 1062 >>交任务: |cRXP_FRIENDLY_地精侵略者|r
    .timer 4,Goblin Invaders RP
    .accept 1063 >>接任务: |cRXP_WARN_长者|r
    .accept 1068 >>接任务: |cRXP_WARN_伐木机|r
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>交任务: |cRXP_FRIENDLY_杀死格鲁迪格·暗云|r
    .goto The Barrens,35.19,27.79
    .target Seereth Stonebreak
    .target Makaba Flathoof
    .isQuestComplete 6629
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r, |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 1062 >>交任务: |cRXP_FRIENDLY_地精侵略者|r
    .timer 4,Goblin Invaders RP
    .accept 1063 >>接任务: |cRXP_WARN_长者|r
    .accept 1068 >>接任务: |cRXP_WARN_伐木机|r
    .goto The Barrens,35.26,27.88
    .turnin 6523 >>交任务: |cRXP_FRIENDLY_保护卡雅|r
    .accept 6401 >>接任务: |cRXP_LOOT_卡雅还活着|r
    .goto The Barrens,35.19,27.79
    .target Seereth Stonebreak
    .target Makaba Flathoof
    .isQuestComplete 6523
step
    #label STMturnins1
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .turnin 1062 >>交任务: |cRXP_FRIENDLY_地精侵略者|r
    .timer 4,Goblin Invaders RP
    .accept 1063 >>接任务: |cRXP_WARN_长者|r
    .accept 1068 >>接任务: |cRXP_WARN_伐木机|r
    .goto The Barrens,35.26,27.88
    .target Seereth Stonebreak
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左边的小路向上走
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
    .isQuestTurnedIn 876
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
    .accept 1058 >>接任务: |cRXP_WARN_金吉尔的森林魔法|r
    .target Witch Doctor Jin'Zil
step
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳到其中一个笼子上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>|cRXP_WARN_单击此处查看示例|r
step
    #completewith ElderCroneTurnin
    .goto Thunder Bluff,54.18,27.01,20,0
    .goto Thunder Bluff,50.75,37.07,40 >>乘电梯去雷霆崖
step << Druid
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_彻斯姆|r
    .bankdeposit 5075 >>存放您的|T134128:0|t[血碎片]
    .bankdeposit 5059 >>存入您的|T132938:0|t[挖爪]
    .target Chesmu
    .isOnQuest 868
step << Druid
    #optional
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_彻斯姆|r
    .bankdeposit 5075 >>存放您的|T134128:0|t[血碎片]
    .target Chesmu
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将您的炉石设置为雷霆崖
    .target Innkeeper Pala
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
step
    #label ElderCroneTurnin
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    >>|cRXP_WARN_等待RP完成|r
    .turnin 1063 >>交任务: |cRXP_FRIENDLY_长者|r
    .timer 6,The Elder Crone RP
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
    .dungeon !WC
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑟恩·草风|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Hunter
    #completewith HunterTraining2
    .goto Thunder Bluff,61.31,78.25,60 >>猎人崛起之旅
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
    .train 5118 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
    .train 5118 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <22,1
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
    .dungeon !WC
step << !Druid
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_彻斯姆|r
    .bankdeposit 5075 >>存放您的|T134128:0|t[血碎片]
    .bankdeposit 5059 >>存入您的|T132938:0|t[挖爪]
    .target Chesmu
    .isOnQuest 868
step << !Druid
    #optional
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_彻斯姆|r
    .bankdeposit 5075 >>存放您的|T134128:0|t[血碎片]
    .target Chesmu
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 199 >>Train Two-Handed Maces
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
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
    #sticky
    #completewith DeathDUPpickup
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice|r
    .accept 264 >>接任务: |cRXP_WARN_至死方休|r
    .target Clarice Foster
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
    .accept 1065 >>接任务: |cRXP_WARN_塔伦米尔之旅|r
    .accept 962 >>接任务: |cRXP_LOOT_毒蛇花|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
    .accept 1065 >>接任务: |cRXP_WARN_塔伦米尔之旅|r
    .accept 962 >>接任务: |cRXP_LOOT_毒蛇花|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
    .accept 1065 >>接任务: |cRXP_WARN_塔伦米尔之旅|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .isOnQuest 853
step
    #optional
    #label ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
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
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
    .train 2138 >>训练你的职业技能
    .target Archmage Shymm
    .xp <22,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
    .train 2645 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
    .train 8498 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <22,1
step
    #completewith next
    .skill firstaid,80 >>|cRXP_WARN_创建|r|T133688:0|t[Heavy Linen Bandages]|cRXP_WARN_直到你的技能达到80或更高|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
    >>|cRXP_WARN_如果您没有足够的|r|T132889:0|t[亚麻布]|cRXP_WARN_to达到80技能，请跳过此步骤|r
    .train 3277 >>火车|T133684:0|t[羊毛绷带]
    .train 7934 >>列车|T134437:0|t[抗毒液] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Create|r|T134437:0|t[抗毒液]|cRXP_WARN_if you found any |r|T134339:0|t]Small Venom Sacs]
    >>|cRXP_WARN_Save them for later|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
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
step << Warrior/Shaman
    #completewith next
    #softcore
    +|cRXP_FRIENDLY_如果它更便宜，你可以从拍卖行购买绿色武器|r
step << Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Etu|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #completewith KayaLives
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Etu|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #completewith KayaLives
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 2
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Etu|r|cRXP_BUY_交谈。从他那里买一个|r|T133476:0|t[Flail]|r
    .collect 925,1,493,1 --Collect Flail (1)
    .money <0.7797
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #completewith KayaLives
    +装备|T133476:0|t[襟翼]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
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
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
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
    #hardcore
    #completewith EnterWC
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Serpentbloom|r|cRXP_WARN_forEveryone|r
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>杀死你看到的所有|cRXP_ENEMY_Deviate Beast|r。掠夺他们的|cRXP_Loot_Hides|r
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_LOOT_Hides|r|cRXP_WARN_forEveryone|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #softcore
    #completewith EnterWC
    >>杀死你看到的所有|cRXP_ENEMY_Deviate Beast|r。掠夺他们的|cRXP_Loot_Hides|r
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
    #hardcore
    #completewith GlowingShard
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Serpentbloom|r|cRXP_WARN_forEveryone|r
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith GlowingShard
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith GlowingShard
    >>杀死|cRXP_ENEMY_Ectoplasm|r。掠夺它们的|cRXP_Loot_Essent|r
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_LOOT_Hides|r|cRXP_WARN_forEveryone|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #softcore
    #completewith GlowingShard
    >>杀死|cRXP_ENEMY_Ectoplasm|r。掠夺它们的|cRXP_Loot_Essent|r
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
    #completewith GShard
    .hs >>赫斯到棘轮
    .use 6948
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .turnin 1491 >>交任务: |cRXP_FRIENDLY_智慧饮料|r
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >>交任务: |cRXP_FRIENDLY_港口的麻烦|r
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervale|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervale
    .isOnQuest 6981
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔帕克|r
    >>|cRXP_WARN_他位于哭泣洞穴的洞穴入口上方|r
    .turnin 1486 >>交任务: |cRXP_FRIENDLY_变异皮革|r
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith WCEnd
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon WC
step << skip
    #completewith next
    .goto The Barrens,44.45,59.16,100 >>向南前往Taurajo营地
    .dungeon WC
step << skip
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
    #completewith next
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂之旅崛起，进入视野之池
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,23.0,21.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 962 >>交任务: |cRXP_FRIENDLY_毒蛇花|r
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    #label WCEnd
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
    #xprate <1.5
    #completewith KayaLives
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
--   .fp Thunder Bluff >>获得Thunder Bluff飞行路线 << !Tauren
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
    #xprate <1.5
    #label KayaLives
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
    .turnin 6401 >>交任务: |cRXP_FRIENDLY_卡雅还活着|r
    .target Tammra Windfield
    .isQuestTurnedIn 6523
step
    #xprate <1.5
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板杰卡|r
    >>|cRXP_WARN_不要设置|r|T134414:0|t[炉石]
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .vendor >>供应商垃圾箱
    .target Innkeeper Jayka
    .isOnQuest 1095
step
    #xprate <1.5
    .goto Stonetalon Mountains,47.52,62.38,5,0
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基达|r
    .vendor 4083 >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_如果它们用完了|r << !Warrior
    .vendor 4083 >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134413:0|t[生命根]|cRXP-Buy_如果它们用完了|r << Warrior
    .target Jeeda
    .isOnQuest 1095
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>沿着小路向右跑
step
    #xprate <1.5
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏纳曼|r
    .accept 6562 >>接任务: |cRXP_WARN_帮助耶努萨克雷|r
    .accept 6393 >>接任务: |cRXP_LOOT_元素战争|r
    .target Tsunaman
step << Hunter
    #xprate <1.5
    .goto Stonetalon Mountains,59.08,75.70
    >>单击|cRXP_FRIENDLY_Wanted海报|r
    .accept 6284 >>接任务: |cRXP_LOOT_贝瑟莱斯|r
step << Hunter
    #xprate <1.5
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67
    >>杀死|cRXP_ENEMY_Besseleth|r。为她掠夺她|cRXX_Loot_Fang |r
    >>|cRXP_WARN_清除|r|cRXP_ENEMY_Besseleth|r|cRXP_WARN_周围的区域。她给你织网时要小心|r
    >>|cRXP_WARN_这个任务是可选的。如果你做不到，跳过这个任务|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    #xprate <1.5
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
    .turnin 1095 >>交任务: |cRXP_FRIENDLY_新的指示|r
    .target Ziz Fizziks
step
    #xprate <1.5
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto Stonetalon Mountains,61.03,52.32,50,0
    .goto Stonetalon Mountains,60.33,51.68,50,0
    .goto Stonetalon Mountains,59.66,52.14,50,0
    .goto Stonetalon Mountains,59.81,53.51,50,0
    .goto Stonetalon Mountains,60.98,54.06,50,0
    .goto Stonetalon Mountains,61.10,54.68,50,0
    .goto Stonetalon Mountains,61.58,55.10,50,0
    .goto Stonetalon Mountains,62.32,56.11,50,0
    .goto Stonetalon Mountains,62.99,56.25,50,0
    .goto Stonetalon Mountains,63.72,56.80,50,0
    .goto Stonetalon Mountains,64.37,56.47,50,0
    .goto Stonetalon Mountains,65.14,57.02,50,0
    .goto Stonetalon Mountains,65.74,57.20,50,0
    .goto Stonetalon Mountains,66.41,56.31,50,0
    .goto Stonetalon Mountains,66.94,56.25,50,0
    .goto Stonetalon Mountains,67.77,55.97,50,0
    .goto Stonetalon Mountains,68.52,56.04,50,0
    .goto Stonetalon Mountains,69.76,56.70,50,0
    .goto Stonetalon Mountains,70.52,56.22,50,0
    .goto Stonetalon Mountains,70.82,55.25,50,0
    .goto Stonetalon Mountains,59.66,52.14
    >>杀死|cRXP_ENEMY_XT:9|r。它在河的南侧巡逻
    >>|cRXP_WARN_如果找不到，请跳过此步骤|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
step
    #xprate <1.5
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
    >>|cRXP_WARN_如果找不到，请跳过此步骤|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,73.78,59.52
    .subzone 2160 >>进入Windshear矿场
    .group
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_匹兹尼克|r
    >>|cRXP_WARN_这个任务需要5分钟，并将在设定的时间产生3波Kobolds：|r
    >>|cRXP_WARN_第一波15秒（3 Kobolds），第二波2分15秒（4 Kobolds，2个施法者2近战），第三波3分20秒（4神户）。目标在5分钟内完成|r
    .accept 1090 >>接任务: |cRXP_WARN_格雷苏的要求|r
    .target Piznik
    .group 2
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.77,60.19
    >>保护|cRXP_FRIENDLY_Piznik|r不受传入|cRXP_ENEMY_Windshear Vermin|r的影响
    >>|cRXP_WARN_第一波15秒（3 Kobolds），第二波2分15秒（4 Kobolds，2个施法者2近战），第三波3分20秒（4神户）。目标在5分钟内完成|r
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 2
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_匹兹尼克|r
    .turnin 1090 >>交任务: |cRXP_FRIENDLY_格雷苏的要求|r
    .accept 1092 >>接任务: |cRXP_WARN_格雷苏的要求|r
    .target Piznik
    .group
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.83,60.34
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_跳上木轮。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
    .group
step
    #xprate <1.5
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
    .turnin 1092 >>交任务: |cRXP_FRIENDLY_格雷苏的要求|r
    .target Ziz Fizziks
    .isQuestTurnedIn 1090
    .group
step
    #xprate <1.5
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto Stonetalon Mountains,61.03,52.32,30,0
    .goto Stonetalon Mountains,60.33,51.68,30,0
    .goto Stonetalon Mountains,59.66,52.14,30,0
    .goto Stonetalon Mountains,59.81,53.51,30,0
    .goto Stonetalon Mountains,60.98,54.06,30,0
    .goto Stonetalon Mountains,61.10,54.68,30,0
    .goto Stonetalon Mountains,61.58,55.10,30,0
    .goto Stonetalon Mountains,62.32,56.11,30,0
    .goto Stonetalon Mountains,62.99,56.25,30,0
    .goto Stonetalon Mountains,63.72,56.80,30,0
    .goto Stonetalon Mountains,64.37,56.47,30,0
    .goto Stonetalon Mountains,65.14,57.02,30,0
    .goto Stonetalon Mountains,65.74,57.20,30,0
    .goto Stonetalon Mountains,66.41,56.31,30,0
    .goto Stonetalon Mountains,66.94,56.25,30,0
    .goto Stonetalon Mountains,67.77,55.97,30,0
    .goto Stonetalon Mountains,68.52,56.04,30,0
    .goto Stonetalon Mountains,69.76,56.70,30,0
    .goto Stonetalon Mountains,70.52,56.22,30,0
    .goto Stonetalon Mountains,70.82,55.25,30,0
    .goto Stonetalon Mountains,59.66,52.14
    >>杀死|cRXP_ENEMY_XT:9|r。它在河的南侧巡逻
    >>|cRXP_WARN_如果找不到，请跳过此步骤|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
    .isQuestTurnedIn 1092
    .group 0
step
    #xprate <1.5
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto Stonetalon Mountains,67.18,46.87,30,0
    .goto Stonetalon Mountains,66.53,46.95,30,0
    .goto Stonetalon Mountains,65.72,45.09,30,0
    .goto Stonetalon Mountains,63.73,45.02,30,0
    .goto Stonetalon Mountains,63.72,45.92,30,0
    .goto Stonetalon Mountains,63.43,46.57,30,0
    .goto Stonetalon Mountains,64.43,46.13,30,0
    .goto Stonetalon Mountains,64.72,46.63,30,0
    .goto Stonetalon Mountains,64.82,47.72,30,0
    .goto Stonetalon Mountains,65.11,48.31,30,0
    .goto Stonetalon Mountains,65.98,48.67,30,0
    .goto Stonetalon Mountains,66.24,49.65,30,0
    .goto Stonetalon Mountains,66.65,49.58,30,0
    .goto Stonetalon Mountains,66.88,48.95,30,0
    .goto Stonetalon Mountains,68.41,49.58,30,0
    .goto Stonetalon Mountains,69.45,46.56,30,0
    .goto Stonetalon Mountains,70.22,48.62,30,0
    .goto Stonetalon Mountains,70.95,48.49,30,0
    .goto Stonetalon Mountains,71.41,45.54,30,0
    .goto Stonetalon Mountains,71.25,43.45,30,0
    .goto Stonetalon Mountains,64.82,47.23
    >>杀死|cRXP_ENEMY_XT:4|r。它在河的北侧巡逻
    >>|cRXP_WARN_如果找不到，请跳过此步骤|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
    .isQuestTurnedIn 1092
    .group 0
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >>输入Talondeep路径
step
    #xprate <1.5
    .goto Stonetalon Mountains,78.89,41.24
    .goto Ashenvale,40.40,53.06,30 >>|cRXP_WARN_跳到你右边的白色石头上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
    .zoneskip Ashenvale
step
    #xprate <1.5
    #season 0
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
    #xprate <1.5
    #season 2
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>前往佐拉姆加前哨
    >>|cRXP_WARN_途中一定要避开阿斯特拉纳尔护卫队。为了安全起见，请遵循航路点|r
    .unitscan Astranaar Sentinel
--XX Get teleported to just in front of Mystral lake in SoD
step
    #xprate <1.5
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
    #xprate <1.5
    #label ZoramFP
   .goto Ashenvale,12.24,33.80
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德鲁克|r
   .fp Zoram'gar Outpost >>获取Zoram'gar前哨飞行路线
   .target Andruk
step
    #xprate <1.5
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
    #xprate <1.5
   .goto Ashenvale,12.06,34.63
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格拉什|r
   >>|cRXP_WARN_这将开始一个护送任务。困难时要小心|r
   .accept 6641 >>接任务: |cRXP_WARN_鞭笞者沃尔沙|r
   .target Muglash
step
    #xprate <1.5
    #completewith next
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
    #xprate <1.5
   .goto Ashenvale,9.63,27.63
   >>到达后单击|cRXP_PICK_Brazier|r
   >>|cRXP_WARN_将有|r|cRXP_ENEMY_Naga|r|cRXP_WARN_的波浪产生。小心一次|r|cRXP_ENEMY_Vorsha|r|cRXP_WARN_comes，他打得很重|r
   >>|cRXP_WARN_你可以让|r|cRXP_FRIENDLY_Muglash|r|cRXP_WARN_在与他战斗之前发动一些攻击|r
   .complete 6641,1 --Defeat Vorsha the Lasher
   .mob Vorsha the Lasher
step << Priest
    #xprate <1.5
    #season 0,1
    #sticky
    #completewith EnterBFD
    .subzone 719 >>如果你想获得一个大魔杖升级（墓碑权杖），现在就为BFD找一个小组。当你在26至28级的阿申瓦尔时，你也可以等着做BFD
    .dungeon BFD
step
    #xprate <1.5
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
    #xprate <1.5
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
    .xp 21+21450 >>升级到21450+/25200 xp
    .dungeon !BFD << Priest
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战歌信使|r, |cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6641 >>交任务: |cRXP_FRIENDLY_鞭笞者沃尔沙|r
    .goto Ashenvale,12.22,34.21
    .turnin 6442 >>交任务: |cRXP_FRIENDLY_佐拉姆海岸的纳迦|r
    .goto Ashenvale,11.69,34.90
    .target Warsong Runner
    .target Marukai
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .accept 6563 >>接任务: |cRXP_WARN_阿库麦尔水晶|r
    .accept 6921 >>接任务: |cRXP_WARN_废墟之间|r
    .accept 6565 >>接任务: |cRXP_WARN_上古之神的仆从|r
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestTurnedIn 6564
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .accept 6563 >>接任务: |cRXP_WARN_阿库麦尔水晶|r
    .accept 6921 >>接任务: |cRXP_WARN_废墟之间|r
    .target Je'neu Sancrea
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Kalimdor,43.89,35.23,100 >>前往Blackfinth Deeps的入口
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    #completewith next
    >>从墙上偷走|cRXP_Loot_Aku'Mai|r的蓝宝石
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step << Priest
    #xprate <1.5
    #season 0,1
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
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11
    >>从墙上偷走|cRXP_Loot_Aku'Mai|r的蓝宝石
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step << Priest
    #xprate <1.5
    #season 0,1
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .zone 221 >>进入BFD实例门户。区域在
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .accept 6561 >>接任务: |cRXP_WARN_黑暗深渊中的邪恶|r
    .target Argent Guard Thaelrid
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>杀死|cRXP_ENEMY_Lorguss Jett|r
    .complete 6565,1 --Lorguss Jett slain (1)
    .mob Lorguss Jett
    .isOnQuest 6565
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    #completewith next
    >>将|cRXP_PICK_Fathom Stone|r在地面的水中掠夺，用于|cRXP_Loot_FFathom Core |r
    >>|cRXP_WARN_掠夺它将产生|r|cRXP_ENEMY_Baron Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>杀死|cRXP_ENEMY_Baron Aquanis|r。掠夺他一个|T136222:0|t[|cRXX_Loot_奇异水球|r]。使用它来接受任务
    .collect 16782,1 --Strange Water Globe (1)
    .accept 6922 >>接任务: |cRXP_LOOT_阿奎尼斯男爵|r
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>将|cRXP_PICK_Fathom Stone|r在地面的水中掠夺，用于|cRXP_Loot_FFathom Core |r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>杀死|cRXP_ENEMY_暮光之城领主凯里斯|r。掠夺他的|cRXX_Loot_Head |r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .hs >>火炉到雷霆崖
    .use 6948
    >>|cRXP_WARN_如果您愿意，请先杀死|r|cRXP_ENEMY_Aku'mai|r|cRXP_WARN_first。这是地牢的最后一个老板|r
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Thunder Bluff,71.04,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴珊娜·符文图腾|r
    .turnin 6561 >>交任务: |cRXP_FRIENDLY_黑暗深渊中的邪恶|r
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Zoram'gar >>飞往佐拉姆加前哨
    .target Tal
    .zoneskip Ashenvale
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6564 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
    .target Je'neu Sancrea
    .dungeon BFD
    .isOnQuest 6564
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6565 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6563 >>交任务: |cRXP_FRIENDLY_阿库麦尔水晶|r
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6563
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6921 >>交任务: |cRXP_FRIENDLY_废墟之间|r
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6922 >>交任务: |cRXP_FRIENDLY_阿奎尼斯男爵|r
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #xprate <1.5
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡拉恩·阿玛卡|r
    .accept 216 >>接任务: |cRXP_WARN_蓟皮熊怪的麻烦|r
    .target Karang Amakkar
step
    #xprate >1.49
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tal
    .zoneskip Thunder Bluff,1
step
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德鲁克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Andruk
    .zoneskip Ashenvale,1
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
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
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
    .collect 15883,1 --Half Pendant of Aquatic Agility (1)
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
    .mob +变异创业公司无人机
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
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
    #hardcore
    #completewith next
    .goto The Barrens,61.33,4.21,120 >>前往Boulder Lode矿场
step << Rogue/Druid
    #hardcore
    .goto The Barrens,60.48,3.76
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_跳到木梁上。通过注销并重新登录来执行注销跳过。如果不成功，请跑回Orgrimmar|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
    .zoneskip Orgrimmar
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
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
    .target Trak'gen
step << Rogue
    >>|cRXP_WARN_如果你有任何|r|T134437:0|t[抗毒液]|cRXP_WARN_，用一个来治愈|r|T136230:0|t][赞齐尔之触]
    .itemcount 6452,1
    .aura 9991
    .aura 9810
step << Rogue
    .destroy 8051 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_信号枪|r, 它在你的背包中. 不再需要它了|r
    .destroy 8066 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_费苏勒的哨子|r, 它在你的背包中. 不再需要它了|r
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
]])


RXPGuides.RegisterGuide([[
#classic
<< Horde
#xprate >1.99
#name 13-20 The Barrens
#version 1
#group RestedXP部落1-22
#next 20-24石爪/桶


step << !Tauren
    #xprate <2.1 << !Undead
    #softcore
    #completewith ThievesPickup
    .goto The Barrens,50.72,32.61
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .subzoneskip 380
step << !Tauren
    #xprate <2.1 << !Undead
    #hardcore
    #completewith ThievesPickup
    .goto The Barrens,52.34,29.27,150 >>前往十字路口
    .subzoneskip 380
step << !Tauren
    #softcore
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>接任务: |cRXP_WARN_遗忘之池|r
    .target Tonga Runetotem
step << !Undead !Tauren
    #xprate <2.1
    #hardcore
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
    .target Zargh
step << !Tauren
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
    .accept 844 >>接任务: |cRXP_WARN_平原陆行鸟的威胁|r
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Tauren
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .accept 844 >>接任务: |cRXP_WARN_平原陆行鸟的威胁|r
    .target Sergra Darkthorn
step << !Tauren
    #hardcore
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>接任务: |cRXP_WARN_遗忘之池|r
    .target Tonga Runetotem
step << !Tauren
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
    .accept 871 >>接任务: |cRXP_WARN_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_WARN_十字路口的补给品|r
    .target Thork
step << !Undead !Tauren
    #xprate <2.1
    #hardcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    >>|cRXP_WARN_不要飞往奥格里玛！|r
    .fp The Crossroads >>获得the Crossroads飞行路线
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
    .accept 6384 >>接任务: |cRXP_WARN_飞往奥格瑞玛|r
    .target Devrak
step << Undead
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fp The Crossroads >>获得the Crossroads飞行路线
    .target Devrak
step << !Tauren
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 1492 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
    .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
    .target Apothecary Helbrim
    .isQuestAvailable 848
step << !Tauren
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 1492 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里买一个|r|T135499:0|t[叠层递归弓]|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Orc Hunter/Troll Hunter
    #completewith DisruptTheAttacks
    +装备|T135499:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Orc Warrior
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nargal|r|cRXP_BUY_交谈。从他那里购买|r|T132395:0|t[Tabar]|r
    .collect 1196,1,871,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
    .target Nargal Deatheye
step << Orc Warrior
    #completewith DisruptTheAttacks
    +装备|T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Troll Rogue/Orc Rogue
    #season 2
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nargal|r|cRXP_BUY_交谈。从他那里买一两个|r|T135640:0|t[Jambiya]|r
    .collect 2207,1,871,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Nargal Deatheye
step << Troll Rogue/Orc Rogue
    #season 2
    #completewith DisruptTheAttacks
    +装备|T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nargal|r|cRXP_BUY_交谈。从他那里买一个|r|T133490:0|t[Mace]|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #completewith DisruptTheAttacks
    +装备|T133490:0|t[Mace]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << Shaman
    #xprate >2.09
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nargal|r|cRXP_BUY_交谈。从他那里买一个|r|T133490:0|t[Mace]|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Shaman
    #xprate >2.09
    #completewith DisruptTheAttacks
    +装备|T133490:0|t[Mace]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << !Tauren
    #label ThievesPickup
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
    .target Gazrog
step << !Tauren
    #xprate <2.1
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
    .dungeon !RFC
step << Undead
    #xprate >2.09
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
    .dungeon !RFC
step << !Undead !Tauren
    #xprate >2.09
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
    .target Zargh
step << !Undead !Tauren
    #xprate <2.1
    #softcore
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
    .target Zargh
step << Warlock
    #season 2
    #sticky
    #completewith BarrensEnd
    #label ExplorerImp
    >>当你在怪物身上施放|T136163:0|t|cRXP_FRIENDLY_[吸取灵魂]|r，直到你收到一个|T133257:0|t| cRXP_LOOT_探索者的灵魂|r|cRXP-WARN_使用它来学习如何召唤一个|r|T236294:0|t | cRXP-FRIENDLY_[探索者Imp]|r
    .train 445459 >>|cRXP_WARN_Use|r|T133257:0|t|cRXP_LOOT_探索者的灵魂|r|cRXD_WARN_to学习如何召唤|r|T236294:0|t[|cRXT_FRIENDLY_Explorer Imp|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImp << Warlock
    #sticky
    #completewith BarrensEnd
    #label FelPortalRune
    >>您所在的区域中存在|cRXP_FRIENDLY_Fel门户|r。如果你找到了一个，请召唤你的|T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]，并在门户旁边与它交谈，将其发送到探险队。10-20分钟后，它将带着战利品返回，并有机会奖励您|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
    >>您所在的区域中存在|cRXP_FRIENDLY_Fel门户|r。如果您找到一个，请使用|T134945:0|t[|cRXP_OOT_Scroll of Spatial Mending|r]关闭它。这将奖励您|T134939:0|t[|cRXP_FRIENDLY_Spell备注：打捆螺栓|r] << Mage
    >>|cRXP_WARN_在你得到符文之前要注意入口|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 428878,1 << Mage
    .train 427733,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRune
    #sticky
    #completewith BarrensEnd
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 427733 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r]|cRXP_WARN_学习|r|T136216:0|t[召唤Felguard] << Warlock
    .train 428878 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #completewith DisruptTheAttacks
    >>杀死|cRXP_ENEMY_Plainstrider|r。掠夺他们的|cRXX_Loot_Beak|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead
    #xprate <1.5
    #completewith next
    #label DemonMountain
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.65,19.21,100 >>前往山顶
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5
    #completewith next
    #requires DemonMountain
    .goto The Barrens,47.65,19.21,15 >>Go inside Dreadmist Den
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5
    #label DemonSeed
    .goto The Barrens,47.97,19.07
    >>右键单击|cRXP_PICK_Altar|r。确保您身上有|T134095:0|t[缺陷力量石]
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << skip
    #xprate <1.5
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,100 >>沿着你来的山往下走
    .isQuestComplete 924
--XX !Tauren !Undead
step << Shaman
    #completewith DisruptTheAttacks
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>杀死一个|cRXP_ENEMY_Razormane找水器|r或|cRXX_ENEMY_拉佐曼Thornweaver |r。掠夺它们以获得|cRXD_Loot_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #completewith next
    >>杀死|cRXP_ENEMY_Water Seekers|r、|cRXD_ENEMY_Thornweavers|r和|cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step
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
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Warrior !Undead
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>前往山顶
step << Warrior !Undead
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .turnin 1502 >>交任务: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .accept 1503 >>接任务: |cRXP_LOOT_锻造好的钢锭|r
    .target Thun'grim Firegaze
step << Warrior !Undead
    .goto The Barrens,55.05,26.65
    >>偷走|cRXP_PICK_Stolen铁箱|r用于其|cRXP_Loot_锻钢棒|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior !Undead
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>前往山顶
step << Warrior !Undead
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .turnin 1503 >>交任务: |cRXP_FRIENDLY_锻造好的钢锭|r
    .target Thun'grim Firegaze
step << !Undead !Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找一个团队去Ragefire Chasm
    .dungeon RFC
step
    #completewith next
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label PlainstriderBeaks
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
step << Tauren Warrior
    #sticky
    #completewith KreenigSnarlsnout1
    .goto The Barrens,52.5,30.7,0
    .vendor >>|cRXP_WARN_检查|r|cRXP_FRIENDLY_Lizzarik|r|cRXP_WARN_i是否在十字路口中。他卖药水和|r|T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r]|cRXP-WARN_这是一种限量供应的商品|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_索克|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r << Tauren Shaman
    .turnin 844 >>交任务: |cRXP_FRIENDLY_平原陆行鸟的威胁|r
    .accept 845 >>接任务: |cRXP_LOOT_斑马的威胁|r
    .goto The Barrens,52.24,31.01
    .turnin 871 >>交任务: |cRXP_FRIENDLY_野猪人的袭击|r
    .accept 872 >>接任务: |cRXP_WARN_野猪人的头目|r
    .goto The Barrens,51.50,30.87
    .target Sergra Darkthorn
    .target Thork
step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接任务: |cRXP_LOOT_鹰身强盗|r
    .target Darsok Swiftdagger
step << !Tauren !Undead
    #softcore
    #xprate <2.1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
    .accept 6384 >>接任务: |cRXP_WARN_飞往奥格瑞玛|r
    .target Devrak
step << Orc Hunter/Troll Hunter
    #optional
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里买一个|r|T135499:0|t[叠层递归弓]|r
    .collect 2507,1,872,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Orc Hunter/Troll Hunter
    #optional
    #completewith KreenigSnarlsnout1
    +装备|T135499:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Hunter
    #optional
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里买一个|r|T135613:0|t[Hunter's Boomstick]|r
    .collect 2511,1,872,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith KreenigSnarlsnout1
    +装备|T135613:0|t[猎人的Boomstick]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Orc Warrior
    #optional
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nargal|r|cRXP_BUY_交谈。从他那里购买|r|T132395:0|t[Tabar]|r
    .collect 1196,1,872,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
    .target Nargal Deatheye
step << Orc Warrior
    #optional
    #completewith KreenigSnarlsnout1
    +装备|T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Troll Rogue/Orc Rogue
    #optional
    #season 2
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nargal|r|cRXP_BUY_交谈。从他那里买一两个|r|T135640:0|t[Jambiya]|r
    .collect 2207,1,872,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Nargal Deatheye
step << Troll Rogue/Orc Rogue
    #optional
    #season 2
    #completewith KreenigSnarlsnout1
    +装备|T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nargal|r|cRXP_BUY_交谈。从他那里买一个|r|T133490:0|t[Mace]|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    #completewith DisruptTheAttacks
    +装备|T133490:0|t[Mace]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << Shaman
    #xprate >2.09
    #optional
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nargal|r|cRXP_BUY_交谈。从他那里买一个|r|T133490:0|t[Mace]|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Shaman
    #xprate >2.09
    #optional
    #completewith DisruptTheAttacks
    +装备|T133490:0|t[Mace]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << !Undead !Tauren
    #completewith HiddenEnemiesPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon RFC
step << Tauren
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
    .dungeon RFC
step << Tauren
    #completewith KreenigSnarlsnout1
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    #completewith next
    >>掠夺|cRXP_PICK_Crossroads的补给箱|r。它有多个产卵位置
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
    #label KreenigSnarlsnout1
    .goto The Barrens,58.69,27.08
    >>杀死|cRXP_ENEMY_Kreenig Snarlsnous|r。掠夺他的|cRXX_Loot_TASK|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .dungeon RFC
step << Tauren
    #completewith next
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>掠夺|cRXP_PICK_Crossroads的补给箱|r。它有多个产卵位置
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
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
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    #completewith next
    >>杀死你看到的任何|cRXP_ENEMY_Zhevra|r。掠夺他们的|cRXP_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >>沿着小路上山，前往|cRXP_FRIENDLY_Telf|r
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1525 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1526 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Telf Joolam
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>使用|T134732:0|t[Fire Sapta]
    .use 6636
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.96,58.22
    >>杀死|cRXP_ENEMY_轻微火焰显现|r。掠夺他获得|cRXX_Loot_光辉徽章|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.96,58.22
    >>单击地面上的|cRXP_PICK_Brazier|r
    .turnin 1526 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1527 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .dungeon RFC
step << Tauren Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 1527 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .target Kranal Fiss
    .dungeon RFC
step << Tauren Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. Wait for the respawn if it's not up
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
    .dungeon RFC
step << Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找一个团队去Ragefire Chasm
    .dungeon RFC
step << Tauren
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .dungeon RFC
step << Tauren
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >>获取Orgrimmar飞行路线
    .target Doras
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
    #label HiddenEnemiesPickup
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
    >>|cRXP_WARN_如果可能，让队员分享以下任务|r
    .accept 5722 >>接任务: |cRXP_WARN_寻找背包|r
    .accept 5723 >>接任务: |cRXP_WARN_试探敌人|r
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
step << Tauren
    #completewith RFCTurninsTB1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Doras
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren
    #completewith RFCTurninsTB1
    .goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 >>交任务: |cRXP_FRIENDLY_归还背包|r
    .turnin 5723 >>交任务: |cRXP_FRIENDLY_试探敌人|r
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 >>交任务: |cRXP_FRIENDLY_归还背包|r
    .target Rahauro
    .isOnQuest 5724
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step << Tauren
    #label RFCTurninsTB1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5723 >>交任务: |cRXP_FRIENDLY_试探敌人|r
    .target Rahauro
    .isQuestComplete 5723
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .hs >>十字路口之心
    .use 6948
    .zoneskip The Barrens
    .dungeon RFC
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. Wait for the respawn if it's not up
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
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
step << Warlock
    #season 2
    .train 403932,1
    >>|cRXP_WARN_Go to the Altar of Thorns|r。铸造|T136126:0|t【生命敲击】直到你快死了。然后在你的宠物身上施放|T136168:0|t[健康漏斗]致死并获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    *|cRXP_WARN_You will be revived immediately after dying|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
step << Warlock
    #season 2
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_通道调整|r]|cRXP-WARN_训练|r|T136168:0|t[主通道器]
step
    #completewith next
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>杀死|cRXP_ENEMY_Razomane地工|r和|cRXX_ENEMY_拉zomane防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
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
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step << !Tauren !Undead
    #completewith next
    >>杀死你看到的任何|cRXP_ENEMY_Zhevra|r。掠夺他们的|cRXP_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead
    #xprate <1.5
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 924 >>交任务: |cRXP_FRIENDLY_恶魔之种|r
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #completewith ShamanDurotar
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith ShamanDurotar
    >>杀死你看到的任何|cRXP_ENEMY_Zhevra|r。掠夺他们的|cRXP_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto Durotar,36.74,57.78
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >>沿着小路上山，前往|cRXP_FRIENDLY_Telf|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1525 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1526 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>使用|T134732:0|t[Fire Sapta]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>杀死|cRXP_ENEMY_轻微火焰显现|r。掠夺他获得|cRXX_Loot_光辉徽章|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>单击地面上的|cRXP_PICK_Brazier|r
    .turnin 1526 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1527 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << Shaman
    #completewith FireEnd
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith next
    >>杀死你看到的任何|cRXP_ENEMY_Zhevra|r。掠夺他们的|cRXP_Loot_Hoopes|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Shaman
    #label FireEnd
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 1527 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. Wait for the respawn if it's not up
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step << skip
    #completewith RatchetEnter
    >>杀死|cRXP_ENEMY_Sunscale尖叫者|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
--XX Need to add goto about halfway down since they only spawn up north, would be too messy to add it
step
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>杀死|cRXP_ENEMY_Zhevra跑步者|r。掠夺他们的|cRXX_Loot_ Hooves |r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto The Barrens,62.68,36.23
    .subzone 392 >>Travel to Ratchet
    .isOnQuest 845
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, Wanted Poster
    .accept 894 >>接任务: |cRXP_LOOT_什么什么平衡器|r
    .goto The Barrens,62.98,37.22
    .accept 895 >>接任务: |cRXP_WARN_通缉：巴隆·朗绍尔|r
    .goto The Barrens,62.59,37.47
    .target Sputtervalve
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135353:0|t[Espadon]|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +当你达到16级时装备|T135353:0|t[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +装备|T135353:0|t[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #completewith BaronLongshore
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
    #completewith BaronLongshore
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
    #optional
    #completewith BaronLongshore
    +当你达到16级时，装备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +配备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Shaman
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #completewith BaronLongshore
    +装备|T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一个|r|T133052:0|t[Hammer]|r
    .collect 2028,1,895,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #completewith BaronLongshore
    +装备|T133052:0|t[锤子] 
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一把|r|T135343:0|t[弯刀]|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #completewith BaronLongshore
    +装备|T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买第二把|r|T135343:0|t[弯刀]|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #completewith BaronLongshore
    +装备第二把|T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一两个|r|T135302:0|t[Poniard]|r
    .collect 2208,1,895,1 --Collect Poniard (1)
    .money <0.3842
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
    .target Ironzar
step << Rogue
    #season 2
    #completewith BaronLongshore
    +装备|T135302:0|t[Poniard] 
    .use 2208
    .itemcount 2208,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
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
    >>|T133918:0|t[Longjaw Mud Snappers]|cRXP_WARN_非常便宜，想买多少就买多少|r
    .vendor >>供应商垃圾箱
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_控制台操作手册|r, 它在你的背包中. 不再需要它了|r
step
    #completewith BaronLongshore
    >>杀死|cRXP_ENEMY_南海旅行家|r和|cRXX_ENEMY_南海炮手|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
	#completewith next
	>>杀死|cRXP_ENEMY_Tazan|r。抢走他的|cRXX_Loot_Satchel|r。他在山上巡逻
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
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
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
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
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135353:0|t[Espadon]|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +当你达到16级时装备|T135353:0|t[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +装备|T135353:0|t[Espadon]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
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
    #optional
    #completewith FlyToXroads1
    +当你达到16级时，装备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +配备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #completewith FlyToXroads1
    +装备|T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一个|r|T133052:0|t[Hammer]|r
    .collect 2028,1,895,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #completewith FlyToXroads1
    +装备|T133052:0|t[锤子] 
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一把|r|T135343:0|t[弯刀]|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #completewith FlyToXroads1
    +装备|T135343:0|t[弯刀]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买第二把|r|T135343:0|t[弯刀]|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #completewith FlyToXroads1
    +装备|T135343:0|t[弯刀]
    .use 923
    .itemcount 923,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    --Enter completewith label
step << Rogue
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_交谈。从他那里买一两个|r|T135302:0|t[Poniard]|r
    .collect 2208,1,850,1 --Collect Poniard (1)
    .money <0.3842
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
    .target Ironzar
step << Rogue
    #season 2
    #completewith FlyToXroads1
    +装备|T135302:0|t[Poniard] 
    .use 2208
    .itemcount 2208,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
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
--XX Level 14 training here?
step << skip
    #sticky
    #completewith ZhevraTurnIn
    .goto The Barrens,52.5,30.7,0
    .vendor >>沿着这条路走到十字路口。留意|cRXP_FRIENDLY_Lizzarik|r购买|T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r]（如果有）
	.unitscan Lizzarik
step << skip
    #completewith ZhevraTurnIn
    .subzone 380 >>前往十字路口
step
    #label ZhevraTurnIn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 872 >>交任务: |cRXP_FRIENDLY_野猪人的头目|r
    .turnin 5041 >>交任务: |cRXP_FRIENDLY_十字路口的补给品|r
    .goto The Barrens,51.50,30.87
    .turnin 845 >>交任务: |cRXP_FRIENDLY_斑马的威胁|r
    .accept 903 >>接任务: |cRXP_WARN_草原上的徘徊者|r
    .goto The Barrens,52.24,31.01
    .target Sergra Darkthorn
    .target Thork
step << skip
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    >>|cRXP_BUY_从他那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    >>|cRXP_BUY_从他那里购买|r|T132384:0|t[Heavy Shots]|cRXP_Buy_|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok交谈|r
    .vendor >>|cRXP_BUY_从他那里购买|r|T135490:0|t[|cRXP_FRIENDLY_Fine Longbow|r]|cRXP-Buy_（如果有），并储备箭头|r
    >>|cRXP_WARN_如果没有，请购买|r|T135490:0|t[加固弓]|cRXP_WARN_instead|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里买一个|r|T135613:0|t[Hunter's Boomstick]|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #completewith RegtharDeathgate1
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .maxlevel 16
step
    #completewith next
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 850 >>接任务: |cRXP_LOOT_科卡尔首领|r
    .accept 855 >>接任务: |cRXP_LOOT_半人马护腕|r
    .target Regthar Deathgate
step
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 850 >>接任务: |cRXP_LOOT_科卡尔首领|r
    .target Regthar Deathgate
step
    #optional
    #label RegtharDeathgate1
step
    #xprate <2.1
    #completewith KodobaneTurnin
    >>杀死|cRXP_ENEMY_Kolkar牧马人|r和|cRXD_ENEMY_ Kolkar风暴者|r。掠夺他们的|cRXP_Loot_Bracers|r
    >>|cRXP_WARN_现在不必完成此任务|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .isOnQuest 855
step
    #completewith Barak
    >>在被遗忘的水池周围收集|cRXP_LOOT_Laden蘑菇|r
    >>|cRXP_WARN_现在不必完成此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Druid
    #season 2
    .goto The Barrens,44.73,22.18
    >>将|cRXP_PICK_遗弃的Snapjaw巢|r在地上掠夺|T294479:0|t[|cRXP _Loot_遗弃的Snapjaw蛋|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    .goto The Barrens,45.06,22.54
    >>潜入水下至|cRXP_PICK_气泡裂缝|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>杀死|cRXP_ENEMY_Barak Kodobane|r。掠夺他的|cRXX_Loot_Head|r
    >>|cRXP_WARN_小心，因为|cRXP_ENEMY_Barak Kodobane|r的近战命中造成了很大的伤害，并且他受到|cRXX_ENEMY_Kolkar牧马人|r的保护。他们可以网住你，并从远处向你射击|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    #completewith KodobaneTurnin
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate >2.09
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
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .accept 851 >>接任务: |cRXP_WARN_狂热的维罗戈|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .accept 851 >>接任务: |cRXP_WARN_狂热的维罗戈|r
    .target Regthar Deathgate
step
    #xprate <2.1
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 851 >>接任务: |cRXP_WARN_狂热的维罗戈|r
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #optional
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate >2.09
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
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
step << Orc Warrior/Troll Warrior/Tauren Warrior
    #xprate <2.1
    #season 0
    #completewith next
    .goto The Barrens,43.80,12.22,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩·凝血|r
    >>|cRXP_FRIENDLY_Vrang|r|cRXP_WARN_sells|r|T133476:0|t[|cRXP-FRIENDLY_Heavy Spiked Mace|r]|cRXP_WARN_which is a limited supply item|r << Orc Warrior/Troll Warrior/Tauren Warrior
	.vendor	>>供应商垃圾和维修
    .dungeon RFC
step
    #xprate <2.1
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
step << !Tauren
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .zoneskip Stonetalon Mountains
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << !Tauren
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左边的小路向上走
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << !Tauren
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳到其中一个笼子上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>|cRXP_WARN_单击此处查看示例|r
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << !Tauren
    #completewith RFCPickups
    .goto Thunder Bluff,50.75,37.07,40 >>乘电梯去雷霆崖
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 >>交任务: |cRXP_FRIENDLY_归还背包|r
    .turnin 5723 >>交任务: |cRXP_FRIENDLY_试探敌人|r
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << !Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 >>交任务: |cRXP_FRIENDLY_归还背包|r
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step << !Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .turnin 5723 >>交任务: |cRXP_FRIENDLY_试探敌人|r
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step << !Tauren
    #completewith Samophlange
    .hs >>十字路口之心
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
step << !Tauren
    #completewith Samophlange
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
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
    .target Apothecary Helbrim
    .isQuestComplete 848
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 867 >>交任务: |cRXP_FRIENDLY_鹰身强盗|r
    .accept 875 >>接任务: |cRXP_WARN_鹰身人首领|r
    .target Darsok Swiftdagger
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_WARN_死水绿洲|r
    .target Tonga Runetotem
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 903 >>交任务: |cRXP_FRIENDLY_草原上的徘徊者|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .target Sergra Darkthorn
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,55.80,17.03
    >>使用|T134227:0|t[埃切亚克之角]召唤|cRXP_ENEMY_埃切亚克|r
    >>杀死|cRXP_ENEMY_Echeyake|r。掠夺他|cRXD_Loot_Echeyake's Hide|r
    >>|cRXP_WARN_如果|cRXP_ENEMY_Echeyake|r在使用|r|T134227:0|t[Horn of Echeyaakee]|cRXP-WARN_后没有产卵，或者在它产卵时没有得到标签，请跳过此步骤|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_如果|cRXP_ENEMY_Echeyake|r在使用|r|T134227:0|t[Horn of Echeyake]|cRXP-WARN_后没有产卵，或者在它产卵时你没有得到标签，那么放弃Echeyakee，然后返回城镇并再次接受它|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,55.80,17.03
    >>使用|T134227:0|t[埃切亚克之角]召唤|cRXP_ENEMY_埃切亚克|r
    >>杀死|cRXP_ENEMY_Echeyake|r。掠夺他|cRXD_Loot_Echeyake's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    #completewith Samophlange
    +|cRXP_WARN_小心区域中的|r|cRXP_ENEMY_Sunscale镰刀爪|r|cRXP_WARN_in。他们达到18级，可以|r|T132152:0|t[色雷斯]
    .dungeon RFC
    .xp >17,1
step << !Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    #completewith Samophlange
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .dungeon RFC
step
    #xprate <2.1
    #completewith Samophlange
    +|cRXP_WARN_小心区域中的|r|cRXP_ENEMY_Sunscale镰刀爪|r|cRXP_WARN_in。他们达到18级，可以|r|T132152:0|t[色雷斯]
    .dungeon !RFC
    .xp >17,1
step
    #xprate >2.09
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate >2.09
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_WARN_死水绿洲|r
    .target Tonga Runetotem
step
    #xprate >2.09
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 903 >>交任务: |cRXP_FRIENDLY_草原上的徘徊者|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .target Sergra Darkthorn
step
    #xprate >2.09
    .goto The Barrens,55.80,17.03
    >>使用|T134227:0|t[埃切亚克之角]召唤|cRXP_ENEMY_埃切亚克|r
    >>杀死|cRXP_ENEMY_Echeyake|r。掠夺他|cRXD_Loot_Echeyake's Hide|r
    >>|cRXP_WARN_如果|cRXP_ENEMY_Echeyake|r在使用|r|T134227:0|t[Horn of Echeyaakee]|cRXP-WARN_后没有产卵，或者在它产卵时没有得到标签，请跳过此步骤|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #xprate >2.09
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_如果|cRXP_ENEMY_Echeyake|r在使用|r|T134227:0|t[Horn of Echeyake]|cRXP-WARN_后没有产卵，或者在它产卵时你没有得到标签，那么放弃Echeyakee，然后返回城镇并再次接受它|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    #xprate >2.09
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    #xprate <2.1
    #completewith Samophlange
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .dungeon !RFC
step
    #xprate >2.09
    #completewith Samophlange
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <2.1
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩·凝血|r
    >>|cRXP_FRIENDLY_Vrang|r|cRXP_WARN_sells|r|T133476:0|t[|cRXP-FRIENDLY_Heavy Spiked Mace|r]|cRXP_WARN_which is a limited supply item|r << Orc Warrior/Troll Warrior/Tauren Warrior
	.vendor	>>供应商垃圾和维修
    .dungeon !RFC
step
    #xprate >2.09
    #completewith next
    >>杀死你看到的每一个|cRXP_ENEMY_Raptor|r。掠夺他们的|cRXP_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
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
step
    #completewith Ignition
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    .goto The Barrens,54.3,12.3
    >>杀死|cRXP_ENEMY_Raptor|r。掠夺它们的|cRXX_Loot_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #optional
    .goto The Barrens,56.5,7.5
    .xp 16>>升级到16级
step
    #label Ignition
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与污泥箱中的|r|cRXP_FRIENDLY_Wizzlecrank碎纸机|r对话
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
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
    .isOnQuest 858
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Wizzlecrank的碎纸机交谈|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    >>|cRXP_WARN_这将开始护送。确保你完全健康|r
    .turnin 858 >>交任务: |cRXP_FRIENDLY_打火钥匙|r
    .accept 863 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Wizzlecrank的碎纸机交谈|r
    >>|cRXP_FRIENDLY_Wizzlecrank's Shredder|r |cRXP_WARN_has a long respawn timer. Consider skipping this quest if there is a lot of competition|r
    >>|cRXP_WARN_这将开始护送。确保你完全健康|r
    .accept 863 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_当碎纸机移动到较高的地面上时，两个|r|cRXP_ENEMY_Venture Co.雇佣军|r|cRXP_WARN_将产生。杀死他们，然后在最后等待他的RP事件|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step
    #completewith next
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label CatsEye
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
    >>|cRXP_WARN_如果它在25次以上的暴民后没有掉落，请随意跳过此任务|r
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
    .goto The Barrens,60.48,3.76
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_跳到木梁上。通过注销并重新登录来执行注销跳过。如果不成功，请跑回Orgrimmar|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
    .zoneskip Orgrimmar
step
    #completewith next
    .skill firstaid,40 >>|cRXP_WARN_创建|r|T133685:0|t[亚麻绷带]|cRXP_WARN_直到你的技能达到40或更高|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Arnok|r交谈
    >>|cRXP_WARN_如果您没有足够的|r|T132889:0|t[亚麻布]|cRXP_WARN_to达到40技能，请跳过此步骤|r
    .train 3276 >>火车|T133688:0|t[粗布绷带]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >>|cRXP_WARN_创建|r|T133688:0|t[Heavy Linen Bandages]|cRXP_WARN_直到你的技能达到50或更高|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Arnok|r交谈
    >>|cRXP_WARN_如果您没有足够的|r|T132889:0|t[亚麻布]|cRXP_WARN_to达到50技能，请跳过此步骤|r
    .train 3274 >>列车乘务员急救
    .target Arnok
    .skill firstaid,<40,1
step
    #completewith next
    +|cRXP_WARN_确保您的|r|T132794:0|t[|cRXP_OOT_Flask of Oil|r]未售出！
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 8102 >>训练你的职业技能
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    #season 2
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 527 >>火车|T135894:0|t[驱散魔法]
    >>|cRXP_WARN_您稍后需要|r|T135894:0|t[驱散魔法]|cRXP_WARN_才能获得符文|r
    .target Ur'kyo
    .xp <18,1
step << Priest
    #optional
    #season 0
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .train 970 >>训练你的职业技能
    .target Ur'kyo
    .xp <18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
    .train 3140 >>训练你的职业技能
    .target Pephredo
    .xp <18,1
step << !Tauren !Undead
    #xprate <2.1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Gryshka|r交谈
    .turnin 6384 >>交任务: |cRXP_FRIENDLY_飞往奥格瑞玛|r
    .accept 6385 >>接任务: |cRXP_WARN_双足飞龙管理员多拉斯|r
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead
    #xprate <2.1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r
    .accept 6386 >>接任务: |cRXP_WARN_返回十字路口|r
    .target Doras
    .isOnQuest 6385
step << !Tauren !Undead
    #xprate <2.1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .accept 6386 >>接任务: |cRXP_WARN_返回十字路口|r
    .target Doras
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >>获取Orgrimmar飞行路线
    .zoneskip The Barrens
    .target Doras
step << Shaman
    #season 2
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    >>|cRXP_WARN_确保您已经训练过|r|T136075:0|t[Purge]|cRXP_WARN_as以后需要获得符文|r
    .train 8019 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 2
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    >>|cRXP_WARN_确保您已经训练过|r|T136075:0|t[Purge]|cRXP_WARN_as以后需要获得符文|r
    .train 913 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <18,1
step << Shaman
    #season 0
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    >>|cRXP_WARN_确保您已经训练过|r|T136075:0|t[Purge]|cRXP_WARN_as以后需要获得符文|r
    .train 8019 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 0
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    >>|cRXP_WARN_确保您已经训练过|r|T136075:0|t[Purge]|cRXP_WARN_as以后需要获得符文|r
    .train 913 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <18,1
step
    #xprate <2.1
    #Label SpiritsPickup
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>接任务: |cRXP_WARN_石爪之灵|r
    .target Zor Lonetree
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_申苏尔|r
    .train 1804 >>列车|T136058:0|t[开锁]
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
    .itemcount 5060,1
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
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟祖克|r
    .turnin 1858 >>交任务: |cRXP_FRIENDLY_碎手氏族|r
    .target Therzok
step << Rogue
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kareth|r|cRXP_BUY_交谈。从他那里买一两个|r|T135342:0|t[Kris]|r
    .collect 2209,1,881,1 --Collect Kris (1)
    .money <0.7115
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .target Kareth
step << Rogue
    #optional
    #completewith FoodandWater2
    +装备|T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp <19,1
step << Rogue
    #optional
    #completewith FoodandWater2
    +达到19级后装备|T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp >19,1
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
    .collect 16316,1,881,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
    .collect 16351,1,881,1 --Grimoire of Sacrifice (Rank 1) (1)
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
step << Troll Hunter/Orc Hunter/Priest
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 227 >>火车杆
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 264 >>火车弓
    .target Hanashi
step << Tauren Warrior/Undead Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 172 >>Train Two-Handed Axes
    .train 227 >>火车杆
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r|cRXP_BUY_。从他那里买一个|r|T135490:0|t[加固弓]|r
    .collect 3026,1,3281,1 --Collect Laminated Recurve Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #completewith FoodandWater2
    +装备|T135490:0|t[加固弓]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step << Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r|cRXP_BUY_。从他那里购买|r|T135423:0|t[战斧]|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior
    #optional
    #completewith FoodandWater2
    +当你达到20级时装备|T135423:0|t[战斧]
    .use 926
    .itemcount 926,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior
    #optional
    #completewith FoodandWater2
    +装备|T135423:0|t[战斧]
    .use 926
    .itemcount 926,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Druid
    #season 2
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_如果可能的话，从拍卖行购买|r|T134237:0|t[Kolkar Booty Key]|cRXP_Buy_|r
    >>|cRXP_WARN_你需要这个才能获得|r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]|cRXP-WARN_for|r|T236167:0|t[野蛮咆哮] << Druid
    .collect 5020,1 --Kolkar Booty Key (1)
	.target Auctioneer Thathung
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
step
    #completewith FoodandWater2
    .hs >>十字路口之心
    .cooldown item,6948,>0
    .use 6948
step
    #completewith FoodandWater2
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .fly Crossroads >>飞向十字路口
    .target Doras
    .cooldown item,6948,<0
step
    #label FoodandWater2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r
    .turnin 869 >>交任务: |cRXP_FRIENDLY_偷钱的迅猛龙|r
    .accept 3281 >>接任务: |cRXP_LOOT_被偷走的银币|r
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 867 >>交任务: |cRXP_FRIENDLY_鹰身强盗|r
    .accept 875 >>接任务: |cRXP_WARN_鹰身人首领|r
    .target Darsok Swiftdagger
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_WARN_死水绿洲|r
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 903 >>交任务: |cRXP_FRIENDLY_草原上的徘徊者|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .target Sergra Darkthorn
step << !Tauren !Undead
    #xprate <2.1
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
    .target Zargh
    .isOnQuest 6386
step
    .goto The Barrens,55.80,17.03
    >>使用|T134227:0|t[埃切亚克之角]召唤|cRXP_ENEMY_埃切亚克|r
    >>杀死|cRXP_ENEMY_Echeyake|r。掠夺他|cRXD_Loot_Echeyake's Hide|r
    >>|cRXP_WARN_如果|cRXP_ENEMY_Echeyake|r在使用|r|T134227:0|t[Horn of Echeyaakee]|cRXP-WARN_后没有产卵，或者在它产卵时没有得到标签，请跳过此步骤|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_如果|cRXP_ENEMY_Echeyake|r在使用|r|T134227:0|t[Horn of Echeyake]|cRXP_WARN_or后没有生成标签，请放弃Echeyakee，然后返回城镇并再次接受它|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>使用|T134227:0|t[埃切亚克之角]召唤|cRXP_ENEMY_埃切亚克|r
    >>杀死|cRXP_ENEMY_Echeyake|r。掠夺他|cRXD_Loot_Echeyake's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 881 >>交任务: |cRXP_FRIENDLY_埃其亚基|r
    .accept 905 >>接任务: |cRXP_WARN_狂暴的镰爪龙|r
    .target Sergra Darkthorn
step << Warrior
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>单击|cRXP_PICK_部落战旗|r
    .train 403489,1
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_曼科里克|r
    .accept 899 >>接任务: |cRXP_WARN_复仇的怒火|r
    .accept 4921 >>接任务: |cRXP_LOOT_在战斗中失踪|r
    .target Mankrik
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    >>|cRXP_BUY_从他那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHorsPickup
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
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 902 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .turnin 863 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
    .accept 3921 >>接任务: |cRXP_WARN_维妮·布特巴克|r << Hunter
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .goto The Barrens,62.98,37.22
    .turnin 896 >>交任务: |cRXP_FRIENDLY_矿工的宝贝|r
    .goto The Barrens,63.35,38.45
    .target Sputtervalve
    .target Wharfmaster Dizzywig
    .isQuestComplete 896
    .isQuestComplete 863
step
    #xprate <2.1
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 902 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .accept 3921 >>接任务: |cRXP_WARN_维妮·布特巴克|r << Hunter
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .goto The Barrens,62.98,37.22
    .turnin 896 >>交任务: |cRXP_FRIENDLY_矿工的宝贝|r
    .goto The Barrens,63.35,38.45
    .target Sputtervalve
    .target Wharfmaster Dizzywig
    .isQuestComplete 896
step
    #xprate <2.1
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 863 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .target Sputtervalve
    .isQuestComplete 863
step
    #xprate <2.1
    #optional
    #label TheEscapeTurnIn
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
    .target Sputtervalve
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 902 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .turnin 863 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
    .goto The Barrens,62.98,37.22
    .turnin 896 >>交任务: |cRXP_FRIENDLY_矿工的宝贝|r
    .goto The Barrens,63.35,38.45
    .target Sputtervalve
    .target Wharfmaster Dizzywig
    .isQuestComplete 896
    .isQuestComplete 863
step
    #xprate >2.09
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 902 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .goto The Barrens,62.98,37.22
    .turnin 896 >>交任务: |cRXP_FRIENDLY_矿工的宝贝|r
    .goto The Barrens,63.35,38.45
    .target Sputtervalve
    .target Wharfmaster Dizzywig
    .isQuestComplete 896
step
    #xprate >2.09
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 863 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
    .target Sputtervalve
    .isQuestComplete 863
step
    #xprate <2.1
    #label RapHorsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 865 >>接任务: |cRXP_LOOT_迅猛龙角|r
    .accept 1069 >>接任务: |cRXP_WARN_深苔蜘蛛的卵|r
    .target Sputtervalve
    .target Mebok Mizzyrix
step
    #xprate >2.09
    #label RapHorsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 865 >>接任务: |cRXP_LOOT_迅猛龙角|r
    .target Sputtervalve
    .target Mebok Mizzyrix
step << Warrior
    #season 2
    .goto The Barrens,62.77,38.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔克斯|r
    >>|cRXP_BUY_从他那里买一只|r|T135129:0|t[鱼叉]|cRXP_Buy_|r
    .collect 208773,1 --钓鱼 Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .goto The Barrens,64.51,39.32
    .use 208773 >>在|cRXP_ENEMY_Bruuz|r上使用|T135129:0|t[鱼叉]并杀死他。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] << Warrior
    >>|cRXP_WARN_他在水中的沉船周围巡逻|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]|cRXP_WARN_to train|r|T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
step
    #sticky
    #completewith LeaveRatchet
    #season 2
    .goto The Barrens,61.8,39.4
    >>|cRXP_WARN_如果你有|cRXP_LOOT_3黄金|r，你可以从棘轮客栈|r|cRXP_FRIENDLY_Grizzby|r|cRXP_WARN_in购买符文。自己判断你是否负担得起，符文是否对你的职业有用。你以后总是可以买的|r
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
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维尔雷|r
    >>|cRXP_BUY_从他那里购买|r|T133918:0|t[Longjaw Mud Snappers]|cRXP_Buy_|r
    >>|cRXP_BUY_从他那里购买|r|T132796:0|t[甜瓜汁]|cRXP_Buy_|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|t[Longjaw Mud Snappers]|cRXP_WARN_非常便宜，想买多少就买多少|r
    .vendor >>供应商垃圾箱
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
step << Rogue
    #season 0
	#completewith SSTreasure
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_跳上船，下到二楼，将你的锁调平至至少70|r
step << Rogue
    #season 2
	#completewith SSTreasure
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_跳上船，下到二楼，将你的锁调平至至少70|r
    .train 424984,3 --Saber slash rune already learned, no need to get 80 LP
step << Rogue
    #season 2
	#completewith SSTreasure
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_跳上船，下到二楼，将你的锁调平至至少80|r
    .train 424984,1 --Saber slash rune not learned yet, need to get 80 LP
step << Rogue
    #label SSTreasure
    .goto The Barrens,64.95,45.44
    >>一旦你的开锁完成70，就到船的底层打开|cRXP_PICK_南海宝石|r
    >>|cRXP_WARN_使用|r|T134059:0|t[E.C.A.C.]|cRXP_WARN_on|r|cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto The Barrens,63.58,49.25
    >>将|cRXP_PICK_Crate|r洗劫一空
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >>将|cRXP_PICK_Crate|r洗劫一空
    .complete 888,1 --Shipment of Boots (1)
step << Warrior/Rogue
    #season 2
    #completewith EndlessRageRune << Warrior
    #completewith SaberSlashRune << Rogue
    .subzone 385 >>前往Northwatch Hold
step << Warrior
    #season 2
    .goto The Barrens,62.55,56.31
    >>单击|cRXP_PICK_Alliance Warbanner |r
    >>在斯通布雷中尉出生时杀死他。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step << Warrior
    #season 2
    #label EndlessRageRune
    .train 403489 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]|cRXP_WARN_to train|r|T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1
step << Rogue
    #season 2
    .goto The Barrens,62.31,54.22
    >>将|cRXP_PICK_Stable手的躯干|r在马厩顶部掠夺|T134419:0|t[|cRXP-FRIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_往山上跑，跳到城堡的墙上。从那里你可以跳到马厩的顶部|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step << Rogue
    #season 2
    #label SaberSlashRune
    .train 424984 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]|cRXP_WARN_to train|r|T132375:0|t[Saber Slash]
    .use 208772
    .itemcount 208772,1
step
    #completewith TestSeeds
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>杀死|cRXP_ENEMY_Sunscale镰刀爪|r。掠夺它们的|cRXP_Loot_Horns|r和|cRXP-Loot_Features|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>偷走地上的|cRXP_PICK_Stolen Silver|r
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>在停滞的绿洲周围收集|cRXP_OOT_Laden蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>单击水下的|cRXP_PICK_Bubble Fissure|r
    .complete 877,1 --Test the Dried Seeds (1)
step << Druid
    #xprate <2.1
    #season 2
    #completewith Verog
    >>杀死|cRXP_ENEMY_Kolkar|r。掠夺它们一个|T134237:0|t[|cRXD_Loot_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #xprate <2.1
    #completewith next
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
    >>在绿洲周围杀死|cRXP_ENEMY_Kolkar|r。掠夺他们的|cRXP_Loot_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #xprate <2.1
    .goto The Barrens,52.95,41.75
    >>杀死|cRXP_ENEMY_Verog|r。掠夺他的|cRXX_Loot_Head|r
    >>|cRXP_WARN_每次杀死一个|cRXP_ENEMY_Kolkar|r时，他都有机会产卵|r
    >>|cRXP_WARN_在人口稠密的服务器或新发布的服务器上，你最好的选择是露营他的产卵点|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    #optional
    #label Verog
step << Druid
    #season 2
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
    >>杀死|cRXP_ENEMY_Kolkar|r。掠夺它们一个|T134237:0|t[|cRXD_Loot_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .itemcount 208689,<1,1
    .train 407988,1
step << Druid
    #season 2
    .goto The Barrens,52.7,41.8
    >>打开一个|cRXP_PICK_Kolkar Booty|r箱子|T132942:0|t[|cRXP-FRIENDLY_Ferocious Idol|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .itemcount 208689,<1,1
    .train 407988,1
step << Druid
    #season 2
    #completewith Nest
    .equip 18,208689 >>|cRXP_WARN_quip the |r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol |r]|cRXP-WARN_Once you learned |r|T132115:0|t[Cat Form]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    #completewith Nest
    .train 407988 >>|cRXP_WARN_从|r|T132152:0|t[Rip]|cRXP_WARN_or|r|T132122:0|t[Rake]|cRXP_WARN_to类人身上获得20次流血伤害，然后使用|r|T232942:0|t[|cRXP-FRIENDLY_Ferocious Idol |r]|cRX P_WARN_gain学习|r|T236167:0|t[野蛮咆哮]
    .use 208689
    .itemcount 208689,1
step
    #loop
    .goto The Barrens,55.72,42.14,0
    .waypoint The Barrens,55.72,42.14,30,0
    .waypoint The Barrens,55.49,41.75,30,0
    .waypoint The Barrens,55.09,41.58,30,0
    .waypoint The Barrens,55.03,42.24,30,0
    .waypoint The Barrens,55.27,43.17,30,0
    .waypoint The Barrens,55.78,43.47,30,0
    .waypoint The Barrens,56.15,43.28,30,0
    .waypoint The Barrens,56.08,42.58,30,0
    .waypoint The Barrens,55.72,42.14,30,0
    >>在停滞的绿洲周围收集|cRXP_OOT_Laden蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LakotaMani
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >>单击|cRXP_PICK_Blue Raptor Nest|r。如果您没有|T132914:0|t[Sunscale Feather]，请杀死更多|cRXP_ENEMY_Sunscale Scythefalls|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>单击|cRXP_PICK_Red Raptor Nest|r。如果您没有|T132914:0|t[Sunscale Feather]，请杀死更多|cRXP_ENEMY_Sunscale Scythefalls|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>单击|cRXP_PICK_Yellow Raptor Nest|r。如果您没有|T132914:0|t[Sunscale Feather]，请杀死更多|cRXP_ENEMY_Sunscale Scythefalls|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>杀死|cRXP_ENEMY_Sunscale镰刀爪|r。掠夺它们的|cRXX_Loot_Horns|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血肉模糊的尸体|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>杀死|cRXP_ENEMY_Stormsnouts|r。掠夺它们以获得|cRXX_Loot_雷霆蜥蜴角|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>杀死|cRXP_ENEMY_Lakota'mani|r。为|T132318:0|t[|cRXP-Loot_Hoof|r]掠夺他
    >>|cRXP_WARN_使用|T132318:0|t[|cRXP_LOOT_Hoop of Lakota'mani|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    >>|cRXP_WARN_如果找不到他，跳过这一步|r
	.collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
	.accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
    .use 5099
    .unitscan Lakota'mani
step
    #completewith SetCampTaurajoHS
    >>杀死|cRXP_ENEMY_Stormsnouts|r。掠夺它们以获得|cRXP_Loot_Horn|r。现在不必完成此操作
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_你需要学会|r|T135813:0|t[自焚陷阱]|cRXP_WARN_or任何其他陷阱才能获得此符文|r
step << Hunter
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
step << Hunter
    #season 2
    .train 410110 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_野兽精通之路|r]|cRXP-WARN_训练|r|T132270:0|t[野兽精通]
    .use 208701
    .itemcount 208701,1
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
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
    .target Jorn Skyseer
    .isOnQuest 883
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
    .goto The Barrens,51.95,31.58
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
    .destroy 5165 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_赤鳞迅猛龙的羽毛|r|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里购买|r|T134410:0|t[中等测验]|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok

    --Warlock skips Herog/Counterattack below for 150% route. Will do it later otwt Stonetalon for class q into logout skip to TB

step
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 851 >>交任务: |cRXP_FRIENDLY_狂热的维罗戈|r
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 851 >>交任务: |cRXP_FRIENDLY_狂热的维罗戈|r
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    #label Leaders
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #xprate <2.1 << Warlock
    #completewith Hezrul
    .subzone 387 >>前往卢什沃特绿洲
    .isQuestTurnedIn 851
step
    #xprate <2.1 << Warlock
    #completewith Hezrul
    >>杀死你正在寻找的|cRXP_ENEMY_Oasis Snapjaws |r |cRXX_ENEMY_Hezrul Bloodmark|r。掠夺它们的|cRXP_OOT_Shell|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #xprate <2.1 << Warlock
    #completewith next
    >>在绿洲周围杀死|cRXP_ENEMY_Kolkar|r。掠夺他们的|cRXP_Loot_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #xprate <2.1 << Warlock
    #loop
    #label Hezrul
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
    #xprate <2.1
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
    >>在绿洲周围杀死|cRXP_ENEMY_Kolkar|r。掠夺他们的|cRXP_Loot_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .itemcount 5030,5 --Centaur Bracers (5)
    .isOnQuest 855
step << Druid
    #season 2
    .goto The Barrens,48.32,40.25
    >>打开地面上的|cRXP_PICK_Empty Snapjaw Nest|r进行|T134419:0|t[|cRXP-FRIENDLY_Rune of Lacerate|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate |r]|cRXP_WARN_to train|r|T132131:0|t[Lacerate]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
step
    #xprate <2.1 << Warlock
    #completewith CounterattackComplete
    .abandon 855 >>放弃半人马座手镯，因为你之前没有掠夺足够的东西来完成它
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 >>交任务: |cRXP_FRIENDLY_赫兹鲁尔·血印|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 >>交任务: |cRXP_FRIENDLY_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1 << Warlock
    #completewith CounterattackComplete
    +|cRXP_WARN_下一个任务很难&建议分组。你可以使用任务给予者所在的建筑将战神克罗姆扎尔风筝放在周围|r
    +|cRXP_WARN_如果你不能完成这个任务，就跳过它。你将有另一个机会在更高的水平上完成它|r
    .isQuestTurnedIn 852
step
    #xprate >2.09 << !Warlock
    #completewith CounterattackComplete
    +|cRXP_WARN_下一个任务很难&建议分组。你可以使用任务给予者所在的建筑将战神克罗姆扎尔风筝放在周围|r
    .isQuestTurnedIn 852
step
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 4021 >>接任务: |cRXP_LOOT_人马无双！|r
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1 << Warlock
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>一旦克罗姆扎尔出现，杀死他。抢走他掉在地上的|cRXP_PICK_Banner |r
    >>|cRXP_WARN_小心！他是一名强大的精英，由至少两名|r|cRXP_ENEMY_Kolkar|r|cRXP_WARN_mobs防守|r
    >>|cRXP_WARN_它可能需要3分钟才能产卵|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1 << Warlock
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith StonetalonPickups
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <2.1
    #loop
    .goto The Barrens,40.28,15.49,0
    .waypoint The Barrens,40.28,15.49,40,0
    .waypoint The Barrens,39.50,14.68,40,0
    .waypoint The Barrens,39.47,13.24,40,0
    .waypoint The Barrens,38.94,12.80,40,0
    .waypoint The Barrens,38.18,12.56,40,0
    .waypoint The Barrens,37.96,13.52,40,0
    .waypoint The Barrens,38.62,13.95,40,0
    .waypoint The Barrens,38.18,14.62,40,0
    .waypoint The Barrens,38.14,15.59,40,0
    .waypoint The Barrens,37.29,15.68,40,0
    .waypoint The Barrens,37.24,16.26,40,0
    .waypoint The Barrens,37.67,16.34,40,0
    .waypoint The Barrens,38.35,17.08,40,0
    .waypoint The Barrens,38.83,17.71,40,0
    .waypoint The Barrens,39.37,17.21,40,0
    .waypoint The Barrens,39.87,16.66,40,0
    .waypoint The Barrens,40.15,15.98,40,0
    >>杀死|cRXP_ENEMY_Witchwing Slayers|r。掠夺他们的|cRXP_Loot_Rings
    >>|cRXP_WARN_小心|cRXP_ENEMY_Witchwing Slayers|r cast|r|T135358:0|t[Execute]|cRXP_WARN_（当你的生命值低于20%时会造成大量伤害），|cRXD_ENEMY_ WitchwingAmbusher|r是|r|T132320:0|t[Stealted]|cRXP_WARN_并四处巡逻|r
    >>|cRXP_WARN_注意|r|cRXP_ENEMY_巫师伏击者|r|cRXP_WARN_。他们在该地区潜行巡逻|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
    .isOnQuest 875
step
    #xprate <2.1
    #label BarrensEnd
    #completewith next
    .goto The Barrens,35.26,27.88,30 >>向|cRXP_FRIENDLY_Sereth|r行进
    .zoneskip Stonetalon Mountains
step
    #xprate <2.1
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r, |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 1061 >>交任务: |cRXP_FRIENDLY_石爪之灵|r
    .accept 1062 >>接任务: |cRXP_LOOT_地精侵略者|r
    .goto The Barrens,35.26,27.88
    .accept 6548 >>接任务: |cRXP_LOOT_为我的村庄复仇|r
    .goto The Barrens,35.19,27.79
    .target Seereth Stonebreak
    .target Makaba Flathoof
    .maxlevel 20
step
    #xprate <2.1
    #map Stonetalon Mountains
    #label StonetalonPickups
    .goto The Barrens,35.26,27.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .turnin 1061 >>交任务: |cRXP_FRIENDLY_石爪之灵|r
    .accept 1062 >>接任务: |cRXP_LOOT_地精侵略者|r
    .target Seereth Stonebreak

    ]])

RXPGuides.RegisterGuide([[
#classic
#xprate >1.99
<< Horde
#name 20-24石爪/桶
#version 1
#group RestedXP部落1-22
#next 24-26 Southern Barrens << !Rogue !Shaman
#next 23-24 Hillsbrad级Quests << Rogue/Shaman


step << Druid
    #xprate <2.1
    #season 2
    #completewith next
    >>杀死|cRXP_ENEMY_Grimtotam牛头人|r。掠夺他们以获得|T134233:0|t[|cRXP-FRIENDLY_Idol of the Wild|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .train 410021,1
step
    #xprate <2.1
    #optional
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .waypoint Stonetalon Mountains,80.62,89.99,40,0
    .waypoint Stonetalon Mountains,79.79,88.75,40,0
    .waypoint Stonetalon Mountains,81.19,87.56,40,0
    .waypoint Stonetalon Mountains,81.70,86.44,40,0
    .waypoint Stonetalon Mountains,82.26,86.10,40,0
    .waypoint Stonetalon Mountains,82.55,85.22,40,0
    .waypoint Stonetalon Mountains,83.64,85.02,40,0
    .waypoint Stonetalon Mountains,84.20,85.20,40,0
    .waypoint Stonetalon Mountains,83.80,86.38,40,0
    .waypoint Stonetalon Mountains,83.25,87.23,40,0
    .waypoint Stonetalon Mountains,82.33,89.73,40,0
    .waypoint Stonetalon Mountains,82.33,90.43,40,0
    .waypoint Stonetalon Mountains,81.34,90.78,40,0
    >>杀死该区域的|cRXP_ENEMY_Grimtotam痞子|r和|cRXX_ENEMY_grimtotam雇佣军|r
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob Grimtotem Ruffian
    .mob Grimtotem Mercenary
    .isOnQuest 6548
step << Druid
    #xprate <2.1
    #season 2
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
    #xprate <2.1
    #season 2
    #completewith BloodFeedersPickup
    .equip 18,210534 >>|cRXP_WARN_equp the |r|T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #xprate <2.1
    #season 2
    #completewith BloodFeedersPickup
    >>|cRXP_WARN_施法|r|T136085:0|t[重生]|cRXP_WARN_or|r|T136041:0|t[Healing Touch]|cRXP_WARN_on 10种不同的友好动物，如狩猎宠物/熊形态的德鲁伊/鬼狼形态的萨满|r
    .train 410021 >>|cRXP_WARN_使用|r|T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]|cRXP_WARN_to train|r|T132143:0|t[狂野一击]
    .itemcount 210534,1
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6548 >>交任务: |cRXP_FRIENDLY_为我的村庄复仇|r
    .accept 6629 >>接任务: |cRXP_WARN_杀死格鲁迪格·暗云|r
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #xprate <2.1
    #optional
    #label AvengeVillageTurnin
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .accept 6629 >>接任务: |cRXP_WARN_杀死格鲁迪格·暗云|r
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>沿着小路往篝火前走
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto Stonetalon Mountains,73.65,86.13
    >>杀死|cRXP_ENEMY_Grundig Darkcloud|r和|cRXX_ENEMY_Grimtomem Brutes|r
    >>|cRXP_WARN_在开始内部任务之前，请确保您杀死所有六个|r|cRXP_ENEMY_Grimtotam Brutes|r|cRXP_WARN_b|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob Grundig Darkcloud
    .mob Grimtotem Brute
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaya|r
    .accept 6523 >>接任务: |cRXP_LOOT_保护卡雅|r
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>护送|cRXP_FRIENDLY_Kaya|r并靠近她
    >>|cRXP_WARN_小心！当你到达Aparaje营地的篝火时，三个|r|cRXP_ENEMY_Grimtoms|r|cRXP_WARN_将产卵|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6629 >>交任务: |cRXP_FRIENDLY_杀死格鲁迪格·暗云|r
    .turnin 6523 >>交任务: |cRXP_FRIENDLY_保护卡雅|r
    .accept 6401 >>接任务: |cRXP_LOOT_卡雅还活着|r
    .target Makaba Flathoof
    .isQuestComplete 6523
    .isQuestComplete 6629
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6523 >>交任务: |cRXP_FRIENDLY_保护卡雅|r
    .accept 6401 >>接任务: |cRXP_LOOT_卡雅还活着|r
    .target Makaba Flathoof
    .isQuestComplete 6523
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6629 >>交任务: |cRXP_FRIENDLY_杀死格鲁迪格·暗云|r
    .target Makaba Flathoof
    .isQuestComplete 6629
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .accept 6401 >>接任务: |cRXP_LOOT_卡雅还活着|r
    .target Makaba Flathoof
    .isQuestTurnedIn 6523
step
    #xprate <2.1
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左边的小路向上走
step
    #xprate <2.1
    #label BloodFeedersPickup
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛吉拉|r
    .accept 6461 >>接任务: |cRXP_LOOT_盗窃的蜘蛛|r
    .target Xen'Zilla
step
    #xprate <2.1
    #completewith next
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
    #xprate <2.1
    .goto Stonetalon Mountains,59.08,75.70
    >>单击|cRXP_FRIENDLY_Wanted海报|r
    .accept 6284 >>接任务: |cRXP_LOOT_贝瑟莱斯|r
step
    #xprate <2.1
    #completewith Besseleth1
    >>杀死|cRXP_ENEMY_Deepmoth毒液施放器|r和|cRXX_ENEMY_deepmoth爬行器|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Venomspitter
step
    #xprate <2.1
    #completewith next
    >>在树旁偷走|cRXP_PICK_蜘蛛蛋|r
    >>|cRXP_WARN_小心！|r|cRXP_ENEMY_Deepmoth孵化器|r|cRXP_WARN_有机会召唤出22级|r| cRXP__ENEMY_Deemmoth矩阵|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .group 0 << Priest/Mage
step
    #xprate <2.1
    #label Besseleth1
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67
    >>杀死|cRXP_ENEMY_Besseleth|r。为她掠夺她|cRXX_Loot_Fang |r
    >>|cRXP_WARN_清除|r|cRXP_ENEMY_Besseleth|r|cRXP_WARN_周围的区域。她给你织网时要小心。用圆点让她永远感到恐惧|r << Warlock
    >>|cRXP_WARN_这个任务很艰巨。跳过它需要|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    #xprate <2.1
    .goto Stonetalon Mountains,67.38,86.99,80,0
    .goto Stonetalon Mountains,61.44,81.74,80,0
    .goto Stonetalon Mountains,58.44,75.90,40,0
    .goto Stonetalon Mountains,54.99,76.03
    >>杀死|cRXP_ENEMY_Deepmoth爬行器|r
    >>|cRXP_WARN_保存任意|r|T134339:0|t[小毒囊]|cRXP_WARN_您的战利品|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #xprate <2.1
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>前往太阳岩疗养院
step
    #xprate <2.1
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板杰卡|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isOnQuest 1483
step
    #xprate <2.1
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基达|r
    .vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_如果它们用完了|r << !Warrior
    .vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134413:0|t[生命根]|cRXP-Buy_如果它们用完了|r << Warrior
    .target Jeeda
    .isOnQuest 1483
step
    #xprate <2.1
    #label KayaLives
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
    .turnin 6401 >>交任务: |cRXP_FRIENDLY_卡雅还活着|r
    .target Tammra Windfield
    .isQuestTurnedIn 6523
step
    #xprate <2.1
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
	.turnin 6284 >>交任务: |cRXP_FRIENDLY_贝瑟莱斯|r
    .target Maggran Earthbinder
    .isQuestComplete 6284
step
    #xprate <2.1
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔姆|r
    .fp Sun Rock Retreat >>获取Sun Rock Retreat飞行路线
    .target Tharm
step
    #xprate <2.1
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >>向|cRXP_FRIENDLY_Ziz|r行进
step
    #xprate <2.1
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
    .turnin 1483 >>交任务: |cRXP_FRIENDLY_菲兹克斯|r
    .accept 1093 >>接任务: |cRXP_LOOT_超级收割机6000|r
    .target Ziz Fizziks
step
    #xprate <2.1
    #completewith next
    >>杀死|cRXP_ENEMY_Deepmoss毒液发射器|r
    >>|cRXP_WARN_保存任意|r|T134339:0|t[小毒囊]|cRXP_WARN_您的战利品|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step
    #xprate <2.1
    #completewith Windshear
    >>在树旁偷走|cRXP_PICK_蜘蛛蛋|r
    >>|cRXP_WARN_小心！|r|cRXP_ENEMY_Deepmoth孵化器|r|cRXP_WARN_有机会召唤出22级|r| cRXP__ENEMY_Deemmoth矩阵|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #xprate <2.1
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
    .waypoint Stonetalon Mountains,59.25,61.55
    .waypoint Stonetalon Mountains,60.37,60.10
    .waypoint Stonetalon Mountains,61.34,59.15
    .waypoint Stonetalon Mountains,61.15,57.85
    .waypoint Stonetalon Mountains,61.41,56.77
    .waypoint Stonetalon Mountains,62.21,58.55
    .waypoint Stonetalon Mountains,63.12,60.02
    .waypoint Stonetalon Mountains,64.69,60.03
    .waypoint Stonetalon Mountains,62.76,61.69
    .waypoint Stonetalon Mountains,62.50,62.92
    .waypoint Stonetalon Mountains,62.48,64.15
    .waypoint Stonetalon Mountains,61.85,66.07
    .waypoint Stonetalon Mountains,60.71,66.12
    .waypoint Stonetalon Mountains,60.96,63.99
    .waypoint Stonetalon Mountains,60.25,63.21
    >>杀死|cRXP_ENEMY_Deepmoss毒液发射器|r
    >>|cRXP_WARN_保存任意|r|T134339:0|t[小毒囊]|cRXP_WARN_您的战利品|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #xprate <2.1
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #xprate <2.1
    #completewith BluePrints
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Undead Warrior
    #xprate <2.1
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尼克斯|r
    .vendor >>|cRXP_BUY_从他那里买一把|r|T135329:0|t[刽子手之剑]|cRXP_Buy_|r
    >>|cRXP_WARN_如果没有，请购买|r|T135280:0|t[Dacian Falx]|cRXP_WARN_instead|r
    .money <1.5024
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Undead Warrior
    #xprate <2.1
    #completewith BluePrints
    +装备|T135329:0|t[刽子手之剑]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Undead Warrior
    #xprate <2.1
    #completewith BluePrints
    +装备|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Shaman
    #xprate <2.1
    #season 0
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #xprate <2.1
    #season 0
    #completewith BluePrints
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #xprate <2.1
    #season 2
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。从他那里买一个|r|T133476:0|t[Flail]|r
    .collect 925,1,899,1 --Collect Flail (1)
    .money <0.7797
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #xprate <2.1
    #season 2
    #completewith BluePrints
    +装备|T133476:0|t[襟翼]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Rogue
    #xprate <2.1
    #season 0
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。从他那里买一个|r|T135324:0|t[长剑]|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #xprate <2.1
    #season 0
    #completewith BluePrints
    +装备|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #xprate <2.1
    #season 2
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Veenix|r|cRXP_BUY_交谈。从他那里买一两个|r|T135342:0|t[Kris]|r
    .collect 2209,1,899,1 --Collect Kris (1)
    .money <0.7115
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
step << Rogue
    #xprate <2.1
    #season 2
    #completewith BluePrints
    +装备|T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
step
    #xprate <2.1
    #label Windshear
    .subzone 461 >>前往Windshear Crag
    .isOnQuest 1093
step
    #xprate <2.1
    #completewith next
    >>杀死|cRXP_ENEMY_Venture Co.记录器|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #xprate <2.1
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
    #xprate <2.1
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .waypoint Stonetalon Mountains,61.50,55.12,50,0
    .waypoint Stonetalon Mountains,60.48,55.10,50,0
    .waypoint Stonetalon Mountains,59.80,53.69,50,0
    .waypoint Stonetalon Mountains,59.53,52.52,50,0
    .waypoint Stonetalon Mountains,60.80,51.23,50,0
    .waypoint Stonetalon Mountains,62.06,54.39,50,0
    .waypoint Stonetalon Mountains,62.63,55.35,50,0
    .waypoint Stonetalon Mountains,63.63,54.42,50,0
    .waypoint Stonetalon Mountains,65.42,54.15,50,0
    .waypoint Stonetalon Mountains,66.83,54.92,50,0
    .waypoint Stonetalon Mountains,68.64,54.03,50,0
    .waypoint Stonetalon Mountains,69.86,53.53,50,0
    .waypoint Stonetalon Mountains,70.34,56.41,50,0
    .waypoint Stonetalon Mountains,67.90,56.96,50,0
    .waypoint Stonetalon Mountains,66.25,56.64,50,0
    .waypoint Stonetalon Mountains,65.29,57.14,50,0
    .waypoint Stonetalon Mountains,64.27,57.63,50,0
    >>杀死|cRXP_ENEMY_Venture Co.记录器|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #xprate <2.1
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
    #xprate <2.1
	#completewith next
	+|cRXP_WARN_如果您有超过15个|cRXP_OOT_Deepmoth Eggs |r|cRXP-WARN_，请拆分任何额外的堆栈（按住shift键并单击），然后删除它们|r
step
    #xprate <2.1
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
    .turnin 1093 >>交任务: |cRXP_FRIENDLY_超级收割机6000|r
    .accept 1094 >>接任务: |cRXP_WARN_新的指示|r
    .target Ziz Fizziks
step
    #xprate <2.1
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    .goto Stonetalon Mountains,59.04,73.01
    >>完成击杀|cRXP_ENEMY_Deepmoss爬行器|r
    >>|cRXP_WARN_保存任意|r|T134339:0|t[小毒囊]|cRXP_WARN_您的战利品|r << Rogue
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
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 768 >>训练你的职业技能
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 1075 >>训练你的职业技能
    .target Loganaar
    .xp <22,1
step
    #completewith JornSkyseerTurnin
    .hs >>Hearth前往陶拉霍营地
    .use 6948
    .cooldown item,6948,>0
step
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Devrak
    .subzoneskip 380,1
    .cooldown item,6948,<0
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 3261 >>交任务: |cRXP_FRIENDLY_乔恩·星眼|r
    .accept 882 >>接任务: |cRXP_LOOT_伊沙姆哈尔|r
    .target Jorn Skyseer
step << Warlock
    #season 2
    #sticky
    #completewith CounterattackTurnin3
    #label ExplorerImp
    >>当你在怪物身上施放|T136163:0|t|cRXP_FRIENDLY_[吸取灵魂]|r，直到你收到一个|T133257:0|t| cRXP_LOOT_探索者的灵魂|r|cRXP-WARN_使用它来学习如何召唤一个|r|T236294:0|t | cRXP-FRIENDLY_[探索者Imp]|r
    .train 445459 >>|cRXP_WARN_Use|r|T133257:0|t|cRXP_LOOT_探索者的灵魂|r|cRXD_WARN_to学习如何召唤|r|T236294:0|t[|cRXT_FRIENDLY_Explorer Imp|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImp << Warlock
    #sticky
    #completewith CounterattackTurnin3
    #label FelPortalRune
    >>您所在的区域中存在|cRXP_FRIENDLY_Fel门户|r。如果你找到了一个，请召唤你的|T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]，并在门户旁边与它交谈，将其发送到探险队。10-20分钟后，它将带着战利品返回，并有机会奖励您|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
    >>您所在的区域中存在|cRXP_FRIENDLY_Fel门户|r。如果您找到一个，请使用|T134945:0|t[|cRXP_OOT_Scroll of Spatial Mending|r]关闭它。这将奖励您|T134939:0|t[|cRXP_FRIENDLY_Spell备注：打捆螺栓|r] << Mage
    >>|cRXP_WARN_在你得到符文之前要注意入口|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 428878,1 << Mage
    .train 427733,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRune
    #sticky
    #completewith CounterattackTurnin3
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 427733 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r]|cRXP_WARN_学习|r|T136216:0|t[召唤Felguard] << Warlock
    .train 428878 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
	#completewith LakotaMani
    >>杀死|cRXP_ENEMY_Stormsnouts|r。掠夺它们以获得|cRXP_Loot_Horn|r
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
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>杀死|cRXP_ENEMY_Lakota'mani|r。为|T132318:0|t[|cRXP-Loot_Hoof|r]掠夺他
    >>|cRXP_WARN_使用|T132318:0|t[|cRXP_LOOT_Hoop of Lakota'mani|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    >>|cRXP_WARN_如果找不到他，跳过这一步|r
	.collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
	.accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>杀死|cRXP_ENEMY_Stormsnouts|r。掠夺它们以获得|cRXP_Loot_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
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
step << Warlock/Shaman
    #optional
#loop
	.line The Barrens,50.71,54.60,50.74,55.33,50.73,56.78,50.42,57.23,50.50,57.65,50.87,57.50,51.26,57.84,51.74,57.69,51.79,57.10,53.08,54.69,53.65,54.27,53.63,53.53,53.35,52.72,53.00,51.83,52.62,52.19,52.59,52.71,52.41,53.07,52.32,53.71,51.39,54.22
	.goto The Barrens,50.71,54.60,25,0
	.goto The Barrens,50.74,55.33,25,0
	.goto The Barrens,50.73,56.78,25,0
	.goto The Barrens,50.42,57.23,25,0
	.goto The Barrens,50.50,57.65,25,0
	.goto The Barrens,50.87,57.50,25,0
	.goto The Barrens,51.26,57.84,25,0
	.goto The Barrens,51.74,57.69,25,0
	.goto The Barrens,51.79,57.10,25,0
	.goto The Barrens,53.08,54.69,25,0
	.goto The Barrens,53.65,54.27,25,0
	.goto The Barrens,53.63,53.53,25,0
	.goto The Barrens,53.35,52.72,25,0
	.goto The Barrens,53.00,51.83,25,0
	.goto The Barrens,52.62,52.19,25,0
	.goto The Barrens,52.59,52.71,25,0
	.goto The Barrens,52.41,53.07,25,0
	.goto The Barrens,52.32,53.71,25,0
	.goto The Barrens,51.39,54.22,25,0
    .xp 19 >>升级到19级
step
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    .goto The Barrens,50.88,52.96
    >>杀死|cRXP_ENEMY_Stormsnouts|r。掠夺它们以获得|cRXP_Loot_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>杀死|cRXP_ENEMY_Sunscale镰刀爪|r。掠夺它们的|cRXX_Loot_Horns|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
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
    .goto The Barrens,52.0,46.5,90,0
    .goto The Barrens,57.3,53.7
    >>杀死|cRXP_ENEMY_Sunscale镰刀爪|r。掠夺它们的|cRXX_Loot_Horns|r
    >>|cRXP_WARN_小心他们施放|r|T132152:0|t[Srash]|cRXP_WARN_（每10秒额外攻击2次）|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>杀死任何|cRXP_ENEMY_Zhevra|r。掠夺它以获得|cRXX_Loot_新鲜Zhevra尸体|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
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
step << Shaman/Priest
    #season 2
    #loop
    .goto The Barrens,55.77,34.01,40,0 --Spawn 1
    .goto The Barrens,55.83,34.21,40,0
    .goto The Barrens,54.81,35.95,40,0 --Spawn 2
    .goto The Barrens,54.96,35.72,40,0
    .goto The Barrens,57.47,36.03,40,0 --Spawn 3
    .goto The Barrens,57.56,35.78,40,0
    .goto The Barrens,57.46,35.70,40,0
    .goto The Barrens,57.59,38.36,40,0 --Spawn 4
    .goto The Barrens,57.49,38.65,40,0
    .goto The Barrens,58.82,37.67,40,0 --Spawn 5
    .goto The Barrens,58.92,37.53,40,0
    .goto The Barrens,58.94,37.73,40,0
    >>在|cRXP_ENEMY_Desert Mirage|r上施放|T136075:0|t[清除]以杀死它。为|T134419:0|t|cRXX_Loot_[地球符文]|r掠夺它 << Shaman
    >>在|cRXP_ENEMY_Desert Mirage|r上施放|T135894:0|t[驱散魔法]以杀死它。为|T135975:0|t[|cRXP_FRIENDLY_王者幻灭之神|r]掠夺它 << Priest
    .collect 208758,1 << Shaman --Earthen Rune (1)
    .collect 205932,1 << Priest-- Prophecy of a King's Demise (1)
    .unitscan Desert Mirage
    .train 410107,1 << Shaman
    .train 402849,1 << Priest
    .train 370,3 << Shaman --Purge
    .train 527,3 << Priest --Dispel Magic
--XX Respawns after 85s-170s
step
    #completewith next
    >>杀死任何|cRXP_ENEMY_Zhevra|r。掠夺它以获得|cRXX_Loot_新鲜Zhevra尸体|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto The Barrens,59.71,30.33
    .use 10338 >>使用枯树处的|T134368:0|t[|cRXP_LOOT_Fresh Zhevra Carcass|r]召唤|cRXT_ENEMY_Ishamuhale|r。杀死并掠夺他的|cRXX_LOOT_Fang |r
    >>|cRXP_WARN_尸体只有30分钟的持续时间！|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .goto The Barrens,63.07,36.31 << Rogue
    .goto The Barrens,62.68,36.23 << !Rogue
    .subzone 392 >>Travel to Ratchet
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
    #sticky
    #completewith FlytoXroads
    #season 2
    .goto The Barrens,61.8,39.4
    >>|cRXP_WARN_如果你有|cRXP_LOOT_3黄金|r，你可以从棘轮客栈|r|cRXP_FRIENDLY_Grizzby|r|cRXP_WARN_in购买符文。自己判断你是否负担得起，符文是否对你的职业有用。你以后总是可以买的|r
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
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r, Drohn
    .turnin 1094 >>交任务: |cRXP_FRIENDLY_新的指示|r
    --.accept 1095 >>接任务: |cRXP_WARN_新的指示|r
    .goto The Barrens,62.98,37.22
    .turnin 865 >>交任务: |cRXP_FRIENDLY_迅猛龙角|r
    .turnin 1069 >>交任务: |cRXP_FRIENDLY_深苔蜘蛛的卵|r
    .accept 1491 >>接任务: |cRXP_LOOT_智慧饮料|r
    .goto The Barrens,62.37,37.62
    .turnin 821 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
    .goto The Barrens,62.27,38.39
    .target Sputtervalve
    .target Mebok Mizzyrix
    .target Brewmaster Drohn
    .dungeon WC
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r, Drohn
    .turnin 1094 >>交任务: |cRXP_FRIENDLY_新的指示|r
    --.accept 1095 >>接任务: |cRXP_WARN_新的指示|r
    .goto The Barrens,62.98,37.22
    .turnin 865 >>交任务: |cRXP_FRIENDLY_迅猛龙角|r
    .turnin 1069 >>交任务: |cRXP_FRIENDLY_深苔蜘蛛的卵|r
    .goto The Barrens,62.37,37.62
    .turnin 821 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
    .goto The Barrens,62.27,38.39
    .target Sputtervalve
    .target Mebok Mizzyrix
    .target Brewmaster Drohn
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r, Drohn
    .turnin 865 >>交任务: |cRXP_FRIENDLY_迅猛龙角|r
    .accept 1491 >>接任务: |cRXP_LOOT_智慧饮料|r
    .goto The Barrens,62.37,37.62
    .turnin 821 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
    .goto The Barrens,62.27,38.39
    .target Mebok Mizzyrix
    .target Brewmaster Drohn
    .dungeon WC
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r, Drohn
    .turnin 865 >>交任务: |cRXP_FRIENDLY_迅猛龙角|r
    .goto The Barrens,62.37,37.62
    .turnin 821 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
    .goto The Barrens,62.27,38.39
    .target Mebok Mizzyrix
    .target Brewmaster Drohn
step << Warrior
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉利克斯|r
    .vendor >>从他那里购买|T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r]（如果有）
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克斯宾德|r
    .vendor >>从他那里购买|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]（如果有）
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
step << Warrior
    #completewith FlytoXroads
    +装备|T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r] 
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
step << Rogue/Hunter/Warrior/Shaman/Druid
    #completewith FlytoXroads
    +装备|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .xp <20,1
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维尔雷|r
    .home >>把你的炉石放在棘轮上
    .target Innkeeper Wiley
    .dungeon WC
    .isQuestTurnedIn 865
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
step << Hunter
    #xprate <2.1
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
    .accept 6541 >>接任务: |cRXP_LOOT_向卡德拉克报到|r
    .target Thork
step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .turnin 875 >>交任务: |cRXP_FRIENDLY_鹰身人首领|r
    .accept 876 >>接任务: |cRXP_WARN_塞瑞娜·血羽|r
    .target Darsok Swiftdagger
    .isQuestComplete 875
 step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .accept 876 >>接任务: |cRXP_WARN_塞瑞娜·血羽|r
    .target Darsok Swiftdagger
    .isQuestTurnedIn 875
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_曼科里克|r, Tonga
    .turnin 899 >>交任务: |cRXP_FRIENDLY_复仇的怒火|r
    .goto The Barrens,51.95,31.58
    .turnin 880 >>交任务: |cRXP_FRIENDLY_变异的生物|r
    .accept 1489 >>接任务: |cRXP_LOOT_哈缪尔·符文图腾|r
    .accept 3301 >>接任务: |cRXP_LOOT_茉拉·符文图腾|r << Shaman/Rogue
    .goto The Barrens,52.26,31.93
    .target Tonga Runetotem
    .target Mankrik
step
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
    .accept 868 >>接任务: |cRXP_LOOT_蝎卵|r
    .target Korran
step
    .destroy 5085 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_刺背野猪人的獠牙|r|r
    .itemcount 5085,1
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
    --VV Adjust to 20-22 level range
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
    #xprate <2.1 << Warlock
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Devrak
    .subzoneskip 380,1

    --Warlock Class Q/TB section

step << Warlock
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 851 >>交任务: |cRXP_FRIENDLY_狂热的维罗戈|r
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step << Warlock
    #xprate >2.09
    #label Leaders
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 851 >>交任务: |cRXP_FRIENDLY_狂热的维罗戈|r
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestComplete 851
step << Warlock
    #xprate >2.09
    #optional
    #label Leaders
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step << Warlock
    #xprate >2.09
    #completewith Hezrul
    .subzone 387 >>前往卢什沃特绿洲
    .isQuestTurnedIn 851
step << Warlock
    #xprate >2.09
    #completewith next
    >>在绿洲周围杀死|cRXP_ENEMY_Kolkar|r。掠夺他们的|cRXP_Loot_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step << Warlock
    #xprate >2.09
    #loop
    #label Hezrul
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
step << skip
    #xprate >2.09
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
    >>在绿洲周围杀死|cRXP_ENEMY_Kolkar|r。掠夺他们的|cRXP_Loot_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .itemcount 5030,5 --Centaur Bracers (5)
    .isOnQuest 855
step << Warlock
    #xprate >2.09
    #completewith CounterattackComplete
    .abandon 855 >>放弃半人马座手镯，因为你之前没有掠夺足够的东西来完成它
    .itemcount 5030,<5 --Centaur Bracers (5)
step << Warlock
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 >>交任务: |cRXP_FRIENDLY_赫兹鲁尔·血印|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step << Warlock
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 >>交任务: |cRXP_FRIENDLY_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestComplete 852
step << Warlock
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step << Warlock
    #xprate >2.09
    #completewith CounterattackComplete
    +|cRXP_WARN_下一个任务很难&建议分组。你可以使用任务给予者所在的建筑将战神克罗姆扎尔风筝放在周围|r
    --+|cRXP_WARN_如果你不能完成这个任务，就跳过它。你将有另一个机会在更高的水平上完成它|r
    .isQuestTurnedIn 852
step << Warlock
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 4021 >>接任务: |cRXP_LOOT_人马无双！|r
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step << Warlock
    #xprate >2.09
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>一旦克罗姆扎尔出现，杀死他。抢走他掉在地上的|cRXP_PICK_Banner |r
    >>|cRXP_WARN_小心！他是一名强大的精英，由至少两名|r|cRXP_ENEMY_Kolkar|r|cRXP_WARN_mobs防守|r
    >>|cRXP_WARN_它可能需要3分钟才能产卵|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step << Warlock
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
    .target Regthar Deathgate
    .isQuestComplete 4021
step << Warlock
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step << Warlock
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
    .target Regthar Deathgate
    .isQuestComplete 4021
step << Warlock
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step << Warlock
    #xprate >2.09
    #label EnterSTMWL
    #completewith Ken'ZiglaWL
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .zoneskip Stonetalon Mountains
step << Warlock
    #xprate >2.09
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左边的小路向上走
step << Warlock
    #xprate >2.09
    #label Ken'ZiglaWL
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯兹格拉|r
    .turnin 1510 >>交任务: |cRXP_FRIENDLY_多格兰的消息|r
    .accept 1511 >>接任务: |cRXP_WARN_肯兹格拉的伤药|r
    .target Ken'zigla
step << Warlock
    #xprate >2.09
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳到其中一个笼子上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>|cRXP_WARN_单击此处查看示例|r
step << Warlock
    #xprate >2.09
    #completewith SacredFlame
    .goto Thunder Bluff,54.18,27.01,20,0
    .goto Thunder Bluff,50.75,37.07,40 >>乘电梯去雷霆崖
step << Warlock
    #xprate >2.09
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
step << Warlock
    #xprate >2.09
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r, Nara
    .turnin 1489 >>交任务: |cRXP_FRIENDLY_哈缪尔·符文图腾|r
    .accept 1490 >>接任务: |cRXP_LOOT_纳拉·蛮鬃|r
    .target Arch Druid Hamuul Runetotem
step << Warlock
    #xprate >2.09
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r, Nara
    .turnin 1490 >>交任务: |cRXP_FRIENDLY_纳拉·蛮鬃|r
    .accept 914 >>接任务: |cRXP_WARN_尖牙德鲁伊|r
    .target Nara Wildmane
    .dungeon WC
step << Warlock
    #xprate >2.09
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r, Nara
    .turnin 1490 >>交任务: |cRXP_FRIENDLY_纳拉·蛮鬃|r
    .target Nara Wildmane
step << Warlock
    #xprate >2.09
    #label SacredFlame
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞金·石蹄|r
    .accept 1195 >>接任务: |cRXP_WARN_神圣之火|r
    .target Zangen Stonehoof
step << Warlock
    #xprate >2.09
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂之旅崛起，进入视野之池
step << Warlock
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .accept 962 >>接任务: |cRXP_LOOT_毒蛇花|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step << Warlock
    #xprate >2.09
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .accept 962 >>接任务: |cRXP_LOOT_毒蛇花|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .dungeon WC
step << Warlock
    #xprate >2.09
    #label ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .isOnQuest 853
step << Warlock
    #xprate >2.09
    #completewith next
    .skill firstaid,80 >>|cRXP_WARN_创建|r|T133688:0|t[Heavy Linen Bandages]|cRXP_WARN_直到你的技能达到80或更高|r
    .skill firstaid,<1,1
step << Warlock
    #xprate >2.09
    #label FirstAid2
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
    >>|cRXP_WARN_如果您没有足够的|r|T132889:0|t[亚麻布]|cRXP_WARN_to达到80技能，请跳过此步骤|r
    .train 3277 >>火车|T133684:0|t[羊毛绷带]
    .train 7934 >>列车|T134437:0|t[抗毒液] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Warlock
    #xprate >2.09
    #label FlyCampT
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >>获得Thunder Bluff飞行路线 << !Tauren
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Tal
    .zoneskip The Barrens
step << Warlock
    #xprate >2.09
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_步兵劳格玛|r
    .turnin 1511 >>交任务: |cRXP_FRIENDLY_肯兹格拉的伤药|r
    .accept 1515 >>接任务: |cRXP_WARN_多格兰之囚|r
    .target Grunt Logma
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
step
    #optional
    #completewith Thunderhawk
    .goto The Barrens,44.55,59.27,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
    +|cRXP_WARN_使用您的|r|T134128:0|t[|cRXP_OOT_Blood Shard|r]|cRXP-WARN_to获取buff。至少保存其中的4个以便以后使用|r
    +|cRXP_WARN_请确保关闭Questie或Leatrix Plus等插件的任何自动完成功能！|r
    .target Mangletooth
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务: |cRXP_FRIENDLY_伊沙姆哈尔|r
    .accept 907 >>接任务: |cRXP_WARN_被激怒的雷霆蜥蜴|r
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务: |cRXP_FRIENDLY_伊沙姆哈尔|r
    .accept 907 >>接任务: |cRXP_WARN_被激怒的雷霆蜥蜴|r
    .target Jorn Skyseer
step << Warlock
    #xprate >2.09
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_步兵多格兰|r
    .turnin 1515 >>交任务: |cRXP_FRIENDLY_多格兰之囚|r
    .accept 1512 >>接任务: |cRXP_LOOT_爱的礼物|r
    .target Grunt Dogran
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
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
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .turnin 907 >>交任务: |cRXP_FRIENDLY_被激怒的雷霆蜥蜴|r
    .accept 913 >>接任务: |cRXP_WARN_雷鹰的嘶鸣|r
    .accept 6382 >>接任务: |cRXP_WARN_灰谷狩猎|r << Hunter
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>交任务: |cRXP_FRIENDLY_被激怒的雷霆蜥蜴|r
    .accept 913 >>接任务: |cRXP_WARN_雷鹰的嘶鸣|r
    .accept 6382 >>接任务: |cRXP_WARN_灰谷狩猎|r << Hunter
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
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
step << Shaman
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
step << Shaman
    #completewith next
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    >>|cRXP_WARN_如果你找不到他，暂时跳过这一步|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
step
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    .goto The Barrens,44.83,63.12
    >>杀死一个|cRXP_ENEMY_Thunderhawk Hatchling|r或一个|rRXP_ENEMY_Thunder霍克Cloudscraper|r。掠夺它的|cRXD_Loot_TThunderhake Wing|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
    .accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
    .accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
    .target Jorn Skyseer
    .isQuestComplete 913
step
    #xprate <2.1
    #completewith Serena
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>飞向十字路口
    .target Omusa Thunderhorn
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 >>交任务: |cRXP_FRIENDLY_赫兹鲁尔·血印|r
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith CounterattackTurnin2
    +|cRXP_WARN_下一个任务很难&建议分组。你可以使用任务给予者所在的建筑将战神克罗姆扎尔风筝放在周围|r
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 4021 >>接任务: |cRXP_LOOT_人马无双！|r
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    .goto The Barrens,44.48,28.15
    >>一旦克罗姆扎尔出现，杀死他。抢走他掉在地上的|cRXP_PICK_Banner |r
    >>|cRXP_WARN_小心！他是一名强大的精英，由至少两名|r|cRXP_ENEMY_Kolkar|r|cRXP_WARN_mobs防守|r
    >>|cRXP_WARN_它可能需要3分钟才能产卵|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #xprate <2.1
    #label CounterattackTurnin2
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith Serena
    .abandon 855 >>Abandon Centaur Bracers
step
    #xprate <2.1
    #label Serena
    .goto The Barrens,39.16,12.16
    >>杀死|cRXP_ENEMY_Serena Bloodflowe|r。为她掠夺她|cRXX_Loot_Head |r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
    .isQuestTurnedIn 875
step << Hunter
    #xprate <2.1
    .goto The Barrens,49.05,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维妮·布特巴克|r
    .turnin 3921 >>交任务: |cRXP_FRIENDLY_维妮·布特巴克|r
    .target Wenikee Boltbucket
    .isOnQuest 3921
step << Hunter
    #xprate <2.1
    .goto The Barrens,48.12,5.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托雷克|r
    .turnin 6541 >>交任务: |cRXP_FRIENDLY_向卡德拉克报到|r
    .target Kadrak
step << Hunter
    #xprate <2.1
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托雷克|r
    >>|cRXP_FRIENDLY_Torek|r|cRXP_WARN_has a 5 minutes respawn time|r
    .accept 6544 >>接任务: |cRXP_LOOT_托雷克的突袭|r
    .target Torek
step << Hunter
    #xprate <2.1
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>关注|cRXP_FRIENDLY_Torek|r
    >>让|cRXP_FRIENDLY_TORK|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r坦克|cRXP_ENEMY_Silverwing Warriors|r和|cRXD_ENEMY_ SilverwingSentinel|r
    >>当你清空大楼时，向阳台跑去。当|cRXP_ENEMY_Duriel Moonfire|r到来时，让|cRXP_FRIENDLY_Torek|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r在你造成伤害之前发动攻击
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step << Hunter
    #xprate <2.1
    .goto Ashenvale,73.04,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔托格·怒齿|r
    .turnin 6544 >>交任务: |cRXP_FRIENDLY_托雷克的突袭|r
    .target Ertog Ragetusk
    .isQuestComplete 6544
step << Hunter
    #xprate <2.1
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
    .turnin 6382 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
    .turnin 6383 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
    .target Senani Thunderheart
step << Hunter
    #xprate <2.1
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
    .fp Splintertree Post >>获取Splinterree Post飞行路径
    .target Vhulgra
step << Hunter
    #xprate <2.1
    #completewith EnterSTM2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
    .fly Crossroads >>飞向十字路口
    .target Vhulgra
    .cooldown item,6948,<0
    .zoneskip The Barrens
step
    #xprate <2.1
    #completewith EnterSTM2
    .hs >>十字路口之心
    .use 6948
    .cooldown item,6948,>0
    .isQuestComplete 876
    .dungeon !WC
    .zoneskip The Barrens
step << !Hunter
    #xprate <2.1
    #completewith EnterSTM2
    .goto The Barrens,52.09,30.43,120 >>前往十字路口。您也可以升级直到您的|T134414:0|t[炉石]恢复
    .cooldown item,6948,<0
    .isQuestComplete 876
    .dungeon !WC
step
    #xprate <2.1
    #completewith next
    .hs >>赫斯到棘轮
    .use 6948
    .cooldown item,6948,>0
    .isQuestComplete 876
    .dungeon WC
step
    #xprate <2.1
    #completewith EnterSTM2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>飞向十字路口
    .target Bragok
    .dungeon WC
step
    #xprate <2.1
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 876 >>交任务: |cRXP_FRIENDLY_塞瑞娜·血羽|r
    .accept 1060 >>接任务: |cRXP_LOOT_写给金吉尔的信|r
    .target Darsok Swiftdagger
    .isQuestComplete 876
step
    #xprate <2.1
    #optional
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    .accept 1060 >>接任务: |cRXP_LOOT_写给金吉尔的信|r
    .target Darsok Swiftdagger
    .isQuestTurnedIn 876
step
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    >>|cRXP_FRIENDLY_Helbrif|r|cRXP_WARN_开始一个45分钟的定时任务|r
    .accept 853 >>接任务: |cRXP_WARN_药剂师扎玛|r
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    #xprate <2.1
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_你正在进行一个定时任务，不要害怕。它将在提取后10-15分钟内被翻转|r
    .isOnQuest 853
step
    #xprate <2.1
    #completewith CounterattackTurnin3
    +|cRXP_WARN_下一个任务很难&建议分组。你可以使用任务给予者所在的建筑将战神克罗姆扎尔风筝放在周围|r
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 4021 >>接任务: |cRXP_LOOT_人马无双！|r
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    .goto The Barrens,44.48,28.15
    >>一旦克罗姆扎尔出现，杀死他。抢走他掉在地上的|cRXP_PICK_Banner |r
    >>|cRXP_WARN_小心！他是一名强大的精英，由至少两名|r|cRXP_ENEMY_Kolkar|r|cRXP_WARN_mobs防守|r
    >>|cRXP_WARN_它可能需要3分钟才能产卵|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #xprate <2.1
    #label CounterattackTurnin3
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .zoneskip Stonetalon Mountains
step
    #xprate <2.1
    #label STMturnins1
    #map Stonetalon Mountains
    .goto The Barrens,35.26,27.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .turnin 1062 >>交任务: |cRXP_FRIENDLY_地精侵略者|r
    .timer 4,Goblin Invaders RP
    .accept 1063 >>接任务: |cRXP_WARN_长者|r
    --.accept 1068 >>接任务: |cRXP_WARN_伐木机|r
    .target Seereth Stonebreak
step
    #xprate <2.1
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左边的小路向上走
step << Warlock
    #xprate <2.1
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯兹格拉|r
    .turnin 1510 >>交任务: |cRXP_FRIENDLY_多格兰的消息|r
    .accept 1511 >>接任务: |cRXP_WARN_肯兹格拉的伤药|r
    .target Ken'zigla
step
    #xprate <2.1
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛吉拉|r
    .turnin 6461 >>交任务: |cRXP_FRIENDLY_盗窃的蜘蛛|r
    .target Xen'Zilla
step
    #xprate <2.1
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >>交任务: |cRXP_FRIENDLY_写给金吉尔的信|r
    --.accept 1058 >>接任务: |cRXP_WARN_金吉尔的森林魔法|r
    .target Witch Doctor Jin'Zil
    .isQuestTurnedIn 876
step
    #xprate <2.1
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳到其中一个笼子上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>|cRXP_WARN_单击此处查看示例|r
step
    #xprate <2.1 << !Warlock
    #completewith ElderCroneTurnin
    .goto Thunder Bluff,54.18,27.01,20,0
    .goto Thunder Bluff,50.75,37.07,40 >>前往: |cRXP_PICK_雷霆崖|r
step << !Warlock
    #xprate >2.09
    #completewith EnterTB1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
    .aura 16618 >>|cRXP_WARN_如果您有10个|r|T134128:0|t[|cRXP_OOT_Blood Shard|r|cRXP_WARN_left，使用它们可以获得|r|T136022:0|t[Spirit of the Wind]|cRXP-WARN_from|r|cRXP_FRIENDLY_Mangletooth|r
    .itemcount 5075,10
step << !Warlock
    #xprate >2.09
    #completewith next
    .goto Mulgore,68.68,60.34
    .zone Mulgore >>前往: |cRXP_PICK_莫高雷|r
step << !Warlock
    #xprate >2.09
    #label EnterTB1
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
step
    #xprate <2.1 << Warlock
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
step
    #xprate <2.1
    #label ElderCroneTurnin
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    >>|cRXP_WARN_等待RP完成|r
    .turnin 1063 >>交任务: |cRXP_FRIENDLY_长者|r
    .timer 6,The Elder Crone RP
    .accept 1064 >>接任务: |cRXP_LOOT_被遗忘者的援助|r
    .target Magatha Grimtotem
step
    #xprate <2.1 << Warlock
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r, Nara
    .turnin 1489 >>交任务: |cRXP_FRIENDLY_哈缪尔·符文图腾|r
    .accept 1490 >>接任务: |cRXP_LOOT_纳拉·蛮鬃|r
    .target Arch Druid Hamuul Runetotem
step
    #xprate <2.1 << Warlock
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r, Nara
    .turnin 1490 >>交任务: |cRXP_FRIENDLY_纳拉·蛮鬃|r
    .accept 914 >>接任务: |cRXP_WARN_尖牙德鲁伊|r
    .target Nara Wildmane
    .dungeon WC
step
    #xprate <2.1 << Warlock
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r, Nara
    .turnin 1490 >>交任务: |cRXP_FRIENDLY_纳拉·蛮鬃|r
    .target Nara Wildmane
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .trainer >>训练你的职业技能
    .target Turak Runetotem
step
    #xprate <2.1 << Warlock
    #label SacredFlame
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞金·石蹄|r
    .accept 1195 >>接任务: |cRXP_WARN_神圣之火|r
    .target Zangen Stonehoof
step << Hunter
    #completewith HunterTraining2
    .goto Thunder Bluff,61.31,78.25,60 >>猎人崛起之旅
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
    .train 5118 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
    .train 5118 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <22,1
    .xp >24,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
    .train 19885 >>列车|T132320:0|t[隐藏轨道]
    .target Urek Thunderhorn
    .xp <24,1
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
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 199 >>Train Two-Handed Maces
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Priest
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
    #xprate <2.1 << Warlock
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂之旅崛起，进入视野之池
step << Rogue/Shaman
    #sticky
    #completewith DeathDUPpickup
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice|r
    .accept 264 >>接任务: |cRXP_WARN_至死方休|r
    .target Clarice Foster
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
    .accept 1065 >>接任务: |cRXP_WARN_塔伦米尔之旅|r << Rogue/Shaman
    .accept 962 >>接任务: |cRXP_LOOT_毒蛇花|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #xprate <2.1
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
    .accept 1065 >>接任务: |cRXP_WARN_塔伦米尔之旅|r << Rogue/Shaman
    .accept 962 >>接任务: |cRXP_LOOT_毒蛇花|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .dungeon WC
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
    .accept 1065 >>接任务: |cRXP_WARN_塔伦米尔之旅|r << Rogue/Shaman
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate <2.1
    #optional
    #label ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
    .accept 1065 >>接任务: |cRXP_WARN_塔伦米尔之旅|r << Rogue/Shaman
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
step << !Warlock
    #xprate >2.09
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .accept 962 >>接任务: |cRXP_LOOT_毒蛇花|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .dungeon WC
step
    #optional
    #label ZamahTurnin
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
    --.accept 5644 >>接任务: |cRXP_WARN_噬灵瘟疫|r << Undead Priest
    .accept 5642 >>接任务: |cRXP_WARN_暗影守卫|r << Troll Priest
    .trainer >>训练你的职业技能
    .target Miles Welsh
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
    .train 12051 >>训练你的职业技能
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
    .train 2138 >>训练你的职业技能
    .target Archmage Shymm
    .xp <22,1
    .xp >24,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
    .train 2121 >>训练你的职业技能
    .target Archmage Shymm
    .xp <24,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
    .train 2645 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
    .train 8498 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
    .train 8046 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <24,1
step
    #xprate <2.1 << Warlock
    #completewith next
    .skill firstaid,80 >>|cRXP_WARN_创建|r|T133688:0|t[Heavy Linen Bandages]|cRXP_WARN_直到你的急救技能达到80或更高|r
    .skill firstaid,<1,1
step
    #xprate <2.1 << Warlock
    #label FirstAid2
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
    >>|cRXP_WARN_如果您没有足够的|r|T132889:0|t[亚麻布]|cRXP_WARN_to达到80技能，请跳过此步骤|r
    .train 3277 >>火车|T133684:0|t[羊毛绷带]
    .train 7934 >>列车|T134437:0|t[抗毒液] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Create|r|T134437:0|t[抗毒液]|cRXP_WARN_if you found any |r|T134339:0|t]Small Venom Sacs]
    >>|cRXP_WARN_Save them for later|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step << Rogue
    #season 0
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kard|r|cRXP_BUY_交谈。从他那里买一个|r|T135324:0|t[长剑]|r
    .collect 923,1,493,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #season 0
    #completewith FlyOrgSR
    +装备|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #season 2
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kard|r|cRXP_BUY.交谈。从他那里买一两个|r|T135342:0|t[Kris]
    .collect 2209,1,493,1 --Collect Kris (1)
    .money <0.7115
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #season 2
    #completewith FlyOrgSR
    +装备|T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Warrior/Shaman
    #completewith next
    #softcore
    +|cRXP_FRIENDLY_如果它更便宜，你可以从拍卖行购买绿色武器|r
step << Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Etu|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #completewith FlyCampT
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Etu|r|cRXP_BUY_交谈。向他购买|r|T135157:0|t[长棍]|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #completewith CallofWater2
    +装备|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 2
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Etu|r|cRXP_BUY_交谈。从他那里买一个|r|T133476:0|t[Flail]|r
    .collect 925,1,493,1 --Collect Flail (1)
    .money <0.7797
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #completewith CallofWater2
    +装备|T133476:0|t[襟翼]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna|r|cRXP_BUY_交谈。从她那里买一个|r|T135489:0|t[重循环弓]|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Thunderhorn
step << Hunter
    #completewith FlyCampT
    +装备重型递归弓
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna交谈|r
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Thunderhorn
step 
    #xprate <2.1 << Warlock
    #label FlyCampT
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >>获得Thunder Bluff飞行路线 << !Tauren
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Tal
    .zoneskip The Barrens
    .dungeon WC << Shaman/Rogue
step << Warlock
    #xprate <2.1
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_步兵劳格玛|r
    .turnin 1511 >>交任务: |cRXP_FRIENDLY_肯兹格拉的伤药|r
    .accept 1515 >>接任务: |cRXP_WARN_多格兰之囚|r
    .target Grunt Logma
step << Warlock
    #xprate <2.1
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_步兵多格兰|r
    .turnin 1515 >>交任务: |cRXP_FRIENDLY_多格兰之囚|r
    .accept 1512 >>接任务: |cRXP_LOOT_爱的礼物|r
    .target Grunt Dogran
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
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
step << Shaman
    #completewith ThunderhawkTurnin
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    >>杀死|cRXP_ENEMY_Owatanka|r。掠夺他|T133723:0|t[|cRXD_Loot_Owatanka的尾钉|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_Owatanka的尾刺|r]开始任务|r
    >>|cRXP_WARN_他有4个产卵点（标记在地图上）|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .use 5102
    .unitscan Owatanka
step << Shaman
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    .goto The Barrens,44.83,63.12
    >>杀死一个|cRXP_ENEMY_Thunderhawk Hatchling|r或一个|rRXP_ENEMY_Thunder霍克Cloudscraper|r。掠夺它的|cRXD_Loot_TThunderhake Wing|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step << Shaman
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
    .accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
    .target Jorn Skyseer
    .isOnQuest 884
step << Shaman
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
    .accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
    .target Jorn Skyseer
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
    #hardcore
    #completewith EnterWC
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Serpentbloom|r|cRXP_WARN_forEveryone|r
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>杀死你看到的所有|cRXP_ENEMY_Deviate Beast|r。掠夺他们的|cRXP_Loot_Hides|r
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_LOOT_Hides|r|cRXP_WARN_forEveryone|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #softcore
    #completewith EnterWC
    >>杀死你看到的所有|cRXP_ENEMY_Deviate Beast|r。掠夺他们的|cRXP_Loot_Hides|r
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
    #hardcore
    #completewith GlowingShard
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Serpentbloom|r|cRXP_WARN_forEveryone|r
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith GlowingShard
    >>将|cRXP_Loot_Serpentbloom|r掠夺到地上
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith GlowingShard
    >>杀死|cRXP_ENEMY_Ectoplasm|r。掠夺它们的|cRXP_Loot_Essent|r
    >>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_LOOT_Hides|r|cRXP_WARN_forEveryone|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #softcore
    #completewith GlowingShard
    >>杀死|cRXP_ENEMY_Ectoplasm|r。掠夺它们的|cRXP_Loot_Essent|r
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
    #completewith GShard
    .hs >>赫斯到棘轮
    .use 6948
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .turnin 1491 >>交任务: |cRXP_FRIENDLY_智慧饮料|r
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >>交任务: |cRXP_FRIENDLY_港口的麻烦|r
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervale|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervale
    .isOnQuest 6981
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔帕克|r
    >>|cRXP_WARN_他位于哭泣洞穴的洞穴入口上方|r
    .turnin 1486 >>交任务: |cRXP_FRIENDLY_变异皮革|r
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith WCEnd
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon WC
step << skip
    #completewith next
    .goto The Barrens,44.45,59.16,100 >>向南前往Taurajo营地
    .dungeon WC
step << skip
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
    #completewith next
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂之旅崛起，进入视野之池
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,23.0,21.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 962 >>交任务: |cRXP_FRIENDLY_毒蛇花|r
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
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
step << !Shaman !Rogue
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Tal
    .dungeon WC
step << Shaman/Rogue
    #label FlyOrgSR
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tal
    .zoneskip Thunder Bluff,1
step << Shaman
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
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
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,30,0
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .zoneskip The Barrens
step << Rogue
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120 >>前往污泥Ven
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
    .mob +变异创业公司无人机
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
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
    #hardcore
    #completewith next
    .goto The Barrens,61.33,4.21,120 >>前往Boulder Lode矿场
step << Rogue
    #hardcore
    .goto The Barrens,60.48,3.76
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_跳到木梁上。通过注销并重新登录来执行注销跳过。如果不成功，请跑回Orgrimmar|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
    .zoneskip Orgrimmar
step << Rogue
    #softcore
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step << Rogue
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
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
step << Rogue
    >>|cRXP_WARN_如果你有任何|r|T134437:0|t[抗毒液]|cRXP_WARN_，用一个来治愈|r|T136230:0|t][赞齐尔之触]
    .itemcount 6452,1
    .aura 9991
    .aura 9810
step << Rogue
    .destroy 8051 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_信号枪|r, 它在你的背包中. 不再需要它了|r
    .destroy 8066 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_费苏勒的哨子|r, 它在你的背包中. 不再需要它了|r
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
    #optional
    .abandon 855 >>Abandon Centaur Bracers
    .isOnQuest 855
]])