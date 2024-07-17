local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#xprate <1.99
<< Horde
#version 11
#group RestedXP部落1-22
#defaultfor Undead
#name 1-6 提瑞斯法林地
#next 6-11 Tirisfal Glades

step << !Undead
    #completewith next
    +|cRXP_WARN_您选择了一个为亡灵准备的指南。建议您选择与开始时相同的起始区域|r
step << !Undead Mage
    #season 2
    #completewith next
    +在探索季节，你不应该以法师的身份在比赛的起跑区外起跑，因为你将无法在这里获得你的第一个符文（|T133816:0|t[雕刻手套-冰枪]）
step
    #completewith Zombies
	.destroy 6948 >>摧毁: |cRXP_ENEMY_炉石|r, 它在你的背包中. 不再需要它了
step
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >>从地下室向|cRXP_FRIENDLY_Mordo|r运行
step
    .goto Tirisfal Glades,30.22,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_送葬者摩尔多|r
    .accept 363 >>接任务: |cRXP_LOOT_突然醒来|r
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cRXP_WARN_杀死|cRXP_ENEMY_Young Scavengers|r和|cRXX_ENEMY_Duskbats|r。掠夺它们，直到你拥有价值60铜的供应商物品（包括你的盔甲）|r << Mage
    +|cRXP_WARN_杀死|cRXP_ENEMY_Young Scavengers|r和|cRXX_ENEMY_Duskbats|r。掠夺它们，直到你拥有价值50铜的供应商物品（包括你的盔甲）|r << Priest
    +|cRXP_WARN_杀死|cRXP_ENEMY_Young Scavengers|r和|cRXX_ENEMY_Duskbats|r。掠夺它们，直到你拥有价值10铜的供应商物品（包括你的盔甲）|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >>进入大楼
step << Priest/Mage
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .vendor >>供应商垃圾箱
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温雅·玛山德|r, |cRXP_FRIENDLY_暗影牧师萨维斯|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r << Mage
    .accept 1470 >>接任务: |cRXP_WARN_控制小鬼|r << Warlock
    .goto Tirisfal Glades,30.98,66.41,0,0 << Warlock
    .turnin 363 >>交任务: |cRXP_FRIENDLY_突然醒来|r
    .accept 364 >>接任务: |cRXP_WARN_无脑的僵尸|r
    .goto Tirisfal Glades,30.84,66.20,0,0
    .target Venya Marthand
    .target Shadow Priest Sarvis
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莎贝拉|r
    .train 1459 >>列车|T135932:0|t[奥秘智力]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayla|r
    .vendor >>供应商垃圾箱
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克希米林|r
    .train 348 >>火车|T135817:0|t[献祭]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r
    .turnin 363 >>交任务: |cRXP_FRIENDLY_突然醒来|r
    .accept 364 >>接任务: |cRXP_WARN_无脑的僵尸|r
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾箱
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .train 6673 >>火车|T132333:0|t[战斗呐喊]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>杀死|cRXP_ENEMY_Rattlecase骷髅|r。掠夺他们的|cRXX_Loot_Ratlecase头骨|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_杀死|cRXP_ENEMY_Mindless Zombies|r和|cRXX_ENEMY_Wreated Zombies| r。掠夺它们，直到你拥有价值25铜的供应商物品（包括你的盔甲）|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温雅·玛山德|r
    .turnin 1470 >>交任务: |cRXP_FRIENDLY_控制小鬼|r
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_Cast|r|T136218:0|t[召唤冲击]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
#loop
	.line Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.82,33.55,64.57,33.29,64.96,31.72,63.98
	.goto Tirisfal Glades,31.72,63.98,25,0
	.goto Tirisfal Glades,30.69,63.88,25,0
	.goto Tirisfal Glades,30.90,62.20,25,0
	.goto Tirisfal Glades,30.73,61.66,25,0
	.goto Tirisfal Glades,31.14,61.41,25,0
	.goto Tirisfal Glades,31.80,61.83,25,0
	.goto Tirisfal Glades,32.85,63.02,25,0
	.goto Tirisfal Glades,32.90,63.54,25,0
	.goto Tirisfal Glades,33.41,63.06,25,0
	.goto Tirisfal Glades,33.75,62.86,25,0
	.goto Tirisfal Glades,33.51,63.82,25,0
	.goto Tirisfal Glades,33.55,64.57,25,0
	.goto Tirisfal Glades,33.29,64.96,25,0
	.goto Tirisfal Glades,31.72,63.98,25,0
    >>杀死|cRXP_ENEMY_Mindless Zombies|r和|cRXP_ENEMY_Wreated Zombies| r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_杀死|cRXP_ENEMY_Mindless Zombies|r和|cRXX_ENEMY_Wreated Zombies| r。掠夺它们，直到你有33铜的供应商物品（包括你的盔甲）|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >>供应商垃圾箱
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >>供应商垃圾箱
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_马克希米林|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_伊莎贝拉|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_黑暗牧师杜斯滕|r << Priest
    .turnin 364 >>交任务: |cRXP_FRIENDLY_无脑的僵尸|r
    .accept 3095 >>接任务: |cRXP_LOOT_简易卷轴|r << Warrior
    .accept 3096 >>接任务: |cRXP_WARN_密文卷轴|r << Rogue
    .accept 3097 >>接任务: |cRXP_WARN_神圣卷轴|r << Priest
    .accept 3098 >>接任务: |cRXP_LOOT_雕文卷轴|r << Mage
    .accept 3099 >>接任务: |cRXP_LOOT_被污染的卷轴|r << Warlock
    .accept 3901 >>接任务: |cRXP_WARN_断骨骷髅|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>交任务: |cRXP_FRIENDLY_被污染的卷轴|r << Warlock
    .accept 77672 >>Accept The Lost Rune << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >>交任务: |cRXP_FRIENDLY_雕文卷轴|r << Mage
    .accept 77671 >>Accept Spell Research << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>交任务: |cRXP_FRIENDLY_神圣卷轴|r << Priest
    .accept 77670 >>Accept Meditation on Undeath << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .target Maximillion << Warlock
    .target Isabella << Mage
    .target Dark Cleric Duesten << Priest
step
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_马克希米林|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_伊莎贝拉|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_黑暗牧师杜斯滕|r << Priest
    .turnin 364 >>交任务: |cRXP_FRIENDLY_无脑的僵尸|r
    .accept 3095 >>接任务: |cRXP_LOOT_简易卷轴|r << Warrior
    .accept 3096 >>接任务: |cRXP_WARN_密文卷轴|r << Rogue
    .accept 3097 >>接任务: |cRXP_WARN_神圣卷轴|r << Priest
    .accept 3098 >>接任务: |cRXP_LOOT_雕文卷轴|r << Mage
    .accept 3099 >>接任务: |cRXP_LOOT_被污染的卷轴|r << Warlock
    .accept 3901 >>接任务: |cRXP_WARN_断骨骷髅|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>交任务: |cRXP_FRIENDLY_被污染的卷轴|r << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >>交任务: |cRXP_FRIENDLY_雕文卷轴|r << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>交任务: |cRXP_FRIENDLY_神圣卷轴|r << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .target Maximillion << Warlock
    .target Isabella << Mage
    .target Dark Cleric Duesten << Priest
step << Priest
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>进入墓地并键入/跪下
    .use 205951 >>使用|T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acorly|r]获得|T237569:0|t[亡灵冥想]增益
    .complete 77670,1 >>学习咒语：雕刻手套-忏悔
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .turnin 77670 >>Turn in Meditation on Undeath
    .target Dark Cleric Duesten
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79,40,0
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79
    >>杀死|cRXP_ENEMY_Young Scavenger |r和|cRXD_ENEMY_Ragged Scavenger | r。掠夺他们的|cRXP_Loot_Scarvenger Paws |r
    >>杀死|cRXP_ENEMY_Duskbats|r和|cRXP_ENEMY_Mangy Duskbats |r。掠夺它们的|cRXD_Loot_Duskbat翅膀|r
    >>|cRXP_WARN_尽可能避免|cRXP_ENEMY_Mangy Duskbats|r，因为它们比|cRXX_ENEMY_Duskbats |r更难杀死|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob Young Scavenger
    .mob Ragged Scavenger
    .mob Duskbat
    .mob Mangy Duskbat
step
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>杀死|cRXP_ENEMY_Rattlecase骷髅|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #som--xpgate
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .xp 3+480 >>升级到480+/1400xp << Warrior/Rogue
    .xp 3+560 >>升级到560+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step
    #era
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .xp 3+940 >>升级到940+/1400xp << Warrior/Rogue
    .xp 3+980 >>升级到980+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    >>|cRXP_WARN_不要低于1银|r << Mage/Warlock/Priest
    .vendor >>供应商垃圾箱
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .turnin 3901 >>交任务: |cRXP_FRIENDLY_断骨骷髅|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >>交任务: |cRXP_FRIENDLY_被诅咒者|r
    .accept 6395 >>接任务: |cRXP_WARN_玛拉的遗愿|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .train 589 >>训练你的职业技能
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .train 2052 >>列车|T135929:0|t[较低治愈等级2]
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .train 1243 >>火车|T135987:0|t[强力词：坚韧]
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克希米林|r
    .train 172 >>列车|T136118:0|t[腐败]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莎贝拉|r
    .train 116 >>列车|T135846:0|t[霜冻螺栓]
    .target Isabella
step
    #xprate <1.5
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵萨尔坦|r, |cRXP_FRIENDLY_执行官阿伦|r
    .accept 3902 >>接任务: |cRXP_WARN_捡破烂|r
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >>接任务: |cRXP_WARN_夜行蜘蛛洞穴|r
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step
    #xprate >1.49
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .accept 380 >>接任务: |cRXP_WARN_夜行蜘蛛洞穴|r
    .goto Tirisfal Glades,32.15,66.01
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾箱
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 >>交任务: |cRXP_FRIENDLY_简易卷轴|r
    .accept 77668 >>Accept The Lost Rune
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 2
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 >>交任务: |cRXP_FRIENDLY_简易卷轴|r
    .accept 77668 >>Accept The Lost Rune
    .train 772 >>列车|T132155:0|t[伦德]
    .target Dannal Stern
    .money <0.01
step << Warrior
    #season 0
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 >>交任务: |cRXP_FRIENDLY_简易卷轴|r
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 >>交任务: |cRXP_FRIENDLY_简易卷轴|r
    .train 772 >>列车|T132155:0|t[伦德]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务: |cRXP_FRIENDLY_密文卷轴|r
    .accept 77669 >>Accept The Scarlet Rune
    .train 53 >>列车|T132090:0|t[后标签]
    .money <0.04
    .target David Trias
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务: |cRXP_FRIENDLY_密文卷轴|r
    .accept 77669 >>Accept The Scarlet Rune
    .target David Trias
step << Rogue
    #season 0
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务: |cRXP_FRIENDLY_密文卷轴|r
    .train 53 >>列车|T132090:0|t[后标签]
    .money <0.04
    .target David Trias
step << Rogue
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务: |cRXP_FRIENDLY_密文卷轴|r
    .target David Trias
step
    #xprate >1.49
    #optional
    #completewith NightWebStart
    .abandon 3902 >>放弃清扫丧钟
step
    #xprate <1.5
    >>打开地面上的|cRXP_PICK_Equipment Boxes|r。为|cRXP_Loot_Scavenged Goods|r掠夺它们
#loop
	.line Tirisfal Glades,32.37,64.37,32.81,64.39,32.89,64.60,33.01,65.38,33.79,64.57,33.13,63.08,32.79,63.11,31.86,61.49,31.75,61.96,31.70,62.53,31.34,62.44,32.37,64.37
	.goto Tirisfal Glades,32.37,64.37,12,0
	.goto Tirisfal Glades,32.81,64.39,12,0
	.goto Tirisfal Glades,32.89,64.60,12,0
	.goto Tirisfal Glades,33.01,65.38,12,0
	.goto Tirisfal Glades,33.79,64.57,12,0
	.goto Tirisfal Glades,33.13,63.08,12,0
	.goto Tirisfal Glades,32.79,63.11,12,0
	.goto Tirisfal Glades,31.86,61.49,12,0
	.goto Tirisfal Glades,31.75,61.96,12,0
	.goto Tirisfal Glades,31.70,62.53,12,0
	.goto Tirisfal Glades,31.34,62.44,12,0
	.goto Tirisfal Glades,32.37,64.37,12,0
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    #label NightWebStart
    .goto Tirisfal Glades,29.29,59.38,50,0
    .goto Tirisfal Glades,29.94,57.33,50,0
#loop
	.line Tirisfal Glades,29.94,57.33,29.82,56.03,29.25,55.77,28.40,56.51,27.68,57.10,28.29,58.31,28.25,59.41,28.80,59.53,29.29,59.40,29.67,58.53,29.94,57.33
	.goto Tirisfal Glades,29.94,57.33,25,0
	.goto Tirisfal Glades,29.82,56.03,25,0
	.goto Tirisfal Glades,29.25,55.77,25,0
	.goto Tirisfal Glades,28.40,56.51,25,0
	.goto Tirisfal Glades,27.68,57.10,25,0
	.goto Tirisfal Glades,28.29,58.31,25,0
	.goto Tirisfal Glades,28.25,59.41,25,0
	.goto Tirisfal Glades,28.80,59.53,25,0
	.goto Tirisfal Glades,29.29,59.40,25,0
	.goto Tirisfal Glades,29.67,58.53,25,0
	.goto Tirisfal Glades,29.94,57.33,25,0
    >>杀死|cRXP_ENEMY_Young Night Web蜘蛛|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    .goto Tirisfal Glades,27.86,58.98,40,0
#loop
	.line Tirisfal Glades,28.25,58.27,28.42,59.07,27.86,60.57,27.17,59.18,27.30,57.97,26.94,56.42,27.51,56.00,28.25,58.27
	.goto Tirisfal Glades,28.25,58.27,25,0
	.goto Tirisfal Glades,28.42,59.07,25,0
	.goto Tirisfal Glades,27.86,60.57,25,0
	.goto Tirisfal Glades,27.17,59.18,25,0
	.goto Tirisfal Glades,27.30,57.97,25,0
	.goto Tirisfal Glades,26.94,56.42,25,0
	.goto Tirisfal Glades,27.51,56.00,25,0
	.goto Tirisfal Glades,28.25,58.27,25,0
    >>杀死靠近洞穴入口的|cRXP_ENEMY_Young Night Web蜘蛛|r
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>进洞里去
step << Warlock
    #season 2
    #completewith RuneofHaunting
    >>杀死洞穴内的|cRXP_ENEMY_Night-Web蜘蛛|r
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warlock
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>在洞穴内偷走|cRXP_PICK_Lost Stache|r，以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Haunting|r]
    .collect 205230,1,77672,1 --Rune of Haunting (1)
step << Warlock
    #season 2
    #label RuneofHaunting
    .use 205230 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .complete 77672,1 --Learn Spell: Engrave Gloves - Haunt
    .isOnQuest 77672
step << Warrior
    #season 2
    #completewith RuneofVictoryRush
    >>杀死洞穴内的|cRXP_ENEMY_Night-Web蜘蛛|r
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warrior
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>在洞穴内偷走|cRXP_PICK_Lost Stache|r，以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Victory Rush|r]
    .collect 204806,1,77668,1 --Rune of Victory Rush (1)
step << Warrior
    #label RuneofVictoryRush
    #season 2
    .use 204806 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .complete 77668,1 --Learn Spell: Engrave Gloves - Victory Rush
    .isOnQuest 77668
step
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54,20,0
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54
    >>杀死洞穴内的|cRXP_ENEMY_Night-Web蜘蛛|r
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    #xprate <1.5
    #softcore
    #completewith Scavenging
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step
    #xprate >1.49
    #softcore
    #completewith NightWebH
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Cast|r|T136218:0|t[召唤冲击]
step
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto Tirisfal Glades,31.08,64.88,30 >>|cRXP_WARN_在洞穴内跳到碎纸机或卡在墙上的木板上，进行注销跳跃，然后注销并返回洞穴|r
    >>|cRXP_WARN_或者，跑回死亡之钟|r
step
    #xprate <1.5
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵萨尔坦|r
    .turnin 3902 >>交任务: |cRXP_FRIENDLY_捡破烂|r
    .target Deathguard Saltain
step << Warlock
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克希米林|r
    .turnin 77672 >>Turn in The Lost Rune
    .target Maximillion
step
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .turnin 380 >>交任务: |cRXP_FRIENDLY_夜行蜘蛛洞穴|r
    .accept 381 >>接任务: |cRXP_WARN_血色十字军|r
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾箱
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >>供应商垃圾箱
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 77668 >>Turn in The Lost Rune
    .target Dannal Stern
step << Mage
    #season 2
    #completewith RuneofIcelance
    >>杀死|cRXP_ENEMY_Scarlet Initiates |r和|cRXD_ENEMY_Scarlet Converters |r。掠夺它们的|cRXP_Loot_Scarlet Armbands|r
    >>|cRXP_WARN_还不要杀死|cRXP_ENEMY_Meven Korgal|r|r
    >>|cRXP_WARN_如果可以的话，尽量避开|cRXP_ENEMY_Scarlet Initiates|r，因为他们有|r|T135843:0|t[霜甲]|cRXP-WARN_（降低攻击速度）|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step << Mage
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
    >>杀死|cRXP_ENEMY_Scarlet启动|r。为|T134939:0|t|cRXP_Loot_[拼写说明：CALE ENCI]|r掠夺它们
    .collect 203751,1,77671,1 --Spell Notes: CALE ENCI (1)
    .mob Scarlet Initiate
step << Mage
    #season 2
    #label RuneofIcelance
    .train 401760 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_LOOT_[拼写说明：CALE ENCI]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Rogue
    #season 2
    #completewith RuneofShadowstrike
    >>杀死|cRXP_ENEMY_Scarlet Initiates |r和|cRXD_ENEMY_Scarlet Converters |r。掠夺它们的|cRXP_Loot_Scarlet Armbands|r
    >>|cRXP_WARN_还不要杀死|cRXP_ENEMY_Meven Korgal|r|r
    >>|cRXP_WARN_如果可以的话，尽量避开|cRXP_ENEMY_Scarlet Initiates|r，因为他们有|r|T135843:0|t[霜甲]|cRXP-WARN_（降低攻击速度）|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step << Rogue
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
    >>杀死|cRXP_ENEMY_Scarlet转化|r。掠夺它们以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Shadowstrike|r]
    .collect 204795,1,77669,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #label RuneofShadowstrike
    .use 204795 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r]
    .complete 77669,1 --Learn Spell: Engrave Gloves - Shadowstrike
    .isOnQuest 77669
step
    #requires NightWebH
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
    >>杀死|cRXP_ENEMY_Scarlet Initiates |r和|cRXD_ENEMY_Scarlet Converters |r。掠夺它们的|cRXP_Loot_Scarlet Armbands|r
    >>|cRXP_WARN_还不要杀死|cRXP_ENEMY_Meven Korgal|r|r
    >>|cRXP_WARN_如果可以的话，尽量避开|cRXP_ENEMY_Scarlet Initiates|r，因为他们有|r|T135843:0|t[霜甲]|cRXP-WARN_（降低攻击速度）|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>杀死|cRXP_ENEMY_Samuel|r。掠夺他|cRXX_Loot_SSamuel的剩余物|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #softcore
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step
    .goto Tirisfal Glades,31.17,65.08
	>>点击地面上的|cRXP_PICK_Marla的坟墓|r
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Cast|r|T136218:0|t[召唤冲击]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_黑暗牧师杜斯滕|r << Priest
    .turnin 6395 >>交任务: |cRXP_FRIENDLY_玛拉的遗愿|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >>接任务: |cRXP_WARN_黑暗的恩赐|r << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Novice Elreth
    .target Dark Cleric Duesten << Priest
step << Mage
    #season 2
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莎贝拉|r
    .turnin 77671 >>Turn in Spell Research
    .target Isabella
    .isQuestComplete 77671
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .turnin 381 >>交任务: |cRXP_FRIENDLY_血色十字军|r
    .accept 382 >>接任务: |cRXP_WARN_十字军信使|r
    .target Executor Arren
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Turn in The Scarlet Rune
    .target David Trias
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾箱
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >>杀死|cRXP_ENEMY_Meven|r。掠夺他获得|cRXD_Loot_Scarlet十字军东征文件|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .turnin 382 >>交任务: |cRXP_FRIENDLY_十字军信使|r
    .accept 383 >>接任务: |cRXP_WARN_重要情报|r
    .target Executor Arren
step
    .goto Tirisfal Glades,34.08,59.51,40,0
    .goto Tirisfal Glades,35.34,56.55,40,0
    .goto Tirisfal Glades,36.83,56.85,40,0
    .goto Tirisfal Glades,37.76,59.38,40,0
    .goto Tirisfal Glades,37.51,62.99,40,0
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
    .xp 5+2350 >>升级到2350+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔文·蒙泰古|r
    .accept 8 >>接任务: |cRXP_LOOT_潜行者的交易|r
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#classic
#xprate <1.99
<< Horde
#name 6-11 Tirisfal Glades
#version 11
#group RestedXP部落1-22
#defaultfor Undead
#next 11-14银松森林；12-17 贫瘠之地

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_西米尔|r
    .accept 365 >>接任务: |cRXP_WARN_悲伤之地|r
    .target Deathguard Simmer
step
    .goto Tirisfal Glades,40.77,54.42,40,0
    .goto Tirisfal Glades,42.04,55.11,40,0
    .goto Tirisfal Glades,43.59,54.30,40,0
    .goto Tirisfal Glades,46.21,56.78,40,0
    .goto Tirisfal Glades,48.88,57.93,40,0
    .goto Tirisfal Glades,50.73,57.27,40,0
    .goto Tirisfal Glades,52.52,54.48,40,0
    .goto Tirisfal Glades,54.49,52.65,40,0
    .goto Tirisfal Glades,56.13,52.48,40,0
    .goto Tirisfal Glades,42.04,55.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛尔多|r
    >>|cRXP_WARN_他在通往布里尔的路上巡逻，真是令人憎恶|r
    .accept 5481 >>接任务: |cRXP_LOOT_葛尔多的任务|r
    .unitscan Gordo
step << Priest
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博文·布里斯博埃斯|r
    .train 3908 >>列车|T136249:0|t[剪裁]。保存您的|T132889:0|t[亚麻布]。这将允许您稍后创建魔杖
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer|r处死亡并重生，或运行到Brill
    .target Spirit Healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_执行官塞加德|r
    .accept 404 >>接任务: |cRXP_LOOT_腐烂的爪子|r
    .goto Tirisfal Glades,58.20,51.45
    .turnin 383 >>交任务: |cRXP_FRIENDLY_重要情报|r
    .accept 427 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .goto Tirisfal Glades,60.59,51.77
    .target Deathguard Dillinger
    .target Executor Zygand
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mrs交谈。Winters |r|cRXP_BUY_。从她那里购买|r|T135421:0|t[加权飞斧]|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith Claws
    +装备|T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #completewith Claws
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135321:0|t[Gladius]（5s 36c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135321:0|t[Gladius]|r
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #completewith Claws
    +装备|T135321:0|t[格拉迪乌斯]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    .turnin 8 >>交任务: |cRXP_FRIENDLY_潜行者的交易|r
    .home >>将您的炉石设置为Brill
    .target Innkeeper Renee
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen |r|cRXP_WARN_在旅馆的二楼|r
    .accept 375 >>接任务: |cRXP_WARN_死亡之寒|r
    .target Gretchen Dedmar
    .xp <7,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
    .turnin 5651 >>交任务: |cRXP_FRIENDLY_黑暗的恩赐|r
    .accept 5650 >>接任务: |cRXP_WARN_黑暗之衣|r
	.train 591 >>列车|T135924:0|t[Smite]
    .train 17 >>列车|T135940:0|t[电源字：屏蔽]
    .train 2052 >>列车|T135929:0|t[较低治愈等级2]
    .target Dark Cleric Beryl
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 143 >>列车|T135812:0|t[火球]
    .train 2136 >>列车|T135807:0|t[火灾爆炸]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 3127 >>列车|T132269:0|t[Parry]
    .target Austil de Mon
    .money <0.01
step << Rogue
    #season 0
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1757 >>火车|T136189:0|t[邪恶的打击]
    .target Marion Call
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1757 >>火车|T136189:0|t[邪恶的打击]
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .target Marion Call
    .money <0.02
step << Rogue
    #optional
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .target Marion Call
    .money >0.02
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·朗恩|r
    >>|cRXP_BUY_从她那里购买|r|T133738:0|t[Grimoire of Blood Pact]|cRXP_Buy_|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>供应商垃圾箱
    .target Gina Lang
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 695 >>列车|T136197:0|t[影子螺栓]
    .train 1454 >>列车|T136126:0|t[生命抽头]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 695 >>列车|T136197:0|t[影子螺栓]
    .target Rupert Boch
