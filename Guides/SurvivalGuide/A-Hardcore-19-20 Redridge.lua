
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 19-20 赤脊山
#version 1
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 1-20
#next 20-21 黑海岸/灰谷

step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >>训练你的职业技能
    .target Einris Brightspear
step << Hunter
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >>训练你的宠物法术
    .target Karrina Mekenda
step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Billibub Cogspeer|r没有，请跳过此步骤|r
--    >>稍后的任务需要2个青铜管 << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
	.isOnQuest 1338
    .goto StormwindClassic,58.08,16.52
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
    .isOnQuest 1338
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沉默的舒尼|r, |cRXP_FRIENDLY_维尔德·蓟草|r 
    .accept 2040 >>接任务: |cRXP_WARN_地底突袭|r
    .goto StormwindClassic,55.510,12.504
    .accept 167 >>接任务: |cRXP_WARN_我的兄弟……|r
    .accept 168 >>接任务: |cRXP_WARN_收集记忆|r
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .target Shoni the Shilent
step << Hunter
    #ssf
    #completewith ExitSW
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗德瑞克·斯图瓦|r
    >>|cRXP_BUY_BUY a|r|T135489:0|t[重循环弓]
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .target Frederick Stover
    .money <0.6722
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #ah
    #completewith ExitSW
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗德瑞克·斯图瓦|r
    >>|cRXP_BUY_从拍卖行购买|r|T135489:0|t[重循环弓]|cRXP_Buy_或更好的东西|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .target Frederick Stover
    .money <0.6722
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20  
step << Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗德瑞克·斯图瓦|r
    >>|cRXP_BUY_BUY|r|T132382:0|t[尖箭头]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Frederick Stover
