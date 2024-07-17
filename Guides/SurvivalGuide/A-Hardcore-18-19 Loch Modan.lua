RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 18-19 Loch Modan
#version 1
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 1-20
#next 19-20 赤脊山


-- LEVEL 18-19 EAST LOCH MODAN QUESTS

step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德温·晨光|r
    .vendor >>|cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_Buy_|r
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Dwin Shimmerdawn|r没有，请跳过此步骤|r
    .target Dewin Shimmerdawn
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Neal Allen|r没有，请跳过此步骤|r
	.target Neal Allen
    .bronzetube
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾德温娜·蒙佐尔|r
    .vendor >>|cRXP_BUY_购买|r|T134410:0|t[中等测验]|cRXP_BUY_和|r|T132382:0|t[尖箭头]
    .collect 11362,1 --Medium Quiver (1)
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Edwina Monzor
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r, 他在楼上
    .vendor >>|cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_Buy_|r
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Samor Festivus|r没有，请跳过此步骤|r
    .target Samor Festivus
step << !Druid !Hunter
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
    .fly Ironforge >>飞往铁炉堡
    .target Shellei Brondir
    .zoneskip Wetlands,1
    .xp <18,1
step << !Druid !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
    .goto Ironforge,65.905,88.405 << Warrior
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .trainer >>训练你的职业技能
    .target Bilban Tosslespanner << Warrior
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .target Toldren Deepiron << Priest
    .target Dink << Mage
    .target Brandur Ironhammer << Paladin
    .xp <18,1
step << !Druid !Hunter
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Loch Modan >>飞往莫丹湖
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
    .fly Loch Modan >>飞往莫丹湖
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_镇长埃罗恩·钝鼻|r
    .accept 255 >>接任务: |cRXP_WARN_雇佣兵|r
    .target Magistrate Bluntnose
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·角盔|r
    .accept 436 >>接任务: |cRXP_WARN_铁环挖掘场|r
    .target Jern Hornhelm
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >>向北行驶至Algaz车站
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 353 >>交任务: |cRXP_FRIENDLY_雷矛的包裹|r << NightElf
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
    .target Mountaineer Stormpike
step
    #completewith next
   .goto Loch Modan,35.50,18.97,20 >>进入银流矿
step
    .goto Loch Modan,35.93,22.55
    >>打开|cRXP_PICK_Miners’League Crates|r。掠夺它们以获取|cRXP_Loot_Miners’Gear|r
    >>|cRXP_WARN_|cRXP_PICK_Miners’League Crates|r遍布矿井|r
    .complete 307,1 -- Miners' Gear (4)
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .target Mountaineer Stormpike
step
    #completewith next
    .goto Loch Modan,43.43,10.14,50 >>前往石砌大坝
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_主工程师辛德维尔七世|r
    .accept 250 >>接任务: |cRXP_WARN_水坝危机|r
    .target Chief Engineer Hinderweir VII
step
    .goto Loch Modan,56.05,13.24
    >>单击|cRXP_PICK_可疑桶|r
    .turnin 250 >>交任务: |cRXP_FRIENDLY_水坝危机|r
    .accept 199 >>接任务: |cRXP_WARN_水坝危机|r
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_主工程师辛德维尔七世|r
    .turnin 199 >>交任务: |cRXP_FRIENDLY_水坝危机|r
    .target Chief Engineer Hinderweir VII
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >>前往Farstrider Lodge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_年轻的达瑞尔|r
    .accept 257 >>接任务: |cRXP_WARN_自豪的猎人|r
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step << Hunter
    .goto Loch Modan,82.225,62.842
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克劳德·艾尔克辛|r
    .trainer >>训练你的宠物法术
    .target Claude Erksine
step << Hunter
    .goto Loch Modan,82.391,62.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达恩·准星|r
    .trainer >>训练你的职业技能
    .target Dargh Trueaim
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马雷克·铁心|r
    .accept 385 >>接任务: |cRXP_WARN_捕猎鳄鱼|r
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>杀死|cRXP_ENEMY_Mountain Buzzards|r
    >>|cRXP_WARN_您必须完成此任务，并在15分钟内返回|cRXP_FRIENDLY_DARY the Youngling|r。如果你的任务失败了，放弃它，重新开始|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >>朝着|cRXP_FRIENDLY_DARY the Youngling|r行进
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_年轻的达瑞尔|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >>交任务: |cRXP_FRIENDLY_自豪的猎人|r
    .accept 258 >>接任务: |cRXP_WARN_猎人的挑战|r
    .target Daryl the Youngling