step << Warlock
    #completewith Claws
    .train 20397 >>|cRXP_WARN_使用|r|T133738:0|t[血约之谜]
    .itemcount 16321,1
    .use 16321
step << Priest/Warlock
    .goto Tirisfal Glades,61.76,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_范斯·安德格鲁姆|r
    .train 7411 >>火车|T136244:0|t[迷人]。这与|T136249:0|t[Tailering]一起将允许您稍后创建魔杖
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Priest
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r <<Warrior/Rogue
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[冰牛奶]|cRXP_Buy_和|r|T134532:0|t[红色斑点蘑菇]|cRX|r << Warlock
    .vendor >>供应商垃圾箱
    .collect 1179,15,367,1 << Mage/Priest --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
 step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 367 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaan
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>在|cRXP_FRIENDLY_Dathguard Kel|r上施法|T135929:0|t[小治疗]和|T135987:0|t[力量文字：坚韧]
    >>|cRXP_WARN_你需要较低的治疗等级2才能完成此任务|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Claws
    >>将|cRXP_Loot_Gloom Weed|r洗劫一空
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith GloomWeed
    >>杀死你看到的任何|cRXP_ENEMY_Decrepit Darkhound|r。掠夺他们的|cRXP_Loot_Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #label Claws
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25
    .goto Tirisfal Glades,52.63,56.98
    >>杀死|cRXP_ENEMY_Rotting Dead|r和|cRXD_ENEMY_Ravaged Corses|r。掠夺它们的|cRXP_Loot_爪|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    #label GloomWeed
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33
    >>完成掠夺地面上的|cRXP_LOOT_Gloom Weed|r
    .complete 5481,1 --Gloom Weed (3)
step << Warrior
    #optional
    #season 2
    #xprate >1.49
    #completewith DBlood
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
    .isOnQuest 375
step
    #optional
    #xprate >1.49
    #completewith next
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #xprate >1.49
    #label DBlood
    #loop
    .goto Tirisfal Glades,43.97,57.27,0
    .goto Tirisfal Glades,40.57,47.23,0
    .waypoint Tirisfal Glades,48.03,53.43,80,0
    .waypoint Tirisfal Glades,43.97,57.27,80,0
    .waypoint Tirisfal Glades,41.01,55.94,60,0
    .waypoint Tirisfal Glades,40.57,47.23,60,0
    .waypoint Tirisfal Glades,40.89,42.77,60,0
    .waypoint Tirisfal Glades,39.12,39.85,60,0
    >>完成杀戮|cRXP_ENEMY_Darkhounds|r。掠夺他们的|cRXX_Loot_Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_开始收集3堆|r|T132889:0|t[亚麻布]|cRXP_WARN_。这将用于制作|r|T135139:0|t[小魔杖]|cRXP_WARN_water|r
    >>|cRXP_WARN_如果你不想这样做，或者以后想从拍卖行购买，请跳过这一步|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_开始收集3堆|r|T132889:0|t[亚麻布]|cRXP_WARN_。这将用于制作|r|T135139:0|t[小魔杖]|cRXP_WARN_water|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    #season 2
    #completewith next
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Tirisfal Farmers|r和|cRXX_ENEMY_Tyrisfal Farmhands|r。为|T134327:0|t[|cRXD_Loot_Top-Left Map Piece|r]掠夺它们
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>掠夺在田地里找到的|cRXP_Loot_Pumpkins|r。
    .complete 365,1 --Tirisfal Pumpkin (10)
step << Rogue
    #season 2
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Tirisfal Farmers|r和|cRXX_ENEMY_Tyrisfal Farmhands|r。为|T134327:0|t[|cRXD_Loot_Top-Left Map Piece|r]掠夺它们
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step << Rogue/Mage/Priest
    #season 2
    #completewith next
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺它们|T134327:0|t[|cRXX_Loot_Top-Right Map Piece|r] << Rogue
    >>杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺他们|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r] << Mage
    >>杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺他们|T135975:0|t[|cRXP_FRIENDLY_亵渎城堡的名字|r] << Priest
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以掉落地图碎片|r << Rogue
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以施放咒语|r << Mage
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以放弃预言|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step
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
    >>杀死|cRXP_ENEMY_猩红战士|r
    >>|cRXP_WARN_要小心，因为他们在完成防御姿态动画后，有50%的防御提升，持续8秒|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step << Rogue/Mage/Priest
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
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺它们|T134327:0|t[|cRXX_Loot_Top-Right Map Piece|r] << Rogue
    >>杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺他们|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r] << Mage
    >>杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺他们|T135975:0|t[|cRXP_FRIENDLY_亵渎城堡的名字|r] << Priest
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以掉落地图碎片|r << Rogue
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以施放咒语|r << Mage
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以放弃预言|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r]|cRXP_WARN_to learn|r|T135820:0|t[活火焰]
    .use 203752
    .itemcount 203752,1
step << Mage/Priest
    #season 2
    .goto Tirisfal Glades,25.6,48.2
    >>杀死|cRXP_ENEMY_Gillgar|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]掠夺他 << Mage
    >>杀死|cRXP_ENEMY_Gillgar |r。为|T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r]掠夺他 << Priest
    >>|cRXP_WARN_这是一个7级精英，不容易杀死。如果太难的话，暂时跳过他|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 401765 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]|cRXP-WARN_to learn|r|T236227:0|t[霜的手指]
    .use 203753
step
    #hardcore
    #completewith BrillTurnin1
    .hs >>从炉子到布里尔
    .subzoneskip 159
    .cooldown item,6948,>0,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >>在|cRXP_FRIENDLY_精神治疗师|r处死亡并重生
step << Priest
    #season 2
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>跪在墓地直到获得buff|T237569:0|t[亡灵冥想]
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_黑暗目的记忆|r]|cRXP_WARN_训练|r|T237514:0|t[虚空瘟疫]
step << Priest
    #season 2
    #completewith BrillTurnin1
    .use 205947
    .itemcount 205947,1
    .aura 417316 >>|cRXP_WARN_现在你必须找到一个拥有面包buff的巨魔牧师。你必须跪在他面前，他必须为你祈祷。|r
    .train 402852 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_废弃城堡的名称|r]|cRXP_WARN_训练|r|T237570:0|t[Hhomuncli]
step
    #softcore
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    .goto Tirisfal Glades,57.71,48.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r, he patrols around the graveyard.
    .turnin 5481 >>交任务: |cRXP_FRIENDLY_葛尔多的任务|r
    .accept 5482 >>接任务: |cRXP_LOOT_末日草|r
    .target Junior Apothecary Holland
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 404 >>交任务: |cRXP_FRIENDLY_腐烂的爪子|r
    .accept 426 >>接任务: |cRXP_WARN_磨坊告急|r
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .turnin 365 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 407 >>接任务: |cRXP_WARN_悲伤之地|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 370 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .goto Tirisfal Glades,60.58,51.77
    .target Deathguard Dillinger
    .target Executor Zygand
    .target Apothecary Johaan
    .isQuestComplete 367
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 404 >>交任务: |cRXP_FRIENDLY_腐烂的爪子|r
    .accept 426 >>接任务: |cRXP_WARN_磨坊告急|r
    .goto Tirisfal Glades,58.20,51.43
    .turnin 365 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .accept 407 >>接任务: |cRXP_WARN_悲伤之地|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 370 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .goto Tirisfal Glades,60.58,51.77
    .target Deathguard Dillinger
    .target Executor Zygand
    .target Apothecary Johaan
 step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的血色狂热者|r
    .turnin 407 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .target Captured Scarlet Zealot
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
    .turnin 5650 >>交任务: |cRXP_FRIENDLY_黑暗之衣|r
    .train 591 >>列车|T135924:0|t[Smite]
    .train 17 >>列车|T135940:0|t[电源字：屏蔽]
    .target Dark Cleric Beryl
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen |r|cRXP_WARN_在旅馆的二楼|r
    .accept 375 >>接任务: |cRXP_WARN_死亡之寒|r
    .target Gretchen Dedmar
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 139 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 205 >>训练你的职业技能
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 284 >>训练你的职业技能
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 6760 >>训练你的职业技能
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 980 >>训练你的职业技能
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_妮拉|r
    >>|cRXP_WARN_试着在你等待的时候制作它们，比如齐柏林飞艇|r
    .train 3273 >>列车|T135966:0|t[急救]
    .target Nurse Neela
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith NewPlague1
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135321:0|t[Gladius]（5s 36c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135321:0|t[Gladius]|r
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #completewith NewPlague1
    +装备|T135321:0|t[格拉迪乌斯]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #hardcore
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    .goto Tirisfal Glades,57.71,48.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r, he patrols around the graveyard.
    .turnin 5481 >>交任务: |cRXP_FRIENDLY_葛尔多的任务|r
    .accept 5482 >>接任务: |cRXP_LOOT_末日草|r
    .target Junior Apothecary Holland
step << Warrior
    #season 2
    #xprate <1.5
    #completewith DuskbatTrophy1
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #completewith next
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <1.5
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
    >>杀死|cRXP_ENEMY_Darkhounds|r。掠夺他们的|cRXX_Loot_Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step << Rogue/Warrior
    #xprate <1.5
    #optional
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
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3960,1
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #label DuskbatTrophy1
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
    .xp 7+3260 >>升级到3260+/4500
--XX 700 (375)+540 (367)
step
    #xprate >1.49
    #optional
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
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3690,1
step
    #xprate >1.49
    #label DuskbatTrophy1
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
    .xp 7+2640 >>升级到2640+/4500
--XX 700 (375)+540 (367)
step
    #xprate <1.5
    #hardcore
    #completewith NewPlague1
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith NewPlague1
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    #label NewPlague1
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r, Wanted Poster, |cRXP_FRIENDLY_执政官塞弗伦|r
    .accept 374 >>接任务: |cRXP_WARN_死亡证明|r
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>接任务: |cRXP_WARN_悬赏：蛆眼|r
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>接任务: |cRXP_LOOT_盗墓贼|r
    .goto Tirisfal Glades,61.26,50.84
    .target Magistrate Sevren
    .target Deathguard Burgess
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <1.5
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 139 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    #xprate <1.5
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 205 >>训练你的职业技能
    .target Cain Firesong
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 284 >>训练你的职业技能
    .target Austil de Mon
    .xp <8,1
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 6760 >>训练你的职业技能
    .target Marion Call
    .xp <8,1
