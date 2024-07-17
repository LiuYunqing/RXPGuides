RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 35-37 Desolace Horde
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 30-40
#next 37-39北刺
step
.goto Stonetalon Mountains,46.00,60.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱林·火拳|r
.turnin 1088 >>交任务: |cRXP_FRIENDLY_奥达努斯|r
.target Braelyn Firehand
.isQuestComplete 1088
.group
step
#optional
.abandon 1088 >>Abandon Ordanus
.isOnQuest 1088
step
#optional
.abandon 2841 >>Abandon Rig Wars
.isOnQuest 2841
step
.goto Stonetalon Mountains,44.63,61.55,60,0
.goto Stonetalon Mountains,38.77,68.65,60,0
.goto Stonetalon Mountains,30.22,75.61,60,0
.goto Stonetalon Mountains,29.29,79.69
.zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
.zoneskip Desolace
step
.goto Desolace,55.80,30.10
>>杀死并掠夺|cRXP_ENEMY_Burning Blade|r的成员，直到获得|T134253:0|t[|cRXP-loot_Flated Devon Skin|r]
.collect 20310,1,1480 
.accept 1480 >>接任务: |cRXP_LOOT_堕落者|r
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step << Warrior/Hunter/Rogue/Druid/Shaman
.goto Desolace,55.94,29.19
.xp 35+35000 >>将雷斧要塞的燃烧之刃暴徒升级到35级35000+/67100
.mob Burning Blade Felsworn
.mob Burning Blade Augur
.mob Burning Blade Reaver
.mob Burning Blade Adept
step
.goto Desolace,38.90,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿佐尔·奥达蒙特|r
.accept 5741 >>接任务: |cRXP_WARN_圣光节杖|r
.target Azore Aldamort
step
#completewith next
.goto Desolace,56.30,57.07,100 >>前往幽灵行者驿站
step
.goto Desolace,55.40,55.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳塔卡·长角|r
.turnin 5361 >>交任务: |cRXP_FRIENDLY_兄弟|r
.target Nataka Longhorn
step
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1432 >>交任务: |cRXP_FRIENDLY_联盟关系|r
.accept 1433 >>接任务: |cRXP_LOOT_联盟关系|r
.accept 1434 >>接任务: |cRXP_LOOT_萨特的威胁|r
.target Takata Steelblade
step
.goto Desolace,52.20,53.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛乌林·碎骨|r
.turnin 1433 >>交任务: |cRXP_FRIENDLY_联盟关系|r
.accept 1435 >>接任务: |cRXP_LOOT_灵魂的燃烧|r
.turnin 1480 >>交任务: |cRXP_FRIENDLY_堕落者|r
.accept 1481 >>接任务: |cRXP_LOOT_堕落者|r
.target Maurin Bonesplitter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费古尔·双刃|r, Gurda
.accept 1365 >>接任务: |cRXP_LOOT_戴兹帕可汗|r
.goto Desolace,56.19,59.56
.accept 1368 >>接任务: |cRXP_WARN_吉尔吉斯部族|r
.goto Desolace,56.29,59.67
.target Felgur Twocuts
.target Gurda Wildmane
step
.goto Desolace,73.20,41.80,60,0
.goto Desolace,73.00,46.80,60,0
.goto Desolace,74.80,48.80,60,0
.goto Desolace,73.20,41.80,0
.goto Desolace,73.00,46.80,0
.goto Desolace,74.80,48.80
>>杀死|cRXP_ENEMY_Khan Dez'hepa|r。掠夺他的|cRXX_Loot_Head|r
>>|cRXP_WARN_他在营地有三个不同的产卵地点|r
.complete 1365,1 
.unitscan Khan Dez'hepah
step
#completewith next
>>杀死|cRXP_ENEMY_Hatefury Shadowspeaker|r。掠夺他们获得|cRXX_Loot_Scapp|r
.complete 1481,1 
.mob Hatefury Shadowstalker
step
.loop 25,Desolace,75.26,27.91,76.77,27.73,77.54,26.68,78.20,25.63,78.90,24.60,78.74,23.15,79.33,20.96,79.69,18.92,79.36,16.18,77.43,15.44,75.96,15.89,74.52,15.66,72.81,16.83,71.58,17.94,71.50,20.22,72.36,21.23,73.04,22.41,73.09,24.41,73.79,25.72,75.26,27.91
>>杀死|cRXP_ENEMY_Hatefury Satyrs|r。优先杀死|cRXP_ENEMY_Hatefury Rogues|r
.complete 1434,1 
.complete 1434,2 
.complete 1434,3 
.complete 1434,4 
.unitscan Hatefury Rogue
step
.loop 25,Desolace,75.26,27.91,76.77,27.73,77.54,26.68,78.20,25.63,78.90,24.60,78.74,23.15,79.33,20.96,79.69,18.92,79.36,16.18,77.43,15.44,75.96,15.89,74.52,15.66,72.81,16.83,71.58,17.94,71.50,20.22,72.36,21.23,73.04,22.41,73.09,24.41,73.79,25.72,75.26,27.91
>>杀死|cRXP_ENEMY_Hatefury Shadowspeaker|r。掠夺他们获得|cRXX_Loot_Scapp|r
.complete 1481,1 
.mob Hatefury Shadowstalker
step
.goto Desolace,62.30,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比布里·弗斯巴克|r
.accept 5501 >>接任务: |cRXP_LOOT_集骨者|r
.target Bibbly F'utzbuckle
step
#completewith next
.goto Desolace,56.30,57.07,100 >>前往幽灵行者驿站
step
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1434 >>交任务: |cRXP_FRIENDLY_萨特的威胁|r
.target Takata Steelblade
step
.goto Desolace,52.20,53.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛乌林·碎骨|r
.turnin 1481 >>交任务: |cRXP_FRIENDLY_堕落者|r
.accept 1482 >>接任务: |cRXP_LOOT_堕落者|r
.target Maurin Bonesplitter
step
.goto Desolace,51.20,53.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈诺尔|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Harnor
step
.goto Desolace,56.20,59.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费古尔·双刃|r
.turnin 1365 >>交任务: |cRXP_FRIENDLY_戴兹帕可汗|r
.accept 1366 >>接任务: |cRXP_WARN_悬赏半人马|r
.target Felgur Twocuts
step
.goto Desolace,60.80,61.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.accept 5561 >>接任务: |cRXP_LOOT_诱捕科多兽|r
.target Smeed Scrabblescrew
step
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85
>>杀死|cRXP_ENEMY_Magram半人马|r。掠夺他们的|cRXX_Loot_Ears|r
.complete 1366,1 
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85
>>继续升级|cRXP_ENEMY_Magram Centaur|r，直到您与|cRXP-FRIENDLY_Gelkis Centaur|1r的声誉变得友好为止
.reputation 92,Friendly
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step << !Warrior !Hunter !Rogue !Druid !Shaman
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85
.xp 35+45000 >>升级到35级45000+/67100
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step
.goto Desolace,56.20,59.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费古尔·双刃|r
.turnin 1366 >>交任务: |cRXP_FRIENDLY_悬赏半人马|r
.target Felgur Twocuts
step
#completewith next
.goto Desolace,49.7,57.2,0
>>|TInterface/GossipFrame/HealerGossipIcon:0|t在Kodo墓地周围的地面上掠夺|cRXP_Loot_Kodo骨头|r
>>|cRXP_WARN_当高级|r|cRXP_ENEMY_Kodos|r|cRXP_WARN_can在掠夺|r|c-cRXP_LOOT_Kodo骨骼后产卵时要小心|r << !Rogue !Druid
>>|cRXP_WARN_请小心，因为高级别|r|cRXP_ENEMY_Kodos|r|cRXP_WARN_可以在掠夺|r | cRXP_LOOT_Kodo骨骼|r | c RXP_WRN_后生成。立即偷东西通常会阻止他们攻击你|r << Rogue/Druid
.complete 5501,1 
step
.goto Desolace,60.86,61.86,0
>>在|cRXP_FRIENDLY_Kodos|r上使用|T132488:0|t[Kodo Komboulator]，然后护送他们到|cRXP_FRIENDLY_Smeed|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Kodo|r after each trip to progress the quest
.complete 5561,1 
.use 13892
.target Dying Kodo
.target Aged Kodo
.target Ancient Kodo
.target Smeed Scrabblescrew
step
.goto Desolace,54.42,63.79,30,0
.goto Desolace,54.38,62.87,30,0
.goto Desolace,53.31,61.24,30,0
.goto Desolace,54.39,60.38,30,0
.goto Desolace,53.90,58.17,30,0
.goto Desolace,52.88,57.13,30,0
.goto Desolace,52.14,58.56,30,0
.goto Desolace,51.13,59.97,30,0
.goto Desolace,50.81,58.72,30,0
.goto Desolace,49.70,57.15,30,0
.goto Desolace,48.90,58.86,30,0
.goto Desolace,48.98,60.05,30,0
.goto Desolace,53.31,61.24
>>|TInterface/GossipFrame/HealerGossipIcon:0|t在Kodo墓地周围的地面上掠夺|cRXP_Loot_Kodo骨头|r
>>|cRXP_WARN_当高级|r|cRXP_ENEMY_Kodos|r|cRXP_WARN_can在掠夺|r|c-cRXP_LOOT_Kodo骨骼后产卵时要小心|r << !Rogue !Druid
>>|cRXP_WARN_请小心，因为高级别|r|cRXP_ENEMY_Kodos|r|cRXP_WARN_可以在掠夺|r | cRXP_LOOT_Kodo骨骼|r | c RXP_WRN_后生成。立即偷东西通常会阻止他们攻击你|r << Rogue/Druid
.complete 5501,1 
step
.goto Desolace,60.80,61.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.turnin 5561 >>交任务: |cRXP_FRIENDLY_诱捕科多兽|r
.target Smeed Scrabblescrew
step
.goto Desolace,36.30,79.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1368 >>交任务: |cRXP_FRIENDLY_吉尔吉斯部族|r
.accept 1370 >>接任务: |cRXP_WARN_偷取物资|r
.target Uthek the Wise
step
#completewith next
.goto Desolace,25.26,71.61,150 >>前往Shadowprey村
step
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taiga|r
.accept 5381 >>接任务: |cRXP_WARN_埃鲁索斯之手|r
.target Taiga Wisemane
step
.goto Desolace,22.70,72.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦拉斯|r
.accept 6142 >>接任务: |cRXP_WARN_蚌肉鱼饵|r
.target Mai'Lahii
step
.goto Desolace,23.30,72.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜泽加尔|r
.accept 6143 >>接任务: |cRXP_WARN_另一种鱼|r
.target Drulzegar Skraghook
step
.goto Desolace,21.60,74.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨隆|r
.fp Shadowprey Village >>获取Shadowprey Village飞行路线
.target Thalon
step << Warlock/Druid/Shaman
#ah
.loop 25,Desolace,24.3,77.4,23.3,77.1,22.4,75.1,20.7,75.0,20.0,73.6,19.8,76.1,17.9,76.3,18.7,77.2,24.3,77.4,23.3,77.1,22.4,75.1,20.7,75.0,20.0,73.6,19.8,76.1,17.9,76.3,18.7,77.2,24.3,77.4,23.3,77.1,22.4,75.1,20.7,75.0,20.0,73.6,19.8,76.1,17.9,76.3,18.7,77.2,24.3,77.4
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick |cRXP_PICK_Shellfish Traps|r to loot their |cRXP_LOOT_Shellfish|r
>>|cRXP_WARN_下降率可能很低|r
.use 5996 >>饮水息灵药
.collect 13545,10 
.mob Drysnap Crawler
.mob Drysnap Pincer
step << Warlock/Druid/Shaman
.goto Desolace,22.44,73.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉纳泽林|r
.collect 13546,2 
.turnin 5421 >>交任务: |cRXP_FRIENDLY_坐享其成|r
.target Jinar'Zillen
.itemcount 13545,10 
step << !Warlock !Druid !Shaman
#ah
.loop 25,Desolace,24.3,77.4,23.3,77.1,22.4,75.1,20.7,75.0,20.0,73.6,19.8,76.1,17.9,76.3,18.7,77.2,24.3,77.4,23.3,77.1,22.4,75.1,20.7,75.0,20.0,73.6,19.8,76.1,17.9,76.3,18.7,77.2,24.3,77.4,23.3,77.1,22.4,75.1,20.7,75.0,20.0,73.6,19.8,76.1,17.9,76.3,18.7,77.2,24.3,77.4
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick |cRXP_PICK_Shellfish Traps|r to loot their |cRXP_LOOT_Shellfish|r
>>|cRXP_WARN_下降率可能很低|r
.use 5996 >>饮水息灵药
.collect 13545,10 
.mob Drysnap Crawler
.mob Drysnap Pincer
.itemcount 5996,1
step << !Warlock !Druid !Shaman
#ah
.goto Desolace,22.44,73.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉纳泽林|r
.collect 13546,2 
.turnin 5421 >>交任务: |cRXP_FRIENDLY_坐享其成|r
.target Jinar'Zillen
.itemcount 13545,10 
step << Hunter
.goto Desolace,24.93,71.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图克|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,5741,1 
.target Tukk
step
#completewith next
.goto Desolace,62.30,39.00,150 >>前往北德索拉斯
step
.goto Desolace,62.30,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比布里·弗斯巴克|r
.turnin 5501 >>交任务: |cRXP_FRIENDLY_集骨者|r
.target Bibbly F'utzbuckle
step
#completewith next
.use 6436 >>使用|T134095:0|t[燃烧宝石]杀死|cRXP_ENEMY_燃烧之刃成员|r
.complete 1435,1 
step
.goto Desolace,55.20,30.10
>>杀死塔顶的|cRXP_ENEMY_Burning Blade Seer|r。为|cRXP_Loot_Sceptre|r掠夺它
.complete 5741,1 
.mob Burning Blade Seer
step
#completewith next
.use 6436 >>使用|T134095:0|t[燃烧宝石]杀死|cRXP_ENEMY_燃烧之刃成员|r
.complete 1435,1 
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step
.goto Desolace,55.31,27.55,12,0
.goto Desolace,54.62,27.54,10,0
.goto Desolace,54.43,27.22,10,0
.goto Desolace,54.93,26.67
>>进入更大的建筑，然后在Iruxos Crystal的|cRXP_Pick_Hand上使用|T136248:0|t[恶魔拾取]|r
>>在|cRXP_ENEMY_Devon Spirit|r产生后杀死它。为他的|cRXP_Loot_Box|r掠夺它
.complete 5381,1 
.mob Demon Spirit
step
.goto Desolace,55.58,28.70,50,0
.goto Desolace,56.82,29.95,50,0
.goto Desolace,57.21,27.86,50,0
.goto Desolace,57.62,26.30,50,0
.goto Desolace,57.26,22.39,50,0
.goto Desolace,56.41,21.57,50,0
.goto Desolace,56.82,29.95
.use 6436 >>完成使用|T134095:0|t[燃烧宝石]杀死|cRXP_ENEMY_燃烧之刃成员|r
.complete 1435,1 
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step
.goto Desolace,38.90,27.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Azore|r
.turnin 5741 >>交任务: |cRXP_FRIENDLY_圣光节杖|r
.accept 6027 >>接任务: |cRXP_WARN_上古之书|r
.target Azore Aldamort
step
.goto Desolace,36.07,30.40
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Rackmore的日志|r，放在桶上
.accept 6161 >>接任务: |cRXP_WARN_拉克摩尔的财宝！|r
step << !Warlock !Druid !Shaman
#ah
#completewith next
.use 5996 >>饮水息灵药
.itemcount 5996,1
step
#completewith Rackmore
>>杀死|cRXP_ENEMY_Slitherblade Oracles|r。掠夺它们以获得|cRXP_OOT_Oracle Crystal|r
>>|cRXP_ENEMY_Slitherblade Oracles |r|cRXP_WARN_share与其他|r|cRXP_ENEMY_Slitherblad Nagas |r| cRXP_WRN_；你可能不得不杀了他们|r
.complete 1482,1 
.mob Slitherblade Oracle
step
#completewith BookoftheAncients
>>杀死|cRXP_ENEMY_Slitherblade Nagas|r。掠夺它们以获得|cRXP_Loot_金钥匙|r
.complete 6161,2 
step
#completewith ClamMeat
>>杀死|cRXP_ENEMY_Dryssnap Pincers|r和|cRXP_ENEMY_Crawlers |r。掠夺它们以获取|cRXP_Loot_Silver Key |r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#completewith Rackmore
>>杀死|cRXP_ENEMY_Slitherblade Naga|r、|cRXD_ENEMY_Myrmidons|r和|cRXP_ENEMY_Sorcerees|r
.complete 6143,1 
.complete 6143,2 
.complete 6143,3 
.mob Slitherblade Myrmidon
.mob Slitherblade Naga
.mob Slitherblade Sorceress
step
#label ClamMeat
.goto Desolace,34.12,30.74,40,0
.goto Desolace,31.96,30.60,40,0
.goto Desolace,32.98,28.57,40,0
.goto Desolace,35.36,25.03,40,0
.goto Desolace,34.34,23.11,40,0
.goto Desolace,32.97,28.58
>>|TInterface/GossipFrame/HealerGossipIcon:0|t掠夺|cRXP_PICK_Giant Softshell Clam|r以获取它们的|cRXP_OOT_Meat|r
>>|cRXP_ENEMY_愤怒的珊瑚礁爬行者|r|cRXP_WARN_can也会掉落|r|cRXP_PICK_Giant Softshell Clams|r
.complete 6142,1 
.mob Enraged Reef Crawler
step
#label SilverKey
.goto Desolace,34.12,30.74,40,0
.goto Desolace,31.96,30.60,40,0
.goto Desolace,32.98,28.57,40,0
.goto Desolace,35.36,25.03,40,0
.goto Desolace,34.34,23.11,40,0
.goto Desolace,32.97,28.58
>>杀死|cRXP_ENEMY_Dryssnap Pincers|r和|cRXD_ENEMY_Cralwers|r。偷走它们以获得|cRXP_Loot_Silver Key |r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
.goto Desolace,30.00,8.80
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Rackmore的胸部|r
.turnin 6161 >>交任务: |cRXP_FRIENDLY_拉克摩尔的财宝！|r
.isQuestComplete 6161
step
#label BookoftheAncients
.goto Desolace,28.20,6.60
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_Serpent Statue|r召唤|cRXD_ENEMY_Lord Kragaru|r。杀死他并掠夺他的|cRXP_loot_Book|r
>>|cRXP_WARN_先杀死蛇像周围的一切！|r
.complete 6027,1 
.mob Lord Kragaru
step
.loop 25,Desolace,28.48,11.14,27.24,10.26,27.81,7.83,27.87,5.71,28.66,6.74,30.07,6.86,30.96,7.87,30.33,8.98,29.99,11.23,28.48,11.14
>>杀死|cRXP_ENEMY_Slitherblade Nagas|r。掠夺它们以获得|cRXP_Loot_金钥匙|r
.complete 6161,2 
step
#label Rackmore
.goto Desolace,30.00,8.80
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Rackmore的胸部|r
.turnin 6161 >>交任务: |cRXP_FRIENDLY_拉克摩尔的财宝！|r
step
#completewith next
>>杀死|cRXP_ENEMY_Slitherblade Naga|r、|cRXD_ENEMY_Myrmidons|r和|cRXP_ENEMY_Sorcerees|r
.complete 6143,1 
.complete 6143,2 
.complete 6143,3 
.mob Slitherblade Myrmidon
.mob Slitherblade Naga
.mob Slitherblade Sorceress
step
.loop 25,Desolace,28.48,11.14,27.24,10.26,27.81,7.83,27.87,5.71,28.66,6.74,30.07,6.86,30.96,7.87,30.33,8.98,29.99,11.23,28.48,11.14
>>杀死|cRXP_ENEMY_Slitherblade Oracles|r。掠夺它们以获得|cRXP_OOT_Oracle Crystal|r
>>|cRXP_ENEMY_Slitherblade Oracles |r|cRXP_WARN_share与其他|r|cRXP_ENEMY_Slitherblad Nagas |r| cRXP_WRN_；你可能不得不杀了他们|r
.complete 1482,1 
.mob Slitherblade Oracle
step
.loop 25,Desolace,32.41,23.00,34.99,21.73,36.86,20.16,39.13,18.74,40.44,20.40,37.70,20.85,36.64,23.40,34.67,24.12,32.41,23.00
>>杀死|cRXP_ENEMY_Slitherblade Naga|r、|cRXD_ENEMY_Myrmidons|r和|cRXP_ENEMY_Sorcerees|r
.complete 6143,1 
.complete 6143,2 
.complete 6143,3 
.mob Slitherblade Myrmidon
.mob Slitherblade Naga
.mob Slitherblade Sorceress
step
.goto Desolace,38.88,27.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Azore|r
.turnin 6027 >>交任务: |cRXP_FRIENDLY_上古之书|r
.target Azore Aldamort
step
#completewith next
.goto Desolace,56.30,57.07,100 >>前往幽灵行者驿站
step
.goto Desolace,52.24,53.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Maurin|r
.turnin 1435 >>交任务: |cRXP_FRIENDLY_灵魂的燃烧|r
.turnin 1482 >>交任务: |cRXP_FRIENDLY_堕落者|r
.accept 1484 >>接任务: |cRXP_LOOT_堕落者|r
.target Maurin Bonesplitter
step
#ah
.goto Desolace,55.41,55.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳塔卡·长角|r
.accept 5386 >>接任务: |cRXP_WARN_食鱼度日|r
.turnin 5386 >>交任务: |cRXP_FRIENDLY_食鱼度日|r
.target Nataka Longhorn
.itemcount 13546,2 
step
.goto Desolace,52.56,54.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Takata|r
.turnin 1484 >>交任务: |cRXP_FRIENDLY_堕落者|r
.accept 1488 >>接任务: |cRXP_LOOT_堕落者|r
.accept 1436 >>接任务: |cRXP_LOOT_联盟关系|r
.target Takata Steelblade
step
.goto Desolace,69.22,77.24,30,0
.goto Desolace,70.01,78.60,30,0
.goto Desolace,70.92,75.43,30,0
.goto Desolace,73.18,75.11,30,0
.goto Desolace,73.57,74.21,30,0
.goto Desolace,73.67,72.90,30,0
>>|TInterface/GossipFrame/HealerGossipIcon:0|t在Magram村周围掠夺|cRXP_PICK_肉袋|r以获取|cRXP-Loot_Meat|r
.complete 1370,1 
step
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1370 >>交任务: |cRXP_FRIENDLY_偷取物资|r
.accept 1373 >>接任务: |cRXP_WARN_盎格库尔|r
.target Uthek the Wise
step << Hunter
#completewith next
.goto Desolace,24.90,68.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Aboda交谈|r
.stable >>稳定你的宠物。你很快就会驯服一只|cRXP_ENEMY_Scorpashi Lasher|r
.target Aboda
step << Hunter
.goto Desolace,38.24,74.30,50,0
.goto Desolace,42.45,70.19,50,0
.goto Desolace,43.34,60.43,50,0
.goto Desolace,42.45,70.19
.cast 1515 >>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXP_ENEMY_Scorpashi Lasher|r驯服它|r
.train 16831 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级5）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Scorpashi Lasher
step << Hunter
.goto Desolace,24.90,68.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Aboda交谈|r
.stable >>放弃|cRXP_ENEMY_Scorpashi Lasher|r并取回您的普通宠物
.target Aboda
step
.goto Desolace,25.10,72.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁恩·蛮鬃|r
.accept 5763 >>接任务: |cRXP_WARN_荆棘谷狩猎|r
.target Roon Wildmane
step
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Taiga|r
.turnin 5381 >>交任务: |cRXP_FRIENDLY_埃鲁索斯之手|r
.target Taiga Wisemane
step
.goto Desolace,23.40,72.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Drulzegar |r
.turnin 6143 >>交任务: |cRXP_FRIENDLY_另一种鱼|r
.target Drulzegar Skraghook
step
.goto Desolace,22.70,72.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Mai'Lahii|r
.turnin 6142 >>交任务: |cRXP_FRIENDLY_蚌肉鱼饵|r
.target Mai'Lahii
step
#completewith next
.hs >>火炉到雷霆崖
.use 6948
step
.goto Thunder Bluff,45.81,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Pala
step
.goto Thunder Bluff,61.40,80.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.accept 1136 >>接任务: |cRXP_LOOT_霜喉雪人|r
.target Melor Stonehoof