step
    .goto Loch Modan,74.65,49.60,70,0
    .goto Loch Modan,75.80,43.43,70,0
    .goto Loch Modan,71.10,38.98,70,0
    .goto Loch Modan,65.59,41.89,70,0
    .goto Loch Modan,61.66,32.02,70,0
    .goto Loch Modan,72.79,39.86,70,0
    .goto Loch Modan,73.87,51.85,70,0
    .goto Loch Modan,69.45,39.18
    >>杀死|cRXP_ENEMY_Elder Mountain Boars|r
    >>|cRXP_WARN_您必须完成此任务，并在12分钟内返回|cRXP_FRIENDLY_DARY the Youngling|r。如果你的任务失败了，放弃它，重新开始|r
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >>朝着|cRXP_FRIENDLY_DARY the Youngling|r行进
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_年轻的达瑞尔|r
    .goto Loch Modan,83.49,65.40
    .turnin 258 >>交任务: |cRXP_FRIENDLY_猎人的挑战|r
    .target Daryl the Youngling
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维林·疾风|r
    .goto Loch Modan,81.73,64.15
    .accept 271 >>接任务: |cRXP_WARN_维林的报复|r
    .target Vyrin Swiftwind
step
    .goto Loch Modan,58.86,38.32,80,0
    .goto Loch Modan,54.80,40.02,60,0
    .goto Loch Modan,54.16,35.79,60,0
    .goto Loch Modan,54.72,38.15
    >>杀死|cRXP_ENEMY_Loch Crocolis|r。掠夺它们的|cRXP_Loot_Meat|r和|cRXP-Loot_Skin|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >>前往铁乐队挖掘现场
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格玛尔·落斧|r
    .turnin 436 >>交任务: |cRXP_FRIENDLY_铁环挖掘场|r
    .accept 297 >>接任务: |cRXP_WARN_收集石像|r
    .target Magmar Fellhew
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员基恩萨·铁环|r
    .accept 298 >>接任务: |cRXP_WARN_挖掘进度报告|r
    .target Prospector Ironband
step
    .goto Loch Modan,66.92,59.89,30,0
    .goto Loch Modan,70.67,60.58,40,0
    .goto Loch Modan,72.86,62.09,20,0
    .goto Loch Modan,71.03,68.89,30,0
    .goto Loch Modan,70.38,62.82
    >>杀死|cRXP_ENEMY_Stonessplit Diggers|r、|cRXD_ENEMY_ Stonessplet Geomancers|r和|cRXP_ENEMY_Berserk Troggs|r。掠夺他们的|cRXP_OOT_Idols|r
    .complete 297,1
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
    .mob Berserk Trogg
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格玛尔·落斧|r
    .turnin 297 >>交任务: |cRXP_FRIENDLY_收集石像|r
    .target Magmar Fellhew
step
    .group
    #completewith next
    .goto Loch Modan,41.21,64.33,100 >>前往Grizzlepaw山脊
    .isOnQuest 271
step
    .group 3
    .goto Loch Modan,39.43,66.38,10,0
    .goto Loch Modan,41.00,63.03,10,0
    .goto Loch Modan,39.97,61.67,10,0
    .goto Loch Modan,37.81,62.87,15,0
    .goto Loch Modan,36.73,61.08
    >>杀死|cRXP_ENEMY_Ol'Soothy|r。掠夺他的|cRXX_Loot_Head|r
    >>|cRXP_ENEMY_Ol’Soothy|r|cRXP_WARN_i并不总是在他的洞穴里，可能会沿着小路巡逻到地势较低的地方|r
    >>|cRXP_ENEMY_Ol’Soothy|r|cRXP_WARN_i是20级精英|r
    .complete 271,1 -- Ol' Sooty's Head (1)
    .unitscan Ol' Sooty
    .isOnQuest 271
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >>前往Farstrider Lodge
step
    .goto Loch Modan,81.76,61.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马雷克·铁心|r
    .turnin 385 >>交任务: |cRXP_FRIENDLY_捕猎鳄鱼|r
    .target Marek Ironheart
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_年轻的达瑞尔|r
    .goto Loch Modan,83.49,65.40
    .turnin 271 >>交任务: |cRXP_FRIENDLY_维林的报复|r
    .target Daryl the Youngling
    .isQuestComplete 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_年轻的达瑞尔|r
    .goto Loch Modan,83.49,65.40
    .accept 531 >>接任务: |cRXP_WARN_维林的报复|r
    .target Daryl the Youngling
    .isQuestTurnedIn 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维林·疾风|r
    .goto Loch Modan,81.73,64.15
    .turnin 531 >>交任务: |cRXP_FRIENDLY_维林的报复|r
    .target Vyrin Swiftwind
    .isOnQuest 531