step << Warlock
    #xprate <1.5
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 980 >>训练你的职业技能
    .target Rupe
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    #completewith Doomweed
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135321:0|t[Gladius]（5s 36c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135321:0|t[Gladius]|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    #completewith Doomweed
    +装备|T135321:0|t[格拉迪乌斯]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Rogue
    #season 2
    #completewith MaggotEye
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Rot隐藏Gnolls|r。掠夺它们|T134327:0|t[|cRXP-Loot_Bottom-Left地图碎片|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rote Hide Gnoll
    .mob Rot Hide Graverobber
    .train 400095,1
step << Warrior
    #season 2
    #completewith MaggotEye
    >>杀死任何类型的|cRXP_ENEMY_Rote Hide Gnoll|r。掠夺它们以获得|cRXX_Loot_Severed Gnoll Head|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rote Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step
    #completewith next
    >>将|cRXP_Loot_Doom杂草|r洗劫一空
    >>|cRXP_WARN_它们是在Gnoll地区的树木附近发现的|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>杀死|cRXP_ENEMY_Rot隐藏盗墓者|r。掠夺他们的|cRXX_Loot_Ichor|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>杀死|cRXP_ENEMY_Rot隐藏蒙古人|r。掠夺他们的|cRXX_Loot_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label Doomweed
    #loop
    .goto Tirisfal Glades,57.48,35.95,0
    .goto Tirisfal Glades,57.68,34.37,30,0
    .goto Tirisfal Glades,57.45,35.96,30,0
    .goto Tirisfal Glades,56.79,37.79,30,0
    .goto Tirisfal Glades,56.05,38.76,30,0
    .goto Tirisfal Glades,55.09,38.74,30,0
    .goto Tirisfal Glades,55.25,40.16,30,0
    .goto Tirisfal Glades,54.68,42.12,30,0
    .goto Tirisfal Glades,55.29,41.51,30,0
    .goto Tirisfal Glades,56.58,41.99,30,0
    .goto Tirisfal Glades,58.29,42.93,30,0
    .goto Tirisfal Glades,58.83,40.68,30,0
    .goto Tirisfal Glades,58.36,38.55,30,0
    .goto Tirisfal Glades,57.48,35.95,30,0
    >>将|cRXP_Loot_Doom杂草|r洗劫一空
    >>|cRXP_WARN_它们是在Gnoll地区的树木附近发现的|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step << Mage
    #season 2
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>铸造|T136071:0|t[变形]在|cRXP_ENEMY_Odd Melons|r上
    >>将|T134332:0|t|cRXP_Loot_[药剂师笔记]|r洗劫一空
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #completewith MaggotEye
    >>杀死|cRXP_ENEMY_Rot隐藏蒙古人|r。掠夺他们的|cRXX_Loot_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>杀死|cRXP_ENEMY_Maggot Eye|r。掠夺他的|cRXX_Loot_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>杀死|cRXP_ENEMY_Rot隐藏蒙古人|r。掠夺他们的|cRXX_Loot_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>杀死|cRXP_ENEMY_Rot隐藏Gnolls|r。掠夺他们的|cRXP-Loot_Ichor|r
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rote Hide Gnoll
    .mob Rot Hide Graverobber
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Rot隐藏Gnolls|r。掠夺它们|T134327:0|t[|cRXP-Loot_Bottom-Left地图碎片|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>杀死任何类型的|cRXP_ENEMY_Rote Hide Gnoll|r。掠夺它们以获得|cRXX_Loot_Severed Gnoll Head|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rote Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << Warrior
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
    >>杀死|cRXP_ENEMY_Vile Vin Murlocs|r。掠夺他们的|cRXP_Loot_Scales|r和|cRXP-Loot_Severed Murloc Head|r
    .complete 368,1 --Vile Fin Scale (5)
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step << Rogue
    #season 2
    #completewith MurlocVins
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Vile Fin Murlocs|r用于|T134241:0|t[|cRXX_LOOT_Shipwreck缓存密钥|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .train 400081,1
step << Rogue
    #season 2
    #completewith RuneofPrecision
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Vile Vin Murlocs|r。掠夺它们|T134327:0|t[|cRXX_Loot_Bottom-Right Map Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .train 400095,1
step
    #label MurlocVins
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>杀死|cRXP_ENEMY_Vile Vin Murlocs|r。掠夺他们的|cRXX_Loot_Scales|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step << Rogue
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
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Vile Fin Murlocs|r用于|T134241:0|t[|cRXX_LOOT_Shipwreck缓存密钥|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>为|T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]掠夺|cRXP_PICK_Shipwreck缓存|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    #label RuneofPrecision
    .train 400081 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_精度调整|r]|cRXP_WARN_训练|r|T135610:0|t]
    .use 204174
    .itemcount 204174,1
step << Rogue
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
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Vile Vin Murlocs|r。掠夺它们|T134327:0|t[|cRXX_Loot_Bottom-Right Map Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step << Rogue
    #season 2
    .use 208036 >>|cRXP_WARN_使用|r|T134327:0|t[|cRXP_LOOT_Map Pieces|r]|cRXD_WARN_创建|r|T134269:0|t[|cRXP-LOOT_Tirisfal藏宝图|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #hardcore
    #completewith DoomedWeed
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
step
    #softcore
    #completewith DoomedWeed
    .goto Tirisfal Glades,64.50,29.41
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    >>|cRXP_WARN_确保你死在航路点箭头上（或西面）|r
step
    #label DoomedWeed
    .goto Tirisfal Glades,59.26,46.73,30,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,57.71,48.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r, he patrols around the graveyard.
    .turnin 5482 >>交任务: |cRXP_FRIENDLY_末日草|r
    .target Junior Apothecary Holland
step << Rogue
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>|cRXP_WARN_使用|r|T134269:0|t[|cRXP_LOOT_Tirisfal藏宝图|r]|cRXP-WARN_桥下|r
    >>掠夺为|T134419:0|t生成的|cRXP_PICK_Buried Treasure |r宝箱[|cRXP_FIRENDLY_Rune of Quick Draw|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]|cRXP-WARN_to train|r|T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 368 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 369 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>交任务: |cRXP_FRIENDLY_悬赏：蛆眼|r
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>交任务: |cRXP_FRIENDLY_盗墓贼|r
    .accept 405 >>接任务: |cRXP_WARN_流浪的巫妖|r
    .accept 359 >>接任务: |cRXP_LOOT_亡灵卫兵的职责|r
    .goto Tirisfal Glades,61.26,50.84
    .target Apothecary Johaan
    .target Executor Zygand
    .target Magistrate Sevren
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 368 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 369 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>交任务: |cRXP_FRIENDLY_悬赏：蛆眼|r
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>交任务: |cRXP_FRIENDLY_盗墓贼|r
    .accept 405 >>接任务: |cRXP_WARN_流浪的巫妖|r << Mage/Warlock
    .accept 359 >>接任务: |cRXP_LOOT_亡灵卫兵的职责|r
    .goto Tirisfal Glades,61.26,50.84
    .target Apothecary Johaan
    .target Executor Zygand
    .target Magistrate Sevren
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .accept 354 >>接任务: |cRXP_WARN_阿加曼德家族|r
    .accept 362 >>接任务: |cRXP_WARN_闹鬼的磨坊|r
    .target Coleman Farthing
step << !Mage !Warlock
    #xprate >1.49
    #optional
    #completewith AgamandStart
    .abandon 405 >>抛弃浪子巫妖
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 139 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 205 >>训练你的职业技能
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 284 >>训练你的职业技能
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 6760 >>训练你的职业技能
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 980 >>训练你的职业技能
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_妮拉|r
    >>|cRXP_WARN_试着在你等待的时候制作它们，比如齐柏林飞艇|r
    .train 3273 >>列车|T135966:0|t[急救]
    .target Nurse Neela
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith MillsOverun
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135321:0|t[Gladius]（5s 36c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135321:0|t[Gladius]|r
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #completewith MillsOverun
    +装备|T135321:0|t[格拉迪乌斯]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Priest
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r <<Warrior/Rogue
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[冰牛奶]|cRXP_Buy_和|r|T134532:0|t[红色斑点蘑菇]|cRX|r << Warlock
    .vendor >>供应商垃圾箱
    .collect 1179,20,426,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
step << Rogue/Warrior
    #softcore
    .goto Tirisfal Glades,60.31,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莉莎·考伦|r
    .vendor >>Repair your weapon
    .target Eliza Callen
step << Warrior
    #season 2
    #completewith AgamandStart
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith next
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >>向北/向西行驶至Agamand Mills
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_OOT_Thurman's Letter|r]|cRXP-WARN_may drop from these mobs T134939,0|t[| cRXP_LOOT_Therman’s Letter |r]| cRXP-WAR_may drop。如果任务完成，请接受它|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
step
    #completewith ThurmanGregor
    #label MillsOverun
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXD_ENEMY_Bonecasters|r。掠夺他们的|cRXP_Loot_Ribs|r和| cRXP_Loot_Sulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>杀死|cRXP_ENEMY_Devlin|r。掠夺他的|cRXX_Loot_Eremains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto Tirisfal Glades,49.34,36.02
    >>杀死|cRXP_ENEMY_Nissa|r。为她抢劫她|cRXX_Loot_LUENTS|r。她可以在大楼里
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #label ThurmanGregor
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15
    >>杀死|cRXP_ENEMY_Thurman|r和|cRXX_ENEMY_Gregor|r。掠夺他们的|cRXP_Loot_REQUAINS|r。他们可以四处巡逻
    .complete 354,3 --Thurman's Remains (1)
    .complete 354,1 --Gregor's Remains (1)
    .unitscan Thurman Agamand
    .unitscan Gregor Agamand
step
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXD_ENEMY_Bonecasters|r。掠夺他们的|cRXP_Loot_Ribs|r和| cRXP_Loot_Sulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate <1.5
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXX_ENEMY_Bonecasters|r。掠夺他们|T134939:0|t[|cRXD_Loot_Therman的信|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3620,1
    .isOnQuest 375
--XX 880(426)+480（361，选择）+880（354）+420（362）+700（375，选择）
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXX_ENEMY_Bonecasters|r。掠夺他们|T134939:0|t[|cRXD_Loot_Therman的信|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+4320,1
    .isQuestTurnedIn 375
--XX 880(426)+480（361，选择）+880（354）+420（362）+700（375，选择）
step
    #xprate >1.49
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXX_ENEMY_Bonecasters|r。掠夺他们|T134939:0|t[|cRXD_Loot_Therman的信|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+2180,1
    .isOnQuest 375
--XX 880(426)+480（361，选择）+880（354）+420（362）+700（375，选择）
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXX_ENEMY_Bonecasters|r。掠夺他们|T134939:0|t[|cRXD_Loot_Therman的信|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3230,1
    .isQuestTurnedIn 375
--XX 880(426)+480（361，选择）+880（354）+420（362）+700（375，选择）
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+3620 >>升级到3620+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+4320 >>升级到4320+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+3840 >>升级到3840+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+3140 >>升级到3140+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+2180 >>升级到2180+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+3230 >>升级到3230+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+2510 >>升级到2510+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+1460 >>升级到1460+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << Mage/Priest
    #season 2
    >>杀死|cRXP_ENEMY_Gillgar|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]掠夺他 << Mage
    >>杀死|cRXP_ENEMY_Gillgar |r。为|T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r]掠夺他 << Priest
    >>|cRXP_WARN_这是一个7级精英，不容易杀死。如果太难的话，暂时跳过他|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品
    .train 401765 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]|cRXP-WARN_to learn|r|T236227:0|t[霜的手指]
    .use 203753
step
    #xprate <1.5
    #hardcore
    #completewith FoodandWater2
    .hs >>从炉子到布里尔
    .subzoneskip 159
    .cooldown item,6948,>0,1
step
    #xprate <1.5
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate >1.49
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
step
    #xprate >1.49
    #softcore
    #completewith FoodandWater2
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 426 >>交任务: |cRXP_FRIENDLY_磨坊告急|r
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 361 >>交任务: |cRXP_FRIENDLY_未寄出的信件|r
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.72,52.29
    .target Yvette Farthing
    .target Coleman Farthing
    .isOnQuest 361
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .target Coleman Farthing
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.trainer >>训练你的职业技能
    .target Dark Cleric Beryl
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .trainer >>训练你的职业技能
    .accept 1818 >>接任务: |cRXP_WARN_迪林格尔|r
    .target Austil de Mon << Warrior
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃格隆·卡加尔|r
    .accept 1478 >>接任务: |cRXP_LOOT_哈加尔的召唤|r
    .target Ageron Kargal
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 707 >>训练你的职业技能
    .target Rupert Boch
step << Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r inside the inn
    .trainer >>训练你的职业技能
    .accept 1885 >>接任务: |cRXP_LOOT_米奈特·卡加德|r
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r inside the inn
    .accept 1881 >>接任务: |cRXP_WARN_安娜斯塔西娅|r
    .target Cain Firesong
step
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Priest/Shaman
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r <<Warrior/Rogue
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[冰牛奶]|cRXP_Buy_和|r|T134532:0|t[红色斑点蘑菇]|cRX|r << Warlock
    .vendor >>供应商垃圾箱
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1818 >>交任务: |cRXP_FRIENDLY_迪林格尔|r
    .accept 1819 >>接任务: |cRXP_LOOT_切割者奥拉格|r
    .target Deathguard Dillinger
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_点击地面上的头骨。这将调用|r|cRXP_ENEMY_Ulag|r|cRXP_WARN_杀了他|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1819 >>交任务: |cRXP_FRIENDLY_切割者奥拉格|r
    .accept 1820 >>接任务: |cRXP_WARN_库勒曼|r
    .target Deathguard Dillinger
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step << Warlock
    #xprate <1.5
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norman|r
    .home >>将您的炉石设置为幽暗城
    .target Innkeeper Norman
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1478 >>交任务: |cRXP_FRIENDLY_哈加尔的召唤|r
    .accept 1473 >>接任务: |cRXP_WARN_虚空中的生物|r
step << Warlock
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step << Rogue
    #season 2
    #completewith ScarletCrusade1
    >>使用|cRXP_ENEMY_Captain Perrine|r上的|T133644:0|t[拾取口袋]来获得|T133385:0|t[|cRXP-LOOT_Scarlet中尉签名戒指|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>抢劫|cRXP_PICK_Perrine的胸脯|r for |T133733:0|t[Egalin的格里莫瓦]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
#loop
	.line Tirisfal Glades,50.07,68.87,50.23,66.94,51.16,65.73,51.75,66.04,52.93,67.62,52.72,69.33,51.96,69.57,51.03,69.55
	.goto Tirisfal Glades,50.07,68.87,25,0
	.goto Tirisfal Glades,50.23,66.94,25,0
	.goto Tirisfal Glades,51.16,65.73,25,0
	.goto Tirisfal Glades,51.75,66.04,25,0
	.goto Tirisfal Glades,52.93,67.62,25,0
	.goto Tirisfal Glades,52.72,69.33,25,0
	.goto Tirisfal Glades,51.96,69.57,25,0
	.goto Tirisfal Glades,51.03,69.55,25,0
    >>杀死|cRXP_ENEMY_Captain Perrine|r，|cRXD_ENEMY_Scarlet狂热分子|r和|cRXP_ENEMY_ Scarlet传教士|r。掠夺他们的|cRXP_Loot_Scarlet徽章戒指|r
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
    .mob Captain Perrine
    .mob Scarlet Zealot
    .mob Scarlet Missionary
step << Rogue
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>使用|cRXP_ENEMY_Captain Perrine|r上的|T133644:0|t[拾取口袋]来获得|T133385:0|t[|cRXP-LOOT_Scarlet中尉签名戒指|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>掠夺|cRXP_PICK_Perrine的胸部|r在地上|T133733:0|t[Egalin的格里莫瓦]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #xprate <1.5
    #completewith UCHome
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step
    #xprate >1.49
    #ah << Priest
    #completewith LogoutSkip1
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
--XX Priest skips on 1.5x unless they go for a Wand. No reason to go Undercity if skipping Lich quest and not setting hearth
step << Rogue
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在战区与|r|cRXP_FRIENDLY_Archibald|r交谈
    .train 201 >>训练1h剑
    .target Archibald
step << Warrior/Rogue
    .goto Undercity,56.06,37.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brom|r
    .train 2575 >>列车|T136248:0|t[采矿]。这将允许您从节点中找到|T135232:0|t|cRXP_LOOT_[粗糙的石头]|r，以便制作|T135248:0|t[磨石]（+2武器伤害30分钟）
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    .target Brom Killian
step << Warrior/Rogue
    .goto Undercity,56.72,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_购买|r|T134708:0|t[挖掘拾取]|cRXP_Buy_from|r|cRXP-FRIENDLY_Sarah|r
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto Undercity,60.17,29.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴兹尔·弗莱伊|r
    .train 2018 >>列车|T136241:0|t[铁匠铺]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    >>|cRXP_BUY_从拍卖行购买6|r|T134339:0|t[变色虫心]|cRXP_Buy_|r
    >>|cRXP_BUY_从拍卖行购买|r|T135139:0|t[小魔杖]|cRXP_Buy_|r << Priest
    >>|cRXP_BUY_如果您愿意，可以从拍卖行购买|r|T135139:0|t[小魔杖]|cRXP_Buy_|r << Mage/Warlock
    >>|cRXP_WARN_如果你这样做，并且正在收集|r|T132889:0|t[亚麻布]|cRXP_WARN_earlier，你可以在拍卖行出售你的|r|T132889:0| t[亚麻布]|cRXP_WARN_on|r << Priest
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    .collect 3164,6,429,1 --Discolored Worg Heart (6)
    .collect 11287,1,435,1 << Priest/Mage/Warlock --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << !Priest
    #xprate >1.49
    #ah
    #optional
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    >>|cRXP_BUY_从拍卖行购买6|r|T134339:0|t[变色虫心]|cRXP_Buy_|r
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    .collect 3164,6,429,1 --Discolored Worg Heart (6)
    .target Auctioneer Rhyker
step << !Warlock
    #xprate <1.5
    #label UCHome
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norman|r
    .home >>将您的炉石设置为幽暗城
    .target Innkeeper Norman
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1473 >>交任务: |cRXP_FRIENDLY_虚空中的生物|r
    .accept 1471 >>接任务: |cRXP_LOOT_誓缚|r
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_在召唤圈使用|r|T134416:0|t[召唤符文]|cRXP_WARN_|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>杀死|cRXP_ENEMY_召唤的虚空行者|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1471 >>交任务: |cRXP_FRIENDLY_誓缚|r
    .target Carendin Halgar
step << Warrior
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135350:0|t[Clymore]|cRXP_Buy_|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2676
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135350:0|t[Clymore]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +装备|T135350:0|t[Clymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +装备|T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳撒尼尔·斯蒂恩维克|r
    >>|cRXP_BUY_从他那里购买|r|T135425:0|t[Keen飞刀]|cRXP_Buy_|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_11级时记得装备|r|T135425:0|t[Keen飞刀]|cRXP_WARN_|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equip the |r|T135425:0|t[Keen飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1885 >>交任务: |cRXP_FRIENDLY_米奈特·卡加德|r
    .accept 1886 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
step << Mage
    #optional
    .abandon 1883 >>放弃与Un'stuwa交谈，否则你将无法接受即将到来的任务
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .turnin 1881 >>交任务: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .accept 1882 >>接任务: |cRXP_WARN_巴尼尔农场|r
    .target Anastasia Hartwell
step
    #xprate <1.5
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
    .turnin 405 >>交任务: |cRXP_FRIENDLY_流浪的巫妖|r
    .accept 357 >>接任务: |cRXP_WARN_巫妖的身份|r
    .target Bethor Iceshard
step << Mage/Warlock
    #xprate >1.49
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
    .turnin 405 >>交任务: |cRXP_FRIENDLY_流浪的巫妖|r
    .target Bethor Iceshard
step
    #xprate <1.5 << !Mage !Warlock
    #label LogoutSkip1
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_执行注销跳过，将角色定位在最低楼梯的最高部分，直到看起来像是漂浮的，然后注销并返回|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>|cRXP_WARN_单击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
step << !Mage !Warlock
    #xprate >1.49
    #ah << Priest
    #label LogoutSkip1
    .goto Undercity,61.10,54.11 << Priest
    .goto Undercity,78.03,50.36 << Warrior
    .goto Undercity,82.75,65.23 << Rogue
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到桶堆的顶部，然后注销并返回，执行注销跳过|r << Priest/Warrior
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到运肉车的升级机顶部，然后注销并返回，执行注销跳过|r << Rogue
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1     
step
    #xprate <1.5 << Priest
    #completewith AtWarS
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step << Undead Rogue
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_如果您看到|r|cRXP_FRIENDLY_Astor|r|cRXP_WARN_，请与他交谈并杀死他。抢他的信。他在Brill和the Sepulcher之间的路上巡逻|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Mage/Warlock
    #xprate >1.49
    #completewith AtWarS
    #optional
    .abandon 357 >>放弃巫妖的身份
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 374 >>交任务: |cRXP_FRIENDLY_死亡证明|r
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 370 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 371 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .target Executor Zygand
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>|cRXP_WARN_使用|r|T133385:0|t[|cRXP_OOT_Scarlet中尉签名戒指|r]|cRXD_WARN_创建|r|T134328:0|t[|cRXP-OOT_Forged Scarlet Memorial|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加米尔·诺瑞|r, Rune of Mutilation
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization|r]|cRXP-WARN_to train|r|T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mrs交谈。Winters|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_her购买|r|T133634:0|t[棕色小袋子]|cRXP_Buy_|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r
    .target Coleman Farthing
step << Warrior
    #season 2
    #completewith UnluckyRogue
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith next
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 359 >>交任务: |cRXP_FRIENDLY_亡灵卫兵的职责|r
    .accept 360 >>接任务: |cRXP_WARN_向塞弗伦回报|r
    .accept 356 >>接任务: |cRXP_WARN_巡查后方|r
    .target Deathguard Linnea
step << Warrior
    #season 2
    #completewith ArriveBalnir
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith ArriveBalnir
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label ArriveBalnir
    .goto Tirisfal Glades,76.51,61.77
    .subzone 165 >>前往Balnir Farmstead
    .isOnQuest 356
step << Mage
    #season 2
    #completewith HorrorsandSpirits
    >>铸造|T136071:0|t[变形]在|cRXP_ENEMY_Odd Melons|r上
    >>将|T134332:0|t|cRXP_Loot_[药剂师笔记]|r洗劫一空
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #completewith next
    >>杀死|cRXP_ENEMY_流血恐怖|r和|cRXX_ENEMY_流浪灵魂|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>掠夺地面上的任何植物以获得|cRXP_PICK_Balnir Snapdragon |r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #label HorrorsandSpirits
#loop
	.line Tirisfal Glades,74.31,60.98,74.45,59.64,75.08,58.56,76.45,58.67,77.41,58.66,78.55,60.43,77.45,61.46,76.79,62.60,74.99,61.98,74.31,60.98
	.goto Tirisfal Glades,74.31,60.98,25,0
	.goto Tirisfal Glades,74.45,59.64,25,0
	.goto Tirisfal Glades,75.08,58.56,25,0
	.goto Tirisfal Glades,76.45,58.67,25,0
	.goto Tirisfal Glades,77.41,58.66,25,0
	.goto Tirisfal Glades,78.55,60.43,25,0
	.goto Tirisfal Glades,77.45,61.46,25,0
	.goto Tirisfal Glades,76.79,62.60,25,0
	.goto Tirisfal Glades,74.99,61.98,25,0
	.goto Tirisfal Glades,74.31,60.98,25,0
    >>杀死|cRXP_ENEMY_流血恐怖|r和|cRXX_ENEMY_流浪灵魂|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
step << Mage
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>铸造|T136071:0|t[变形]在|cRXP_ENEMY_Odd Melons|r上
    >>将|T134332:0|t|cRXP_Loot_[药剂师笔记]|r洗劫一空
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #season 2
    >>|cRXP_WARN_使用|r|T134332:0|t|cRXP_LOOT[药剂师笔记]|r|cRXP-WARN_to创建|r|T134332:0 |t|cRXP_LOUT[拼写笔记：启蒙]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #season 2
    .train 415942 >>|cRXP_WARN_使用|r|T134332:0|t|cRXP_LOOT_[咒语注释：启蒙]|r|cRXP-WARN_学习|r|T133815:0|t[铭刻胸甲-启蒙]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step
    #sticky
    #label Friars
    #loop
    #optional
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .waypoint Tirisfal Glades,80.95,57.21,40,0
    .waypoint Tirisfal Glades,81.62,54.84,40,0
    .waypoint Tirisfal Glades,81.56,53.07,40,0
    .waypoint Tirisfal Glades,79.31,55.25,40,0
    .waypoint Tirisfal Glades,77.14,54.92,40,0
    .waypoint Tirisfal Glades,76.15,55.30,40,0
    .waypoint Tirisfal Glades,76.12,57.22,40,0
    .waypoint Tirisfal Glades,77.16,56.75,40,0
    .waypoint Tirisfal Glades,79.82,56.40,40,0
    >>杀死|cRXP_ENEMY_Scarlet修士|r和|cRXD_ENEMY_ Scarlet狂热者|r。掠夺他们的|cRXP_Loot_Scarlet徽章戒指|r
    .complete 371,2 --Scarlet Friar (5)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step
    #loop
    #sticky
    #requires Friars
    #label Friars2
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .waypoint Tirisfal Glades,80.95,57.21,40,0
    .waypoint Tirisfal Glades,81.62,54.84,40,0
    .waypoint Tirisfal Glades,81.56,53.07,40,0
    .waypoint Tirisfal Glades,79.31,55.25,40,0
    .waypoint Tirisfal Glades,77.14,54.92,40,0
    .waypoint Tirisfal Glades,76.15,55.30,40,0
    .waypoint Tirisfal Glades,76.12,57.22,40,0
    .waypoint Tirisfal Glades,77.16,56.75,40,0
    .waypoint Tirisfal Glades,79.82,56.40,40,0
    >>杀死|cRXP_ENEMY_Scarlet修士|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    .goto Tirisfal Glades,78.82,56.14
    >>杀死塔里的|cRXP_ENEMY_瓦雄上尉|r
    .complete 371,1 --Captain Vachon (1)
    .mob Captain Vachon
step
    #xprate >1.49
    #requires Friars2
    #loop
    #label FinishRings
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>杀死|cRXP_ENEMY_Scarlet修士|r和|cRXD_ENEMY_ Scarlet狂热者|r。掠夺他们的|cRXP_Loot_Scarlet徽章戒指|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_收集3叠|r|T132889:0|t[亚麻布]|cRXP_WARN_form作为你的小魔杖。这是在银松森林之前获得足够食物的最后机会|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Warrior
    #season 2
    #completewith ViciousVenom
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith ViciousVenom
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label ViciousVenom
    #loop
    #requires Friars2
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>杀死|cRXP_ENEMY_邪恶的夜网蜘蛛|r。掠夺它们的|cRXX_Loot_Venom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step << Warrior
    #season 2
    #xprate >1.49
    #optional
    #completewith next
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .waypoint Tirisfal Glades,83.59,43.84,70,0
    .waypoint Tirisfal Glades,80.77,46.40,70,0
    .waypoint Tirisfal Glades,75.86,46.02,70,0
    .waypoint Tirisfal Glades,73.10,40.71,70,0
    .waypoint Tirisfal Glades,72.33,33.01,70,0
    .waypoint Tirisfal Glades,68.69,34.33,70,0
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Warrior
    #season 2
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .waypoint Tirisfal Glades,83.59,43.84,70,0
    .waypoint Tirisfal Glades,80.77,46.40,70,0
    .waypoint Tirisfal Glades,75.86,46.02,70,0
    .waypoint Tirisfal Glades,73.10,40.71,70,0
    .waypoint Tirisfal Glades,72.33,33.01,70,0
    .waypoint Tirisfal Glades,68.69,34.33,70,0
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate >1.49
    .xp 11+2950 >>升级到2950+/8800xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575 -> 3860
--XX +625（374选择）+700（375选择）=3900->5850
--XX +625（374 OPT）=3200->4800
--XX +700（375 OPT）=3275->4910
step
    #xprate >1.49
    #optional
    .xp 11+3890 >>升级到3890+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    .xp 11+4000 >>升级到4000+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    .xp 11+4940 >>升级到4940+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #completewith ANewPlagueFinal
    .hs >>从炉子到布里尔
    .subzoneskip 159
    .cooldown item,6948,>0,1
step
    #xprate >1.49
    #completewith ANewPlagueFinal
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <1.5
    .goto Tirisfal Glades,67.97,42.09
    >>掠夺|cRXP_PICK_Gunther的书|r为|cRXP_Loot_巫妖的咒语书|r在Brightwater湖的岛上
    .complete 357,1 --The Lich's Spellbook (1)
step
    #xprate <1.5
    #hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith ANewPlagueFinal
    .goto Tirisfal Glades,66.60,44.95
    .deathskip >>死在较小的岛屿上，在|cRXP_FRIENDLY_Spirit治疗中心重生|r
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 369 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 492 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .target Apothecary Johaan
step << skip
    #phase 3-6
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 369 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 492 >>接任务: |cRXP_LOOT_新的瘟疫|r
    --.accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .target Apothecary Johaan
step
    #xprate <1.5
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 371 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 372 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .target Executor Zygand
step
    #xprate >1.49
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 371 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .target Executor Zygand
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 360 >>交任务: |cRXP_FRIENDLY_向塞弗伦回报|r
    .turnin 355 >>交任务: |cRXP_FRIENDLY_与塞弗伦交谈|r
    .target Magistrate Sevren
step
    #xprate >1.49
    #optional
    #completewith ANewPlagueFinal
    .abandon 372 >>放弃与猩红十字军的战争
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 374 >>交任务: |cRXP_FRIENDLY_死亡证明|r
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate >1.49
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 374 >>交任务: |cRXP_FRIENDLY_死亡证明|r
    .target Deathguard Burgess
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mrs交谈。Winters|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_her购买|r|T133634:0|t[棕色小袋子]|cRXP_Buy_|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Renee
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>对话: |cRXP_FRIENDLY_本尼|r
    .target Penny Hawkins
    .train 425447,1
step
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的血色狂热者|r, |cRXP_FRIENDLY_被俘虏的巡山人|r
    .turnin 407 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .goto Tirisfal Glades,61.97,51.29
    .target +Captured Scarlet Zealot
    .turnin 492 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .goto Tirisfal Glades,61.94,51.40
    .target +Captured Mountaineer
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>对话: |cRXP_FRIENDLY_琼娜·布鲁哈特|r
    .target Blueheart
    .train 425447,1
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>杀死|cRXP_ENEMY_Blueheart|r，然后与楼上的|cRXP-FRIENDLY_Penny|r通话
    .gossipoption 110751 >>收到她的|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzed Assault |r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzed Assault |r]
    .use 204716
    .itemcount 204716,1

--XX Start of <1.5x section (undercity hs)


step
    #xprate <1.5
    #completewith UndercityLS2
    .hs >>炉膛到地下城
step
    #xprate <1.5
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    .collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六件|r|T134339:0|t[变色虫心]|cRXP_Buy_|r
    .target Auctioneer Rhyker
step << Mage
    #xprate <1.5
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .turnin 1882 >>交任务: |cRXP_FRIENDLY_巴尼尔农场|r
    .target Anastasia Hartwell
step
    #optional << Rogue
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
    .turnin 357 >>交任务: |cRXP_FRIENDLY_巫妖的身份|r
    .accept 366 >>接任务: |cRXP_WARN_归还书籍|r
    .target Bethor Iceshard
    .isQuestComplete 1886 << Rogue
step << Rogue
    #ssf
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.2200
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.2200
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #xprate <1.5
    #completewith CaptainMelrache
    +装备|T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135350:0|t[Clymore]|cRXP_Buy_|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135350:0|t[Clymore]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #xprate <1.5
    #completewith CaptainMelrache
    +装备|T135350:0|t[Clymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #xprate <1.5
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1886 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestComplete 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .accept 1898 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德隆·甘特|r
    .turnin 1898 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .accept 1899 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,55.43,76.87
    >>织机|cRXP_PICK_Andron的书架|r在|cRXC_FRIENDLY_Andron|r后面
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1899 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .accept 1978 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
    .turnin 1978 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .target Varimathras
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_通过将角色定位在圆的边缘，直到看起来像是漂浮的，然后注销并返回来执行注销跳过|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >>|cRXP_WARN_单击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
    .turnin 357 >>交任务: |cRXP_FRIENDLY_巫妖的身份|r
    .accept 366 >>接任务: |cRXP_WARN_归还书籍|r
    .target Bethor Iceshard
    .isOnQuest 1886
step
    #xprate <1.5
    #label UndercityLS2
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_执行注销跳过，将角色定位在最低楼梯的最高部分，直到看起来像是漂浮的，然后注销并返回|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>|cRXP_WARN_单击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1
    .isOnQuest 1886 << Rogue
step
    #xprate <1.5
    #completewith next
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step
    #xprate <1.5
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 356 >>交任务: |cRXP_FRIENDLY_巡查后方|r
    .target Deathguard Linnea
step
    #xprate <1.5
    #label CaptainMelrache
    .goto Tirisfal Glades,79.52,25.14
    >>杀死塔里的|cRXP_ENEMY_Melrache|r上尉和他的|cRXX_ENEMY_Scarlet保镖|r。掠夺他们的|cRXP_Loot_Scarlet徽章戒指|r
    >>|cRXP_WARN_途中碾碎暴徒|r << Warrior/Mage
    .complete 372,1 --Captain Melrache (1)
    .mob +Captain Melrache
    .complete 372,2 --Scarlet Bodyguard (2)
    .mob +Scarlet Bodyguard
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step
    #xprate <1.5
    #label FinishRings
    .goto Tirisfal Glades,79.36,26.21,40,0
    .goto Tirisfal Glades,79.04,28.54,40,0
    .goto Tirisfal Glades,78.92,31.42,40,0
    .goto Tirisfal Glades,77.89,35.49,40,0
    .goto Tirisfal Glades,78.65,36.09,40,0
    .goto Tirisfal Glades,79.04,28.54
    >>完成收集|cRXP_LOOT_Scarlet徽章戒指|r
    .complete 374,1 --Scarlet Insignia Ring (10)
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,79.36,26.21,40,0
    .goto Tirisfal Glades,79.04,28.54,40,0
    .goto Tirisfal Glades,78.92,31.42,40,0
    .goto Tirisfal Glades,77.89,35.49,40,0
    .goto Tirisfal Glades,78.65,36.09,40,0
    >>|cRXP_WARN_收集3叠|r|T132889:0|t[亚麻布]|cRXP_WARN_form作为你的小魔杖。这是在银松森林之前获得足够食物的最后机会|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Warrior
    #xprate <1.5
    #season 2
    #completewith next
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    .goto Tirisfal Glades,73.78,32.71,50,0
    .goto Tirisfal Glades,72.15,33.17,50,0
    .goto Tirisfal Glades,70.13,34.46,50,0
    .goto Tirisfal Glades,67.29,34.92,50,0
    .goto Tirisfal Glades,66.71,37.87,50,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    .goto Tirisfal Glades,72.15,33.17
    >>完成杀戮|cRXP_ENEMY_Duskbats|r。掠夺他们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Warrior
    #xprate <1.5
    #season 2
    .goto Tirisfal Glades,73.78,32.71,50,0
    .goto Tirisfal Glades,72.15,33.17,50,0
    .goto Tirisfal Glades,70.13,34.46,50,0
    .goto Tirisfal Glades,67.29,34.92,50,0
    .goto Tirisfal Glades,66.71,37.87,50,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    .goto Tirisfal Glades,72.15,33.17
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    .goto Tirisfal Glades,68.19,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther|r
    .turnin 366 >>交任务: |cRXP_FRIENDLY_归还书籍|r
    .accept 409 >>接任务: |cRXP_WARN_证明忠诚|r
    .target Gunther Arcanus
step
    #xprate <1.5
    #optional
    #label CandleBeckoning
    #completewith Nefara
    .goto Tirisfal Glades,68.16,42.01
    >>打开地上的|cRXP_PICK_Crate of Candles|r。为贝肯的|cRXP_Loot_蜡烛而掠夺它|r
    .collect 3080,1,409,1 --Collect Candle of Beckoning (1)
    .isOnQuest 409
step
    #xprate <1.5
    #optional
    #requires CandleBeckoning
    #completewith next
    .goto Tirisfal Glades,66.64,44.89
    >>单击|cRXP_PICK_Lillith的餐桌|r生成|cRXP_ENEMY_Nefara|r
    .isOnQuest 409
step
    #xprate <1.5
    #label Nefara
    .goto Tirisfal Glades,66.70,45.05
    >>杀死|cRXP_ENEMY_Nefara|r
    .complete 409,1 --Lillith Nefara (1)
    .target Lillith Nefara
step
    #xprate <1.5
    .goto Tirisfal Glades,68.20,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther|r
    .turnin 409 >>交任务: |cRXP_FRIENDLY_证明忠诚|r
    .accept 411 >>接任务: |cRXP_WARN_巫妖归顺|r
    .target Gunther Arcanus
step
    #xprate <1.5
    .xp 11+4900 >>升级到4900+/8800xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575
--XX +625（374选择）+700（375选择）=3900
--XX +625 (374 OPT) = 3200
--XX +700 (375 OPT) = 3275
--XX moved xpgate to after turnin so people don't turn in whilst grinding
step
    #xprate <1.5
    #optional
    .xp 11+5525 >>升级到5525+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step
    #xprate <1.5
    #optional
    .xp 11+5600 >>升级到5600+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    .xp 11+6225 >>升级到6225+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #hardcore
    #completewith CrusadewarWon
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith CrusadewarWon
    .goto Tirisfal Glades,64.40,42.65
    .deathskip >>向西游泳，死于暴徒，在|cRXP_FRIENDLY_Spirit Healer|r重生
step
    #xprate <1.5
    #label CrusadewarWon
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 372 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .target Executor Zygand
step
    #xprate <1.5
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 374 >>交任务: |cRXP_FRIENDLY_死亡证明|r
    .target Deathguard Burgess
step
    #xprate <1.5
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .isQuestAvailable 375
step
    #xprate <1.5
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar

    --XX End of <1.5x section



step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588 >>列车|T135926:0|t[内火]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145 >>火车|T135812:0|t[火球等级3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384 >>列车|T132223:0|t[超功率]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766 >>列车|T132219:0|t[踢]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >>列车|T136168:0|t[健康漏斗]
    .target Rupert Boch
    .xp <12,1
step << Rogue
    #completewith Entersilverpine
    >>|cRXP_WARN_如果您看到|r|cRXP_FRIENDLY_Astor|r|cRXP_WARN_，请与他交谈并杀死他。抢他的信。他在Brill和the Sepulcher之间的路上巡逻|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #xprate >1.49
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 356 >>交任务: |cRXP_FRIENDLY_巡查后方|r
    .target Deathguard Linnea

--XX Optional Undercity Section Start: If Priest needs wand, Rogue/Warrior needs vendor wep



step << Priest/Rogue/Warrior
    #optional
    #completewith LesserMagicWand << Priest
    #completewith RogueCutlass << Rogue
    #completewith WarriorClaymore << Warrior
    .goto Tirisfal Glades,61.80,65.06,20 >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << Priest/Rogue/Warrior
    #optional
    #completewith LesserMagicWand << Priest
    #completewith RogueCutlass << Rogue
    #completewith WarriorClaymore << Warrior
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step << Priest
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    >>|cRXP_BUY_从拍卖行购买|r|T135139:0|t[小魔杖]|cRXP_Buy_|r
    >>|cRXP_WARN_如果你这样做，并且正在收集|r|T132889:0|t[亚麻布]|cRXP_WARN_earlier，你可以在拍卖行出售你的|r|T132889:0| t[亚麻布]|cRXP_WARN_on|r
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << Rogue
    #ssf
    #optional
    #label RogueCutlass
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_刘易斯·瓦伦|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2200
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
step << Rogue
    #ah
    #optional
    #label RogueCutlass
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_刘易斯·瓦伦|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2200
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
step << Rogue
    #optional
    #completewith Entersilverpine
    +装备|T135346:0|t[Cutlass]|T135350:0|t[Clymore]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    #optional
    #label WarriorClaymore
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_刘易斯·瓦伦|r
    >>|cRXP_BUY_从他那里买一个|r|T135350:0|t[Clymore]|cRXP_Buy_|r
    .collect 1198,1,435,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Louis Warren
step << Warrior
    #ah
    #optional
    #label WarriorClaymore
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_刘易斯·瓦伦|r
    >>|cRXP_BUY_从他那里买一个|r|T135350:0|t[Clymore]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 1198,1,435,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Louis Warren
step << Warrior
    #optional
    #completewith Entersilverpine
    +装备|T135350:0|t[Clymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior/Rogue
    #xprate >1.49
    #season 0,1 << Warrior
    #optional
    #label LogoutSkip3
    .goto Undercity,61.10,54.11
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到桶堆的顶部，然后注销并返回，执行注销跳过|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1 
    .itemcount 7231,<1 << Rogue --Astor's Letter of Introduction (0)
step << Warrior
    #season 2
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15,0
    .goto Undercity,48.03,70.30,12 >>前往药剂师馆的|cRXP_FRIENDLY_Dorac|r
    .train 403475,1
step << Warrior
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorac Graves|r in the Undercity
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
    .zoneskip Undercity,1
step << Warrior
    #season 2
    #optional
    .use 204688 >>|cRXP_WARN_使用|r|T134455:0|t[符文碎片]|cRXP_WARN_创建|r|T134419:0|t[|cRXP-FRIENDLY_毁灭之恩|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
    .zoneskip Undercity,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1
    .zoneskip Undercity,1
step << Warrior
    #xprate >1.49
    #season 2
    .goto 1458,48.906,70.156
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到可憎之物的腹部顶部，然后注销并返回，进行注销跳跃|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1
step << Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
    .turnin 5658 >>交任务: |cRXP_FRIENDLY_虚弱之触|r
    .target Aelthalyste
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    .train 2652,1 --Touch of Weakness not trained
step << Rogue/Warrior/Priest
    #xprate <1.5
    #optional
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
    .turnin 411 >>交任务: |cRXP_FRIENDLY_巫妖归顺|r
    .target Bethor Iceshard
    .zoneskip Undercity,1
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #label UndercityLS3
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_执行注销跳过，将角色定位在最低楼梯的最高部分，直到看起来像是漂浮的，然后注销并返回|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>|cRXP_WARN_单击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1
    .itemcount 7231,<1 << Rogue --Astor's Letter of Introduction (0)
--XX Priests only go Undercity if they need to make/buy a Lesser Magic Wand (still midway through the steps of doing so)
--XX If rogues haven't killed Astor yet, they logout skip early before doing Rogue quest turnins
step << Priest
    #optional
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克多|r
    .train 3908 >>列车|T136249:0|t[剪裁]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Turn all your |r|T132889:0|t[亚麻布]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克多|r
    .train 7623 >>火车|T132662:0|t[棕色亚麻长袍]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗牙螺纹]|cRXP_Buy_|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    >>|cRXP_WARN_尽可能多地创建|r|T132662:0|t[棕色亚麻长袍]|cRXP_WARN_a|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉文尼亚·克洛文|r
    .train 7411 >>火车|T136244:0|t[迷人]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_交谈。从他那里买一个|r|T133942:0|t[铜棒]|cRXP_Buy_和|r|T135435:0|t[Simple Wood]|r
    >>|cRXP_WARN_取消您制作的所有|r|T132662:0|t[棕色亚麻长袍]|cRXP_WARN_并创建|r|T135225:0|t[Runed Copper Rod]
    >>|cRXP_WARN_如果您没有得到|r|T132867:0|t[小魔法精华]|cRXP_WARN_然后从|r|cRXP-FRIENDLY_Thaddeus|r|cRXP_WARN_购买一个（如果有）。否则，请稍后完成此步骤|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛考布·维恩|r
    .train 14293 >>火车|T135139:0|t[小魔杖]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #label LesserMagicWand
    >>|cRXP_WARN_创建一个|r|T135139:0|t[小魔杖]
    >>|cRXP_WARN_如果您没有得到|r|T132867:0|t[小魔法精华]|cRXP_WARN_然后从|r|cRXP-FRIENDLY_Thaddeus|r|cRXP_WARN_购买一个（如果有）。否则，请稍后完成此步骤|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +装备|T135139:0|t[小魔杖]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #label UndercityLS3
    .goto 1458,61.990,62.272
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到桶堆的顶部，然后注销并返回，执行注销跳过|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1
step << Rogue
    #optional
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1886 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestComplete 1886
    .zoneskip Undercity,1
step << Rogue
    #optional
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .accept 1898 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德隆·甘特|r
    .turnin 1898 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .accept 1899 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,55.43,76.87
    >>织机|cRXP_PICK_Andron的书架|r在|cRXC_FRIENDLY_Andron|r后面
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1899 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .accept 1978 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
    .turnin 1978 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .target Varimathras
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_将角色定位在圆的边缘，直到它们看起来像是漂浮的。通过注销并重新登录来执行注销跳过|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >>|cRXP_WARN_单击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .isQuestTurnedIn 1886
    .zoneskip Undercity,1
step << Rogue
    #optional
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
    .isQuestTurnedIn 1886
step << Rogue/Warrior/Priest
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
    .isQuestAvailable 1978

--XX Optional Undercity Section End: If Priest needs wand, Rogue/Warrior needs vendor wep

step
    #label Entersilverpine
    .goto Tirisfal Glades,53.20,75.82
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .zoneskip Silverpine Forest
]])

RXPGuides.RegisterGuide([[
#group RestedXP部落1-22
#xprate <1.99
<< Horde
#version 11
#defaultfor Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#classic
#era/som--h
#name 11-14 银松森林
#next 12-17 贫瘠之地


step << Undead Warrior
    #season 2
    #sticky
    #optional
    #completewith RuneOfDevastateUndead
    +不要删除您的|cRXP_OOT_Severed Heads|r。它们稍后将在|T134419:0|t[|cRXT_FRIENDLY_Rune of Devastate|r]期间被交出
    .itemcount 204477,1
    .train 403475,1
step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_如果您看到|r|cRXP_FRIENDLY_Astor|r|cRXP_WARN_，请与他交谈并杀死他。抢他的信。他在Brill和the Sepulcher之间的路上巡逻|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #label WorgHearts
    #completewith next
    >>当你朝着|cRXP_FRIENDLY_Erland|r行进时杀死|cRXP_ENEMY_Worgs|r。掠夺它们的|cRXP_Loot_Hearts|r
    .collect 3164,6 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.18,9.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵埃兰德|r
    >>|cRXP_WARN_在开始此任务之前，请确保你的生命值/魔法值已满|r
    .accept 435,1 >>接任务: |cRXP_WARN_护送埃兰德|r
    .target Deathstalker Erland
step
    #completewith next
    >>杀死|cRXP_ENEMY_Worgs|r。掠夺它们的|cRXX_Loot_Hears|r
    .collect 3164,6 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.25,10.27,30,0
    .goto Silverpine Forest,56.25,11.43,30,0
    .goto Silverpine Forest,56.17,12.62,30,0
    .goto Silverpine Forest,53.46,13.45
    >>护送|cRXP_FRIENDLY_Erland|r安全到达|cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_ENEMY_蠕虫|r|cRXP_WARN_can在彼此之上产卵，只要你能吃就喝|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰妮·尤瑞克|r
    .turnin 435 >>交任务: |cRXP_FRIENDLY_护送埃兰德|r
    .accept 429 >>接任务: |cRXP_LOOT_荒野之心|r
    .accept 449 >>接任务: |cRXP_WARN_亡灵哨兵的报告|r
    .target Rane Yorick
step
    .goto Silverpine Forest,55.96,16.18,50,0
    .goto Silverpine Forest,58.37,15.56,50,0
    .goto Silverpine Forest,59.40,13.58,50,0
    .goto Silverpine Forest,60.11,10.51,50,0
    .goto Silverpine Forest,57.72,10.07
    >>杀死|cRXP_ENEMY_Worgs|r。掠夺它们的|cRXX_Loot_Hears|r
    .collect 3164,6 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .unitscan Gorefang
step
    #softcore
    #completewith ProveyourWorth
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    #hardcore
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >>Travel to The Sepulcher
step
    #label ProveyourWorth
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>接任务: |cRXP_LOOT_证明你的价值|r
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格乌恩·法隆|r
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r
    .vendor >>供应商垃圾
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_从他那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_从他那里购买|r|T134830:0|t[小治疗药剂]|cRXP_Buy_如果它们用完了|r
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .vendor >>供应商垃圾
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Allister, |cRXP_FRIENDLY_亡灵卫兵博迪瑞格|r
    .accept 477 >>接任务: |cRXP_WARN_越境|r
    .goto Silverpine Forest,43.98,40.93
    .accept 6321 >>接任务: |cRXP_WARN_瑟伯切尔的补给|r
    .goto Silverpine Forest,43.43,41.67
    .target Shadow Priest Allister
    .target Deathguard Podrig
step
    #label BorderCrossings
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r
    .accept 477 >>接任务: |cRXP_WARN_越境|r
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,15 >>Enter the crypt
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官哈德瑞克|r
    .turnin 449 >>交任务: |cRXP_FRIENDLY_亡灵哨兵的报告|r
    .accept 3221 >>接任务: |cRXP_WARN_与伦弗利尔会面|r
    .accept 437 >>接任务: |cRXP_WARN_亡者农场|r
    .target High Executor Hadrec
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r
    .turnin 429 >>交任务: |cRXP_FRIENDLY_荒野之心|r
    .turnin 445 >>交任务: |cRXP_FRIENDLY_给银松森林送信|r
    .turnin 3221 >>交任务: |cRXP_FRIENDLY_与伦弗利尔会面|r
    .accept 1359 >>接任务: |cRXP_LOOT_给金格的货物|r
    .accept 447 >>接任务: |cRXP_WARN_致命的配方|r
    .accept 430 >>接任务: |cRXP_LOOT_回到奎恩身旁|r
    .target Apothecary Renferrel
step
    .goto Silverpine Forest,50.32,39.22,50,0
    .goto Silverpine Forest,51.86,41.56,50,0
    .goto Silverpine Forest,51.53,43.06,50,0
    .goto Silverpine Forest,51.62,44.85,50,0
    .goto Silverpine Forest,51.80,46.60,50,0
    .goto Silverpine Forest,50.83,47.74,50,0
    .goto Silverpine Forest,49.12,36.72
    >>杀死|cRXP_ENEMY_Moonrage白头皮|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>交任务: |cRXP_FRIENDLY_证明你的价值|r
    .accept 422 >>接任务: |cRXP_LOOT_阿鲁高的愚行|r
step
    #completewith Remedy
    .goto Silverpine Forest,52.74,27.70,80 >>前往瓦尔甘油田
step
    #label Remedy
    .goto Silverpine Forest,52.74,27.70,8,0
    .goto Silverpine Forest,53.13,27.92,8,0
    .goto Silverpine Forest,52.94,27.88,8,0
    .goto Silverpine Forest,52.83,28.56
    >>进入房子，走到二楼。在地上掠夺|cRXP_PICK_Dusky咒语书|r
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto Silverpine Forest,53.39,13.32,80 >>前往Ivar Patch
step
    #label QuinnYorick
    .goto Silverpine Forest,53.39,13.32,8,0
    .goto Silverpine Forest,53.08,13.11,8,0
    .goto Silverpine Forest,53.27,13.16,8,0
    .goto Silverpine Forest,53.43,12.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎恩·尤瑞克|r
    .turnin 430 >>交任务: |cRXP_FRIENDLY_回到奎恩身旁|r
    .target Quinn Yorick
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰妮·尤瑞克|r, 他在外面
    .accept 425 >>接任务: |cRXP_LOOT_邪恶的伊瓦|r
    .target Rane Yorick
step
    .goto Silverpine Forest,52.01,14.02,6,0
    .goto Silverpine Forest,51.89,13.82,6,0
    .goto Silverpine Forest,51.54,13.91
    >>杀死|cRXP_ENEMY_Ivar犯规|r。掠夺他的|cRXX_Loot_Head|r
    >>|cRXP_WARN_Ivar由谷仓旁的两个|r|cRXP_ENEMY_Ravenclaw奴隶|r|cRXP_WARN_in保护。你可以单独拉动其中一个，让他向前巡逻|r
    >>|cRXP_WARN_他们对恐惧免疫！|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰妮·尤瑞克|r
    .turnin 425 >>交任务: |cRXP_FRIENDLY_邪恶的伊瓦|r
    .target Rane Yorick
step
    #completewith ArugalTurnin
    +|cRXP_WARN_小心！该区域中可能存在|r|cRXP_ENEMY_Arugal之子|r|cRXP_WARN_in！这是25级精英，避开他！|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>杀死|cRXP_ENEMY_Bears|r。掠夺他们的|cRXX_Loot_Hears|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto Silverpine Forest,45.44,21.01
    >>在死亡之地周围杀死|cRXP_ENEMY_Rothide Gnolls|r，直到|cRXX_ENEMY_Nightlash|r产生。为她杀死并掠夺她|cRXP_loot_Essent|r
    >>|cRXP_WARN_他们对恐惧免疫！|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>杀死|cRXP_ENEMY_Bears|r。掠夺他们的|cRXX_Loot_Hears|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>杀死|cRXP_ENEMY_Spiders|r。掠夺他们的|cRXX_Loot_Blood|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Kreis Shadowspinner|r|cRXP_WARN_因为要杀死她简直太难了！|r << !Mage !Warlock
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Kreis Shadowspinner|r|cRXP_WARN_a，因为这很难但可行。她有一个冷却15秒的130点伤害的护盾和110点伤害的瞬间冲击能力|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto Silverpine Forest,33.00,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Killian|r
    .vendor >>供应商垃圾
    .target Killian Sanatha
step
#loop
	.line Silverpine Forest,37.25,15.99,35.67,16.01,34.96,16.34,33.99,17.24,34.14,15.26,35.06,14.50,35.85,13.83,36.33,14.20
	.goto Silverpine Forest,37.25,15.99,25,0
	.goto Silverpine Forest,35.67,16.01,25,0
	.goto Silverpine Forest,34.96,16.34,25,0
	.goto Silverpine Forest,33.99,17.24,25,0
	.goto Silverpine Forest,34.14,15.26,25,0
	.goto Silverpine Forest,35.06,14.50,25,0
	.goto Silverpine Forest,35.85,13.83,25,0
	.goto Silverpine Forest,36.33,14.20,25,0
    >>杀死|cRXP_ENEMY_Spiders|r。掠夺他们的|cRXX_Loot_Blood|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Kreis Shadowspinner|r|cRXP_WARN_因为要杀死她简直太难了！|r << !Mage !Warlock
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Kreis Shadowspinner|r|cRXP_WARN_a，因为这很难但可行。她有一个冷却15秒的130点伤害的护盾和110点伤害的瞬间冲击能力|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    .goto Silverpine Forest,41.60,21.65
    >>完成杀死|cRXP_ENEMY_Bears|r。掠夺他们的|cRXX_Loot_Hears|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #softcore
    #completewith ArugalTurnin
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    #hardcore
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >>回到坟墓
step
    #xprate <1.5
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >>交任务: |cRXP_FRIENDLY_阿鲁高的愚行|r
    .accept 423 >>接任务: |cRXP_LOOT_阿鲁高的愚行|r
    .target Dalar Dawnweaver
step
    #xprate >1.49
    #label ArugalTurnin
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >>交任务: |cRXP_FRIENDLY_阿鲁高的愚行|r
    .target Dalar Dawnweaver
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,15 >>Enter the crypt
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官哈德瑞克|r
    .turnin 437 >>交任务: |cRXP_FRIENDLY_亡者农场|r
    .accept 438 >>接任务: |cRXP_WARN_破旧渡口|r
    .target High Executor Hadrec
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格乌恩·法隆|r
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r
    .vendor >>供应商垃圾
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_从他那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_从他那里购买|r|T134830:0|t[小治疗药剂]|cRXP_Buy_如果它们用完了|r
    .collect 1179,20,423,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrea|r
    .vendor >>从她那里购买|T132491:0|t[|cRXP_FRIENDLY_Wise男士腰带|r]（如果有）
    .target Andrea Boynton
    .money <0.1400
step << Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚历山德勒·雷夫瑞|r
    .vendor >>从她那里购买|T132539:0|t[|cRXP_FRIENDLY_Agile Boots|r]（如果有）
    .target Alexandre Lefevre
    .money <0.2633
step << Warlock/Mage/Priest
    #completewith Shackles
    +装备|T132491:0|t[|cRXP_FRIENDLY_Wise男子腰带|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
step << Rogue
    #completewith Shackles
    +装备|T132539:0|t[|cRXP_FRIENDLY_Agile Boots|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>单击码头一侧的|cRXP_PICK_Boat|r
    .turnin 438 >>交任务: |cRXP_FRIENDLY_破旧渡口|r
    .accept 439 >>接任务: |cRXP_WARN_线索|r
step
    #xprate <1.5
    #loop
    .goto Silverpine Forest,56.06,45.75,0
    .goto Silverpine Forest,56.06,45.75,40,0
    .goto Silverpine Forest,55.45,49.18,40,0
    .goto Silverpine Forest,56.80,45.86,40,0
    >>杀死|cRXP_ENEMY_Moonrage Gluttons|r和|cRXX_ENEMY_Moonrage Darksouth|r，掠夺他们的|cRXD_Loot_枷锁|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Moonrage黑暗灵魂|r|cRXP_WARN_enrage当它们低于25%的生命值时。当他们情绪低落时迅速杀死他们|r
    .complete 423,1 --Glutton Shackle (6)
    .complete 423,2 --Darksoul Shackle (3)
    .mob Moonrage Glutton
    .mob Moonrage Darksoul
step << Mage
    #season 2
    #completewith BorderCrossings
    >>杀死|cRXP_ENEMY_Dalaran学徒|r。掠夺他们|cRXD_Loot_|T134939:0|t[|cRXT_FRIENDLY_Spell注释：TENGI RONEERA|r]|r
    .train 401767,1
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
step
    #hardcore
    .goto Silverpine Forest,49.89,60.33
    >>单击营地中的|cRXP_PICK_Crate|r
    >>|cRXP_WARN_小心！这些暴民施放|r|T135846:0|t[Frostbolt]|cRXP_WARN_并以低生命值逃离。把它们拉回来，一个接一个地杀死它们，直到你可以安全地点击板条箱|r
    .turnin 477 >>交任务: |cRXP_FRIENDLY_越境|r
    .accept 478 >>接任务: |cRXP_LOOT_地图与符记|r
    .mob Dalaran Apprentice
step
    #label BorderCrossings
    #softcore
    .goto Silverpine Forest,49.89,60.33
    >>单击营地中的|cRXP_PICK_Crate|r
    >>|cRXP_WARN_小心，这些暴徒投掷了|r|T135846:0|t[霜栓]|r
    .turnin 477 >>交任务: |cRXP_FRIENDLY_越境|r
    .accept 478 >>接任务: |cRXP_LOOT_地图与符记|r
    .mob Dalaran Apprentice
step << Mage
    #season 2
    #loop
    .goto Silverpine Forest,49.89,60.33,0
    .goto Silverpine Forest,52.6,56.6,20,0
    .goto Silverpine Forest,56.6,62.8,20,0
    .goto Silverpine Forest,55.6,72.8,20,0
    .goto Silverpine Forest,51.6,71.0,20,0
    .goto Silverpine Forest,50.8,61.6,20,0
    >>杀死|cRXP_ENEMY_Dalaran学徒|r。掠夺他们|cRXD_Loot_|T134939:0|t[|cRXT_FRIENDLY_Spell注释：TENGI RONEERA|r]|r
    .train 401767,1
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
step << Mage
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 401767 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：TENGI RONEERA|r]|cRXP-WARN_to learn|r|T132871:0|t[再生。]
    .use 208754
step << Rogue
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>掠夺影方旁边的|cRXP_PICK_Rusty胸脯|r保持入口|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_使用|r|T132307:0|t[SSprint]|cRXP_WARN_然后从驾驶台跳向胸部|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step << Rogue
    #season 2
    .train 424984 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]|cRXP_WARN_to train|r|T132375:0|t[Saber Slash]
    .use 208772
    .itemcount 208772,1
step
    #completewith next
    #hardcore
    .goto Silverpine Forest,45.51,41.26,100 >>回到坟墓
step
    #softcore
    #completewith
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r and |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>交任务: |cRXP_FRIENDLY_地图与符记|r
    .accept 481 >>接任务: |cRXP_LOOT_达拉尔的推理|r
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>交任务: |cRXP_FRIENDLY_阿鲁高的愚行|r
    .turnin 481 >>交任务: |cRXP_FRIENDLY_达拉尔的推理|r
    .accept 482 >>接任务: |cRXP_WARN_达拉然的意图|r
    .goto Silverpine Forest,44.20,39.73
    .target Shadow Priest Allister
    .target Dalar Dawnweaver
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r and |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>交任务: |cRXP_FRIENDLY_地图与符记|r
    .accept 481 >>接任务: |cRXP_LOOT_达拉尔的推理|r
    .goto Silverpine Forest,43.98,40.93
    .turnin 481 >>交任务: |cRXP_FRIENDLY_达拉尔的推理|r
    .accept 482 >>接任务: |cRXP_WARN_达拉然的意图|r
    .goto Silverpine Forest,44.20,39.73
    .target Shadow Priest Allister
    .target Dalar Dawnweaver
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>交任务: |cRXP_FRIENDLY_达拉然的意图|r
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,15 >>Enter the crypt
step
    #label RotHideCluesTurnIn
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官哈德瑞克|r
    .turnin 439 >>交任务: |cRXP_FRIENDLY_线索|r
    .target High Executor Hadrec
step
    #xprate <1.5 << Undead
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>交任务: |cRXP_FRIENDLY_瑟伯切尔的补给|r << Undead
    .accept 6323 >>接任务: |cRXP_WARN_飞往幽暗城|r << Undead
    .fp Sepulcher >>获取墓穴飞行路线 << !Undead
    .fly Undercity >>Fly to the Undercity << !Undead
    .target Karos Razok
step << Undead
    #xprate >1.49
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>交任务: |cRXP_FRIENDLY_瑟伯切尔的补给|r
    .accept 6323 >>接任务: |cRXP_WARN_飞往幽暗城|r
    .fly Undercity >>Fly to the Undercity
    .target Karos Razok
step << Undead
    #xprate <1.5
    .hs >>Hearth to the Undercity
    .use 6948
    .zoneskip Undercity





    --XX Start of Undercity clown fiesta section





step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >>交任务: |cRXP_FRIENDLY_飞往幽暗城|r
    .accept 6322 >>接任务: |cRXP_LOOT_迈克尔·加勒特|r
    .target Gordon Wendham
step << Rogue
    #ssf
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_刘易斯·瓦伦|r
    >>|cRXP_BUY_从他那里买一把|r|T135343:0|t[弯刀]|cRXP_Buy_|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #ah
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_刘易斯·瓦伦|r
    >>|cRXP_BUY_从他那里买一把|r|T135343:0|t[弯刀]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith Conscript
    +装备|T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .turnin 6322 >>交任务: |cRXP_FRIENDLY_迈克尔·加勒特|r
    .target Michael Garrett
step << Undead Warrior
    #xprate <1.5
    #optional
    .goto Undercity,47.41,17.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尔图斯·弗勒|r
    .train 285 >>训练你的职业技能
    .target Baltus Fowler
    .dungeon RFC
    .xp <16,1
--XX 16+ 只适用于英雄攻击，亡灵只适用于其他种族在其他地方更有效的训练。RFC所以战士有16个RFC咒语
step << Undead Rogue/Undead Warrior
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
    .turnin 411 >>交任务: |cRXP_FRIENDLY_巫妖归顺|r
    .target Bethor Iceshard
    .isQuestComplete 411
step << Rogue/Warrior
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与盗贼区的|r|cRXP_FRIENDLY_Mary|r交谈
    .train 3273 >>列车|T135966:0|t[急救]
    .target Mary Edras
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,40 >>创建|T133685:0|t[亚麻绷带]直到你的技能达到40或更高
    .itemcount 2589,1 --Linen Cloth (1+)
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与盗贼区的|r|cRXP_FRIENDLY_Mary|r交谈
    .train 3276 >>火车|T133688:0|t[粗布绷带]
    .target Mary Edras
    .skill firstaid,<40,1
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,50 >>创建|T133688:0|t[粗布绷带]直到你的技能达到50或更高
    .itemcount 2589,2 --Linen Cloth (2+)
step << Rogue/Warrior
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与盗贼区的|r|cRXP_FRIENDLY_Mary|r交谈
    .train 3274 >>列车乘务员急救
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1886 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .accept 1898 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .accept 1898 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
    .train 1758 >>训练你的职业技能
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .isOnQuest 1898 << Undead
--XX Only train if you were directed here for class quest as an Undead
step << Undead Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
    .train 6761 >>训练你的职业技能
    .target Carolyn Ward
    .xp <16,1
    .isOnQuest 1898 << Undead
step << Undead Rogue
    #xprate <1.5
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
    .train 1758 >>训练你的职业技能
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + 你想做RFC。故意遗漏的可选
--XX This whole section of training across 3 different areas, 2 different xp rates and RFC is solidly in the top 10 worst experiences of my life and im still not 100% happy with it xd
step << Undead Rogue
    #optional
    #xprate <1.5
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
    .train 6761 >>训练你的职业技能
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德隆·甘特|r
    .turnin 1898 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .accept 1899 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,55.43,76.87
    >>织机|cRXP_PICK_Andron的书架|r在|cRXC_FRIENDLY_Andron|r后面
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0 << !Undead/!Rogue
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15,0
    .goto Undercity,48.84,69.25,12 >>前往药剂师馆的|cRXP_FRIENDLY_Faranell|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r, |cRXP_FRIENDLY_药剂师金格|r
    .turnin 447 >>交任务: |cRXP_FRIENDLY_致命的配方|r
    .goto Undercity,48.84,69.25
    .turnin 1359 >>交任务: |cRXP_FRIENDLY_给金格的货物|r
    .goto Undercity,50.16,67.97
    .accept 1358 >>接任务: |cRXP_LOOT_给赫布瑞姆的样本|r
    .target Master Apothecary Faranell
    .target Apothecary Zinge
step << Undead Warrior
    #season 2
    #label RuneOfDevastateUndead
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorac|r in the Undercity
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step << Undead Warrior
    #season 2
    .use 204688 >>|cRXP_WARN_使用|r|T134455:0|t[符文碎片]|cRXP_WARN_创建|r|T134419:0|t[|cRXP-FRIENDLY_毁灭之恩|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Undead Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1
step << Undead Rogue/Undead Warrior
    #xprate <1.5
    #optional
    .goto 1458,48.906,70.156
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到可憎之物的腹部顶部，然后注销并返回，进行注销跳跃|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1
    .isQuestTurnedIn 1886 << Rogue
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1899 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .accept 1978 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
    .train 1758 >>训练你的职业技能
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + 你想做RFC。如果你从以前的可选任务中退出，则重复
step << Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
    .train 6761 >>训练你的职业技能
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
    .turnin 1978 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .target Varimathras
    .isQuestTurnedIn 1886
step << Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_将角色定位在圆的边缘，直到它们看起来像是漂浮的。通过注销并重新登录来执行注销跳过|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >>|cRXP_WARN_单击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1
    .isQuestTurnedIn 1886
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与盗贼区的|r|cRXP_FRIENDLY_Mary|r交谈
    .train 3273 >>列车|T135966:0|t[急救]
    .target Mary Edras
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,40 >>创建|T133685:0|t[亚麻绷带]直到你的技能达到40或更高
    .itemcount 2589,1 --Linen Cloth (1+)
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与盗贼区的|r|cRXP_FRIENDLY_Mary|r交谈
    .train 3276 >>火车|T133688:0|t[粗布绷带]
    .target Mary Edras
    .skill firstaid,<40,1
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,50 >>创建|T133688:0|t[粗布绷带]直到你的技能达到50或更高
    .itemcount 2589,2 --Linen Cloth (2+)
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与盗贼区的|r|cRXP_FRIENDLY_Mary|r交谈
    .train 3274 >>列车乘务员急救
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead !Rogue !Warrior
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
    .turnin 411 >>交任务: |cRXP_FRIENDLY_巫妖归顺|r
    .target Bethor Iceshard
    .isQuestComplete 411
step << Undead Mage
    #xprate >1.49
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .turnin 1882 >>交任务: |cRXP_FRIENDLY_巴尼尔农场|r
    .train 2137 >>训练你的职业技能
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
step << Undead Mage
    #xprate >1.49
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .turnin 1882 >>交任务: |cRXP_FRIENDLY_巴尼尔农场|r
    .train 2120 >>训练你的职业技能
    .target Anastasia Hartwell
    .xp <16,1
step << Mage
    #xprate <1.5 << Undead
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .train 2137 >>训练你的职业技能
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Mage
    #xprate <1.5 << Undead
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .train 2120 >>训练你的职业技能
    .target Anastasia Hartwell
    .xp <16,1
step << Undead Warlock
    #xprate <1.5
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
    .train 6222 >>训练你的职业技能
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Undead Warlock
    #xprate <1.5
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
    .train 1455 >>训练你的职业技能
    .target Richard Kerwin
    .xp <16,1
step << Priest/Mage/Warlock
    #ssf
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞恩·布拉德弗|r
    >>|cRXP_BUY_从他那里买一个|r|T135468:0|t[Smoldering Wand]|cRXP_Buy_|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #ah
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞恩·布拉德弗|r
    >>|cRXP_BUY_从他那里买一个|r|T135468:0|t[Smoldering Wand]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 5208,1 --Smoldering Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +当你达到15级时，装备|T135468:0|t[Smoldering Wand]|cRXP_WARN_
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +装备|T135468:0|t[闷烧棒]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Undead Priest
    #xprate <1.5
    #sticky
    #label TouchOW
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
    .turnin 5658 >>交任务: |cRXP_FRIENDLY_虚弱之触|r
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
step << !Undead Priest
    #xprate <1.5
    #sticky
    #label TouchOW
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
    .turnin 5660 >>交任务: |cRXP_FRIENDLY_虚弱之触|r
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
    .isOnQuest 5660
--XX Not going out of the way for this outside of this edge case to train for RFC, waste of a gcd
step << Undead Priest
    #xprate <1.5
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
	.train 6074 >>训练你的职业技能
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .dungeon RFC
step << Undead Priest
    #xprate <1.5
    #optional
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
	.train 8102 >>训练你的职业技能
    .target Father Lazarus
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    #optional
    #completewith Conscript
    >>放弃死亡追踪者，没有机会了
    .abandon 1886 >>抛弃死亡追踪者
    .isOnQuest 1886
step << Undead !Rogue !Warrior
    #xprate <1.5
    #requires TouchOW << Undead Priest
    .goto Undercity,56.89,16.77 << Priest
    .goto Undercity,69.46,25.85 << Mage/Warlock
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到运肉车的升级机顶部，然后注销并返回，执行注销跳过|r << Priest
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到桶堆的顶部，然后注销并返回，执行注销跳过|r << Mage/Warlock
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1
    .dungeon RFC
step << Undead !Rogue !Warrior
    #xprate <1.5
    .goto Undercity,69.46,25.85 << Priest/Mage/Warlock
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到桶堆的顶部，然后注销并返回，执行注销跳过|r << Priest/Mage/Warlock
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>|cRXP_WARN_单击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1
    .dungeon !RFC





--XX End of Undercity clown fiesta section





--XX Start of 1.5x Brill Train section





step << Undead
    #xprate >1.49
    #completewith ZeptoDurotar
    .hs >>从炉子到布里尔
    .zoneskip Undercity,1
step << Undead Rogue
    #xprate >1.49
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r inside the inn
    .train 1758 >>训练你的职业技能
    .target Marion Call
    .xp <14,1
    .xp >16,1
step << Undead Rogue
    #xprate >1.49
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r inside the inn
    .train 6761 >>训练你的职业技能
    .target Marion Call
    .xp <16,1
step << Undead Priest
    #xprate >1.49
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 8122 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <14,1
    .xp >16,1
step << Undead Priest
    #xprate >1.49
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 8102 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <16,1
step << skip --Undead Mage
    #xprate >1.49
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 1460 >>训练你的职业技能
    .target Cain Firesong
    .xp <14,1
    .xp >16,1
step << skip --Undead Mage
    #xprate >1.49
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 2120 >>训练你的职业技能
    .target Cain Firesong
    .xp <16,1
step << Undead Warrior
    #xprate >1.49
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 285 >>训练你的职业技能
    .target Austil de Mon
    .xp <16,1
step << Undead Warlock
    #xprate >1.49
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 6222 >>训练你的职业技能
    .target Rupert Boch
    .xp <14,1
    .xp >16,1
step << Undead Warlock
    #xprate >1.49
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 1455 >>训练你的职业技能
    .target Rupert Boch
    .xp <16,1





--XX End of 1.5x Brill Train section





step << Undead
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找一个团队去Ragefire Chasm
    .dungeon RFC
step << Undead
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step << Undead
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    >>等待时制作磨石/绷带 << Warrior/Rogue
    >>等待时招引食物/水 << Mage
    .zoneskip Durotar
step << Undead
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .dungeon RFC
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >>获取Orgrimmar飞行路线
    .target Doras
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .accept 5726 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Durotar,53.08,9.19,0
    >>杀死头骨岩中的|cRXP_ENEMY_燃烧之刃|r暴民，直到|cRXD_LOOT_中尉徽章|r掉落
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5726 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5727 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .accept 5761 >>接任务: |cRXP_WARN_饥饿者塔拉加曼|r
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5727 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5728 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .dungeon RFC
step << Undead
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>输入RFC实例门户。区域在
    .dungeon RFC
step << Undead
    >>|cRXP_WARN_如果可能，让队员分享以下任务|r
    .accept 5722 >>接任务: |cRXP_WARN_寻找背包|r
    .accept 5723 >>接任务: |cRXP_WARN_试探敌人|r
    .disablecheckbox
    .dungeon RFC
step << Undead
    #completewith next
    >>杀死|cRXP_ENEMY_Ragefire Troggs|r和|cRXP_ENEMY_Ragefire萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .complete 5723,2 --Ragefire Shaman (8)
    .mob Ragefire Trogg
    .mob Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >>交任务: |cRXP_FRIENDLY_寻找背包|r
    .accept 5724 >>接任务: |cRXP_WARN_归还背包|r
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 5724 >>接任务: |cRXP_WARN_归还背包|r
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead
    #label TroggsShamans
    >>杀死|cRXP_ENEMY_Ragefire Troggs|r和|cRXP_ENEMY_Ragefire萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .complete 5723,2 --Ragefire Shaman (8)
    .mob Ragefire Trogg
    .mob Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>杀死|cRXP_ENEMY_灼热之刃邪教者|r和|cRXX_ENEMY_灼热之刃术士|r。掠夺他们以获得|cRXD_Loot_阴影咒语|r和| cRXP_Loot_虚空咒语|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    >>杀死饥饿者|cRXP_ENEMY_Taragaman |r。掠夺他的|cRXX_Loot_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead
    #label BazzalanandJergosh
    >>杀死|cRXP_ENEMY_Bazzalan|r和|cRXP_ENEMY_Jergoh调用程序|r
    .complete 5728,1 --Bazzalan (1)
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob Bazzalan
    .mob Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead
    >>杀死|cRXP_ENEMY_灼热之刃邪教者|r和|cRXX_ENEMY_灼热之刃术士|r。掠夺他们以获得|cRXD_Loot_阴影咒语|r和| cRXP_Loot_虚空咒语|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 5761 >>交任务: |cRXP_FRIENDLY_饥饿者塔拉加曼|r
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5728 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5729 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .accept 5729 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 5729 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5730 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5730 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    #completewith Conscript
    .subzone 362 >>前往剃须山
step << !Undead
    .hs >>炉底到剃须山
    .use 6948
    .zoneskip Durotar
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 1758 >>训练你的职业技能
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 6761 >>训练你的职业技能
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
	.train 8122 >>训练你的职业技能
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
	.train 8102 >>训练你的职业技能
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 285 >>训练你的职业技能
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 6222 >>训练你的职业技能
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1455 >>训练你的职业技能
    .target Dhugru Gorelust
    .xp <16,1
step << !Undead
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_RIENDLY_Orgnil|r和|cRXP_RIENDLY_Gar'通话|r
    .turnin 806 >>交任务: |cRXP_FRIENDLY_黑暗风暴|r
    .goto Durotar,52.24,43.15
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .target Orgnil Soulscar
    .target Gar'Thok
step
    #label Conscript
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_WARN_部落的新兵|r
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >>前往远观哨所
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_WARN_十字路口征兵|r
    .target Kargal Battlescar
step << !Undead
    #xprate <1.5
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 809 >>交任务: |cRXP_FRIENDLY_雅克塞罗斯|r
    .accept 924 >>接任务: |cRXP_LOOT_恶魔之种|r
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << !Undead
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_掠夺|r|T134095:0|t[有缺陷的力量石]|cRXP_WARN_下一个|r|cRXP-FRIENDLY_Ak'Zeloth|r|cRXP_WARN_。这个项目有一个30分钟的计时器，所以一定要快|r
    .turnin 926 >>交任务: |cRXP_FRIENDLY_有瑕疵的能量石|r
    .isOnQuest 924
step << Mage
    +如果您计划通过AoE调平，请手动选择“荒地AoE指南”。否则，请完成此步骤
]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#xprate >1.99
#version 1
#group RestedXP部落1-22
#defaultfor Undead
#name 1-7 Tirisfal Glades
#next 7-13 Tirisfal Glades

step << !Undead
    #completewith next
    +|cRXP_WARN_您选择了一个为亡灵准备的指南。建议您选择与开始时相同的起始区域|r
step << !Undead Mage
    #season 2
    #completewith next
    +在探索季节，你不应该以法师的身份在比赛的起跑区外起跑，因为你将无法在这里获得你的第一个符文（|T133816:0|t[雕刻手套-冰枪]）
step
    #completewith Zombies
	.destroy 6948 >>摧毁: |cRXP_ENEMY_炉石|r, 它在你的背包中. 不再需要它了
step
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >>从地下室向|cRXP_FRIENDLY_Mordo|r运行
step
    .goto Tirisfal Glades,30.22,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_送葬者摩尔多|r
    .accept 363 >>接任务: |cRXP_LOOT_突然醒来|r
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #xprate <2.1
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cRXP_WARN_杀死|cRXP_ENEMY_Young Scavengers|r和|cRXX_ENEMY_Duskbats|r。掠夺它们，直到你拥有价值60铜的供应商物品（包括你的盔甲）|r << Mage
    +|cRXP_WARN_杀死|cRXP_ENEMY_Young Scavengers|r和|cRXX_ENEMY_Duskbats|r。掠夺它们，直到你拥有价值50铜的供应商物品（包括你的盔甲）|r << Priest
    +|cRXP_WARN_杀死|cRXP_ENEMY_Young Scavengers|r和|cRXX_ENEMY_Duskbats|r。掠夺它们，直到你拥有价值10铜的供应商物品（包括你的盔甲）|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Warlock/Priest/Mage
    #xprate >2.09
    #completewith Vendor
    +|cRXP_WARN_杀死|cRXP_ENEMY_Young Scavengers|r和|cRXX_ENEMY_Duskbats|r。掠夺它们，直到你拥有价值60铜的供应商物品（包括你的盔甲）|r << Mage
    +|cRXP_WARN_杀死|cRXP_ENEMY_Young Scavengers|r和|cRXX_ENEMY_Duskbats|r。掠夺它们，直到你拥有价值50铜的供应商物品（包括你的盔甲）|r << Priest
    +|cRXP_WARN_杀死|cRXP_ENEMY_Young Scavengers|r和|cRXX_ENEMY_Duskbats|r。掠夺它们，直到你拥有价值10铜的供应商物品（包括你的盔甲）|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << !Warlock
    #xprate >2.09
    #loop
    .goto Tirisfal Glades,29.18,68.94,40,0,0
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0
    .goto Tirisfal Glades,29.10,67.66,40,0
    .goto Tirisfal Glades,30.19,65.32,40,0
    .xp 2 >>升级到2级
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >>进入大楼
step << Priest/Mage
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .vendor >>供应商垃圾箱
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温雅·玛山德|r, |cRXP_FRIENDLY_暗影牧师萨维斯|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r << Mage
    .accept 1470 >>接任务: |cRXP_WARN_控制小鬼|r << Warlock
    .goto Tirisfal Glades,30.98,66.41,0,0 << Warlock
    .turnin 363 >>交任务: |cRXP_FRIENDLY_突然醒来|r
    .accept 364 >>接任务: |cRXP_WARN_无脑的僵尸|r
    .goto Tirisfal Glades,30.84,66.20,0,0
    .target Venya Marthand
    .target Shadow Priest Sarvis
step << Warlock/Mage
    #xprate <2.1
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Warlock/Mage
    #xprate >2.09
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莎贝拉|r
    .train 1459 >>列车|T135932:0|t[奥秘智力]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayla|r
    .vendor >>供应商垃圾箱
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克希米林|r
    .train 348 >>火车|T135817:0|t[献祭]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r
    .turnin 363 >>交任务: |cRXP_FRIENDLY_突然醒来|r
    .accept 364 >>接任务: |cRXP_WARN_无脑的僵尸|r
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << !Warlock !Mage
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾箱
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .train 6673 >>火车|T132333:0|t[战斗呐喊]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>杀死|cRXP_ENEMY_Rattlecase骷髅|r。掠夺他们的|cRXX_Loot_Ratlecase头骨|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_杀死|cRXP_ENEMY_Mindless Zombies|r和|cRXX_ENEMY_Wreated Zombies| r。掠夺它们，直到你拥有价值25铜的供应商物品（包括你的盔甲）|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温雅·玛山德|r
    .turnin 1470 >>交任务: |cRXP_FRIENDLY_控制小鬼|r
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_Cast|r|T136218:0|t[召唤冲击]
step
    #xprate >2.09
    #completewith next
    >>杀死|cRXP_ENEMY_Young Scavenger |r和|cRXD_ENEMY_Ragged Scavenger | r。掠夺他们的|cRXP_Loot_Scarvenger Paws |r
    >>杀死|cRXP_ENEMY_Duskbats|r和|cRXP_ENEMY_Mangy Duskbats |r。掠夺它们的|cRXD_Loot_Duskbat翅膀|r
    >>|cRXP_WARN_尽可能避免|cRXP_ENEMY_Mangy Duskbats|r，因为它们比|cRXX_ENEMY_Duskbats |r更难杀死|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .mob +Young Scavenger
    .mob +Ragged Scavenger
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob +Duskbat
    .mob +Mangy Duskbat
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
#loop
	.line Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.82,33.55,64.57,33.29,64.96,31.72,63.98
	.goto Tirisfal Glades,31.72,63.98,25,0
	.goto Tirisfal Glades,30.69,63.88,25,0
	.goto Tirisfal Glades,30.90,62.20,25,0
	.goto Tirisfal Glades,30.73,61.66,25,0
	.goto Tirisfal Glades,31.14,61.41,25,0
	.goto Tirisfal Glades,31.80,61.83,25,0
	.goto Tirisfal Glades,32.85,63.02,25,0
	.goto Tirisfal Glades,32.90,63.54,25,0
	.goto Tirisfal Glades,33.41,63.06,25,0
	.goto Tirisfal Glades,33.75,62.86,25,0
	.goto Tirisfal Glades,33.51,63.82,25,0
	.goto Tirisfal Glades,33.55,64.57,25,0
	.goto Tirisfal Glades,33.29,64.96,25,0
	.goto Tirisfal Glades,31.72,63.98,25,0
    >>杀死|cRXP_ENEMY_Mindless Zombies|r和|cRXP_ENEMY_Wreated Zombies| r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #xprate <2.1
    #completewith Vendor2
    +|cRXP_WARN_杀死|cRXP_ENEMY_Mindless Zombies|r和|cRXX_ENEMY_Wreated Zombies| r。掠夺它们，直到你有33铜的供应商物品（包括你的盔甲）|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    #xprate <2.1
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >>供应商垃圾箱
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #xprate <2.1
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >>供应商垃圾箱
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    #xprate <2.1
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_马克希米林|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_伊莎贝拉|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_黑暗牧师杜斯滕|r << Priest
    .turnin 364 >>交任务: |cRXP_FRIENDLY_无脑的僵尸|r
    .accept 3095 >>接任务: |cRXP_LOOT_简易卷轴|r << Warrior
    .accept 3096 >>接任务: |cRXP_WARN_密文卷轴|r << Rogue
    .accept 3097 >>接任务: |cRXP_WARN_神圣卷轴|r << Priest
    .accept 3098 >>接任务: |cRXP_LOOT_雕文卷轴|r << Mage
    .accept 3099 >>接任务: |cRXP_LOOT_被污染的卷轴|r << Warlock
    .accept 3901 >>接任务: |cRXP_WARN_断骨骷髅|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>交任务: |cRXP_FRIENDLY_被污染的卷轴|r << Warlock
    .accept 77672 >>Accept The Lost Rune << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >>交任务: |cRXP_FRIENDLY_雕文卷轴|r << Mage
    .accept 77671 >>Accept Spell Research << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>交任务: |cRXP_FRIENDLY_神圣卷轴|r << Priest
    .accept 77670 >>Accept Meditation on Undeath << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .target Maximillion << Warlock
    .target Isabella << Mage
    .target Dark Cleric Duesten << Priest
step
    #xprate <2.1
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_马克希米林|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_伊莎贝拉|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_黑暗牧师杜斯滕|r << Priest
    .turnin 364 >>交任务: |cRXP_FRIENDLY_无脑的僵尸|r
    .accept 3095 >>接任务: |cRXP_LOOT_简易卷轴|r << Warrior
    .accept 3096 >>接任务: |cRXP_WARN_密文卷轴|r << Rogue
    .accept 3097 >>接任务: |cRXP_WARN_神圣卷轴|r << Priest
    .accept 3098 >>接任务: |cRXP_LOOT_雕文卷轴|r << Mage
    .accept 3099 >>接任务: |cRXP_LOOT_被污染的卷轴|r << Warlock
    .accept 3901 >>接任务: |cRXP_WARN_断骨骷髅|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>交任务: |cRXP_FRIENDLY_被污染的卷轴|r << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >>交任务: |cRXP_FRIENDLY_雕文卷轴|r << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>交任务: |cRXP_FRIENDLY_神圣卷轴|r << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .target Maximillion << Warlock
    .target Isabella << Mage
    .target Dark Cleric Duesten << Priest
step << Priest
    #xprate <2.1
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>进入墓地并键入/跪下
    .use 205951 >>使用|T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acorly|r]获得|T237569:0|t[亡灵冥想]增益
    .complete 77670,1 >>学习咒语：雕刻手套-忏悔
step << Priest
    #xprate <2.1
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .turnin 77670 >>Turn in Meditation on Undeath
    .target Dark Cleric Duesten
step << Mage/Warlock/Priest
    #xprate <2.1
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79,40,0
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79
    >>杀死|cRXP_ENEMY_Young Scavenger |r和|cRXD_ENEMY_Ragged Scavenger | r。掠夺他们的|cRXP_Loot_Scarvenger Paws |r
    >>杀死|cRXP_ENEMY_Duskbats|r和|cRXP_ENEMY_Mangy Duskbats |r。掠夺它们的|cRXD_Loot_Duskbat翅膀|r
    >>|cRXP_WARN_尽可能避免|cRXP_ENEMY_Mangy Duskbats|r，因为它们比|cRXX_ENEMY_Duskbats |r更难杀死|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .mob +Young Scavenger
    .mob +Ragged Scavenger
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob +Duskbat
    .mob +Mangy Duskbat
step
    #xprate <2.1
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>杀死|cRXP_ENEMY_Rattlecase骷髅|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step << Mage/Warlock/Priest
    #xprate <2.1
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    >>|cRXP_WARN_不要低于1银|r << Mage/Warlock/Priest
    .vendor >>供应商垃圾箱
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .turnin 3901 >>交任务: |cRXP_FRIENDLY_断骨骷髅|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >>交任务: |cRXP_FRIENDLY_被诅咒者|r
    .accept 6395 >>接任务: |cRXP_WARN_玛拉的遗愿|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
step << Mage/Warlock/Priest
    #xprate >2.09
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >>供应商垃圾箱
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #xprate >2.09
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >>供应商垃圾箱
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    #xprate >2.09
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_马克希米林|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_伊莎贝拉|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_黑暗牧师杜斯滕|r << Priest
    .turnin 364 >>交任务: |cRXP_FRIENDLY_无脑的僵尸|r
    .accept 3095 >>接任务: |cRXP_LOOT_简易卷轴|r << Warrior
    .accept 3096 >>接任务: |cRXP_WARN_密文卷轴|r << Rogue
    .accept 3097 >>接任务: |cRXP_WARN_神圣卷轴|r << Priest
    .accept 3098 >>接任务: |cRXP_LOOT_雕文卷轴|r << Mage
    .accept 3099 >>接任务: |cRXP_LOOT_被污染的卷轴|r << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >>交任务: |cRXP_FRIENDLY_被诅咒者|r
    .accept 6395 >>接任务: |cRXP_WARN_玛拉的遗愿|r
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>交任务: |cRXP_FRIENDLY_被污染的卷轴|r << Warlock
    .accept 77672 >>Accept The Lost Rune << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >>交任务: |cRXP_FRIENDLY_雕文卷轴|r << Mage
    .accept 77671 >>Accept Spell Research << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>交任务: |cRXP_FRIENDLY_神圣卷轴|r << Priest
    .accept 77670 >>Accept Meditation on Undeath << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .target Maximillion << Warlock
    .target Isabella << Mage
    .target Dark Cleric Duesten << Priest
step
    #xprate >2.09
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_马克希米林|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_伊莎贝拉|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_黑暗牧师杜斯滕|r << Priest
    .turnin 364 >>交任务: |cRXP_FRIENDLY_无脑的僵尸|r
    .accept 3095 >>接任务: |cRXP_LOOT_简易卷轴|r << Warrior
    .accept 3096 >>接任务: |cRXP_WARN_密文卷轴|r << Rogue
    .accept 3097 >>接任务: |cRXP_WARN_神圣卷轴|r << Priest
    .accept 3098 >>接任务: |cRXP_LOOT_雕文卷轴|r << Mage
    .accept 3099 >>接任务: |cRXP_LOOT_被污染的卷轴|r << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >>交任务: |cRXP_FRIENDLY_被诅咒者|r
    .accept 6395 >>接任务: |cRXP_WARN_玛拉的遗愿|r
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>交任务: |cRXP_FRIENDLY_被污染的卷轴|r << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >>交任务: |cRXP_FRIENDLY_雕文卷轴|r << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>交任务: |cRXP_FRIENDLY_神圣卷轴|r << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .target Maximillion << Warlock
    .target Isabella << Mage
    .target Dark Cleric Duesten << Priest
step << Priest
    #xprate <2.1
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>进入墓地并键入/跪下
    .use 205951 >>使用|T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acorly|r]获得|T237569:0|t[亡灵冥想]增益
    .complete 77670,1 >>学习咒语：雕刻手套-忏悔
step << Priest
    #xprate <2.1
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .turnin 77670 >>Turn in Meditation on Undeath
    .target Dark Cleric Duesten
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .train 589 >>训练你的职业技能
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .train 2052 >>列车|T135929:0|t[较低治愈等级2]
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .train 1243 >>火车|T135987:0|t[强力词：坚韧]
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克希米林|r
    .train 172 >>列车|T136118:0|t[腐败]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莎贝拉|r
    .train 116 >>列车|T135846:0|t[霜冻螺栓]
    .target Isabella
step
    #xprate <1.5
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵萨尔坦|r, |cRXP_FRIENDLY_执行官阿伦|r
    .accept 3902 >>接任务: |cRXP_WARN_捡破烂|r
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >>接任务: |cRXP_WARN_夜行蜘蛛洞穴|r
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step
    #xprate >1.49
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .accept 380 >>接任务: |cRXP_WARN_夜行蜘蛛洞穴|r
    .goto Tirisfal Glades,32.15,66.01
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾箱
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 >>交任务: |cRXP_FRIENDLY_简易卷轴|r
    .accept 77668 >>Accept The Lost Rune
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 2
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 >>交任务: |cRXP_FRIENDLY_简易卷轴|r
    .accept 77668 >>Accept The Lost Rune
    .train 772 >>列车|T132155:0|t[伦德]
    .target Dannal Stern
    .money <0.01
step << Warrior
    #season 0
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 >>交任务: |cRXP_FRIENDLY_简易卷轴|r
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 >>交任务: |cRXP_FRIENDLY_简易卷轴|r
    .train 772 >>列车|T132155:0|t[伦德]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务: |cRXP_FRIENDLY_密文卷轴|r
    .accept 77669 >>Accept The Scarlet Rune
    .train 53 >>列车|T132090:0|t[后标签]
    .money <0.04
    .target David Trias
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务: |cRXP_FRIENDLY_密文卷轴|r
    .accept 77669 >>Accept The Scarlet Rune
    .target David Trias
step << Rogue
    #season 0
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务: |cRXP_FRIENDLY_密文卷轴|r
    .train 53 >>列车|T132090:0|t[后标签]
    .money <0.04
    .target David Trias
step << Rogue
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务: |cRXP_FRIENDLY_密文卷轴|r
    .target David Trias
step
    #xprate >1.49
    #optional
    #completewith NightWebStart
    .abandon 3902 >>放弃清扫丧钟
step
    #xprate <1.5
    >>打开地面上的|cRXP_PICK_Equipment Boxes|r。为|cRXP_Loot_Scavenged Goods|r掠夺它们
#loop
	.line Tirisfal Glades,32.37,64.37,32.81,64.39,32.89,64.60,33.01,65.38,33.79,64.57,33.13,63.08,32.79,63.11,31.86,61.49,31.75,61.96,31.70,62.53,31.34,62.44,32.37,64.37
	.goto Tirisfal Glades,32.37,64.37,12,0
	.goto Tirisfal Glades,32.81,64.39,12,0
	.goto Tirisfal Glades,32.89,64.60,12,0
	.goto Tirisfal Glades,33.01,65.38,12,0
	.goto Tirisfal Glades,33.79,64.57,12,0
	.goto Tirisfal Glades,33.13,63.08,12,0
	.goto Tirisfal Glades,32.79,63.11,12,0
	.goto Tirisfal Glades,31.86,61.49,12,0
	.goto Tirisfal Glades,31.75,61.96,12,0
	.goto Tirisfal Glades,31.70,62.53,12,0
	.goto Tirisfal Glades,31.34,62.44,12,0
	.goto Tirisfal Glades,32.37,64.37,12,0
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    #label NightWebStart
    .goto Tirisfal Glades,29.29,59.38,50,0
    .goto Tirisfal Glades,29.94,57.33,50,0
#loop
	.line Tirisfal Glades,29.94,57.33,29.82,56.03,29.25,55.77,28.40,56.51,27.68,57.10,28.29,58.31,28.25,59.41,28.80,59.53,29.29,59.40,29.67,58.53,29.94,57.33
	.goto Tirisfal Glades,29.94,57.33,25,0
	.goto Tirisfal Glades,29.82,56.03,25,0
	.goto Tirisfal Glades,29.25,55.77,25,0
	.goto Tirisfal Glades,28.40,56.51,25,0
	.goto Tirisfal Glades,27.68,57.10,25,0
	.goto Tirisfal Glades,28.29,58.31,25,0
	.goto Tirisfal Glades,28.25,59.41,25,0
	.goto Tirisfal Glades,28.80,59.53,25,0
	.goto Tirisfal Glades,29.29,59.40,25,0
	.goto Tirisfal Glades,29.67,58.53,25,0
	.goto Tirisfal Glades,29.94,57.33,25,0
    >>杀死|cRXP_ENEMY_Young Night Web蜘蛛|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    .goto Tirisfal Glades,27.86,58.98,40,0
#loop
	.line Tirisfal Glades,28.25,58.27,28.42,59.07,27.86,60.57,27.17,59.18,27.30,57.97,26.94,56.42,27.51,56.00,28.25,58.27
	.goto Tirisfal Glades,28.25,58.27,25,0
	.goto Tirisfal Glades,28.42,59.07,25,0
	.goto Tirisfal Glades,27.86,60.57,25,0
	.goto Tirisfal Glades,27.17,59.18,25,0
	.goto Tirisfal Glades,27.30,57.97,25,0
	.goto Tirisfal Glades,26.94,56.42,25,0
	.goto Tirisfal Glades,27.51,56.00,25,0
	.goto Tirisfal Glades,28.25,58.27,25,0
    >>杀死靠近洞穴入口的|cRXP_ENEMY_Young Night Web蜘蛛|r
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>进洞里去
step << Warlock
    #season 2
    #completewith RuneofHaunting
    >>杀死洞穴内的|cRXP_ENEMY_Night-Web蜘蛛|r
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warlock
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>在洞穴内偷走|cRXP_PICK_Lost Stache|r，以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Haunting|r]
    .collect 205230,1,77672,1 --Rune of Haunting (1)
step << Warlock
    #season 2
    #label RuneofHaunting
    .use 205230 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .complete 77672,1 --Learn Spell: Engrave Gloves - Haunt
    .isOnQuest 77672
step << Warrior
    #season 2
    #completewith RuneofVictoryRush
    >>杀死洞穴内的|cRXP_ENEMY_Night-Web蜘蛛|r
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warrior
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>在洞穴内偷走|cRXP_PICK_Lost Stache|r，以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Victory Rush|r]
    .collect 204806,1,77668,1 --Rune of Victory Rush (1)
step << Warrior
    #label RuneofVictoryRush
    #season 2
    .use 204806 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .complete 77668,1 --Learn Spell: Engrave Gloves - Victory Rush
    .isOnQuest 77668
step
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54,20,0
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54
    >>杀死洞穴内的|cRXP_ENEMY_Night-Web蜘蛛|r
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    #xprate <1.5
    #softcore
    #completewith Scavenging
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step
    #xprate >1.49
    #softcore
    #completewith NightWebH
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Cast|r|T136218:0|t[召唤冲击]
step
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto Tirisfal Glades,31.08,64.88,30 >>|cRXP_WARN_在洞穴内跳到碎纸机或卡在墙上的木板上，进行注销跳跃，然后注销并返回洞穴|r
    >>|cRXP_WARN_或者，跑回死亡之钟|r
step
    #xprate <1.5
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵萨尔坦|r
    .turnin 3902 >>交任务: |cRXP_FRIENDLY_捡破烂|r
    .target Deathguard Saltain
step << Warlock
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克希米林|r
    .turnin 77672 >>Turn in The Lost Rune
    .target Maximillion
step
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .turnin 380 >>交任务: |cRXP_FRIENDLY_夜行蜘蛛洞穴|r
    .accept 381 >>接任务: |cRXP_WARN_血色十字军|r
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾箱
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >>供应商垃圾箱
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 77668 >>Turn in The Lost Rune
    .target Dannal Stern
step << Mage
    #season 2
    #completewith RuneofIcelance
    >>杀死|cRXP_ENEMY_Scarlet Initiates |r和|cRXD_ENEMY_Scarlet Converters |r。掠夺它们的|cRXP_Loot_Scarlet Armbands|r
    >>|cRXP_WARN_还不要杀死|cRXP_ENEMY_Meven Korgal|r|r
    >>|cRXP_WARN_如果可以的话，尽量避开|cRXP_ENEMY_Scarlet Initiates|r，因为他们有|r|T135843:0|t[霜甲]|cRXP-WARN_（降低攻击速度）|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step << Mage
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
    >>杀死|cRXP_ENEMY_Scarlet启动|r。为|T134939:0|t|cRXP_Loot_[拼写说明：CALE ENCI]|r掠夺它们
    .collect 203751,1,77671,1 --Spell Notes: CALE ENCI (1)
    .mob Scarlet Initiate
step << Mage
    #season 2
    #label RuneofIcelance
    .train 401760 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_LOOT_[拼写说明：CALE ENCI]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Rogue
    #season 2
    #completewith RuneofShadowstrike
    >>杀死|cRXP_ENEMY_Scarlet Initiates |r和|cRXD_ENEMY_Scarlet Converters |r。掠夺它们的|cRXP_Loot_Scarlet Armbands|r
    >>|cRXP_WARN_还不要杀死|cRXP_ENEMY_Meven Korgal|r|r
    >>|cRXP_WARN_如果可以的话，尽量避开|cRXP_ENEMY_Scarlet Initiates|r，因为他们有|r|T135843:0|t[霜甲]|cRXP-WARN_（降低攻击速度）|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step << Rogue
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
    >>杀死|cRXP_ENEMY_Scarlet转化|r。掠夺它们以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Shadowstrike|r]
    .collect 204795,1,77669,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #label RuneofShadowstrike
    .use 204795 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r]
    .complete 77669,1 --Learn Spell: Engrave Gloves - Shadowstrike
    .isOnQuest 77669
step
    #requires NightWebH
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
    >>杀死|cRXP_ENEMY_Scarlet Initiates |r和|cRXD_ENEMY_Scarlet Converters |r。掠夺它们的|cRXP_Loot_Scarlet Armbands|r
    >>|cRXP_WARN_还不要杀死|cRXP_ENEMY_Meven Korgal|r|r
    >>|cRXP_WARN_如果可以的话，尽量避开|cRXP_ENEMY_Scarlet Initiates|r，因为他们有|r|T135843:0|t[霜甲]|cRXP-WARN_（降低攻击速度）|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>杀死|cRXP_ENEMY_Samuel|r。掠夺他|cRXX_Loot_SSamuel的剩余物|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #softcore
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step
    .goto Tirisfal Glades,31.17,65.08
	>>点击地面上的|cRXP_PICK_Marla的坟墓|r
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Cast|r|T136218:0|t[召唤冲击]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_黑暗牧师杜斯滕|r << Priest
    .turnin 6395 >>交任务: |cRXP_FRIENDLY_玛拉的遗愿|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >>接任务: |cRXP_WARN_黑暗的恩赐|r << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Novice Elreth
    .target Dark Cleric Duesten << Priest
step << Mage
    #season 2
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莎贝拉|r
    .turnin 77671 >>Turn in Spell Research
    .target Isabella
    .isQuestComplete 77671
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .turnin 381 >>交任务: |cRXP_FRIENDLY_血色十字军|r
    .accept 382 >>接任务: |cRXP_WARN_十字军信使|r
    .target Executor Arren
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Turn in The Scarlet Rune
    .target David Trias
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾箱
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >>杀死|cRXP_ENEMY_Meven|r。掠夺他获得|cRXD_Loot_Scarlet十字军东征文件|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .turnin 382 >>交任务: |cRXP_FRIENDLY_十字军信使|r
    .accept 383 >>接任务: |cRXP_WARN_重要情报|r
    .target Executor Arren
step
    .goto Tirisfal Glades,34.08,59.51,40,0
    .goto Tirisfal Glades,35.34,56.55,40,0
    .goto Tirisfal Glades,36.83,56.85,40,0
    .goto Tirisfal Glades,37.76,59.38,40,0
    .goto Tirisfal Glades,37.51,62.99,40,0
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
    .xp 5+1900 >>升级到1900+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔文·蒙泰古|r
    .accept 8 >>接任务: |cRXP_LOOT_潜行者的交易|r
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#classic
#xprate >1.99
<< Horde
#name 7-13 Tirisfal Glades
#version 1
#group RestedXP部落1-22
#defaultfor Undead
#next 13-20 The Barrens

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_西米尔|r
    .accept 365 >>接任务: |cRXP_WARN_悲伤之地|r
    .target Deathguard Simmer
step
    .goto Tirisfal Glades,40.77,54.42,40,0
    .goto Tirisfal Glades,42.04,55.11,40,0
    .goto Tirisfal Glades,43.59,54.30,40,0
    .goto Tirisfal Glades,46.21,56.78,40,0
    .goto Tirisfal Glades,48.88,57.93,40,0
    .goto Tirisfal Glades,50.73,57.27,40,0
    .goto Tirisfal Glades,52.52,54.48,40,0
    .goto Tirisfal Glades,54.49,52.65,40,0
    .goto Tirisfal Glades,56.13,52.48,40,0
    .goto Tirisfal Glades,42.04,55.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛尔多|r
    >>|cRXP_WARN_他在通往布里尔的路上巡逻，真是令人憎恶|r
    .accept 5481 >>接任务: |cRXP_LOOT_葛尔多的任务|r
    .unitscan Gordo
step << Priest
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博文·布里斯博埃斯|r
    .train 3908 >>列车|T136249:0|t[剪裁]。保存您的|T132889:0|t[亚麻布]。这将允许您稍后创建魔杖
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer|r处死亡并重生，或运行到Brill
    .target Spirit Healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_执行官塞加德|r
    .accept 404 >>接任务: |cRXP_LOOT_腐烂的爪子|r
    .goto Tirisfal Glades,58.20,51.45
    .turnin 383 >>交任务: |cRXP_FRIENDLY_重要情报|r
    .accept 427 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .goto Tirisfal Glades,60.59,51.77
    .target Deathguard Dillinger
    .target Executor Zygand
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mrs交谈。Winters |r|cRXP_BUY_。从她那里购买|r|T135421:0|t[加权飞斧]|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith Claws
    +装备|T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #completewith Claws
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135321:0|t[Gladius]（5s 36c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135321:0|t[Gladius]|r
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #completewith Claws
    +装备|T135321:0|t[格拉迪乌斯]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    .turnin 8 >>交任务: |cRXP_FRIENDLY_潜行者的交易|r
    .home >>将您的炉石设置为Brill
    .target Innkeeper Renee
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen |r|cRXP_WARN_在旅馆的二楼|r
    .accept 375 >>接任务: |cRXP_WARN_死亡之寒|r
    .target Gretchen Dedmar
    .xp <7,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
    .turnin 5651 >>交任务: |cRXP_FRIENDLY_黑暗的恩赐|r
    .accept 5650 >>接任务: |cRXP_WARN_黑暗之衣|r
	.train 591 >>列车|T135924:0|t[Smite]
    .train 17 >>列车|T135940:0|t[电源字：屏蔽]
    .train 2052 >>列车|T135929:0|t[较低治愈等级2]
    .target Dark Cleric Beryl
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 143 >>列车|T135812:0|t[火球]
    .train 2136 >>列车|T135807:0|t[火灾爆炸]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 3127 >>列车|T132269:0|t[Parry]
    .target Austil de Mon
    .money <0.01
step << Rogue
    #season 0
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1757 >>火车|T136189:0|t[邪恶的打击]
    .target Marion Call
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1757 >>火车|T136189:0|t[邪恶的打击]
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .target Marion Call
    .money <0.02
step << Rogue
    #optional
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .target Marion Call
    .money >0.02
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·朗恩|r
    >>|cRXP_BUY_从她那里购买|r|T133738:0|t[Grimoire of Blood Pact]|cRXP_Buy_|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>供应商垃圾箱
    .target Gina Lang
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 695 >>列车|T136197:0|t[影子螺栓]
    .train 1454 >>列车|T136126:0|t[生命抽头]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 695 >>列车|T136197:0|t[影子螺栓]
    .target Rupert Boch
step << Warlock
    #completewith Claws
    .train 20397 >>|cRXP_WARN_使用|r|T133738:0|t[血约之谜]
    .itemcount 16321,1
    .use 16321
step << Priest/Warlock
    .goto Tirisfal Glades,61.76,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_范斯·安德格鲁姆|r
    .train 7411 >>火车|T136244:0|t[迷人]。这与|T136249:0|t[Tailering]一起将允许您稍后创建魔杖
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Priest
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r <<Warrior/Rogue
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[冰牛奶]|cRXP_Buy_和|r|T134532:0|t[红色斑点蘑菇]|cRX|r << Warlock
    .vendor >>供应商垃圾箱
    .collect 1179,15,367,1 << Mage/Priest --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
 step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 367 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaan
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>在|cRXP_FRIENDLY_Dathguard Kel|r上施法|T135929:0|t[小治疗]和|T135987:0|t[力量文字：坚韧]
    >>|cRXP_WARN_你需要较低的治疗等级2才能完成此任务|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Claws
    >>将|cRXP_Loot_Gloom Weed|r洗劫一空
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith GloomWeed
    >>杀死你看到的任何|cRXP_ENEMY_Decrepit Darkhound|r。掠夺他们的|cRXP_Loot_Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #label Claws
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25
    .goto Tirisfal Glades,52.63,56.98
    >>杀死|cRXP_ENEMY_Rotting Dead|r和|cRXD_ENEMY_Ravaged Corses|r。掠夺它们的|cRXP_Loot_爪|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    #label GloomWeed
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33
    >>完成掠夺地面上的|cRXP_LOOT_Gloom Weed|r
    .complete 5481,1 --Gloom Weed (3)
step << Warrior
    #optional
    #season 2
    #xprate >1.49
    #completewith DBlood
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
    .isOnQuest 375
step
    #optional
    #xprate >1.49
    #completewith next
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #xprate >1.49
    #label DBlood
    #loop
    .goto Tirisfal Glades,43.97,57.27,0
    .goto Tirisfal Glades,40.57,47.23,0
    .waypoint Tirisfal Glades,48.03,53.43,80,0
    .waypoint Tirisfal Glades,43.97,57.27,80,0
    .waypoint Tirisfal Glades,41.01,55.94,60,0
    .waypoint Tirisfal Glades,40.57,47.23,60,0
    .waypoint Tirisfal Glades,40.89,42.77,60,0
    .waypoint Tirisfal Glades,39.12,39.85,60,0
    >>完成杀戮|cRXP_ENEMY_Darkhounds|r。掠夺他们的|cRXX_Loot_Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_开始收集3堆|r|T132889:0|t[亚麻布]|cRXP_WARN_。这将用于制作|r|T135139:0|t[小魔杖]|cRXP_WARN_water|r
    >>|cRXP_WARN_如果你不想这样做，或者以后想从拍卖行购买，请跳过这一步|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_开始收集3堆|r|T132889:0|t[亚麻布]|cRXP_WARN_。这将用于制作|r|T135139:0|t[小魔杖]|cRXP_WARN_water|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    #season 2
    #completewith next
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Tirisfal Farmers|r和|cRXX_ENEMY_Tyrisfal Farmhands|r。为|T134327:0|t[|cRXD_Loot_Top-Left Map Piece|r]掠夺它们
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>掠夺在田地里找到的|cRXP_Loot_Pumpkins|r。
    .complete 365,1 --Tirisfal Pumpkin (10)
step << Rogue
    #season 2
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Tirisfal Farmers|r和|cRXX_ENEMY_Tyrisfal Farmhands|r。为|T134327:0|t[|cRXD_Loot_Top-Left Map Piece|r]掠夺它们
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step << Rogue/Mage/Priest
    #season 2
    #completewith next
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺它们|T134327:0|t[|cRXX_Loot_Top-Right Map Piece|r] << Rogue
    >>杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺他们|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r] << Mage
    >>杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺他们|T135975:0|t[|cRXP_FRIENDLY_亵渎城堡的名字|r] << Priest
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以掉落地图碎片|r << Rogue
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以施放咒语|r << Mage
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以放弃预言|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step
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
    >>杀死|cRXP_ENEMY_猩红战士|r
    >>|cRXP_WARN_要小心，因为他们在完成防御姿态动画后，有50%的防御提升，持续8秒|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step << Rogue/Mage/Priest
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
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺它们|T134327:0|t[|cRXX_Loot_Top-Right Map Piece|r] << Rogue
    >>杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺他们|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r] << Mage
    >>杀死|cRXP_ENEMY_Scarlet Warriors|r。掠夺他们|T135975:0|t[|cRXP_FRIENDLY_亵渎城堡的名字|r] << Priest
    |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以掉落地图碎片|r << Rogue
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以施放咒语|r << Mage
    >>|cRXP_WARN_蒂里斯法尔的任何猩红类人都可以放弃预言|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：MILEGIN VALF|r]|cRXP_WARN_to learn|r|T135820:0|t[活火焰]
    .use 203752
    .itemcount 203752,1
step << Mage/Priest
    #season 2
    .goto Tirisfal Glades,25.6,48.2
    >>杀死|cRXP_ENEMY_Gillgar|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]掠夺他 << Mage
    >>杀死|cRXP_ENEMY_Gillgar |r。为|T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r]掠夺他 << Priest
    >>|cRXP_WARN_这是一个7级精英，不容易杀死。如果太难的话，暂时跳过他|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品。
    .train 401765 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]|cRXP-WARN_to learn|r|T236227:0|t[霜的手指]
    .use 203753