step << Hunter
    +|cRXP_WARN_获得|r|T135489:0|t[重循环弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔莎林|r
    .trainer >>训练你的职业技能
    .target Elsharin
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .trainer >>训练你的职业技能
    .target Arthur the Faithful
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
    .trainer >>训练你的职业技能
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿德温·凯伦|r
    >>|cRXP_BUY_如果是升级版，请购买|r|T135139:0|t[Burning Wand]|cRXP_Buy_|r
    >>|cRXP_WARN_买一根无阴影伤害的魔杖很重要。你以后必须对付抵抗阴影伤害的暴民|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5210,1
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，然后下楼
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target Wu Shen
    .target Ilsa Corbin
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
    .trainer >>训练你的职业技能
    .target Sheldras Moontree
step << !Hunter !Priest
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吴平|r
    .train 201 >>训练1h剑 << Mage/Rogue/Warlock
    .train 1180 >>Train Daggers << Mage/Druid
    .train 202 >>训练2h剑 << Warrior/Paladin
    .target Woo Ping
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_购买|r|T135324:0|t[长剑]|cRXP_BUY_和|r|T135342:0|t[克里斯]
    >>|cRXP_WARN_在你的右手装备|r|T135324:0|t[长剑]|cRXP_WARN_in，在右手装备|r |T135342:0|t[克里斯]|cRX P_WARN_n|r
    .collect 923,1 --Longsword
    .collect 2209,1 --Kris
    .target Marda Weller
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>购买以下物品，很快就能在雷德里奇山脉快速上车
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    >>|T134172:0|t[伟大的Goretusk鼻涕虫]
    >>|T134028:0|t[硬汉肉]
    >>|T134321:0|t[脆蜘蛛肉]
    >>|T134572:0|t[雷特班矿石]
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .collect 2798,5,347,1 -- Rethban Ore (5)
    .target Auctioneer Jaxon
step << !NightElf
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge >>飞到雷德里奇
    .target Dungar Longdrink
step << NightElf
    #label ExitSW
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .zoneskip Redridge Mountains
step << NightElf
    #completewith GParker
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
step << NightElf
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
    .accept 244 >>接任务: |cRXP_WARN_豺狼人的入侵|r
    .target Guard Parker
step << NightElf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .target Deputy Feldon
    .accept 246 >>接任务: |cRXP_WARN_审时度势|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >>接任务: |cRXP_LOOT_丢失的工具|r
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >>接任务: |cRXP_WARN_马掌|r
step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r
	.target Magistrate Solomon
    .accept 120 >>接任务: |cRXP_WARN_送往暴风城的信|r
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达希·帕克|r
    >>|cRXP_FRIENDLY_Darcy |r|cRXP_WARN_在酒店内走来走去|r
	.target Darcy
    .accept 129 >>接任务: |cRXP_LOOT_免费的午餐|r
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑衣威利|r, 他在楼上
    .turnin 65 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 132 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
	.target Wiley the Black
step
    #era/som
    .goto Redridge Mountains,22.67,43.83
    >>退出客栈
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师布雷纳|r
	.target Chef Breanna
    .accept 92 >>接任务: |cRXP_WARN_赤脊山炖肉|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖恩|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >>接任务: |cRXP_WARN_希拉里的项链|r
step
    >>|cRXP_WARN_Jump into the Lake|r
    >>打开|cRXP_PICK_Glating Mud|r。把它偷走|cRXP _Loot_Hilary的项链|r
    >>|cRXP_WARN_它在湖中有多个产卵地点|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼达|r
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >>交任务: |cRXP_FRIENDLY_希拉里的项链|r
    .target Hilary
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
	.target Ariena Stormfeather
    .fly Westfall >>飞往威斯特福尔
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 132 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 135 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
step
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞往暴风城
    .target Thor
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马库斯·乔纳森将军|r
    .turnin 120 >>交任务: |cRXP_FRIENDLY_送往暴风城的信|r
    .accept 121 >>接任务: |cRXP_WARN_送往暴风城的信|r
    .target General Marcus Jonathan
step
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r 
step
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .turnin 135 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 141 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Master Mathias Shaw
step
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Westfall >>飞往威斯特福尔
    .target Dungar Longdrink
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 141 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 142 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
step
    #completewith next
    .goto Westfall,44.50,69.62,55 >>Travel to Moonbrook
step
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>杀死|cRXP_ENEMY_Defias信使|r。抢走他的|cRXD_Loot_神秘消息|r
    >>|cRXP_WARN_|cRXP_ENEMY_Defias信使|r在Moonbrook中诞生。他沿着Moonbrook以北的道路走到黄金海岸采石场和Jangolode矿场。如果你在路上看不到它，就等它在Moonbrook产卵吧|r
    >>|cRXP_WARN_他有一个4-5分钟的重生计时器|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >>前往Westfall灯塔
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞森船长|r
    .accept 104 >>接任务: |cRXP_WARN_海岸上的威胁|r
    .accept 103 >>接任务: |cRXP_WARN_长明的灯塔|r
    .target Captain Grayson
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞森船长|r  
    .turnin 103 >>交任务: |cRXP_FRIENDLY_长明的灯塔|r
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>杀死|cRXP_ENEMY_Old Murk Eye|r。掠夺他的|cRXP_Loot_Scale|r
    >>|cRXP_ENEMY_老鼠眼|r|cRXP_WARN_在龙穴上来回奔跑。如果你在Longshore没有看到它，请等待它在最南部的|cRXP_ENEMY_Murloc|r营地产卵|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞森船长|r  
    .turnin 104 >>交任务: |cRXP_FRIENDLY_海岸上的威胁|r
    .target Captain Grayson
step
    .abandon 103 >>放弃火焰守护者
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 142 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
step
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪菲亚叛徒|r
    >>|cRXP_WARN_如果叛徒不在，您可能需要等待|cRXP_FRIENDLY_The Defias Traitor|r产卵|r
    .accept 155 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target The Defias Traitor
step
    .goto Westfall,42.56,71.71
    >>护送|cRXP_FRIENDLY_the Defias Traditor|r到Deaadmins
    >>|cRXP_WARN_始终站在|cRXP_FRIENDLY_The Defias Traitor|r旁边！准备好战斗|cRXP_ENEMY_到达Moonbrook后的Defias|r|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto Westfall,25.90,47.76
    >>|cRXP_WARN_使用|T134269:0|t[|cRXP_LOOT_Sander船长的藏宝图|r]开始任务|r
    .use 1357
    .accept 136 >>接任务: |cRXP_WARN_杉德尔船长的宝藏|r
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>单击|cRXP_PICK_Captain's Footlocker|r
    .turnin 136 >>交任务: |cRXP_FRIENDLY_杉德尔船长的宝藏|r
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>单击|cRXP_PICK_Captain's Footlocker|r
    .accept 138 >>接任务: |cRXP_WARN_杉德尔船长的宝藏|r
    .isQuestTurnedIn 136
step
    .goto Westfall,40.51,47.80
    >>单击|cRXP_PICK_Broken Barrel|r
    .turnin 138 >>交任务: |cRXP_FRIENDLY_杉德尔船长的宝藏|r
    .accept 139 >>接任务: |cRXP_WARN_杉德尔船长的宝藏|r
    .isQuestTurnedIn 136 
step
    .goto Westfall,40.63,17.03
    >>单击|cRXP_PICK_Old Jug|r
    .turnin 139 >>交任务: |cRXP_FRIENDLY_杉德尔船长的宝藏|r
    .accept 140 >>接任务: |cRXP_WARN_杉德尔船长的宝藏|r
    .isQuestTurnedIn 138 
step
    #completewith next
    .goto Westfall,25.97,16.90,30 >>Swim out to the Island
    .isOnQuest 140
step
    .goto Westfall,25.97,16.90
    >>单击|cRXP_PICK_Locked Chest|r
    .turnin 140 >>交任务: |cRXP_FRIENDLY_杉德尔船长的宝藏|r
    .isOnQuest 140
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 155 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Gryan Stoutmantle|r and |cRXP_FRIENDLY_Scout Riell, 他在塔上
    .accept 166 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .goto Westfall,56.33,47.52
    .accept 214 >>接任务: |cRXP_WARN_红色丝质面罩|r
    .goto Westfall,56.67,47.35
    .target Gryan Stoutmantle
    .target Scout Riell
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >>现在你应该找一个Deadmins的小组
    >>在组建Deadmines小组时升级gnolls
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >>Travel to The Deadmines
step
.dungeon DM
    #completewith EnterDM
    >>杀死|cRXP_ENEMY_Defias|r。掠夺他们的|cRXX_Loot_Bandanas|r
    >>|cRXP_WARN_你可以在进入地牢后完成|r
    .complete 214,1 -- Red Silk Bandana (10)
step
.dungeon DM
    #completewith next 
    >>杀死|cRXP_ENEMY_Skeletal Miner|r、|cRXD_ENEMY_Undad Dynamiter|r和|cRXP_ENEMY_ Undad挖掘机|r。掠夺他们的|cRXP_Loot_Cards|r
    >>|cRXP_WARN_这是在地牢外完成的|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>杀死|cRXP_ENEMY_Foreman Thistlenettle|r。掠夺他的|cRXX_OOT_Badge|r
    >>|cRXP_WARN_这是在地牢外完成的|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>杀死|cRXP_ENEMY_Skeletal Miner|r、|cRXD_ENEMY_Undad Dynamiter|r和|cRXP_ENEMY_ Undad挖掘机|r。掠夺他们的|cRXP_Loot_Cards|r
    >>|cRXP_WARN_这是在地牢外完成的|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >>进入Deadmines地牢
step
.dungeon DM
    #completewith DMend
    >>杀死管理员内部的|cRXP_ENEMY_Defias|r。掠夺他们的|cRXP_Loot_Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
step
.dungeon DM
    >>杀死|cRXP_ENEMY_Sneed|r。掠夺他获得|cRXD_Loot_Gnaom Sprecklesocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>杀死|cRXP_ENEMY_Edwin VanCleef|r。掠夺他的|cRXP_Loot_Head|r和|T133471:0|t[|cRXP-Loot_An Unsent Letter|r]
    >>|cRXP_WARN_使用|T133471:0|t[|cRXP_OOT_An Unsent Letter |r]开始任务|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >>接任务: |cRXP_WARN_未寄出的信|r
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >>Travel to Sentinel Hill
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Gryan Stoutmantle|r and |cRXP_FRIENDLY_Scout Riell, 他在塔上
    .turnin 166 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .goto Westfall,56.33,47.52
    .turnin 214 >>交任务: |cRXP_FRIENDLY_红色丝质面罩|r
    .goto Westfall,56.67,47.35
    .target Gryan Stoutmantle
    .target Scout Riell
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞到暴风城
    .target Thor
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿古斯·夜语|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >>接任务: |cRXP_WARN_遥远的旅途|r
step
.dungeon DM
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里斯托弗修士|r
    >>如果你还没有达到20级，请跳过这一步
    .accept 343 >>接任务: |cRXP_WARN_关于坚韧的演讲|r
    .target Brother Kristoff
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .turnin 373 >>交任务: |cRXP_FRIENDLY_未寄出的信|r
    .accept 389 >>接任务: |cRXP_WARN_巴吉尔·特雷德|r
    .target Baros Alexston
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔德·蓟草|r, |cRXP_FRIENDLY_沉默的舒尼|r
    .turnin 167 >>交任务: |cRXP_FRIENDLY_我的兄弟……|r
    .turnin 168 >>交任务: |cRXP_FRIENDLY_收集记忆|r
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >>交任务: |cRXP_FRIENDLY_地底突袭|r
    .goto StormwindClassic,55.510,12.504
    .target Wilder Thistlenettle
    .target Shoni the Shilent
step -- adding again 2nd time incase hitting 20 after turning in triple DM quests
.dungeon DM
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里斯托弗修士|r
    >>如果你还没有达到20级，请跳过这一步
    .accept 343 >>接任务: |cRXP_WARN_关于坚韧的演讲|r
    .target Brother Kristoff
    .xp <20,1
step
.dungeon DM
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >>朝着暴风图书馆中的|cRXP_FRIENDLY_Milton Sheaf|r行进
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔顿·西弗|r
    >>如果你还没有达到20级，请跳过这一步
    .turnin 343 >>交任务: |cRXP_FRIENDLY_关于坚韧的演讲|r
    .accept 344 >>接任务: |cRXP_WARN_帕克斯顿修士|r
    .target Milton Sheaf
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_典狱官塞尔沃特|r
    .turnin 389 >>交任务: |cRXP_FRIENDLY_巴吉尔·特雷德|r
--  .accept 391 >>接任务: |cRXP_WARN_监狱暴动|r
    .target Warden Thelwater
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    >>如果您仍在Westfall，请飞往Redridge
    .fly Redridge >>飞到雷德里奇
    .target Thor
    .zoneskip Westfall,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >>前往: |cRXP_PICK_艾尔文森林|r
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠阿古斯|r
	.target Smith Argus
    .turnin 118 >>交任务: |cRXP_FRIENDLY_马掌|r
    .accept 119 >>接任务: |cRXP_WARN_回复弗纳|r
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >>前往北郡修道院
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕克斯顿修士|r
    .turnin 344 >>交任务: |cRXP_FRIENDLY_帕克斯顿修士|r
    .accept 345 >>接任务: |cRXP_WARN_墨水短缺|r
    .target Brother Paxton
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,57.518,51.595,25,0
    .goto Elwynn Forest,58.14,52.50,20,0
    .goto Elwynn Forest,65.20,69.80,50 >>前往亚速拉塔。登上塔楼。沿着箭头走一条穿过山脉的捷径
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞欧克瑞图斯|r
    .accept 94 >>接任务: |cRXP_LOOT_法师的眼线|r
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_当恩·布赖特斯塔|r
    .vendor >>|cRXP_FRIENDLY_Dawn Brightstar |r|cRXP_BUY_也有有限的供应项目，如|r|T134938:0|t|T134937:0|t| T134943:0|t[Scrolls]|cRXP-BUY_和|r|T134850:0|t|T134830:0|t[Potions]|cRX|r << !Warrior !Rogue
    .vendor >>|cRXP_FRIENDLY_Dawn Brightstar |r|cRXP_BUY_也有有限的供应项目，如|r|T134938:0|t|T134937:0|t| T134943:0|t[Scrolls]|cRXP-BUY_和|r|T134830:0|t[Potions]|cRX P_BUY_|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
    .zoneskip Elwynn Forest,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge >>飞到雷德里奇
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >>接任务: |cRXP_WARN_豺狼人的入侵|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >>交任务: |cRXP_FRIENDLY_免费的午餐|r
    .accept 130 >>接任务: |cRXP_WARN_寻访草药师|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .accept 246 >>接任务: |cRXP_WARN_审时度势|r
step
    .isQuestTurnedIn 343
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r
    .goto Redridge Mountains,32.13,48.63
    .turnin 345 >>交任务: |cRXP_FRIENDLY_墨水短缺|r
    .target Foreman Oslow
step
    .isQuestTurnedIn 118
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >>交任务: |cRXP_FRIENDLY_回复弗纳|r
    .accept 124 >>接任务: |cRXP_WARN_豺狼人的乱吠|r
    .accept 122 >>接任务: |cRXP_WARN_雏龙的鳞片|r
step
    #era/som
    #completewith MongrelPoacher
    >>杀死|cRXP_ENEMY_Great Goretusk|r。掠夺它们的|cRXD_Loot_ Great Goretosk|r
    >>杀死|cRXP_ENEMY_Tarantulas|r。掠夺它们的|cRXX_Loot_脆蜘蛛肉|r
    >>杀死|cRXP_ENEMY_Dire秃鹰|r。掠夺它们的|cRXX_Loot_坚韧的秃鹰肉|r
    >>|cRXP_WARN_在你完成Redridge炖牛肉任务之前，不要出售任何这些物品|r
    >>|cRXP_WARN_保存您掠夺的任何|r|T133970:0|t|cRXP_LOOT_[猪肉块]|r|cRXP-WARN_以及您可以使用它们来升级|r|T133971:0|t[烹饪]|cRXP_WARN_to 50，这是黄昏日后所需的|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
    .mob Great Goretusk
    .mob Tarantula
    .mob Dire Condor
step
    .isOnQuest 122
    #completewith Toolbox
    >>杀死|cRXP_ENEMY_Black Dragon Whelps|r。掠夺它们的|cRXX_Loot_Scales|r
    >>你现在不必完成这个任务
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #label MongrelPoacher
    .goto Redridge Mountains,15.91,62.76,0
    .goto Redridge Mountains,43.44,70.61,0
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
	>>杀死|cRXP_ENEMY_Redridge Mongrels|r和|cRXP_ENEMY_Redridge偷猎者|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
	.mob Redridge Poacher
step
    #era/som
    #completewith next
    >>杀死|cRXP_ENEMY_Great Goretusk|r。掠夺它们的|cRXD_Loot_ Great Goretosk|r
    >>杀死|cRXP_ENEMY_Dire秃鹰|r。掠夺它们的|cRXX_Loot_坚韧的秃鹰肉|r
    >>|cRXP_WARN_在你完成Redridge炖牛肉任务之前，不要出售任何这些物品|r
    >>|cRXP_WARN_保存您掠夺的任何|r|T133970:0|t|cRXP_LOOT_[猪肉块]|r|cRXP-WARN_以及您可以使用它们来升级|r|T133971:0|t[烹饪]|cRXP_WARN_to 50，这是黄昏日后所需的|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .mob Great Goretusk
    .mob Dire Condor
step
    #era/som
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>杀死|cRXP_ENEMY_Tarantulas|r。掠夺它们的|cRXX_Loot_脆蜘蛛肉|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #era/som
    >>杀死|cRXP_ENEMY_Great Goretusk|r。掠夺它们的|cRXD_Loot_ Great Goretosk|r
    >>杀死|cRXP_ENEMY_Dire秃鹰|r。掠夺它们的|cRXX_Loot_坚韧的秃鹰肉|r
    >>|cRXP_WARN_在你完成Redridge炖牛肉任务之前，不要出售任何这些物品|r
    >>|cRXP_WARN_保存您掠夺的任何|r|T133970:0|t|cRXP_LOOT_[猪肉块]|r|cRXP-WARN_以及您可以使用它们来升级|r|T133971:0|t[烹饪]|cRXP_WARN_to 50，这是黄昏日后所需的|r
    .collect 1080,5,92,1
    .goto Redridge Mountains,66.4,76.6,60,0
    .goto Redridge Mountains,35.6,69.6,60,0
    .goto Redridge Mountains,45.4,76.6
    .goto Redridge Mountains,35.6,69.6,0
    .collect 2296,5,92,1
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .mob Great Goretusk
    .mob Dire Condor
step
    #label Toolbox
    >>|cRXP_WARN_跳进湖中。注意水中巡逻的精英|cRXP_ENEMY_Lake Thresher|r|r 
    >>打开|cRXP_PICK_沉箱|r。为|cRXP_Loot_Oslow的工具箱|r抓取它
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20-3000 >>升级直到距离20级3000 xp
step
    #completewith next
    .goto Redridge Mountains,30.73,59.99,150 >>Travel to Lakeshire
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >>交任务: |cRXP_FRIENDLY_丢失的工具|r
    .accept 89 >>接任务: |cRXP_WARN_止水湖上的桥|r
step
    #era
    .isQuestComplete 122
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
    >>跳过这一步，如果你还没有完成腹部下量表，稍后再做
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 122 >>交任务: |cRXP_FRIENDLY_雏龙的鳞片|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Soloman|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >>交任务: |cRXP_FRIENDLY_送往暴风城的信|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >>交任务: |cRXP_FRIENDLY_寻访草药师|r
    .accept 131 >>接任务: |cRXP_WARN_水仙诉衷情|r
step
    #era/som
    .isQuestComplete 92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师布雷纳|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达希·帕克|r
    >>|cRXP_FRIENDLY_Darcy |r|cRXP_WARN_在酒店内走来走去|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >>交任务: |cRXP_FRIENDLY_水仙诉衷情|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >>交任务: |cRXP_FRIENDLY_审时度势|r
step
    .xp 20 >>在飞往暴风城之前，确保您达到20级
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
	.target Ariena Stormfeather
    .fly Stormwind >>飞往暴风城
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，然后下楼
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
    .vendor >>|cRXP_BUY_BUY|r|T133738:0|t[折磨的痛苦（等级2）]
    .target Spackle Thornberry
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1716 >>接任务: |cRXP_WARN_噬魂者|r
    .target Gakin the Darkbinder
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔莎林|r
    .trainer >>训练你的职业技能
    .target Elsharin
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞麦尼·普尔度|r
    .train 48464 >>列车|T135763:0|t[电报：暴风号]
	.xp <20,1
    .target Larimaine Purdue
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
    .goto StormwindClassic,20.89,55.50
    .trainer >>训练你的职业技能
    .train 768 >>列车|T132115:0|t[Cat表格]
    .target Sheldras Moontree
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_购买|r|T135324:0|t[长剑]|cRXP_Buy_ 21装备|r
    >>|cRXP_BUY_如果有更便宜/更好的东西，就从拍卖行买|r
    >>|cRXP_WARN_如果您有更好的选择，请跳过此步骤|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << !Dwarf Rogue
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>稍后为您的|T132290:0|t[毒药]任务购买|T134437:0|t[抗毒液]
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    .collect 6452,1,2359,1 --Anti-Venom (1)
    .target Auctioneer Jaxon
step << Rogue
    #hardcore
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_购买|r|T135324:0|t[长剑]|cRXP_Buy_ 21装备|r
    >>|cRXP_WARN_如果您有更好的选择，请跳过此步骤|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << Warrior/Paladin
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_BUY_如果你有足够的钱，买一个|r|T135280:0|t[Dacian Falx]|cRXP_Buy_。21点装备|r
    >>|cRXP_BUY_如果有更便宜/更好的东西，就从拍卖行买|r
    >>|cRXP_WARN_如果您有更好的选择，请跳过此步骤|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
step << Warrior/Paladin
    #hardcore
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_BUY_如果你有足够的钱，买一个|r|T135280:0|t[Dacian Falx]|cRXP_Buy_。21点装备|r
    >>|cRXP_WARN_如果您有更好的选择，请跳过此步骤|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿古斯·夜语|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >>接任务: |cRXP_WARN_遥远的旅途|r
step
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里斯托弗修士|r
    .accept 343 >>接任务: |cRXP_WARN_关于坚韧的演讲|r
    .target Brother Kristoff
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r, Tome of Valor
    .use 6776 >>|cRXP_WARN_使用|T133739:0|t[|cRXP_LOOT_Tome|r]开始任务|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>接任务: |cRXP_WARN_勇气之书|r
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1649 >>交任务: |cRXP_FRIENDLY_勇气之书|r
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>训练你的职业技能
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    .target Brother Joshua
step
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >>朝着暴风图书馆中的|cRXP_FRIENDLY_Milton Sheaf|r行进
step
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔顿·西弗|r
    .turnin 343 >>交任务: |cRXP_FRIENDLY_关于坚韧的演讲|r
    .accept 344 >>接任务: |cRXP_WARN_帕克斯顿修士|r
    .target Milton Sheaf
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >>训练你的职业技能
    .target Einris Brightspear
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .trainer >>训练你的职业技能
    .train 1804 >>训练|T136058:0|t[开锁]学习开锁
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Renzik“The Shiv”|r和|cRXP-FRIENDLY_Master Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"剃刀\"雷吉克|r, |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 2281 >>接任务: |cRXP_WARN_赤脊山的联络员|r
    .goto StormwindClassic,75.76,60.35
    .accept 2360 >>接任务: |cRXP_WARN_马迪亚斯和迪菲亚潜行者|r
    .goto StormwindClassic,75.78,59.84
    .target Renzik "The Shiv"
    .target Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target Wu Shen
    .target Ilsa Corbin
step
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >>前往: |cRXP_PICK_艾尔文森林|r
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠阿古斯|r
	.target Smith Argus
    .turnin 118 >>交任务: |cRXP_FRIENDLY_马掌|r
    .accept 119 >>接任务: |cRXP_WARN_回复弗纳|r
step
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >>前往北郡修道院
step
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕克斯顿修士|r
    .turnin 344 >>交任务: |cRXP_FRIENDLY_帕克斯顿修士|r
    .accept 345 >>接任务: |cRXP_WARN_墨水短缺|r
    .target Brother Paxton
step
    #completewith next
    .goto Elwynn Forest,57.518,51.595,25,0
    .goto Elwynn Forest,58.14,52.50,20,0
    .goto Elwynn Forest,65.20,69.80,50 >>前往亚速拉塔。登上塔楼。沿着箭头走一条穿过山脉的捷径
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞欧克瑞图斯|r
    .accept 94 >>接任务: |cRXP_LOOT_法师的眼线|r
step
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_当恩·布赖特斯塔|r
    .vendor >>|cRXP_FRIENDLY_Dawn Brightstar |r|cRXP_BUY_也有有限的供应项目，如|r|T134938:0|t|T134937:0|t| T134943:0|t[Scrolls]|cRXP-BUY_和|r|T134850:0|t|T134830:0|t[Potions]|cRX|r << !Warrior !Rogue
    .vendor >>|cRXP_FRIENDLY_Dawn Brightstar |r|cRXP_BUY_也有有限的供应项目，如|r|T134938:0|t|T134937:0|t| T134943:0|t[Scrolls]|cRXP-BUY_和|r|T134830:0|t[Potions]|cRX P_BUY_|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
    #completewith TravelRM
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
    .zoneskip Elwynn Forest,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    >>如果您在暴风雨中，请飞往雷德里奇
    .fly Redridge >>飞到雷德里奇
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 345 >>交任务: |cRXP_FRIENDLY_墨水短缺|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >>交任务: |cRXP_FRIENDLY_回复弗纳|r
    .accept 124 >>接任务: |cRXP_WARN_豺狼人的乱吠|r
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >>接任务: |cRXP_WARN_雏龙的鳞片|r
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢修斯|r
    .turnin 2281 >>交任务: |cRXP_FRIENDLY_赤脊山的联络员|r
    .target Lucius
    .accept 2282 >>接任务: |cRXP_LOOT_奥瑟尔伐木场|r
step
    #era
	#completewith next
	>>杀死|cRXP_ENEMY_Black Dragon Whelps|r。掠夺它们的|cRXX_Loot_Scales|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #label TravelRM
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>杀死|cRXP_ENEMY_Redridge Brutes|r和|cRXX_ENEMY_Redridge Mystics|r。掠夺他们的|cRXD_Loot_铁钉|r和| cRXP_Loot_铁钉|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    .goto Redridge Mountains,52.10,45.24
    +打开|cRXP_PICK_Practice Lockboxes|r，直到您在|T136058:0|t[Lockpicking]中达到80
    .skill lockpicking,80,1
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>打开|cRXP_PICK_Lucius的锁箱|r。偷走它以获取小偷的|cRXP-Loot_Token|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #era
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>杀死|cRXP_ENEMY_Black Dragon Whelps|r。掠夺它们的|cRXX_Loot_Scales|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #era
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cRXP_WARN_升级您的|r|T133971:0|t[烹饪]|cRXP_WARN_使用|r|T133970:0|t|cRXD_OOT_[大块的野猪肉]|r|cRXP_WARN_您之前养殖过。你需要50级|r|T133971:0|t[烹饪]
    +|cRXP_WARN_如果你需要更多|r|T133970:0|t|cRXP_LOOT_[大块的肉]|r|cRXP_WARN_在|r|cRXP_ENEMY_Bellygrub|r|C RXP_WARN_附近向西旅行并杀死更多|r| cRXP_ENEMY_Great Goretusks|r
    .skill cooking,50,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >>交任务: |cRXP_FRIENDLY_止水湖上的桥|r
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >>交任务: |cRXP_FRIENDLY_豺狼人的乱吠|r
    .turnin 122 >>交任务: |cRXP_FRIENDLY_雏龙的鳞片|r
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >>交任务: |cRXP_FRIENDLY_豺狼人的乱吠|r
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢修斯|r
    .turnin 2282 >>交任务: |cRXP_FRIENDLY_奥瑟尔伐木场|r
    .target Lucius
step << Rogue
    #sticky
    #optional
    .destroy 7907 >>摧毁: |cRXP_ENEMY_偷窃技能认证书|r, 它在你的背包中. 不再需要它了
step << NightElf Rogue
    #hardcore
    #optional
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Stormwind >>飞到暴风城
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    #optional
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fp Westfall >>获取Westfall飞行路线
    .target Thor
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !NightElf Rogue
    #hardcore
    #optional
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Westfall >>飞往威斯特福尔
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !Dwarf Rogue
    #hardcore
    #optional
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>杀死|cRXP_ENEMY_Pygmy毒液蜘蛛|r和|cRXD_ENEMY_Venom蜘蛛|r。掠夺它们获得|cRXT_Loot_Smal Venom Sac|r和它们的|cRXP_Loot_Gooey蜘蛛腿|r
    >>|cRXP_WARN_您需要一个|cRXP_LOOT_Smal Venom Sac|r来制作一个|r|T134437:0|t[抗毒液]|cRXD_WARN_water来稍后移除|r|T136230:0|t[TTouch of Zanzil]|cRX P_WARN_debuff|r
    >>|cRXP_WARN_保存|cRXP_LOOT_Gooey Spider Legs|r以备以后使用|r
    >>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|cRXP_WARN_friend，您可以跳过此步骤，并要求他们稍后为您删除它|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==注意接下来的部分==|r
    >>|cRXP_WARN_按Escape，然后进入->选项->控制|r
    >>|cRXP_WARN_选中“启用交互键”并将“与目标交互”选项绑定到键|r
    >>|cRXP_WARN_此外，建议您启用敌人铭牌（默认键：V），因为它可以让您看到塔内一些角落后面的敌人|r
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密探吉尔妮|r
    >>|cRXP_WARN_你必须用你的|r|T132290:0|t[毒药]完成这个任务
    .turnin 2360 >>交任务: |cRXP_FRIENDLY_马迪亚斯和迪菲亚潜行者|r
    .accept 2359 >>接任务: |cRXP_LOOT_克拉文之塔|r
    .target Agent Kearnen
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密探吉尔妮|r
    >>|cRXP_WARN_你必须用你的|r|T132290:0|t[毒药]完成这个任务
    .accept 2359 >>接任务: |cRXP_LOOT_克拉文之塔|r
    .target Agent Kearnen
    .isQuestTurnedIn 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Defias无人机|r。为|cRXP-Loot_Defias Tower Key |r将其偷走
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    >>|cRXP_WARN_|cRXP_ENEMY_畸形的Defias无人机在塔的入口处繁殖，然后在塔的外面巡逻|r
    >>|cRXP_WARN_小心，因为他造成了很大的伤害。如果您的|r|T132320:0|t[Stealth]|cRXP_WARN_breaks，请快速使用|r|T132307:0|t[SSprint]|cRXP_WARN_an并逃跑|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>点击此处查看视频指南
    .mob Malformed Defias Drone
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #completewith Mortwake
    +|cRXP_WARN_如果你还没有装备|r|T135641:0|t[Curvewood匕首]|cRXP_WARN_|r
    .use 15396
    .itemcount 15396,1
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_向上行进至塔楼的二层顶层。当在|r|T132320:0|t[Stealth]|cRXP_WARN_an和|cRXP-ENEMY_Defias Tower哨兵|r不在你旁边时，跳到椅子上，然后跳到灯上，然后再跳到航路点位置顶部的书架上|r
    >>|cRXP_WARN_手动|r|T132320:0|t[不健康]|cRXP_WARN_，然后按“与目标交互”键绑定打开|cRX_PICK_Duskwood胸脯|r。将其抓取|r|cRXP_OOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_注：您的|r|T132320:0|t[Stealth]|cRXP_WARN_在抢劫后将暂时停止工作|r|cRXP-OOT_Klaven Mortwake's Journal|r 
    >>|cRXP_WARN_如果没有杀死2楼的|cRXP_ENEMY_Defias Tower哨兵|r，请做好逃跑的准备。当你在书架上时，它们很可能会永久攻击你（但不会攻击你），因为这是一个躲避点|r
    >>|cRXP_WARN_如果你的包或装备中有一把|r|T135641:0|t[匕首]|cRXP_WARN_in，你可以在里面的|cRXD_ENEMY_Defias Tower Patroley|r和|cRXT_ENEMY_Defias TowerSentaries|r上投掷|r|T132282:0|t[Ambush]|cRX P_WARN_，立即杀死他们。在杀死第一个|cRXP_ENEMY_Defias Tower Sentry|r后，做好逃跑的准备，记住你可能会被上方击中。这更慢，但更安全|r
    >>|cRXP_WARN_小心，因为|cRXP_ENEMY_Defias无人机|r和|cRXX_ENEMY_Defias无机|r可能在塔的入口处，如果你必须用完的话|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>点击此处查看视频指南
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>工艺|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_使用您包中的|T134437:0|t[抗毒]移除|T136230:0|t[Touch of Zanzil]debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .isQuestComplete 2359
step << Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_铸造|T136225:0|t[石形]移除|T136230:0|t[赞齐尔之触]debuff|r
    .aura -9991
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞到暴风城
    .target Thor
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>前往|cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|c|r
    .skill firstaid,80 >>|cRXP_WARN_将您的|r|T135966:0|t[急救]|cRXP_WARN_to 80调平|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|c|r
    .train 7934 >>|cRXP_WARN_Train|r|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>工艺|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_使用您包中的|T134437:0|t[抗毒]移除|T136230:0|t[Touch of Zanzil]debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    >>|cRXP_WARN_如果您切换到|r|T135641:0|t[匕首]|cRXP_WARN_earlier，请记住重新装备主武器|r << Rogue
    .turnin 2359 >>交任务: |cRXP_FRIENDLY_克拉文之塔|r
    .target Master Mathias Shaw
    .isQuestComplete 2359
]])