step
    .group
    .abandon 271 >>Abandon Vyrin's Revenge
step
    .group
    .goto Loch Modan,73.87,29.64,100 >>前往莫戈什寨
    .isOnQuest 255
step
    .group 3
    >>杀死|cRXP_ENEMY_Mo'grosh食人魔|r、|cRXD_ENEMY_Mo'grosh执法者|r和|cRXP_ENEMY_Mov'grosh Brutes|r
    >>|cRXP_ENEMY_Mo'grosh Brutes|r|cRXP_WARN_只在洞穴中发现。建议你不要进入东北洞穴，只需在另外两个迷你洞穴中杀死它们|r
    .complete 255,1 -- Mo'grosh Ogre slain (4)
    .goto Loch Modan,73.87,29.64,60,0
    .goto Loch Modan,73.57,25.15,60,0
    .goto Loch Modan,73.61,20.23,60,0
    .goto Loch Modan,68.97,21.14,60,0
    .goto Loch Modan,68.86,28.05,60,0
    .goto Loch Modan,70.51,23.73
    .complete 255,3 -- Mo'grosh Enforcer slain (4)
    .goto Loch Modan,73.87,29.64,60,0
    .goto Loch Modan,73.57,25.15,60,0
    .goto Loch Modan,73.61,20.23,60,0
    .goto Loch Modan,68.97,21.14,60,0
    .goto Loch Modan,68.86,28.05,60,0
    .goto Loch Modan,70.51,23.73
    .complete 255,2 -- Mo'grosh Brute slain (4)
    .goto Loch Modan,68.63,19.49,25,0
    .goto Loch Modan,74.84,25.08,25,0
    .goto Loch Modan,68.63,19.49,25,0
    .goto Loch Modan,74.84,25.08
    .isOnQuest 255
    .mob Mo'grosh Ogre
    .mob Mo'grosh Brute
    .mob Mo'grosh Enforcer
step
    #completewith FINISHED
    .goto Loch Modan,36.77,46.20,150 >>Travel to Thelsamar
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·角盔|r
    .turnin 298 >>交任务: |cRXP_FRIENDLY_挖掘进度报告|r
    .accept 301 >>接任务: |cRXP_WARN_向铁炉堡报告|r
    .target Jern Hornhelm
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_镇长埃罗恩·钝鼻|r
    .turnin 255 >>交任务: |cRXP_FRIENDLY_雇佣兵|r
    .target Magistrate Bluntnose
    .isQuestComplete 255
step
    .group
    .abandon 255 >>Abandon Mercenaries
step
    #label FINISHED
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
step
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r
    .turnin 301 >>交任务: |cRXP_FRIENDLY_向铁炉堡报告|r
    .target Prospector Stormpike
step
    .isQuestTurnedIn 2078
    .goto Ironforge,35.90,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
    .bankdeposit 5996 >>将以下项目存入您的银行：
    >>|T134797:0|t[水息灵药]（如果你有）--5996
    .target Bailey Stonemantle
step
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考格斯宾|r
    .vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Gearcutter Cogspeer|r没有，请跳过此步骤|r
--  >>稍后的任务需要2个青铜管 << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    >>|cRXP_WARN_如果在等电车时需要，请调平|r|T135966:0|t[急救]|cRXP_WARN_and|r|T133971:0|t[烹饪]|cRX P_WARN_if need|r
    >>|cRXP_WARN_你需要|r|T135966:0|t[急救]|cRXP_WARN_to达到80才能完成24级任务|r << Rogue !Dwarf
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>|cRXP_WARN_点击此处获取电车上注销跳过的视频指南|r
]])