step
    #hardcore
    #completewith BrillTurnin1
    .hs >>从炉子到布里尔
    .subzoneskip 159
    .cooldown item,6948,>0,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >>在|cRXP_FRIENDLY_精神治疗师|r处死亡并重生
step << Priest
    #season 2
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>跪在墓地直到获得buff|T237569:0|t[亡灵冥想]
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_黑暗目的记忆|r]|cRXP_WARN_训练|r|T237514:0|t[虚空瘟疫]
step << Priest
    #season 2
    #completewith BrillTurnin1
    .use 205947
    .itemcount 205947,1
    .aura 417316 >>|cRXP_WARN_现在你必须找到一个拥有面包buff的巨魔牧师。你必须跪在他面前，他必须为你祈祷。|r
    .train 402852 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_废弃城堡的名称|r]|cRXP_WARN_训练|r|T237570:0|t[Hhomuncli]
step
    #softcore
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    .goto Tirisfal Glades,57.71,48.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r, he patrols around the graveyard.
    .turnin 5481 >>交任务: |cRXP_FRIENDLY_葛尔多的任务|r
    .accept 5482 >>接任务: |cRXP_LOOT_末日草|r
    .target Junior Apothecary Holland
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 404 >>交任务: |cRXP_FRIENDLY_腐烂的爪子|r
    .accept 426 >>接任务: |cRXP_WARN_磨坊告急|r
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .turnin 365 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 407 >>接任务: |cRXP_WARN_悲伤之地|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 370 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .goto Tirisfal Glades,60.58,51.77
    .target Deathguard Dillinger
    .target Executor Zygand
    .target Apothecary Johaan
    .isQuestComplete 367
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 404 >>交任务: |cRXP_FRIENDLY_腐烂的爪子|r
    .accept 426 >>接任务: |cRXP_WARN_磨坊告急|r
    .goto Tirisfal Glades,58.20,51.43
    .turnin 365 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .accept 407 >>接任务: |cRXP_WARN_悲伤之地|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 370 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .goto Tirisfal Glades,60.58,51.77
    .target Deathguard Dillinger
    .target Executor Zygand
    .target Apothecary Johaan
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r, Wanted Poster, |cRXP_FRIENDLY_执政官塞弗伦|r
    .accept 374 >>接任务: |cRXP_WARN_死亡证明|r
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>接任务: |cRXP_WARN_悬赏：蛆眼|r
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>接任务: |cRXP_LOOT_盗墓贼|r
    .goto Tirisfal Glades,61.26,50.84
    .target Magistrate Sevren
    .target Deathguard Burgess
 step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的血色狂热者|r
    .turnin 407 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .target Captured Scarlet Zealot
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
    .turnin 5650 >>交任务: |cRXP_FRIENDLY_黑暗之衣|r
    .train 591 >>列车|T135924:0|t[Smite]
    .train 17 >>列车|T135940:0|t[电源字：屏蔽]
    .target Dark Cleric Beryl
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen |r|cRXP_WARN_在旅馆的二楼|r
    .accept 375 >>接任务: |cRXP_WARN_死亡之寒|r
    .target Gretchen Dedmar
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 139 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 205 >>训练你的职业技能
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 284 >>训练你的职业技能
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 6760 >>训练你的职业技能
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 980 >>训练你的职业技能
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_妮拉|r
    >>|cRXP_WARN_试着在你等待的时候制作它们，比如齐柏林飞艇|r
    .train 3273 >>列车|T135966:0|t[急救]
    .target Nurse Neela
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith NewPlague1
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135321:0|t[Gladius]（5s 36c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135321:0|t[Gladius]|r
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #completewith NewPlague1
    +装备|T135321:0|t[格拉迪乌斯]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #hardcore
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    .goto Tirisfal Glades,57.71,48.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r, he patrols around the graveyard.
    .turnin 5481 >>交任务: |cRXP_FRIENDLY_葛尔多的任务|r
    .accept 5482 >>接任务: |cRXP_LOOT_末日草|r
    .target Junior Apothecary Holland