step << !Undead 
.goto Thunder Bluff,34.42,46.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.accept 1049 >>接任务: |cRXP_WARN_堕落者纲要|r
.target Sage
.dungeon SM
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9493 >>训练你的职业技能
.target Turak Runetotem
.xp <36,1
.xp >38,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 5201 >>训练你的职业技能
.target Turak Runetotem
.xp <38,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14303 >>训练你的职业技能
.target Urek Thunderhorn
.xp <36,1
.xp >38,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14320 >>训练你的职业技能
.target Urek Thunderhorn
.xp <38,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24560 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <36,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 1680 >>训练你的职业技能
.target Ker Ragetotem
.xp <36,1
.xp >38,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 8820 >>训练你的职业技能
.target Ker Ragetotem
.xp <38,1
step << !Mage
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Tal
.zoneskip Orgrimmar
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8427 >>训练你的职业技能
.target Pephredo
.xp <36,1
.xp >38,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8413 >>训练你的职业技能
.target Pephredo
.xp <38,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Horthus|r|cRXP_BUY_交谈。从他那里购买两个或多个|r|T134419:0|t[传送符文]|r
.collect 17031,2 
.target Horthus
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10412 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <36,1
.xp >38,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10391 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <38,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8691 >>训练你的职业技能
.target Ormok
.xp <36,1
.xp >38,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8621 >>训练你的职业技能
.target Ormok
.xp <38,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 2362 >>训练你的职业技能
.target Mirket
.xp <36,1
.xp >38,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11711 >>训练你的职业技能
.target Mirket
.xp <38,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6066 >>训练你的职业技能
.target Ur'kyo
.xp <36,1
.xp >38,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6078 >>训练你的职业技能
.target Ur'kyo
.xp <38,1
step
.goto Orgrimmar,22.40,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔丹|r
.turnin 1436 >>交任务: |cRXP_FRIENDLY_联盟关系|r
.target Keldran
step
.goto Orgrimmar,75.20,34.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 1184 >>交任务: |cRXP_FRIENDLY_虫群的消息|r
.target Belgrom Rockmaul
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师萨苏恩|r
.collect 10592,3 >>|cRXP_BUY_从拍卖行购买三件|r|T134816:0|t[Caseye Elixir]|cRXP_Buy_|r
.target Auctioneer Thathung
step
.goto Orgrimmar,54.10,68.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
.home >>将您的炉石设置为Orgrimmar
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Gryshka
step
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
]])