step << Warrior
    #season 2
    #xprate <1.5
    #completewith DuskbatTrophy1
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #completewith next
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <1.5
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
    >>杀死|cRXP_ENEMY_Darkhounds|r。掠夺他们的|cRXX_Loot_Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step << Rogue/Warrior
    #xprate <1.5
    #optional
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
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3960,1
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #label DuskbatTrophy1
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
    .xp 7+3260 >>升级到3260+/4500
--XX 700 (375)+540 (367)
step
    #xprate >1.49
    #optional
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
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3690,1
step
    #xprate >1.49
    #optional
    #label DuskbatTrophy1
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
    .xp 7+2640 >>升级到2640+/4500
--XX 700 (375)+540 (367)
step
    #xprate <1.5
    #hardcore
    #completewith NewPlague1
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith NewPlague1
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    #label NewPlague1
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaan
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r, Wanted Poster, |cRXP_FRIENDLY_执政官塞弗伦|r
    .accept 374 >>接任务: |cRXP_WARN_死亡证明|r
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>接任务: |cRXP_WARN_悬赏：蛆眼|r
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>接任务: |cRXP_LOOT_盗墓贼|r
    .goto Tirisfal Glades,61.26,50.84
    .target Magistrate Sevren
    .target Deathguard Burgess
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <1.5
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 139 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    #xprate <1.5
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 205 >>训练你的职业技能
    .target Cain Firesong
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 284 >>训练你的职业技能
    .target Austil de Mon
    .xp <8,1
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 6760 >>训练你的职业技能
    .target Marion Call
    .xp <8,1
step << Warlock
    #xprate <1.5
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 980 >>训练你的职业技能
    .target Rupe
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    #completewith Doomweed
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135321:0|t[Gladius]（5s 36c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135321:0|t[Gladius]|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    #completewith Doomweed
    +装备|T135321:0|t[格拉迪乌斯]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Rogue
    #season 2
    #completewith MaggotEye
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Rot隐藏Gnolls|r。掠夺它们|T134327:0|t[|cRXP-Loot_Bottom-Left地图碎片|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rote Hide Gnoll
    .mob Rot Hide Graverobber
    .train 400095,1
step << Warrior
    #season 2
    #completewith MaggotEye
    >>杀死任何类型的|cRXP_ENEMY_Rote Hide Gnoll|r。掠夺它们以获得|cRXX_Loot_Severed Gnoll Head|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rote Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step
    #completewith next
    >>将|cRXP_Loot_Doom杂草|r洗劫一空
    >>|cRXP_WARN_它们是在Gnoll地区的树木附近发现的|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>杀死|cRXP_ENEMY_Rot隐藏盗墓者|r。掠夺他们的|cRXX_Loot_Ichor|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>杀死|cRXP_ENEMY_Rot隐藏蒙古人|r。掠夺他们的|cRXX_Loot_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label Doomweed
    #loop
    .goto Tirisfal Glades,57.48,35.95,0
    .goto Tirisfal Glades,57.68,34.37,30,0
    .goto Tirisfal Glades,57.45,35.96,30,0
    .goto Tirisfal Glades,56.79,37.79,30,0
    .goto Tirisfal Glades,56.05,38.76,30,0
    .goto Tirisfal Glades,55.09,38.74,30,0
    .goto Tirisfal Glades,55.25,40.16,30,0
    .goto Tirisfal Glades,54.68,42.12,30,0
    .goto Tirisfal Glades,55.29,41.51,30,0
    .goto Tirisfal Glades,56.58,41.99,30,0
    .goto Tirisfal Glades,58.29,42.93,30,0
    .goto Tirisfal Glades,58.83,40.68,30,0
    .goto Tirisfal Glades,58.36,38.55,30,0
    .goto Tirisfal Glades,57.48,35.95,30,0
    >>将|cRXP_Loot_Doom杂草|r洗劫一空
    >>|cRXP_WARN_它们是在Gnoll地区的树木附近发现的|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step << Mage
    #season 2
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>铸造|T136071:0|t[变形]在|cRXP_ENEMY_Odd Melons|r上
    >>将|T134332:0|t|cRXP_Loot_[药剂师笔记]|r洗劫一空
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #completewith MaggotEye
    >>杀死|cRXP_ENEMY_Rot隐藏蒙古人|r。掠夺他们的|cRXX_Loot_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>杀死|cRXP_ENEMY_Maggot Eye|r。掠夺他的|cRXX_Loot_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>杀死|cRXP_ENEMY_Rot隐藏蒙古人|r。掠夺他们的|cRXX_Loot_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>杀死|cRXP_ENEMY_Rot隐藏Gnolls|r。掠夺他们的|cRXP-Loot_Ichor|r
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rote Hide Gnoll
    .mob Rot Hide Graverobber
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Rot隐藏Gnolls|r。掠夺它们|T134327:0|t[|cRXP-Loot_Bottom-Left地图碎片|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>杀死任何类型的|cRXP_ENEMY_Rote Hide Gnoll|r。掠夺它们以获得|cRXX_Loot_Severed Gnoll Head|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rote Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << Mage
    #xprate >2.09
    #season 2
    #loop
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    .goto Tirisfal Glades,59.84,33.17,40,0
    .goto Tirisfal Glades,58.38,35.28,40,0
    .goto Tirisfal Glades,60.09,37.01,40,0
    >>铸造|T136071:0|t[变形]在|cRXP_ENEMY_Odd Melons|r上
    >>将|T134332:0|t|cRXP_Loot_[药剂师笔记]|r洗劫一空
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #xprate >2.09
    #season 2
    >>|cRXP_WARN_使用|r|T134332:0|t|cRXP_LOOT[药剂师笔记]|r|cRXP-WARN_to创建|r|T134332:0 |t|cRXP_LOUT[拼写笔记：启蒙]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #xprate >2.09
    #season 2
    .train 415942 >>|cRXP_WARN_使用|r|T134332:0|t|cRXP_LOOT_[咒语注释：启蒙]|r|cRXP-WARN_学习|r|T133815:0|t[铭刻胸甲-启蒙]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step << Warrior
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
    >>杀死|cRXP_ENEMY_Vile Vin Murlocs|r。掠夺他们的|cRXP_Loot_Scales|r和|cRXP-Loot_Severed Murloc Head|r
    .complete 368,1 --Vile Fin Scale (5)
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step << Rogue
    #season 2
    #completewith MurlocVins
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Vile Fin Murlocs|r用于|T134241:0|t[|cRXX_LOOT_Shipwreck缓存密钥|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .train 400081,1
step << Rogue
    #season 2
    #completewith RuneofPrecision
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Vile Vin Murlocs|r。掠夺它们|T134327:0|t[|cRXX_Loot_Bottom-Right Map Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .train 400095,1
step
    #label MurlocVins
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>杀死|cRXP_ENEMY_Vile Vin Murlocs|r。掠夺他们的|cRXX_Loot_Scales|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step << Rogue
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
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Vile Fin Murlocs|r用于|T134241:0|t[|cRXX_LOOT_Shipwreck缓存密钥|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>为|T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]掠夺|cRXP_PICK_Shipwreck缓存|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    #label RuneofPrecision
    .train 400081 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_精度调整|r]|cRXP_WARN_训练|r|T135610:0|t]
    .use 204174
    .itemcount 204174,1
step << Rogue
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
    >>铸造|T133644:0|t[拾取口袋]并杀死|cRXP_ENEMY_Vile Vin Murlocs|r。掠夺它们|T134327:0|t[|cRXX_Loot_Bottom-Right Map Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step << Rogue
    #season 2
    .use 208036 >>|cRXP_WARN_使用|r|T134327:0|t[|cRXP_LOOT_Map Pieces|r]|cRXD_WARN_创建|r|T134269:0|t[|cRXP-LOOT_Tirisfal藏宝图|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #hardcore
    #completewith DoomedWeed
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
step
    #softcore
    #completewith DoomedWeed
    .goto Tirisfal Glades,64.50,29.41
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    >>|cRXP_WARN_确保你死在航路点箭头上（或西面）|r
step
    #label DoomedWeed
    .goto Tirisfal Glades,59.26,46.73,30,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,57.71,48.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holland|r, he patrols around the graveyard.
    .turnin 5482 >>交任务: |cRXP_FRIENDLY_末日草|r
    .target Junior Apothecary Holland
step << Rogue
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>|cRXP_WARN_使用|r|T134269:0|t[|cRXP_LOOT_Tirisfal藏宝图|r]|cRXP-WARN_桥下|r
    >>掠夺为|T134419:0|t生成的|cRXP_PICK_Buried Treasure |r宝箱[|cRXP_FIRENDLY_Rune of Quick Draw|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]|cRXP-WARN_to train|r|T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 368 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 369 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>交任务: |cRXP_FRIENDLY_悬赏：蛆眼|r
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>交任务: |cRXP_FRIENDLY_盗墓贼|r
    .accept 405 >>接任务: |cRXP_WARN_流浪的巫妖|r << Warlock
    .accept 359 >>接任务: |cRXP_LOOT_亡灵卫兵的职责|r
    .goto Tirisfal Glades,61.26,50.84
    .target Apothecary Johaan
    .target Executor Zygand
    .target Magistrate Sevren
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 368 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>交任务: |cRXP_FRIENDLY_悬赏：蛆眼|r
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>交任务: |cRXP_FRIENDLY_盗墓贼|r
    .accept 405 >>接任务: |cRXP_WARN_流浪的巫妖|r << Warlock
    .goto Tirisfal Glades,61.26,50.84
    .target Apothecary Johaan
    .target Executor Zygand
    .target Magistrate Sevren
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .accept 354 >>接任务: |cRXP_WARN_阿加曼德家族|r
    .accept 362 >>接任务: |cRXP_WARN_闹鬼的磨坊|r
    .target Coleman Farthing
step << !Warlock
    #xprate >1.49
    #optional
    #completewith AgamandStart
    .abandon 405 >>抛弃浪子巫妖
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 139 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <8,1
    .xp >10,1
step << Priest
    #optional
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 8092 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <10,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 205 >>训练你的职业技能
    .target Cain Firesong
    .xp <8,1
    .xp >10,1
step << Mage
    #optional
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r
    --.accept 1881 >>接任务: |cRXP_WARN_安娜斯塔西娅|r
    .train 122 >>训练你的职业技能
    .target Cain Firesong
    .xp <10,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 284 >>训练你的职业技能
    .target Austil de Mon
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .trainer >>训练你的职业技能
    .accept 1818 >>接任务: |cRXP_WARN_迪林格尔|r
    .target Austil de Mon
    .xp <10,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 6760 >>训练你的职业技能
    .target Marion Call
    .xp <8,1
    .xp >10,1
step << Rogue
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r
    .train 674 >>训练你的职业技能
    --.accept 1885 >>接任务: |cRXP_LOOT_米奈特·卡加德|r
    .target Marion Call
    .xp <10,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r on the second floor
    .train 980 >>训练你的职业技能
    .target Rupert Boch
    .xp <8,1
    .xp >10,1
step << Warlock
    #optional
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 707 >>训练你的职业技能
    .target Rupert Boch
    .xp <10,1
step << Warlock
    #optional
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃格隆·卡加尔|r
    .accept 1478 >>接任务: |cRXP_LOOT_哈加尔的召唤|r
    .target Ageron Kargal
    .xp <10,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃格隆·卡加尔|r
    .accept 1478 >>接任务: |cRXP_LOOT_哈加尔的召唤|r
    .target Ageron Kargal
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_妮拉|r
    >>|cRXP_WARN_试着在你等待的时候制作它们，比如齐柏林飞艇|r
    .train 3273 >>列车|T135966:0|t[急救]
    .target Nurse Neela
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith MillsOverun
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135321:0|t[Gladius]（5s 36c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Oliver|cRXP_BUY_交谈。从他那里购买|r|T135321:0|t[Gladius]|r
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #completewith MillsOverun
    +装备|T135321:0|t[格拉迪乌斯]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Priest
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r <<Warrior/Rogue
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[冰牛奶]|cRXP_Buy_和|r|T134532:0|t[红色斑点蘑菇]|cRX|r << Warlock
    .vendor >>供应商垃圾箱
    .collect 1179,20,426,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
step << Rogue/Warrior
    #softcore
    .goto Tirisfal Glades,60.31,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莉莎·考伦|r
    .vendor >>Repair your weapon
    .target Eliza Callen
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1818 >>交任务: |cRXP_FRIENDLY_迪林格尔|r
    .accept 1819 >>接任务: |cRXP_LOOT_切割者奥拉格|r
    .target Deathguard Dillinger
    .isOnQuest 1818
step << Warrior
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .accept 1819 >>接任务: |cRXP_LOOT_切割者奥拉格|r
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_点击地面上的头骨。这将调用|r|cRXP_ENEMY_Ulag|r|cRXP_WARN_杀了他|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1819 >>交任务: |cRXP_FRIENDLY_切割者奥拉格|r
    .accept 1820 >>接任务: |cRXP_WARN_库勒曼|r
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818

    --150% route does Agamand Mills after UC

step << Warrior
    #xprate <2.1
    #season 2
    #completewith AgamandStart
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <2.1
    #completewith next
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >>向北/向西行驶至Agamand Mills
    .isOnQuest 362
step
    #xprate <2.1
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_OOT_Thurman's Letter|r]|cRXP-WARN_may drop from these mobs T134939,0|t[| cRXP_LOOT_Therman’s Letter |r]| cRXP-WAR_may drop。如果任务完成，请接受它|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
step
    #xprate <2.1
    #sticky
    #label MillsOverun
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXD_ENEMY_Bonecasters|r。掠夺他们的|cRXP_Loot_Ribs|r和| cRXP_Loot_Sulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate <2.1
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>杀死|cRXP_ENEMY_Devlin|r。掠夺他的|cRXX_Loot_Eremains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    #xprate <2.1
    .goto Tirisfal Glades,49.34,36.02
    >>杀死|cRXP_ENEMY_Nissa|r。为她抢劫她|cRXX_Loot_LUENTS|r。她可以在大楼里
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #xprate <2.1
    #label ThurmanGregor
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15
    >>杀死|cRXP_ENEMY_Thurman|r和|cRXX_ENEMY_Gregor|r。掠夺他们的|cRXP_Loot_REQUAINS|r。他们可以四处巡逻
    .complete 354,3 --Thurman's Remains (1)
    .complete 354,1 --Gregor's Remains (1)
    .unitscan Thurman Agamand
    .unitscan Gregor Agamand
step << skip
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXX_ENEMY_Bonecasters|r。掠夺他们|T134939:0|t[|cRXD_Loot_Therman的信|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+4320,1
    .isQuestTurnedIn 375
--XX 880(426)+480（361，选择）+880（354）+420（362）+700（375，选择）
step << skip
    #xprate >1.49
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXX_ENEMY_Bonecasters|r。掠夺他们|T134939:0|t[|cRXD_Loot_Therman的信|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+2180,1
    .isOnQuest 375
--XX 880(426)+480（361，选择）+880（354）+420（362）+700（375，选择）
step << skip
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXX_ENEMY_Bonecasters|r。掠夺他们|T134939:0|t[|cRXD_Loot_Therman的信|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3230,1
    .isQuestTurnedIn 375
--XX 880(426)+480（361，选择）+880（354）+420（362）+700（375，选择）
step << skip
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+3620 >>升级到3620+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step << skip
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+4320 >>升级到4320+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step << skip
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+3840 >>升级到3840+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step << skip
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+3140 >>升级到3140+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+2180 >>升级到2180+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+3230 >>升级到3230+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+2510 >>升级到2510+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25
    .xp 9+1460 >>升级到1460+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << Mage/Priest
    #xprate <2.1
    #season 2
    >>杀死|cRXP_ENEMY_Gillgar|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]掠夺他 << Mage
    >>杀死|cRXP_ENEMY_Gillgar |r。为|T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r]掠夺他 << Priest
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #xprate <2.1
    #season 2
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品
    .train 401765 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]|cRXP-WARN_to learn|r|T236227:0|t[霜的手指]
    .use 203753
step << skip
    #xprate <1.5
    #hardcore
    #completewith FoodandWater2
    .hs >>从炉子到布里尔
    .subzoneskip 159
    .cooldown item,6948,>0,1
step << skip
    #xprate <1.5
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <2.1
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
step
    #xprate <2.1
    #softcore
    #completewith FoodandWater2
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    #xprate <2.1
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 426 >>交任务: |cRXP_FRIENDLY_磨坊告急|r
    .target Deathguard Dillinger
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 361 >>交任务: |cRXP_FRIENDLY_未寄出的信件|r
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.72,52.29
    .target Yvette Farthing
    .target Coleman Farthing
    .isOnQuest 361
step
    #xprate <2.1
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .target Coleman Farthing
    .isQuestTurnedIn 1819 << Warrior
step << Warrior
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .target Coleman Farthing
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <2.1
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.trainer >>训练你的职业技能
    .target Dark Cleric Beryl
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 2687 >>训练你的职业技能
    .accept 1818 >>接任务: |cRXP_WARN_迪林格尔|r
    .target Austil de Mon << Warrior
    .xp >12,1
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384 >>列车|T132223:0|t[超功率]
    .accept 1818 >>接任务: |cRXP_WARN_迪林格尔|r
    .target Austil de Mon
    .xp <12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 707 >>训练你的职业技能
    .target Rupert Boch
    .xp <10,1
    .xp >12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >>训练你的职业技能
    .target Rupert Boch
    .xp <12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃格隆·卡加尔|r
    .accept 1478 >>接任务: |cRXP_LOOT_哈加尔的召唤|r
    .target Ageron Kargal
step << Rogue
    #xprate <2.1
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r
    .train 674 >>训练你的职业技能
    --.accept 1885 >>接任务: |cRXP_LOOT_米奈特·卡加德|r
    .target Marion Call
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r
    .train 1766 >>训练你的职业技能
    --.accept 1885 >>接任务: |cRXP_LOOT_米奈特·卡加德|r
    .target Marion Call
    .xp <12,1
step << Mage
    #xprate <2.1
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r inside the inn
    .accept 1881 >>接任务: |cRXP_WARN_安娜斯塔西娅|r
    .target Cain Firesong
step
    #xprate <2.1
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Priest/Shaman
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r <<Warrior/Rogue
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[冰牛奶]|cRXP_Buy_和|r|T134532:0|t[红色斑点蘑菇]|cRX|r << Warlock
    .vendor >>供应商垃圾箱
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1818 >>交任务: |cRXP_FRIENDLY_迪林格尔|r
    .accept 1819 >>接任务: |cRXP_LOOT_切割者奥拉格|r
    .target Deathguard Dillinger
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_点击地面上的头骨。这将调用|r|cRXP_ENEMY_Ulag|r|cRXP_WARN_杀了他|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1819 >>交任务: |cRXP_FRIENDLY_切割者奥拉格|r
    .accept 1820 >>接任务: |cRXP_WARN_库勒曼|r
    .target Deathguard Dillinger
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step << Warlock
    #xprate >2.09
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norman|r
    .home >>将您的炉石设置为幽暗城
    .target Innkeeper Norman
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1478 >>交任务: |cRXP_FRIENDLY_哈加尔的召唤|r
    .accept 1473 >>接任务: |cRXP_WARN_虚空中的生物|r
step << Warlock
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,55.14,62.01,0
    .waypoint Tirisfal Glades,56.90,58.25,60,0
    .waypoint Tirisfal Glades,55.14,62.01,60,0
    .waypoint Tirisfal Glades,52.36,62.93,60,0
    .waypoint Tirisfal Glades,48.94,63.72,60,0
    .waypoint Tirisfal Glades,45.17,62.11,60,0
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们以获得|cRXX_Loot_被砍蝙蝠头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step << Rogue
    #season 2
    #completewith ScarletCrusade1
    >>使用|cRXP_ENEMY_Captain Perrine|r上的|T133644:0|t[拾取口袋]来获得|T133385:0|t[|cRXP-LOOT_Scarlet中尉签名戒指|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>抢劫|cRXP_PICK_Perrine的胸脯|r for |T133733:0|t[Egalin的格里莫瓦]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
#loop
	.line Tirisfal Glades,50.07,68.87,50.23,66.94,51.16,65.73,51.75,66.04,52.93,67.62,52.72,69.33,51.96,69.57,51.03,69.55
	.goto Tirisfal Glades,50.07,68.87,25,0
	.goto Tirisfal Glades,50.23,66.94,25,0
	.goto Tirisfal Glades,51.16,65.73,25,0
	.goto Tirisfal Glades,51.75,66.04,25,0
	.goto Tirisfal Glades,52.93,67.62,25,0
	.goto Tirisfal Glades,52.72,69.33,25,0
	.goto Tirisfal Glades,51.96,69.57,25,0
	.goto Tirisfal Glades,51.03,69.55,25,0
    >>杀死|cRXP_ENEMY_Captain Perrine|r，|cRXD_ENEMY_Scarlet狂热分子|r和|cRXP_ENEMY_ Scarlet传教士|r。掠夺他们的|cRXP_Loot_Scarlet徽章戒指|r
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
    .mob Captain Perrine
    .mob Scarlet Zealot
    .mob Scarlet Missionary
step << Rogue
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>使用|cRXP_ENEMY_Captain Perrine|r上的|T133644:0|t[拾取口袋]来获得|T133385:0|t[|cRXP-LOOT_Scarlet中尉签名戒指|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>掠夺|cRXP_PICK_Perrine的胸部|r在地上|T133733:0|t[Egalin的格里莫瓦]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #xprate <1.5
    #completewith UCHome
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << !Mage
    #xprate >1.49
    #completewith LogoutSkip1
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
    .turnin 5658 >>交任务: |cRXP_FRIENDLY_虚弱之触|r
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
step << Rogue
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在战区与|r|cRXP_FRIENDLY_Archibald|r交谈
    .train 201 >>训练1h剑
    .target Archibald
step << Warrior/Rogue
    .goto Undercity,56.06,37.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brom|r
    .train 2575 >>列车|T136248:0|t[采矿]。这将允许您从节点中找到|T135232:0|t|cRXP_LOOT_[粗糙的石头]|r，以便制作|T135248:0|t[磨石]（+2武器伤害30分钟）
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    .target Brom Killian
step << Warrior/Rogue
    .goto Undercity,56.72,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_购买|r|T134708:0|t[挖掘拾取]|cRXP_Buy_from|r|cRXP-FRIENDLY_Sarah|r
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto Undercity,60.17,29.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴兹尔·弗莱伊|r
    .train 2018 >>列车|T136241:0|t[铁匠铺]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step << Warrior
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorac Graves|r in the Undercity
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step << Warrior
    #season 2
    #optional
    .use 204688 >>|cRXP_WARN_使用|r|T134455:0|t[符文碎片]|cRXP_WARN_创建|r|T134419:0|t[|cRXP-FRIENDLY_毁灭之恩|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1
step << !Mage
    #xprate >1.49
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    >>|cRXP_BUY_从拍卖行购买|r|T135139:0|t[小魔杖]|cRXP_Buy_|r << Priest
    >>|cRXP_BUY_如果您愿意，可以从拍卖行购买|r|T135139:0|t[小魔杖]|cRXP_Buy_|r << Mage/Warlock
    >>|cRXP_WARN_如果你这样做，并且正在收集|r|T132889:0|t[亚麻布]|cRXP_WARN_earlier，你可以在拍卖行出售你的|r|T132889:0| t[亚麻布]|cRXP_WARN_on|r << Priest
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    .collect 11287,1,435,1 << Priest/Mage/Warlock --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << skip
    #xprate >1.49
    #ah
    #optional
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    >>|cRXP_BUY_从拍卖行购买6|r|T134339:0|t[变色虫心]|cRXP_Buy_|r
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    .collect 3164,6,429,1 --Discolored Worg Heart (6)
    .target Auctioneer Rhyker
step << !Warlock
    #xprate <1.5
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norman|r
    .home >>将您的炉石设置为幽暗城
    .target Innkeeper Norman
step
    #optional
    #label UCHome
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1473 >>交任务: |cRXP_FRIENDLY_虚空中的生物|r
    .accept 1471 >>接任务: |cRXP_LOOT_誓缚|r
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_在召唤圈使用|r|T134416:0|t[召唤符文]|cRXP_WARN_|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>杀死|cRXP_ENEMY_召唤的虚空行者|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1471 >>交任务: |cRXP_FRIENDLY_誓缚|r
    .target Carendin Halgar
step << Warrior
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135350:0|t[Clymore]|cRXP_Buy_|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2676
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135350:0|t[Clymore]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +装备|T135350:0|t[Clymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #season 0
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 0
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 2
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    .vendor >>|cRXP_BUY_从他那里购买|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 2
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查尔斯·希顿|r
    .vendor >>|cRXP_BUY_从他那里购买|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +装备|T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #season 2
    #optional
    #completewith LogoutSkip1
    +装备|T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳撒尼尔·斯蒂恩维克|r
    >>|cRXP_BUY_从他那里购买|r|T135425:0|t[Keen飞刀]|cRXP_Buy_|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳撒尼尔·斯蒂恩维克|r
    >>|cRXP_BUY_从他那里购买|r|T135425:0|t[Keen飞刀]|cRXP_Buy_|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_11级时记得装备|r|T135425:0|t[Keen飞刀]|cRXP_WARN_|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equip the |r|T135425:0|t[Keen飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << skip
    --Rogue class q
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1885 >>交任务: |cRXP_FRIENDLY_米奈特·卡加德|r
    .accept 1886 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
step << skip
    #optional
    .abandon 1883 >>放弃与Un'stuwa交谈，否则你将无法接受即将到来的任务
    .isOnQuest 1883
step << skip
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .turnin 1881 >>交任务: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .accept 1882 >>接任务: |cRXP_WARN_巴尼尔农场|r
    .target Anastasia Hartwell
step
    #xprate <1.5
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
    .turnin 405 >>交任务: |cRXP_FRIENDLY_流浪的巫妖|r
    .accept 357 >>接任务: |cRXP_WARN_巫妖的身份|r
    .target Bethor Iceshard
step << Warlock
    #xprate >1.49
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
    .turnin 405 >>交任务: |cRXP_FRIENDLY_流浪的巫妖|r
    .target Bethor Iceshard
step << Warlock
    #xprate <2.1
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_执行注销跳过，将角色定位在最低楼梯的最高部分，直到看起来像是漂浮的，然后注销并返回|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>|cRXP_WARN_单击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
step << !Mage !Warlock
    #xprate <2.1
    .goto Undercity,61.10,54.11 << Priest
    .goto Undercity,78.03,50.36 << Warrior
    .goto Undercity,82.75,65.23 << Rogue
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到桶堆的顶部，然后注销并返回，执行注销跳过|r << Priest/Warrior
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_跳到运肉车的升级机顶部，然后注销并返回，执行注销跳过|r << Rogue
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Undercity,1
step
    #optional
    #label LogoutSkip1
step
    #xprate <2.1
    #completewith AtWarS
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step << skip
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_如果您看到|r|cRXP_FRIENDLY_Astor|r|cRXP_WARN_，请与他交谈并杀死他。抢他的信。他在Brill和the Sepulcher之间的路上巡逻|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Mage/Warlock
    #xprate >1.49
    #completewith AtWarS
    #optional
    .abandon 357 >>放弃巫妖的身份
step << Mage
    #xprate <2.1
    #label AtWarS
    #softcore
    #completewith AtWarS
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    #completewith AgamandStart
    #xprate >2.09
    .hs >>从炉子到布里尔
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 374 >>交任务: |cRXP_FRIENDLY_死亡证明|r
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate <2.1
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 370 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 371 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .target Executor Zygand
step
    #xprate >2.09
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 370 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .target Executor Zygand
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>|cRXP_WARN_使用|r|T133385:0|t[|cRXP_OOT_Scarlet中尉签名戒指|r]|cRXD_WARN_创建|r|T134328:0|t[|cRXP-OOT_Forged Scarlet Memorial|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加米尔·诺瑞|r, Rune of Mutilation
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization|r]|cRXP-WARN_to train|r|T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mrs交谈。Winters|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_her购买|r|T133634:0|t[棕色小袋子]|cRXP_Buy_|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r
    .target Coleman Farthing

    --150% route Agamand Mills here

step
    #xprate >2.09
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >>向北/向西行驶至Agamand Mills
    .isOnQuest 362
step
    #xprate >2.09
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_OOT_Thurman's Letter|r]|cRXP-WARN_may drop from these mobs T134939,0|t[| cRXP_LOOT_Therman’s Letter |r]| cRXP-WAR_may drop。如果任务完成，请接受它|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
step
    #xprate >2.09
    #completewith ThurmanGregor
    #label MillsOverun
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXD_ENEMY_Bonecasters|r。掠夺他们的|cRXP_Loot_Ribs|r和| cRXP_Loot_Sulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate >2.09
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>杀死|cRXP_ENEMY_Devlin|r。掠夺他的|cRXX_Loot_Eremains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    #xprate >2.09
    .goto Tirisfal Glades,49.34,36.02
    >>杀死|cRXP_ENEMY_Nissa|r。为她抢劫她|cRXX_Loot_LUENTS|r。她可以在大楼里
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #xprate >2.09
    #label ThurmanGregor
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15
    >>杀死|cRXP_ENEMY_Thurman|r和|cRXX_ENEMY_Gregor|r。掠夺他们的|cRXP_Loot_REQUAINS|r。他们可以四处巡逻
    .complete 354,3 --Thurman's Remains (1)
    .complete 354,1 --Gregor's Remains (1)
    .unitscan Thurman Agamand
    .unitscan Gregor Agamand
step
    #xprate >2.09
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXD_ENEMY_Bonecasters|r。掠夺他们的|cRXP_Loot_Ribs|r和| cRXP_Loot_Sulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step << Mage/Priest
    #xprate >2.09
    #season 2
    >>杀死|cRXP_ENEMY_Gillgar|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]掠夺他 << Mage
    >>杀死|cRXP_ENEMY_Gillgar |r。为|T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r]掠夺他 << Priest
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #xprate >2.09
    #season 2
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent Vendor|r提供的|T135933:0|t[理解符]才能使用该物品
    .train 401765 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]|cRXP-WARN_to learn|r|T236227:0|t[霜的手指]
    .use 203753
step
    #xprate >2.09
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
step
    #xprate >2.09
    #softcore
    #completewith FoodandWater2
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    #xprate >2.09
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 426 >>交任务: |cRXP_FRIENDLY_磨坊告急|r
    .target Deathguard Dillinger
step
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 361 >>交任务: |cRXP_FRIENDLY_未寄出的信件|r
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .goto Tirisfal Glades,61.72,52.29
    .target Yvette Farthing
    .target Coleman Farthing
    .isOnQuest 361
step
    #xprate >2.09
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .target Coleman Farthing
    .isQuestTurnedIn 1819 << Warrior
step << Warrior
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .target Coleman Farthing
step
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate >2.09
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.trainer >>训练你的职业技能
    .target Dark Cleric Beryl
step << Warrior
    #xprate >2.09
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 2687 >>训练你的职业技能
    .target Austil de Mon
    .xp >12,1
step << Warrior
    #xprate >2.09
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384 >>列车|T132223:0|t[超功率]
    .target Austil de Mon
    .xp <12,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 707 >>训练你的职业技能
    .target Rupert Boch
    .xp <10,1
    .xp >12,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >>训练你的职业技能
    .target Rupert Boch
    .xp <12,1
step << Rogue
    #xprate >2.09
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r
    .train 674 >>训练你的职业技能
    --.accept 1885 >>接任务: |cRXP_LOOT_米奈特·卡加德|r
    .target Marion Call
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r
    .train 1766 >>训练你的职业技能
    --.accept 1885 >>接任务: |cRXP_LOOT_米奈特·卡加德|r
    .target Marion Call
    .xp <12,1
step
    #xprate >2.09
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Priest/Shaman
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r <<Warrior/Rogue
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[冰牛奶]|cRXP_Buy_和|r|T134532:0|t[红色斑点蘑菇]|cRX|r << Warlock
    .vendor >>供应商垃圾箱
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    #xprate <2.1
    #completewith next
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 359 >>交任务: |cRXP_FRIENDLY_亡灵卫兵的职责|r
    .accept 360 >>接任务: |cRXP_WARN_向塞弗伦回报|r
    .accept 356 >>接任务: |cRXP_WARN_巡查后方|r
    .target Deathguard Linnea
step
    #xprate <2.1
    #completewith ArriveBalnir
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label ArriveBalnir
    .goto Tirisfal Glades,76.51,61.77
    .subzone 165 >>前往Balnir Farmstead
    .isOnQuest 356
step << Mage
    #xprate <2.1
    #season 2
    #completewith HorrorsandSpirits
    >>铸造|T136071:0|t[变形]在|cRXP_ENEMY_Odd Melons|r上
    >>将|T134332:0|t|cRXP_Loot_[药剂师笔记]|r洗劫一空
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << skip
    #completewith next
    >>杀死|cRXP_ENEMY_流血恐怖|r和|cRXX_ENEMY_流浪灵魂|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
step << skip
    .goto Tirisfal Glades,77.48,62.00
    >>掠夺地面上的任何植物以获得|cRXP_PICK_Balnir Snapdragon |r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #xprate <2.1
    #optional
    #label HorrorsandSpirits
#loop
	.line Tirisfal Glades,74.31,60.98,74.45,59.64,75.08,58.56,76.45,58.67,77.41,58.66,78.55,60.43,77.45,61.46,76.79,62.60,74.99,61.98,74.31,60.98
	.goto Tirisfal Glades,74.31,60.98,25,0
	.goto Tirisfal Glades,74.45,59.64,25,0
	.goto Tirisfal Glades,75.08,58.56,25,0
	.goto Tirisfal Glades,76.45,58.67,25,0
	.goto Tirisfal Glades,77.41,58.66,25,0
	.goto Tirisfal Glades,78.55,60.43,25,0
	.goto Tirisfal Glades,77.45,61.46,25,0
	.goto Tirisfal Glades,76.79,62.60,25,0
	.goto Tirisfal Glades,74.99,61.98,25,0
	.goto Tirisfal Glades,74.31,60.98,25,0
    >>杀死|cRXP_ENEMY_流血恐怖|r和|cRXX_ENEMY_流浪灵魂|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
step << Mage
    #xprate <2.1
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>铸造|T136071:0|t[变形]在|cRXP_ENEMY_Odd Melons|r上
    >>将|T134332:0|t|cRXP_Loot_[药剂师笔记]|r洗劫一空
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #xprate <2.1
    #season 2
    >>|cRXP_WARN_使用|r|T134332:0|t|cRXP_LOOT[药剂师笔记]|r|cRXP-WARN_to创建|r|T134332:0 |t|cRXP_LOUT[拼写笔记：启蒙]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #xprate <2.1
    #season 2
    .train 415942 >>|cRXP_WARN_使用|r|T134332:0|t|cRXP_LOOT_[咒语注释：启蒙]|r|cRXP-WARN_学习|r|T133815:0|t[铭刻胸甲-启蒙]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step
    #xprate <2.1
    #sticky
    #label Friars
    #loop
    #optional
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .waypoint Tirisfal Glades,80.95,57.21,40,0
    .waypoint Tirisfal Glades,81.62,54.84,40,0
    .waypoint Tirisfal Glades,81.56,53.07,40,0
    .waypoint Tirisfal Glades,79.31,55.25,40,0
    .waypoint Tirisfal Glades,77.14,54.92,40,0
    .waypoint Tirisfal Glades,76.15,55.30,40,0
    .waypoint Tirisfal Glades,76.12,57.22,40,0
    .waypoint Tirisfal Glades,77.16,56.75,40,0
    .waypoint Tirisfal Glades,79.82,56.40,40,0
    >>杀死|cRXP_ENEMY_Scarlet修士|r和|cRXD_ENEMY_ Scarlet狂热者|r。掠夺他们的|cRXP_Loot_Scarlet徽章戒指|r
    .complete 371,2 --Scarlet Friar (5)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step
    #xprate <2.1
    #loop
    #sticky
    #requires Friars
    #label Friars2
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .waypoint Tirisfal Glades,80.95,57.21,40,0
    .waypoint Tirisfal Glades,81.62,54.84,40,0
    .waypoint Tirisfal Glades,81.56,53.07,40,0
    .waypoint Tirisfal Glades,79.31,55.25,40,0
    .waypoint Tirisfal Glades,77.14,54.92,40,0
    .waypoint Tirisfal Glades,76.15,55.30,40,0
    .waypoint Tirisfal Glades,76.12,57.22,40,0
    .waypoint Tirisfal Glades,77.16,56.75,40,0
    .waypoint Tirisfal Glades,79.82,56.40,40,0
    >>杀死|cRXP_ENEMY_Scarlet修士|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    #xprate <2.1
    .goto Tirisfal Glades,78.82,56.14
    >>杀死塔里的|cRXP_ENEMY_瓦雄上尉|r
    .complete 371,1 --Captain Vachon (1)
    .mob Captain Vachon
step
    #xprate <2.1
    #requires Friars2
    #loop
    #label FinishRings
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>杀死|cRXP_ENEMY_Scarlet修士|r和|cRXD_ENEMY_ Scarlet狂热者|r。掠夺他们的|cRXP_Loot_Scarlet徽章戒指|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << skip
    #xprate <2.1
    #optional
    #loop
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_收集3叠|r|T132889:0|t[亚麻布]|cRXP_WARN_form作为你的小魔杖。这是在银松森林之前获得足够食物的最后机会|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #xprate <2.1
    #completewith ViciousVenom
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label ViciousVenom
    #loop
    #requires Friars2
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>杀死|cRXP_ENEMY_邪恶的夜网蜘蛛|r。掠夺它们的|cRXX_Loot_Venom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step
    #xprate <2.1
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .waypoint Tirisfal Glades,83.59,43.84,70,0
    .waypoint Tirisfal Glades,80.77,46.40,70,0
    .waypoint Tirisfal Glades,75.86,46.02,70,0
    .waypoint Tirisfal Glades,73.10,40.71,70,0
    .waypoint Tirisfal Glades,72.33,33.01,70,0
    .waypoint Tirisfal Glades,68.69,34.33,70,0
    >>杀死|cRXP_ENEMY_Duskbats|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << skip
    #xprate >1.49
    .xp 11+2950 >>升级到2950+/8800xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575 -> 3860
--XX +625（374选择）+700（375选择）=3900->5850
--XX +625（374 OPT）=3200->4800
--XX +700（375 OPT）=3275->4910
step << skip
    #xprate >1.49
    #optional
    .xp 11+3890 >>升级到3890+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    .xp 11+4000 >>升级到4000+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    .xp 11+4940 >>升级到4940+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate <2.1
    #completewith ANewPlagueFinal
    .hs >>从炉子到布里尔
    .subzoneskip 159
    .cooldown item,6948,>0,1
step
    #xprate <2.1
    #completewith ANewPlagueFinal
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <1.5
    .goto Tirisfal Glades,67.97,42.09
    >>掠夺|cRXP_PICK_Gunther的书|r为|cRXP_Loot_巫妖的咒语书|r在Brightwater湖的岛上
    .complete 357,1 --The Lich's Spellbook (1)
step
    #xprate <1.5
    #hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >>Travel back to Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith ANewPlagueFinal
    .goto Tirisfal Glades,66.60,44.95
    .deathskip >>死在较小的岛屿上，在|cRXP_FRIENDLY_Spirit治疗中心重生|r
step
    #xprate <2.1
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 369 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 492 >>接任务: |cRXP_LOOT_新的瘟疫|r
    --.accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .target Apothecary Johaan
step << skip
    #phase 3-6
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 369 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 492 >>接任务: |cRXP_LOOT_新的瘟疫|r
    --.accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .target Apothecary Johaan
step
    #xprate <1.5
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 371 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 372 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .target Executor Zygand
step
    #optional
    #xprate <2.1
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 371 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .target Executor Zygand
step
    #xprate <2.1
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 360 >>交任务: |cRXP_FRIENDLY_向塞弗伦回报|r
    .turnin 355 >>交任务: |cRXP_FRIENDLY_与塞弗伦交谈|r
    .target Magistrate Sevren
step
    #xprate >1.49
    #optional
    #completewith ANewPlagueFinal
    .abandon 372 >>放弃与猩红十字军的战争
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 374 >>交任务: |cRXP_FRIENDLY_死亡证明|r
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate <2.1
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗线]|cRXP_Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <2.1
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mrs交谈。Winters|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_her购买|r|T133634:0|t[棕色小袋子]|cRXP_Buy_|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #xprate <2.1
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
step
    #xprate <2.1
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
	.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
    .target Innkeeper Renee
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>对话: |cRXP_FRIENDLY_本尼|r
    .target Penny Hawkins
    .train 425447,1
step
    #xprate <1.5
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的血色狂热者|r, |cRXP_FRIENDLY_被俘虏的巡山人|r
    .turnin 407 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .goto Tirisfal Glades,61.97,51.29
    .target +Captured Scarlet Zealot
    .turnin 492 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .goto Tirisfal Glades,61.94,51.40
    .target +Captured Mountaineer
step
    #xprate <2.1
    .goto Tirisfal Glades,61.94,51.40
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的巡山人|r
    .turnin 492 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .target +Captured Mountaineer
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>对话: |cRXP_FRIENDLY_琼娜·布鲁哈特|r
    .target Blueheart
    .train 425447,1
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>杀死|cRXP_ENEMY_Blueheart|r，然后与楼上的|cRXP-FRIENDLY_Penny|r通话
    .gossipoption 110751 >>收到她的|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzed Assault |r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzed Assault |r]
    .use 204716
    .itemcount 204716,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588 >>列车|T135926:0|t[内火]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    #optional
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 6074 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145 >>火车|T135812:0|t[火球等级3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    #optional
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 1449 >>训练你的职业技能
    .target Cain Firesong
    .xp <12,1
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384 >>列车|T132223:0|t[超功率]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766 >>列车|T132219:0|t[踢]
    .target Marion Call
    .xp <12,1
    .xp <14,1
step << Rogue
    #optional
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1758 >>训练你的职业技能
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >>列车|T136168:0|t[健康漏斗]
    .target Rupert Boch
    .xp <12,1
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 6222 >>训练你的职业技能
    .target Rupert Boch
    .xp <14,1
step << skip
    #completewith Entersilverpine
    >>|cRXP_WARN_如果您看到|r|cRXP_FRIENDLY_Astor|r|cRXP_WARN_，请与他交谈并杀死他。抢他的信。他在Brill和the Sepulcher之间的路上巡逻|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #xprate <2.1
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 356 >>交任务: |cRXP_FRIENDLY_巡查后方|r
    .target Deathguard Linnea
step << Undead
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找一个团队去Ragefire Chasm
    .dungeon RFC
step
    #optional
    #completewith ZeptoDurotar
    .abandon 374 >>Abandon Proof of Demise
step
    #optional
    #completewith ZeptoDurotar
    .abandon 375 >>放弃死亡的寒意
step << Undead
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    >>等待时制作磨石/绷带 << Warrior/Rogue
    >>等待时招引食物/水 << Mage
    .zoneskip Durotar
step << Undead
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .dungeon RFC
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >>获取Orgrimmar飞行路线
    .target Doras
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .accept 5726 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Durotar,53.08,9.19,0
    >>杀死头骨岩中的|cRXP_ENEMY_燃烧之刃|r暴民，直到|cRXD_LOOT_中尉徽章|r掉落
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5726 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5727 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .accept 5761 >>接任务: |cRXP_WARN_饥饿者塔拉加曼|r
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5727 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5728 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .dungeon RFC
step << Undead
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>输入RFC实例门户。区域在
    .dungeon RFC
step << Undead
    >>|cRXP_WARN_如果可能，让队员分享以下任务|r
    .accept 5722 >>接任务: |cRXP_WARN_寻找背包|r
    .accept 5723 >>接任务: |cRXP_WARN_试探敌人|r
    .disablecheckbox
    .dungeon RFC
step << Undead
    #completewith next
    >>杀死|cRXP_ENEMY_Ragefire Troggs|r和|cRXP_ENEMY_Ragefire萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .complete 5723,2 --Ragefire Shaman (8)
    .mob Ragefire Trogg
    .mob Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >>交任务: |cRXP_FRIENDLY_寻找背包|r
    .accept 5724 >>接任务: |cRXP_WARN_归还背包|r
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 5724 >>接任务: |cRXP_WARN_归还背包|r
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead
    #label TroggsShamans
    >>杀死|cRXP_ENEMY_Ragefire Troggs|r和|cRXP_ENEMY_Ragefire萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .complete 5723,2 --Ragefire Shaman (8)
    .mob Ragefire Trogg
    .mob Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>杀死|cRXP_ENEMY_灼热之刃邪教者|r和|cRXX_ENEMY_灼热之刃术士|r。掠夺他们以获得|cRXD_Loot_阴影咒语|r和| cRXP_Loot_虚空咒语|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    >>杀死饥饿者|cRXP_ENEMY_Taragaman |r。掠夺他的|cRXX_Loot_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead
    #label BazzalanandJergosh
    >>杀死|cRXP_ENEMY_Bazzalan|r和|cRXP_ENEMY_Jergoh调用程序|r
    .complete 5728,1 --Bazzalan (1)
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob Bazzalan
    .mob Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead
    >>杀死|cRXP_ENEMY_灼热之刃邪教者|r和|cRXX_ENEMY_灼热之刃术士|r。掠夺他们以获得|cRXD_Loot_阴影咒语|r和| cRXP_Loot_虚空咒语|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 5761 >>交任务: |cRXP_FRIENDLY_饥饿者塔拉加曼|r
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5728 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5729 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .accept 5729 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 5729 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5730 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5730 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    #completewith Conscript
    .subzone 362 >>前往剃须山
step << !Undead
    .hs >>炉底到剃须山
    .use 6948
    .zoneskip Durotar
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 1758 >>训练你的职业技能
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 6761 >>训练你的职业技能
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
	.train 8122 >>训练你的职业技能
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
	.train 8102 >>训练你的职业技能
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 285 >>训练你的职业技能
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 6222 >>训练你的职业技能
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1455 >>训练你的职业技能
    .target Dhugru Gorelust
    .xp <16,1
step
    #label Conscript
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_WARN_部落的新兵|r
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >>前往远观哨所
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_WARN_十字路口征兵|r
    .target Kargal Battlescar

]])
