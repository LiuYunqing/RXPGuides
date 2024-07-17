RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 23-25 Hillsbrad
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 20-30
#next 25-27南部荒地/石爪
step
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step
#completewith next
.goto Tirisfal Glades,61.52,53.20,80 >>Travel to Brill
step
.goto Tirisfal Glades,61.26,50.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
.turnin 440 >>交任务: |cRXP_FRIENDLY_黛丽娅的戒指|r
.accept 441 >>接任务: |cRXP_LOOT_拉林夫与幽暗城|r
.target Magistrate Sevren
.isOnQuest 440
step
.goto Tirisfal Glades,61.26,50.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
.accept 441 >>接任务: |cRXP_LOOT_拉林夫与幽暗城|r
.target Magistrate Sevren
.isQuestTurnedIn 440
step
#completewith HusbandsRevenge
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
.zoneskip Undercity
step
#completewith next
.goto Undercity,66.09,20.06,35,0
.goto Undercity,64.37,23.94,35,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step
#label HusbandsRevenge
.goto Undercity,62.02,42.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh|r
.turnin 441 >>交任务: |cRXP_FRIENDLY_拉林夫与幽暗城|r
.accept 530 >>接任务: |cRXP_WARN_丈夫的复仇|r
.target Raleigh Andrean
.isQuestTurnedIn 440
step << Mage
.goto Undercity,84.18,15.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱克斯顿·莫泰姆|r
.train 3563 >>列车|T135766:0|t[电传：Undercity]
.target Lexington Mortaim
step << Mage
.goto Undercity,82.78,15.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Hannah|r|cRXP_BUY_交谈。从她那里购买一个或多个|r|T134419:0|t[传送符文]|r
.collect 17031,1 
.target Hannah Akeley
step << Undead Priest
.goto Undercity,48.98,18.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
.turnin 5644 >>交任务: |cRXP_FRIENDLY_噬灵瘟疫|r
.target Aelthalyste
step
.goto Undercity,53.74,54.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝尔杜加|r
.accept 1013 >>接任务: |cRXP_WARN_乌尔之书|r
.target Keeper Bel'dugur
.dungeon SFK
step
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓
.target Michael Garrett
.zoneskip Silverpine Forest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Allister, |cRXP_FRIENDLY_药剂师伦弗利尔|r, |cRXP_FRIENDLY_姆拉|r
.accept 480 >>接任务: |cRXP_WARN_法师的头领|r
.accept 516 >>接任务: |cRXP_WARN_博伦的巢穴|r
.goto Silverpine Forest,43.98,40.93
.accept 493 >>接任务: |cRXP_LOOT_前往希尔斯布莱德丘陵|r
.goto Silverpine Forest,42.90,40.80
.turnin 3301 >>交任务: |cRXP_FRIENDLY_茉拉·符文图腾|r
.goto Silverpine Forest,42.90,41.99
.target Shadow Priest Allister
.target Apothecary Renferrel
.target Mura Runetotem
.isQuestTurnedIn 479
.group
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Allister, |cRXP_FRIENDLY_药剂师伦弗利尔|r, |cRXP_FRIENDLY_姆拉|r
.accept 516 >>接任务: |cRXP_WARN_博伦的巢穴|r
.goto Silverpine Forest,43.98,40.93
.accept 493 >>接任务: |cRXP_LOOT_前往希尔斯布莱德丘陵|r
.goto Silverpine Forest,42.90,40.80
.turnin 3301 >>交任务: |cRXP_FRIENDLY_茉拉·符文图腾|r
.goto Silverpine Forest,42.90,41.99
.target Shadow Priest Allister
.target Apothecary Renferrel
.target Mura Runetotem
step << Druid
#completewith next
.goto Silverpine Forest,36.12,28.30,120 >>向东北方向驶向大海
step << Druid
.goto Silverpine Forest,29.58,29.30
>>将|cRXP_PICK_Strange Lockbox |r放入水中，用于|T133442:0|t[水上耐力的半挂件]

.collect 15882,1,30,1 

step
#completewith next
.goto Silverpine Forest,46.07,85.75,100 >>向南前往Greymane Wall
step
.goto Silverpine Forest,46.07,85.75
>>杀死|cRXP_ENEMY_Valdred Moray|r。掠夺他的|cRXX_Loot_Hands|r
>>|cRXP_WARN_他四处巡逻。Solo拉住他，小心分组的暴徒|r
.complete 530,1 
.unitscan Valdred Moray
.isOnQuest 530
step
#completewith next
.goto Silverpine Forest,60.35,74.54,40 >>前往贝伦危险的洞穴
step
.goto Silverpine Forest,60.38,72.43,20,0
.goto Silverpine Forest,59.73,71.73,15,0
.goto Silverpine Forest,59.52,70.66,15,0
.goto Silverpine Forest,58.71,71.34,15,0
.goto Silverpine Forest,58.26,71.99,15,0
.goto Silverpine Forest,57.65,71.61,15,0
.goto Silverpine Forest,57.30,69.96,30,0
.goto Silverpine Forest,59.73,71.73
>>杀死|cRXP_ENEMY_Ravenclaw Drudger|r和|cRXX_ENEMY_Ravenclaw Guardians|r
.complete 516,1 
.complete 516,2 
.mob Ravenclaw Drudger
.mob Ravenclaw Guardian
step
#completewith next
.goto Silverpine Forest,62.10,64.42,80 >>Travel toward Ambermill
.isOnQuest 480
.group
step
.goto Silverpine Forest,62.10,64.42,20,0
.goto Silverpine Forest,62.91,63.95,10,0
.goto Silverpine Forest,63.22,63.45,10,0
.goto Silverpine Forest,63.40,64.26
>>进入市政厅并杀死|cRXP_ENEMY_大法师阿塔里克|r。抢走他的|cRXX_Loot_Staff|r
>>|cRXP_WARN_里面有很多暴徒。小心地把它们拉出房间|r
.complete 480,1 
.mob Archmage Ataeric
.isOnQuest 480
.group 2
step
#completewith next
.zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
.zoneskip Hillsbrad Foothills
step
.goto Hillsbrad Foothills,20.79,47.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵莱什|r
.accept 494 >>接任务: |cRXP_LOOT_进攻的时机|r
.target Deathstalker Lesh
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >>Travel to Tarren Mill
step
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fp Tarren Mill>>获取Tarren Mill飞行路线
.target Zarise
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟尔格·希诺特|r
.turnin 2479 >>交任务: |cRXP_FRIENDLY_希诺特的帮助|r
.accept 2480 >>接任务: |cRXP_WARN_希诺特的帮助|r
.target Serge Hinott
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>>等待|cRXP_FRIENDLY_Hinott|r完成固化
.complete 2480,1 
step << Rogue
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟尔格·希诺特|r
.turnin 2480 >>交任务: |cRXP_FRIENDLY_希诺特的帮助|r
.target Serge Hinott
step << Rogue
#completewith TarrenMillPickups
.cast 10723 >>使用|T134807:0|t[Hinot's Oil]治疗|T136230:0|t[TTouch of Zanzil]
step << Rogue
#completewith TarrenMillPickups
>>工艺|T132273:0|t[速毒]
.collect 6947,20,1067,1 
step
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师林度恩|r
.turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
.turnin 1065 >>交任务: |cRXP_FRIENDLY_塔伦米尔之旅|r
.accept 1066 >>接任务: |cRXP_LOOT_无辜者之血|r
.accept 496 >>接任务: |cRXP_LOOT_受难药剂|r
.accept 501 >>接任务: |cRXP_LOOT_痛苦药剂|r
.target Apothecary Lydon
step << Shaman
.goto Hillsbrad Foothills,62.18,20.78
.use 7768 >>在Tarren Mill中间的井处使用|T132829:0|t[空的红色水皮]
.complete 1536,1 
step
.goto Hillsbrad Foothills,62.20,20.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
.accept 527 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.20,20.50
.target High Executor Darthalia
step
.goto Hillsbrad Foothills,62.60,20.70
>>单击|cRXP_FRIENDLY_Wanted海报|r
.accept 549 >>接任务: |cRXP_LOOT_通缉：辛迪加成员|r
step
.goto Hillsbrad Foothills,63.20,20.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.accept 498 >>接任务: |cRXP_LOOT_拯救行动|r
.target Krusk
step
#label TarrenMillPickups
.goto Hillsbrad Foothills,62.50,19.70
>>单击|cRXP_FRIENDLY_Wanted海报|r
.accept 567 >>接任务: |cRXP_LOOT_危险！|r
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
.collect 2515,1800,549,1 << Hunter 
.target Kayren Soothallow
.xp >25,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
.collect 3030,1800,549,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step << Shaman/Warrior
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ott|r|cRXP_BUY_交谈。从他那里买一把|r|T132408:0|t[Merciless Axe]如果它用完了，但你还没有|r
.collect 12249,1,549,1 
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Ott
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ott|r|cRXP_BUY_交谈。从他那里买一把|r|T135640:0|t[宽刃刀]如果它用完了，但你还没有|r
.collect 12247,1,549,1 
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
step << Hunter
#completewith next
.goto Hillsbrad Foothills,62.31,19.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Theodore交谈|r
.stable >>稳定你的宠物。你很快就会驯服一只|cRXP_ENEMY_Gray Bear|r
.target Theodore Mont Claire
step << Hunter
.goto Hillsbrad Foothills,57.93,27.85,60,0
.goto Hillsbrad Foothills,58.88,32.28,60,0
.goto Hillsbrad Foothills,61.77,36.16,60,0
.goto Hillsbrad Foothills,57.93,27.85
.cast 1515 >>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXX_ENEMY_Gray Bear|r驯服它|r
.train 16829 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级3）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Gray Bear
step << Hunter
.goto Hillsbrad Foothills,62.31,19.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Theodore交谈|r
.stable >>放弃|cRXP_ENEMY_Gray Bear|r并取回您的普通宠物
.target Theodore Mont Claire
step << Rogue
#completewith Durnholde1
.cast 8679 >>在武器上使用|T132273:0|t[即时毒药]
.itemcount 6947,2
step
#completewith next
>>杀死途中的|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Spiders|r。掠夺他们的|cRXP_Loot_Tongues|r和|cRXX_Loot_Ichor|r
>>|cRXP_WARN_避免|r|cRXP_ENEMY_年长灰熊|r|cRXP_WARN_and|r| cRXP__ENEMY_巨型苔藓爬行器|r|d它们的等级很高，不值得杀死|r
.complete 496,1 
.complete 496,2 
.mob Forest Moss Creeper
.mob Gray Bear
.mob Vicious Gray Bear
step
#label Durnholde1
.goto Hillsbrad Foothills,76.57,46.48,120 >>Run to Durnholde Keep
step
#completewith Drull
>>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_Watchmen|r和|cRXP_ENEMY_Shadow法师|r。
>>掠夺|cRXP_ENEMY_Shadow法师|r以获得他们的|cRXX_Loot_无辜血瓶|r
.complete 549,1 
.complete 549,2 
.complete 1066,1 
.mob Syndicate Rogue
.mob Syndicate Watchman
.mob Syndicate Shadow Mage
step
#completewith Togthar
.goto Hillsbrad Foothills,79.55,41.85,15,0
>>杀死|cRXP_ENEMY_Jailer Eston|r。抢走他的|cRXX_Loot_铁钥匙|r
>>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'ar的|r兵营前找到|r
.collect 3467,1,498,1 
.mob Jailor Eston
step
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19
>>杀死|cRXP_ENEMY_Jailr Marlgen|r。抢走他的|cRXX_Loot_金钥匙|r
>>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的前面或塔的底部找到|r
.collect 3499,1,498,2 
.mob Jailor Marlgen
step
#label Togthar
.goto Hillsbrad Foothills,79.79,39.65
>>单击地面上的|cRXP_PICK_Ball and Chain |r
.complete 498,2 
step << Rogue/Hunter/Shaman
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>从她那里购买|T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]和|T132603:0|t[|cRXP-FRIENDLY_Wolf Bracers|r]
.vendor >>供应商和维修
.target Kris Legace
.money <1.1374
.itemcount 4831,<1
.itemcount 4794,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman/Druid
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>从她那里购买|T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]，如果它们已经用完
.vendor >>供应商和维修
.target Kris Legace
.money <0.7859
.itemcount 4831,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue/Hunter/Shaman/Druid
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>从她那里购买|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]（如果有）
.vendor >>供应商和维修
.target Kris Legace
.money <0.3515
.itemcount 4794,<1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman/Druid
#completewith Drull
+装备|T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]和|T132603:0|t[|cRXP-FRIENDLY_Wolf Bracers|r]
.use 4831
.use 4794
.itemcount 4831,1
.itemcount 4794,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman/Druid
#completewith Drull
+装备|T134590:0|t[|cRXP_FRIENDLY_Stalking长裤|r]
.use 4831
.itemcount 4831,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue/Hunter/Shaman/Druid
#completewith Drull
+装备|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
.use 4794
.itemcount 4794,1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << !Rogue !Hunter !Shaman !Druid
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
.vendor >>供应商和维修
.target Kris Legace
step
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63
>>杀死|cRXP_ENEMY_Jailer Eston|r。抢走他的|cRXX_Loot_铁钥匙|r
>>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的兵营前找到，也可以在|r|cRXP-FRIENDLY_Drull前找到|r
.collect 3467,1,498,1 
.mob Jailor Eston
step
#label Drull
.goto Hillsbrad Foothills,75.33,41.50
>>单击地面上的|cRXP_PICK_Ball and Chain |r
.complete 498,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r
.complete 549,1 
.complete 549,2 
.mob Syndicate Rogue
.mob Syndicate Watchman
step
.loop 25,Hillsbrad Foothills,67.88,47.93,67.06,50.84,66.24,48.79,65.36,48.65,64.86,47.05,65.37,46.46,66.13,45.63,67.22,45.85
>>杀死|cRXP_ENEMY_Syndicate影子法师|r。掠夺他们的|cRXP_Loot_Vials|r
>>|cRXP_WARN_它们中的更多可以在城堡西南部的塔楼上找到|r
.complete 1066,1 
.mob Syndicate Shadow Mage
step
.loop 25,Hillsbrad Foothills,67.88,47.93,67.06,50.84,66.24,48.79,65.36,48.65,64.86,47.05,65.37,46.46,66.13,45.63,67.22,45.85
>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r
>>|cRXP_WARN_它们中的更多可以在城堡西南部的塔楼上找到|r
.complete 549,1 
.complete 549,2 
.mob Syndicate Rogue
.mob Syndicate Watchman
step
#completewith TarrenMillTurnins1
>>在返回塔伦磨坊的途中杀死|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Spiders|r。掠夺他们的|cRXP_Loot_Tongues|r和|cRXX_Loot_Ichor|r
>>|cRXP_WARN_避免|r|cRXP_ENEMY_年长灰熊|r|cRXP_WARN_and|r| cRXP__ENEMY_巨型苔藓爬行器|r|d它们的等级很高，不值得杀死|r
.complete 496,1 
.complete 496,2 
.mob Forest Moss Creeper
.mob Gray Bear
.mob Vicious Gray Bear
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, |cRXP_FRIENDLY_克鲁斯克|r
.turnin 1066 >>交任务: |cRXP_FRIENDLY_无辜者之血|r
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.goto Hillsbrad Foothills,61.50,19.20
.turnin 549 >>交任务: |cRXP_FRIENDLY_通缉：辛迪加成员|r
.goto Hillsbrad Foothills,62.20,20.50
.turnin 498 >>交任务: |cRXP_FRIENDLY_拯救行动|r
.goto Hillsbrad Foothills,63.20,20.70
.target Apothecary Lydon
.target High Executor Darthalia
.target Krusk
.isQuestComplete 496
step
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.isQuestTurnedIn 496
step
.goto Hillsbrad Foothills,61.55,19.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌比|r
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.target Umpi
.isQuestTurnedIn 496
step
#label TarrenMillTurnins1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, |cRXP_FRIENDLY_克鲁斯克|r
.turnin 1066 >>交任务: |cRXP_FRIENDLY_无辜者之血|r
.goto Hillsbrad Foothills,61.50,19.20
.turnin 549 >>交任务: |cRXP_FRIENDLY_通缉：辛迪加成员|r
.goto Hillsbrad Foothills,62.20,20.50
.turnin 498 >>交任务: |cRXP_FRIENDLY_拯救行动|r
.goto Hillsbrad Foothills,63.20,20.70
.target Apothecary Lydon
.target High Executor Darthalia
.target Krusk
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
.collect 2515,1800,527,1 << Hunter 
.target Kayren Soothallow
.xp >25,1
.itemcount 2515,<1000
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
.collect 3030,1800,527,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
.itemcount 3030,<1000
step
#completewith next
>>在前往希尔斯堡战场的途中杀死|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Mountain Lions |r。掠夺他们的|cRXP_Loot_Tongues|r和|cRXX_Loot_Blood|r
.complete 496,1 
.complete 501,1 
.mob Gray Bear
.mob Vicious Gray Bear
.mob Starving Mountain Lion
step
.goto Hillsbrad Foothills,36.02,39.19,150 >>跑到希尔斯堡球场
.isOnQuest 527
step
#completewith FarmerRay
>>杀死田地内和周围的|cRXP_ENEMY_Hillsbrad Farmers|r和|cRXX_ENEMY_Hilsbrad农场工人|r
.complete 527,1 
.complete 527,2 
.mob Hillsbrad Farmer
.mob Hillsbrad Farmhand
step
.goto Hillsbrad Foothills,36.7,39.4,60,0
.goto Hillsbrad Foothills,35.2,37.6,45,0
.goto Hillsbrad Foothills,35.1,41.0,60,0
.goto Hillsbrad Foothills,36.7,39.4,60,0
.goto Hillsbrad Foothills,35.2,37.6,45,0
.goto Hillsbrad Foothills,35.1,41.0,60,0
.goto Hillsbrad Foothills,36.7,39.4
>>杀死|cRXP_ENEMY_Farmer Getz|r。他可以在房子、谷仓或田地里
.complete 527,4 
.unitscan Farmer Getz
step
#label FarmerRay
.goto Hillsbrad Foothills,33.65,35.44,30,0
.goto Hillsbrad Foothills,32.90,35.23,10,0
.goto Hillsbrad Foothills,33.23,34.65,10,0
.goto Hillsbrad Foothills,32.69,34.77,8,0
.goto Hillsbrad Foothills,32.88,34.99,8,0
.goto Hillsbrad Foothills,33.28,34.65
>>杀死|cRXP_ENEMY_Farmer Ray|r
>>|cRXP_WARN_它可以在外面的葡萄藤下或房子的一楼或二楼产卵|r
.complete 527,3 
.unitscan Farmer Ray
step
.goto Hillsbrad Foothills,31.30,37.08,40,0
.goto Hillsbrad Foothills,33.81,40.91,40,0
.goto Hillsbrad Foothills,35.49,40.36,40,0
.goto Hillsbrad Foothills,31.30,37.08
>>杀死田地内和周围的|cRXP_ENEMY_Hillsbrad Farmers|r和|cRXX_ENEMY_Hilsbrad农场工人|r
.complete 527,1 
.complete 527,2 
.mob Hillsbrad Farmer
.mob Hillsbrad Farmhand
step
#completewith next
>>杀死|cRXP_ENEMY_Bears|r。掠夺他们的|cRXX_Loot_Tongues|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
step
.loop 25,Hillsbrad Foothills,39.79,34.43,38.70,36.71,38.45,38.77,39.88,40.56,37.97,44.59,39.92,45.83,40.91,44.23,42.56,40.19,43.36,39.38,51.28,35.37,54.29,31.75,52.93,29.45,54.77,28.72
>>完成杀戮|cRXP_ENEMY_Mountain Lions |r。掠夺它们的|cRXX_Loot_Blood|r
.complete 501,1 
.mob Starving Mountain Lion
step
#completewith TarrenMillTurnins2
>>在返回塔伦工厂的途中杀死|cRXP_ENEMY_Bears|r。掠夺他们的|cRXP_Loot_Tongues|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.goto Hillsbrad Foothills,61.50,19.20
.turnin 527 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.20,20.50
.accept 546 >>接任务: |cRXP_LOOT_死亡的纪念品|r
.goto Hillsbrad Foothills,62.11,19.68
.target Apothecary Lydon
.target High Executor Darthalia
.target Deathguard Samsa
.isQuestComplete 496
step
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.isQuestTurnedIn 496
step
.goto Hillsbrad Foothills,61.55,19.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌比|r
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.target Umpi
.isQuestTurnedIn 496
step
#label TarrenMillTurnins2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.goto Hillsbrad Foothills,61.50,19.20
.turnin 527 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.20,20.50
.accept 546 >>接任务: |cRXP_LOOT_死亡的纪念品|r
.goto Hillsbrad Foothills,62.11,19.68
.target Apothecary Lydon
.target High Executor Darthalia
.target Deathguard Samsa
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step
#completewith next
>>在返回希尔斯堡战场的途中杀死|cRXP_ENEMY_Bears|r。掠夺他们的|cRXP_Loot_Tongues|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
step
.goto Hillsbrad Foothills,36.02,39.19,150 >>跑到希尔斯堡球场
.isOnQuest 528
step
#completewith Kalaba
>>杀死|cRXP_ENEMY_Hillsbrad人类|r。掠夺他们的|cRXX_Loot_Sulls|r。
>>|cRXP_WARN_现在不需要完成此任务|r
.complete 546,1,17 
step
#completewith next
.goto Hillsbrad Foothills,32.67,35.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦雷|r
>>|cRXP_WARN_等待RP结束，然后杀死|r|cRXP_ENEMY_Enraged Stanley|r
>>|cRXP_ENEMY_愤怒的Stanley |r|cRXP_WARN_获得了完整任务的经验|r
.turnin 502 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.timer 9,Stanley RP (BE ALERT)
.mob Stanley
step
.line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
.goto Hillsbrad Foothills,36.54,39.44,40,0
.goto Hillsbrad Foothills,35.36,38.73,40,0
.goto Hillsbrad Foothills,33.98,38.78,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.58,38.17,40,0
.goto Hillsbrad Foothills,32.66,36.08,40,0
.goto Hillsbrad Foothills,32.92,35.25,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.65,41.12,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,30.53,40.56,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.41,43.85,40,0
.goto Hillsbrad Foothills,32.46,44.59,40,0
.goto Hillsbrad Foothills,32.29,45.13,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,36.54,39.44
>>杀死|cRXP_ENEMY_Citizen Wilkes |r
>>|cRXP_WARN_他在镇上的道路上巡逻|r
.complete 567,2 
.unitscan Citizen Wilkes
.unitscan Enraged Stanley
step
.goto Hillsbrad Foothills,32.67,35.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦雷|r
>>|cRXP_WARN_等待RP结束，然后杀死|r|cRXP_ENEMY_Enraged Stanley|r
>>|cRXP_ENEMY_愤怒的Stanley |r|cRXP_WARN_获得了完整任务的经验|r
.turnin 502 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.timer 9,Stanley RP (BE ALERT)
.mob Stanley
step
#completewith next
>>杀死|cRXP_ENEMY_Hillsbrad农民|r
.complete 528,1 
.mob Hillsbrad Peasant
step
#label Kalaba
.goto Hillsbrad Foothills,36.00,46.50
>>杀死|cRXP_ENEMY_Farmer Kalaba|r
.complete 567,4 
.mob Farmer Kalaba
step
.loop 25,Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
>>杀死|cRXP_ENEMY_Hillsbrad农民|r
.complete 528,1 
.mob Hillsbrad Peasant
step
.loop 25,Hillsbrad Foothills,40.88,33.87,40.86,37.40,40.85,39.42,38.50,38.04,37.68,41.23,38.71,42.66,40.40,44.65,44.39,41.34,45.23,39.62,43.87,37.01,49.75,34.33,52.06,36.86,51.91,32.97,52.39,29.27,57.38,22.85,57.09,25.67,58.08,28.07,56.88,28.85,59.68,30.90,57.71,34.06,59.89,36.74,62.63,37.64,64.73,38.03,66.52,34.52
>>完成杀死|cRXP_ENEMY_Bears|r。掠夺他们的|cRXX_Loot_Tongues|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
step
.loop 25,Hillsbrad Foothills,62.85,38.74,62.24,39.96,60.92,37.92,59.62,33.33,56.88,29.73,59.80,27.72,57.63,24.16,56.47,16.42,59.36,14.55,60.54,13.67,62.65,12.90,64.43,10.22,65.18,6.93,65.31,5.76,66.90,9.02,70.39,8.89,68.86,10.18,67.35,12.95,71.38,19.81,71.78,21.89,64.85,24.92,66.68,28.15,69.76,31.89,67.62,37.65,62.85,38.74
>>完成杀死|cRXP_ENEMY_Forest Moss Creeper|r和|cRXX_ENEMY_Giant Moss Creeps|r。掠夺它们的|cRXD_Loot_Ichor|r
.complete 496,2 
.mob Forest Moss Creeper
.mob Giant Moss Creeper
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r and |cRXP_FRIENDLY_Darthalia|r
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r
.goto Hillsbrad Foothills,61.50,19.20
.turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.20,20.50
.target Apothecary Lydon
.target High Executor Darthalia
.isQuestComplete 496
step
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.isQuestTurnedIn 496
step
.goto Hillsbrad Foothills,61.55,19.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌比|r
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.target Umpi
.isQuestTurnedIn 496
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r and |cRXP_FRIENDLY_Darthalia|r
.accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r
.goto Hillsbrad Foothills,61.50,19.20
.turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.20,20.50
.target Apothecary Lydon
.target High Executor Darthalia
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
.collect 2515,1800,516,1 << Hunter 
.target Kayren Soothallow
.xp >25,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
.collect 3030,1800,516,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
step << Shaman/Warrior
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ott|r|cRXP_BUY_交谈。从他那里买一把|r|T132408:0|t[Merciless Axe]如果它用完了，但你还没有|r
.collect 12249,1,516,1 
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Ott
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ott|r|cRXP_BUY_交谈。从他那里买一把|r|T135640:0|t[宽刃刀]如果它用完了，但你还没有|r
.collect 12247,1,516,1 
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
step
#completewith BerensPerilTurnin
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly The Sepulcher>>飞向坟墓
.target Zarise
.zoneskip Silverpine Forest
step
#sticky
#completewith EnterSFK
.subzone 310 >>现在你应该在寻找一个团体来保持影方
.dungeon SFK
step
.goto Silverpine Forest,43.98,40.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r
.turnin 480 >>交任务: |cRXP_FRIENDLY_法师的头领|r
.turnin 516 >>交任务: |cRXP_FRIENDLY_博伦的巢穴|r
.target Shadow Priest Allister
.isQuestComplete 480
.group
step
#label BerensPerilTurnin
.goto Silverpine Forest,43.98,40.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r
.turnin 516 >>交任务: |cRXP_FRIENDLY_博伦的巢穴|r
.target Shadow Priest Allister
step
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官哈德瑞克|r
.accept 1098 >>接任务: |cRXP_WARN_影牙城堡里的亡灵哨兵|r
.target High Executor Hadrec
.dungeon SFK
step
.goto Silverpine Forest,44.22,39.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
.accept 1014 >>接任务: |cRXP_WARN_除掉阿鲁高|r
.target Dalar Dawnweaver
.dungeon SFK
step
#label EnterSFK
.goto Silverpine Forest,44.87,67.86
.zone 310 >>进入SFK实例门户。区域在
.dungeon SFK
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent|r
.turnin 1098 >>交任务: |cRXP_FRIENDLY_影牙城堡里的亡灵哨兵|r
.target Deathstalker Vincent
.dungeon SFK
.isOnQuest 1098
step
>>从吞噬者|cRXP_ENEMY_Fenrus|r房间的书架上偷走|cRX_PICK_ Ur|r之书
.complete 1013,1 
.dungeon SFK
.isOnQuest 1013
step
>>杀死|cRXP_ENEMY_Arugal|r大法师。掠夺他的|cRXX_Loot_Head |r
.complete 1014,1 
.mob Archmage Arugal
.dungeon SFK
.isOnQuest 1014
step
#completewith FlytoUC
.goto Silverpine Forest,45.51,41.26,100 >>Travel to The Sepulcher
.dungeon SFK
step
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官哈德瑞克|r
.turnin 1098 >>交任务: |cRXP_FRIENDLY_影牙城堡里的亡灵哨兵|r
.target High Executor Hadrec
.dungeon SFK
.isQuestComplete 1098
step
.goto Silverpine Forest,44.22,39.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
.turnin 1014 >>交任务: |cRXP_FRIENDLY_除掉阿鲁高|r
.target Dalar Dawnweaver
.dungeon SFK
.isQuestComplete 1014
step << Mage
#completewith HusbandsRevenge
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
step << !Mage
#label FlytoUC
#completewith next
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >>Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
step
#label HusbandsRevenge
.goto Undercity,62.02,42.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh|r
.turnin 530 >>交任务: |cRXP_FRIENDLY_丈夫的复仇|r
.target Raleigh Andrean
.isQuestComplete 530
step
.goto Undercity,65.99,44.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉|r
.bankdeposit 3692 >>存放您的|T133730:0|t[|cRXP_LOOT_Hillsbrad人类头骨|r]
.bankwithdraw 5075 >>收回您的|T134128:0|t[血碎片]
.bankwithdraw 5099 >>收回你的|T132938:0|t[挖爪]
.target William Montague
step
.goto Undercity,53.74,54.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝尔杜加|r
.turnin 1013 >>交任务: |cRXP_FRIENDLY_乌尔之书|r
.target Keeper Bel'dugur
.dungeon SFK
.isQuestComplete 1013
step << Warrior
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 5308 >>训练你的职业技能
.target Angela Curthas
.xp <24,1
.xp >26,1
step << Warrior
#optional
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 6178 >>训练你的职业技能
.target Angela Curthas
.xp <26,1
step << Rogue
.goto Undercity,75.19,51.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ezekiel|r|cRXP_BUY_交谈。从他那里购买|r|T133849:0|t[衰变的灰尘]|cRXP_Buy_和|r|T132793:0|t[Empty Vials]|r
.collect 2928,40,1067,1 
.collect 3371,40,1067,1 
.target Ezekiel Graves
step << Rogue
#completewith ThunderBluffHS
>>工艺|T132273:0|t[速毒]
.collect 6947,40,1067,1 
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 6762 >>训练你的职业技能
.target Carolyn Ward
.xp <24,1
.xp >26,1
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 1833 >>训练你的职业技能
.target Carolyn Ward
.xp <26,1
step << Warlock
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 6223 >>训练你的职业技能
.target Richard Kerwin
.xp <24,1
.xp >26,1
step << Warlock
#optional
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 1456 >>训练你的职业技能
.target Richard Kerwin
.xp <26,1
step << Druid
#completewith next
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
.goto Moonglade,36.026,41.374
>>|cRXP_WARN_在雷穆洛斯神殿为海狮的|r|cRXP_LOOT_吊坠组合两个吊坠|r
.collect 15882,1,30,1,1
.collect 15883,1,30,1,1
.complete 30,1 
step << Druid
.goto Moonglade,56.21,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
.turnin 30 >>交任务: |cRXP_FRIENDLY_海狮试炼|r
.accept 31 >>接任务: |cRXP_LOOT_水栖形态|r
.target Dendrite Starblaze
step
#label ThunderBluffHS
.hs >>火炉到雷霆崖
.use 6948
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde-
#name 25-27南部荒地/石爪
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 20-30
#next 27-29 Ashenvale
step
#optional
.abandon 480 >>Abandon The Weaver
.isOnQuest 480
step
#optional
.abandon 1013 >>Abandon The Book of Ur
.isOnQuest 1013
.dungeon SFK
step
#optional
.abandon 1014 >>Abandon Arugal Must Die
.isOnQuest 1014
.dungeon SFK
step
#optional
.abandon 1098 >>在影坊抛弃死亡追踪者
.isOnQuest 1098
.dungeon SFK
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Delgo|r|cRXP_BUY_交谈。从他那里买一把|r|T132408:0|t[Merciless Axe]如果有，但你在Hillsbrad没有买到|r
.collect 12249,1,868,1 
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
step << Hunter
#completewith HunterTraining26
.goto Thunder Bluff,61.31,78.25,80 >>猎人崛起之旅
step << Hunter
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14262 >>训练你的职业技能
.target Urek Thunderhorn
.xp <24,1
.xp >26,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 3045 >>训练你的职业技能
.target Urek Thunderhorn
.xp <26,1
step << Hunter
#label HunterTraining26
.goto Thunder Bluff,54.07,84.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24558 >>训练你的宠物法术
.target Hesuwa Thunderhorn
step << Druid
#completewith next
.goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
step << Druid
.goto Thunder Bluff,76.48,27.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.trainer >>训练你的职业技能
.turnin 31 >>交任务: |cRXP_FRIENDLY_水栖形态|r
.target Turak Runetotem
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna|r|cRXP_BUY_交谈。从她那里购买|r|T135495:0|t[Strurdy Recurve Bow]（如果有）|r
.collect 11306,1,868,1 
.money <1.9467
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
step
#completewith next
.goto Thunder Bluff,28.14,32.97,40,0
.goto Thunder Bluff,28.51,28.95,10 >>前往灵魂之旅崛起，进入视野之池
step
.goto Thunder Bluff,22.90,21.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
.turnin 1067 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
.accept 1086 >>接任务: |cRXP_LOOT_地精空港|r
.target Apothecary Zamah
step << Priest
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 3747 >>训练你的职业技能
.target Miles Welsh
.xp <24,1
.xp >26,1
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 992 >>训练你的职业技能
.target Miles Welsh
.xp <26,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 8400 >>训练你的职业技能
.target Archmage Shymm
.xp <24,1
.xp >26,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 120 >>训练你的职业技能
.target Archmage Shymm
.xp <26,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 905 >>训练你的职业技能
.target Tigor Skychaser
.xp <24,1
.xp >26,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 8190 >>训练你的职业技能
.target Tigor Skychaser
.xp <26,1
step
#completewith next
+创建|T133688:0|t[羊毛绷带]直到你的技能达到115或更高
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
.train 3278 >>火车|T133687:0|t[厚羊毛绷带]
.target Pand Stonebinder
.skill firstaid,<1,1
step
#optional
#completewith FlytoCampT2
>>放弃死亡食谱
.abandon 264 >>放弃死亡食谱
.isOnQuest 264
step
#optional
#completewith FlytoCampT2
>>Abandon Mura Runetotem
.abandon 3301 >>Abandon Mura Runetotem
.isOnQuest 264
step
.goto Thunder Bluff,54.96,51.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞金·石蹄|r
.accept 1195 >>接任务: |cRXP_WARN_神圣之火|r
.target Zangen Stonehoof
step
#label FlytoCampT2
#completewith CampTHS2
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,44.55,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
.accept 879 >>接任务: |cRXP_LOOT_内奸|r
.target Mangletooth
step
#completewith CampTHS2
+|cRXP_WARN_使用剩余的|r|T134128:0|t[血碎片]|cRXP_WARN_toget|r|T136104:0|t[Razorhide]|cRXP_WARN_andother buffs|r << !Mage !Druid
+|cRXP_WARN_使用剩余的|r|T134128:0|t[血碎片]|cRXP_WARN_to获得buff|r << Mage/Druid
+|cRXP_WARN_请确保关闭Questie或Leatrix Plus等插件的任何自动完成功能！|r
.addquestitem 4075,5052
step
.goto The Barrens,44.85,59.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
.accept 6382 >>接任务: |cRXP_WARN_灰谷狩猎|r
.target Jorn Skyseer
step << Warrior
.goto The Barrens,44.67,59.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁迦·暴怒图腾|r
.turnin 1823 >>交任务: |cRXP_FRIENDLY_和鲁迦交谈|r
.accept 1824 >>接任务: |cRXP_LOOT_巨人旷野的试炼|r
.target Ruga Ragetotem
step
#label CampTHS2
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.home >>将您的炉石设置为陶拉霍营地
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Byula
step
.goto The Barrens,44.63,62.71,80,0
.goto The Barrens,45.78,63.09,80,0
.goto The Barrens,49.57,59.36
>>在该区域周围找到并杀死|cRXP_ENEMY_Owatanka|r（蓝雷蜥蜴）。抢劫他|T133723:0|t[|cRXP_Loot_Owatanka的尾钉|r]。使用它开始任务
>>|cRXP_WARN_如果找不到他，请跳过此任务|r
.collect 5102,1,884 
.accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
.use 5102
.unitscan Owatanka
step << Warrior
.loop 25,The Barrens,45.17,69.08,43.87,68.84,42.17,69.65,42.35,71.85,42.77,72.28,43.86,72.06,45.38,72.25,45.17,69.08
>>杀死|cRXP_ENEMY_Silithid保护器|r，|cRXD_ENEMY_Silithid Swarmers |r，| cRXP__ENEMY_Silihid Creepers |r和|cRXP_ENEMY_ Silithid Grubs|r。掠夺它们的|T133027:0|t[Twitching Antenna]
>>|cRXP_WARN_注意：|T133027:0|t[Twitching Antenna]只有15分钟的持续时间，在此任务期间不要AFK或注销|r
.complete 1824,1 
.mob Silithid Protector
.mob Silithid Swarmer
.mob Silithid Creeper
.mob Silithid Grub
step << Warrior
.goto The Barrens,44.67,59.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁迦·暴怒图腾|r
>>|cRXP_WARN_Skip the follow-up|r
.turnin 1824 >>交任务: |cRXP_FRIENDLY_巨人旷野的试炼|r
.target Ruga Ragetotem
step
#completewith next
>>杀死|cRXP_ENEMY_Silithid Harvester |r。为|T134321:0|t[|cRXP-Loot_HHarvester的头部|r]掠夺它。使用它开始任务
>>|cRXP_WARN_如果找不到他，请跳过此任务|r
.collect 5138,1,897,1 
.accept 897 >>接任务: |cRXP_LOOT_收割者|r
.use 5138
.unitscan Silithid Harvester
step
#label SilithidEggs
.goto The Barrens,45.04,69.85,60,0
.goto The Barrens,42.91,69.86,60,0
.goto The Barrens,42.97,71.11,60,0
.goto The Barrens,45.36,72.36,60,0
.goto The Barrens,47.40,70.11,60,0
.goto The Barrens,48.40,70.08,60,0
.goto The Barrens,42.91,69.86
>>掠夺|cRXP_PICK_Silithid土丘|r以换取|cRXP_Loot_Silithid蛋|r
.complete 868,1 
step
#completewith Gann1
>>杀死|cRXP_ENEMY_Stormhides|r。掠夺它们的|cRXX_Loot_LightGlands|r
>>杀死|cRXP_ENEMY_Greater Thunderhawks|r。掠夺它们获得|cRXX_Loot_Silva Gland|r
>>杀死|cRXP_ENEMY_Kodos|r。掠夺它们以获得|cRXX_Loot_Kodo肝脏|r
.complete 822,1 
.complete 822,2 
.complete 822,3 
.mob Stormhide
.mob Greater Thunderhawk
.mob Barrens Kodo
.mob Greater Barrens Kodo
.mob Wooly Kodo
step << Shaman
#completewith next
.goto The Barrens,44.76,74.79,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step << Shaman
#completewith next
.goto The Barrens,43.84,77.28,25,0
.goto The Barrens,43.62,77.29,25,0
.goto The Barrens,43.42,77.41,15 >>前往|cRXP_FRIENDLY_Brine|r
step << Shaman
.goto The Barrens,43.42,77.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞恩|r
.turnin 1536 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 1534 >>接任务: |cRXP_LOOT_水之召唤|r
.target Brine
step
#completewith next
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#label Gann1
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.14,75.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
.accept 843 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
step
#completewith Lok
>>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。为|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]掠夺它们
>>杀死|cRXP_ENEMY_Razomane Seers|r。掠夺它们一个|T135139:0|t[|cRXP-Loot_Charred Razomanne Wand|r]
>>杀死|cRXP_ENEMY_Razormane Warfrenzies|r。掠夺它们一个|T134955:0|t[|cRXX_Loot_Razarmane War Shield |r]
>>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
.complete 893,1 
.complete 893,2 
.complete 893,3 
.mob Razormane Stalker
.mob Razormane Pathfinder
.mob Razormane Seer
.mob Razormane Warfrenzy
step
#completewith next
.goto The Barrens,44.85,78.81,45,0
.goto The Barrens,44.44,78.97,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
.goto The Barrens,44.06,80.02,45,0
.goto The Barrens,43.91,80.46,45,0
.goto The Barrens,44.03,80.38,45,0
.goto The Barrens,44.16,80.46,45,0
.goto The Barrens,44.31,80.79,45,0
.goto The Barrens,44.66,80.49,45,0
.goto The Barrens,45.10,80.30,45,0
.goto The Barrens,45.52,80.47,45,0
.goto The Barrens,45.46,80.91,45,0
.goto The Barrens,44.83,80.95,45,0
.goto The Barrens,44.15,81.44,45,0
.goto The Barrens,43.79,81.40,45,0
.goto The Barrens,43.63,80.97,45,0
.goto The Barrens,43.49,80.48,45,0
.goto The Barrens,43.24,80.49,45,0
.goto The Barrens,42.82,80.23,45,0
.goto The Barrens,42.65,79.87,45,0
.goto The Barrens,43.07,78.98,45,0
.goto The Barrens,43.48,78.95,45,0
.goto The Barrens,43.66,79.12,45,0
.goto The Barrens,43.80,79.46,45,0
.goto The Barrens,44.43,78.71,45,0
.goto The Barrens,44.89,78.87,45,0
.goto The Barrens,45.12,79.20,45,0
.goto The Barrens,45.05,79.75,45,0
.goto The Barrens,44.83,79.87,45,0
.goto The Barrens,44.37,79.85
.loop 25,The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
>>杀死|cRXP_ENEMY_Kuz|r。掠夺他|cRXX_Loot_Kuz的头骨|r
>>|cRXP_ENEMY_Kuz|r稍微巡视一下
.complete 879,1 
.unitscan Kuz
step
#completewith next
.goto The Barrens,43.14,80.75,45,0
.goto The Barrens,43.35,81.16,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#label Lok
.goto The Barrens,40.31,80.70,20,0
.goto The Barrens,40.14,80.56
>>杀死|cRXP_ENEMY_Lok Orbane|r。掠夺他|cRXD_Loot_Lok的头骨|r
.complete 879,3 
.mob Lok Orcbane
step
#completewith WandShield
.goto The Barrens,44.85,78.81,45,0
.goto The Barrens,44.44,78.97,45,0
.goto The Barrens,43.14,80.75,45,0
.goto The Barrens,43.35,81.16,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#completewith next
>>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。掠夺它们一个|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]
>>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
.complete 893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
step
#label WandShield
.loop 25,The Barrens,42.57,78.81,42.12,78.48,41.49,78.69,41.22,79.72,40.91,80.60,40.55,80.84,41.62,80.92,41.54,82.28,42.48,82.28,42.57,78.81
>>杀死|cRXP_ENEMY_Razomane Seers|r。掠夺它们一个|T135139:0|t[|cRXP-Loot_Charred Razomanne Wand|r]
>>杀死|cRXP_ENEMY_Razormane Warfrenzies|r。掠夺它们一个|T134955:0|t[|cRXX_Loot_Razarmane War Shield |r]
.complete 893,2 
.complete 893,3 
.mob Razormane Seer
.mob Razormane Warfrenzy
step
.loop 25,The Barrens,44.07,83.34,43.54,83.14,43.60,83.69,44.07,83.34
>>杀死|cRXP_ENEMY_Nak|r。掠夺他|cRXX_Loot_Nak的头骨|r
.complete 879,2 
.mob Nak
step
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89,40,0
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89
>>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。掠夺它们一个|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]
>>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
.complete 893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
step
#completewith next
>>杀死|cRXP_ENEMY_Bael-dun挖掘机|r和|cRXX_ENEMY_Bael-dun工头|r
.complete 843,1 
.complete 843,2 
.mob Bael'dun Excavator
.mob Bael'dun Foreman
step
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19
>>杀死|cRXP_ENEMY_Explorer Khazgorm|r。掠夺他获取|cRXD_Loot_Khazgorm的日志|r
.complete 843,3 
.mob Prospector Khazgorm
step
#loop
.goto The Barrens,47.22,84.98,40,0
.goto The Barrens,47.28,85.74,40,0
.goto The Barrens,47.60,85.66,40,0
.goto The Barrens,48.43,86.34,40,0
.goto The Barrens,48.03,85.46,40,0
.goto The Barrens,47.94,84.86,40,0
.goto The Barrens,47.37,84.01,40,0
.goto The Barrens,46.92,84.22,40,0
.goto The Barrens,46.99,85.82,40,0
.goto The Barrens,47.22,84.98,40,0
>>杀死|cRXP_ENEMY_Bael-dun挖掘机|r和|cRXX_ENEMY_Bael-dun工头|r
.complete 843,1 
.complete 843,2 
.mob Bael'dun Excavator
.mob Bael'dun Foreman
step
#completewith BaelModan
.goto The Barrens,47.21,79.35,45,0
.goto The Barrens,47.22,79.72,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#completewith BaelModan
>>杀死|cRXP_ENEMY_Stormhides|r。掠夺它们的|cRXX_Loot_LightGlands|r
>>杀死|cRXP_ENEMY_Greater Thunderhawks|r。掠夺它们获得|cRXX_Loot_Silva Gland|r
>>杀死|cRXP_ENEMY_Kodos|r。掠夺它们以获得|cRXX_Loot_Kodo肝脏|r
.complete 822,1 
.complete 822,2 
.complete 822,3 
.mob Stormhide
.mob Greater Thunderhawk
.mob Barrens Kodo
.mob Greater Barrens Kodo
.mob Wooly Kodo
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
.turnin 843 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.accept 846 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
step
#label BaelModan
.goto The Barrens,48.63,84.49,110 >>前往Bael Modan
.isOnQuest 846
step
#loop
.goto The Barrens,48.96,84.36,30,0
.goto The Barrens,48.88,84.02,30,0
.goto The Barrens,49.28,83.76,30,0
.goto The Barrens,49.22,84.21,30,0
.goto The Barrens,49.47,84.41,30,0
.goto The Barrens,49.09,84.67,30,0
.goto The Barrens,48.96,84.36,30,0
>>杀死|cRXP_ENEMY_Bael'dun矮人|r。掠夺他们的|cRXP_Loot_硝酸甘油|r、|cRXD_Loot_木浆|r和|cRXP-Loot_硝酸钠|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Bael'dun军官|r|cRXP_WARN_在完成防御姿态动画后，有50%的防御几率增加8秒|r << Rogue/Warrior/Druid/Shaman
.complete 846,1 
.complete 846,2 
.complete 846,3 
.mob Bael'dun Rifleman
.mob Bael'dun Soldier
.mob Bael'dun Officer
step
#completewith WashtethePawne
>>杀死|cRXP_ENEMY_Stormhides|r。掠夺它们的|cRXX_Loot_LightGlands|r
>>杀死|cRXP_ENEMY_Greater Thunderhawks|r。掠夺它们获得|cRXX_Loot_Silva Gland|r
>>杀死|cRXP_ENEMY_Kodos|r。掠夺它们以获得|cRXX_Loot_Kodo肝脏|r
.complete 822,1 
.complete 822,2 
.complete 822,3 
.mob Stormhide
.mob Greater Thunderhawk
.mob Barrens Kodo
.mob Greater Barrens Kodo
.mob Wooly Kodo
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
.turnin 846 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.accept 849 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
step
.goto The Barrens,46.97,85.63
>>点击平台顶部的|cRXP_PICK_Bael Modan飞行机|r
>>|cRXP_WARN_这有50码的射程|r
.complete 849,1 
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
.turnin 849 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.target Gann Stonespire
step
#label WashtethePawne
.loop 25,The Barrens,44.85,78.81,44.44,78.97,43.14,80.75,43.35,81.16,47.22,79.72,47.21,79.35,44.76,74.79,44.85,78.81
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
.goto The Barrens,45.35,77.51,60,0
.goto The Barrens,45.42,76.23,60,0
.goto The Barrens,45.05,75.25,60,0
.goto The Barrens,44.70,74.31,60,0
.goto The Barrens,47.28,74.73,60,0
.goto The Barrens,47.89,75.80,60,0
.goto The Barrens,47.70,80.48
>>杀死|cRXP_ENEMY_Stormhides|r。掠夺它们的|cRXX_Loot_LightGlands|r
>>杀死|cRXP_ENEMY_Greater Thunderhawks|r。掠夺它们获得|cRXX_Loot_Silva Gland|r
>>杀死|cRXP_ENEMY_Kodos|r。掠夺它们以获得|cRXX_Loot_Kodo肝脏|r
.complete 822,1 
.complete 822,2 
.complete 822,3 
.mob Stormhide
.mob Greater Thunderhawk
.mob Barrens Kodo
.mob Greater Barrens Kodo
.mob Wooly Kodo
step
#completewith WeaponsofChoiceTurnin
.hs >>Hearth前往陶拉霍营地
.use 6948
.cooldown item,6948,>0
step
#completewith next
.goto The Barrens,45.13,58.47,120 >>返回Taurajo营地。您也可以升级直到您的|T134414:0|t[炉石]恢复
.cooldown item,6948,<0
step
#label WeaponsofChoiceTurnin
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.accept 893 >>接任务: |cRXP_LOOT_野猪人的武器|r
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.target Tatternack Steelforge
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
.turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
.itemcount 5102,1
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
.target Jorn Skyseer
.itemcount 5103,1
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 897 >>接任务: |cRXP_LOOT_收割者|r
.turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
.itemcount 5138,1
.target Jorn Skyseer
step
.goto The Barrens,44.54,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
.turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r
.accept 906 >>接任务: |cRXP_LOOT_内奸|r
.target Mangletooth
step
#completewith next
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Crossroads >>飞向十字路口
.target Omusa Thunderhorn
step
.goto The Barrens,51.50,30.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
.turnin 906 >>交任务: |cRXP_FRIENDLY_内奸|r
.target Thork
step
#completewith next
+|cRXP_WARN_如果您有超过12个|cRXP_LOOT_Silithid Eggs |r|cRXP-WARN_，请拆分任何额外的堆栈（按住shift键并单击），然后删除它们|r
step
.goto The Barrens,51.07,29.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
.turnin 868 >>交任务: |cRXP_FRIENDLY_蝎卵|r
.target Korran
step
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
.home >>将您的炉石设置为十字路口
.target Innkeeper Boorand Plainswind
step << Hunter
#completewith next
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >>飞往奥格瑞玛
.zoneskip Orgrimmar
.target Devrak
step << Hunter
.goto Orgrimmar,48.12,80.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trak'gen|r交谈
.collect 3030,1800,874,1 << Hunter 
.target Trak'gend

step << Hunter
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >>飞到棘轮
.target Doras
step << !Hunter
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
step
.goto The Barrens,62.370,37.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.accept 1221 >>接任务: |cRXP_WARN_蓝叶薯|r
.target Mebok Mizzyrix
.dungeon RFK
step
>>偷走|cRXP_Loot_Sunfflenose命令棒|r、|cRXD_Loot_SUNfflenoses用户手册|r和|cRXT_FROOT_SUNDLY_BOK|r旁边的|cRXP_Loot_SONDLY_Crate With Holes |r
.collect 6684,1,1221,1 
.goto The Barrens,62.340,37.607
.collect 5897,1,1221,1 
.goto The Barrens,62.332,37.623
.collect 5880,1,1221,1 
.goto The Barrens,62.323,37.620
.dungeon RFK
step
.goto The Barrens,62.27,38.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drohn|r
.turnin 822 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
.target Brewmaster Drohn
.isQuestComplete 822
step
.goto The Barrens,65.84,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛伦·星眼|r
.turnin 874 >>交任务: |cRXP_FRIENDLY_玛伦·星眼|r
.accept 873 >>接任务: |cRXP_LOOT_依沙瓦克|r
.target Mahren Skyseer
step
.goto The Barrens,65.51,47.32,70,0
.goto The Barrens,64.21,50.70,70,0
.goto The Barrens,63.63,53.85,70,0
.loop 50,The Barrens,65.51,47.32,64.21,50.70,63.63,53.85
>>杀死|cRXP_ENEMY_Isha Awak|r。为Isha Awak的|cRXP_Loot_心脏而掠夺他|r
.complete 873,1 
.unitscan Isha Awak
step
.goto The Barrens,65.84,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛伦·星眼|r
.turnin 873 >>交任务: |cRXP_FRIENDLY_依沙瓦克|r
.target Mahren Skyseer
step
#completewith CenariusPickup
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Sun Rock Retreat >>飞到太阳岩度假酒店
.zoneskip Stonetalon Mountains
.target Bragok
step
#label CenariusPickup
.goto Stonetalon Mountains,45.90,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱林·火拳|r
.accept 1087 >>接任务: |cRXP_LOOT_塞纳留斯的遗产|r
.target Braelyn Firehand
step
.goto Stonetalon Mountains,47.30,61.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
.accept 5881 >>接任务: |cRXP_LOOT_召回卫兵|r
.accept 6282 >>接任务: |cRXP_LOOT_鹰身人的威胁|r
.target Maggran Earthbinder
step
.goto Stonetalon Mountains,47.40,58.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
.accept 6301 >>接任务: |cRXP_LOOT_生生不息|r
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.47,62.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板杰卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Jayka
step
.goto Stonetalon Mountains,47.61,61.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与旅馆二楼的|r|cRXP_FRIENDLY_Jeeda|r|cRXP_BUY_交谈|r
.vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Jeeda
step
#completewith next
.goto Stonetalon Mountains,49.38,61.68,30,0
.goto Stonetalon Mountains,48.92,62.71,30,0
.goto Stonetalon Mountains,48.11,63.88,30,0
.goto Stonetalon Mountains,47.21,64.05,30 >>沿着小路向右跑
step
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏纳曼|r
.accept 6393 >>接任务: |cRXP_LOOT_元素战争|r
.target Tsunaman
step
.goto Stonetalon Mountains,59.08,75.70
>>单击|cRXP_FRIENDLY_Wanted海报|r
.accept 6284 >>接任务: |cRXP_LOOT_贝瑟莱斯|r
step
.goto Stonetalon Mountains,51.89,73.81,50,0
.goto Stonetalon Mountains,52.46,71.67
>>杀死|cRXP_ENEMY_Besseleth|r。为她掠夺她|cRXX_Loot_Fang |r
>>|cRXP_WARN_在你拉她之前，先把这个区域清理干净。小心，她能给你10秒钟的时间！|r
.complete 6284,1 
.unitscan Besseleth
step
#completewith next
.goto Stonetalon Mountains,58.99,62.60,100 >>前往Windshear Crag
step
.goto Stonetalon Mountains,58.99,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
.accept 1096 >>接任务: |cRXP_LOOT_格雷苏|r
.target Ziz Fizziks
step
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
.complete 1068,2 
.unitscan XT:9
step
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
.complete 1068,1 
.unitscan XT:4
step
.goto Stonetalon Mountains,66.47,45.45
.cast 6620 >>移动到平台下方，放置|T132620:0|t[有毒烟雾机]
.use 5638
.complete 1086,1 >>放置有毒烟雾器
.isOnQuest 1086
step
#completewith next
.goto Stonetalon Mountains,68.81,39.61,50,0
.goto Stonetalon Mountains,67.83,37.77,50,0
.goto Stonetalon Mountains,66.58,37.71,50,0
.goto Stonetalon Mountains,64.56,38.03,50 >>上山进入平台
step
.goto Stonetalon Mountains,64.48,40.24,20,0
.goto Stonetalon Mountains,63.45,39.78,20,0
.goto Stonetalon Mountains,62.75,40.31
>>杀死|cRXP_ENEMY_Gerenzo|r。掠夺他的|cRXX_Loot_机械臂|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Venture Co.Machine Smiths|r|cRXP_WARN_can call |r|cRXP_ENEMY_Ventures Co.Harvest Reapers|r| cRXP_WRN_。一次杀一个|r
.complete 1096,1 
.unitscan Gerenzo Wrenchwhistle
step
.goto Stonetalon Mountains,62.70,40.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nizzik|r|cRXP_BUY_交谈。购买装备升级（如果有）|r
.vendor
.target Nizzik
step
.goto Stonetalon Mountains,58.99,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
.turnin 1096 >>交任务: |cRXP_FRIENDLY_格雷苏|r
.target Ziz Fizziks
step
.goto Stonetalon Mountains,47.20,61.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
.turnin 6284 >>交任务: |cRXP_FRIENDLY_贝瑟莱斯|r
.target Maggran Earthbinder
.isQuestComplete 6284
step
#completewith ReachthePeak
.goto Stonetalon Mountains,49.73,45.10,50,0
.goto Stonetalon Mountains,48.88,43.83,50,0
.goto Stonetalon Mountains,46.35,39.37,50,0
.goto Stonetalon Mountains,46.85,31.87,50,0
>>当你经过湖面时，从地上摘下你看到的所有|cRXP_Loot_Gaea Seed|r
.complete 6301,1 
step
#completewith next
.goto Stonetalon Mountains,46.64,27.48,80,0
.goto Stonetalon Mountains,45.59,23.87,80,0
.goto Stonetalon Mountains,43.79,16.95,80,0
>>杀死你在前往石塔龙峰的途中看到的所有|cRXP_ENEMY_Antlered Coursers|r。掠夺他们的|cRXP_Loot_Eyes |r
.complete 1058,3 
.mob Antlered Courser
step
#label ReachthePeak
.goto Stonetalon Mountains,41.61,16.02,40 >>抵达石塔峰
step
#completewith Whiskers
>>杀死|cRXP_ENEMY_Cenarius之子|r、|cRXD_ENEMY_ Cenarius的女儿|r和|cRXP_ENEMY_Cenarion植物学家|r
.complete 1087,1 
.complete 1087,2 
.complete 1087,3 
.mob Son of Cenarius
.mob Daughter of Cenarius
.mob Cenarion Botanist
step
#completewith Whiskers
>>杀死|cRXP_ENEMY_Sap野兽|r。掠夺它们的|cRXX_Loot_Sap|r
>>|cRXP_WARN_仅常规|r|cRXP_ENEMY_Sap野兽|r|cRXP_WARN_drop the Sap|r|cRXP_ENEMY_腐蚀性Sap野兽|r|cRXP_WARN_不要丢弃它|r
.complete 1058,1 
.mob Sap Beast
step
#completewith next
>>杀死一条|cRXP_ENEMY_Fey Dragon|r。掠夺它的|cRXX_Loot_Scale|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
#label Whiskers
.goto Stonetalon Mountains,31.75,12.58,50,0
.goto Stonetalon Mountains,30.87,9.47,50,0
.goto Stonetalon Mountains,32.40,9.97,50,0
.goto Stonetalon Mountains,33.33,8.16,50,0
.goto Stonetalon Mountains,34.68,7.89,50,0
.goto Stonetalon Mountains,32.24,10.76
>>杀死|cRXP_ENEMY_Twilight Runners |r。掠夺他们的|cRXD_Loot_Wiskers|r
.complete 1058,2 
.mob Twilight Runner
step
#completewith CenariusLegacy
>>杀死|cRXP_ENEMY_Sap野兽|r。掠夺它们的|cRXX_Loot_Sap|r
>>|cRXP_WARN_仅常规|r|cRXP_ENEMY_Sap野兽|r|cRXP_WARN_drop the Sap|r|cRXP_ENEMY_腐蚀性Sap野兽|r|cRXP_WARN_不要丢弃它|r
.complete 1058,1 
.mob Sap Beast
step
#completewith next
>>杀死一条|cRXP_ENEMY_Fey Dragon|r。掠夺它获得一个|cRXX_Loot_Scale|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
#label CenariusLegacy
.loop 25,Stonetalon Mountains,34.43,12.65,35.49,15.33,36.99,15.29,37.71,14.81,38.17,12.77,37.95,11.21,36.25,10.27,35.41,11.13
>>杀死|cRXP_ENEMY_Cenarius之子|r、|cRXD_ENEMY_ Cenarius的女儿|r和|cRXP_ENEMY_Cenarion植物学家|r
.complete 1087,1 
.complete 1087,2 
.complete 1087,3 
.mob Son of Cenarius
.mob Daughter of Cenarius
.mob Cenarion Botanist
step
#completewith next
>>杀死|cRXP_ENEMY_Sap野兽|r。掠夺它们的|cRXX_Loot_Sap|r
>>|cRXP_WARN_仅常规|r|cRXP_ENEMY_Sap野兽|r|cRXP_WARN_drop the Sap|r|cRXP_ENEMY_腐蚀性Sap野兽|r|cRXP_WARN_不要丢弃它|r
.complete 1058,1 
.mob Sap Beast
step
.goto Stonetalon Mountains,33.96,11.82,60,0
.goto Stonetalon Mountains,36.64,18.76,60,0
.goto Stonetalon Mountains,33.96,11.82
>>杀死一条|cRXP_ENEMY_Fey Dragon|r。掠夺它获得一个|cRXX_Loot_Scale|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
.goto Stonetalon Mountains,33.00,16.21,50,0
.goto Stonetalon Mountains,33.61,20.27,50,0
.goto Stonetalon Mountains,35.78,19.13,50,0
.goto Stonetalon Mountains,37.57,20.33,50,0
.goto Stonetalon Mountains,38.62,18.04,50,0
.goto Stonetalon Mountains,39.80,17.10,50,0
.goto Stonetalon Mountains,33.61,20.27
>>杀死|cRXP_ENEMY_Sap野兽|r。掠夺它们的|cRXX_Loot_Sap|r
>>|cRXP_WARN_仅常规|r|cRXP_ENEMY_Sap野兽|r|cRXP_WARN_drop the Sap|r|cRXP_ENEMY_腐蚀性Sap野兽|r|cRXP_WARN_不要丢弃它|r
.complete 1058,1 
.mob Sap Beast
step
.goto Stonetalon Mountains,44.51,20.92,50,0
.goto Stonetalon Mountains,44.45,23.59,50,0
.goto Stonetalon Mountains,46.26,26.72,50,0
.goto Stonetalon Mountains,44.51,20.92
>>当你向南跑回湖边时，完成击杀|cRXP_ENEMY_Antlered Coursers|r。掠夺他们的|cRXP_Loot_Eyes |r
.complete 1058,3 
.mob Antlered Courser
step
.loop 25,Stonetalon Mountains,47.93,36.17,50.44,37.28,50.56,39.79,51.75,42.62,49.72,43.27,49.73,45.09,48.92,43.86,46.98,42.83,45.78,43.13,45.95,40.72,47.04,37.53
>>从湖周围的地面上掠夺|cRXP_Loot_Geae Seed|r
.complete 6301,1 
step
#completewith BloodfuryHarpies
.goto Stonetalon Mountains,42.64,42.43,50,0
.goto Stonetalon Mountains,38.18,43.28,60,0
.goto Stonetalon Mountains,34.85,58.38,80 >>沿着西方的小路前往Charred Vale
step
#completewith next
>>杀死|cRXP_ENEMY_Fire元素|r。掠夺它们的|cRXD_Loot_Incredrite|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
#label BloodfuryHarpies
.goto Stonetalon Mountains,34.07,61.47,60,0
.goto Stonetalon Mountains,31.59,60.58,60,0
.goto Stonetalon Mountains,29.90,62.51,60,0
.goto Stonetalon Mountains,28.38,64.26,60,0
.goto Stonetalon Mountains,27.65,67.88,60,0
.goto Stonetalon Mountains,27.36,69.75,60,0
.goto Stonetalon Mountains,29.98,71.52,60,0
.goto Stonetalon Mountains,34.96,71.29,60,0
.goto Stonetalon Mountains,36.57,68.19,60,0
.goto Stonetalon Mountains,35.24,63.44,60,0
.goto Stonetalon Mountains,33.94,61.17,60,0
.goto Stonetalon Mountains,29.61,63.57
>>杀死|cRXP_ENEMY_Bloodfury Harpies|r。|cRXP-WARN_小心，它们有特殊能力|r
>>|cRXP_ENEMY_血怒杀手|r|cRXP_WARN_当你的生命值低于20%时处决你|r
>>|cRXP_ENEMY_血怒伏击者|r|cRXP_WARN_shock在低冷却时造成大量高伤害|r
>>|cRXP_ENEMY_血怒盗贼羽毛|r|cRXP_WARN_can|r|T132152:0|t[色雷斯]
.complete 6282,1 
.complete 6282,2 
.complete 6282,3 
.complete 6282,4 
.mob Bloodfury Harpy
.mob Bloodfury Ambusher
.mob Bloodfury Slayer
.mob Bloodfury Roguefeather
step
#completewith TammraTurnin1
.goto Stonetalon Mountains,37.89,67.77,30,0
.goto Stonetalon Mountains,39.58,69.84,30,0
.goto Stonetalon Mountains,41.20,70.09,30,0
.goto Stonetalon Mountains,42.07,66.41,30,0
.goto Stonetalon Mountains,43.54,65.35,30,0
.goto Stonetalon Mountains,44.68,63.50,30 >>沿着西方的道路去太阳岩休养所
step
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏纳曼|r
.turnin 6393 >>交任务: |cRXP_FRIENDLY_元素战争|r
.target Tsunaman
.isQuestComplete 6393
step
#label TammraTurnin1
.goto Stonetalon Mountains,47.40,58.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
.turnin 6301 >>交任务: |cRXP_FRIENDLY_生生不息|r
.accept 6381 >>接任务: |cRXP_LOOT_新的生命|r
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.20,61.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
.turnin 6282 >>交任务: |cRXP_FRIENDLY_鹰身人的威胁|r
.accept 6283 >>接任务: |cRXP_LOOT_血怒一族|r
.target Maggran Earthbinder
.group
step
.goto Stonetalon Mountains,47.20,61.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
.turnin 6282 >>交任务: |cRXP_FRIENDLY_鹰身人的威胁|r
.target Maggran Earthbinder
step
.goto Stonetalon Mountains,47.47,62.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板杰卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Jayka
step
.goto Stonetalon Mountains,47.61,61.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与旅馆二楼的|r|cRXP_FRIENDLY_Jeeda|r|cRXP_BUY_交谈|r
.vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Jeeda
step
.goto Stonetalon Mountains,45.90,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱林·火拳|r
.turnin 1087 >>交任务: |cRXP_FRIENDLY_塞纳留斯的遗产|r
.accept 1088 >>接任务: |cRXP_LOOT_奥达努斯|r
.target Braelyn Firehand
.group
step
.goto Stonetalon Mountains,45.90,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱林·火拳|r
.turnin 1087 >>交任务: |cRXP_FRIENDLY_塞纳留斯的遗产|r
.target Braelyn Firehand
step
#completewith Ripper
.goto Stonetalon Mountains,44.31,63.64,30,0
.goto Stonetalon Mountains,43.31,65.47,30,0
.goto Stonetalon Mountains,42.07,66.51,30,0
.goto Stonetalon Mountains,41.26,70.06,30,0
.goto Stonetalon Mountains,37.80,67.68,80 >>返回Charred Vale
step
#completewith Ripper
.goto Stonetalon Mountains,36.07,67.95,40,0
.goto Stonetalon Mountains,34.22,61.25,40,0
.goto Stonetalon Mountains,31.33,61.38,40,0
>>在地面的|cRXP_PICK_Gaea土丘中播种
.complete 6381,1 
.group 0
step
#completewith next
>>杀死|cRXP_ENEMY_Fire元素|r。掠夺它们的|cRXD_Loot_Incredrite|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
.group 0
step
#label Ripper
.goto Stonetalon Mountains,30.75,61.91
>>杀死|cRXP_ENEMY_Bloodfury开膛手|r。为她掠夺她|cRXX_Loot_LUENTS|r
>>|cRXP_WARN_先清除她周围的|r|cRXP_ENEMY_Harpies|r|cRXP_WARN_！她有很大的社交吸引力|r
.complete 6283,1 
.unitscan Bloodfury Ripper
.group 2
step
#completewith next
>>在地面的|cRXP_PICK_Gaea土丘中播种
.complete 6381,1 
step
.goto Stonetalon Mountains,31.84,70.92,60,0
.goto Stonetalon Mountains,33.84,70.45,60,0
.goto Stonetalon Mountains,35.75,73.03,60,0
.goto Stonetalon Mountains,33.94,63.81,60,0
.goto Stonetalon Mountains,34.47,60.19,60,0
.goto Stonetalon Mountains,30.56,67.08,60,0
.goto Stonetalon Mountains,31.84,70.92
>>杀死|cRXP_ENEMY_Fire元素|r。掠夺它们的|cRXD_Loot_Incredrite|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
.goto Stonetalon Mountains,30.20,67.61,40,0
.goto Stonetalon Mountains,29.06,68.87,40,0
.goto Stonetalon Mountains,29.64,71.34,40,0
.goto Stonetalon Mountains,30.50,70.80,40,0
.goto Stonetalon Mountains,32.25,70.07,40,0
.goto Stonetalon Mountains,33.70,72.92,40,0
.goto Stonetalon Mountains,34.70,72.25,40,0
.goto Stonetalon Mountains,34.49,69.09,40,0
.goto Stonetalon Mountains,36.06,67.96,40,0
.goto Stonetalon Mountains,36.01,65.24,40,0
.goto Stonetalon Mountains,34.21,61.28,40,0
.goto Stonetalon Mountains,31.90,64.25
>>在地面的|cRXP_PICK_Gaea土丘中播种
.complete 6381,1 
step
.loop 25,Stonetalon Mountains,36.69,67.66,35.89,64.85,35.28,63.36,34.58,61.42,33.14,60.26,31.89,58.88,30.85,60.72,29.70,61.90,28.13,63.70,28.37,66.87,26.94,69.66,29.63,70.80,30.58,72.39,31.92,72.67,33.32,73.17,35.60,73.46,36.55,71.13,36.84,68.70
.xp 27+28850 >>升级到28850/38900xp
.isQuestComplete 6393
.isQuestComplete 6283
step
.loop 25,Stonetalon Mountains,36.69,67.66,35.89,64.85,35.28,63.36,34.58,61.42,33.14,60.26,31.89,58.88,30.85,60.72,29.70,61.90,28.13,63.70,28.37,66.87,26.94,69.66,29.63,70.80,30.58,72.39,31.92,72.67,33.32,73.17,35.60,73.46,36.55,71.13,36.84,68.70
.xp 27+30850 >>升级到30850/38900xp
.isQuestComplete 6283
step
.loop 25,Stonetalon Mountains,36.69,67.66,35.89,64.85,35.28,63.36,34.58,61.42,33.14,60.26,31.89,58.88,30.85,60.72,29.70,61.90,28.13,63.70,28.37,66.87,26.94,69.66,29.63,70.80,30.58,72.39,31.92,72.67,33.32,73.17,35.60,73.46,36.55,71.13,36.84,68.70
.xp 27+30950 >>升级到30950/38900xp
.isQuestComplete 6393
step
.loop 25,Stonetalon Mountains,36.69,67.66,35.89,64.85,35.28,63.36,34.58,61.42,33.14,60.26,31.89,58.88,30.85,60.72,29.70,61.90,28.13,63.70,28.37,66.87,26.94,69.66,29.63,70.80,30.58,72.39,31.92,72.67,33.32,73.17,35.60,73.46,36.55,71.13,36.84,68.70
.xp 27+32950 >>升级到32950/38900xp
step
#completewith TammraTurnin2
.goto Stonetalon Mountains,37.89,67.77,30,0
.goto Stonetalon Mountains,39.58,69.84,30,0
.goto Stonetalon Mountains,41.20,70.09,30,0
.goto Stonetalon Mountains,42.07,66.41,30,0
.goto Stonetalon Mountains,43.54,65.35,30,0
.goto Stonetalon Mountains,44.68,63.50,30 >>沿着西方的小路回到太阳岩休养所
step
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏纳曼|r
.turnin 6393 >>交任务: |cRXP_FRIENDLY_元素战争|r
.target Tsunaman
step
#label TammraTurnin2
.goto Stonetalon Mountains,47.40,58.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
.turnin 6381 >>交任务: |cRXP_FRIENDLY_新的生命|r
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.20,61.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
.turnin 6283 >>交任务: |cRXP_FRIENDLY_血怒一族|r
.target Maggran Earthbinder
.isQuestComplete 6283
.group
step
.goto Stonetalon Mountains,74.54,97.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
.turnin 1058 >>交任务: |cRXP_FRIENDLY_金吉尔的森林魔法|r
.target Witch Doctor Jin'Zil
step
#map Stonetalon Mountains
.goto The Barrens,35.19,27.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r
.turnin 1068 >>交任务: |cRXP_FRIENDLY_伐木机|r
.target Seereth Stonebreak
step << Druid
#completewith DruidTraining3
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 1850 >>训练你的职业技能
.target Loganaar
.xp <26,1
.xp >28,1
step << Druid
#label DruidTraining3
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 3029 >>训练你的职业技能
.target Loganaar
.xp <28,1
step
#completewith next
.hs >>十字路口之心
.use 6948
step << Rogue
.goto The Barrens,51.39,30.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hula'Mahi|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Hula'Mahi
step
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >>飞往奥格瑞玛
.zoneskip Orgrimmar
.target Devrak
step
#optional
.abandon 6283 >>放弃血怒血脉
.isOnQuest 6283
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
>>|cRXP_BUY_从拍卖行购买|r|T133021:0|t[碎纸机操作手册页面]|cRXP_Buy_（如果有）|r 
.target Auctioneer Thathung
.collect 16645,1,6504,1 
.collect 16646,1,6504,1 
.collect 16647,1,6504,1 
.collect 16648,1,6504,1 
.collect 16649,1,6504,1 
.collect 16650,1,6504,1 
.collect 16651,1,6504,1 
.collect 16652,1,6504,1 
.collect 16653,1,6504,1 
.collect 16654,1,6504,1 
.collect 16655,1,6504,1 
.collect 16656,1,6504,1 
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8687 >>训练你的职业技能
>>|T132273:0|t[瞬变毒药等级2]|cRXP_WARN_需要120点毒药技能|r
.target Ormok
.xp <26,1
.xp >28,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 1833 >>训练你的职业技能
>>|T132273:0|t[瞬变毒药等级2]|cRXP_WARN_需要120点毒药技能|r
.target Ormok
.xp <28,1
step << Rogue
.goto Orgrimmar,48.12,80.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_交谈。向他购买|r|T135423:0|t[致命飞斧]|r
.collect 3137,200,6544,1 
.target K'waii
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 8190 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <26,1
.xp >28,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 8053 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <28,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 6178 >>训练你的职业技能
.target Grezz Ragefist
.xp <26,1
.xp >28,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 7887 >>训练你的职业技能
.target Grezz Ragefist
.xp <28,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 1456 >>训练你的职业技能
.target Mirket
.xp <26,1
.xp >28,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 6217 >>训练你的职业技能
.target Mirket
.xp <28,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul

step << Priest/Warlock
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Katis|r|cRXP_BUY_交谈。从她那里购买|r|T135466:0|t[Pestilent Wand]|r
.collect 5347,1,6544,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 3045 >>训练你的职业技能
.target Ormak Grimshot
.xp <26,1
.xp >28,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14319 >>训练你的职业技能
.target Ormak Grimshot
.xp <28,1
step << Hunter
.goto Orgrimmar,78.11,38.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤索克|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,549,1 << Hunter 
.target Jin'sora
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 120 >>训练你的职业技能
.target Pephredo
.xp <26,1
.xp >28,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 759 >>训练你的职业技能
.target Pephredo
.xp <28,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 992 >>训练你的职业技能
.target Ur'kyo
.xp <26,1
.xp >28,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 8104 >>训练你的职业技能
.target Ur'kyo
.xp <28,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 27-29 Ashenvale
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 20-30
#next 29-31 Thousand Needles
step
#completewith next
.goto Orgrimmar,26.22,61.58,80,0
.goto Orgrimmar,15.66,63.33,30,0
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
.zoneskip The Barrens
step
#completewith next
.goto Kalimdor,56.80,45.45,15,0
.goto Ashenvale,94.54,76.15,40,0
.goto Ashenvale,93.49,73.76,40,0
.goto Ashenvale,92.47,71.18,40,0
.goto Ashenvale,91.85,68.71,40,0
.goto Ashenvale,91.39,65.86,25 >>沿着河流向北行驶，进入阿申瓦尔
step
.goto Ashenvale,89.87,68.07,40,0
.goto Ashenvale,86.89,68.65,40,0
.goto Ashenvale,79.89,68.38,40,0
.goto Ashenvale,73.52,63.50,30 >>前往Splintertree Post
>>|cRXP_WARN_你可能会遇到一些29-30级的暴徒，尽可能避开他们|r
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.turnin 6382 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
.turnin 6383 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
.target Senani Thunderheart
step
.goto Ashenvale,74.00,60.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板凯利斯克|r
.home >>将炉石设置为Splinterree Post
.target Innkeeper Kaylisk
step
.goto Ashenvale,73.67,60.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马斯托克·维尔西斯|r
.accept 25 >>接任务: |cRXP_LOOT_石爪山的困境|r
.target Mastok Wrilehiss
step
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮克希尔|r
.accept 6441 >>接任务: |cRXP_LOOT_萨特之角|r
.target Pixel
step
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fp Splintertree Post >>获取Splinterree Post飞行路径
.target Vhulgra
step
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库莱比|r
.accept 6503 >>接任务: |cRXP_LOOT_灰谷先驱者|r
.target Kuray'bin
step << Hunter
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Qeeju交谈|r
.stable >>稳定你的宠物。你很快就会驯服一只|cRXP_ENEMY_Elder Ashenvale Bear|r
.target Qeeju
step << Hunter
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65
.cast 1515 >>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on an|cRXX_ENEMY_Elder Ashenvale Bear|r驯服它|r
.train 16830 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级4）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Elder Ashenvale Bear
step << Hunter
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Qeeju交谈|r
.stable >>抛弃|cRXP_ENEMY_Elder Ashenvale Bear|r并取回您的普通宠物
.target Qeeju
step
#ah
#completewith next
>>使用|T133021:0|t[碎纸机操作手册页面]创建|cRXP_LOOT_Scredder操作章节|r
.complete 6504,1 
.complete 6504,2 
.complete 6504,3 
step
#ah
.goto Ashenvale,70.01,71.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda|r
.turnin 6504 >>交任务: |cRXP_FRIENDLY_丢失的书页|r
.target Gurda Ragescar
step
#completewith next
.goto Ashenvale,75.25,71.86,0
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>杀死|cRXP_ENEMY_Sharptalon|r。将其掠夺|T136063:0|t[|cRXP_Loot_Sharptalon's Claw|r]并使用它开始任务
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Sharptalon|r|cRXP_WARN_i为31级并在周围巡逻。如果你想杀死他，你可以把他放回Splintertree Post或Forsaken营地。如果你这样做，确保你造成50%以上的伤害才能获得信用。你也可以稍后进行此任务|r
.collect 16305,1,2 
.unitscan Sharptalon
.use 16305
step
.goto Ashenvale,76.15,67.60,15,0
.goto Ashenvale,76.03,69.02,15,0
.goto Ashenvale,76.25,70.62,15,0
.goto Ashenvale,75.76,71.61,15,0
.goto Ashenvale,75.57,70.33,15,0
.goto Ashenvale,75.20,70.62,15,0
.goto Ashenvale,74.37,69.31,15,0
.goto Ashenvale,73.61,70.91,15,0
.goto Ashenvale,72.96,70.34,15,0
.goto Ashenvale,72.66,69.46,15,0
.goto Ashenvale,72.09,70.17,15,0
.goto Ashenvale,71.07,72.60,15,0
.goto Ashenvale,71.92,73.64,15,0
.goto Ashenvale,72.53,72.58,15,0
.goto Ashenvale,72.32,74.64,15,0
.goto Ashenvale,73.36,74.43,15,0
.goto Ashenvale,73.85,75.03,15,0
.goto Ashenvale,76.15,67.60
>>杀死|cRXP_ENEMY_Ashenvale Outrunners|r
>>|cRXP_WARN_They are stealthed|r
.complete 6503,1 
.mob Ashenvale Outrunner
step
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.goto Ashenvale,78.24,65.72
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>杀死|cRXP_ENEMY_Sharptalon|r。将其掠夺|T136063:0|t[|cRXP_Loot_Sharptalon's Claw|r]并使用它开始任务
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Sharptalon|r|cRXP_WARN_i为31级并在周围巡逻。如果你想杀死他，你可以把他放回Splintertree Post或Forsaken营地。如果你这样做，确保你造成50%以上的伤害才能获得信用。你也可以稍后进行此任务|r
.collect 16305,1,2 
.accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
.unitscan Sharptalon
.use 16305
step
.goto Ashenvale,68.34,75.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托雷克|r
>>|cRXP_FRIENDLY_Torek|r|cRXP_WARN_has a 5 minutes respawn time|r
.accept 6544 >>接任务: |cRXP_LOOT_托雷克的突袭|r
.target Torek
step
.goto Ashenvale,66.08,74.50,60,0
.goto Ashenvale,65.07,75.36,20,0
.goto Ashenvale,64.28,75.33,10,0
.goto Ashenvale,64.81,75.34
>>关注|cRXP_FRIENDLY_Torek|r
>>让|cRXP_FRIENDLY_TORK|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r坦克|cRXP_ENEMY_Silverwing Warriors|r和|cRXD_ENEMY_ SilverwingSentinel|r
>>当你清空大楼时，向阳台跑去。当|cRXP_ENEMY_Duriel Moonfire|r到来时，让|cRXP_FRIENDLY_Torek|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r在你造成伤害之前发动攻击
.complete 6544,1 
.mob Silverwing Warrior
.mob Silverwing Sentinel
.unitscan Duriel Moonfire
step
#completewith Tideress
.goto Ashenvale,51.51,71.02,100 >>Travel to Mystral Lake
.isOnQuest 25
step
#completewith Tideress
>>杀死|cRXP_ENEMY_被污染的水元素|r
.complete 25,1 
.mob Befouled Water Elemental
step
#completewith next
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
.goto Ashenvale,52.08,72.10,40,0
.goto Ashenvale,52.18,71.60,40,0
.goto Ashenvale,52.13,71.14,40,0
.goto Ashenvale,51.42,70.86,40,0
.goto Ashenvale,50.74,71.31,40,0
.goto Ashenvale,50.54,71.08,40,0
.goto Ashenvale,50.47,70.43,40,0
.goto Ashenvale,50.21,70.36,40,0
.goto Ashenvale,49.49,70.76,40,0
.goto Ashenvale,48.93,70.82,40,0
.goto Ashenvale,48.43,70.14,40,0
.goto Ashenvale,48.36,69.74,40,0
>>杀死|cRXP_ENEMY_Tideres|r。掠夺她获得|T136222:0|t[|cRXX_Loot_Beforded Water Globe|r]。使用它开始任务
>>|cRXP_ENEMY_Tideres|r在岛上和水下巡逻
.collect 16408,1,1918,1 
.accept 1918 >>接任务: |cRXP_LOOT_被污染的水元素|r
.use 16408
.unitscan Tideress
step
.goto Ashenvale,48.93,69.56
>>去凉亭下面
.complete 25,2 
step
#label Tideress
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
.goto Ashenvale,48.71,69.54,40,0
.goto Ashenvale,48.04,69.67,40,0
.goto Ashenvale,47.79,69.90,40,0
.goto Ashenvale,47.57,70.42,40,0
.goto Ashenvale,47.22,70.44,40,0
.goto Ashenvale,46.72,70.63,40,0
.goto Ashenvale,46.53,70.80,40,0
.goto Ashenvale,46.07,70.83,40,0
.goto Ashenvale,45.84,70.67,40,0
.goto Ashenvale,45.84,70.67
>>杀死|cRXP_ENEMY_Tideres|r。掠夺她获得|T136222:0|t[|cRXX_Loot_Beforded Water Globe|r]。使用它开始任务
>>|cRXP_ENEMY_Tideres|r在岛上和水下巡逻
.collect 16408,1,1918,1 
.accept 1918 >>接任务: |cRXP_LOOT_被污染的水元素|r
.use 16408
.unitscan Tideress
step
.loop 25,Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
>>杀死|cRXP_ENEMY_被污染的水元素|r
.complete 25,1 
.mob Befouled Water Elemental
step
.line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
.goto Ashenvale,43.78,68.86,40,0
.goto Ashenvale,43.33,68.09,40,0
.goto Ashenvale,42.46,68.39,40,0
.goto Ashenvale,42.08,68.71,40,0
.goto Ashenvale,41.79,68.28,40,0
.goto Ashenvale,41.55,67.71,40,0
.goto Ashenvale,41.46,67.44,40,0
.goto Ashenvale,41.41,66.56,40,0
.goto Ashenvale,40.22,66.23,40,0
.goto Ashenvale,39.77,65.40,40,0
.goto Ashenvale,39.65,63.74,40,0
.goto Ashenvale,39.81,62.94,40,0
>>杀死|cRXP_ENEMY_Ursangous|r。掠夺他|T132941:0|t[|cRXP-Loot_Ursangous的爪子|r]并使用它开始任务
>>他稍微四处巡逻
.collect 16303,1,23 
.accept 23 >>接任务: |cRXP_LOOT_乌萨苟斯的爪子|r
.unitscan Ursangous
.use 16303
step << Shaman
.goto Ashenvale,33.55,67.47
>>在凉亭下使用|T132821:0|t[空蓝色水皮]
.complete 1534,1 
.use 7767
step
.goto Ashenvale,36.81,33.48,200 >>前往Thistlefur村
>>|cRXP_WARN_途中一定要避开阿斯特拉纳尔警卫|r
.isOnQuest 216
step
#completewith next
>>在前往洞穴的途中杀死|cRXP_ENEMY_Thistlefur萨满|r和|cRXX_ENEMY_ ThistlefurAvengers|r
.complete 216,2 
.complete 216,1 
.mob Thistlefur Shaman
.mob Thistlefur Avenger
step
#label EntertheHold
.goto Ashenvale,38.67,30.62,40 >>Enter Thistlefur Hold
.isOnQuest 6462
step
.goto Ashenvale,40.39,33.22,20,0
.goto Ashenvale,40.77,32.81,20,0
.goto Ashenvale,41.36,32.19,20,0
.goto Ashenvale,41.75,32.94,20,0
.goto Ashenvale,41.77,33.68,20,0
.goto Ashenvale,42.37,33.61,20,0
.goto Ashenvale,42.82,34.11,20,0
.goto Ashenvale,41.73,34.47,20,0
.goto Ashenvale,41.66,35.70,20,0
.goto Ashenvale,40.39,33.22
>>将|cRXP_PICK_Troll Chest|r在地上掠夺|cRXP _Loot_Troll Charms|r
.complete 6462,1 
step
.goto Ashenvale,41.49,34.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r in the back of the cave. 这将开始护送
.accept 6482 >>接任务: |cRXP_LOOT_鲁尔的自由|r
.target Ruul Snowhoof
step
.goto Ashenvale,40.68,33.21,20,0
.goto Ashenvale,40.29,32.25,20,0
.goto Ashenvale,39.41,31.00,20,0
.goto Ashenvale,38.28,30.68,20,0
.goto Ashenvale,37.39,32.74,30,0
.goto Ashenvale,37.30,34.49,30,0
.goto Ashenvale,38.73,36.86
.complete 6482,1 
>>|cRXP_WARN_小心！3|r|cRXP_ENEMY_Thistlefurs|r|cRXP_WARN_一旦你穿过洞穴的一半，就会产卵，在Thistlefur村的大门外再产卵3个|r
.target Ruul Snowhoof
step
.goto Ashenvale,37.91,34.49,40,0
.goto Ashenvale,35.89,36.65,40,0
.goto Ashenvale,35.75,32.01,40,0
.goto Ashenvale,34.09,38.48,40,0
.goto Ashenvale,31.86,39.25,40,0
.goto Ashenvale,32.57,42.78,40,0
.goto Ashenvale,30.98,44.40,40,0
.goto Ashenvale,35.75,32.01
>>完成杀戮|cRXP_ENEMY_Thistlefur萨满|r和|cRXP_ENEMY_ ThistlefurAvengers|r
.complete 216,2 
.complete 216,1 
.mob Thistlefur Shaman
.mob Thistlefur Avenger
step
#completewith next
.goto Ashenvale,58.03,55.87,100 >>向东前往Raynewood Retreat
.isOnQuest 5867
step
#completewith next
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,60.94,51.53,40,0
>>杀死|cRXP_ENEMY_Shadumbra|r。掠夺她|T132225:0|t[|cRXP_Loot_Shadumbra的头|r]并使用它开始任务
>>|cRXP_ENEMY_Shadumbra|r在周围稍微巡逻
.collect 16304,1,24 
.accept 24 >>接任务: |cRXP_LOOT_萨杜布拉的头颅|r
.unitscan Shadumbra
.use 16304
step
.goto Ashenvale,58.08,56.06,40,0
.goto Ashenvale,58.69,55.18,40,0
.goto Ashenvale,59.27,54.47,40,0
.goto Ashenvale,59.83,53.26,40,0
.goto Ashenvale,60.40,52.83,40,0
.goto Ashenvale,61.03,51.96,40,0
.goto Ashenvale,60.99,49.19,40,0
.goto Ashenvale,62.51,50.16,40,0
.goto Ashenvale,58.08,56.06
>>杀死|cRXP_ENEMY_Laughing Sisters|r。掠夺她们一个|T134776:0|t[|cRXP-Loot_Ecched Phial|r]
.collect 5867,1,1195,1 
.mob Laughing Sister
step
#label Shadumbra
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,60.94,51.53,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,62.39,49.80
>>杀死|cRXP_ENEMY_Shadumbra|r。掠夺她|T132225:0|t[|cRXP_Loot_Shadumbra的头|r]并使用它开始任务
>>|cRXP_ENEMY_Shadumbra|r在周围稍微巡逻
.collect 16304,1,24 
.accept 24 >>接任务: |cRXP_LOOT_萨杜布拉的头颅|r
.unitscan Shadumbra
.use 16304
step
.goto Ashenvale,62.07,51.32
>>杀死|cRXP_ENEMY_Keeper Ordanus|r。掠夺他的|cRXX_Loot_Head |r
>>|cRXP_WARN_小心！他有两个|r|cRXP_ENEMY_Cenarion辩护人|r|cRXP_WARN_为他辩护|r
>>|cRXP_WARN_当他低于30%的生命值时，他将召唤两个|r|cRXP_ENEMY_Treants|r|cRXP_WARN_|r
.complete 1088,1 
.target Keeper Ordanus
.group 2
step
#completewith next
.goto Ashenvale,63.34,44.14,40,0
.goto Ashenvale,65.32,44.22,40,0
.goto Ashenvale,66.56,51.77,80 >>前往夜间跑步
step
.loop 25,Ashenvale,66.78,51.71,66.19,53.44,66.17,54.40,66.22,55.27,66.20,56.37,66.77,57.14,67.11,56.39,67.35,55.53,67.92,54.42,68.92,53.44,68.63,52.69,67.85,51.34
>>杀死|cRXP_ENEMY_Felmusk Shadowspeaker|r、|cRXD_ENEMY_Felmusk Satyrs|r和|cRXP_ENEMY_ Felmusk Felswarns|r。掠夺他们的|cRXP_Loot_Satyr Horns|r
>>|cRXP_WARN_小心！所有的Felmusk演员阵容|r|T136119:0|t[压倒性的斯坦奇]|cRXP_WARN_，一个瞬间的演员阵容6秒的沉默|r << Mage/Warlock/Priest/Druid/Shaman
.complete 6441,1 
.mob Felmusk Shadowstalker
.mob Felmusk Felsworn
.mob Felmusk Satyr
step
.goto Ashenvale,60.20,72.90
>>在Moonwell中使用|T134776:0|t[|cRXP_LOOT_Etched Phial|r]
.complete 1195,1 
.use 5867
step
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库莱比|r
.turnin 6503 >>交任务: |cRXP_FRIENDLY_灰谷先驱者|r
.target Kuray'bin
step
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.goto Ashenvale,78.24,65.72
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>杀死|cRXP_ENEMY_Sharptalon|r。将其掠夺|T136063:0|t[|cRXP_Loot_Sharptalon's Claw|r]并使用它开始任务
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Sharptalon|r|cRXP_WARN_i为31级并在周围巡逻。如果你想杀死他，你可以把他放回Splintertree Post或Forsaken营地。如果你这样做，确保你造成50%以上的伤害才能获得信用。你也可以稍后进行此任务|r
.collect 16305,1,2 
.accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
.unitscan Sharptalon
.use 16305
step
#sticky
#completewith EnterBFD
.subzone 719 >>现在你应该找一个团体去BlackFathom Deeps
.dungeon BFD
step
.goto Ashenvale,73.04,62.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔托格·怒齿|r
.turnin 6544 >>交任务: |cRXP_FRIENDLY_托雷克的突袭|r
.target Ertog Ragetusk
.isQuestComplete 6544
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.turnin 2 >>交任务: |cRXP_FRIENDLY_沙普塔隆的爪子|r
.turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
.turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
.turnin 247 >>交任务: |cRXP_FRIENDLY_完成狩猎|r
.target Senani Thunderheart
.isOnQuest 2
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
.turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
.target Senani Thunderheart
step
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮克希尔|r
.turnin 6441 >>交任务: |cRXP_FRIENDLY_萨特之角|r
.target Pixel
step
.goto Ashenvale,73.67,60.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马斯托克·维尔西斯|r
.turnin 25 >>交任务: |cRXP_FRIENDLY_石爪山的困境|r
.turnin 1918 >>交任务: |cRXP_FRIENDLY_被污染的水元素|r
.accept 824 >>接任务: |cRXP_LOOT_陶土议会的耶努萨克雷|r
.target Mastok Wrilehiss
step
.goto Ashenvale,74.11,60.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅玛·雪蹄|r
.turnin 6482 >>交任务: |cRXP_FRIENDLY_鲁尔的自由|r
.target Yama Snowhoof
step
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Zoram'gar >>飞往佐拉姆加前哨
.target Vhulgra
step
.goto Ashenvale,11.90,34.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡拉恩·阿玛卡|r
.turnin 216 >>交任务: |cRXP_FRIENDLY_蓟皮熊怪的麻烦|r
.target Karang Amakkar
step
.goto Ashenvale,11.65,34.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米苏瓦|r
.turnin 6462 >>交任务: |cRXP_FRIENDLY_巨魔符咒|r
.target Mitsuwa
step
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 >>交任务: |cRXP_FRIENDLY_陶土议会的耶努萨克雷|r
.accept 6563 >>接任务: |cRXP_WARN_阿库麦尔水晶|r
.accept 6921 >>接任务: |cRXP_WARN_废墟之间|r
.accept 6565 >>接任务: |cRXP_WARN_上古之神的仆从|r
.target Je'neu Sancrea
.dungeon BFD
.isQuestTurnedIn 6564
step
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 >>交任务: |cRXP_FRIENDLY_陶土议会的耶努萨克雷|r
.accept 6563 >>接任务: |cRXP_WARN_阿库麦尔水晶|r
.accept 6921 >>接任务: |cRXP_WARN_废墟之间|r
.target Je'neu Sancrea
.dungeon BFD
step
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 >>交任务: |cRXP_FRIENDLY_陶土议会的耶努萨克雷|r
.target Je'neu Sancrea
step
.goto Ashenvale,12.06,34.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格拉什|r
>>|cRXP_WARN_这将开始一个护送任务|r
.accept 6641 >>接任务: |cRXP_WARN_鞭笞者沃尔沙|r
.target Muglash
step
.goto Ashenvale,9.63,27.63
>>到达后单击|cRXP_PICK_Brazier|r
.complete 6641,1 
.mob Vorsha the Lasher
step
.goto Kalimdor,43.89,35.23,100 >>前往Blackfinth Deeps的入口
.dungeon BFD
step
#completewith next
>>从墙上偷走|cRXP_Loot_Aku'Mai|r的蓝宝石
.complete 6563,1 
.dungeon BFD
.isOnQuest 6563
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
.collect 16790,1,6564 
.accept 6564 >>接任务: |cRXP_WARN_上古之神的仆从|r
.mob Blackfathom Tide Priestess
.use 16790
.dungeon BFD
step
.goto Kalimdor,44.53,34.86,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,44.34,35.11
>>从墙上偷走|cRXP_Loot_Aku'Mai|r的蓝宝石
.complete 6563,1 
.dungeon BFD
.isOnQuest 6563
step
#label EnterBFD
.goto Kalimdor,44.36,34.86
.zone 221 >>进入BFD实例门户。区域在
.dungeon BFD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
.accept 6561 >>接任务: |cRXP_WARN_黑暗深渊中的邪恶|r
.target Argent Guard Thaelrid
.dungeon BFD
step
>>杀死|cRXP_ENEMY_Lorguss Jett|r
.complete 6565,1 
.mob Lorguss Jett
.isOnQuest 6565
.dungeon BFD
step
#completewith next
>>将|cRXP_PICK_Fathom Stone|r在地面的水中掠夺，用于|cRXP_Loot_FFathom Core |r
>>|cRXP_WARN_掠夺它将产生|r|cRXP_ENEMY_Baron Aquanis|r
.complete 6921,1 
.isOnQuest 6921
.dungeon BFD
step
>>杀死|cRXP_ENEMY_Baron Aquanis|r。掠夺他一个|T136222:0|t[|cRXX_Loot_奇异水球|r]。使用它来接受任务
.collect 16782,1 
.accept 6922 >>接任务: |cRXP_LOOT_阿奎尼斯男爵|r
.mob Baron Aquanis
.use 16782
.dungeon BFD
step
>>将|cRXP_PICK_Fathom Stone|r在地面的水中掠夺，用于|cRXP_Loot_FFathom Core |r
.complete 6921,1 
.isOnQuest 6921
.dungeon BFD
step
>>杀死|cRXP_ENEMY_暮光之城领主凯里斯|r。掠夺他的|cRXX_Loot_Head |r
.complete 6561,1 
.mob Twilight Lord Kelris
.isOnQuest 6561
.dungeon BFD
step
#completewith next
.hs >>壁炉到Splinterree Post
.use 6948
>>|cRXP_WARN_如果您愿意，请先杀死|r|cRXP_ENEMY_Aku'mai|r|cRXP_WARN_first。这是地牢的最后一个老板|r
.dungeon BFD
step
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Zoram'gar >>飞往佐拉姆加前哨
.target Vhulgra
.dungeon BFD
step
.goto Ashenvale,12.22,34.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战歌信使|r
.turnin 6641 >>交任务: |cRXP_FRIENDLY_鞭笞者沃尔沙|r
.target Warsong Runner
step
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6564 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
.target Je'neu Sancrea
.dungeon BFD
.isOnQuest 6564
step
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6565 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6565
step
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6563 >>交任务: |cRXP_FRIENDLY_阿库麦尔水晶|r
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6563
step
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6921 >>交任务: |cRXP_FRIENDLY_废墟之间|r
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6521
step
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6922 >>交任务: |cRXP_FRIENDLY_阿奎尼斯男爵|r
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6922
step
.goto Ashenvale,12.24,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德鲁克|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Andruk
.cooldown item,6948,<0
step
#completewith next
.hs >>壁炉到Splinterree Post
.goto Ashenvale,74.00,60.64,30 >>到达Splintertree Post
.use 6948
.cooldown item,6948,>0

step
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Vhulgra
step
.goto Thunder Bluff,71.04,34.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴珊娜·符文图腾|r
.turnin 6561 >>交任务: |cRXP_FRIENDLY_黑暗深渊中的邪恶|r
.target Bashana Runetotem
.isQuestComplete 6561
.dungeon BFD
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 29-31 Thousand Needles
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 20-30
#next 31-34 Hillsbrad/Arathi
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Delgo|r|cRXP_BUY_交谈。从他那里买一把|r|T132408:0|t[Merciless Axe]如果有，但你在Hillsbrad没有买到|r
.collect 12249,1,5881,1 
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
step << Rogue
.goto Thunder Bluff,53.00,56.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kard|r|cRXP_BUY_交谈。从他那里买一个|r|T135651:0|t[Main Gauche]|r
.collect 2526,1,5881,1 
.money <2.0353
.target Kard Ragetotem
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#completewith FreewindHome
+配备|T135651:0|t[主规]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
.goto Thunder Bluff,54.90,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞金·石蹄|r
.turnin 1195 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.accept 1196 >>接任务: |cRXP_WARN_神圣之火|r
.target Zangen Stonehoof
step << Druid
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 3029 >>训练你的职业技能
.target Kym Wildmane
.xp <28,1
.xp >30,1
step << Druid
#optional
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 783 >>训练你的职业技能
.target Kym Wildmane
.xp <30,1
step
.goto Thunder Bluff,61.53,80.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.accept 1131 >>接任务: |cRXP_LOOT_钢齿土狼|r
.target Melor Stonehoof
step << Hunter
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14319 >>训练你的职业技能
.target Urek Thunderhorn
.xp <28,1
.xp >30,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 5384 >>训练你的职业技能
.target Urek Thunderhorn
.xp <30,1
step << Hunter
.goto Thunder Bluff,54.07,84.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24559 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <30,1
step << Warrior
.goto Thunder Bluff,57.59,85.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 7887 >>训练你的职业技能
.target Ker Ragetotem
.xp <28,1
.xp >30,1
step << Warrior
#optional
.goto Thunder Bluff,57.27,87.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
.train 7369 >>训练你的职业技能
.accept 1718 >>接任务: |cRXP_LOOT_岛民|r
.target Torm Ragetotem
.xp <30,1
step
.goto Thunder Bluff,45.83,64.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
.home >>将您的炉石设置为雷霆崖
.target Innkeeper Pala
step
.goto Thunder Bluff,22.81,20.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
.turnin 1086 >>交任务: |cRXP_FRIENDLY_地精空港|r
.target Apothecary Zamah
.isOnQuest 1086
step << Priest
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 8104 >>训练你的职业技能
.target Miles Welsh
.xp <28,1
.xp >30,1
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 602 >>训练你的职业技能
.target Miles Welsh
.xp <30,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 759 >>训练你的职业技能
.target Archmage Shymm
.xp <28,1
.xp >30,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 8412 >>训练你的职业技能
.target Archmage Shymm
.xp <30,1
step << Mage
.goto Thunder Bluff,22.48,16.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Birgitte|r交谈
.train 3566 >>火车|T135765:0|t[电传：雷霆崖]
.target Birgitte Cranston
.xp <30,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 8053 >>训练你的职业技能
.target Tigor Skychaser
.xp <28,1
.xp >30,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 556 >>训练你的职业技能
.target Tigor Skychaser
.xp <30,1
step
#completewith next
.skill firstaid,150 >>创建|T133687:0|t[厚羊毛绷带]直到你的技能达到150
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
.train 7928 >>火车|T133671:0|t[丝绸绷带]
>>|cRXP_WARN_如果你没有足够的羊毛布达到150技能，请跳过这一步|r
.target Pand Stonebinder
.skill firstaid,<1,1
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna|r|cRXP_BUY_交谈。从她那里购买|r|T135495:0|t[Strurdy Recurve Bow]（如果有）|r
.collect 11306,1,5881,1 
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
step
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna交谈|r
.collect 3030,1800,5881,1 << Hunter 
.target Kuna Thunderhorn
step
#optional
.abandon 6561 >>放弃黑寻别墅
.isOnQuest 6561
.dungeon BFD
step
#optional
.abandon 6565 >>放弃对旧神的效忠
.isOnQuest 6565
.dungeon BFD
step
#optional
.abandon 6563 >>放弃阿库迈的本质
.isOnQuest 6563
.dungeon BFD
step
#optional
.abandon 6921 >>遗弃在废墟中
.isOnQuest 6921
.dungeon BFD
step
#completewith TearMoons
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,45.10,57.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.target Tatternack Steelforge
step << Shaman
#completewith next
.goto The Barrens,43.84,77.28,25,0
.goto The Barrens,43.62,77.29,25,0
.goto The Barrens,43.42,77.41,15 >>前往|cRXP_FRIENDLY_Brine|r
step << Shaman
.goto The Barrens,43.42,77.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞恩|r
.turnin 1534 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 220 >>接任务: |cRXP_LOOT_水之召唤|r
.target Brine
step
#completewith next
.goto The Barrens,48.85,84.88,50 >>前往Bael Modan
.group
step
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.accept 857 >>接任务: |cRXP_LOOT_众月之泪|r
.target Feegly the Exiled
.group
step
#completewith next
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.43,84.28,6 >>下到Baeldun的底层
.group
step
.goto The Barrens,49.13,84.25
>>打开|cRXP_PICK_General Twinbraid的Strongbox |r。为|cRXP _Loot_Tear of the Moons而掠夺它|r
>>|cRXP_WARN_小心！在|cRXP_ENEMY_General Twinbraid|r的房间里很容易过度拉伸|r
>>|cRXP_WARN_直接拉除|cRXP_ENEMY_General Twinbraid|r以外的任何暴徒|r
.complete 857,1 
.group 3
step
#completewith next
.goto The Barrens,49.43,84.28,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,48.75,84.63,20 >>退出Baeldun的商店
.group
step
#label TearMoons
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
>>|cRXP_WARN_冲到转弯处，否则你可能会因为RP事件而不得不等待|r
.turnin 857 >>交任务: |cRXP_FRIENDLY_众月之泪|r
.target Feegly the Exiled
.group
step
#completewith next
.goto The Barrens,44.13,91.44,80 >>向南前往The Great Lift
step
.goto Thousand Needles,31.87,21.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grish|r
.turnin 5881 >>交任务: |cRXP_FRIENDLY_召回卫兵|r
.target Grish Longrunner
.isOnQuest 5881
step
.goto Thousand Needles,32.24,22.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵穆赫·月角|r
.accept 4542 >>接任务: |cRXP_LOOT_给乱风岗的紧急信件|r
.target Brave Moonhorn
step
.goto Thousand Needles,31.97,23.76,30 >>乘电梯到千针
>>|cRXP_WARN_不要掉下来！你会死的！|r
.isOnQuest 4542
step
#completewith next
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,38.61,31.49,50,0
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
>>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP-Loot_Assassination Note|r]。使用它开始任务
>>|cRXP_WARN_他在Splithoof Crag（东半人马营地）产卵|r
.collect 12564,1,4881 
.accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
.use 12564
.unitscan Galak Messenger
step
#completewith next
.goto Thousand Needles,46.73,48.27,30 >>前往Freewind Post的电梯
step
.goto Thousand Needles,45.91,49.91,25 >>乘电梯到Freewind
step
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 4542 >>交任务: |cRXP_FRIENDLY_给乱风岗的紧急信件|r
.accept 4841 >>接任务: |cRXP_LOOT_清除半人马|r
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.00,50.80
>>单击|cRXP_FRIENDLY_Wanted海报|r
.accept 5147 >>接任务: |cRXP_LOOT_通缉：阿纳克·恐怖图腾|r
step
.goto Thousand Needles,46.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r
.turnin 1196 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.accept 1197 >>接任务: |cRXP_WARN_神圣之火|r
.target Rau Cliffrunner
.group
step
.goto Thousand Needles,46.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r
.turnin 1196 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.target Rau Cliffrunner
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r << !Warrior
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_，|r|T134937:0|t[Scrolls]|cRXP-Buy_和|r|T134413:0|t[Liferoot]|cRXP_Buy_如果它们用完了|r << Warrior
.target Montarr
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor >>|cRXP_BUY_从他那里买一个|r|T135495:0|t[密集短弓]|cRXP_Buy_如果它用完了|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step
.goto Thousand Needles,44.70,50.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hagar|r
.accept 4821 >>接任务: |cRXP_LOOT_异型卵|r
.target Hagar Lightninghoof
step
.goto Thousand Needles,44.90,48.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾鲁|r
.accept 4767 >>接任务: |cRXP_LOOT_驭风者|r
.target Elu
step
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fp Freewind Post >>获取Freewind Post飞行路径
.target Nyse
step
#completewith Clovenhoof
>>杀死|cRXP_ENEMY_Galak侦察兵|r、|cRXD_ENEMY_加拉克牧马人|r和|cRXP_ENEMY_加拉克追风者|r
>>杀死你看到的每一个|cRXP_ENEMY_Galak Scout|r
.complete 4841,1 
.complete 4841,2 
.complete 4841,3 
.mob Galak Scout
.mob Galak Wrangler
.mob Galak Windchaser
step
#label Splithoofcave
#completewith Clovenhoof
.goto Thousand Needles,44.12,37.22,20 >>进入洞穴
.group
step
#requires Splithoofcave
#completewith Clovenhoof
.goto Thousand Needles,44.44,36.32,12,0
.goto Thousand Needles,43.14,35.19,12,0
.goto Thousand Needles,42.11,34.54,12,0
.goto Thousand Needles,42.01,31.47,20 >>前往|cRXP_PICK_Ancient Brazier |r
.group
step
#requires Splithoofcave
#label Clovenhoof
.goto Thousand Needles,42.01,31.47
>>打开|cRXP_PICK_Ancient Brazier|r。为|cRXP _Loot_Cloven Hoof|r打开它
>>|cRXP_WARN_小心！火盆由两个等级为30|r|cRXP_ENEMY_Galak的火焰防护装置防御|r
.complete 1197,1 
.mob Galak Flame Guard
.group 2
step
#completewith next
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,38.46,32.60,50,0
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
>>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP-Loot_Assassination Note|r]。使用它开始任务
>>|cRXP_WARN_他在Splithoof Crag（东半人马营地）产卵|r
.collect 12564,1,4881 
.accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
.use 12564
.unitscan Galak Messenger
step
.loop 25,Thousand Needles,43.12,36.86,41.18,34.83,40.42,34.45,39.00,32.56,39.68,34.93,39.76,35.82,39.32,36.93,40.43,37.96,41.04,39.03,41.12,41.34,42.33,40.54,42.84,39.09,44.15,40.72,44.98,41.03,45.66,43.81,47.23,41.98,48.57,43.53,49.39,41.24,48.14,40.43,47.11,40.29,45.89,40.32,44.43,38.36,,43.12,36.86
>>杀死|cRXP_ENEMY_Galak侦察兵|r、|cRXD_ENEMY_加拉克牧马人|r和|cRXP_ENEMY_加拉克追风者|r
.complete 4841,1 
.complete 4841,2 
.complete 4841,3 
.mob Galak Scout
.mob Galak Wrangler
.mob Galak Windchaser
step
#completewith next
.goto Thousand Needles,54.57,44.36,12,0
.goto Thousand Needles,53.71,42.59,10,0
.goto Thousand Needles,53.95,41.49,10 >>前往|cRXP_FRONDLY_Dorn|r
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.accept 1149 >>接任务: |cRXP_LOOT_信仰的试炼|r
.timer 7,Test of Faith RP
.target Dorn Plainstalker
step
.goto Thousand Needles,26.63,34.23
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_从木平台的末端跳下。你将被传送而不是死于坠落伤害|r
.complete 1149,1 
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1149 >>交任务: |cRXP_FRIENDLY_信仰的试炼|r
.accept 1150 >>接任务: |cRXP_LOOT_耐力的试炼|r
.target Dorn Plainstalker
.group
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1149 >>交任务: |cRXP_FRIENDLY_信仰的试炼|r
.target Dorn Plainstalker
step
#completewith next
.goto Thousand Needles,56.36,50.39,20,0
>>掠夺地面上的|cRXP_Loot_外星蛋|r
.complete 4821,1 
step
.line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
.line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
.line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
.line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
.line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
.goto Thousand Needles,51.89,43.02,40,0
.goto Thousand Needles,53.41,46.19,40,0
.goto Thousand Needles,54.05,44.96,40,0
.goto Thousand Needles,53.47,46.65,40,0
.goto Thousand Needles,52.61,48.28,40,0
.goto Thousand Needles,53.64,48.50,40,0
.goto Thousand Needles,51.48,48.06,40,0
.goto Thousand Needles,59.69,47.76,40,0
.goto Thousand Needles,62.21,47.76,40,0
.goto Thousand Needles,62.63,48.38,40,0
.goto Thousand Needles,64.01,47.52,40,0
.goto Thousand Needles,63.92,46.63,40,0
.goto Thousand Needles,63.10,45.53,40,0
.goto Thousand Needles,65.83,51.44,40,0
.goto Thousand Needles,65.44,50.11,40,0
.goto Thousand Needles,64.91,50.30,40,0
.goto Thousand Needles,66.11,49.91,40,0
.goto Thousand Needles,66.32,49.13,40,0
.goto Thousand Needles,59.79,58.16,40,0
.goto Thousand Needles,58.87,58.69,40,0
.goto Thousand Needles,57.66,57.70,40,0
.goto Thousand Needles,58.93,57.68,40,0
.goto Thousand Needles,58.94,56.55,40,0
.goto Thousand Needles,58.97,54.98,40,0
.goto Thousand Needles,59.32,53.69,40,0
.goto Thousand Needles,59.79,58.16
>>杀死|cRXP_ENEMY_Gravelsnout Surveyors|r、|cRXD_ENEMY_Gravelsnout Diggers|r和|cRXP_ENEMY_Gibblesnik|r（如果他在上面）。掠夺它们以获取|cRXP_OOT_Ore Sample|r
.complete 1153,1 
.unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39
>>掠夺地面上的|cRXP_Loot_外星蛋|r
.complete 4821,1 
step
#completewith next
.goto Thousand Needles,46.73,48.27,30 >>前往Freewind Post的电梯
step
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 4841 >>交任务: |cRXP_FRIENDLY_清除半人马|r
.accept 5064 >>接任务: |cRXP_LOOT_恐怖图腾的密信|r
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r
.turnin 1197 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.target Rau Cliffrunner
.group
.isQuestComplete 1197
step
.goto Thousand Needles,44.70,50.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hagar|r
.turnin 4821 >>交任务: |cRXP_FRIENDLY_异型卵|r
.accept 4865 >>接任务: |cRXP_LOOT_狂热之蛇|r
.target Hagar Lightninghoof
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor >>|cRXP_BUY_从他那里买一个|r|T135495:0|t[密集短弓]|cRXP_Buy_如果它用完了|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,4767,1 
.target Starn
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r << !Warrior
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_，|r|T134937:0|t[Scrolls]|cRXP-Buy_和|r|T134413:0|t[Liferoot]|cRXP_Buy_如果它们用完了|r << Warrior
.target Montarr
step
#label GrenkaCave
.goto Thousand Needles,27.59,49.86,12,0
.goto Thousand Needles,28.65,51.30,12,0
.goto Thousand Needles,27.29,51.30,12 >>Enter Roguefeather Den
.group
.isOnQuest 1150
step
#completewith Grenka
+|cRXP_WARN_小心|cRXP_ENEMY_Screeching Windcallers |r cast|r|T136022:0|t[阵风]|cRXP_WARN_，在距离|cRXX_ENEMY_Screeching Windcallers 10码以内的4秒AoE眩晕|r
+|cRXP_ENEMY_尖叫Harpies |r cast|r|T136122:0|t[震耳欲聋的尖叫]|cRXP_WARN_，8秒的沉默|r << Mage/Warlock/Priest/Druid/Shaman
.group
.isOnQuest 1150
step
#completewith next
.goto Thousand Needles,25.84,54.78
.cast 6478 >>打开洞穴后面地面上的|cRXP_PICK_Harpy Foods |r，召唤|cRXP_ENEMY_Grenka|r
>>|cRXP_WARN_小心，多包|cRXP_ENEMY_Harpies|r|cRXP-WARN_将相继生成|r
.group
.isOnQuest 1150
step
#label Grenka
.goto Thousand Needles,26.16,55.89,15,0
.goto Thousand Needles,26.69,55.62,15,0
.goto Thousand Needles,25.90,55.23
>>杀死|cRXP_ENEMY_Grenka Bloodscrear|r。掠夺她|cRXX_Loot_Grenka的爪|r
.complete 1150,1 
.mob Grenka Bloodscreech
.group 4
.isOnQuest 1150
step
#completewith next
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
>>杀死|cRXP_ENEMY_Steelsnap|r。掠夺他|cRXX_Loot_Stelsnap's Rib|r
>>|cRXP_WARN_小心，有两个|cRXP_ENEMY_Hyenas|r|cRXP-WARN_defended他！|r
.complete 1131,1 
.unitscan Steelsnap
step
#completewith next
.goto Thousand Needles,14.41,32.44,20,0
.goto Thousand Needles,14.04,32.37,12,0
.goto Thousand Needles,14.04,32.37,20 >>前往高鲈
step
#completewith Paoka1
>>地面上的织机|cRXP_Loot_High Wyvern蛋|r
.complete 4767,1 
step
#completewith next
.goto Thousand Needles,13.18,39.55,15,0
.goto Thousand Needles,13.52,40.27,15,0
.goto Thousand Needles,14.01,40.27,15,0
.goto Thousand Needles,14.92,39.63,15,0
.goto Thousand Needles,16.46,41.09,25,0
.goto Thousand Needles,17.89,40.57,20 >>沿着小路往上跑。前往|cRXP_FRIENDLY_Pao'ka|r
step
#label Paoka1
.goto Thousand Needles,17.89,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka|r to begin the escort
>>|cRXP_WARN_如果|cRXP_ENEMY_Heartrazzer|r|cRXP-WARN_i启动，请小心！这是32级稀有精英|r
.accept 4770 >>接任务: |cRXP_LOOT_回家|r
.target Pao'ka Swiftmountain
.unitscan Heartrazor
step
#completewith next
>>地面上的织机|cRXP_Loot_High Wyvern蛋|r
.complete 4767,1 
step
.goto Thousand Needles,11.06,34.95,40,0
.goto Thousand Needles,15.17,32.66
>>|cRXP_WARN_护送|r|cRXP_FRIENDLY_Pao'ka|r
>>|cRXP_WARN_一旦|cRXP_FRIENDLY_Pao'ka|r到达高位栖息的中部，三只高位栖息的Wyvern就会产卵。你只需要攻击东部的一个，其他的就会消失|r
.complete 4770,1 
.target Pao'ka Swiftmountain
step
#completewith next
.goto Thousand Needles,14.41,32.44,20,0
.goto Thousand Needles,14.04,32.37,12,0
.goto Thousand Needles,14.04,32.37,20 >>前往高鲈
step
.goto Thousand Needles,11.31,33.07,50,0
.goto Thousand Needles,9.57,34.90,50,0
.goto Thousand Needles,10.68,40.95,50,0
.goto Thousand Needles,11.98,36.72,50,0
.goto Thousand Needles,13.91,39.11,50,0
.goto Thousand Needles,11.31,33.07,50,0
.goto Thousand Needles,9.57,34.90,50,0
.goto Thousand Needles,10.68,40.95,50,0
.goto Thousand Needles,11.98,36.72,50,0
.goto Thousand Needles,13.91,39.11,50,0
>>完成掠夺|cRXP_LOOT_Highorse Wyvern蛋|r在地上
.complete 4767,1 
step
#completewith Messenger
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
>>杀死|cRXP_ENEMY_Steelsnap|r。掠夺他|cRXX_Loot_Stelsnap's Rib|r
>>|cRXP_WARN_小心，有两个|cRXP_ENEMY_Hyenas|r|cRXP-WARN_defended他！|r
.complete 1131,1 
step
.goto Thousand Needles,21.06,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laer|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Laer Stepperunner
step
#optional
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
>>|cRXP_WARN_小心！打开此选项将召唤三个|cRXP_ENEMY_Galak刺客|r|cRXP_WARN_您必须保护的|cRXT_FRIENDLY_Kanati|r|r
.turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
.accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
.target Kanati Greycloud
.isOnQuest 4881
step
#optional
.goto Thousand Needles,21.25,32.05
>>杀死|cRXP_ENEMY_Galak刺客|r以保护|cRXP_FRIENDLY_Kanati|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
#optional
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
.turnin 4966 >>交任务: |cRXP_FRIENDLY_保护卡纳提·灰云|r
.isQuestComplete 4966
step
.goto Thousand Needles,21.54,32.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motega|r
.turnin 4865 >>交任务: |cRXP_FRIENDLY_狂热之蛇|r
.accept 5062 >>接任务: |cRXP_LOOT_神圣之火|r
.turnin 4770 >>交任务: |cRXP_FRIENDLY_回家|r
.target Motega Firemane
step
.goto Thousand Needles,21.43,32.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizlo|r
.accept 5151 >>接任务: |cRXP_LOOT_超适应齿轮|r
.target Wizlo Bearingshiner
.group
step
.goto Thousand Needles,22.78,24.53
>>打开笼子杀死|cRXP_ENEMY_Enraged Panther|r。掠夺他以获得|cRXX_Loot_超级电容器Gizmo |r
.complete 5151,1 
.mob Enraged Panther
.group 2
step
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
.goto Thousand Needles,11.50,21.61,40,0
.goto Thousand Needles,11.88,20.90,40,0
.goto Thousand Needles,12.89,19.97,40,0
.goto Thousand Needles,14.49,20.04,40,0
.goto Thousand Needles,15.69,18.65,40,0
.goto Thousand Needles,16.20,18.53,40,0
.goto Thousand Needles,16.70,18.61,40,0
.goto Thousand Needles,17.28,18.93,40,0
.goto Thousand Needles,17.66,19.46,40,0
.goto Thousand Needles,17.96,20.18,40,0
.goto Thousand Needles,17.87,20.78,40,0
.goto Thousand Needles,17.54,21.49,40,0
.goto Thousand Needles,17.24,22.32,40,0
.goto Thousand Needles,17.66,22.98,40,0
.goto Thousand Needles,18.11,23.65,40,0
.goto Thousand Needles,18.57,24.07,40,0
.goto Thousand Needles,18.68,24.68,40,0
.goto Thousand Needles,18.64,25.90,40,0
.goto Thousand Needles,18.48,26.74,40,0
.goto Thousand Needles,17.82,27.50,40,0
.goto Thousand Needles,17.19,29.60,40,0
.goto Thousand Needles,15.67,31.56,40,0
.goto Thousand Needles,15.08,31.63,40,0
.goto Thousand Needles,14.34,30.13,40,0
.goto Thousand Needles,13.75,28.54,40,0
.goto Thousand Needles,13.36,26.97,40,0
.goto Thousand Needles,13.01,26.31,40,0
.goto Thousand Needles,11.91,25.02,40,0
.goto Thousand Needles,11.55,24.44,40,0
.goto Thousand Needles,11.49,24.07,40,0
.goto Thousand Needles,11.16,23.21,40,0
.goto Thousand Needles,11.20,22.29,40,0
.goto Thousand Needles,11.50,21.61
>>杀死|cRXP_ENEMY_Steelsnap|r。掠夺他|cRXX_Loot_Stelsnap's Rib|r
>>|cRXP_WARN_他逆时针巡逻|r
>>|cRXP_WARN_用|r|T132172:0|t[Eagle Eye]|cRXP_WARN_if you have trained为他侦察|r << Hunter
>>|cRXP_WARN_用|r|T136034:0|t[远视]|cRXP_WARN_if you have trained为他侦察|r << Shaman
.complete 1131,1 
.unitscan Steelsnap
step
#label Messenger
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,18.32,22.10,0
.goto Thousand Needles,18.32,22.10,40,0
.goto Thousand Needles,18.72,22.53,40,0
.goto Thousand Needles,18.47,23.06,40,0
.goto Thousand Needles,18.70,24.42,40,0
.goto Thousand Needles,18.63,26.19,40,0
.goto Thousand Needles,18.98,26.71,40,0
.goto Thousand Needles,19.46,27.04,40,0
.goto Thousand Needles,19.96,27.67,40,0
.goto Thousand Needles,20.45,27.87,40,0
.goto Thousand Needles,20.83,28.26,40,0
.goto Thousand Needles,22.05,30.61,40,0
.goto Thousand Needles,24.56,32.76,40,0
.goto Thousand Needles,25.29,34.23,40,0
.goto Thousand Needles,27.34,34.02,40,0
.goto Thousand Needles,28.24,33.37,40,0
.goto Thousand Needles,28.64,33.43,40,0
.goto Thousand Needles,29.24,33.96,40,0
.goto Thousand Needles,29.51,33.89,40,0
.goto Thousand Needles,30.69,32.43,40,0
.goto Thousand Needles,31.55,30.61,40,0
.goto Thousand Needles,32.29,30.52,40,0
.goto Thousand Needles,33.27,30.86,40,0
.goto Thousand Needles,33.81,30.12,40,0
.goto Thousand Needles,34.25,29.49,40,0
.goto Thousand Needles,35.19,28.11,40,0
.goto Thousand Needles,35.84,28.59,40,0
.goto Thousand Needles,36.57,29.47,40,0
.goto Thousand Needles,37.34,29.29,40,0
.goto Thousand Needles,38.81,31.73,40,0
.goto Thousand Needles,39.51,33.43
>>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP-Loot_Assassination Note|r]。使用它开始任务
>>|cRXP_WARN_他在Splithoof Crag（东半人马营地）产卵|r
>>|cRXP_WARN_用|r|T132172:0|t[Eagle Eye]|cRXP_WARN_if you have trained为他侦察|r << Hunter
>>|cRXP_WARN_用|r|T136034:0|t[远视]|cRXP_WARN_if you have trained为他侦察|r << Shaman
.collect 12564,1,4881 
.accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
.use 12564
.unitscan Galak Messenger
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
>>|cRXP_WARN_小心！打开此选项将召唤三个|cRXP_ENEMY_Galak刺客|r|cRXP_WARN_您必须保护的|cRXT_FRIENDLY_Kanati|r|r
.turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
.accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
.target Kanati Greycloud
.isOnQuest 4881
step
.goto Thousand Needles,21.25,32.05
>>杀死|cRXP_ENEMY_Galak刺客|r以保护|cRXP_FRIENDLY_Kanati|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
.turnin 4966 >>交任务: |cRXP_FRIENDLY_保护卡纳提·灰云|r
.isQuestComplete 4966
step
.goto Thousand Needles,21.43,32.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizlo|r
.turnin 5151 >>交任务: |cRXP_FRIENDLY_超适应齿轮|r
.target Wizlo Bearingshiner
.group
.isQuestComplete 5151
step
#loop
.goto Thousand Needles,36.58,38.77,35,0
.goto Thousand Needles,37.77,38.17,35,0
.goto Thousand Needles,36.63,36.23,35,0
.goto Thousand Needles,34.96,33.22,35,0
.goto Thousand Needles,33.37,32.85,35,0
.goto Thousand Needles,33.67,34.09,35,0
.goto Thousand Needles,34.88,34.82,35,0
.goto Thousand Needles,35.62,36.20,35,0
.goto Thousand Needles,36.05,37.41,35,0
.goto Thousand Needles,36.58,38.77,35,0
>>在地面和水下掠夺|cRXP_PICK_香龙舌兰植物|r
>>|cRXP_ENEMY_烫伤元素|r和|cRXP__ENEMY_沸腾元素|r对霜损伤免疫，并且具有高度的耐火性。尽量避开它们或使用奥术 << Mage
>>|cRXP_WARN_小心|r|cRXP_ENEMY_沸腾元素|r|cRXP_WARN_cast|r|T132156:0|t[蒸汽喷射]|cRXP-WARN_，在10秒内减少30%的命中几率|r << Warrior/Rogue/Shaman/Druid
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Scalding Elements|r|cRXP_WARN_cast|r|T135807:0|t[Scald]|cRXP _WARN_，立即造成150点火焰伤害并使你眩晕4秒|r
.complete 5062,1 
step
#completewith next
.hs >>火炉到雷霆崖
.use 6948
step
.goto Thunder Bluff,45.83,64.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Pala
step
.goto Thunder Bluff,61.53,80.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1131 >>交任务: |cRXP_FRIENDLY_钢齿土狼|r
.target Melor Stonehoof
step << Hunter
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14319 >>训练你的职业技能
.target Urek Thunderhorn
.xp <28,1
.xp >30,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 5384 >>训练你的职业技能
.target Urek Thunderhorn
.xp <30,1
step << Hunter
.goto Thunder Bluff,54.07,84.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24559 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <30,1
step << Warrior
.goto Thunder Bluff,57.59,85.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 7887 >>训练你的职业技能
.target Ker Ragetotem
.xp <28,1
.xp >30,1
step << Warrior
#optional
.goto Thunder Bluff,57.27,87.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
.train 7369 >>训练你的职业技能
.accept 1718 >>接任务: |cRXP_LOOT_岛民|r
.target Torm Ragetotem
.xp <30,1
step
.goto Thunder Bluff,69.88,30.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.turnin 5062 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.accept 5088 >>接任务: |cRXP_LOOT_阿利卡拉|r
.target Magatha Grimtotem
.group
step
.goto Thunder Bluff,69.88,30.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.turnin 5062 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.target Magatha Grimtotem
step << Druid
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 3029 >>训练你的职业技能
.target Kym Wildmane
.xp <28,1
.xp >30,1
step << Druid
#optional
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 783 >>训练你的职业技能
.target Kym Wildmane
.xp <30,1
step
.goto Thunder Bluff,36.01,59.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥尔德·石塔|r
.accept 1102 >>接任务: |cRXP_WARN_奥尔德的报复|r
.target Auld Stonespire
.dungeon RFK
step << Priest
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 8104 >>训练你的职业技能
.target Miles Welsh
.xp <28,1
.xp >30,1
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 602 >>训练你的职业技能
.target Miles Welsh
.xp <30,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 759 >>训练你的职业技能
.target Archmage Shymm
.xp <28,1
.xp >30,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 8412 >>训练你的职业技能
.target Archmage Shymm
.xp <30,1
step << Mage
.goto Thunder Bluff,22.48,16.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Birgitte|r交谈
.train 3566 >>火车|T135765:0|t[电传：雷霆崖]
.target Birgitte Cranston
.xp <30,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 8053 >>训练你的职业技能
.target Tigor Skychaser
.xp <28,1
.xp >30,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 556 >>训练你的职业技能
.target Tigor Skychaser
.xp <30,1
step
#completewith next
.skill firstaid,150 >>创建|T133687:0|t[厚羊毛绷带]直到你的技能达到150
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
.train 7928 >>火车|T133671:0|t[丝绸绷带]
>>|cRXP_WARN_如果你没有足够的羊毛布达到150技能，请跳过这一步|r
.target Pand Stonebinder
.skill firstaid,<1,1
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna|r|cRXP_BUY_交谈。从她那里购买|r|T135495:0|t[Strurdy Recurve Bow]（如果有）|r
.collect 11306,1,1153,1 
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna交谈|r
.collect 3030,1800,1153,1 
.target Kuna Thunderhorn
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Delgo|r|cRXP_BUY_交谈。从他那里购买|r|T132408:0|t[Merciless Axe]（如果有）|r
>>|cRXP_BUY_或者，您也可以购买|r|T135576:0|t[Bullova]
.collect 12249,1,1153,1 
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
step << Rogue
.goto Thunder Bluff,53.00,56.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kard|r|cRXP_BUY_交谈。从他那里买一个|r|T135275:0|t[大刀]|r
.collect 2520,1,1153,1 
.money <2.5924
.target Kard Ragetotem
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
#completewith TearMoons
+装备|T135275:0|t[大刀]
.use 2520
.itemcount 2520,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
.goto Thunder Bluff,53.00,56.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kard|r|cRXP_BUY_交谈。从他那里买一个|r|T135651:0|t[Main Gauche]|r
.collect 2526,1,1153,1 
.money <2.0353
.target Kard Ragetotem
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#completewith FreewindHome
+配备|T135651:0|t[主规]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
#completewith next
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,45.10,57.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.turnin 1153 >>交任务: |cRXP_FRIENDLY_新的矿石样本|r
.target Tatternack Steelforge
step
.goto The Barrens,50.48,78.72,100 >>前往达斯沃洛沼泽
step
#optional
#label Hoofprints
.goto Dustwallow Marsh,29.71,47.65
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击地面上的|cRXP_PICK_Hoofprints|r
.accept 1268 >>接任务: |cRXP_LOOT_可疑的蹄印|r
.xp <30,1
step
#optional
#label Badge
.goto Dustwallow Marsh,29.83,48.24
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击木板上的|cRXP_PICK_Theramore守卫徽章|r
.accept 1269 >>接任务: |cRXP_LOOT_帕瓦尔·雷瑟上尉|r
.xp <30,1
step
#optional
.goto Dustwallow Marsh,29.63,48.60
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击壁炉上方的|cRXP_PICK_Black Shield |r
.accept 1251 >>接任务: |cRXP_LOOT_黑色盾牌|r
.xp <30,1
step
#completewith PotsandScrolls
.goto Dustwallow Marsh,30.65,45.34,60,0
.goto Dustwallow Marsh,32.28,42.80,60,0
.goto Dustwallow Marsh,33.12,40.85,60,0
.goto Dustwallow Marsh,33.55,38.71,60,0
.goto Dustwallow Marsh,34.73,37.66,60,0
.goto Dustwallow Marsh,34.31,34.40,60,0
.goto Dustwallow Marsh,33.30,31.23,60,0
.goto Dustwallow Marsh,34.58,30.62,60,0
.goto Dustwallow Marsh,36.64,31.72,120 >>前往Brackenwall村
>>|cRXP_WARN_小心！该地区有36-38级暴徒。为了安全起见，请遵循航路点|r
step
#optional
.goto Dustwallow Marsh,36.41,31.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1268 >>交任务: |cRXP_FRIENDLY_可疑的蹄印|r
.target Krog
.isOnQuest 1268
step
#optional
.goto Dustwallow Marsh,36.41,31.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1269 >>交任务: |cRXP_FRIENDLY_帕瓦尔·雷瑟上尉|r
.target Krog
.isOnQuest 1269
step
#optional
.goto Dustwallow Marsh,36.41,31.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1251 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.accept 1321 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Krog
.isOnQuest 1251
step
#optional
.goto Dustwallow Marsh,36.41,31.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗格|r
.accept 1321 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Krog
.isQuestTurnedIn 1251
step
#optional
.goto Dustwallow Marsh,36.50,30.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜高尔|r
.turnin 1321 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.target Do'gol
.isQuestTurnedIn 1251
step << Warrior/Shaman
.goto Dustwallow Marsh,36.17,31.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zulrg|r|cRXP_BUY_交谈。从他那里买一个|r|T135158:0|t[Big Stick]如果它用完了|r
.collect 12251,1,4904,1 
.money <4.3117
.target Zulrg
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
#label PotsandScrolls
.goto Dustwallow Marsh,36.49,30.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞巴莱|r
.vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r
.target Balai Lok'Wein
step
.goto Dustwallow Marsh,36.49,30.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞巴莱|r
.vendor >>|cRXP_BUY_从她那里购买|r|T133735:0|t[急救手册]|cRXP_Buy_|r
.collect 16112,1,4904,1 >>图谱：重丝绷带（1）
.collect 16113,1,4904,1 >>图谱：Magewave绷带（1）
.collect 16084,1,4904,1 >>说明书：专家急救-包扎（1）
.target Balai Lok'Wein
.skill firstaid,<1,1
step
#completewith next
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fp Brackenwall >>获取Brackenwall村飞行路线
.fly Freewind >>飞到Freewind Post
.target Shardi
.zoneskip Thousand Needles
step
.goto Thousand Needles,44.90,48.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾鲁|r
.turnin 4767 >>交任务: |cRXP_FRIENDLY_驭风者|r
.target Elu
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor >>|cRXP_BUY_从他那里买一个|r|T135495:0|t[密集短弓]|cRXP_Buy_如果它用完了|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r << !Warrior
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_，|r|T134937:0|t[Scrolls]|cRXP-Buy_和|r|T134413:0|t[Liferoot]|cRXP_Buy_如果它们用完了|r << Warrior
.target Montarr
step
#label FreewindHome
.goto Thousand Needles,46.07,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃比克瓦|r
.home >>将您的炉石设置为Freewind Post
.target Innkeeper Abeqwa
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1150 >>交任务: |cRXP_FRIENDLY_耐力的试炼|r
.accept 1151 >>接任务: |cRXP_LOOT_力量的试炼|r
.target Dorn Plainstalker
.isQuestComplete 1150
.group
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.accept 1151 >>接任务: |cRXP_LOOT_力量的试炼|r
.target Dorn Plainstalker
.isQuestTurnedIn 1150
.group
step
.goto Thousand Needles,36.10,55.02,100,0
.goto Thousand Needles,30.35,51.58,40,0
.goto Thousand Needles,24.34,44.72,60,0
.goto Thousand Needles,20.88,39.84,60,0
.goto Thousand Needles,17.33,36.72,60,0
.goto Thousand Needles,13.27,26.74,60,0
.goto Thousand Needles,9.98,21.71,60,0
.goto Thousand Needles,24.34,44.72
>>找到并杀死|cRXP_ENEMY_Rok'Alim the Pounder|r。掠夺他的|cRXX_Loot_Frages\r
>>|cRXP_WARN_他在该地区西北部的大部分地区巡逻|r
.complete 1151,1 
.unitscan Rok'Alim the Pounder
.isOnQuest 1151
.group 2
step
.goto Thousand Needles,31.47,36.71,30 >>前往乌云顶峰
step
#completewith next
.goto Thousand Needles,33.08,35.33,20,0
.goto Thousand Needles,32.78,32.24,20,0
.goto Thousand Needles,32.03,31.36,20,0
.goto Thousand Needles,32.37,28.64,20,0
.goto Thousand Needles,32.60,27.51,20,0
.goto Thousand Needles,34.87,31.76,20,0
.goto Thousand Needles,34.15,35.77,20,0
.goto Thousand Needles,33.32,36.24,20 >>前往乌云顶峰
step
.goto Thousand Needles,31.79,32.58
>>打开平台顶部的|cRXP_PICK_Document Chest|r。为|cRXP_Loot_Secret Note#1|r抢劫
.complete 5064,1 
step
.goto Thousand Needles,33.80,39.90
>>打开大帐篷内的|cRXP_PICK_Document Chest|r。为|cRXP_Loot_Secret Note#1|r抢劫
.complete 5064,2 
step
.goto Thousand Needles,39.20,41.60
>>打开东部高原帐篷内的|cRXP_PICK_Document Chest|r。为|cRXP_Loot_Secret Note#1|r抢劫
.complete 5064,3 
step
#completewith next
.goto Thousand Needles,35.68,39.25,20,0
.goto Thousand Needles,34.32,35.74,20,0
.goto Thousand Needles,35.56,30.94,20,0
.goto Thousand Needles,36.97,31.97,20 >>前往东北高原的篝火
.group
step
>>清除|cRXP_ENEMY_Grimtoms|r，然后点燃篝火
>>杀死|cRXP_ENEMY_Arikara|r。为她掠夺她|cRXX_Loot_Skin|r
.goto Thousand Needles,38.00,35.30
.complete 5088,2 
.complete 5088,1 
.mob Arikara
.group 2
step
.goto Thousand Needles,38.00,26.80
>>杀死|cRXP_ENEMY_Arnak Grimtomet|r。为他的|cRXX_Loot_Hoof|r掠夺他
.complete 5147,1 
.mob Arnak Grimtotem
step
.goto Thousand Needles,38.00,26.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota|r
>>|cRXP_WARN_这将开始护送|r
.accept 4904 >>接任务: |cRXP_LOOT_终获解救|r
.target Lakota Windsong
step
.goto Thousand Needles,38.96,29.46,20,0
.goto Thousand Needles,37.56,31.43,20,0
.goto Thousand Needles,36.89,31.73,20,0
.goto Thousand Needles,35.64,31.01,20,0
.goto Thousand Needles,34.53,30.78,20,0
.goto Thousand Needles,33.19,28.54,20,0
.goto Thousand Needles,32.53,27.44,20,0
.goto Thousand Needles,32.28,28.67,20,0
.goto Thousand Needles,32.04,31.37,20,0
.goto Thousand Needles,32.86,32.62,20,0
.goto Thousand Needles,33.05,35.42,20,0
.goto Thousand Needles,31.06,36.89
>>护送|cRXP_FRIENDLY_Lakota|r到安全地带
>>|cRXP_WARN_每当她到达一个新平台时，两个|r|cRXP_ENEMY_Grimtoms|r|cRXP_WARN_将产生。如果你后面有重生，试着站在她前面，清理平台|r
>>|cRXP_WARN_小心，因为这个任务很难。不要害怕跑在你身后而错过了护送而逃跑|r
.complete 4904,1 
.target Lakota Windsong
step
.goto Thousand Needles,21.54,32.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motega|r
.turnin 5088 >>交任务: |cRXP_FRIENDLY_阿利卡拉|r
.target Motega Firemane
.isQuestComplete 5088
.group
step
#loop
.goto Thousand Needles,18.74,24.36,50,0
.goto Thousand Needles,20.11,21.98,50,0
.goto Thousand Needles,17.25,19.01,50,0
.goto Thousand Needles,16.72,22.61,50,0
.xp 29+44350 >>升级到44350/47400
.isQuestComplete 1151
step
#loop
.goto Thousand Needles,18.74,24.36,50,0
.goto Thousand Needles,20.11,21.98,50,0
.goto Thousand Needles,17.25,19.01,50,0
.goto Thousand Needles,16.72,22.61,50,0
.xp 30 >>升级到30级

step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1151 >>交任务: |cRXP_FRIENDLY_力量的试炼|r

.target Dorn Plainstalker
.isQuestComplete 1151
.group
step << skip
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.accept 1152 >>接任务: |cRXP_WARN_知识试炼|r
.target Dorn Plainstalker
.isQuestTurnedIn1151
.group

step
#completewith next
.goto Thousand Needles,70.58,62.69,200 >>前往: |cRXP_PICK_千针石林|r
step
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1110 >>接任务: |cRXP_LOOT_火箭车零件|r
.accept 1111 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
.target Kravel Koalbeard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔|r, Wizzle
.accept 1104 >>接任务: |cRXP_LOOT_含盐的蝎毒|r
.goto Thousand Needles,78.07,77.13
.accept 1105 >>接任务: |cRXP_LOOT_硬化龟壳|r
.goto Thousand Needles,78.14,77.12
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,80.17,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.accept 1176 >>接任务: |cRXP_LOOT_减轻负重|r
.target Pozzik
step
.goto Thousand Needles,81.63,77.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zherin|r
.accept 1175 >>接任务: |cRXP_LOOT_安全隐患|r
.target Trackmaster Zherin
step
#completewith TraveltoFWP
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >>前往: |cRXP_PICK_塔纳利斯|r
step
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fp Gadgetzan >>获取Gadgetzan飞行路线
.target Bulkrek Ragefist
.cooldown item,6948,>0
step
.hs >>Hearth to Freewind Post公司公司
.use 6948
.cooldown item,6948,>0
step
#label TraveltoFWP
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fp Gadgetzan >>获取Gadgetzan飞行路线
.fly Freewind >>飞到Freewind Post
.target Bulkrek Ragefist
.cooldown item,6948,<0
step
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 5064 >>交任务: |cRXP_FRIENDLY_恐怖图腾的密信|r
.turnin 5147 >>交任务: |cRXP_FRIENDLY_通缉：阿纳克·恐怖图腾|r
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.00,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalia|r
.turnin 4904 >>交任务: |cRXP_FRIENDLY_终获解救|r
.target Thalia Amberhide
.isQuestComplete 4904
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r << !Warrior
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_，|r|T134937:0|t[Scrolls]|cRXP-Buy_和|r|T134413:0|t[Liferoot]|cRXP_Buy_如果它们用完了|r << Warrior
.target Montarr
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor >>|cRXP_BUY_从他那里买一个|r|T135495:0|t[Dense Shortbow]|cRXP_Buy_如果它用完了，用箭装满你的箭袋|r
.collect 3030,1800,4767,1 
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,4767,1 
.target Starn
step
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Crossroads >>飞向十字路口
.target Nyse
.zoneskip The Barrens
step
.goto The Barrens,51.10,29.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
.accept 1145 >>接任务: |cRXP_LOOT_疯狂的虫群|r
.target Korran
step << !Warrior
#completewith WharfDizzy
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
step << Warrior
#completewith WharfDizzy
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
.isOnQuest 1718
step << Warrior
#completewith IslanderPickUp
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Devrak
.zoneskip Orgrimmar
step << Warrior
#completewith next
.goto Orgrimmar,75.00,34.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 1145 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.accept 1146 >>接任务: |cRXP_LOOT_疯狂的虫群|r
.target Belgrom Rockmaul
step << Warrior
#label IslanderPickUp
.goto Orgrimmar,80.37,32.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索瑞克|r
.accept 1718 >>接任务: |cRXP_LOOT_岛民|r
.target Sorek
step << Warrior
#completewith WharfDizzy
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >>飞到棘轮
.target Doras
.zoneskip Orgrimmar,1
step
#label WharfDizzy
.goto The Barrens,63.35,38.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员迪兹维格|r
.turnin 1111 >>交任务: |cRXP_FRIENDLY_码头管理员迪兹维格|r
.accept 1112 >>接任务: |cRXP_LOOT_给克拉维尔的零件|r
.target Wharfmaster Dizzywig
step << Shaman
.goto The Barrens,65.83,43.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 220 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 63 >>接任务: |cRXP_LOOT_水之召唤|r
.target Islen Waterseer
step << Shaman
.goto The Barrens,65.83,43.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
>>|cRXP_WARN_确保获得|r|T134754:0|t[|cRXP_LOOT_Water Sapta|r
.turnin 972 >>交任务: |cRXP_FRIENDLY_水之灵契|r
.collect 6637,1 
step << Warrior
#completewith next
.goto The Barrens,65.09,47.81,90,0
.goto The Barrens,68.61,49.16,100 >>Travel to Fray Island
step << Warrior
.goto The Barrens,68.62,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
.turnin 1718 >>交任务: |cRXP_FRIENDLY_岛民|r
.accept 1719 >>接任务: |cRXP_LOOT_格斗考验|r
.target Klannoc Macleod
step << Warrior
>>走到你身后的格栅上。快速杀死一个接一个来的|cRXP_ENEMY_Affrey Challenger|r
>>一旦出现就杀死|cRXP_ENEMY_Big Will|r
.goto The Barrens,68.59,48.76
.complete 1719,1 
.complete 1719,2 
.mob Big Will
step << Warrior
.goto The Barrens,68.62,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
>>|cRXP_WARN_这会教你狂暴姿态|r
.turnin 1719 >>交任务: |cRXP_FRIENDLY_格斗考验|r
.accept 1791 >>接任务: |cRXP_LOOT_捕风者|r
.target Klannoc Macleod
step << Warrior
.goto The Barrens,62.81,37.91,200 >>Travel back to Ratchet

step << !Mage
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bragok
.zoneskip Orgrimmar
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8412 >>训练你的职业技能
.target Pephredo
.xp <30,1
.xp >32,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8422 >>训练你的职业技能
.target Pephredo
.xp <32,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Horthus|r|cRXP_BUY_交谈。从他那里购买两个或多个|r|T134419:0|t[传送符文]|r
.collect 17031,2 
.target Horthus
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 1760 >>训练你的职业技能
.target Ormok
.xp <30,1
.xp >32,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8623 >>训练你的职业技能
.target Ormok
.xp <32,1
step << Shaman
.goto Orgrimmar,37.95,37.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔恩·火结|r
.trainer >>训练你的职业技能
.accept 1531 >>接任务: |cRXP_LOOT_空气的召唤|r
.target Searn Firewarder
step
.goto Orgrimmar,44.70,52.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Craven|r交谈
>>|cRXP_WARN_他在阴影之谷巡逻|r
.accept 1431 >>接任务: |cRXP_LOOT_联盟关系|r
.target Craven Drok
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 2941 >>训练你的职业技能
.target Mirket
.xp <30,1
.xp >32,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 6213 >>训练你的职业技能
.target Mirket
.xp <32,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul

step << Priest/Warlock
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Katis|r|cRXP_BUY_交谈。从她那里购买|r|T135466:0|t[Pestilent Wand]|r
.collect 5347,1,6544,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
step
.goto Orgrimmar,75.00,34.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 1145 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.accept 1146 >>接任务: |cRXP_LOOT_疯狂的虫群|r
.target Belgrom Rockmaul
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 7369 >>训练你的职业技能
.target Grezz Ragefist
.xp <30,1
.xp >32,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20658 >>训练你的职业技能
.target Grezz Ragefist
.xp <32,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
>>|cRXP_WARN_保存至少1金88银以备日后使用|r
.train 5384 >>训练你的职业技能
.target Ormak Grimshot
.xp <30,1
.xp >32,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
>>|cRXP_WARN_保存至少1金88银以备日后使用|r
.train 14263 >>训练你的职业技能
.target Ormak Grimshot
.xp <32,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24559 >>训练你的宠物法术
.target Xao'tsu
.xp <30,1
step << Hunter
.goto Orgrimmar,78.11,38.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Jin'sora交谈|r
.collect 3030,1800,549,1 << Hunter 
.target Jin'sora
step << Hunter
.goto Orgrimmar,81.52,19.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
.train 197 >>Train Two-Handed Axes
.target Hanashi
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 602 >>训练你的职业技能
.target Ur'kyo
.xp <30,1
.xp >32,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6077 >>训练你的职业技能
.target Ur'kyo
.xp <32,1
step
.goto Orgrimmar,22.50,52.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔丹|r
.turnin 1431 >>交任务: |cRXP_FRIENDLY_联盟关系|r
.accept 1432 >>接任务: |cRXP_LOOT_联盟关系|r
.target Keldran
step
#sticky
#completewith EnterRFK
.subzone 491 >>现在你应该找一个团队去Razorfen Kraul
.dungeon RFK
step
#optional
.abandon 5151 >>放弃超级电容器Gizmo
.isOnQuest 5151
step
#optional
.abandon 5088 >>Abandon Arikara
.isOnQuest 5088
step
#optional
.abandon 1150 >>放弃耐久性测试
.isOnQuest 1150
step
#optional
.abandon 1151 >>放弃强度测试
.isOnQuest 1151
step << Mage
#completewith GoingGoing
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.dungeon RFK
step << !Mage
#completewith GoingGoing
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
.dungeon RFK
step << !Mage
#completewith GoingGoing
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
.dungeon RFK
step
#label GoingGoing
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.accept 1109 >>接任务: |cRXP_WARN_蝙蝠的粪便|r
.target Master Apothecary Faranell
.dungeon RFK
.xp <30,1
step
.goto Tirisfal Glades,60.96,58.63,12,0
.goto Tirisfal Glades,61.51,59.01,10,0
.goto Tirisfal Glades,61.27,59.22,8,0
.goto Tirisfal Glades,61.13,58.84,8,0
.goto Tirisfal Glades,61.38,58.71,8,0
.goto Tirisfal Glades,61.34,59.17,8,0
.goto Tirisfal Glades,60.51,58.69,-1
.goto Tirisfal Glades,60.94,46.35,-1
>>上齐柏林塔
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Orgrimmar
.dungeon RFK
step
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Camp Taurajo >>Fly Camp Taurajo
.target Doras
.zoneskip The Barrens
.dungeon RFK
step
#label EnterRFK
.goto The Barrens,43.46,90.18,0
.goto The Barrens,43.46,90.18,40,0
.goto 1414,50.89,70.35
.zone 301 >>Enter Razorfen Kraul
.dungeon RFK
step
>>杀死|cRXP_ENEMY_克劳尔蝙蝠|r。掠夺它们以获得|cRXX_Loot_克劳尔关诺|r
.complete 1109,1 
.mob Kraul Bat
.mob Greater Kraul Bat
.dungeon RFK
step
>>杀死|cRXP_ENEMY_Charlga剃刀侧面|r。为她|cRXP_Loot_Heart|r和|T134939:0|t[|cRXP-Loot_Small Scroll|r]掠夺她。使用滚动开始任务
.complete 1102,1 
.collect 17008,1 
.accept 6522 >>接任务: |cRXP_WARN_邪恶的盟友|r
.mob Charlga Razorflank
.use 17008
.dungeon RFK
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_进口商威利克斯|r
>>|cRXP_WARN_这将开始护送|r
.accept 1144 >>接任务: |cRXP_WARN_进口商威利克斯|r
.target Willix the Importer
.dungeon RFK
step
>>护送|cRXP_FRIENDLY_Willix进口商|r通过Razorfen Kraul
>>|cRXP_WARN_请确保靠近|cRXP_FRIENDLY_Willix|r，否则任务可能无法完成！|r
.complete 1144,1 
.isOnQuest 1144
.target Willix the Importer
.dungeon RFK
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_进口商威利克斯|r
.turnin 1144 >>交任务: |cRXP_FRIENDLY_进口商威利克斯|r
.target Willix the Importer
.isQuestComplete 1144
.dungeon RFK
step
>>|cRXP_WARN_在实例开始时，向左第一个。当你到达葡萄园的尽头时，向下下降到你看到下面|cRXP_ENEMY_Agam'ars|r的地方|r
>>|cRXP_WARN_与您的团队一起杀死下面的|cRXP_ENEMY_Agam'ars|r，以创建一个干净的空间|r
>>|cRXP_WARN_使用|r|T132765:0|t[Crate With Holes]|cRXP_WARN_to在该位置调用一个|cRXP-FRIENDLY_Snufflenose Gopher|r。找到正确的地点召唤它可能很挑剔|r
>>|cRXP_WARN_使用|r|T135474:0|t[Sunfflenose Command Stick]|cRXP_WARN_to操作|cRXP-FRIENDLY_Gopher|r挖掘|r|cRXP_OOT_Blueleaf Tubers|r
>>|cRXP_WARN_一旦挖到|cRXP_Loot_Blueleaf Tube|r，就将其洗劫一空|r
>>|cRXP_WARN_再次继续使用|r|T135474:0|t[Sunfflenose Command Stick]|cRXP_WARN_on，以便挖出另一个。重复此过程，直到您有6个|r|cRXP_LOOT_Blueleaf Tubers|r
>>|cRXP_WARN_如果您的|cRXP_FRIENDLY_Gopher|r解扩，请使用|r|T132765:0|t[Crate With Holes]|cRXP_WARN_to调用另一个。注意，它只有5次充电|r
.complete 1221,1 
.use 5880 
.use 6684 
.target Snufflenose Gopher
.isOnQuest 1221
.dungeon RFK
step << !Mage
#completewith next
.hs >>Hearth to Freewind Post公司公司
.use 6948
.dungeon RFK
step << !Mage
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Nyse
.zoneskip Thunder Bluff
.dungeon RFK
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
.dungeon RFK
step
.goto Thunder Bluff,36.01,59.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥尔德·石塔|r
.turnin 1102 >>交任务: |cRXP_FRIENDLY_奥尔德的报复|r
.target Auld Stonespire
.isQuestComplete 1102
.dungeon RFK
step
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Tal
.zoneskip Thunder Bluff,1
.dungeon GNOMER
step
#sticky
#completewith EnterGNOMER
.subzone 133 >>现在你应该找一个小组去Gnomeregan
.dungeon GNOMER
step
.goto Orgrimmar,76.00,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺格|r
.accept 2841 >>接任务: |cRXP_WARN_设备之战|r
.target Nogg
.dungeon GNOMER
step
.goto Orgrimmar,75.50,25.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索维克|r
>>通过他的对话来接受这个任务
.accept 2842 >>接任务: |cRXP_WARN_主工程师斯库提|r
.target Sovik
.dungeon GNOMER
step
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >>飞到棘轮
.target Doras
.zoneskip Orgrimmar,1
.dungeon GNOMER
step
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Ratchet >>飞到棘轮
.target Tal
.zoneskip Thunder Bluff,1
.dungeon RFK
step
.goto The Barrens,62.370,37.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.turnin 1221 >>交任务: |cRXP_FRIENDLY_蓝叶薯|r
.target Mebok Mizzyrix
.isQuestComplete 1221
.dungeon RFK
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
.dungeon GNOMER
step
.goto Stranglethorn Vale,27.60,77.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯库提|r
.turnin 2842 >>交任务: |cRXP_FRIENDLY_主工程师斯库提|r
.accept 2843 >>接任务: |cRXP_WARN_出发！诺莫瑞根！|r
.target Scooty
.timer 9 >>Goblin Transponder
.dungeon GNOMER
step
.goto Stranglethorn Vale,27.60,77.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯库提|r
.turnin 2843 >>交任务: |cRXP_FRIENDLY_出发！诺莫瑞根！|r
.target Scooty
.dungeon GNOMER
step
.goto Stranglethorn Vale,27.63,77.55
.goto Eastern Kingdoms,42.75,59.93,30 >>登上Gnomeregan转发器
.dungeon GNOMER
step
#label EnterGNOMER
.goto Eastern Kingdoms,42.64,59.80,20,0
.goto Eastern Kingdoms,42.58,59.82,20,0
.goto Eastern Kingdoms,42.56,59.87,20,0
.goto Eastern Kingdoms,42.51,60.15,20,0
.goto Eastern Kingdoms,42.34,60.18
.zone 226 >>Enter Gnomeregan
.dungeon GNOMER
step
>>杀死|cRXP_ENEMY_Mekkineer Thermaplug|r。掠夺他的|cRXX_Loot_Safe组合|r
>>在房间北侧的|cRXP_PICK_Thermaplugg's Safe|r中抢劫|cRXP_OOT_Rig蓝图|r
.complete 2841,2 
.complete 2841,1 
.mob Mekgineer Thermaplugg
.dungeon GNOMER
step << !Mage
#completewith next
.hs >>Hearth to Freewind Post公司公司
.use 6948
.dungeon GNOMER
step << !Mage
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Nyse
.zoneskip Orgrimmar
.dungeon GNOMER
step << !Mage
#optional
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bragok
.zoneskip 392,1
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step
.goto Orgrimmar,76.00,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺格|r
.turnin 2841 >>交任务: |cRXP_FRIENDLY_设备之战|r
.target Nogg
.dungeon GNOMER
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 31-34 Hillsbrad/Arathi
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 30-40
#next 34-35 Shimmering Flats
step << Mage
#completewith next
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜·阿克雷|r
.vendor >>|cRXP_BUY_至少买两个|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Hannah Akeley
step << !Mage
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step
#completewith StealfromThievesPickup
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
.zoneskip Undercity
step
#completewith StealfromThievesPickup
.goto Undercity,66.09,20.06,20,0
.goto Undercity,64.37,23.94,20,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step << Hunter
.goto Undercity,57.31,32.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
.train 5011 >>火车十字弓
.train 202 >>Train Two-Handed Swords
.target Archibald
step << Hunter
.goto Undercity,58.82,32.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Benijah|r|cRXP_BUY_交谈。从他那里买一个|r|T134402:0|t[Heavy Quiver]|cRXP_Buy_和一个|r |T135532:0|t[Heavy Crossbow]，用箭装满你的箭袋|r
.collect 15809,1,552,1 
.collect 7371,1,552,1 
.collect 3030,2600,552,1 << Hunter 
.money <1.6691
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.0
.target Benijah Fenner
step << Hunter
.goto Undercity,58.82,32.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Benijah|r|cRXP_BUY_交谈。从他那里买一个|r|T134402:0|t[Heavy Quiver]并用箭装满你的箭袋|r
.collect 7371,1,552,1 
.target Benijah Fenner
step << Rogue
.goto Undercity,58.65,33.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_交谈。从他那里买一个|r|T135275:0|t[大刀]|r
.collect 2520,1,552,1 
.money <2.2165
.target Geoffrey Hartwell
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
#completewith StealfromThievesPickup
+装备|T135275:0|t[大刀]
.use 2520
.itemcount 2520,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
.goto Undercity,58.65,33.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_交谈。从他那里买一个|r|T135651:0|t[Main Gauche]|r
.collect 2526,1,552,1 
.money <1.7402
.target Geoffrey Hartwell
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#completewith StealfromThievesPickup
+配备|T135651:0|t[主规]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.turnin 1109 >>交任务: |cRXP_FRIENDLY_蝙蝠的粪便|r
.target Master Apothecary Faranell
.isQuestComplete 1109
.dungeon RFK
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.turnin 1109 >>交任务: |cRXP_FRIENDLY_蝙蝠的粪便|r
.target Master Apothecary Faranell
.isQuestComplete 1109
.dungeon RFK
step
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 6522 >>交任务: |cRXP_FRIENDLY_邪恶的盟友|r
.target Varimathras
.isOnQuest 6522
.dungeon RFK
step
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
.collect 3712,10 >>|cRXP_BUY_从拍卖行购买10件|r|T134026:0|t[甲鱼肉]|cRXP_Buy_|r
.target Auctioneer Rhyker
step
#label StealfromThievesPickup
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉纳维·卡隆|r
.accept 1164 >>接任务: |cRXP_LOOT_科娜塔一家|r
.target Genavie Callow
step
.goto Undercity,62.14,44.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤奈斯·伯奇|r
.train 2550 >>训练烹饪稍后进行探索
.target Eunice Burch
step
.goto Undercity,62.30,43.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ronald|r|cRXP_BUY_BUY|r|T134059:0|t[舒缓香料]|cRXP-BUY_交谈|r
.collect 3713,1 
.target Ronald Burch
step
.goto Undercity,65.99,44.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉|r
.bankwithdraw 3692 >>从您的银行提取|T133730:0|t[|cRXP_LOOT_Hillsbrad人类头骨|r]
.target William Montague
step << !Shaman
#completewith AcceptAgony
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step << Shaman
#completewith next
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher >>飞向坟墓
.target Michael Garrett
.zoneskip Silverpine Forest
step << Shaman
.zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
>>|cRXP_WARN_按照下面的链接打开网站解锁页面。在网站上选择你当前的角色，但不要点击其他任何内容|r
>>|cRXP_WARN_如果失败，请跳过此步骤并正常运行|r
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >>|cRXP_WARN_单击此处|r
.isOnQuest 63
step << Shaman
#completewith CallofWaterSVP
#label CallofWaterSVP1
.goto Silverpine Forest,42.05,40.62,10,0
.goto Silverpine Forest,41.83,41.16,8 >>跳到树的一侧
.isOnQuest 63
step << Shaman
#completewith CallofWaterSVP
#label CallofWaterSVP2
#requires CallofWaterSVP1
.goto Silverpine Forest,38.09,44.40,15 >>跑下山
.isOnQuest 63
step << Shaman
#completewith next
#requires CallofWaterSVP2
.goto Silverpine Forest,38.09,44.40
.aura 8899 >>饮用|T134754:0|t[水Sapta]以查看|cRXP_ENEMY_水的轻微腐败表现|r
.use 6637
.isOnQuest 63
step << Shaman
.goto Silverpine Forest,38.50,44.46
>>杀死|cRXP_ENEMY_Corrupt Minor Manifestion of Water |r。掠夺它以获得|cRXD_Loot_ Corrupt Manifestion的护腕|r
.complete 63,1 
.mob Corrupt Minor Manifestation of Water
.isOnQuest 63
step << Shaman
#label CallofWaterSVP
.goto Silverpine Forest,38.26,44.56
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击Everfound的|cRXP_PICK_Brazier|r
.turnin 63 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 100 >>接任务: |cRXP_LOOT_水之召唤|r
.timer 15,Call of Water RP
step << Shaman
.goto Silverpine Forest,38.75,44.63
>>|cRXP_WARN_等待RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之魂|r
.turnin 100 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 96 >>接任务: |cRXP_LOOT_水之召唤|r
.target Minor Manifestation of Water
step << Shaman
#completewith next
.goto Silverpine Forest,45.62,42.59,100 >>|cRXP_WARN_如果你之前打开了网站的解锁页面，你现在可以注销我，然后点击将你的角色移动到最近的墓地（坟墓）|r
>>|cRXP_WARN_如果此操作失败或页面无法加载，请跳过此步骤|r
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >>|cRXP_WARN_单击此处|r
.zoneskip Silverpine Forest,1
step << Shaman
#completewith HammerPickip
.goto Silverpine Forest,45.62,42.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Karos Razok
.zoneskip Hillsbrad Foothills
step
#optional
.abandon 1144 >>放弃进口商Willix
.isOnQuest 1144
.dungeon RFK
step
#optional
.abandon 1102 >>Abandon A Vengeful Fate
.isOnQuest 1102
.dungeon RFK
step
#optional
.abandon 1221 >>Abandon Blueleaf Tubers
.isOnQuest 1221
.dungeon RFK
step
#optional
.abandon 1109 >>放弃前进，前进，关诺！
.isOnQuest 1109
.dungeon RFK
step
.goto Hillsbrad Foothills,61.44,19.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 509 >>接任务: |cRXP_LOOT_苦楚药剂|r
.target Apothecary Lydon
step
#label HammerPickip
.goto Hillsbrad Foothills,61.86,19.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆|r
.accept 676 >>接任务: |cRXP_LOOT_落锤之战|r
.target Tallow
step
.goto Hillsbrad Foothills,62.31,20.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,63.24,20.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.accept 533 >>接任务: |cRXP_LOOT_秘密潜入|r
.target Krusk
step
.goto Hillsbrad Foothills,63.88,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒塞万德|r
.accept 552 >>接任务: |cRXP_LOOT_赫尔库拉的复仇|r
.target Novice Thaivand
step << !Warrior
.goto Hillsbrad Foothills,68.42,17.01,50,0
.goto Hillsbrad Foothills,70.31,11.72,50,0
.goto Alterac Mountains,74.67,65.36,50,0
.goto Alterac Mountains,77.32,63.20,50,0
.goto Alterac Mountains,80.07,58.61,50,0
.goto Alterac Mountains,84.76,51.26,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Hillsbrad Foothills,68.21,19.09,50,0
.goto Hillsbrad Foothills,68.32,25.16,50,0
.goto Hillsbrad Foothills,67.66,31.88,50,0
.goto Hillsbrad Foothills,67.38,35.69,50,0
.goto Hillsbrad Foothills,63.76,40.24,50,0
.goto Hillsbrad Foothills,61.97,42.50,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Alterac Mountains,77.32,63.20
>>在河上来回旅行。杀死|cRXP_ENEMY_Snapjaws |r。掠夺它们的|T134026:0|t[|cRXP-Loot_Turtle Meat|r]
.collect 3712,10 
.mob Snapjaw
.isQuestAvailable 7321
step << Warrior
#completewith next
>>在河上来回旅行。杀死|cRXP_ENEMY_Snapjaws |r。掠夺它们的|T134026:0|t[|cRXP-Loot_Turtle Meat|r]
.collect 3712,10 
.mob Snapjaw
.isQuestAvailable 7321
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1791 >>交任务: |cRXP_FRIENDLY_捕风者|r
.accept 1712 >>接任务: |cRXP_LOOT_塞克隆尼亚|r
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,77.32,63.20,50,0
.goto Alterac Mountains,80.07,58.61,50,0
.goto Alterac Mountains,84.76,51.26,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Hillsbrad Foothills,68.21,19.09,50,0
.goto Hillsbrad Foothills,68.32,25.16,50,0
.goto Hillsbrad Foothills,67.66,31.88,50,0
.goto Hillsbrad Foothills,67.38,35.69,50,0
.goto Hillsbrad Foothills,63.76,40.24,50,0
.goto Hillsbrad Foothills,61.97,42.50,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Alterac Mountains,77.32,63.20,50,0
>>在河上来回旅行。杀死|cRXP_ENEMY_Snapjaws |r。掠夺它们的|T134026:0|t[|cRXP-Loot_Turtle Meat|r]
.collect 3712,10 
.mob Snapjaw
.isQuestAvailable 7321
step
.goto Hillsbrad Foothills,62.28,19.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christoph|r inside the inn
.accept 7321 >>接任务: |cRXP_LOOT_海龟汤|r
.turnin 7321 >>交任务: |cRXP_FRIENDLY_海龟汤|r
.target Christoph Jeffcoat
step
#completewith next
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step
.goto Hillsbrad Foothills,36.02,39.19,150 >>跑到希尔斯堡球场
.isOnQuest 529
step
#completewith next
>>杀死|cRXP_ENEMY_Blacksmith Verringtan|r和|cRXX_ENEMY_Hillsbrad学徒Blacksmiths|r
.complete 529,1 
.complete 529,2 
.unitscan Blacksmith Verringtan
.mob Hillsbrad Apprentice Blacksmith
step
.goto Hillsbrad Foothills,32.02,45.45
>>为|T132761:0|t[|cRXP_Loot_Shipment of Iron|r]掠夺|cRXP_PICK_Shipment of Iron|r
.complete 529,3 
step
.goto Hillsbrad Foothills,32.65,45.48,20,0
.goto Hillsbrad Foothills,31.87,46.66,20,0
.goto Hillsbrad Foothills,32.23,45.32
>>杀死|cRXP_ENEMY_Blacksmith Verringtan|r和|cRXX_ENEMY_Hillsbrad学徒Blacksmiths|r
.complete 529,1 
.complete 529,2 
.unitscan Blacksmith Verringtan
.mob Hillsbrad Apprentice Blacksmith
step
#completewith next
.goto Hillsbrad Foothills,62.31,20.29,125 >>返回Tarren Mill
step
.goto Hillsbrad Foothills,62.31,20.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 529 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 532 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestTurnedIn 528
step
.loop 25,Hillsbrad Foothills,47.9,31.5,46.1,33.2,43.5,27.3,43.9,30.2,41.8,30.6,43.6,24.9,47.9,31.5
>>杀死Darrow Hill洞穴内及周围的|cRXP_ENEMY_Yetis|r。为|cRXP_Loot_Hellular的杆|r掠夺它们
>>|T135471:0|t[Helcular’s Rod]|cRXP_WARN_具有相当低的下降率|r
.complete 552,1 
.mob Cave Yeti
.mob Ferocious Yeti
step
#completewith next
#label Council
.goto Hillsbrad Foothills,29.63,42.33
>>杀死|cRXP_ENEMY_Hillsbrad议员|r
>>|cRXP_WARN_小心他们的霜新星和霜螺栓|r
.complete 532,2 
.mob Hillsbrad Councilman
.isQuestTurnedIn 529
step
>>杀死Hillsbrad市政厅内的|cRXP_ENEMY_治安官Burnside|r和|cRXX_ENEMY_Clerk Horrace Whitesteed|r
>>掠夺|cRXP_Loot_Hillsbrad镇登记处|r并烧毁|cRX_PICK_Hillsbrad公告|r
.complete 532,1 
.complete 567,1 
.goto Hillsbrad Foothills,29.67,41.64
.complete 532,4 
.goto Hillsbrad Foothills,29.52,41.53
.complete 532,3 
.goto Hillsbrad Foothills,29.73,41.75
.isQuestTurnedIn 529
.mob Magistrate Burnside
step
.goto Hillsbrad Foothills,29.63,42.33
>>完成杀戮|cRXP_ENEMY_Hillsbrad市议员|r
>>|cRXP_WARN_小心他们的霜新星和霜螺栓|r
.complete 532,2 
.mob Hillsbrad Councilman
.isQuestTurnedIn 529
step
#completewith next
.goto Hillsbrad Foothills,62.31,20.29,125 >>返回Tarren Mill
step
#requires Council
.goto Hillsbrad Foothills,62.31,20.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 532 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 539 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestTurnedIn 529
step
.goto Hillsbrad Foothills,63.88,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒塞万德|r
.turnin 552 >>交任务: |cRXP_FRIENDLY_赫尔库拉的复仇|r
.target Novice Thaivand
step << Hunter
#completewith next
.goto Hillsbrad Foothills,62.55,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
.vendor >>|cRXP_BUY_箭满箭袋|r
.target Kayren Soothallow
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step
.goto Hillsbrad Foothills,26.95,59.55,100 >>Run to Azurelode Mine
.isOnQuest 546
step
#completewith Hacket
>>杀死|cRXP_ENEMY_Hillsbrad|r暴徒。掠夺他们的|cRXP_Loot_Sulls|r
.complete 546,1 
.isOnQuest 546
step
#completewith next
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5
>>杀死|cRXP_ENEMY_Miner Hackett|r
.complete 567,3 
.unitscan Miner Hackett
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,31.21,56.01
>>杀死|cRXP_ENEMY_Foreman债券|r和|cRXP_ENEMY_Hillsbrad矿工|r
>>|cRXP_ENEMY_工头债券|r|cRXP_WARN_i位于矿井最底层的中心|r
.complete 539,1 
.complete 539,2 
.isQuestTurnedIn 528
step
#label Hacket
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5
>>杀死|cRXP_ENEMY_Miner Hackett|r
.complete 567,3 
.unitscan Miner Hackett
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,29.69,58.03,15,0
.goto Hillsbrad Foothills,28.17,57.27,15,0
.goto Hillsbrad Foothills,26.48,58.74,15,0
.goto Hillsbrad Foothills,27.39,59.38,15,0
.goto Hillsbrad Foothills,27.48,57.60,15,0
.goto Hillsbrad Foothills,28.06,55.12,15,0
.goto Hillsbrad Foothills,28.33,53.10,15,0
.goto Hillsbrad Foothills,31.15,54.73
>>完成击杀|cRXP_ENEMY_Hillsbrad|r暴民。掠夺他们的|cRXP_Loot_Sulls|r
.complete 546,1 
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5
.xp 32 >>升级到32级
step
.goto Alterac Mountains,46.51,81.74,50,0
.goto Alterac Mountains,48.86,82.87,50,0
.goto Alterac Mountains,48.78,80.96,50,0
.goto Alterac Mountains,56.38,66.23,50,0
.goto Alterac Mountains,57.85,69.74,50,0
.goto Alterac Mountains,59.14,69.36,50,0
.goto Alterac Mountains,59.53,66.50,50,0
.goto Alterac Mountains,58.30,66.67,50,0
.goto Alterac Mountains,48.86,82.87
>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXD_ENEMY_Syndicate脚垫|r。掠夺它们以获得|cRXP_Loot_Syndicate导弹|r
.complete 533,1 
.mob Syndicate Footpad
.mob Syndicate Thief
step
.goto Hillsbrad Foothills,62.11,19.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 546 >>交任务: |cRXP_FRIENDLY_死亡的纪念品|r
.target Deathguard Samsa
step
.goto Hillsbrad Foothills,62.31,20.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 567 >>交任务: |cRXP_FRIENDLY_危险！|r
.turnin 539 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 541 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.group
step
.goto Hillsbrad Foothills,62.31,20.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 567 >>交任务: |cRXP_FRIENDLY_危险！|r
.turnin 539 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target High Executor Darthalia
step
.goto Hillsbrad Foothills,63.24,20.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.turnin 533 >>交任务: |cRXP_FRIENDLY_秘密潜入|r
.target Krusk
step << Hunter
.goto Hillsbrad Foothills,62.55,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
.vendor >>|cRXP_BUY_箭满箭袋|r
.target Kayren Soothallow
step
.goto Hillsbrad Foothills,62.79,19.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step
#completewith RaisingSpirits
.skill herbalism,70 >>如果你有125炼金术，收集两个|T134181:0|t[Bruiseweed]和两个|T134412:0|t[Briarthorn]
>>|cRXP_WARN_收集足够的材料将炼金术升级到125，如果接近的话。否则，请跳过此步骤。保存两个Briarthorn和两个Bruiseweed作为痛苦的灵丹妙药任务线|r
.collect 2453,2 
.collect 2450,2 
.skill alchemy,<125,1
step
.goto Hillsbrad Foothills,64.67,60.01,20,0
.goto Hillsbrad Foothills,63.02,61.19,20,0
.goto Hillsbrad Foothills,63.45,62.50,20,0
.goto Hillsbrad Foothills,64.68,62.01
>>在Nethander Stead周围掠夺|cRXP_PICK_White Mushrooms|r以获得|cRXP_Loot_Mudnosus Blossoms|r
.complete 509,1 
step
.goto Arathi Highlands,20.19,29.54
.zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
.zoneskip Arathi Highlands
step
.goto Arathi Highlands,31.91,41.15,50,0
.goto Arathi Highlands,35.53,40.93,50,0
.goto Arathi Highlands,35.51,44.26,50,0
.goto Arathi Highlands,34.40,44.25,12,0
.goto Arathi Highlands,31.08,43.68,12,0
.goto Arathi Highlands,34.40,44.25,12,0
.goto Arathi Highlands,35.51,44.26
>>杀死Boulder'gor及其周围的|cRXP_ENEMY_Boulderfirs Ogres|r和|cRXP_ENEMY_ Boulderfist Enforcers|r
.complete 676,1 
.complete 676,2 
.mob Boulderfist Ogre
.mob Boulderfist Enforcer
step
.goto Arathi Highlands,54.20,38.20
>>杀死|cRXP_ENEMY_Marcel|r。掠夺他的|cRXX_Loot_Head|r
>>|cRXP_WARN_几秒钟后他使用了护盾墙|r
.complete 1164,2 
.unitscan Marcel Dabyrie
step
.goto Arathi Highlands,56.40,36.10
>>杀死|cRXP_ENEMY_Kenata|r。为她掠夺她|cRXX_Loot_Head |r
>>|cRXP_WARN_这可能相当困难。要非常小心|r << Rogue/Warrior/Shaman
.complete 1164,1 
.unitscan Kenata Dabyrie
step
.goto Arathi Highlands,56.50,38.70
>>杀死|cRXP_ENEMY_Fardel|r。掠夺他的|cRXX_Loot_Head|r
>>|cRXP_WARN_小心他的高伤害毒药和|r|T132152:0|t[Thrash]
.complete 1164,3 
.unitscan Fardel Dabyrie
step
#completewith next
.goto Arathi Highlands,73.52,33.20,150 >>Travel to Hammerfall
step
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤尔达|r
.fp Hammerfall >>获取Hammerfall飞行路线
.target Urda
step
.goto Arathi Highlands,74.20,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 676 >>交任务: |cRXP_FRIENDLY_落锤之战|r
.accept 677 >>接任务: |cRXP_LOOT_短兵相接|r
.target Drum Fel
step
.goto Arathi Highlands,72.90,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈穆尔|r
.accept 655 >>接任务: |cRXP_LOOT_落锤镇|r
.target Gor'mul
step
.goto Arathi Highlands,73.84,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃德瓦|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Adegwa
step
.goto Arathi Highlands,74.60,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 655 >>交任务: |cRXP_FRIENDLY_落锤镇|r
.accept 672 >>接任务: |cRXP_LOOT_振奋精神|r
.accept 671 >>接任务: |cRXP_LOOT_邪恶的魔法|r
.target Tor'gan
step
#completewith xpgate
>>杀死你遇到的任何|cRXP_ENEMY_Highland Raptor|r。掠夺他们的|cRXP_Loot_Eyes |r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Highland垃圾桶|r，|cRXP-WARN_它们实际上是|r|T132152:0|t[Srash]
.complete 672,1 
.mob Highland Strider
.mob Highland Thrasher
step
.loop 25,Arathi Highlands,34.07,28.35,33.36,26.41,31.79,26.47,30.83,27.49,31.01,29.58,32.32,30.87,33.36,30.72,34.07,28.35
>>杀死|cRXP_ENEMY_Syndicate成员|r。掠夺他们的|cRXP_Loot_Amullets|r
>>|cRXP_WARN_小心辛迪加强盗；他们在农场周围潜行，如果你放风筝/逃跑，他们会背刺你|r
.complete 671,1 
.mob Syndicate Pathstalker
.mob Syndicate Mercenary
.mob Syndicate Highwayman
step
#label xpgate
.goto Arathi Highlands,33.8,31.8
.xp 33>>升级到33级
step
.goto Arathi Highlands,59.40,42.61
>>完成杀死|cRXP_ENEMY_高地猛禽|r。掠夺它们的|cRXX_Loot_Eyes |r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Highland垃圾桶|r，|cRXP-WARN_它们实际上是|r|T132152:0|t[Srash]
.complete 672,1 
.mob Highland Strider
.mob Highland Thrasher
step
#completewith WitherbarkTrolls
+留意|cRXP_ENEMY_Nimar the Slayer |r（稀有）。他可以放下强大的BoE
.unitscan Nimar the Slayer
step
#completewith next
.goto Arathi Highlands,66.68,62.96,150 >>前往Witherbark村
step
#label WitherbarkTrolls
.loop 25,Arathi Highlands,71.7,60.3,73.4,65.2,70.6,69.3,68.3,74.5,66.2,69.2,64.8,73.1,61.3,72.4,63.3,67.7,66.5,63.7,71.7,60.3
>>杀死|cRXP_ENEMY_Witherbark巫医|r、|cRXX_ENEMY_Headhunters|r和|cRXP_ENEMY_Axe Throwers|r
>>|cRXP_WARN_下一个任务可能很难，要格外小心|r
.complete 677,3 
.complete 677,2 
.complete 677,1 
.mob Witherbark Axe Thrower
.mob Witherbark Headhunter
.mob Witherbark Witch Doctor
step
.goto Arathi Highlands,74.72,36.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Tor'gan|r
.turnin 671 >>交任务: |cRXP_FRIENDLY_邪恶的魔法|r
.turnin 672 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.accept 674 >>接任务: |cRXP_LOOT_振奋精神|r
.target Tor'gan
step
#label RaisingSpirits
.goto Arathi Highlands,72.63,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Gor'mul|r
.turnin 674 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.accept 675 >>接任务: |cRXP_LOOT_振奋精神|r
.target Gor'mul
step
.goto Arathi Highlands,74.72,36.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 675 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.target Tor'gan
step
.goto Arathi Highlands,74.24,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRONDLY_Drum|r
.turnin 677 >>交任务: |cRXP_FRIENDLY_短兵相接|r
.target Drum Fel
step
#completewith next
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤尔达|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Urda
.zoneskip Hillsbrad Foothills
step
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Lydon|r
.turnin 509 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.accept 513 >>接任务: |cRXP_LOOT_苦楚药剂|r
.target Apothecary Lydon
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.itemcount 17031,1
step << !Mage
.goto Hillsbrad Foothills,60.14,18.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly Undercity >>Fly to the Undercity
.target Zarise
.zoneskip Undercity
step
#label Thieves
.goto Undercity,63.83,49.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉纳维·卡隆|r
.turnin 1164 >>交任务: |cRXP_FRIENDLY_科娜塔一家|r
.target Genavie Callow
step
#completewith next
.skill alchemy,125 >>如果你准备好了，可以升级到125炼金。否则，跳过此步骤
.skill alchemy,<100,1
step
.goto Undercity,64.12,50.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia|r
.vendor >>购买|T132793:0|t[Leaded Vial]用于痛苦的灵丹妙药任务线
>>|cRXP_WARN_如果你接近125炼金并收集了额外的草药，请购买足够的|r|T132793:0|t[Leaded Vial]|cRXP_WARN_to来磨出125炼金。否则，跳过此步骤|r
.collect 3372,1 
.target Felicia Doan
.skill alchemy,<100,1
.isOnQuest 513
step
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
.collect 3388,1 >>|cRXP_BUY_从拍卖行购买一个|r|T134858:0|t[强巨魔血药]|cRXP_Buy_，用于痛苦的灵丹妙药任务线|r
.collect 5996,3 >>|cRXP_BUY_BUY three |r|T134797:0|t[水息灵药] << !Warlock !Druid !Shaman
.target Auctioneer Rhyker
step
.goto Undercity,47.77,73.34
>>为痛苦的灵丹妙药任务线制作一个|T134858:0|t[强巨魔血药]
*|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Doctor Herbert Halsey|r |cRXP_WARN_by the stairs to learn this recipe|r
.collect 3388,1 
.target Doctor Herbert Halsey
.skill alchemy,<125,1
.isOnQuest 513
step
#ah
.goto Undercity,48.60,69.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.turnin 513 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.accept 515 >>接任务: |cRXP_LOOT_苦楚药剂|r
.target Master Apothecary Faranell
step
#ssf
.goto Undercity,48.60,69.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.turnin 513 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.accept 515 >>接任务: |cRXP_LOOT_苦楚药剂|r
.target Master Apothecary Faranell
.skill alchemy,<125,1
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.turnin 513 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.target Master Apothecary Faranell
step << Warrior
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 11554 >>训练你的职业技能
.target Angela Curthas
.xp <34,1
.xp >36,1
step << Warrior
#optional
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 1680 >>训练你的职业技能
.target Angela Curthas
.xp <36,1
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 8696 >>训练你的职业技能
.target Carolyn Ward
.xp <34,1
.xp >36,1
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 8691 >>训练你的职业技能
.target Carolyn Ward
.xp <36,1
step << Warlock
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 7648 >>训练你的职业技能
.target Richard Kerwin
.xp <34,1
.xp >36,1
step << Warlock
#optional
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 2362 >>训练你的职业技能
.target Richard Kerwin
.xp <36,1
step << Mage
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 8492 >>训练你的职业技能
.target Anastasia Hartwell
.xp <34,1
.xp >36,1
step << Mage
#optional
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 8495 >>训练你的职业技能
.target Anastasia Hartwell
.xp <36,1
step << Priest
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
.train 2767 >>训练你的职业技能
.target Father Lazarus
.xp <34,1
.xp >36,1
step << Priest
#optional
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
.train 15264 >>训练你的职业技能
.target Father Lazarus
.xp <36,1
step
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r, |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r
.accept 556 >>接任务: |cRXP_LOOT_石雕|r
.goto Hillsbrad Foothills,61.60,20.86
.accept 544 >>接任务: |cRXP_LOOT_入室偷窃|r
.goto Hillsbrad Foothills,61.49,20.93
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
step
#completewith next
+|cRXP_WARN_下一个任务可能相当艰难，要格外小心！|r
step
#completewith Belamoore
>>杀死所有|cRXP_ENEMY_Dalaran类人|r。掠夺他们的|cRXX_Loot_磨损的石头代币|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Dalaran护盾'|r|cRXP_WARN_Growing|r|T136173:0|t[紫盾效果]|cRXP-WARN_buff。它持续8秒，在近战中被击中后返回85点伤害|r << !Mage/!Priest/!Warlock
.complete 556,1 
step
.goto Alterac Mountains,20.14,84.28,20,0
.goto Alterac Mountains,20.33,86.31,12,0
.goto Alterac Mountains,19.93,85.94
>>杀死|cRXP_ENEMY_Ricter|r、|cRXD_ENEMY_Alina|r和|cRXP_ENEMY_Dermot|r。掠夺他们的|cRXP_Loot_B血石|r
.complete 544,2 
.complete 544,3 
.complete 544,1 
.mob Ricter
.mob Alina
.mob Dermot
step
#completewith next
.goto Alterac Mountains,18.70,84.38,10 >>进入西楼
step
#label Belamoore
.goto Alterac Mountains,18.29,82.83,8,0
.goto Alterac Mountains,17.65,84.11,8,0
.goto Alterac Mountains,17.76,83.18
>>杀死大楼二楼的|cRXP_ENEMY_Kegan Darkmar|r。掠夺他的|cRXP_Loot_Bloodstone |r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Warden Belamore |r|cRXP_WARN_。在攻击之前杀死她|r|cRXP_ENEMY_Kegan Darkmar|r
.complete 544,4 
.mob Kegan Darkmar
.mob Warden Belamoore
step
.loop 25,Alterac Mountains,20.1,86.2,17.9,83.0,10.7,76.6,19.4,75.6,20.1,86.2,17.9,83.0,10.7,76.6,19.4,75.6,20.1,86.2
>>完成杀死|cRXP_ENEMY_Dalaran类人|r。掠夺他们的|cRXX_Loot_磨损的石头代币|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Dalaran护盾'|r|cRXP_WARN_Growing|r|T136173:0|t[紫盾效果]|cRXP-WARN_buff。它持续8秒，在近战中被击中后返回85点伤害|r << !Mage/!Priest/!Warlock
.complete 556,1 
.mob Dalaran Shield Guard
.mob Dalaran Theurgist
.mob Dalaran Worker
.mob Dalaran Summoner
step
#completewith next
.goto Hillsbrad Foothills,62.31,20.29,125 >>返回Tarren Mill
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r, |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r
.turnin 556 >>交任务: |cRXP_FRIENDLY_石雕|r
.goto Hillsbrad Foothills,61.60,20.86
.turnin 544 >>交任务: |cRXP_FRIENDLY_入室偷窃|r
.goto Hillsbrad Foothills,61.49,20.93
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
step
.goto Hillsbrad Foothills,62.76,20.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humbert|r
.accept 547 >>接任务: |cRXP_LOOT_亨伯特的长剑|r
.target Deathguard Humbert
.group
step
#ssf
.loop 25,Hillsbrad Foothills,55.76,61.82,56.50,64.70,58.36,65.49,59.20,70.58,61.01,73.35,62.30,75.68,65.17,77.36,66.66,79.86,66.81,84.29,67.15,86.84,66.11,85.69,64.26,78.48,61.83,77.51,57.84,71.98,57.74,69.23,55.05,64.45,53.69,64.22,54.08,62.05,55.76,61.82
>>前往: |cRXP_PICK_希尔斯布莱德丘陵|r's eastern coast, then kill all |cRXP_ENEMY_Daggerspine Nagas|r. Loot them for their |cRXP_LOOT_Scales|r
>>|cRXP_WARN_旅行时留在河的东侧，完成此步骤时要格外小心|r|cFFEB144C南岸警卫|r|cRXP_WARN_|r
.collect 3509,5,515,1 
.unitscan Southshore Guard << Horde
.mob Daggerspine Siren
.mob Daggerspine Shorehunter
.mob Daggerspine Shorestalker
.skill alchemy,<125,1
step
#ah
.loop 25,Hillsbrad Foothills,55.76,61.82,56.50,64.70,58.36,65.49,59.20,70.58,61.01,73.35,62.30,75.68,65.17,77.36,66.66,79.86,66.81,84.29,67.15,86.84,66.11,85.69,64.26,78.48,61.83,77.51,57.84,71.98,57.74,69.23,55.05,64.45,53.69,64.22,54.08,62.05,55.76,61.82
>>前往: |cRXP_PICK_希尔斯布莱德丘陵|r's eastern coast, then kill |cRXP_ENEMY_Daggerspine Nagas|r. Loot them for their |cRXP_LOOT_Scales|r
>>|cRXP_WARN_旅行时留在河的东侧，完成此步骤时要格外小心|r|cFFEB144C南岸警卫|r|cRXP_WARN_|r << Horde
.collect 3509,5,515,1 
.unitscan Southshore Guard << Horde
.mob Daggerspine Siren
.mob Daggerspine Shorehunter
.mob Daggerspine Shorestalker
step
#ssf
.goto Hillsbrad Foothills,50.63,66.44,0
.loop 25,Hillsbrad Foothills,47.97,63.97,45.98,63.38,43.98,66.10,40.63,67.95,35.71,66.97,32.85,69.86,30.82,72.47,25.74,69.92,24.96,64.40,22.56,64.04,24.32,66.28,24.70,71.38,27.79,73.18,30.12,74.19,33.31,72.96,34.83,69.75,39.63,70.37,42.98,69.70,43.75,68.47,45.28,67.92,46.73,65.07,47.97,63.97
>>游到南岸的西海岸，|cRXP_WARN_始终与南岸保持极端距离，|r然后杀死|cRXP-ENEMY_Torn Fin Murlocs|r。掠夺它们的|cRXP_Loot_Eyes |r << Horde
>>|cRXP_WARN_完成此步骤时，请将山丘保持在自己和南岸之间。A|cFFEB144C南岸警卫队|r徘徊在码头的西南角，离最东边的murloc产卵点很近，它有一个巨大的聚集半径|r << Horde
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Torn Fin Tidehunters'|r|cRXP_WARN_Frost Nova，尤其是在营地附近。|r
.collect 3510,5,515,1 
.unitscan Southshore Guard << Horde
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
.mob Torn Fin Coastrunner
.mob Torn Fin Muckdweller
.skill alchemy,<125,1
step
#ah
.goto Hillsbrad Foothills,50.63,66.44,0
.loop 25,Hillsbrad Foothills,47.97,63.97,45.98,63.38,43.98,66.10,40.63,67.95,35.71,66.97,32.85,69.86,30.82,72.47,25.74,69.92,24.96,64.40,22.56,64.04,24.32,66.28,24.70,71.38,27.79,73.18,30.12,74.19,33.31,72.96,34.83,69.75,39.63,70.37,42.98,69.70,43.75,68.47,45.28,67.92,46.73,65.07,47.97,63.97
>>游到南岸的西海岸，|cRXP_WARN_始终与南岸保持极端距离，|r然后杀死|cRXP-ENEMY_Torn Fin Murlocs|r。掠夺它们的|cRXP_Loot_Eyes |r << Horde
>>|cRXP_WARN_完成此步骤时，请将山丘保持在自己和南岸之间。A|cFFEB144C南岸警卫队|r徘徊在码头的西南角，离最东边的murloc产卵点很近，它有一个巨大的聚集半径|r << Horde
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Torn Fin Tidehunters'|r|cRXP_WARN_Frost Nova，尤其是在营地附近。|r
.collect 3510,5,515,1 
.unitscan Southshore Guard << Horde
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
.mob Torn Fin Coastrunner
.mob Torn Fin Muckdweller
step
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 515 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.accept 517 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.target Apothecary Lydon
.isQuestTurnedIn 515
.group
step
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Lydon|r
.turnin 515 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.target Apothecary Lydon
.isQuestComplete 515
step
#completewith DunGarok
.goto Hillsbrad Foothills,70.76,78.14,150 >>Travel to Dun Garok
.group
step
#completewith next
>>掠夺神探石的|cRXP_PICK_Keg|r。它在保护区内有多个产卵位置
.complete 517,1 
.isOnQuest 517
.group 5
step
#label DunGarok
.goto Hillsbrad Foothills,71.60,80.0,0
.loop 25,Hillsbrad Foothills,71.26,75.17,69.11,75.18,68.59,78.47,69.66,78.68,71.01,79.09,70.57,79.70,71.48,81.57,71.72,80.64,71.98,81.24,72.57,80.52,72.20,80.00,72.87,79.79,72.40,79.28,71.84,78.26,71.32,78.69,71.26,75.17
>>杀死|cRXP_ENEMY_Dun Garok士兵|r和|cRXP_ENEMY_Ironhill上尉|r。掠夺他们获得|cRXD_Loot_Humbert之剑|r
>>|cRXP_WARN_进出敦加罗的路上要小心；路上和据点都有多次巡逻|r
.complete 541,1 
.complete 541,2 
.complete 541,3 
.complete 541,4 
.complete 547,1 
.unitscan Captain Ironhill
.mob Dun Garok Mountaineer
.mob Dun Garok Rifleman
.mob Dun Garok Priest
.group 5
step
.loop 25,Hillsbrad Foothills,71.26,75.17,69.11,75.18,68.59,78.47,69.66,78.68,71.01,79.09,70.57,79.70,71.48,81.57,71.72,80.64,71.98,81.24,72.57,80.52,72.20,80.00,72.87,79.79,72.40,79.28,71.84,78.26,71.32,78.69,71.26,75.17
>>掠夺神探石的|cRXP_PICK_Keg|r。它在保护区内有多个产卵位置
>>|cRXP_WARN_进出敦加罗的路上要小心；路上和据点都有多次巡逻|r
.complete 517,1 
.isOnQuest 517
.group 5
step
.goto Hillsbrad Foothills,62.76,20.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humbert|r
.turnin 547 >>交任务: |cRXP_FRIENDLY_亨伯特的长剑|r
.target Deathguard Humbert
.isQuestComplete 547
.group
step
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 517 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.accept 524 >>接任务: |cRXP_LOOT_苦楚药剂|r
.target Apothecary Lydon
.isOnQuest 517
.group
step
.goto Hillsbrad Foothills,62.31,20.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 541 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 550 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestComplete 541
.group
step
.goto Hillsbrad Foothills,62.31,20.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.accept 550 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestTurnedIn 541
.group
step
.goto Hillsbrad Foothills,62.80,18.80
>>爬到客栈的二楼，然后点击|cRXP_PICK_Dusty Rug|r
.turnin 524 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.isQuestTurnedIn 517
.group
step
#completewith next
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly Undercity >>飞到地下城
.target Zarise
.zoneskip Undercity
.isOnQuest 550
.group
step
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 550 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target Varimathras
.isOnQuest 550
.group
step << Druid
#completewith DruidTraining4
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 1823 >>训练你的职业技能
.target Loganaar
.xp <34,1
.xp >36,1
step << Druid
#label DruidTraining4
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9005 >>训练你的职业技能
.target Loganaar
.xp <36,1
step
#completewith next
.hs >>Hearth to Freewind Post公司公司
.use 6948
step
.goto Thousand Needles,46.07,51.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃比克瓦|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Abeqwa
step
#optional
.abandon 541 >>Battle of Hillsbrad
.isOnQuest 541
step
#optional
.abandon 547 >>Humbert's Sword
.isOnQuest 547
step
#optional
.abandon 517 >>Elixir of Agony
.isOnQuest 517
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 34-35 Shimmering Flats
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 30-40
#next 35-37 Desolace Horde
step
.goto Thousand Needles,45.70,50.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_峭壁卫兵图林·长角|r
.accept 5361 >>接任务: |cRXP_LOOT_兄弟|r
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r
.accept 1197 >>接任务: |cRXP_WARN_神圣之火|r
.target Rau Cliffrunner
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor >>|cRXP_BUY_从他那里买一个|r|T135495:0|t[密集短弓]|cRXP_Buy_如果它用完了|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,1146,1 
.target Starn
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r << !Warrior
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_，|r|T134937:0|t[Scrolls]|cRXP-Buy_和|r|T134413:0|t[Liferoot]|cRXP_Buy_如果它们用完了|r << Warrior
.target Montarr
step
#completewith Clovenhoof2
.goto Thousand Needles,44.12,37.22,20 >>进入洞穴
step
#completewith Clovenhoof2
.goto Thousand Needles,44.44,36.32,12,0
.goto Thousand Needles,43.14,35.19,12,0
.goto Thousand Needles,42.11,34.54,12,0
.goto Thousand Needles,42.01,31.47,20 >>前往|cRXP_PICK_Ancient Brazier |r
step
#label Clovenhoof2
.goto Thousand Needles,42.01,31.47
>>打开|cRXP_PICK_Ancient Brazier|r。为|cRXP _Loot_Cloven Hoof|r打开它
>>|cRXP_WARN_小心！火盆由两个等级为30|r|cRXP_ENEMY_Galak的火焰防护装置防御|r
.complete 1197,1 
.mob Galak Flame Guard
step << Shaman
#completewith next
.goto Thousand Needles,54.7,44.4,30 >>在这里跑上坡道
step << Shaman
.goto Thousand Needles,53.5,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普拉特·白云|r
>>|cRXP_WARN_这个回合给予1小时的增益，移动速度+40%，攻击速度+30%|r
.turnin 1531 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Prate Cloudseer
step
.goto Thousand Needles,67.58,63.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moktar|r
.turnin 1146 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.accept 1147 >>接任务: |cRXP_LOOT_疯狂的虫群|r
.target Moktar Krin
step
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.turnin 1112 >>交任务: |cRXP_FRIENDLY_给克拉维尔的零件|r
.accept 1114 >>接任务: |cRXP_LOOT_侏儒的货物|r
.accept 1110 >>接任务: |cRXP_LOOT_火箭车零件|r
.accept 1115 >>接任务: |cRXP_LOOT_车手的传闻|r
.target Kravel Koalbeard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔|r, Wizzle
.turnin 1114 >>交任务: |cRXP_FRIENDLY_侏儒的货物|r
.accept 1104 >>接任务: |cRXP_LOOT_含盐的蝎毒|r
.goto Thousand Needles,78.07,77.13
.accept 1105 >>接任务: |cRXP_LOOT_硬化龟壳|r
.goto Thousand Needles,78.14,77.12
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.accept 1176 >>接任务: |cRXP_LOOT_减轻负重|r
.target Pozzik
step
.goto Thousand Needles,81.64,77.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zherin|r
.accept 1175 >>接任务: |cRXP_LOOT_安全隐患|r
.target Trackmaster Zherin
step
.goto Thousand Needles,69.66,85.97,150 >>前往Rustmaul挖掘现场，途中升级暴徒
.isOnQuest 1147
step
#completewith next
>>杀死|cRXP_ENEMY_Silithid入侵者|r、|cRXD_ENEMY_Silithid入侵者| r和|cRXP_ENEMY_ Silithid侵略者|r
>>|cRXP_WARN_小心！他们在受到攻击时会大声呼救，你可能会意外地攻击附近的多个暴徒|r
.complete 1147,3 
.complete 1147,1 
.complete 1147,2 
.mob Silithid Searcher
.mob Silithid Hive Drone
.mob Silithid Invader
step
.loop 25,Thousand Needles,67.27,85.30,68.14,85.96,68.03,86.93,68.08,88.54,69.48,89.64,70.31,87.64,71.09,86.23,71.34,84.11,70.51,82.80,68.52,80.87,67.45,82.28,67.27,85.30
>>为|T135034:0|t[|cRXP_Loot_Cracked Silithid Carapace|r]掠夺|cRXD_ENEMY_Silithid|r mobs。使用它开始任务
.collect 5877,1,1148,1 
.accept 1148 >>接任务: |cRXP_LOOT_虫群的样本|r
step
.loop 25,Thousand Needles,67.27,85.30,68.14,85.96,68.03,86.93,68.08,88.54,69.48,89.64,70.31,87.64,71.09,86.23,71.34,84.11,70.51,82.80,68.52,80.87,67.45,82.28,67.27,85.30
>>杀死|cRXP_ENEMY_Silithid入侵者|r，|cRXD_ENEMY_Silithid搜索者|r和|cRXP_ENEMY_ Silithid Hive无人机|r。掠夺它们的|cRXT_Loot_Hears|r，| cRXP_Loot_Talons|r和| cRXT_OOT_Carapaspaces|r
>>|cRXP_WARN_小心！他们在受到攻击时会大声呼救，你可能会意外地攻击附近的多个暴徒|r
.complete 1147,3 
.complete 1147,1 
.complete 1147,2 
.complete 1148,1 
.complete 1148,2 
.complete 1148,3 
.mob Silithid Searcher
.mob Silithid Hive Drone
.mob Silithid Invader
step
#completewith ShimmeringFlatsLoop
+|cRXP_WARN_小心|r|cRXP_ENEMY_Salt Flats Vultures |r|cRXP_WARN_can execute。保持20%以上的健康！|r
step
#completewith next
.goto Thousand Needles,67.58,63.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Moktar|r
.turnin 1147 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.target Moktar Krin
step
#label ShimmeringFlatsLoop
>>|cRXP_WARN_绕着闪闪发光的平地跑一圈，直到完成所有目标|r
>>杀死|cRXP_ENEMY_Salt Flats清道夫|r和|cRXX_ENEMY_Salt Flats秃鹫|r。掠夺它们的|cRXD_Loot_Bones|r
>>杀死|cRXP_ENEMY_Sparkleshell Tortoises|r、|cRXX_ENEMY_Sparkleshell Borers |r和|cRXP_ENEMY_ Sparkleshell Snappers|r。掠夺它们的|cRXD_OOT_Shell|r
>>杀死|cRXP_ENEMY_Scorpid Reavers|r和|cRXD_ENEMY_Scorpid Terror|r。掠夺他们的|cRXP_Loot_Venom|r
>>杀死|cRXP_ENEMY_Saltstone Basilisk|r、|cRXD_ENEMY_Saltstone Crystalhides|r和|cRXP_ENEMY_Saltstone Gazers|r
>>打开|cRXP_PICK_Rocket Car Rubble|r。为|cRXP _Loot_Rocket Cars Parts|r抓取它
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.goto Thousand Needles,82.6,54.8,0
.complete 1104,1 
.goto Thousand Needles,71.8,73.4,0
.complete 1175,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1175,2 
.goto Thousand Needles,77.65,87.34,0
.complete 1175,3 
.goto Thousand Needles,77.65,87.34,0
.complete 1110,1 
.mob Salt Flats Scavenger
.mob Salt Flats Vulture
.mob Sparkleshell Snapper
.mob Sparkleshell Borer
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Saltstone Gazer
.mob Scorpid Reaver
.mob Scorpid Terror
step
.goto Thousand Needles,67.58,63.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Moktar|r
.turnin 1147 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.target Moktar Krin
step
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Kravel |r
.turnin 1110 >>交任务: |cRXP_FRIENDLY_火箭车零件|r
.accept 5762 >>接任务: |cRXP_WARN_赫米特·奈辛瓦里|r
.target Kravel Koalbeard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔|r, Wizzle
.turnin 1104 >>交任务: |cRXP_FRIENDLY_含盐的蝎毒|r
.goto Thousand Needles,78.07,77.13
.turnin 1105 >>交任务: |cRXP_FRIENDLY_硬化龟壳|r
.accept 1106 >>接任务: |cRXP_LOOT_流放者马特克|r
.goto Thousand Needles,78.14,77.12
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
#ah
.goto Thousand Needles,78.14,77.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 1107 >>接任务: |cRXP_WARN_坚硬的尾鳍|r
.target Wizzle Brassbolts
.group
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1176 >>交任务: |cRXP_FRIENDLY_减轻负重|r
.accept 1178 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Pozzik
step
.goto Thousand Needles,81.63,77.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zherin|r
.turnin 1175 >>交任务: |cRXP_FRIENDLY_安全隐患|r
.target Trackmaster Zherin
step
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >>前往: |cRXP_PICK_塔纳利斯|r
step
#optional
#completewith next
.goto Tanaris,51.61,25.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Freewind Post >>飞到Freewind Post
.target Bulkrek Ragefist
.isQuestComplete 1197
step
#optional
.goto Thousand Needles,46.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r
.turnin 1197 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.target Rau Cliffrunner
.isQuestComplete 1197
step
#optional
#completewith SetHSCampT
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Nyse
.zoneskip Thousand Needles,1
step
#completewith next
.goto Tanaris,51.61,25.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Bulkrek Ragefist
.zoneskip Tanaris,1
step
#label SetHSCampT
.goto The Barrens,45.60,59.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.home >>将您的炉石设置为陶拉霍营地
.target Innkeeper Byula
step
#completewith next
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Crossroads >>飞向十字路口
.target Omusa Thunderhorn
step
.goto The Barrens,51.10,29.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
.turnin 1148 >>交任务: |cRXP_FRIENDLY_虫群的消息|r
.accept 1184 >>接任务: |cRXP_LOOT_虫群的样本|r
.target Korran
step
#completewith next
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
step
.goto The Barrens,62.68,37.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兹科尔|r
.bankdeposit 4306,15 >>存入银行15|T132905:0|t[丝绸]
.target Zikkel
step
.goto The Barrens,62.68,36.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.turnin 1178 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1180 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Gazlowe
step << Shaman
.goto The Barrens,65.83,43.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 96 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Islen Waterseer
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,26.30,73.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员罗兹基尔|r
.turnin 1180 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1181 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Wharfmaster Lozgil
step
.goto Stranglethorn Vale,28.30,77.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.accept 575 >>接任务: |cRXP_LOOT_供与求|r
.target Drizzlik
step << Warrior/Shaman
.goto Stranglethorn Vale,28.34,75.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zarena|r|cRXP_BUY_交谈。从她那里购买一个|r|T135158:0|t[大棒]|cRXP_Buy_或一个|r |T135144:0|t[Staff of Protection]（如果有）|r
.collect 12251,1,1115,1 
.collect 12252,1,1115,1 
.money <5.3896
.target Zarena Cromwind
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r inside the inn
.accept 605 >>接任务: |cRXP_LOOT_歌唱水晶碎片|r
.target Crank Fizzlebub
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8696 >>训练你的职业技能
.target Ian Strom
.xp <34,1
.xp >36,1
step << Rogue
#optional
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8691 >>训练你的职业技能
.target Ian Strom
.xp <36,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兹克|r, |cRXP_FRIENDLY_科博克|r
.turnin 1115 >>交任务: |cRXP_FRIENDLY_车手的传闻|r
.accept 201 >>接任务: |cRXP_LOOT_调查营地|r
.goto Stranglethorn Vale,26.94,77.21
.accept 189 >>接任务: |cRXP_LOOT_血顶巨魔的耳朵|r
.accept 213 >>接任务: |cRXP_LOOT_恶性竞争|r
.goto Stranglethorn Vale,27.00,77.13
.target Krazek
.target Kebok
step
.goto Stranglethorn Vale,27.20,76.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_男爵|r
.turnin 1181 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1182 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.90,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fp Booty Bay >>获取Booty Bay飞行路线
.target Gringer
step
.goto Stranglethorn Vale,28.14,78.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Glyx交谈|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134832:0|t[更强的治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Glyx Brewright
step
#completewith next
.hs >>Hearth返回Taurajo营地
.use 6948
step
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step
.goto Thunder Bluff,45.81,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
.home >>将您的炉石设置为雷霆崖
.target Innkeeper Pala
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 1823 >>训练你的职业技能
.target Turak Runetotem
.xp <34,1
.xp >36,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 1823 >>训练你的职业技能
.target Turak Runetotem
.xp <36,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 13552 >>训练你的职业技能
.target Urek Thunderhorn
.xp <34,1
.xp >36,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14284 >>训练你的职业技能
.target Urek Thunderhorn
.xp <36,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24560 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <36,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11554 >>训练你的职业技能
.target Ker Ragetotem
.xp <34,1
.xp >36,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 1680 >>训练你的职业技能
.target Ker Ragetotem
.xp <36,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 16314 >>训练你的职业技能
.target Tigor Skychaser
.xp <34,1
.xp >36,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 10412 >>训练你的职业技能
.target Tigor Skychaser
.xp <36,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 2767 >>训练你的职业技能
.target Malakai Cross
.xp <34,1
.xp >36,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 15264 >>训练你的职业技能
.target Malakai Cross
.xp <36,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 8492 >>训练你的职业技能
.target Thurston Xane
.xp <34,1
.xp >36,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 8495 >>训练你的职业技能
.target Thurston Xane
.xp <36,1
step
#ah
.goto Thunder Bluff,40.39,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
.collect 13545,10,5386,1 
.target Auctioneer Stampi
step
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Sun Rock >>飞到石爪山
.target Tal
.zoneskip Stonetalon Mountains
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 37-39北刺
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 30-40
#next 39-39 Dustwallow Marsh
step
.goto Stranglethorn Vale,32.20,28.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿格罗戈什|r
.accept 568 >>接任务: |cRXP_LOOT_格罗姆高保卫战|r
.target Commander Aggro'gosh
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.accept 596 >>接任务: |cRXP_LOOT_染血的白骨项链|r
.target Kin'weelay
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r
.accept 581 >>接任务: |cRXP_LOOT_耶尼库的下落|r
.target Nimboya
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尼尔·石罐|r, Hemet, |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.accept 583 >>接任务: |cRXP_LOOT_欢迎来到丛林|r
.goto Stranglethorn Vale,35.66,10.53
.turnin 583 >>交任务: |cRXP_FRIENDLY_欢迎来到丛林|r
.turnin 5762 >>交任务: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 5763 >>交任务: |cRXP_FRIENDLY_荆棘谷狩猎|r
.accept 194 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.66,10.81
.accept 185 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.62,10.62
.accept 190 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.56,10.55
.target Barnil Stonepot
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#completewith YoungPanthers
>>杀死河边的|cRXP_ENEMY_River鳄鱼|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith YoungPanthers
>>杀死|cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#label YoungPanthers
.goto Stranglethorn Vale,36.82,10.25,60,0
.goto Stranglethorn Vale,36.66,11.88,60,0
.goto Stranglethorn Vale,37.70,14.44,60,0
.goto Stranglethorn Vale,39.26,14.53,60,0
.goto Stranglethorn Vale,41.01,13.63,60,0
.loop 25,Stranglethorn Vale,41.48,13.18,42.29,13.14,43.06,12.26,42.86,10.49,41.99,10.21,41.04,9.37,40.26,10.04,39.96,11.55,40.42,12.35,40.96,13.65,41.48,13.18
>>杀死|cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step << Warrior
.loop 25,Stranglethorn Vale,43.99,11.95,44.73,11.46,45.21,11.05,45.19,9.53,44.83,8.60,43.91,8.74,43.50,9.72,43.95,10.50,43.99,11.95
>>前往库尔岑大院。杀死|cRXP_LOOT_Kurzen医药人|r。掠夺他们的|T134413:0|t[Liferoot]
>>|cRXP_WARN_你也可以从拍卖行购买Liferoot|r
>>|cRXP_WARN_丛林战士和药师共享产卵点，所以你必须同时杀死它们|r
.collect 3357,8 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step
#completewith next
>>杀死河边的|cRXP_ENEMY_River鳄鱼|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
.goto Stranglethorn Vale,38.82,14.20,60,0
.goto Stranglethorn Vale,37.04,13.94,60,0
.goto Stranglethorn Vale,35.58,12.38,60,0
.goto Stranglethorn Vale,33.59,12.20,60,0
.goto Stranglethorn Vale,32.67,10.15,60,0
.goto Stranglethorn Vale,31.42,8.48,60,0
.goto Stranglethorn Vale,33.47,10.25,60,0
.goto Stranglethorn Vale,34.07,11.34
>>杀死|cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.turnin 185 >>交任务: |cRXP_FRIENDLY_猎虎|r
.accept 186 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.62,10.62
.turnin 190 >>交任务: |cRXP_FRIENDLY_猎豹|r
.accept 191 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.56,10.55
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#completewith RaptorsPart1
>>杀死河边的|cRXP_ENEMY_River鳄鱼|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
.loop 25,Stranglethorn Vale,31.0,11.2,29.7,8.9,28.4,12.3,28.8,13.6,28.5,16.9,30.6,13.9,31.0,11.2
>>杀死|cRXP_ENEMY_Panthers|r和|cRXP_ENEMY_Stranglethorn Tigers|r
.complete 191,1 
.complete 186,1 
.mob Panther
.mob Stranglethorn Tiger
step
#label RaptorsPart1
.loop 25,Stranglethorn Vale,28.08,15.41,27.82,16.35,27.18,16.81,26.28,16.70,25.39,16.33,23.71,15.44,25.69,15.71,26.61,15.85,27.24,15.14,27.80,14.33,28.08,15.41
>>杀死|cRXP_ENEMY_Stranglethorn猛禽|r
.complete 194,1 
.mob Stranglethorn Raptor
step
#completewith NesingwaryTurnIns
.goto Stranglethorn Vale,35.55,10.55,80 >>返回奈辛瓦利的远征
step
#label NesingwaryTurnIns
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔加丁爵士|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r, Hemet
.turnin 191 >>交任务: |cRXP_FRIENDLY_猎豹|r
.accept 192 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.55,10.55
.turnin 186 >>交任务: |cRXP_FRIENDLY_猎虎|r
.accept 187 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.61,10.62
.turnin 194 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 195 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.66,10.81
.target Sir S. J. Erlgadin
.target Ajeck Rouack
.target Hemet Nesingwary
step
.goto Stranglethorn Vale,32.4,8.8,90,0
.goto Stranglethorn Vale,34.4,8.2,90,0
.goto Stranglethorn Vale,36.8,10.4,90,0
.goto Stranglethorn Vale,39.8,11.4,90,0
.goto Stranglethorn Vale,39.8,14.4
.line Stranglethorn Vale,32.4,8.8,34.4,8.2,36.8,10.4,39.8,11.4,39.8,14.4
>>杀死河边的|cRXP_ENEMY_River鳄鱼|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith next
>>杀死你遇到的每一只|cRXP_ENEMY_Stranglethorn Tiger|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
.loop 25,Stranglethorn Vale,33.9,15.6,33.2,13.7,28.8,19.6,29.8,19.4,30.6,18.9,33.9,15.6
>>杀死|cRXP_ENEMY_Bloodship巨魔|r。掠夺他们的|cRXX_Loot_TASK|r
.complete 581,1 
.mob Bloodscalp Warrior
.mob Bloodscalp Axe Thrower
.mob Bloodscalp Shaman
step
.loop 25,Stranglethorn Vale,32.1,15.8,31.4,18.4,31.8,20.0,34.2,17.6,32.1,15.8
>>完成击杀|cRXP_ENEMY_Stranglethorn Tigers|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
.loop 25,Stranglethorn Vale,31.9,20.9,30.4,24.7,32.5,23.4,34.1,25.5,36.0,26.8,38.9,25.1,38.1,28.1,31.9,20.9
>>杀死|cRXP_ENEMY_Lashtail猛禽|r
>>|cRXP_WARN_小心他们的眩晕并解除武装|r
.complete 568,1 
.complete 195,1 
.mob Lashtail Raptor
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >>返回Grom'gol大本营
step
.goto Stranglethorn Vale,32.2,27.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r
.turnin 581 >>交任务: |cRXP_FRIENDLY_耶尼库的下落|r
.accept 582 >>接任务: |cRXP_LOOT_猎头行动|r
.target Nimboya
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.accept 629 >>接任务: |cRXP_LOOT_暗礁海|r
.target Kin'weelay
step
.goto Stranglethorn Vale,32.17,28.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿格罗戈什|r
.turnin 568 >>交任务: |cRXP_FRIENDLY_格罗姆高保卫战|r
.accept 569 >>接任务: |cRXP_LOOT_格罗姆高保卫战|r
.target Commander Aggro'gosh
step << Hunter
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤索克|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,629,1 
.target Uthok
step << Hunter
.goto Stranglethorn Vale,31.23,28.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉格|r
.train 14303 >>训练你的职业技能
.target Kragg
.xp <36,1
.xp >38,1
step << Hunter
#optional
.goto Stranglethorn Vale,31.23,28.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉格|r
.train 14320 >>训练你的职业技能
.target Kragg
.xp <38,1
step
#completewith next
.goto Stranglethorn Vale,24.77,22.85
>>|TInterface/GossipFrame/HealerGossipIcon:0|t掠夺|cRXP_PICK_Gri'lek the Wanderer|r以获取|cRXP_Loot_Tablet碎片|r
.complete 629,1 
.group 3
step
#ah
.loop 25,Stranglethorn Vale,24.92,23.59,23.40,24.49,23.71,25.90,25.46,25.61,25.31,24.59,26.8,26.0
.use 5996 >>饮水息灵药 << !Warlock !Druid !Shaman
>>杀死|cRXP_ENEMY_Saltscale Murlocs|r。掠夺它们的|cRXX_Loot_Tail Fins|r
.complete 1107,1 
.mob Saltscale Forager
.mob Saltscale Warrior
.mob Saltscale Hunter
.mob Saltscale Oracle
.mob Saltscale Tide Lord
.itemcount 5996,1 << !Warlock !Druid !Shaman
.group 3
step
.goto Stranglethorn Vale,24.77,22.85
>>|TInterface/GossipFrame/HealerGossipIcon:0|t掠夺|cRXP_PICK_Gri'lek the Wanderer|r以获取|cRXP_Loot_Tablet碎片|r
>>|cRXP_WARN_墙壁两侧各有两块石碑。把墙外面的那个拿走。这样你就不会对任何精英|r|cRXP_ENEMY_Saltscale Murlocs进行农业生产|r
.complete 629,1 
step
.loop 25,Stranglethorn Vale,27.37,18.62,25.94,18.20,24.84,17.26,23.22,16.89,23.21,18.35,24.80,18.98,26.97,19.78,27.37,18.62
>>杀死|cRXP_ENEMY_Crystal Spine Basilisk|r。掠夺它们的|cRXP_Loot_水晶碎片|r
>>|cRXP_WARN_你必须在这里来回走动，强制动态重生|r
.complete 605,1 
.mob Crystal Spine Basilisk
step << Warrior
.loop 25,Stranglethorn Vale,20.38,13.94,20.81,12.74,21.00,10.81,20.06,11.88,19.36,11.81,19.67,13.31,20.38,13.94
>>杀死|cRXP_ENEMY_Bloodship巨魔|r。掠夺它们的|cRXP_Loot_Eurs|r，|cRXP-Loot_Heads|r，| cRXP_Loot_Eneckles|r和|cRXT_Loot_Taxs|r
>>|T133730:0|t[缩头]|cRXP_WARN_仅从|r|cRXP-ENEMY_Bloodsapk猎头|r掉落
.complete 189,1 
.complete 582,1 
.complete 596,1 
.complete 1712,2 
.mob Bloodscalp Witch Doctor
.mob Bloodscalp Berserker
.mob Bloodscalp Headhunter
step << !Warrior
.loop 25,Stranglethorn Vale,20.38,13.94,20.81,12.74,21.00,10.81,20.06,11.88,19.36,11.81,19.67,13.31,20.38,13.94
>>杀死|cRXP_ENEMY_Bloodship巨魔|r。掠夺它们的|cRXP_Loot_Eears|r、|cRXP-Loot_Heads|r和|cRXX_Loot_Eneckles|r
>>|T133730:0|t[缩头]|cRXP_WARN_仅从|r|cRXP-ENEMY_Bloodsapk猎头|r掉落
.complete 189,1 
.complete 582,1 
.complete 596,1 
.mob Bloodscalp Witch Doctor
.mob Bloodscalp Berserker
.mob Bloodscalp Headhunter
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >>返回Grom'gol大本营
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r, |cRXP_FRIENDLY_肯维雷|r
.turnin 582 >>交任务: |cRXP_FRIENDLY_猎头行动|r
.goto Stranglethorn Vale,32.16,27.72
.turnin 596 >>交任务: |cRXP_FRIENDLY_染血的白骨项链|r
.turnin 629 >>交任务: |cRXP_FRIENDLY_暗礁海|r
.goto Stranglethorn Vale,32.27,27.70
.target Nimboya
.target Kin'weelay
step
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >>飞到Booty Bay
.target Thysta
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.turnin 575 >>交任务: |cRXP_FRIENDLY_供与求|r
.accept 577 >>接任务: |cRXP_LOOT_收集鳄鱼皮|r
.target Drizzlik
step
.goto Stranglethorn Vale,28.14,78.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Glyx交谈|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134832:0|t[更强的治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Glyx Brewright
step
.goto Stranglethorn Vale,26.87,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >>飞往Grom'gol大本营
.target Gringer
step
.goto Stranglethorn Vale,32.12,29.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.accept 570 >>接任务: |cRXP_LOOT_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.loop 25,Stranglethorn Vale,36.49,31.61,37.28,30.96,38.04,29.61,36.88,29.69,35.60,30.62,36.49,31.61
>>杀死|cRXP_ENEMY_Mosh'Ogg Brutes|r和|cRXD_ENEMY_Mosh'Org Witch Doctors|r
>>|cRXP_WARN_在等待重生时杀死|r|cRXP_ENEMY_Snapjaw鳄鱼|r|cRXP_WARN_|r
.complete 569,1 
.complete 569,2 
.mob Mosh'Ogg Brute
.mob Mosh'Ogg Witch Doctor
step
.goto Stranglethorn Vale,38.0,32.4,50,0
.goto Stranglethorn Vale,38.8,28.4,50,0
.goto Stranglethorn Vale,40.4,24.4,50,0
.goto Stranglethorn Vale,40.4,22.8,50,0
.goto Stranglethorn Vale,39.4,21.6,50,0
.goto Stranglethorn Vale,39.8,16.6,50,0
.goto Stranglethorn Vale,42.6,17.2,50,0
.line Stranglethorn Vale,38.0,32.4,38.8,28.4,40.4,24.4,40.4,22.8,39.4,21.6,39.8,16.6,42.6,17.2
>>沿着河流杀死|cRXP_ENEMY_Snapjaw Crocollisk|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 577,1 
.mob Snapjaw Crocolisk
step
#completewith CozzleBl
>>杀死|cRXP_ENEMY_Venture Co.地质学家|r。掠夺他们的|cRXX_Loot_水晶|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,42.74,18.04,40,0
.goto Stranglethorn Vale,42.10,18.33,12,0
.goto Stranglethorn Vale,42.29,18.98,12,0
.goto Stranglethorn Vale,42.51,18.82,12,0
.goto Stranglethorn Vale,42.66,18.36
>>爬到石油钻井平台的顶部，然后杀死|cRXP_ENEMY_Foreman Cozzle|r。抢走他的|cRXP-Loot_Key|r
.collect 5851,1 
.unitscan Foreman Cozzle
step
#label CozzleBl
.goto Stranglethorn Vale,43.33,20.33
>>|TInterface/GossipFrame/HealerGossipIcon:0|t进入木材厂旁边的房子，然后掠夺|cRXP_PICK_Cozzle的Footlocker|r以获得|cRXP_loot_Blueprints|r
.complete 1182,1 
step
.loop 25,Stranglethorn Vale,36.49,31.61,37.28,30.96,38.04,29.61,36.88,29.69,35.60,30.62,36.49,31.61
>>返回米兹贾废墟并完成杀戮|cRXP_ENEMY_Mosh'Ogg Brutes|r和|cRXD_ENEMY_Mosh'Org Witch Doctors|r
.complete 569,1 
.complete 569,2 
.mob Mosh'Ogg Brute
.mob Mosh'Ogg Witch Doctor
step
.loop 25,Stranglethorn Vale,43.26,21.05,42.58,22.00,43.78,22.80,44.42,23.55,45.38,23.28,46.29,23.45,46.26,21.94,47.02,20.02,46.67,19.13,46.34,18.00,45.27,17.76,44.89,16.79,44.44,16.19,43.60,15.80,43.39,17.63,43.65,19.32,43.26,21.05
>>完成杀戮|cRXP_ENEMY_Venture Co.地质学家|r。掠夺他们的|cRXX_Loot_水晶|r
.complete 213,1 
.mob Venture Co. Geologist
step
.loop 25,Stranglethorn Vale,43.26,21.05,42.58,22.00,43.78,22.80,44.42,23.55,45.38,23.28,46.29,23.45,46.26,21.94,47.02,20.02,46.67,19.13,46.34,18.00,45.27,17.76,44.89,16.79,44.44,16.19,43.60,15.80,43.39,17.63,43.65,19.32,43.26,21.05
.xp 38+40400 >>升级到38.5级
step
#completewith ShadowPanthers
>>杀死|cRXP_ENEMY_Stranglethorn虎妞|r。掠夺它们以获得|cRXX_Loot_原始虎妞方|r
.complete 570,2 
.mob Stranglethorn Tigress
step
#ah
#completewith next
.use 10592 >>消耗您的|T134816:0|t[Caseye Elixir]以更容易地找到|cRXP_ENEMY_Shadowmaw Panthers|r
step
#label ShadowPanthers
.loop 25,Stranglethorn Vale,47.64,22.47,48.08,23.54,48.82,23.91,49.58,25.41,50.29,24.76,50.25,23.37,50.26,21.44,49.29,19.84,48.33,19.99,47.75,21.21,47.64,22.47
>>杀死|cRXP_ENEMY_Shadowmaw Panthers|r。掠夺它们的|cRXX_Loot_爪|r
>>|cRXP_WARN_这些都是偷来的暴徒。搜索任何空置区域|r
.complete 570,1 
.complete 192,1 
.unitscan Shadowmaw Panther
step
.loop 25,Stranglethorn Vale,47.64,22.47,48.08,23.54,48.82,23.91,49.58,25.41,50.29,24.76,50.25,23.37,50.26,21.44,49.29,19.84,48.33,19.99,47.75,21.21,47.64,22.47
>>杀死|cRXP_ENEMY_Stranglethorn虎妞|r。掠夺它们以获得|cRXX_Loot_原始虎妞方|r
.complete 570,2 
.mob Stranglethorn Tigress
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔加丁爵士|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r, Hemet
.turnin 192 >>交任务: |cRXP_FRIENDLY_猎豹|r
.goto Stranglethorn Vale,35.55,10.55
.turnin 187 >>交任务: |cRXP_FRIENDLY_猎虎|r
.accept 188 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.61,10.62
.turnin 195 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 196 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.66,10.81
step
.goto Stranglethorn Vale,32.2,17.4
>>杀死|cRXP_ENEMY_Sin'Dall|r。掠夺他的|cRXX_Loot_Paw|r
>>|cRXP_WARN_辛达尔要么在高原上，要么在基地巡逻|r
.complete 188,1 
.unitscan Sin'Dall
step
.goto Stranglethorn Vale,35.61,10.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r
.turnin 188 >>交任务: |cRXP_FRIENDLY_猎虎|r
.target Ajeck Rouack
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >>返回Grom'gol大本营
step
.goto Stranglethorn Vale,32.16,27.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r
.accept 638 >>接任务: |cRXP_LOOT_巨魔之敌|r
.target Nimboya
step
.goto Stranglethorn Vale,32.17,28.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿格罗戈什|r
.turnin 569 >>交任务: |cRXP_FRIENDLY_格罗姆高保卫战|r
.target Commander Aggro'gosh
step
.goto Stranglethorn Vale,32.12,29.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 570 >>交任务: |cRXP_FRIENDLY_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >>飞到Booty Bay
.target Thysta
step
.goto Stranglethorn Vale,27.23,76.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大财主里维加兹|r
.turnin 1182 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1183 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Baron Revilgaz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科博克|r, |cRXP_FRIENDLY_克拉兹克|r
.turnin 189 >>交任务: |cRXP_FRIENDLY_血顶巨魔的耳朵|r
.turnin 213 >>交任务: |cRXP_FRIENDLY_恶性竞争|r
.goto Stranglethorn Vale,27.0,77.13
.turnin 201 >>交任务: |cRXP_FRIENDLY_调查营地|r
.accept 209 >>接任务: |cRXP_LOOT_劈颅巨魔的獠牙|r
.goto Stranglethorn Vale,26.95,77.21
.target Kebok
.target Krazek
step
.goto Stranglethorn Vale,27.12,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 605 >>交任务: |cRXP_FRIENDLY_歌唱水晶碎片|r
.accept 600 >>接任务: |cRXP_LOOT_风险投资公司|r
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.turnin 577 >>交任务: |cRXP_FRIENDLY_收集鳄鱼皮|r
.accept 628 >>接任务: |cRXP_LOOT_刨花皮靴|r
.target Drizzlik
step << Druid
#completewith DruidTraining5
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 5201 >>训练你的职业技能
.target Loganaar
.xp <38,1
.xp >40,1
step << Druid
#label DruidTraining5
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9634 >>训练你的职业技能
.target Loganaar
.xp <40,1
step
#completewith next
.hs >>前往: 奥格瑞玛
.use 6948
.zoneskip Orgrimmar
step
.goto Orgrimmar,54.10,68.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Gryshka
step
.goto Orgrimmar,57.57,52.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克森图|r
.vendor >>买三个[舒缓香料]
.collect 3713,3 
.target Xen'to
step
+存入所有|T134332:0|t[荆棘页的青山]
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师萨苏恩|r
.collect 3853,1 >>|cRXP_BUY_从拍卖行购买一把|r|T135326:0|t[月钢大刀]|cRXP_Buy_|r
>>这是稍后在达斯瓦洛沼泽免费获得3450经验值。如果无法获取，请跳过此步骤
.target Auctioneer Thathung
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8413 >>训练你的职业技能
.target Pephredo
.xp <38,1
.xp >40,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8423 >>训练你的职业技能
.target Pephredo
.xp <40,1
step << Mage
.goto Orgrimmar,38.70,85.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与小屋顶部的|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 11417 >>列车|T135744:0|t[入口：Orgrimmar]
.target Thuul
.xp <40,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Horthus|r|cRXP_BUY_交谈。从他那里购买两个或多个|r|T134419:0|t[传送符文]|cRXP_Buy_以及可选的一个或多个子|r|T134421:0|t[传送符文]|r
.collect 17031,2 
.collect 17032,1 
.target Horthus
.xp <40,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Horthus|r|cRXP_BUY_交谈。从他那里购买两个或多个|r|T134419:0|t[传送符文]|r
.collect 17031,2 
.target Horthus
.xp >40,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10391 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <38,1
.xp >40,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 8134 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <40,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8621 >>训练你的职业技能
.target Ormok
.xp <38,1
.xp >40,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8624 >>训练你的职业技能
.target Ormok
.xp <40,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11711 >>训练你的职业技能
.target Mirket
.xp <38,1
.xp >40,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11733 >>训练你的职业技能
.target Mirket
.xp <40,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 8820 >>训练你的职业技能
.target Grezz Ragefist
.xp <38,1
.xp >40,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20660 >>训练你的职业技能
.target Grezz Ragefist
.xp <40,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14320 >>训练你的职业技能
.target Ormak Grimshot
.xp <38,1
.xp >40,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14324 >>训练你的职业技能
.target Ormak Grimshot
.xp <40,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6078 >>训练你的职业技能
.target Ur'kyo
.xp <38,1
.xp >40,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 8106 >>训练你的职业技能
.target Ur'kyo
.xp <40,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 39-39 Dustwallow Marsh
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 30-40
#next 39-41 Alterac/Arathi
step
.goto Orgrimmar,45.120,63.889
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
.fly Brackenwall Village >>飞往Brackenwall村
.target Doras
.zoneskip Dustwallow Marsh
step
#optional
.abandon 629 >>Abandon The Vile Reef
.isOnQuest 629
step
#label Hoofprints
.goto Dustwallow Marsh,29.71,47.65
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击地面上的|cRXP_PICK_Hoofprints|r
.accept 1268 >>接任务: |cRXP_LOOT_可疑的蹄印|r
step
#label Badge
.goto Dustwallow Marsh,29.83,48.24
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击木板上的|cRXP_PICK_Theramore守卫徽章|r
.accept 1269 >>接任务: |cRXP_LOOT_帕瓦尔·雷瑟上尉|r
step
.goto Dustwallow Marsh,29.63,48.60
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击壁炉上方的|cRXP_PICK_Black Shield |r
.accept 1251 >>接任务: |cRXP_LOOT_黑色盾牌|r
step
#requires Badge
.goto Dustwallow Marsh,35.15,38.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马德克拉什|r
.accept 1177 >>接任务: |cRXP_LOOT_饿！|r
.target Mudcrush Durtfeet
step
.goto Dustwallow Marsh,35.21,30.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.accept 1201 >>接任务: |cRXP_LOOT_塞拉摩间谍|r
.target Nazeer Bloodpike
step
.goto Dustwallow Marsh,36.41,31.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1268 >>交任务: |cRXP_FRIENDLY_可疑的蹄印|r
.turnin 1269 >>交任务: |cRXP_FRIENDLY_帕瓦尔·雷瑟上尉|r
.target Krog
step
.goto Dustwallow Marsh,36.41,31.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1251 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.accept 1321 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Krog
step
.goto Dustwallow Marsh,36.50,30.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜高尔|r
.turnin 1321 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.accept 1322 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Do'gol
step
#completewith Infiltrator
>>杀死|cRXP_ENEMY_Darkfang蜘蛛|r。抢走它们的|cRXX_Loot_毒液袋|r
>>|cRXP_WARN_血腥猛禽与暗方蜘蛛共享产卵点，所以也要杀死它们|r
.complete 1322,1 
.mob Darkfang Lurker
.mob Darkfang Spider
.mob Darkfang Venomspitter
step
.goto Dustwallow Marsh,40.96,36.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格隆|r
.accept 1273 >>接任务: |cRXP_LOOT_盘问雷瑟|r
>>|cRXP_WARN_小心！这个任务很难|r
.target Ogron
step
.goto Dustwallow Marsh,42.50,38.00
>>当你到达营地时，四个暴民将产生。他们会在角色扮演后发起攻击
>>|cRXP_WARN_让|r|cRXP_FRIENDLY_Ogron|r|cRXP_WARN_aggro一个，然后使用冷却来杀死其他三个|r
.complete 1273,1 
.target Ogron
step
#completewith next
>>杀死你遇到的任何|cRXP_ENEMY_Theramore渗透者|r
>>|cRXP_WARN_They are stealthed|r
.complete 1201,1 
.unitscan Theramore Infiltrator
step
.goto Dustwallow Marsh,46.90,17.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊格纳兹|r
.accept 1270 >>接任务: |cRXP_LOOT_伊格纳兹的逃亡|r
.target "Stinky" Ignatz
step
>>|cRXP_WARN_护送|r|cRXP_FRIENDLY_Stinky|r|cRXP_WARN_时，请注意血腥尖叫者会在33%的生命值左右寻求帮助|r
.complete 1270,1 
.target "Stinky" Ignatz
.mob Bloodfen Screecher
step
.goto Dustwallow Marsh,55.43,26.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.accept 1218 >>接任务: |cRXP_WARN_舒心草|r
.turnin 1218 >>交任务: |cRXP_FRIENDLY_舒心草|r
.accept 1206 >>接任务: |cRXP_LOOT_加尔和蜘蛛眼|r
.target "Swamp Eye" Jarl
step
.goto Dustwallow Marsh,55.44,25.93
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_FRIENDLY_“沼泽眼”Jarl|r房屋以西的|cRXP_PICK_Loose Dirt|r
.accept 1238 >>接任务: |cRXP_LOOT_遗失的报告|r
step
.goto Dustwallow Marsh,56.82,22.42,50,0
.goto Dustwallow Marsh,57.80,21.30,50,0
.goto Dustwallow Marsh,57.49,16.80,50,0
.goto Dustwallow Marsh,58.29,15.47,50,0
.goto Dustwallow Marsh,57.80,21.30
>>杀死|cRXP_ENEMY_all-Mirefin-Murlocs|r。掠夺他们的|cRXP_Loot_Heads|r
.complete 1177,1 
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mirefin Coastrunner
.mob Mirefin Muckdweller
step
#completewith next
>>杀死你遇到的任何|cRXP_ENEMY_Theramore渗透者|r
>>|cRXP_WARN_They are stealthed|r
.complete 1201,1 
.unitscan Theramore Infiltrator
step
.goto Dustwallow Marsh,35.9,20.7,90,0
.goto Dustwallow Marsh,32.8,21.4,90,0
.loop 25,Dustwallow Marsh,34.4,25.2,35.9,20.7,32.8,21.4,34.4,25.2
>>杀死|cRXP_ENEMY_all Darkmist Spiders|r。掠夺它们的|cRXX_Loot_Eyes |r
.complete 1206,1 
.mob Darkmist Recluse
.mob Darkmist Spider
.mob Darkmist Spider
.mob Darkmist Lurker
.unitscan Darkmist Widow
step
#label Infiltrator
.goto Dustwallow Marsh,39.0,21.6,70,0
.loop 25,Dustwallow Marsh,39.7,23.9,37.6,26.9,41.0,25.5,44.2,27.4,37.9,37.4,39.0,21.6,39.7,23.9
>>杀死你遇到的任何|cRXP_ENEMY_Theramore渗透者|r
>>|cRXP_WARN_They are stealthed|r
.complete 1201,1 
.unitscan Theramore Infiltrator
step
.goto Dustwallow Marsh,39.96,14.10,50,0
.loop 25,Dustwallow Marsh,39.0,21.6,39.7,23.9,37.6,26.9,41.0,25.5,44.2,27.4,37.9,37.4,39.0,21.6
>>杀死|cRXP_ENEMY_Darkfang蜘蛛|r。抢走它们的|cRXX_Loot_毒液袋|r
>>|cRXP_WARN_血腥猛禽与暗方蜘蛛共享产卵点，所以也要杀死它们|r
.complete 1322,1 
.mob Darkfang Lurker
.mob Darkfang Spider
.mob Darkfang Venomspitter
step
#completewith next
.goto Dustwallow Marsh,35.21,30.66,120 >>返回Brackenwall村
step
.goto Dustwallow Marsh,35.21,30.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1201 >>交任务: |cRXP_FRIENDLY_塞拉摩间谍|r
.turnin 1238 >>交任务: |cRXP_FRIENDLY_遗失的报告|r
.target Nazeer Bloodpike






step
.goto Dustwallow Marsh,36.50,30.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜高尔|r
.turnin 1322 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.accept 1323 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Do'gol
step
.goto Dustwallow Marsh,36.50,31.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1323 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.turnin 1273 >>交任务: |cRXP_FRIENDLY_盘问雷瑟|r
.accept 1276 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Krog
step
.goto Dustwallow Marsh,35.20,38.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马德克拉什|r
.turnin 1177 >>交任务: |cRXP_FRIENDLY_饿！|r
.target Mudcrush Durtfeet
step
.goto Dustwallow Marsh,55.44,25.93
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_FRIENDLY_“沼泽眼”Jarl|r房屋以西的|cRXP_PICK_Loose Dirt|r
.accept 1239 >>接任务: |cRXP_LOOT_被斩下的头颅|r
step
.goto Dustwallow Marsh,55.43,26.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.turnin 1206 >>交任务: |cRXP_FRIENDLY_加尔和蜘蛛眼|r
.target "Swamp Eye" Jarl
step
#ah
#optional
.goto Dustwallow Marsh,55.43,26.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.accept 1203 >>接任务: |cRXP_LOOT_加尔的剑|r
.turnin 1203 >>交任务: |cRXP_FRIENDLY_加尔的剑|r
.target "Swamp Eye" Jarl
.itemcount 3853,1
.isQuestTurnedIn 1206
step
#completewith NazeerB
.destroy 5884 >>摧毁: |cRXP_ENEMY_黑雾蜘蛛的眼球|r
step
#completewith next
.goto Dustwallow Marsh,35.21,30.66,120 >>返回Brackenwall村
step
#label NazeerB
.goto Dustwallow Marsh,35.30,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1239 >>交任务: |cRXP_FRIENDLY_被斩下的头颅|r
.accept 1240 >>接任务: |cRXP_LOOT_巨魔巫医|r
.target Nazeer Bloodpike
.isQuestTurnedIn 1238






step
#completewith next
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fly Gadgetzan >>飞到Gadgetzan
.target Shardi
.zoneskip Tanaris
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1183 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1186 >>接任务: |cRXP_LOOT_第十八个驾驶员|r
.target Pozzik
step
.goto Thousand Needles,80.328,76.094
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1186 >>交任务: |cRXP_FRIENDLY_第十八个驾驶员|r
.accept 1187 >>接任务: |cRXP_LOOT_拉泽瑞克的调整|r
.target Razzeric
step
#ah
.goto Thousand Needles,78.14,77.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle|r
.turnin 1107 >>交任务: |cRXP_FRIENDLY_坚硬的尾鳍|r
.target Wizzle Brassbolts
.group
.isQuestComplete 1107
step << Druid
#completewith DruidTraining6
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 5201 >>训练你的职业技能
.target Loganaar
.xp <38,1
.xp >40,1
step << Druid
#label DruidTraining6
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9634 >>训练你的职业技能
.target Loganaar
.xp <40,1
step << Druid
.hs >>前往: 奥格瑞玛
.use 6948
.zoneskip Orgrimmar
step << !Mage !Druid
.hs >>前往: 奥格瑞玛
.use 6948
.cooldown item,6948,>0
.zoneskip Orgrimmar
step << !Mage
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bulkrek Ragefist
.cooldown item,6948,<0
.zoneskip Orgrimmar
step
#optional
.abandon 1186 >>放弃哥布林赞助
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10391 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <38,1
.xp >40,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 8134 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <40,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8621 >>训练你的职业技能
.target Ormok
.xp <38,1
.xp >40,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8624 >>训练你的职业技能
.target Ormok
.xp <40,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 8820 >>训练你的职业技能
.target Grezz Ragefist
.xp <38,1
.xp >40,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20660 >>训练你的职业技能
.target Grezz Ragefist
.xp <40,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14320 >>训练你的职业技能
.target Ormak Grimshot
.xp <38,1
.xp >40,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14324 >>训练你的职业技能
.target Ormak Grimshot
.xp <40,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6078 >>训练你的职业技能
.target Ur'kyo
.xp <38,1
.xp >40,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 8106 >>训练你的职业技能
.target Ur'kyo
.xp <40,1
step << Hunter
.goto Orgrimmar,48.13,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特拉克根|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,232 
.target Trak'gen
.xp >40,1
step << Hunter
.goto Orgrimmar,48.13,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特拉克根|r
>>|cRXP_BUY_从他那里购买|r|T135661:0|t[Jagged Arrows]|cRXP_Buy_|r
.collect 11285,2600,232 
.target Trak'gen
.xp <40,1
step << Orc !Warlock
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r, |cRXP_FRIENDLY_奥古纳罗|r
.train 825 >>火车|T136103:0|t[骑狼]
.vendor >>|cRXP_BUY_BUY a|r|T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step << Troll
#completewith next
.subzone 367 >>前往森津村
.xp <40,1
.money <90
.skill riding,75,1
step << Troll
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 10861 >>火车|T136103:0|t[猛禽骑乘]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FF猛禽|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11711 >>训练你的职业技能
.target Mirket
.xp <38,1
.xp >40,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.trainer >>训练你的职业技能
.accept 3631 >>接任务: |cRXP_LOOT_召唤地狱战马|r
.target Mirket
.xp <40,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step << Warlock
#completewith next
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >>飞到棘轮
.zoneskip The Barrens
.target Doras
.isOnQuest 3631
step << Warlock
.goto The Barrens,62.63,35.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 3631 >>交任务: |cRXP_FRIENDLY_召唤地狱战马|r
.target Strahad Farsan
.isOnQuest 3631
step << Warlock
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bragok
.isQuestComplete 3631
.zoneskip Orgrimmar
step << Tauren
#optional
#completewith KodoRiding
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.zoneskip Thunder Bluff
.target Doras
step << Tauren
#optional
#completewith next
.subzone 222 >>前往血蹄村
.xp <40,1
.money <90
.skill riding,75,1
step << Tauren
#optional
#label KodoRiding
.goto Mulgore,47.64,58.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 132245 >>火车|T136103:0|t[Kodo Riding]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FFKodo|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kar Stormsinger
.target Harb Clawhoof
step << Tauren
#optional
.hs >>前往: 奥格瑞玛
.use 6948
.cooldown item,6948,>0
.zoneskip Orgrimmar
step << Tauren
#optional
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Tal
.cooldown item,6948,<0
.zoneskip Orgrimmar
step
#sticky
#completewith EnterSM
.subzone 796 >>现在你应该找一个团体去猩红寺
.dungeon SM
step << !Mage
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
step << Mage
.goto Undercity,85.13,10.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 8413 >>训练你的职业技能
.target Anastasia Hartwell
.xp <38,1
.xp >40,1
step << Mage
#optional
.goto Undercity,85.13,10.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 8423 >>训练你的职业技能
.target Anastasia Hartwell
.xp <40,1
step << Mage
.goto Undercity,84.20,15.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Lexington|r交谈
.train 11418 >>列车|T11418:0|t[入口：地下城]
.target Lexington Mortaim
.xp <40,1
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Hannah|r|cRXP_BUY_交谈。从他那里购买两个或多个|r|T134419:0|t[传送符文]|r
.collect 17031,2 
.target Hannah Akeley
step
#optional
.abandon 1107 >>废弃镶嵌的尾翼
.isOnQuest 1107
step
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.accept 1048 >>接任务: |cRXP_WARN_深入血色修道院|r
.target Varimathras
.dungeon SM
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.accept 1113 >>接任务: |cRXP_WARN_狂热之心|r
.target Master Apothecary Faranell
.isQuestTurnedIn 1109 
.dungeon SM
step << Undead !Warlock
#optional
#completewith next
.subzone 159 >>Travel to Brill
.xp <40,1
.money <90
.skill riding,75,1
step << Undead !Warlock
#optional
.goto Tirisfal Glades,60.09,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Velma, |cRXP_FRIENDLY_撒迦利亚·普斯特|r
.train 10906 >>火车|T136103:0|t[不死骑士术]
.vendor >>|cRXP_BUY_BUY a|r|T132264:0|t[|cFF0070FF骨骼马|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step
#label EnterSM
.goto Eastern Kingdoms,46.32,30.71,15,0
.goto Eastern Kingdoms,46.61,30.59
.zone 303 >>进入猩红寺。从Library开始，这样您就可以在最后掠夺[|cRXP_FRIENDLY_the Scarlet Key|r]
.zoneskip 304
.zoneskip 305
.dungeon SM




step << !Undead
#completewith Bosses
>>掠夺|cRXP_Loot_堕落者简编|r
>>|cRXP_WARN_它位于地牢最后一个角落左边的书架上|r
.complete 1049,1 
.dungeon SM
step
#completewith Bosses
>>掠夺|cRXP_Loot_堕落者简编|r
>>|cRXP_WARN_它位于地牢最后一个角落左边的书架上|r
.complete 1049,1 
.isOnQuest 1049
.dungeon SM
step
#completewith Compendium
>>杀死|cRXP_LOOT_Scarlet|r暴民。掠夺他们的|cRXP_Loot_狂热之心|r
.complete 1113,1 
.isOnQuest 1113
.dungeon SM
step
#label Bosses
>>杀死|cRXP_ENEMY_Houndmaster Loksey|r，|cRXD_ENEMY_Herod |r，| cRXP__ENEMY_High Inquisitor Whitemane|r和|cRXP_ENEMY_Scarlet Commander Mograine|r
>>|cRXP_ENEMY_Houndmaster Loksey |r|cRXP_WARN_i位于图书馆|r
>>|cRXP_ENEMY_Herod|r |cRXP_WARN_is located in the Armory|r
>>|cRXP_ENEMY_高级检察官Whitemane|r|cRXP_WARN_and|cRXP-ENEMY_Scarlet指挥官Mograine|r位于大教堂|r
.complete 1048,4 
.complete 1048,3 
.complete 1048,1 
.complete 1048,2 
.isOnQuest 1048
.mob Houndmaster Loksey
.mob Herod
.mob High Inquisitor Whitemane
.mob Scarlet Commander Mograine
.dungeon SM
step << !Undead
#label Compendium
>>掠夺|cRXP_Loot_堕落者简编|r
>>|cRXP_WARN_它位于地牢最后一个角落左边的书架上|r
.complete 1049,1 
.isOnQuest 1049
.dungeon SM
step << Mage
#completewith SMturnin
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.dungeon SM
step << !Mage
#completewith next
.goto Undercity,66.07,9.18,150 >>前往: |cRXP_PICK_幽暗城|r
.zoneskip Undercity
.dungeon SM
step
#label SMturnin
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 1048 >>交任务: |cRXP_FRIENDLY_深入血色修道院|r
.isQuestComplete 1048
.target Varimathras
.dungeon SM
step
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.accept 6521 >>接任务: |cRXP_WARN_邪恶的盟友|r
.target Varimathras
.isQuestTurnedIn 6522 
.dungeon RFD
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.turnin 1113 >>交任务: |cRXP_FRIENDLY_狂热之心|r
.target Master Apothecary Faranell
.isQuestComplete 1113
.dungeon SM
step
.goto Undercity,74.05,33.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew|r
.accept 3341 >>接任务: |cRXP_WARN_寒冰之王|r
.target Andrew Brownell
.dungeon RFD
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
.isQuestComplete 1049
.dungeon SM
step
.hs >>前往: 奥格瑞玛
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物和水|r
.target Innkeeper Gryshka
.use 6948
.cooldown item,6948,>0
.zoneskip Undercity,1
.dungeon RFD
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Undercity,1
.cooldown item,6948,<0
.dungeon RFD
step << !Mage
.hs >>前往: 奥格瑞玛
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物和水|r
.target Innkeeper Gryshka
.use 6948
.zoneskip Orgrimmar
.dungeon SM
.isQuestComplete 1049
step << !Mage
.goto Tirisfal Glades,61.06,58.86,12,0
.goto Tirisfal Glades,61.51,59.01,10,0
.goto Tirisfal Glades,61.27,59.22,8,0
.goto Tirisfal Glades,61.13,58.84,8,0
.goto Tirisfal Glades,61.38,58.71,8,0
.goto Tirisfal Glades,61.34,59.17,8,0
.goto Tirisfal Glades,60.51,58.69,-1
.goto Tirisfal Glades,60.94,46.35,-1
>>上齐柏林塔
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Orgrimmar
.cooldown item,6948,<0
.dungeon RFD
step << !Mage
#completewith next
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.zoneskip Thunder Bluff
.target Doras
.dungeon SM
.isQuestComplete 1049
step << !Undead
.goto Thunder Bluff,34.42,46.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.turnin 1049 >>交任务: |cRXP_FRIENDLY_堕落者纲要|r
.target Sage
.dungeon SM
.isQuestComplete 1049
step
#sticky
#completewith EnterRFD
.subzone 722 >>现在你应该找一个去Razorfen Downs的团队
.dungeon RFD
step
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Tal
.zoneskip Thunder Bluff,1
.dungeon RFD
step
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Camp Taurajo >>飞往陶拉霍营地
.zoneskip Orgrimmar,1
.target Doras
.dungeon RFD
step
#completewith next
.goto The Barrens,46.30,90.27,200 >>前往Razorfen Downs
.dungeon RFD
step
#completewith next
.goto The Barrens,46.30,90.27,50,0
.goto The Barrens,46.92,91.84,50,0
.goto The Barrens,48.20,92.66,50,0
>>杀死|cRXP_ENEMY_Ambassador Malcin|r。掠夺他的|cRXP_Loot_Head |r
>>|cRXP_WARN_他可以在实例外的4个不同帐篷中产卵|r
.complete 6521,1 
.unitscan Ambassador Malcin
.isOnQuest 6521
.dungeon RFD
step
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦雷姆·月歌|r
.accept 6626 >>接任务: |cRXP_WARN_邪恶之地|r
.target Myriam Moonsinger
.dungeon RFD
step
#completewith next
>>杀死|cRXP_ENEMY_Razorfen战列护卫队|r、|cRXD_ENEMY_拉佐芬荆棘编织者|r和|cRXP_ENEMY_Death’s Head Cultors|r
>>|cRXP_WARN_此任务在实例之外完成|r
.complete 6626,1 
.complete 6626,2 
.complete 6626,3 
.mob Razorfen Battleguard
.mob Razorfen Thornweaver
.mob Death's Head Cultist
.isOnQuest 6626
.dungeon RFD
step
.goto The Barrens,48.57,95.69,50,0
.goto The Barrens,48.20,92.66,50,0
.goto The Barrens,46.92,91.84,50,0
.goto The Barrens,46.30,90.27,50,0
.goto The Barrens,46.92,91.84
>>杀死|cRXP_ENEMY_Ambassador Malcin|r。掠夺他的|cRXP_Loot_Head |r
>>|cRXP_WARN_他可以在实例外的4个不同帐篷中产卵|r
.complete 6521,1 
.unitscan Ambassador Malcin
.isOnQuest 6521
.dungeon RFD
step
>>杀死|cRXP_ENEMY_Razorfen战列护卫队|r、|cRXD_ENEMY_拉佐芬荆棘编织者|r和|cRXP_ENEMY_Death’s Head Cultors|r
>>|cRXP_WARN_此任务在实例之外完成|r
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31
.complete 6626,1 
.complete 6626,2 
.complete 6626,3 
.mob Razorfen Battleguard
.mob Razorfen Thornweaver
.mob Death's Head Cultist
.isOnQuest 6626
.dungeon RFD
step
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦雷姆·月歌|r
.turnin 6626 >>交任务: |cRXP_FRIENDLY_邪恶之地|r
.target Myriam Moonsinger
.isQuestComplete 6626
.dungeon RFD
step
#label EnterRFD
.goto The Barrens,49.255,93.077,0
.goto The Barrens,49.255,93.077,30,0
.goto 1414,53.26,71.18
.zone 300 >>Enter Razorfen Downs
.dungeon RFD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奔尼斯特拉兹|r
>>|cRXP_WARN_走左边的路，一直向左走，直到到达the Murder Pens，到达|r|cRXP_FRIENDLY_Belnistrasz|r
>>|cRXP_WARN_在你的队伍其他人准备好之前，不要接受“消灭偶像”，因为这是护送的开始。此步骤的自动接受功能已关闭|r
.accept 3523 >>接任务: |cRXP_WARN_剃刀高地的亡灵天灾|r
.turnin 3523 >>交任务: |cRXP_FRIENDLY_剃刀高地的亡灵天灾|r
.accept 3525,1 >>接任务: |cRXP_WARN_封印神像|r
.target Belnistrasz
.dungeon RFD
step
>>在仪式期间遵守并保护|cRXP_FRIENDLY_Belnistrasz|r
.complete 3525,1 
.target Belnistrasz
.isOnQuest 3525
.dungeon RFD
step
>>单击|cRXP_PICK_Belnistrasz的Brazier|r
.turnin 3525 >>交任务: |cRXP_FRIENDLY_封印神像|r
.isQuestComplete 3525
.dungeon RFD
step
>>杀死Coldbringer的|cRXP_ENEMY_Amnennar|r。掠夺他的|cRXX_Loot_Skull|r
.complete 3341,1 
.mob Amnennar the Coldbringer
.isOnQuest 3341
.dungeon RFD
step << !Mage
.hs >>前往: 奥格瑞玛
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Gryshka
.use 6948
.dungeon RFD
step << Hunter
.goto Orgrimmar,48.13,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特拉克根|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,232 
.target Trak'gen
.xp >40,1
.dungeon RFD
step << Hunter
.goto Orgrimmar,48.13,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特拉克根|r
>>|cRXP_BUY_从他那里购买|r|T135661:0|t[Jagged Arrows]|cRXP_Buy_|r
.collect 11285,2600,232 
.target Trak'gen
.xp <40,1
.dungeon RFD
step << !Mage
.goto Durotar,50.53,12.52
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.dungeon RFD
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.dungeon RFD
step
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 6521 >>交任务: |cRXP_FRIENDLY_邪恶的盟友|r
.target Varimathras
.isQuestComplete 6521
.dungeon RFD
step
.goto Undercity,74.05,33.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew|r
.turnin 3341 >>交任务: |cRXP_FRIENDLY_寒冰之王|r
.target Andrew Brownell
.isQuestComplete 3341
.dungeon RFD
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 39-41 Alterac/Arathi
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 30-40
#next 41-42 Badlands
step
.goto Undercity,50.15,67.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师金格|r
.accept 232 >>接任务: |cRXP_LOOT_金格的货物|r
.target Apothecary Zinge
step
.goto Undercity,58.61,54.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷萨多·卢卡|r
.turnin 232 >>交任务: |cRXP_FRIENDLY_金格的货物|r
.accept 238 >>接任务: |cRXP_LOOT_金格的货物|r
.target Alessandro Luca
step
.goto Undercity,50.15,67.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师金格|r
.turnin 238 >>交任务: |cRXP_FRIENDLY_金格的货物|r
.accept 243 >>接任务: |cRXP_LOOT_进入沙漠|r
.target Apothecary Zinge
.solo
step
.goto Undercity,50.15,67.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师金格|r
.turnin 238 >>交任务: |cRXP_FRIENDLY_金格的货物|r
.target Apothecary Zinge
.group
step << Hunter
.goto Undercity,54.71,38.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Abigail|r|cRXP_BUY_交谈。从她那里买一个|r|T135489:0|t[巨大长弓]如果有|r
.collect 11307,1,503,1 
.target Abigail Sawyer
.money <6.7952
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
step << Hunter
#completewith BracersofBinding
+当你达到42级时装备|T135489:0|t[巨大长弓]
.use 11307
.itemcount 11307,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
step << Hunter
.goto Undercity,58.66,33.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_交谈。如果你是近战编织，从他那里买一把|r_。否则，跳过此步骤|r
.collect 2531,1,503,1 
.target Geoffrey Hartwell
.money <5.0552
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<31.2
step << Hunter
#completewith BracersofBinding
+当你达到39级时装备|T135424:0|t[大斧头]
.use 2531
.itemcount 2531,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<31.2
step << Rogue
.goto Undercity,58.66,33.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_交谈。从他那里购买|r|T135344:0|t[Falchion]|r
.collect 2528,1,503,1 
.money <4.6652
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
.target Geoffrey Hartwell
step << Rogue
.goto Undercity,58.66,33.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_交谈。从他那里购买|r|T135341:0|t[Rondel]|r
.collect 2534,1,503,1 
.money <4.0888
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<24.0
.target Geoffrey Hartwell
step << Rogue
#completewith BracersofBinding
+当你达到41级时装备|T135344:0|t[Falchion]
.use 2528
.itemcount 2528,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step << Rogue
#completewith BracersofBinding
+当你达到39级时，将|T135341:0|t[Rondel]装备在你的右手中
.use 2534
.itemcount 2534,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<24.0
step << Priest
.goto Undercity,69.54,26.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zane|r|cRXP_BUY_交谈。从他那里买一个|r|T133718:0|t[Blacbone Wand]|r
.collect 5239,1,503,1 
.money <4.0769
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<35.3
.target Zane Bradford
step << Priest
#completewith BracersofBinding
+当你达到41级时，装备|T135344:0|t[黑色魔杖]
.use 5239
.itemcount 5239,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<35.3
step << Warrior
.goto Undercity,77.48,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nathaniel|r|cRXP_BUY_向他购买两堆|r|T135424:0|t[闪光飞斧]|c|r
.collect 15326,2 
.target Nathaniel Steenwick
step << Warrior
#ah
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯托克顿|r
>>|cRXP_BUY_如果您在购买|r|T134717:0|t[自然保护药剂]|cRXP_BUY_后还有剩余的钱，请购买以下物品：|r
.collect 4480,8 
.collect 4479,8 
.collect 4481,8 
.collect 3357,8 
.target Auctioneer Stockton
step << Warrior
#ah
.goto Undercity,71.42,46.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯托克顿|r
.collect 6052,2 
.target Auctioneer Stockton
step
#ah
.goto Undercity,71.42,46.69
>>|cRXP_BUY_如果你有剩余的钱，请购买以下物品：|r
.collect 3829,1 
.collect 4389,1 
.collect 929,1 
.collect 3823,1 
.collect 2868,1 
.collect 4611,9 
.collect 3404,4 
step
.goto Undercity,62.32,48.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patrick|r
.accept 2342 >>接任务: |cRXP_LOOT_失而复得|r
.target Patrick Garrett
.group
step << Warrior
#completewith next
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
>>|cRXP_ENEMY_如果你在AH上购买了8个Cresting、Thundering和Burning符咒，请飞往Tarren Mill，跳过接下来的3个步骤|r
.fly Hammerfall >>飞到Hammerfall
.target Michael Garrett
.zoneskip Arathi Highlands
step << Warrior
#label Cresting
.goto Arathi Highlands,66.72,29.72
>>杀死|cRXP_ENEMY_Cresting Exiles|r。掠夺他们的|T133438:0|t[Cresting Charms]
.collect 4481,8 
.mob Cresting Exile
step << Warrior
.goto Arathi Highlands,52.06,50.60
>>杀死|cRXP_ENEMY_Thundering Exiles|r。掠夺他们的|T133435:0|t[Thundering Charms]
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Thundering Exiles|r|cRXP_WARN_拥有高爆发伤害|r
.collect 4480,8 
.mob Thundering Exile
step << Warrior
.goto Arathi Highlands,25.47,30.09
>>杀死|cRXP_ENEMY_Burning Exiles|r。掠夺他们的|T133434:0|t[燃烧的符咒]
.collect 4479,8 
.mob Burning Exile
step << Warrior
#completewith BracersofBinding
.goto Hillsbrad Foothills,62.06,20.19,120 >>Travel to Tarren Mill
step << !Warrior
#completewith BracersofBinding
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step << !Undead
#optional
.abandon 1049 >>堕落者简编
.isOnQuest 1049
.dungeon SM
step
#optional
.abandon 1048 >>弃入猩红寺
.isOnQuest 1048
.dungeon SM
step
#optional
.abandon 1113 >>Hearts of Zeal
.isOnQuest 1113
.dungeon SM
step
#optional
.abandon 6521 >>放弃邪恶联盟
.isOnQuest 6521
.dungeon RFD
step
#optional
.abandon 6626 >>Abandon A Host of Evil
.isOnQuest 6626
.dungeon RFD
step
#optional
.abandon 3341 >>Abandon Bring the End
.isOnQuest 3341
.dungeon RFD
step
#label BracersofBinding
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r, |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r
.accept 557 >>接任务: |cRXP_LOOT_地缚护腕|r
.goto Hillsbrad Foothills,61.60,20.86
.accept 545 >>接任务: |cRXP_LOOT_达拉然巡逻队|r
.goto Hillsbrad Foothills,61.49,20.93
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
step
.goto Hillsbrad Foothills,62.62,20.74
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_FRIENDLY_Melisara|r旁边的|cRXP_PICK_WANTED:Baron Vardus|r海报
.accept 566 >>接任务: |cRXP_LOOT_通缉：瓦杜斯男爵|r
.target Melisara
.group
step
.goto Hillsbrad Foothills,63.20,20.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.accept 503 >>接任务: |cRXP_LOOT_高迪尔|r
.target Krusk
step << Warrior
#completewith Whirlwind
+|cRXP_WARN_观看这段关于如何为|r|T132403:0|t[Whirlwind Axe]干酪Cyclonian的视频非常重要
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >>单击此处
step << Warrior
#ah
.goto Alterac Mountains,80.49,66.92
.use 6052 >>旅行时，使用[自然保护药剂]
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1714 >>交任务: |cRXP_FRIENDLY_流放精华|r
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1714 >>交任务: |cRXP_FRIENDLY_流放精华|r
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1712 >>交任务: |cRXP_FRIENDLY_塞克隆尼亚|r
.accept 1713 >>接任务: |cRXP_LOOT_召唤|r
.target Bath'rah the Windwatcher
step << Warrior
#label Whirlwind
.goto Alterac Mountains,80.6,62.2
>>等待|cRXP_FRIENDLY_Bath'rah的|r角色扮演，然后杀死|cRXP_LOOT_Cyclonian|r并掠夺他的|cRXP _LOOT_Heart|r
>>|cRXP_WARN_装备你的|r|T135424:0|t[闪光飞斧]|cRXP_WARN_if你还没有装备|r
.complete 1713,1 
.unitscan Cyclonian
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1713 >>交任务: |cRXP_FRIENDLY_召唤|r
.turnin 1792 >>交任务: |cRXP_FRIENDLY_旋风武器|r
.target Bath'rah the Windwatcher
step
.goto Hillsbrad Foothills,62.63,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅里萨拉|r
.accept 518 >>接任务: |cRXP_LOOT_意志之冠|r
.target Melisara
.group
step
.goto Alterac Mountains,63.20,43.90
>>杀死|cRXP_ENEMY_Jailor Borhuin|r。抢走他的|cRXX_Loot_Key|r
.complete 503,1 
.unitscan Jailor Borhuin
step
.goto Alterac Mountains,60.00,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高迪尔|r
.turnin 503 >>交任务: |cRXP_FRIENDLY_高迪尔|r
.accept 506 >>接任务: |cRXP_LOOT_布莱克摩尔的余孽|r
.target Gol'dir
step
.goto Alterac Mountains,42.7,46.6
>>杀死|cRXP_ENEMY_Crushridge Maulers|r
.complete 518,1 
.mob Crushridge Mauler
.group 3
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >>Return to Tarren Mill
.group
step
.goto Hillsbrad Foothills,62.6,20.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Melisara|r
.turnin 518 >>交任务: |cRXP_FRIENDLY_意志之冠|r
.accept 519 >>接任务: |cRXP_LOOT_意志之冠|r
.target Melisara
.group
step
.goto Alterac Mountains,39.49,41.82
>>杀死|cRXP_ENEMY_Glommus|r。掠夺他的|cRXX_Loot_Head|r
.complete 519,3 
.unitscan Glommus
.group 3
step
.goto Alterac Mountains,38.61,46.78
>>杀死|cRXP_ENEMY_Muckrake|r。掠夺他的|cRXX_Loot_Head|r
.complete 519,2 
.unitscan Muckrake
.group 3
step
.goto Alterac Mountains,39.59,52.86
>>杀死|cRXP_ENEMY_Targ|r。掠夺他的|cRXX_Loot_Head|r
.complete 519,1 
.unitscan Targ
.group 3
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >>Return to Tarren Mill
.group
step
.goto Hillsbrad Foothills,62.63,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅里萨拉|r
.turnin 519 >>交任务: |cRXP_FRIENDLY_意志之冠|r
.accept 520 >>接任务: |cRXP_LOOT_意志之冠|r
.target Melisara
.group
step
.goto Alterac Mountains,35.68,54.25
>>杀死|cRXP_ENEMY_Mug'thol|r。掠夺他的|cRXP_Loot_Head|r和|cRXP-Loot_Hill王冠|r
>>|cRXP_WARN_非常小心|r|cRXP_ENEMY_Crushridge Warmongers|r|cRXP_WARN_，他们在低生命值时寻求帮助|r
.complete 520,1 
.complete 520,2 
.mob Crushridge Warmonger
.unitscan Mug'thol
.group 3
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >>Return to Tarren Mill
step
#completewith next
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step
.goto Hillsbrad Foothills,63.20,20.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.turnin 506 >>交任务: |cRXP_FRIENDLY_布莱克摩尔的余孽|r
.target Krusk
step
.goto Hillsbrad Foothills,63.20,20.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.accept 507 >>接任务: |cRXP_LOOT_奥里登·匹瑞诺德|r
.target Krusk
.group
step
#completewith next
.goto Alterac Mountains,42.2,77.8,90,0
.goto Alterac Mountains,46.2,78.2,90,0
>>杀死|cRXP_ENEMY_Mountain Lions |r。掠夺它们一个|T134368:0|t[新鲜尸体]
>>|T134368:0|t[新鲜胴体]|cRXP_WARN_divears 30分钟后|r
.collect 5810,1 
.mob Feral Mountain Lion
.mob Mountain Lion
.mob Starving Mountain Lion
.mob Hulking Mountain Lion
step
.goto Alterac Mountains,37.56,68.22
.use 5810 >>使用无主洞穴内的|T134368:0|t[新鲜尸体]召唤|cRXP_ENEMY_Frostmaw|r。杀死他并掠夺他的|cRXX_loot_Mane|r

.complete 1136,1 
.unitscan Frostmaw

step
.loop 25,Alterac Mountains,10.3,78.5,20.5,75.2,21.3,53.5,17.8,56.2,21.3,53.5,20.5,75.2,10.3,78.5
>>杀死|cRXP_ENEMY_Dalaran召唤师|r和|cRXP_ENEMY_Elemental Slaves |r。掠夺他们的|cRXD_Loot_Bracers|r
.complete 545,1 
.complete 545,2 
.complete 557,1 
.mob Dalaran Summoner
.mob Elemental Slave
step
#ah
#completewith next
.use 10592 >>使用|T134816:0|t[Catseye Elixir]接近Aliden Perenolde领主的家园
step
.goto Alterac Mountains,39.28,14.52
>>杀死|cRXP_ENEMY_Lord Aliden Perenolde|r
>>|cRXP_WARN_请注意|cRXP_ENEMY_Syndicate Assassins|r|cRXP-WARN_|r|cRXP_ENEMY_Aliden|r|cRXP_WARN_uses Power Word:Shield，施放Renew，并将睡眠宠物和其他玩家|r
.complete 507,1 
.unitscan Lord Aliden Perenolde
.mob Syndicate Assassin
.group 2
step
.goto Alterac Mountains,39.30,14.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾丽萨|r
.turnin 507 >>交任务: |cRXP_FRIENDLY_奥里登·匹瑞诺德|r
.accept 508 >>接任务: |cRXP_LOOT_塔蕾莎的礼物|r
.target Elysa
.group
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>>在每个营地和Strahnbrad的客栈中搜索|cRXP_ENEMY_Baron Vardus|r。杀死他并掠夺他的|cRXP_loot_Head|r
.complete 566,1 
.unitscan Baron Vardus
.group 2
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >>Return to Tarren Mill
step
.goto Alterac Mountains,61.10,82.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 566 >>交任务: |cRXP_FRIENDLY_通缉：瓦杜斯男爵|r
.target High Executor Darthalia
.group
step
.goto Hillsbrad Foothills,63.20,20.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.turnin 508 >>交任务: |cRXP_FRIENDLY_塔蕾莎的礼物|r
.target Krusk
.group
step
.goto Hillsbrad Foothills,62.63,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅里萨拉|r
.turnin 520 >>交任务: |cRXP_FRIENDLY_意志之冠|r
.target Melisara
.group
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r, |cRXP_FRIENDLY_看守者贝瓦里尔|r
.turnin 545 >>交任务: |cRXP_FRIENDLY_达拉然巡逻队|r
.goto Hillsbrad Foothills,61.56,20.89
.turnin 557 >>交任务: |cRXP_FRIENDLY_地缚护腕|r
.goto Hillsbrad Foothills,61.49,20.93
.target Magus Wordeen Voidglare
.target Keeper Bel'varil
step
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly Hammerfall >>飞到Hammerfall
.target Zarise
.zoneskip Arathi Highlands
step
#optional
.abandon 566 >>放弃通缉：瓦杜斯男爵
.isOnQuest 566
step
#optional
.abandon 518 >>放弃意志之冠
.isOnQuest 518
step
#optional
.abandon 519 >>放弃意志之冠
.isOnQuest 519
step
#optional
.abandon 520 >>放弃意志之冠
.isOnQuest 520
step
#optional
.abandon 507 >>放弃阿利登·佩雷诺尔德勋爵
.isOnQuest 507
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森古|r
.turnin 638 >>交任务: |cRXP_FRIENDLY_巨魔之敌|r
.accept 639 >>接任务: |cRXP_LOOT_激流堡符印|r
.target Zengu
.group
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森古|r
.turnin 638 >>交任务: |cRXP_FRIENDLY_巨魔之敌|r
.target Zengu
step
.goto Arathi Highlands,74.30,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.accept 678 >>接任务: |cRXP_LOOT_短兵相接|r
.target Drum Fel
step
.goto Arathi Highlands,72.70,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈穆尔|r
.accept 675 >>接任务: |cRXP_LOOT_振奋精神|r
.target Gor'mul
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 675 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.accept 701 >>接任务: |cRXP_LOOT_迅猛龙的狡诈|r
.target Tor'gan
step
.goto Arathi Highlands,62.50,33.80
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击Myzrael的|cRXP_PICK_Shard|r
.accept 642 >>接任务: |cRXP_LOOT_被困的公主|r
step
.goto Arathi Highlands,80.80,39.91,20,0
.goto Arathi Highlands,82.25,38.94,20,0
.goto Arathi Highlands,82.39,36.78,20,0
.goto Arathi Highlands,83.56,35.02,20,0
.goto Arathi Highlands,84.87,31.67,20,0
.goto Arathi Highlands,87.10,31.31,20,0
.goto Arathi Highlands,84.73,28.99,20,0
.goto Arathi Highlands,84.32,30.93
>>杀死|cRXP_ENEMY_Dryb须Kobolds|r、|cRXX_ENEMY_Diggers|r和|cRXD_ENEMY_Surveyors|r。掠夺他们的|cRXP_Loot_Motes of Myzrael|r
.complete 642,1 
.mob Drywhisker Kobold
.mob Drywhisker Digger
.mob Drywhisker Surveyor
step
.goto Arathi Highlands,84.30,30.95
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击洞穴后面的|cRXP_PICK_Iridescent碎片|r
.turnin 642 >>交任务: |cRXP_FRIENDLY_被困的公主|r
.accept 651 >>接任务: |cRXP_LOOT_禁锢之石|r
step
.goto Arathi Highlands,83.93,28.49
.goto Arathi Highlands,73.66,29.11,30 >>|cRXP_WARN_跳到一个节点上或跑到洞穴的后面。通过注销并重新登录来执行注销跳过。您必须在注销时进行跳过|r
.link https://www.youtube.com/watch?v=RSedlGeYX_k&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
step
.goto Arathi Highlands,66.70,29.80
>>|TInterface/GossipFrame/HealerGossipIcon:0|t为|cRXP_Loot_Cresting密钥|r掠夺|cRX_PICK_Stone of East Binding|r
>>杀死|cRXP_ENEMY_Cresting Exiles|r。掠夺他们一个|T134714:0|t[元素水] << Shaman
>>|cRXP_ENEMY_羽冠流放者|r|cRXP_WARN_have Frost Armor and Frost Nova|r
.complete 651,2 
.collect 7070,1 << Shaman 
.mob Cresting Exile
step
.goto Arathi Highlands,52.00,50.80
>>|TInterface/GossipFrame/HealerGossipIcon:0|t为|cRXP_Loot_Thundering Key|r掠夺|cRXP_PICK_Stone of Outer Binding|r
>>杀死|cRXP_ENEMY_Thundering Exiles|r。掠夺他们一个|T136107:0|t[元素空气] << Shaman
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Thundering Exiles|r|cRXP_WARN_拥有强大的爆发伤害|r
.complete 651,3 
.collect 7069,1 << Shaman 
.mob Thundering Exile
step
.goto Arathi Highlands,25.50,30.10
>>|TInterface/GossipFrame/HealerGossipIcon:0|t为|cRXP_Loot_Burning Key|r掠夺|cRX_PICK_西装革履之石|r
>>杀死|cRXP_ENEMY_Burning Exiles|r。掠夺他们以获得|T135805:0|t[元素之火] << Shaman
>>|cRXP_WARN_如果你发现自己处于危险之中，请使用|r|T133438:0|t[冠符]|cRXP_WARN_on|r|cRXP-ENEMY_Burning Exiles|r
.complete 651,1 
.collect 7068,1 << Shaman 
.mob Burning Exile
step
.goto Arathi Highlands,36.20,57.30
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_内缚之石|r
.turnin 651 >>交任务: |cRXP_FRIENDLY_禁锢之石|r
step << Shaman
.goto Arathi Highlands,36.20,57.30
>>杀死|cRXP_ENEMY_Rumbling Exiles|r。掠夺他们一个|T134572:0|t[元素地球]
>>你以后需要这些来完成50级萨满任务。当你稍后到达奥格里玛时，把它们存起来
.collect 7067,1 
.mob Rumbling Exile
step
.goto Arathi Highlands,36.20,57.30
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_内缚之石|r again
.accept 652 >>接任务: |cRXP_LOOT_打开钥匙之石|r
.group
step
#completewith next
>>杀死|cRXP_ENEMY_Highland Fleshstalkers|r。掠夺他们的|cRXX_Loot_Hearts|r
.complete 701,1 
.mob Highland Fleshstalker
step
.goto Arathi Highlands,52.06,74.38,50,0
.goto Arathi Highlands,53.81,74.59,50,0
.goto Arathi Highlands,53.58,76.20,50,0
.goto Arathi Highlands,54.52,78.00,15,0
.goto Arathi Highlands,53.68,79.95,20,0
.goto Arathi Highlands,53.81,74.59
>>杀死|cRXP_ENEMY_Boulderfirs Brutes|r和|cRXP_ENEMY_Boldfirs Magi|r
>>|cRXP_WARN_小心魔法师的霜甲和霜新星|r
>>|cFFEB144CBe**极其小心**稀有的“破碎机翻浆”，这是一种非精英，命中率为250-450|r
.complete 678,1 
.complete 678,2 
.mob Boulderfist Brute
.mob Boulderfist Magus
.unitscan Molok the Crusher
step
.goto Arathi Highlands,52.77,63.56,70,0
.goto Arathi Highlands,50.22,65.00,70,0
.goto Arathi Highlands,49.71,68.69,70,0
.goto Arathi Highlands,48.07,74.25,70,0
.goto Arathi Highlands,46.21,76.74,70,0
.goto Arathi Highlands,46.04,79.55,70,0
.goto Arathi Highlands,48.59,80.56,70,0
.goto Arathi Highlands,49.71,68.69
>>杀死|cRXP_ENEMY_Highland Fleshstalkers|r。掠夺他们的|cRXX_Loot_Hearts|r
.complete 701,1 
.mob Highland Fleshstalker
step
.goto Arathi Highlands,27.3,62.8
>>杀死|cRXP_ENEMY_Syndicate Prowlers |r、|cRXD_ENEMY_Congurors|r和|cRXP_ENEMY_Magi|r。掠夺它们以获取Strom|r的|cRXT_Loot_Sgil
>>|cRXP_WARN_它的下降率非常低。小心重生。小心|r|cRXP_ENEMY_Syndicate Prowlers |r|cRXP_WARN_，他们可以联网并解除武装|r
.complete 639,1 
.mob Syndicate Prowler
.mob Syndicate Conjuror
.mob Syndicate Magus
.group 3
step
.loop 25,Arathi Highlands,67.3,31.1,61.8,43.0,47.4,56.8,30.5,54.6,21.1,36.5,26.4,30.3,26.0,45.4,30.5,54.6,47.4,56.8,61.8,43.0,67.3,31.1
>>杀死|cRXP_ENEMY_Fozruk |r。掠夺他的|cRXX_Loot_Rod |r
.link https://www.twitch.tv/videos/669107037?t=05h51m54s >>|TInterface/GossipFrame/HealerGossipIcon:0|t点击此处查看视频参考. You'll want to focus |cRXP_ENEMY_Sleeby|r first
>>如果您无法分组，请考虑跳过此步骤 << !Warlock
.complete 652,1 
.unitscan Fozruk
.unitscan Znort
.unitscan Feeboz
.unitscan Sleeby
.group 3
step
#completewith next
.goto Arathi Highlands,73.52,33.20,150 >>Return to Hammerfall
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 701 >>交任务: |cRXP_FRIENDLY_迅猛龙的狡诈|r
.accept 702 >>接任务: |cRXP_LOOT_迅猛龙的狡诈|r
.accept 673 >>接任务: |cRXP_LOOT_邪恶的魔法|r
.target Tor'gan
.group
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 701 >>交任务: |cRXP_FRIENDLY_迅猛龙的狡诈|r
.accept 702 >>接任务: |cRXP_LOOT_迅猛龙的狡诈|r
.target Tor'gan
step
.goto Arathi Highlands,72.70,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈穆尔|r
.turnin 702 >>交任务: |cRXP_FRIENDLY_迅猛龙的狡诈|r
.target Gor'mul
step
.goto Arathi Highlands,74.00,33.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林法尔|r
.accept 680 >>接任务: |cRXP_LOOT_真正的威胁|r
.target Korin Fel
.group
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森古|r
.turnin 639 >>交任务: |cRXP_FRIENDLY_激流堡符印|r
.accept 640 >>接任务: |cRXP_LOOT_破碎的符印|r
.target Zengu
.group
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 678 >>交任务: |cRXP_FRIENDLY_短兵相接|r
.accept 679 >>接任务: |cRXP_LOOT_短兵相接|r
.target Drum Fel
.group
step
.goto Arathi Highlands,74.20,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 678 >>交任务: |cRXP_FRIENDLY_短兵相接|r
.target Drum Fel
step
.goto Arathi Highlands,72.80,34.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈穆尔|r
.accept 847 >>接任务: |cRXP_LOOT_迅猛龙的狡诈|r
.target Gor'mul
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 847 >>交任务: |cRXP_FRIENDLY_迅猛龙的狡诈|r
.target Tor'gan
step
.goto Arathi Highlands,36.20,57.30
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Keystone |r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Rumbling Exiles'|r|cRXP_WARN_。他们的眩晕没有递减的回报|r
>>|cRXP_WARN_在完成这项任务后，一个精英暴民将产生，准备逃跑|r
.turnin 652 >>交任务: |cRXP_FRIENDLY_打开钥匙之石|r
.accept 688 >>接任务: |cRXP_LOOT_密斯莱尔的盟友|r
.group
step
#completewith next
>>杀死|cRXP_ENEMY_Boulderfist萨满|r和|cRXP_ENEMY_ Boulderfish领主|r
.complete 679,1 
.complete 679,2 
.mob Boulderfist Shaman
.mob Boulderfist Lord
.group 3
step
.goto Arathi Highlands,18.74,66.30,30,0
.goto Arathi Highlands,19.6,66.9
>>杀死|cRXP_ENEMY_Or'Kalar|r。掠夺他的|cRXP_Loot_Head|r
>>|cRXP_ENEMY_Or'Kalar|r|cRXP_WARN_can在Arathor基地塔周围的两个区域产卵|r
.complete 680,1 
.unitscan Or'Kalar
.group 3
step
.loop 25,Arathi Highlands,18.91,65.80,20.05,65.43,20.50,66.72,21.49,67.03,21.84,65.41,23.64,65.69,22.25,67.74,20.89,69.19,19.51,69.14,18.26,67.42,18.91,65.80
>>杀死|cRXP_ENEMY_Boulderfist萨满|r和|cRXP_ENEMY_ Boulderfish领主|r
.complete 679,1 
.complete 679,2 
.mob Boulderfist Shaman
.mob Boulderfist Lord
.group 3
step
#completewith next
>>杀死|cRXP_ENEMY_Stromgarde士兵|r。掠夺他们的|cRXX_Loot_Sgil碎片|r
>>|cRXP_ENEMY_风暴守卫者|r|cRXP_WARN_have盾牌猛击|r
.complete 640,1 
.mob Stromgarde Troll Hunter
.mob Stromgarde Defender
.mob Stromgarde Vindicator
.group 3
step
.goto Arathi Highlands,29.45,64.39,30,0
.goto Arathi Highlands,29.63,62.95
>>杀死|cRXP_ENEMY_Marez Cowl|r。为她掠夺她|cRXX_Loot_Orb|r
>>|cRXP_WARN_她在养殖场的东侧有两个产卵点|r
.complete 673,1 
.unitscan Marez Cowl
.group 3
step
.loop 25,Arathi Highlands,23.73,60.75,23.25,63.09,22.03,63.07,21.21,63.22,21.19,60.65,22.49,59.37,22.83,58.02,23.82,57.13,24.92,57.18,27.50,57.62,27.37,58.92,24.36,58.87,23.49,59.57,23.73,60.75
>>杀死|cRXP_ENEMY_Stromgarde士兵|r。掠夺他们的|cRXX_Loot_Sgil碎片|r
>>|cRXP_ENEMY_风暴守卫者|r|cRXP_WARN_have盾牌猛击|r
.complete 640,1 
.mob Stromgarde Troll Hunter
.mob Stromgarde Defender
.mob Stromgarde Vindicator
.group 3
step
.goto Arathi Highlands,29.59,59.54
.goto Arathi Highlands,73.66,29.11,30 >>|cRXP_WARN_进入地下室，跳到火标上。通过注销并重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=ppLRbuzEKGc&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
.group
step
#completewith next
.goto Arathi Highlands,73.52,33.20,150 >>Return to Hammerfall
.group
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 673 >>交任务: |cRXP_FRIENDLY_邪恶的魔法|r
.turnin 640 >>交任务: |cRXP_FRIENDLY_破碎的符印|r
.accept 641 >>接任务: |cRXP_WARN_索拉丁符印|r
.target Tor'gan
.group
step
.goto Arathi Highlands,74.00,33.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林法尔|r
.turnin 680 >>交任务: |cRXP_FRIENDLY_真正的威胁|r
.target Korin Fel
.group
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森古|r
.turnin 641 >>交任务: |cRXP_FRIENDLY_索拉丁符印|r
.accept 643 >>接任务: |cRXP_WARN_阿拉索符印|r
.target Zengu
.group
step
.goto Arathi Highlands,74.25,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 679 >>交任务: |cRXP_FRIENDLY_短兵相接|r
.target Drum Fel
.group
step
.goto Arathi Highlands,73.84,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃德瓦|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Adegwa
step
.goto Arathi Highlands,73.41,36.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里高利·维克托医生|r
.accept 6622 >>接任务: |cRXP_WARN_救死扶伤|r
.target Doctor Gregory Victor
.skill firstaid,<225,1
step
.goto Arathi Highlands,73.03,36.84
.use 16991 >>|cRXP_WARN_引导|r|T133682:0|t[分诊绷带]|cRXP_WARN_on the |cRXP_FRIENDLY_Horde Soldiers|r优先考虑|cRXT_FRIENDLY_重伤士兵|r|r
.complete 6622,1 
.target Critically Injured Horde Soldier
.target Badly Injured Horde Soldier
.target Injured Horde Soldier
.isOnQuest 6622
step
.goto Arathi Highlands,73.41,36.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里高利·维克托医生|r
.turnin 6622 >>交任务: |cRXP_FRIENDLY_救死扶伤|r
.target Doctor Gregory Victor
.isQuestComplete 6622
step
.destroy 16991 >>摧毁: |cRXP_ENEMY_急救绷带|r
.isQuestTurnedIn 6622
step
.goto Arathi Highlands,74.40,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨鲁克|r
.turnin 688 >>交任务: |cRXP_FRIENDLY_密斯莱尔的盟友|r
.accept 687 >>接任务: |cRXP_LOOT_迷失者塞尔杜林|r
.target Zaruk
.isQuestTurnedIn 652
.group
step
.goto Arathi Highlands,53.8,40.8,60,0
.goto Arathi Highlands,49.5,44.0,60,0
.goto Arathi Highlands,43.2,55.1,60,0
.goto Arathi Highlands,34.7,52.2,60,0
.goto Arathi Highlands,27.2,49.8,60,0
.goto Arathi Highlands,66.0,55.6,60,0
.goto Arathi Highlands,24.2,60.3,60,0
.goto Arathi Highlands,27.4,58.2
>>杀死|cRXP_ENEMYT_Lieutent Valorcall|r和他的两个|cRXD_ENEMY_Stromgarde骑兵|r。抢走中尉的|cRXX_Loot_Sgil|r
>>|cRXP_WARN_瓦洛卡尔中尉治疗并使用神盾。他的骑兵有很高的伤害|r
.complete 643,1 
.unitscan Lieutenant Valorcall
.mob Stromgarde Cavalryman
.group 3
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森古|r
.turnin 643 >>交任务: |cRXP_FRIENDLY_阿拉索符印|r
.accept 644 >>接任务: |cRXP_WARN_托尔贝恩符印|r
.target Zengu
.group
step
.goto Arathi Highlands,28.5,58.1
>>杀死|cRXP_ENEMY_盖伦·特洛尔班恩王子|r。掠夺他的|cRXX_Loot_Sgil|r
.complete 644,1 
.unitscan Prince Galen Trollbane
.group 3
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森古|r
.turnin 644 >>交任务: |cRXP_FRIENDLY_托尔贝恩符印|r
.accept 645 >>接任务: |cRXP_WARN_托卡拉尔|r
.target Zengu
.group
step
.goto Arathi Highlands,28.9,59.6
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick |cRXP_PICK_Trollbane's Tomb|r
.turnin 645 >>交任务: |cRXP_FRIENDLY_托卡拉尔|r
.accept 646 >>接任务: |cRXP_WARN_托卡拉尔|r
.group 3
step
#completewith next
.goto Arathi Highlands,21.6,75.6,30,0
.goto Arathi Highlands,22.1,79.9,25 >>穿过洞穴到法尔迪尔湾
step
.goto Arathi Highlands,31.83,82.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo|r
.accept 663 >>接任务: |cRXP_LOOT_法迪尔海湾|r
.target Lolo the Lookout
step
.goto Arathi Highlands,32.28,81.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 663 >>交任务: |cRXP_FRIENDLY_法迪尔海湾|r
.target Shakes O'Breen
step
.goto Arathi Highlands,32.78,81.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副尼兹利克斯|r
.accept 662 >>接任务: |cRXP_LOOT_深海打捞|r
.target First Mate Nilzlix
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯迪加特船长|r, |cRXP_FRIENDLY_菲兹索普教授|r
.accept 664 >>接任务: |cRXP_LOOT_船长的复仇|r
.goto Arathi Highlands,34.00,80.79
.accept 665 >>接任务: |cRXP_LOOT_水下宝藏|r
.goto Arathi Highlands,33.87,80.55
.target Captain Steelgut
.target Professor Phizzlethorpe
step
.goto Arathi Highlands,35.7,79.7
>>等待|cRXP_FRIENDLY_Phizzlethorpe的|r角色扮演，然后杀死产生的两个|cRXP_ENEMY_Vengeful Surger|r。
>>|cRXP_WARN_这些暴徒是40级。尽快将它们从||cRXP_FRIENDLY_Phizzlethorpe|r|cRXP-WARN_a中删除|r
.complete 665,1 
.unitscan Vengeful Surge
step
.goto Arathi Highlands,33.8,80.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉克里格博士|r
.turnin 665 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 666 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Doctor Draxlegauge
step << !Druid !Warlock !Shaman
#ah
#completewith SLog
.use 5996 >>饮水息灵药
.itemcount 5996,1
step
#sticky
#completewith Daggerspines
+|cRXP_ENEMY_Daggerspine Raiders|r|cRXP_WARN_拥有净能，所以如果你没有使用过|r|T134797:0|t[水息灵药]，请非常小心你的呼吸 << !Druid !Warlock !Shaman
+|cRXP_ENEMY_匕首刺突袭者|r|cRXP_WARN_有净能，所以一定要保持水呼吸|r << Warlock/Shaman
+|cRXP_WARN_当你的呼吸变低时，使用水生形态|r << Druid
step
#completewith ElvenGems
>>杀死|cRXP_ENEMY_Daggerspine Raiders|r和|cRXX_ENEMY_Sorcerees|r
.complete 664,1 
.complete 664,2 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
#completewith SLog
.use 4491 >>|TInterface/GossipFrame/HealerGossipIcon:0|t装备|T133149:0|t[宝石狩猎护目镜]。查找|cRXP_PICK_煅烧精灵宝石|r。掠夺它们以获取|cRXP_Loot_精灵宝石|r
.complete 666,1 
step
.goto Arathi Highlands,23.40,85.09
>>|TInterface/GossipFrame/HealerGossipIcon:0|t为|cRXP_OOT_Maiden的愚蠢日志|r掠夺|cRXP_PICK_Book|r
>>|cRXP_WARN_原木在船的中层，朝向船的前部|r
.complete 662,2 
step
.goto Arathi Highlands,23.04,84.51
>>|TInterface/GossipFrame/HealerGossipIcon:0|t为|cRXP_OOT_Maiden的愚蠢图表|r掠夺|cRX_PICK_Uncurled Parchment|r
>>|cRXP_WARN_海图在船的中层，朝向船的中心|r
.complete 662,1 
step
.goto Arathi Highlands,20.46,85.61
>>|TInterface/GossipFrame/HealerGossipIcon:0|t为|cRXP_Loot_Srit of Silverpine Charts|r掠夺|cRX_PICK_Uncurled Parchment|r
>>|cRXP_WARN_海图在船的中层，朝向前方，放在大炮旁边的板条箱上|r
.complete 662,3 
step
#label SLog
.goto Arathi Highlands,20.65,85.10
>>|TInterface/GossipFrame/HealerGossipIcon:0|t为|cRXP_Loot_银松原木之精灵|r掠夺|cRX_PICK_Book|r
>>|cRXP_WARN_原木位于船的最底层，朝向前方，躺在泥土中|r
.complete 662,4 
step
#label ElvenGems
.loop 25,Arathi Highlands,19.3,84.1,17.7,89.5,25.5,90.8,24.1,85.7,23.2,89.7,19.3,84.1,17.7,89.5,25.5,90.8,24.1,85.7,23.2,89.7,19.3,84.1
.use 4491 >>|TInterface/GossipFrame/HealerGossipIcon:0|t装备|T133149:0|t[宝石狩猎护目镜]。查找|cRXP_PICK_煅烧精灵宝石|r。掠夺它们以获取|cRXP_Loot_精灵宝石|r
.complete 666,1 
step
#label Daggerspines
.loop 25,Arathi Highlands,21.05,84.62,23.44,84.76,25.38,86.03,23.14,89.88,21.55,86.67,18.75,85.31,19.76,84.00,21.05,84.62
>>完成击杀|cRXP_ENEMY_Daggerspine Raiders|r和|cRXX_ENEMY_Sorcerees|r
.complete 664,1 
.complete 664,2 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
#completewith next
+|cRXP_WARN_重新装备你平时的头盔，然后手动跳过这一步。|r
step
#requires ElvenGems
.goto Arathi Highlands,32.77,81.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副尼兹利克斯|r
.turnin 662 >>交任务: |cRXP_FRIENDLY_深海打捞|r
.target First Mate Nilzlix
step
.goto Arathi Highlands,33.86,80.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draxlegauge|r
.turnin 666 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 668 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Doctor Draxlegauge
step
.goto Arathi Highlands,34.00,80.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯迪加特船长|r
.turnin 664 >>交任务: |cRXP_FRIENDLY_船长的复仇|r
.target Captain Steelgut
step
.goto Arathi Highlands,32.28,81.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 668 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 669 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Shakes O'Breen
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 41-42 Badlands
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 40-50
#next 42-43 Stranglethorn Vale
step
#completewith WetlandsLogoutSkip
.goto Wetlands,32.78,13.12
.zone Wetlands >>前往: |cRXP_PICK_湿地|r
step
#optional
.abandon 639 >>Abandon Sigil of Strom
.isOnQuest 639
step
#optional
.abandon 652 >>放弃打破基石
.isOnQuest 652
step
#optional
.abandon 673 >>Abandon Foul Magics
.isOnQuest 673
step
#optional
.abandon 680 >>放弃真正的威胁
.isOnQuest 680
step
#optional
.abandon 640 >>放弃破碎的印记
.isOnQuest 640
step
#optional
.abandon 679 >>放弃武器召唤
.isOnQuest 679
step
#optional
.abandon 643 >>放弃阿拉托尔的叹息
.isOnQuest 643
step
#label WetlandsLogoutSkip
.goto Wetlands,53.86,46.42,150,0
.goto Wetlands,63.9,78.6
.zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
.link https://www.youtube.com/watch?v=21CuGto26Mk >>点击此处获取视频教程
>>|cRXP_WARN_在Thelsamar登录后，向西南方向跑到路的另一边躲避警卫。登录时要非常小心不要向前移动，因为这可能会攻击30-40级的后卫。|r
.unitscan Mountaineer Stenn
.unitscan Mountaineer Kamdar
step
#completewith next
.goto Loch Modan,25.34,67.27,0
.goto Loch Modan,24.76,70.59,30,0
.goto Loch Modan,25.10,72.98,30,0
.goto Loch Modan,26.11,75.42,30,0
.goto Loch Modan,23.27,81.30,30,0
.goto Loch Modan,22.82,84.81,30,0
.goto Loch Modan,19.59,87.23,30,0
.goto Loch Modan,20.37,91.08,30,0
.goto Loch Modan,22.33,91.55,30,0
.goto Loch Modan,22.87,94.92,30,0
.goto Badlands,5.73,29.78,0
>>使用快捷方式更快地到达荒地
.zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
.link https://www.youtube.com/watch?v=oNFXup-DCM0 >>点击此处获取视频教程
step
.goto Badlands,3.99,44.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里克|r
.fp Kargath >>获取Kargath飞行路线
.target Gorrik
step
.goto Badlands,2.90,47.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯兰达|r
.vendor >>|cRXP_BUY_出售你的垃圾并在必要时进行维修|r
.target Sranda
step
.goto Badlands,2.91,45.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高恩|r
.accept 782 >>接任务: |cRXP_LOOT_破碎的联盟|r
.target Gorn
.group
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加卡尔|r
.accept 2258 >>接任务: |cRXP_LOOT_荒芜之地的材料|r
.target Jarkal Mossmeld
step
.goto Badlands,6.4,47.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼卡·血痕|r
.accept 1419 >>接任务: |cRXP_LOOT_捕猎山狗|r
.target Neeka Bloodscar
step
#ah
.goto Badlands,25.95,44.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 713 >>接任务: |cRXP_WARN_至关重要的冷却剂|r
.turnin 713 >>交任务: |cRXP_FRIENDLY_至关重要的冷却剂|r
.target Lotwil Veriatus
.itemcount 3829,1 
step
#ah
.goto Badlands,25.95,44.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 714 >>接任务: |cRXP_WARN_发条式什么什么仪|r
.turnin 714 >>交任务: |cRXP_FRIENDLY_发条式什么什么仪|r
.target Lotwil Veriatus
.itemcount 4389,1 
.isQuestTurnedIn 713
step
.goto Badlands,25.95,44.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 710 >>接任务: |cRXP_LOOT_研究石元素|r
.target Lotwil Veriatus
step
#completewith badlandsall
>>在探索时，杀死你遇到的任何|cRXP_ENEMY_Buzzards|r和|cRXX_ENEMY_Coyotes|r。掠夺它们的|cRXP_Loot_Fwing|r、|cRXP_Loot_Fizzards|r、| cRXP_OOT_Jawbones|r和|cRXP-Loot_Fangs|r
>>|cRXP_WARN_不要专注于此。你可以稍后完成|r
.complete 703,1 
.complete 2258,1 
.complete 1419,1 
.complete 2258,2 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.loop 25,Badlands,23.41,45.26,21.90,43.22,19.99,43.10,17.76,41.06,16.62,38.29,14.78,37.34,13.48,37.80,13.01,40.09,15.11,41.89,16.94,42.80,19.17,45.74,20.47,48.40,23.12,48.20,23.41,45.26
>>杀死|cRXP_ENEMY_地球元素|r。掠夺它们的|cRXD_Loot_石头碎片|r和|cRXX_Loot_元素碎片|r
.complete 710,1 
.complete 2258,3 
.mob Lesser Rock Elemental
.mob Rock Elemental
.mob Enraged Rock Elemental
.mob Greater Rock Elemental
step
#label badlandsall
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 710 >>交任务: |cRXP_FRIENDLY_研究石元素|r
.accept 711 >>接任务: |cRXP_LOOT_研究石元素|r
.target Lotwil Veriatus
step
#completewith next
>>杀死|cRXP_ENEMY_Coyotes|r。掠夺它们的|cRXD_Loot_Jawbones|r和|cRXT_Loot_Fans|r
.complete 1419,1 
.complete 2258,2 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.loop 25,Badlands,17.24,58.53,15.35,58.51,14.85,60.16,15.00,61.98,16.15,61.84,17.01,61.24,17.24,58.53
>>杀死|cRXP_ENEMY_Buzzards|r。掠夺它们的|cRXX_Loot_Fwing|r
.complete 703,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
#completewith badlands3
>>杀死|cRXP_ENEMY_Coyotes|r和|cRXP_ENEMY_Buzzards|r。掠夺它们的|cRXP_Loot_Jawbones|r、|cRXD_Loot_Fans|r和| cRXP_Loot_Gizzards|r
>>|cRXP_WARN_优先排序|r|cRXP_ENEMY_Coyotes|r|cRXP_WARN_over|r| cRXP__ENEMY_Buzzards|r
.complete 1419,1 
.complete 2258,2 
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.goto Badlands,42.47,52.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹里克|r
.vendor >>|cRXP_BUY_出售你的垃圾并在必要时进行维修|r
.target Jazzrik
step
#ah
.goto Badlands,42.39,52.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r
.accept 705 >>接任务: |cRXP_LOOT_潜水采珍珠|r
.turnin 705 >>交任务: |cRXP_FRIENDLY_潜水采珍珠|r
.target Rigglefuzz
.itemcount 4611,9 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r, Martek
.accept 703 >>接任务: |cRXP_LOOT_烧烤秃鹰翅膀|r
.turnin 703 >>交任务: |cRXP_FRIENDLY_烧烤秃鹰翅膀|r
.goto Badlands,42.39,52.92
.turnin 1106 >>交任务: |cRXP_FRIENDLY_流放者马特克|r
.accept 1108 >>接任务: |cRXP_LOOT_精铁碎片|r
.goto Badlands,42.21,52.70
.target Rigglefuzz
.target Martek the Exiled
step
#sticky
#label signofearthBL
>>找到并杀死|cRXP_ENEMY_Boss Tho'grun|r。掠夺他获得|cRXX_Loot_地球符号|r
>>|cRXP_LOOT_老板Tho'grun|r|cRXP_WARN_在五名警卫的陪同下控制区域。|r
.complete 782,1 
.unitscan Boss Tho'grun
.mob Dustbelcher Mystic
.mob Dustbelcher Wyrmhunter
.mob Dustbelcher Shaman
.mob Dustbelcher Mauler
.isOnQuest 782
.group 3
step
.loop 25,Badlands,36.2,75.1,46.0,78.4,42.8,87.2,36.2,75.1
>>杀死|cRXP_ENEMY_岩石元素|r。掠夺它们的|cRXX_Loot_石板|r
>>|cRXP_ENEMY_岩石元素|r|cRXP_WARN_在这个南部地区很丰富，但之前元素探索的北部地区也有一些|r
.complete 711,1 
.mob Rock Elemental
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 687 >>交任务: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 709 >>接任务: |cRXP_LOOT_化解灾难|r
.target Theldurin the Lost
.isOnQuest 687
.group
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 709 >>接任务: |cRXP_LOOT_化解灾难|r
.target Theldurin the Lost
.group
step
.loop 25,Badlands,47.16,69.82,48.38,72.06,49.86,72.12,51.20,71.93,52.41,69.96,52.55,67.79,52.46,65.90,51.00,63.86,49.66,63.97,49.69,66.39,49.78,68.28,48.14,68.30,47.16,69.82
>>杀死|cRXP_ENEMY_Stonevault Troggs|r。掠夺他们的|cRXX_Loot_Indurium薄片|r
.complete 1108,1 
.mob Stonevault Bonesnapper
.mob Stonevault Shaman
step
#label badlands3
.goto Badlands,42.21,52.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek|r
.turnin 1108 >>交任务: |cRXP_FRIENDLY_精铁碎片|r
.timer 15,Indurium RP
.accept 1137 >>接任务: |cRXP_LOOT_回复菲兹尔|r
.target Martek the Exiled
step
#completewith next
>>杀死|cRXP_ENEMY_Buzzards|r。掠夺他们的|cRXX_Loot_Gizzards|r
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
.goto Badlands,44.11,71.87,90,0
.goto Badlands,37.09,69.28,90,0
.goto Badlands,30.28,62.70,90,0
.goto Badlands,25.09,55.10,90,0
.goto Badlands,44.11,71.87,90,0
.goto Badlands,37.09,69.28,90,0
.goto Badlands,30.28,62.70
>>杀死|cRXP_ENEMY_Coyotes|r。掠夺它们的|cRXD_Loot_Jawbones|r和|cRXT_Loot_Fans|r
.complete 1419,1 
.complete 2258,2 
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.loop 25,Badlands,17.24,58.53,15.35,58.51,14.85,60.16,15.00,61.98,16.15,61.84,17.01,61.24,17.24,58.53
>>杀死|cRXP_ENEMY_Buzzards|r。掠夺他们的|cRXX_Loot_Gizzards|r
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
.goto Badlands,6.49,47.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼卡·血痕|r
.turnin 1419 >>交任务: |cRXP_FRIENDLY_捕猎山狗|r
.target Neeka Bloodscar
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加卡尔|r
.turnin 2258 >>交任务: |cRXP_FRIENDLY_荒芜之地的材料|r
.accept 2202 >>接任务: |cRXP_LOOT_奥达曼的蘑菇|r
.target Jarkal Mossmeld
.group
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加卡尔|r
.turnin 2258 >>交任务: |cRXP_FRIENDLY_荒芜之地的材料|r
.target Jarkal Mossmeld
step
#completewith RockyElements
.destroy 7846 >>摧毁: |cRXP_ENEMY_峭壁山狗的牙齿|r
.itemcount 7846,1
step
#requires signofearthBL
.goto Badlands,2.91,45.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高恩|r
.turnin 782 >>交任务: |cRXP_FRIENDLY_破碎的联盟|r
.target Gorn
.isQuestComplete 782
.group
step
#label RockyElements
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 711 >>交任务: |cRXP_FRIENDLY_研究石元素|r
.target Lotwil Veriatus
step
.goto Badlands,42.39,52.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r
.accept 2418 >>接任务: |cRXP_WARN_能量石|r
.target Rigglefuzz
.group
step
#completewith Tablet
>>掠夺|cRXP_ENEMY_Shadowforge矮人|r和|cRXX_ENEMY_Stonevault巨魔|r，获得|T133289:0|t[碎项链]的机会
>>|cRXP_WARN_由于可能存在任务日志问题，暂时不接受任务|r
.collect 7666,1 
.group 3
step
#completewith next
.goto Badlands,49.7,13.3,125,0
+前往Badlands北部的The Maker‘s Terrace，然后进入洞穴
.group 3
step
#completewith Tablet
>>为|cRXP_OOT_Fungus Caps|r掠夺|cRX_PICK_Magenta Cap Clusters|r
>>杀死|cRXP_ENEMY_Shadowforge Dwarves |r。掠夺他们的|cRXX_Loot_Power Stones |r
>>|cRXP_WARN_小心|cRXP_ENEMY_Shadowforge Surveyors|r|cRXP_WARN_use霜新星和|cRXD_ENEMY_Obsidian Golems|r可以反射魔法并不受嘲讽！|r
.complete 2202,1 
.complete 2418,1 
.complete 2418,2 
.mob Shadowforge Surveyor
.mob Shadowforge Ruffian
.mob Shadowforge Digger
.group 3
step
.goto Eastern Kingdoms,53.81,57.94,0
.goto Eastern Kingdoms,53.78,58.23
>>在南公堂南角掠夺|cRXP_PICK_Garrett家宝|r
>>|cRXP_WARN_南公堂位于Uldaman实例入口的西南侧|r
.complete 2342,1 
.isOnQuest 2342
.group 3
step
#label Tablet
.goto Eastern Kingdoms,54.14,58.24
>>|TInterface/GossipFrame/HealerGossipIcon:0|tLoot the |cRXP_PICK_Ancient Chest|r in the middle of the room for the |cRXP_LOOT_Tablet of Ryun'eh|r
.complete 709,1 
.group 3
step
.loop 25,Eastern Kingdoms,54.15,58.05,54.25,58.03,54.15,58.05,54.03,57.96,54.01,58.18,54.03,57.96,53.97,57.91,53.95,58.03,53.87,57.93,53.71,57.92,53.87,57.93,53.90,57.81,53.87,57.93,53.95,58.03,53.97,57.91,53.94,57.78,54.03,57.69,54.18,57.79,54.11,57.84,54.20,57.87,54.29,57.77,54.20,57.67,54.11,57.84,54.18,57.79,54.03,57.69,53.94,57.78,54.03,57.96,54.15,58.05,54.15,58.05
>>完成对|cRXP_PICK_Magenta Cap Clusters|r的掠夺，以获取|cRXP_LOOT_Ffungus Caps|r
>>完成击杀|cRXP_ENEMY_Shadowforge Dwarves |r。掠夺他们的|cRXX_Loot_Power Stones |r
>>|cRXP_WARN_小心|cRXP_ENEMY_Shadowforge Surveyors|r|cRXP_WARN_use霜新星和|cRXD_ENEMY_Obsidian Golems|r可以反射魔法并不受嘲讽！|r
.complete 2202,1 
.complete 2418,1 
.complete 2418,2 
.mob Shadowforge Surveyor
.mob Shadowforge Ruffian
.mob Shadowforge Digger
.group 3
step
.goto Eastern Kingdoms,54.51,57.77,10,0
.goto Badlands,51.3,77.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t退出Uldaman，然后与|cRXP_FRIENDLY_Theldurin|r通话
.turnin 709 >>交任务: |cRXP_FRIENDLY_化解灾难|r
.target Theldurin the Lost
.group
step
.goto Badlands,42.39,52.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r
.turnin 2418 >>交任务: |cRXP_FRIENDLY_能量石|r
.target Rigglefuzz
.group
step
.goto Badlands,42.47,52.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹里克|r
.vendor >>|cRXP_BUY_出售你的垃圾并在必要时进行维修|r
.target Jazzrik
.group
step
.goto Badlands,6.49,47.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼卡·血痕|r
.accept 1420 >>接任务: |cRXP_WARN_向赫格拉姆报到|r
.target Neeka Bloodscar
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加卡尔|r
.turnin 2202 >>交任务: |cRXP_FRIENDLY_奥达曼的蘑菇|r
.target Jarkal Mossmeld
.group
step << Druid
#completewith DruidTraining7
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9634 >>训练你的职业技能
.target Loganaar
.xp <40,1
.xp >42,1
step << Druid
#label DruidTraining7
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9750 >>训练你的职业技能
.target Loganaar
.xp <42,1
step
#completewith next
.hs >>前往: 奥格瑞玛
.use 6948
step
.goto Orgrimmar,54.10,68.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Gryshka
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 42-43 Stranglethorn Vale
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 40-50
#next 43-43 Desolace II
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8423 >>训练你的职业技能
.target Pephredo
.xp <40,1
.xp >42,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10159 >>训练你的职业技能
.target Pephredo
.xp <42,1
step << Mage
.goto Orgrimmar,38.70,85.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与小屋顶部的|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 11417 >>列车|T135744:0|t[入口：Orgrimmar]
.target Thuul
.xp <40,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 8134 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <40,1
.xp >42,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 11314 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <42,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8624 >>训练你的职业技能
.target Ormok
.xp <40,1
.xp >42,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 6774 >>训练你的职业技能
.target Ormok
.xp <42,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11665 >>训练你的职业技能
.target Mirket
.xp <40,1
.xp >42,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 6789 >>训练你的职业技能
.target Mirket
.xp <42,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14324 >>训练你的职业技能
.target Ormak Grimshot
.xp <40,1
.xp >42,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14289 >>训练你的职业技能
.target Ormak Grimshot
.xp <42,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24561 >>训练你的宠物法术
.target Xao'tsu
.xp <42,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 8106 >>训练你的职业技能
.target Ur'kyo
.xp <40,1
.xp >42,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10898 >>训练你的职业技能
.target Ur'kyo
.xp <42,1
step
.goto Orgrimmar,59.4,36.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dran|r
.accept 2283 >>接任务: |cRXP_LOOT_搜寻项链|r
.turnin 2283 >>交任务: |cRXP_FRIENDLY_搜寻项链|r
.target Dran Droffers
.itemcount 7666,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11608 >>训练你的职业技能
.target Grezz Ragefist
.xp <40,1
.xp >42,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11550 >>训练你的职业技能
.target Grezz Ragefist
.xp <42,1
step
.goto Orgrimmar,75.18,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.accept 2981 >>接任务: |cRXP_LOOT_菲拉斯的危机|r
.target Belgrom Rockmaul
step << Orc !Warlock
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r, |cRXP_FRIENDLY_奥古纳罗|r
.train 825 >>火车|T136103:0|t[骑狼]
.vendor >>|cRXP_BUY_BUY a|r|T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step << Shaman
.goto Orgrimmar,49.6,69.10
.bankdeposit 7069,7068,7067,7070 >>将以下项目存入您的银行：
>>|T135805:0|t[元素之火]
>>|T134714:0|t[元素水]
>>|T134572:0|t[元素土]
>>|T136107:0|t[元素空气]
step
#ah
#completewith STVZepp
+|cRXP_WARN_检查您的银行是否有任何丢失的|r|T134332:0|t[Stranglethorn的Green Hills-Pages]|cRXP_WARN_并从拍卖行购买您仍然需要的任何物品|r
>>|cRXP_WARN_第1章要求：第1、4、6、8页|r
>>|cRXP_WARN_第2章要求：第10、11、14、16页|r
>>|cRXP_WARN_第3章要求：第18、20、21、24页|r
>>|cRXP_WARN_第4章要求：第25、26、27页|r
>>|cRXP_WARN_将新购买的页面放入您的银行。如果您无法获得它们，请跳过此步骤|r
.solo
step << Troll
#optional
#completewith next
.subzone 367 >>前往森津村
step << Troll
#optional
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 10861 >>火车|T136103:0|t[猛禽骑乘]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FF猛禽|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step
#completewith STVZepp
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step
#optional
.abandon 782 >>放弃破裂的联盟
.isOnQuest 782
step
#optional
.abandon 709 >>放弃末日的解决方案
.isOnQuest 709
step
#optional
.abandon 2202 >>放弃Uldaman试剂运行
.isOnQuest 2202
step
#optional
.abandon 2418 >>Abandon Power Stones
.isOnQuest 2418
step
#label STVZepp
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,31.49,29.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板苏贝克|r
.home >>将你的炉石设置为Grom'Gol大本营
.target Innkeeper Thulbek
step
.goto Stranglethorn Vale,32.12,29.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.accept 572 >>接任务: |cRXP_LOOT_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 1240 >>交任务: |cRXP_FRIENDLY_巨魔巫医|r
.target Kin'weelay
.isQuestTurnedIn 1238
step
.goto Stranglethorn Vale,32.10,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r
.accept 584 >>接任务: |cRXP_LOOT_血顶之颅|r
.target Nimboya
step
.goto Stranglethorn Vale,32.20,27.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.accept 598 >>接任务: |cRXP_LOOT_裂骨项链|r
.target Kin'weelay
step
#completewith next
.goto Stranglethorn Vale,23.82,10.78,200 >>祖尔昆达遗址之旅
step
#completewith next
>>杀死一个|cRXP_ENEMY_Elder盐水鳄鱼|r。掠夺它的|cRXP-Loot_Skin|r
.complete 628,1 
.mob Saltwater Crocolisk
step
.goto Stranglethorn Vale,23.52,9.53
>>杀死|cRXP_ENEMY_Nezzliok the Dire|r。掠夺他的|cRXX_Loot_Head|r
.complete 584,2 
.unitscan Nezzliok the Dire
step
.goto Stranglethorn Vale,23.44,8.14
>>杀死|cRXP_ENEMY_Gan'zulah|r。掠夺他的|cRXP_Loot_Head|r
.complete 584,1 
.unitscan Gan'zulah
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >>返回Grom'gol大本营
step
#completewith next
>>杀死一个|cRXP_ENEMY_Elder盐水鳄鱼|r。掠夺它的|cRXP-Loot_Skin|r
.complete 628,1 
.mob Saltwater Crocolisk
step
.goto Stranglethorn Vale,32.22,27.60
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_鼓泡釜|r
.turnin 584 >>交任务: |cRXP_FRIENDLY_血顶之颅|r
.accept 585 >>接任务: |cRXP_LOOT_奈兹里奥克|r
step
.goto Stranglethorn Vale,31.00,42.50,60,0
.loop 25,Stranglethorn Vale,32.99,38.06,31.42,40.17,30.14,43.06,28.36,43.47,28.53,45.96,30.61,44.54,31.80,43.08,33.24,40.38,33.85,38.45,32.99,38.06
>>杀死|cRXP_ENEMY_Jungle Stalkers |r。掠夺他们的|cRXX_Loot_Features|r
.complete 196,1 
.complete 572,1 
.mob Jungle Stalker
step
.loop 25,Stranglethorn Vale,40.36,43.2941.04,43.73,41.93,44.73,41.47,43.26,42.05,42.55,42.29,41.48,41.55,41.43,41.18,41.93,40.36,43.29
>>杀死|cRXP_ENEMY_Venture Co.妖精|r。掠夺他们的|cRXX_Loot_水晶|r
.complete 600,1 
.mob Venture Co. Surveyor
.mob Venture Co. Foreman
.mob Venture Co. Strip Miner
.mob Venture Co. Tinkerer
.mob Foreman Cozzle
step
#completewith SkullP
>>杀死|cRXP_ENEMY_Skullsplitter巨魔|r。掠夺它们的|cRXP_Loot_TASK|r和|cRXP-Loot_Neckles|r
.complete 209,1 
.complete 598,1 
.mob Skullsplitter Mystic
.mob Skullsplitter Warrior
.mob Skullsplitter Axe Thrower
step
.goto Stranglethorn Vale,42.20,36.10
>>|TInterface/GossipFrame/HealerGossipIcon:0|t掠夺|cRXP_PICK_Ziata'jai奖杯头骨|r以获得其|cRXP_Loot_Trophy|r
.complete 585,2 
step
.goto Stranglethorn Vale,47.60,39.60
>>|TInterface/GossipFrame/HealerGossipIcon:0|t掠夺|cRXP_PICK_Zul'Mamwe奖杯头骨|r的|cRXP_Loot_Trophy|r
.complete 585,3 
step
#label SkullP
.goto Stranglethorn Vale,46.10,32.30
>>|TInterface/GossipFrame/HealerGossipIcon:0|t掠夺|cRXP_PICK_Balia'mah奖杯头骨|r以获得其|cRXP_Loot_Trophy|r
.complete 585,1 
step
.loop 25,Stranglethorn Vale,42.13,36.29,41.89,35.93,42.45,35.03,42.47,33.35,43.47,33.25,45.06,32.39,45.51,31.66,46.42,31.98,47.19,30.85,47.11,32.54,47.13,34.31,45.23,34.47,44.00,35.53,43.44,37.92,42.13,36.29
>>完成击杀|cRXP_ENEMY_Skullsplitter巨魔|r。掠夺它们的|cRXP_Loot_TASK|r和|cRXP-Loot_Nocklaces|r
.complete 209,1 
.complete 598,1 
.mob Skullsplitter Mystic
.mob Skullsplitter Warrior
.mob Skullsplitter Axe Thrower
step
.loop 25,Stranglethorn Vale,42.13,36.29,41.89,35.93,42.45,35.03,42.47,33.35,43.47,33.25,45.06,32.39,45.51,31.66,46.42,31.98,47.19,30.85,47.11,32.54,47.13,34.31,45.23,34.47,44.00,35.53,43.44,37.92,42.13,36.29
.xp 42 >>升级到42级
step
#completewith next
.hs >>Grom'gol大本营之心
.use 6948
step
.goto Stranglethorn Vale,31.48,29.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板苏贝克|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Thulbek
step << Hunter
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤索克|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,669,1 
.target Uthok
.xp >40,1
step << Hunter
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤索克|r
>>|cRXP_BUY_从他那里购买|r|T135661:0|t[Jagged Arrows]|cRXP_Buy_|r
.collect 11285,2600,669,1 
.target Uthok
.xp <40,1
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 598 >>交任务: |cRXP_FRIENDLY_裂骨项链|r
.turnin 585 >>交任务: |cRXP_FRIENDLY_奈兹里奥克|r
.accept 1261 >>接任务: |cRXP_LOOT_玛尔格的嘱托|r
.target Kin'weelay
step
.goto Stranglethorn Vale,32.10,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r
.accept 2932 >>接任务: |cRXP_WARN_可怕的消息|r
.target Nimboya
step
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 572 >>交任务: |cRXP_FRIENDLY_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,33.51,32.53
>>杀死一个|cRXP_ENEMY_Elder盐水鳄鱼|r。掠夺它的|cRXP-Loot_Skin|r
>>|cRXP_WARN_海岸沿线还有更多|r|cRXP_ENEMY_Elder盐水鳄鱼|r|cRXP_WARN_worth|r
.complete 628,1 
.mob Saltwater Crocolisk
step
.goto Stranglethorn Vale,32.54,29.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >>飞到Booty Bay
.target Thysta
step
.goto Stranglethorn Vale,27.10,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 669 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 670 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r on the inn's ground floor
.turnin 600 >>交任务: |cRXP_FRIENDLY_风险投资公司|r
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,26.95,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科博克|r
.turnin 209 >>交任务: |cRXP_FRIENDLY_劈颅巨魔的獠牙|r
.accept 1116 >>接任务: |cRXP_WARN_梦境之尘|r
.target Kebok
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.turnin 628 >>交任务: |cRXP_FRIENDLY_刨花皮靴|r
.target Drizzlik
step
#completewith next
+撤回您的所有|T134332:0|t[荆棘之青山页面]
.solo
step
#completewith next
+存入所有|T134332:0|t[荆棘页的青山]
.group
step
.goto Stranglethorn Vale,26.87,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >>飞往Grom'gol大本营
.target Gringer
step
#completewith next
.goto Stranglethorn Vale,35.70,10.80,0
+Turn in all the |T134332:0|t[Green Hills of Stranglethorn - Pages] that you have
.solo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Hemet, |cRXP_FRIENDLY_埃尔加丁爵士|r
.turnin 196 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 197 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.66,10.81
.accept 193 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.55,10.55
.group
step
.goto Stranglethorn Vale,35.66,10.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet|r
.turnin 196 >>交任务: |cRXP_FRIENDLY_猎龙|r
step
#completewith next
.goto Stranglethorn Vale,39.30,6.49,60,0
.goto Stranglethorn Vale,40.63,3.12,50 >>前往: |cRXP_PICK_暮色森林|r
.zoneskip Duskwood
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵莱度斯|r, |cRXP_FRIENDLY_药剂师法奥斯丁|r
.accept 1372 >>接任务: |cRXP_WARN_真言药水|r
.goto Duskwood,87.81,35.62
.turnin 1372 >>交任务: |cRXP_FRIENDLY_真言药水|r
.goto Duskwood,87.45,35.25
.target Deathstalker Zraedus
.target Apothecary Faustin
step
#completewith next
.goto Duskwood,88.47,41.00,50 >>前往: |cRXP_PICK_逆风小径|r
.zoneskip Deadwind Pass
step
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50,0
.zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
.zoneskip Swamp of Sorrows
step
#completewith next
.goto Swamp of Sorrows,13.27,67.96,0
.loop 25,Swamp of Sorrows,12.02,60.27,12.00,67.29,15.12,65.50,16.54,61.12,15.37,55.45,12.19,57.13,12.02,60.27
>>杀死|cRXP_ENEMY_青少年乳清|r和|cRXX_ENEMY_Dreaming乳清|r。掠夺他们的|cRXD_Loot_ Dream Dust|r
>>|cRXP_WARN_不要专注于此。一次杀死所有的幼崽。你稍后会完成|r
.complete 1116,1 
.mob Dreaming Whelp
.mob Adolescent Whelp
step
.goto Swamp of Sorrows,44.70,57.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔|r
.accept 698 >>接任务: |cRXP_WARN_缺乏补给|r
.target Dar
step
.goto Swamp of Sorrows,46.10,54.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷依克|r
.fp Stonard >>获取Stonard飞行路线
.target Breyk
step
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏塔佐尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Thultazor
step
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔塔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Rartar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫格拉姆|r, |cRXP_FRIENDLY_费泽鲁尔|r
.turnin 1420 >>交任务: |cRXP_FRIENDLY_向赫格拉姆报到|r
.goto Swamp of Sorrows,47.80,55.20
.accept 1424 >>接任务: |cRXP_WARN_泪水之池|r
.goto Swamp of Sorrows,47.80,55.20
.target Helgrum the Swift
.target Fel'zerul
step << Hunter
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 13553 >>训练你的职业技能
.target Ogrom
.xp <42,1
.xp >44,1
step << Hunter
#optional
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 14285 >>训练你的职业技能
.target Ogrom
.xp <44,1
step << Hunter
.goto Swamp of Sorrows,47.35,52.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗科尔|r
.train 24561 >>训练你的宠物法术
.target Grokor
.xp <42,1
step << Warlock
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 6789 >>训练你的职业技能
.target Kartosh
.xp <42,1
.xp >44,1
step << Warlock
#optional
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 11671 >>训练你的职业技能
.target Kartosh
.xp <44,1
step << Warlock
.goto Swamp of Sorrows,48.59,55.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.vendor >>购买任何你能负担得起的宠物升级
.target Greshka
step << Shaman
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 11314 >>训练你的职业技能
.target Haromm
.xp <42,1
.xp >44,1
step << Shaman
#optional
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 16315 >>训练你的职业技能
.target Haromm
.xp <44,1
step << Warrior
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 11550 >>训练你的职业技能
.target Malosh
.xp <42,1
.xp >44,1
step << Warrior
#optional
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 11584 >>训练你的职业技能
.target Malosh
.xp <44,1
step
#completewith GalenStrongbox
>>杀死|cRXP_ENEMY_Sawtothe Crocolis|r和|cRXX_ENEMY_ Sawtoth Snappers|r。掠夺它们的|cRXD_Loot_Sawtooth Flanks|r
.complete 698,1 
.mob Sawtooth Crocolisk
.mob Sawtooth Snapper
step
.line Swamp of Sorrows,32.24,36.70,33.22,39.96,33.92,44.25,36.71,46.36,37.92,43.17,38.29,39.13,38.86,35.61,40.34,34.40,40.86,32.29,42.43,32.11,45.77,36.75,46.68,38.55,48.95,38.71,53.41,38.98,55.48,37.42,56.06,36.05
.goto Swamp of Sorrows,56.06,36.05,40,0
.goto Swamp of Sorrows,55.48,37.42,40,0
.goto Swamp of Sorrows,53.41,38.98,40,0
.goto Swamp of Sorrows,48.95,38.71,40,0
.goto Swamp of Sorrows,46.68,38.55,40,0
.goto Swamp of Sorrows,45.77,36.75,40,0
.goto Swamp of Sorrows,42.43,32.11,40,0
.goto Swamp of Sorrows,40.86,32.29,40,0
.goto Swamp of Sorrows,40.34,34.40,40,0
.goto Swamp of Sorrows,38.86,35.61,40,0
.goto Swamp of Sorrows,38.29,39.13,40,0
.goto Swamp of Sorrows,37.92,43.17,40,0
.goto Swamp of Sorrows,36.71,46.36,40,0
.goto Swamp of Sorrows,33.92,44.25,40,0
.goto Swamp of Sorrows,33.22,39.96,40,0
.goto Swamp of Sorrows,32.24,36.70
>>杀死|cRXP_ENEMY_Noboru的棒|r。掠夺他|T133485:0|t[|cRXX_Loot_Noboru的棍|r]。使用它开始任务
>>|cRXP_ENEMY_Noboru the Cudgel|r|cRXP_WARN_trols the zone的顶部中心|r
.collect 6196,1,1392 
.accept 1392 >>接任务: |cRXP_WARN_木棒诺博鲁|r
.unitscan Noboru the Cudgel
step
.goto Swamp of Sorrows,25.98,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛格图尔|r
.accept 1389 >>接任务: |cRXP_WARN_德莱尼水晶|r
.turnin 1392 >>交任务: |cRXP_FRIENDLY_木棒诺博鲁|r
.target Magtoor
step
#completewith GalenE
>>杀死|cRXP_ENEMY_Ongeku|r。掠夺他的|cRXX_Loot_Shard|r
>>|cRXP_WARN_在Fallow Sanctuary到处都可以找到Ongeku|r
.complete 1373,1 
.unitscan Ongeku
.isOnQuest 1373
step
#completewith GalenE
>>将蓝色|cRXP_Loot_Draenethyst晶体|r掠夺到地上
.complete 1389,1 
.target Galen Goodward
step
#completewith next
+|cRXP_WARN_下一个任务可能很难，要格外小心|r
step
#label Galen
.goto Swamp of Sorrows,65.46,18.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen|r to start his escort
>>|cRXP_WARN_出发前，尽可能将暴徒提前清除到盖伦西南部|r
.accept 1393 >>接任务: |cRXP_WARN_加林的逃亡|r
.target Galen Goodward
step
#label GalenE
>>护送|cRXP_FRIENDLY_Galen Goodward |r安全离开Fallow Sanctuary
.complete 1393,1 
.target Galen Goodward
step
#completewith next
>>将蓝色|cRXP_Loot_Draenethyst晶体|r掠夺到地上
.complete 1389,1 
.target Galen Goodward
step
.goto Swamp of Sorrows,62.60,22.86,-1
.goto Swamp of Sorrows,64.74,22.46,-1
>>杀死|cRXP_ENEMY_Ongeku|r。掠夺他的|cRXX_Loot_Shard|r
>>|cRXP_WARN_在Fallow Sanctuary到处都可以找到Ongeku|r
.complete 1373,1 
.unitscan Ongeku
.isOnQuest 1373
step
.loop 25,Swamp of Sorrows,58.31,25.47,61.69,22.38,64.52,19.68,63.88,24.38,58.31,25.47
>>完成掠夺地面上的蓝色|cRXP_LOOT_Draenethyst水晶|r
.complete 1389,1 
step
#label GalenStrongbox
.goto Swamp of Sorrows,47.80,39.75
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Galen的Strongbox |r
.turnin 1393 >>交任务: |cRXP_FRIENDLY_加林的逃亡|r
step
.goto Swamp of Sorrows,52.44,37.14,60,0
.goto Swamp of Sorrows,56.71,35.60,60,0
.goto Swamp of Sorrows,60.47,31.60,60,0
.goto Swamp of Sorrows,63.96,32.23,60,0
.goto Swamp of Sorrows,52.44,37.14
>>杀死|cRXP_ENEMY_Sawtothe Crocolis|r和|cRXX_ENEMY_ Sawtoth Snappers|r。掠夺它们的|cRXD_Loot_Sawtooth Flanks|r
.complete 698,1 
.mob Sawtooth Crocolisk
.mob Sawtooth Snapper
step
.goto Swamp of Sorrows,81.40,81.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托克卡尔|r
.turnin 698 >>交任务: |cRXP_FRIENDLY_缺乏补给|r
.accept 699 >>接任务: |cRXP_WARN_缺乏补给|r
.target Tok'Kar
step
.goto Swamp of Sorrows,75.44,60.41,50,0
.goto Swamp of Sorrows,71.14,61.44,50,0
.goto Swamp of Sorrows,65.36,57.19,50,0
.goto Swamp of Sorrows,65.99,47.10,50,0
.goto Eastern Kingdoms,53.87,79.26,50,0
.goto Swamp of Sorrows,70.57,46.04,50,0
.goto Swamp of Sorrows,75.03,50.83,50,0
.goto Swamp of Sorrows,75.44,60.41
>>偷走散落在泪池岸边或泪池底部的|cRXP_Loot_Atal'ai文物
>>|cRXP_WARN_工件有不同的模型。打开菜单，单击“系统”，然后单击“图形”，然后将“环境杂波”滑块（最底部）调整为0|r
.complete 1424,1 
step
.goto Swamp of Sorrows,48.00,54.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回Stonard中的|cRXP_FRIENDLY_Fel'zerul|r
.turnin 1424 >>交任务: |cRXP_FRIENDLY_泪水之池|r
.target Fel'zerul
step
.goto Swamp of Sorrows,25.90,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛格图尔|r
.turnin 1392 >>交任务: |cRXP_FRIENDLY_木棒诺博鲁|r
.turnin 1389 >>交任务: |cRXP_FRIENDLY_德莱尼水晶|r
.target Magtoor
step
.loop 25,Swamp of Sorrows,12.02,60.27,12.00,67.29,15.12,65.50,16.54,61.12,15.37,55.45,12.19,57.13,12.02,60.27
>>完成杀死|cRXP_ENEMY_青少年Whelps|r和|cRXX_ENEMY_Dreaming Whelps| r。掠夺他们的|cRXD_Loot_ Dream Dust|r
.complete 1116,1 
.mob Dreaming Whelp
.mob Adolescent Whelp
step
.goto Swamp of Sorrows,46.08,54.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷依克|r
.fly Badlands >>飞到荒地
.target Breyk
.zoneskip Badlands
step
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 712 >>接任务: |cRXP_LOOT_研究石元素|r
.target Lotwil Veriatus
step
.loop 25,Badlands,6.58,75.55,1.23,79.29,2.06,82.38,6.66,81.68,6.58,75.55
>>杀死|cRXP_ENEMY_Greater Rock Elements|r。掠夺他们的|cRXX_Loot_Bracers|r
.complete 712,1 
.mob Greater Rock Elemental
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 692 >>接任务: |cRXP_LOOT_遗失的卷轴碎片|r
.target Theldurin the Lost
.isQuestTurnedIn 688
.group
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 728 >>接任务: |cRXP_LOOT_远赴幽暗城|r
.target Theldurin the Lost
.isQuestTurnedIn 709
.group
step
.loop 25,Badlands,53.65,81.49,54.29,85.26,55.43,86.87,56.13,82.85,53.65,81.49
>>杀死|cRXP_ENEMY_Enraged Rock Elements|r。掠夺他们的|cRXX_Loot_Scrolls|r
.complete 692,1 
.complete 692,2 
.complete 692,3 
.mob Enraged Rock Elemental
.isQuestTurnedIn 688
.group
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Theldurin|r
.turnin 692 >>交任务: |cRXP_FRIENDLY_遗失的卷轴碎片|r
.accept 656 >>接任务: |cRXP_LOOT_召唤大地公主|r
.target Theldurin the Lost
.isQuestTurnedIn 688
.group
step
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 712 >>交任务: |cRXP_FRIENDLY_研究石元素|r
.target Lotwil Veriatus
step
#ah
.goto Badlands,25.82,44.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
.accept 715 >>接任务: |cRXP_WARN_卢希恩的药水|r
.turnin 715 >>交任务: |cRXP_FRIENDLY_卢希恩的药水|r
.target Lucien Tosselwrench
.itemcount 929,1 
.itemcount 3823,1 
.isQuestTurnedIn 714
step
#ah
.goto Badlands,25.82,44.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
.accept 716 >>接任务: |cRXP_WARN_有备无患|r
.turnin 716 >>交任务: |cRXP_FRIENDLY_有备无患|r
.target Lucien Tosselwrench
.itemcount 2868,1 
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 734 >>接任务: |cRXP_WARN_不祥的感觉|r
.target Lotwil Veriatus
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.82,44.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
.turnin 734 >>交任务: |cRXP_FRIENDLY_不祥的感觉|r
.accept 777 >>接任务: |cRXP_WARN_不祥的感觉|r
.target Lucien Tosselwrench
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 777 >>交任务: |cRXP_FRIENDLY_不祥的感觉|r
.accept 778 >>接任务: |cRXP_WARN_不祥的感觉|r
.target Lotwil Veriatus
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,26.09,46.83
>>杀死|cRXP_ENEMY_Fam'Tor守护者|r。掠夺他的|cRXP_Loot_Bindings|r
.complete 778,1 
.unitscan Fam'retor Guardian
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 778 >>交任务: |cRXP_FRIENDLY_不祥的感觉|r
.target Lotwil Veriatus
.isQuestComplete 778
step
.goto Badlands,3.99,44.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里克|r
.fly Hammerfall >>飞到Hammerfall
.target Gorrik
step
.goto Arathi Highlands,73.80,33.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森古|r
.turnin 646 >>交任务: |cRXP_FRIENDLY_托卡拉尔|r
.target Zengu
.group
step
.goto Arathi Highlands,62.45,33.72
.use 4472 >>使用您的|T134937:0|t[Myzrael卷轴]，然后等待角色扮演
>>杀死|cRXP_ENEMY_Myzrael|r。为她掠夺她|cRXX_Loot_枷锁|r
>>|cRXP_WARN_建议携带坦克和治疗者。她添加了许多元素|r
.complete 656,1 
.unitscan Myzrael
.group 5
step
.goto Arathi Highlands,62.45,33.72
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the Shards of Myzrael
.turnin 656 >>交任务: |cRXP_FRIENDLY_召唤大地公主|r
.group
step
#completewith next
.goto Arathi Highlands,21.6,75.6,30,0
.goto Arathi Highlands,22.1,79.9,25 >>穿过洞穴到法尔迪尔湾
step
.goto Arathi Highlands,32.28,81.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 670 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 667 >>接任务: |cRXP_WARN_水下伏兵|r
.target Shakes O'Breen
step
.goto Arathi Highlands,31.56,82.14,15,0
.goto Arathi Highlands,31.47,81.06,15,0
.goto Arathi Highlands,32.02,80.71
>>登船，然后等待naga出现
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Cannon|r to kill the |cRXP_ENEMY_Daggerspine Marauders|r instantly
.complete 667,1 
.mob Daggerspine Marauder
step
.goto Arathi Highlands,32.28,81.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 667 >>交任务: |cRXP_FRIENDLY_水下伏兵|r
.target Shakes O'Breen
step
#completewith next
.goto Arathi Highlands,35.78,79.52
.goto Arathi Highlands,48.71,55.80,30 >>在洞穴中间的岩石上注销。通过注销并重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=SWBtPqm5M0Q&t=114s >>|cRXP_WARN_点击此处查看视频参考|r
step
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤尔达|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Urda
.zoneskip Hillsbrad Foothills

step
#completewith VenomBottle
.zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
#completewith grimmes
>>杀死|cRXP_ENEMY_Witherbark巨魔|r。掠夺他们的|cRXX_Loot_Sulls|r
.collect 9320,20 
.isOnQuest 2932
step
#label VenomBottle
.goto The Hinterlands,23.00,57.73
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击营地周围的一个绿色|cRXP_PICK_Venom Bottles|r
.accept 2933 >>接任务: |cRXP_LOOT_毒液瓶|r
step
#completewith next
.use 15002 >>点击|T135128:0|t[宁博雅派克]创建|T135125:0|t[宁博雅拉登派克]
.itemcount 15002,1
step
#label grimmes
.goto The Hinterlands,23.9,58.3
.use 9319 >>在营地中间使用|T135125:0|t[宁博亚的拉登派克]
.complete 2932,1 
.isOnQuest 2932
step
#completewith next
.goto Hillsbrad Foothills,62.31,20.29,125 >>返回Tarren Mill
step
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 2933 >>交任务: |cRXP_FRIENDLY_毒液瓶|r
.target Apothecary Lydon
step
.goto Hillsbrad Foothills,63.20,20.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.accept 507 >>接任务: |cRXP_LOOT_奥里登·匹瑞诺德|r
.target Krusk
.solo
step
.goto Hillsbrad Foothills,62.62,20.74
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_FRIENDLY_Melisara|r旁边的|cRXP_PICK_WANTED:Baron Vardus|r海报
.accept 566 >>接任务: |cRXP_LOOT_通缉：瓦杜斯男爵|r
.target Melisara
.solo
step
#completewith next
>>在每个营地和Strahnbrad客栈中搜索|cRXP_ENEMY_Baron Vardus|r。杀死他并掠夺他的|cRXP_loot_Head|r
.complete 566,1 
.unitscan Baron Vardus
.solo
step
.goto Alterac Mountains,39.28,14.52
>>杀死|cRXP_ENEMY_Lord Aliden Perenolde|r
>>|cRXP_WARN_请注意|cRXP_ENEMY_Syndicate Assassins|r。|cRXX_ENEMY_Aliden|r使用力量词：盾牌，施放更新，并将睡眠宠物和其他玩家|r
.complete 507,1 
.unitscan Lord Aliden Perenolde
.mob Syndicate Assassin
.solo
step
.goto Alterac Mountains,39.30,14.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾丽萨|r
.turnin 507 >>交任务: |cRXP_FRIENDLY_奥里登·匹瑞诺德|r
.accept 508 >>接任务: |cRXP_LOOT_塔蕾莎的礼物|r
.target Elysa
.solo
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>>在每个营地和Strahnbrad客栈中搜索|cRXP_ENEMY_Baron Vardus|r。杀死他并掠夺他的|cRXP_loot_Head|r
.complete 566,1 
.unitscan Baron Vardus
.solo
step
.goto Alterac Mountains,61.10,82.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 566 >>交任务: |cRXP_FRIENDLY_通缉：瓦杜斯男爵|r
.target High Executor Darthalia
.solo
step
.goto Hillsbrad Foothills,63.20,20.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.turnin 508 >>交任务: |cRXP_FRIENDLY_塔蕾莎的礼物|r
.target Krusk
.solo
step
.goto Hillsbrad Foothills,62.63,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅里萨拉|r
.accept 521 >>接任务: |cRXP_LOOT_意志之冠|r
.target Melisara
.isQuestTurnedIn 520
.group
step
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly Undercity >>飞到地下城
.target Zarise
.zoneskip Undercity
.group
step
.goto Undercity,62.32,48.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patrick|r
.turnin 2342 >>交任务: |cRXP_FRIENDLY_失而复得|r
.target Patrick Garrett
.isQuestComplete 2342
.group
step
.goto Undercity,62.31,48.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patrick|r
.accept 2342 >>接任务: |cRXP_LOOT_失而复得|r
.target Patrick
.dungeon ULDA
step
.goto Undercity,53.77,54.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝尔杜加|r
.turnin 728 >>交任务: |cRXP_FRIENDLY_远赴幽暗城|r
.target Keeper Bel'dugur
.group
step
.goto Undercity,50.15,67.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师金格|r
.accept 243 >>接任务: |cRXP_LOOT_进入沙漠|r
.target Apothecary Zinge
.group
step
.goto Undercity,57.65,93.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙琳德拉|r
.turnin 521 >>交任务: |cRXP_FRIENDLY_意志之冠|r
.target Sharlindra
.group
step << Warrior
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 11550 >>训练你的职业技能
.target Angela Curthas
.xp <42,1
.xp >44,1
.group
step << Warrior
#optional
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 11584 >>训练你的职业技能
.target Angela Curthas
.xp <44,1
.group
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 6774 >>训练你的职业技能
.target Carolyn Ward
.xp <42,1
.xp >44,1
.group
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 11341 >>训练你的职业技能
.target Carolyn Ward
.xp <44,1
.group
step << Warlock
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 6789 >>训练你的职业技能
.target Richard Kerwin
.xp <42,1
.xp >44,1
.group
step << Warlock
#optional
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 11671 >>训练你的职业技能
.target Richard Kerwin
.xp <44,1
.group
step << Mage
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 10159 >>训练你的职业技能
.target Anastasia Hartwell
.xp <42,1
.xp >44,1
.group
step << Mage
#optional
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 10185 >>训练你的职业技能
.target Anastasia Hartwell
.xp <44,1
.group
step << Priest
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
.train 10892 >>训练你的职业技能
.target Father Lazarus
.xp <42,1
.xp >44,1
.group
step << Priest
#optional
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
.train 10927 >>训练你的职业技能
.target Father Lazarus
.xp <44,1
.group
step << Undead !Warlock
#optional
#completewith next
.subzone 159 >>Travel to Brill
.xp <40,1
.money <90
.skill riding,75,1
step << Undead !Warlock
#optional
.goto Tirisfal Glades,60.09,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Velma, |cRXP_FRIENDLY_撒迦利亚·普斯特|r
.train 10906 >>火车|T136103:0|t[不死骑士术]
.vendor >>|cRXP_BUY_BUY a|r|T132264:0|t[|cFF0070FF骨骼马|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step
#completewith next
.hs >>Grom'gol大本营之心
.use 6948
step
.goto Stranglethorn Vale,31.48,29.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板苏贝克|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Thulbek
step
.goto Stranglethorn Vale,32.10,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r
.turnin 2932 >>交任务: |cRXP_FRIENDLY_可怕的消息|r
.target Nimboya
step
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >>飞到Booty Bay
.target Thysta
step
#optional
.abandon 692 >>放弃丢失的碎片
.isOnQuest 692
step
#optional
.abandon 656 >>放弃召唤公主
.isOnQuest 656
step
.goto Stranglethorn Vale,26.99,77.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t爬到客栈的三楼，然后与|cRXP_FRIENDLY_Krazek|r交谈
.turnin 1116 >>交任务: |cRXP_FRIENDLY_梦境之尘|r
.target Krazek
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 6774 >>训练你的职业技能
.target Ian Strom
.xp <42,1
.xp >44,1
step << Rogue
#optional
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 11341 >>训练你的职业技能
.target Ian Strom
.xp <44,1
step
.goto Stranglethorn Vale,27.10,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t退出到三楼阳台，然后与|cRXP_FRIENDLY_Baron Revilgaz|r通话
.accept 1183 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.99,77.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Krazek|r
.accept 1117 >>接任务: |cRXP_WARN_地精的谣言|r
.accept 2864 >>接任务: |cRXP_LOOT_特兰雷克|r
.target Krazek
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.accept 2872 >>接任务: |cRXP_LOOT_斯杜雷的债务|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,28.14,78.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Glyx交谈|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134832:0|t[更强的治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Glyx Brewright
step
#completewith next
.goto Stranglethorn Vale,25.90,73.14,40 >>跑到Booty Bay码头
step
.goto Stranglethorn Vale,25.76,73.04
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
.goto The Barrens,62.40,37.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.turnin 1270 >>交任务: |cRXP_FRIENDLY_伊格纳兹的逃亡|r
.target Mebok Mizzyrix
.isQuestComplete 1270
step
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Bragok
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 43-43 Desolace II
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 40-50
#next 43-45 Tanaris/Dustwallow

step
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.home >>将您的炉石设置为陶拉霍营地
.target Innkeeper Byula
step << !Mage
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10892 >>训练你的职业技能
.target Malakai Cross
.xp <42,1
.xp >44,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10927 >>训练你的职业技能
.target Malakai Cross
.xp <44,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10159 >>训练你的职业技能
.target Thurston Xane
.xp <42,1
.xp >44,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10185 >>训练你的职业技能
.target Thurston Xane
.xp <44,1
step
.goto Thunder Bluff,54.00,80.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫萨恩|r
.turnin 1276 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.target Mosarn
.isQuestComplete 1276
step
.goto Thunder Bluff,61.40,80.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1136 >>交任务: |cRXP_FRIENDLY_霜喉雪人|r
.accept 1205 >>接任务: |cRXP_LOOT_死沼巨鳄|r
.target Melor Stonehoof
.isQuestComplete 1136
step
.goto Thunder Bluff,61.40,80.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.accept 1205 >>接任务: |cRXP_LOOT_死沼巨鳄|r
.target Melor Stonehoof
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9750 >>训练你的职业技能
.target Turak Runetotem
.xp <42,1
.xp >44,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9752 >>训练你的职业技能
.target Turak Runetotem
.xp <44,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 13553 >>训练你的职业技能
.target Urek Thunderhorn
.xp <42,1
.xp >44,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14285 >>训练你的职业技能
.target Urek Thunderhorn
.xp <44,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24561 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <42,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11550 >>训练你的职业技能
.target Ker Ragetotem
.xp <42,1
.xp >44,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11584 >>训练你的职业技能
.target Ker Ragetotem
.xp <44,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 11314 >>训练你的职业技能
.target Tigor Skychaser
.xp <42,1
.xp >44,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 16315 >>训练你的职业技能
.target Tigor Skychaser
.xp <44,1
step << Tauren
#optional
#completewith next
.subzone 222 >>前往血蹄村
.xp <40,1
.money <90
.skill riding,75,1
step << Tauren
#optional
.goto Mulgore,47.64,58.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 132245 >>火车|T136103:0|t[Kodo Riding]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FFKodo|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kar Stormsinger
.target Harb Clawhoof
step
#completewith next
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Shadowprey Village >>飞往Shadowprey村
.target Tal
.zoneskip Desolace
step
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Taiga|r
.accept 5581 >>接任务: |cRXP_WARN_燃烧军团的传送门|r
.target Taiga Wisemane
step
.goto Desolace,36.30,79.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1373 >>交任务: |cRXP_FRIENDLY_盎格库尔|r
.accept 1374 >>接任务: |cRXP_WARN_杰恩可汗|r
.target Uthek the Wise
step
.goto Desolace,47.80,61.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍恩尼兹|r
.accept 6134 >>接任务: |cRXP_WARN_幽灵电浆|r
.target Hornizz Brimbuzzle
step
.goto Desolace,52.20,53.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛乌林·碎骨|r
.accept 1484 >>接任务: |cRXP_LOOT_堕落者|r
.target Maurin Bonesplitter
step
.goto Desolace,52.60,54.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1484 >>交任务: |cRXP_FRIENDLY_堕落者|r
.accept 1488 >>接任务: |cRXP_LOOT_堕落者|r
.target Takata Steelblade
step
#completewith KhanJ
.goto Desolace,53.36,79.47,0
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Devon门户|r，然后杀死|cRXP_ENEMY_Devon门户守护者|r
>>|cRXP_WARN_不要专注于这一步；你可以稍后完成|r
.complete 5581,1 
.mob Demon Portal Guardian
step
#label Jugkar
.goto Desolace,55.90,77.80
>>杀死|cRXP_ENEMY_Jugkar Grim'rod|r
.complete 1488,2 
.unitscan Jugkar Grim'rod
step
.goto Desolace,55.90,77.80
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，必要时用冰霜电击将其放风筝|r << Shaman
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，你可能需要使用报复来杀死他 << Warrior
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，在他的致命一击之间用你的恐惧来疗伤 << Priest
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，他很容易独唱 << Hunter
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，使用冷却。如果需要的话，可以用凿子绑风筝和绷带 << Rogue
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，他是可怕的，应该很容易得到安慰。 << Warlock
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，你可以用霜新星和霜螺栓把他放在风筝周围 << Mage
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，你可以很容易地以熊的形式杀死他，也可以用缠绕的树根装备他 << Druid
*He patrols all around the edges of Mannoroc Cavern
.complete 1488,1 
.unitscan Lord Azrethoc
step
#label KhanJ
.goto Desolace,66.30,80.10
>>杀死|cRXP_ENEMY_Khan Jehn|r。掠夺他的|cRXX_Loot_Head |r
.complete 1374,1 
.mob Khan Jehn
step
.goto Desolace,64.00,91.70
.use 15848 >>前往骨谷，然后使用|T132763:0|t[鬼磁坑]
>>杀死|cRXP_ENEMY_Magrami Spectres|r。掠夺他们的|cRXX_Loot_HGhost-o-pri质|r
.complete 6134,2 
.mob Magrami Spectre
step
.goto Desolace,53.36,79.47
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Devon门户|r，然后杀死|cRXP_ENEMY_Devon门户守护者|r
.complete 5581,1 
.mob Demon Portal Guardian
step
.goto Desolace,36.30,79.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1374 >>交任务: |cRXP_FRIENDLY_杰恩可汗|r
.target Uthek the Wise
step
.goto Desolace,36.30,79.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.accept 1380 >>接任务: |cRXP_WARN_赫鲁萨可汗|r
.target Uthek the Wise
.group
step
.goto Desolace,25.81,68.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰迦·慧鬃|r
.turnin 5581 >>交任务: |cRXP_FRIENDLY_燃烧军团的传送门|r
.target Taiga Wisemane
step
.goto Desolace,29.97,68.88,30,0
.goto Desolace,30.00,66.32,30,0
.goto Desolace,31.57,65.07,30,0
.goto Desolace,32.98,65.93,30,0
.goto Desolace,32.91,62.80,30,0
.goto Desolace,32.01,60.85,50,0
.goto Desolace,29.53,60.66,50,0
.goto Desolace,29.95,58.26,50,0
.goto Desolace,30.73,55.60,50,0
.goto Desolace,32.56,54.95,50,0
.goto Desolace,34.65,56.81,50,0
.goto Desolace,35.28,61.30,50,0
.goto Desolace,36.76,60.62,50,0
.goto Desolace,35.09,57.90,50,0
.goto Desolace,30.57,52.07,50,0
.goto Desolace,29.99,54.66,50,0
.goto Desolace,30.24,57.82
>>杀死|cRXP_ENEMY_Maraudine半人马|r。掠夺它们以获得|T134374:0|t[战争号角口]
>>|cRXP_WARN_这是一个低下降率，可能需要一段时间|r
.collect 6074 
.group 2
step
.goto Desolace,30.31,50.57,25,0
.goto Desolace,29.37,50.94,25,0
.goto Desolace,29.74,53.50
>>单击山顶上俯瞰马劳东的|cRXP_PICK_Mouthpiece Mount|r，然后杀死一波又一波的马劳丁半人马，直到|cRXP_ENEMY_Khan Hratha|r出现。杀死他，然后掠夺他的|cRXP_loot_Key Fragment|r
.complete 1380,1 
.group 2
.mob Maraudine Khan Guard
.mob Maraudine Stormer
.mob Maraudine Khan Advisor
.mob Khan Hratha
step
.goto Desolace,33.90,53.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅丽萨|r
.accept 6132 >>接任务: |cRXP_WARN_救我出去！|r
.target Melizza Brimbuzzle
.group 2
step
>>护送|cRXP_FRIENDLY_Melizza|r到安全地带
>>|cRXP_WARN_在灼热的时候会产生两波暴民。第一波的暴民不会攻击|r|cRXP_FRIENDLY_Melizza|r|cRXP_WARN_。第二波有5个怪物，所以使用所有冷却|r
.complete 6132,1
.group 2
step
.goto Desolace,36.30,79.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1380 >>交任务: |cRXP_FRIENDLY_赫鲁萨可汗|r
.target Uthek the Wise
.group
step
.goto Desolace,47.80,61.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍恩尼兹|r
.turnin 6132 >>交任务: |cRXP_FRIENDLY_救我出去！|r
.turnin 6134 >>交任务: |cRXP_FRIENDLY_幽灵电浆|r
.target Hornizz Brimbuzzle
.isQuestComplete 6132
.group
step
.goto Desolace,47.83,61.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍恩尼兹|r
.turnin 6134 >>交任务: |cRXP_FRIENDLY_幽灵电浆|r
.target Hornizz Brimbuzzle
step
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1488 >>交任务: |cRXP_FRIENDLY_堕落者|r
.target Takata Steelblade
step
#completewith next
.hs >>Hearth返回Taurajo营地
.use 6948
step
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Byula
step
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Tanaris >>前往: 塔纳利斯
.target Omusa Thunderhorn
.zoneskip Tanaris
step
#optional
.abandon 1380 >>Abandon Khan Hratha
.isOnQuest 1380
step
#optional
.abandon 6132 >>放弃，让我离开这里！
.isOnQuest 6132
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 43-45 Tanaris/Dustwallow
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 40-50
#next 45-46 Feralas
step
.goto Tanaris,51.60,26.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 2864 >>交任务: |cRXP_FRIENDLY_特兰雷克|r
.target Tran'rek
step
.goto Tanaris,51.80,26.90
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wanted海报|r
.accept 2781 >>接任务: |cRXP_LOOT_通缉：卡利夫·斯科比斯汀|r
step
.goto Tanaris,52.50,27.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.home >>将您的炉石设置为Gadgetzan
.target Innkeeper Fizzgrimble
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Luglunket|r
.turnin 243 >>交任务: |cRXP_FRIENDLY_进入沙漠|r
.accept 379 >>接任务: |cRXP_LOOT_口渴的比格维兹|r
.accept 1690 >>接任务: |cRXP_LOOT_废土的公正|r
.goto Tanaris,52.46,28.52
.accept 1707 >>接任务: |cRXP_LOOT_收集水袋|r
.goto Tanaris,52.49,28.44
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 992 >>接任务: |cRXP_LOOT_加基森水业公司|r
.target Senior Surveyor Fizzledowser





step
#completewith next
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
>>在前往Steamweidle港的途中，在Noonshade废墟中杀死|cRXP_ENEMY_Wastwark土匪|r和|cRXX_ENEMY_wastwark盗贼|r。抢走他们的|cRXD_Loot_水袋|r
.complete 1690,1 
.complete 1690,2 
.collect 8483,10 
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,67.00,22.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 3520 >>接任务: |cRXP_LOOT_尖啸者的灵魂|r
.target Yeh'kinya
step << Hunter
.goto Tanaris,67.01,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加贝|r
>>|cRXP_BUY_从他那里购买|r|T135661:0|t[Jagged Arrows]|cRXP_Buy_|r
.collect 11285,2600,1690,1 
.target Jabbey
step
.goto Tanaris,67.10,24.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯杜雷|r
.turnin 2872 >>交任务: |cRXP_FRIENDLY_斯杜雷的债务|r
.target Stoley
step
.goto Tanaris,64.22,29.16,60,0
.goto Tanaris,63.62,31.32,60,0
.goto Tanaris,63.24,32.84,60,0
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
.goto Tanaris,63.62,31.32
>>杀死|cRXP_ENEMY_Wastwark土匪|r和|cRXX_ENEMY_wastwark盗贼|r。掠夺他们的|cRXP_Loot_水袋|r
.complete 1690,1 
.complete 1690,2 
.collect 8483,10 
.mob Wastewander Bandit
.mob Wastewander Thief
step << Shaman
#completewith next
.hs >>心灵或星体召回Gadgetzan
.use 6948
step << Shaman
.goto Tanaris,52.50,27.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Fizzgrimble
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Luglunket|r
.turnin 379 >>交任务: |cRXP_FRIENDLY_口渴的比格维兹|r
.turnin 1690 >>交任务: |cRXP_FRIENDLY_废土的公正|r
.accept 1691 >>接任务: |cRXP_LOOT_废土的公正|r
.goto Tanaris,52.46,28.52
.turnin 1707 >>交任务: |cRXP_FRIENDLY_收集水袋|r
.goto Tanaris,52.49,28.44
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
step << skip
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 992 >>交任务: |cRXP_FRIENDLY_加基森水业公司|r
.target Senior Surveyor Fizzledowser

step << !Shaman
.goto Tanaris,52.50,27.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Fizzgrimble
step
#completewith next
.goto Tanaris,50.87,23.09,30,0
.goto Thousand Needles,75.49,97.58,30,0
.zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.turnin 1117 >>交任务: |cRXP_FRIENDLY_地精的谣言|r
.target Kravel Koalbeard
step
.goto Thousand Needles,78.07,77.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔|r
.turnin 1137 >>交任务: |cRXP_FRIENDLY_回复菲兹尔|r
.target Fizzle Brassbolts
.isQuestTurnedIn 1108
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1183 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1186 >>接任务: |cRXP_LOOT_第十八个驾驶员|r
.accept 1190 >>接任务: |cRXP_LOOT_跟上节奏|r
.target Pozzik
.isQuestTurnedIn 1108
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1183 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1186 >>接任务: |cRXP_LOOT_第十八个驾驶员|r
.target Pozzik
step
.goto Thousand Needles,80.32,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1186 >>交任务: |cRXP_FRIENDLY_第十八个驾驶员|r
.accept 1187 >>接任务: |cRXP_LOOT_拉泽瑞克的调整|r
.target Razzeric
step
#completewith next
.goto Thousand Needles,79.81,77.02
>>与|cRXP_FRIENDLY_Zamek|r交谈，创造一种消遣
.turnin 1191 >>交任务: |cRXP_FRIENDLY_扎米克的困扰|r
.target Zamek
.timer 30,Zamek's Distraction RP
step
.goto Thousand Needles,77.21,77.41
>>在金属小屋内点击|cRXP_PICK_Rizzle的无人值守计划|r
.turnin 1190 >>交任务: |cRXP_FRIENDLY_跟上节奏|r
.accept 1194 >>接任务: |cRXP_LOOT_瑞兹尔的图表|r
.isQuestTurnedIn 1108
step
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1118 >>接任务: |cRXP_WARN_返回藏宝海湾|r
.target Kravel Koalbeard
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1194 >>交任务: |cRXP_FRIENDLY_瑞兹尔的图表|r
.target Pozzik
.isQuestTurnedIn 1108
step
.hs >>Gadgetzan之炉
.use 6948
.cooldown item,6948,>0
step
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >>前往: |cRXP_PICK_塔纳利斯|r
.cooldown item,6948,<0
step
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Brackenwall >>Fly to Dustwallow Marsh
.target Bulkrek Ragefist
step
.goto Dustwallow Marsh,36.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫格穆洛克大王|r
.accept 1166 >>接任务: |cRXP_LOOT_莫格穆洛克的任务|r
.target Overlord Mok'Morokk
step
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.target Draz'Zilb
.accept 1169 >>接任务: |cRXP_LOOT_群龙之首|r
step
.goto Dustwallow Marsh,37.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔格|r
.accept 1168 >>接任务: |cRXP_LOOT_黑龙军团|r
.target Tharg
step
#completewith MokSnuff
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
>>找到并杀死|cRXP_ENEMY_Deadmire|r。他是一个在该地区周围的水洼中巡逻的白鳄鱼。掠夺他的|cRXP_Loot_Toth|r
.complete 1205,1 
.unitscan Deadmire
step
.goto Dustwallow Marsh,54.10,56.50
>>在坠毁的齐柏林飞船附近的地面上抢夺|cRXP_PICK_Crate|r，用于|cRXP-Loot_Seaforium助推器|r
.complete 1187,1 
step
.loop 25,Dustwallow Marsh,56.51,61.15,55.46,61.60,54.80,62.41,54.31,63.24,54.68,64.41,56.10,65.14,56.52,63.62,56.81,62.56,57.30,60.20
>>在海滩上杀死|cRXP_ENEMY_Muckshell Makruras|r。为|cRXP_Loot_Pendint|r掠夺它们
.complete 1261,1 
.isOnQuest 1261
.mob Muckshell Razorclaw
.mob Muckshell Clacker
.mob Muckshell Scrabbler
.mob Muckshell Pincer
.mob Muckshell Snapclaw
.unitscan Lord Angler
step
#completewith Dragondeez
>>杀死该区域的|cRXP_ENEMY_Firemane Dragonkins|r
.complete 1168,1 
.complete 1168,2 
.complete 1168,3 
.mob Firemane Scout
.mob Firemane Ash Tail
.mob Firemane Scalebane
step
#completewith Firemanemobs
>>杀死你在该区域边界上看到的|cRXP_ENEMY_Whelps|r。掠夺他们的|cRXP_Loot_Tongues|r和|cRXP-Loot_Thearts|r
.complete 1169,1 
.complete 1169,2 
.mob Searing Whelp
.mob Searing Hatchling
step
#label MokSnuff
.goto Dustwallow Marsh,44.50,66.00
>>将|cRXP_PICK_Barrel|r在地上掠夺|cRXP_Loot_Mok'Morokk的Snuff|r
.complete 1166,1 
step
.goto Dustwallow Marsh,38.70,65.60
>>将|cRXP_PICK_Vase|r从地上偷走|cRXP_Loot_Mok'Morokk的Grog|r。之后进入洞穴
.complete 1166,2 
step
#label Dragondeez
.goto Dustwallow Marsh,36.60,69.50
>>偷走洞穴后面的|cRXP_PICK_Chest|r，获得|cRXP_Loot_Mok'Morokk的Strongbox|r。
>>当你在里面的时候杀死|cRXP_ENEMY_Firemane Scalebane|r
.complete 1166,3 
.complete 1168,3 
.mob Firemane Scalebane
step
#label Firemanemobs
.goto Dustwallow Marsh,39.08,65.92,80,0
.goto Dustwallow Marsh,42.81,66.35,80,0
.goto Dustwallow Marsh,44.63,66.16,80,0
.goto Dustwallow Marsh,39.08,65.92
>>完成杀死该区域的|cRXP_ENEMY_Firemane Dragonkins|r
.complete 1168,1 
.complete 1168,2 
.complete 1168,3 
.mob Firemane Scout
.mob Firemane Ash Tail
.mob Firemane Scalebane
step
.goto Dustwallow Marsh,48.10,80.85,60,0
.goto Dustwallow Marsh,47.09,82.39,60,0
.goto Dustwallow Marsh,45.60,82.28,60,0
.goto Dustwallow Marsh,43.99,81.35,60,0
.goto Dustwallow Marsh,42.31,80.73,60,0
.goto Dustwallow Marsh,42.08,78.40,60,0
.goto Dustwallow Marsh,42.45,75.89,60,0
.goto Dustwallow Marsh,45.60,82.28
>>完成杀戮|cRXP_ENEMY_Whelps|r。掠夺他们的|cRXP_Loot_Tongues|r和|cRXP-Loot_Hears|r
.complete 1169,1 
.complete 1169,2 
.mob Searing Whelp
.mob Searing Hatchling
step
#completewith next
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
>>找到并杀死|cRXP_ENEMY_Deadmire|r。他是一个在该地区周围的水洼中巡逻的白鳄鱼。掠夺他的|cRXP_Loot_Toth|r
.complete 1205,1 
.unitscan Deadmire
.dungeon ZF
step
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔贝萨|r
.accept 2846 >>接任务: |cRXP_WARN_深渊皇冠|r
.target Tabetha
.dungeon ZF
step
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
.goto Dustwallow Marsh,50.57,52.82,50,0
.goto Dustwallow Marsh,50.51,55.20,50,0
.goto Dustwallow Marsh,49.15,57.14,50,0
.goto Dustwallow Marsh,48.01,55.61,50,0
.goto Dustwallow Marsh,47.24,57.70,50,0
.goto Dustwallow Marsh,45.94,61.21,50,0
.goto Dustwallow Marsh,44.69,62.28,50,0
.goto Dustwallow Marsh,45.94,61.21,50,0
.goto Dustwallow Marsh,47.24,57.70,50,0
.goto Dustwallow Marsh,47.24,54.53,50,0
.goto Dustwallow Marsh,46.08,54.38,50,0
.goto Dustwallow Marsh,45.72,53.06,50,0
.goto Dustwallow Marsh,46.08,54.38,50,0
.goto Dustwallow Marsh,47.73,53.18,50,0
.goto Dustwallow Marsh,47.15,51.45,50,0
.goto Dustwallow Marsh,50.57,52.82
>>找到并杀死|cRXP_ENEMY_Deadmire|r。他是一个在该地区周围的水洼中巡逻的白鳄鱼。掠夺他的|cRXP_Loot_Toth|r
.complete 1205,1 
.unitscan Deadmire
step
#completewith next
.goto Dustwallow Marsh,36.64,31.72,120 >>前往Brackenwall村
step
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1169 >>交任务: |cRXP_FRIENDLY_群龙之首|r
.target Draz'Zilb
step
.goto Dustwallow Marsh,36.30,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫格穆洛克大王|r
.turnin 1166 >>交任务: |cRXP_FRIENDLY_莫格穆洛克的任务|r
.target Overlord Mok'Morokk
step
.goto Dustwallow Marsh,37.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔格|r
.turnin 1168 >>交任务: |cRXP_FRIENDLY_黑龙军团|r
.target Tharg
step
.goto Dustwallow Marsh,35.30,30.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1261 >>交任务: |cRXP_FRIENDLY_玛尔格的嘱托|r
.accept 1262 >>接任务: |cRXP_LOOT_向佐尔报告|r
.target Nazeer Bloodpike
.isQuestComplete 1261
step
.goto Dustwallow Marsh,35.30,30.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.accept 1262 >>接任务: |cRXP_LOOT_向佐尔报告|r
.target Nazeer Bloodpike
.isQuestTurnedIn 1261
step
#completewith next
.hs >>Gadgetzan之炉
.use 6948
step
.goto Tanaris,52.50,27.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Fizzgrimble
step
.goto Tanaris,51.80,26.90
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wanted海报|r
.accept 2781 >>接任务: |cRXP_LOOT_通缉：卡利夫·斯科比斯汀|r
step
.use 8524 >>使用|T134459:0|t[|cRXP_LOOT_Model 4711-FTZ电源|r]启动任务
.accept 654 >>接任务: |cRXP_LOOT_塔纳利斯的样本|r
step
#completewith next
>>杀死|cRXP_ENEMY_Basilisk|r、|cRXD_ENEMY_Hyenas|r和|cRXP_ENEMY_Scorpids|r。掠夺它们的|cRXP_Loot_Samples|r
>>使用|cRXP_LOOT_Samples|r对其进行测试
*|cRXP_WARN_Do not delete any untested samples|r
.complete 654,1 
.complete 654,2 
.complete 654,3 
.use 9437
.use 9439
.use 9442
.mob Glasshide Basilisk
.mob Glasshide Gazer
.mob Glasshide Petrifier
.mob Starving Blisterpaw
.mob Blisterpaw Hyena
.mob Murderous Blisterpaw
.mob Rabid Blisterpaw
.mob Scorpid Tail Lasher
.mob Scorpid Hunter
.mob Scorpid Dunestalker
.mob Scorpid Duneburrower
step
.goto Tanaris,39.10,29.30
.use 8584 >>池中的|T134867:0|t[未连接的Dowsing Widget]。在不攻击他们的情况下逃离两个繁殖的暴民。
.complete 992,1 
step
.goto Tanaris,55.94,32.72,90,0
.goto Tanaris,53.75,35.37,90,0
.goto Tanaris,51.13,35.41,90,0
.goto Tanaris,50.18,32.78,90,0
.goto Tanaris,47.99,33.20,90,0
.goto Tanaris,45.47,32.72,90,0
.goto Tanaris,42.52,32.90,90,0
.goto Tanaris,41.23,33.18,90,0
.goto Tanaris,38.30,32.55,90,0
.goto Tanaris,47.99,33.20
>>杀死|cRXP_ENEMY_Basilisk|r、|cRXD_ENEMY_Hyenas|r和|cRXP_ENEMY_Scorpids|r。掠夺它们的|cRXP_Loot_Samples|r
>>使用|cRXP_LOOT_Samples|r对其进行测试
*|cRXP_WARN_Do not delete any untested samples|r
.complete 654,1 
.complete 654,2 
.complete 654,3 
.use 9437
.use 9439
.use 9442
.mob Glasshide Basilisk
.mob Glasshide Gazer
.mob Glasshide Petrifier
.mob Starving Blisterpaw
.mob Blisterpaw Hyena
.mob Murderous Blisterpaw
.mob Rabid Blisterpaw
.mob Scorpid Tail Lasher
.mob Scorpid Hunter
.mob Scorpid Dunestalker
.mob Scorpid Duneburrower
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 992 >>交任务: |cRXP_FRIENDLY_加基森水业公司|r
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,52.40,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.turnin 654 >>交任务: |cRXP_FRIENDLY_塔纳利斯的样本|r
.target Chief Engineer Bilgewhizzle
.isOnQuest 654
step
#completewith next
.line Tanaris,61.91,35.57,61.91,34.80,62.93,33.28,63.92,31.73,63.93,33.36,63.43,34.33,62.47,35.20,61.91,35.57,60.95,36.69,60.33,37.27,59.56,38.41,58.86,39.41,59.56,38.41,60.33,37.27,60.95,36.69,61.91,35.57,62.47,35.20,63.35,37.42,62.21,37.99,60.84,38.59,62.21,37.99,63.35,37.42,64.21,36.43,64.64,35.28,64.30,33.66,64.18,32.42,63.94,31.73
>>杀死|cRXP_ENEMY_Caliph Scorpasting|r。掠夺他的|cRXP_Loot_Head |r
>>|cRXP_WARN_小心；他身上带着两个偷加的|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
.goto Tanaris,58.75,36.42,80,0
.goto Tanaris,60.10,37.07,80,0
.goto Tanaris,60.84,38.91,80,0
.goto Tanaris,61.04,32.76,80,0
.goto Tanaris,61.84,34.95,80,0
.goto Tanaris,63.48,37.90,80,0
.goto Tanaris,63.80,39.94,80,0
.goto Tanaris,65.10,39.50,80,0
.goto Tanaris,65.36,36.67,80,0
.goto Tanaris,61.04,32.76
>>杀死|cRXP_ENEMY_Wastravelt盗贼|r、|cRXD_ENEMY_Assassins|r和|cRXP_ENEMY_Shadow法师|r
.complete 1691,1 
.complete 1691,2 
.complete 1691,3 
.mob Wastewander Rogue
.mob Wastewander Assassin
.mob Wastewander Shadow Mage
step
.line Tanaris,61.91,35.57,61.91,34.80,62.93,33.28,63.92,31.73,63.93,33.36,63.43,34.33,62.47,35.20,61.91,35.57,60.95,36.69,60.33,37.27,59.56,38.41,58.86,39.41,59.56,38.41,60.33,37.27,60.95,36.69,61.91,35.57,62.47,35.20,63.35,37.42,62.21,37.99,60.84,38.59,62.21,37.99,63.35,37.42,64.21,36.43,64.64,35.28,64.30,33.66,64.18,32.42,63.94,31.73
.goto Tanaris,61.09,35.99,60,0
.goto Tanaris,61.91,34.80,60,0
.goto Tanaris,62.93,33.28,60,0
.goto Tanaris,63.92,31.73,60,0
.goto Tanaris,63.93,33.36,60,0
.goto Tanaris,63.43,34.33,60,0
.goto Tanaris,62.47,35.20,60,0
.goto Tanaris,61.91,35.57,60,0
.goto Tanaris,60.95,36.69,60,0
.goto Tanaris,60.33,37.27,60,0
.goto Tanaris,59.56,38.41,60,0
.goto Tanaris,58.86,39.41,60,0
.goto Tanaris,59.56,38.41,60,0
.goto Tanaris,60.33,37.27,60,0
.goto Tanaris,60.95,36.69,60,0
.goto Tanaris,61.91,35.57,60,0
.goto Tanaris,62.47,35.20,60,0
.goto Tanaris,63.35,37.42,60,0
.goto Tanaris,62.21,37.99,60,0
.goto Tanaris,60.84,38.59,60,0
.goto Tanaris,62.21,37.99,60,0
.goto Tanaris,63.35,37.42,60,0
.goto Tanaris,64.21,36.43,60,0
.goto Tanaris,64.64,35.28,60,0
.goto Tanaris,64.30,33.66,60,0
.goto Tanaris,64.18,32.42,60,0
.goto Tanaris,63.94,31.73
>>杀死|cRXP_ENEMY_Caliph Scorpasting|r。掠夺他的|cRXP_Loot_Head |r
>>|cRXP_WARN_小心；他身上带着两个偷加的|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
.goto Tanaris,52.40,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.turnin 1691 >>交任务: |cRXP_FRIENDLY_废土的公正|r
.turnin 2781 >>交任务: |cRXP_FRIENDLY_通缉：卡利夫·斯科比斯汀|r
.target Chief Engineer Bilgewhizzle
step
#sticky
#completewith EnterUldaman
.subzone 1337 >>现在你应该找一个团体去乌达曼
.dungeon ULDA
step << !Mage
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bulkrek Ragefist
.zoneskip Tanaris
.dungeon ULDA
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
.dungeon ULDA
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10185 >>训练你的职业技能
.target Pephredo
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10197 >>训练你的职业技能
.target Pephredo
.xp <46,1
.dungeon ULDA
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10927 >>训练你的职业技能
.target Ur'kyo
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10945 >>训练你的职业技能
.target Ur'kyo
.xp <46,1
.dungeon ULDA
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 16315 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10472 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <46,1
.dungeon ULDA
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14285 >>训练你的职业技能
.target Ormak Grimshot
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14304 >>训练你的职业技能
.target Ormak Grimshot
.xp <46,1
.dungeon ULDA
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11584 >>训练你的职业技能
.target Grezz Ragefist
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11578 >>训练你的职业技能
.target Grezz Ragefist
.xp <46,1
.dungeon ULDA
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11341 >>训练你的职业技能
.target Ormok
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11293 >>训练你的职业技能
.target Ormok
.xp <46,1
.dungeon ULDA
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
.dungeon ULDA
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11671 >>训练你的职业技能
.target Mirket
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11699 >>训练你的职业技能
.target Mirket
.xp <46,1
.dungeon ULDA
step
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
.dungeon ULDA
step
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
.dungeon ULDA
step
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Badlands >>飞到荒地
.target Thysta
.dungeon ULDA
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加卡尔|r
.accept 2202 >>接任务: |cRXP_LOOT_奥达曼的蘑菇|r
.target Jarkal Mossmeld
.isQuestTurnedIn 2258
.dungeon ULDA
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 709 >>接任务: |cRXP_LOOT_化解灾难|r
.target Theldurin the Lost
.dungeon ULDA
step
.goto 1415,52.36,63.59
.zone 1415 >>Travel to Uldaman
.dungeon ULDA
step
#completewith EnterUldaman
>>如果您掠夺了|T133289:0|t[破碎的项链]，请将其保存在您的库存中
.collect 7666,1 
.dungeon ULDA
step
#completewith Treasure
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
>>|cRXP_WARN_这可以在Uldaman内部和外部完成|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
.goto 1415,52.107,64.008
>>打开|cRXP_PICK_Ancient胸脯|r。为龙的|cRXP_Loot_Tablet|r掠夺
>>|cRXP_WARN_这是在Uldaman之外完成的|r
.complete 709,1 
.isOnQuest 709
.dungeon ULDA
step
#label Treasure
.goto Eastern Kingdoms,53.81,57.94,0
.goto Eastern Kingdoms,53.78,58.23
>>在南公堂南角掠夺|cRXP_PICK_Garrett家宝|r
>>|cRXP_WARN_南公堂位于Uldaman实例入口的西南侧|r
.complete 2342,1 
.isOnQuest 2342
.dungeon ULDA
step
#completewith next
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
>>|cRXP_WARN_这可以在Uldaman内部和外部完成|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
#label EnterUldaman
.goto 1415,51.851,63.40
.zone 230 >>Zone into Uldaman
.dungeon ULDA
step
#completewith next
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
>>|cRXP_WARN_这可以在Uldaman内部和外部完成|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
>>杀死|cRXP_ENEMY_Archaedas|r
>>单击|cRXP_PICK_挪威的光盘|r
.accept 2278 >>接任务: |cRXP_WARN_白金圆盘|r
.mob Archaedas
.dungeon ULDA
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺甘农的看门人|r
.complete 2278,1 
.skipgossip
.target Lore Keeper of Norgannon
.dungeon ULDA
step
>>单击|cRXP_PICK_挪威的光盘|r
.turnin 2278 >>交任务: |cRXP_FRIENDLY_白金圆盘|r
.accept 2280 >>接任务: |cRXP_WARN_白金圆盘|r
.dungeon ULDA
step
.zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
.dungeon ULDA
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 709 >>交任务: |cRXP_FRIENDLY_化解灾难|r
.accept 728 >>接任务: |cRXP_LOOT_远赴幽暗城|r
.target Theldurin the Lost
.isQuestComplete 709
.dungeon ULDA
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加卡尔|r
.turnin 2202 >>交任务: |cRXP_FRIENDLY_奥达曼的蘑菇|r
.target Jarkal Mossmeld
.dungeon ULDA
step
.hs >>Gadgetzan之炉
.use 6948
.cooldown item,6948,>0
.dungeon ULDA
step
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Freewind >>飞到Freewind Post
.target Bulkrek Ragefist
step
#optional
.abandon 2202 >>Abandon 接任务: |cRXP_LOOT_奥达曼的蘑菇|r
.isOnQuest 2202
.dungeon ULDA
step
#optional
.abandon 709 >>放弃末日的解决方案
.isOnQuest 709
.dungeon ULDA
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 45-46 Feralas
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 40-50
#next 46-47南方荆棘
step
#completewith next
.zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step
.goto Feralas,75.70,44.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥尔文·吉兹米克|r
.accept 2987 >>接任务: |cRXP_LOOT_戈杜尼钴矿石|r
.target Orwin Gizzmick
step
.goto Feralas,75.70,43.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
.turnin 2981 >>交任务: |cRXP_FRIENDLY_菲拉斯的危机|r
.accept 2975 >>接任务: |cRXP_LOOT_菲拉斯的食人魔|r
.target Rok Orhan
step
.goto Feralas,76.00,42.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁伊格·碎颅|r
.accept 2973 >>接任务: |cRXP_LOOT_新斗篷的光辉|r
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈杜肯·迅蹄|r
.accept 2862 >>接任务: |cRXP_LOOT_与豺狼人开战|r
.target Hadoken Swiftstrider
step
.goto Feralas,74.50,42.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入长屋，然后与|cRXP_FRIENDLY_Jangdor|r通话
.accept 2822 >>接任务: |cRXP_LOOT_质量的保证|r
.target Jangdor Swiftstrider
step
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格鲁尔|r
.home >>把你的炉石放在莫雅奇营地
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Greul
step
#sticky
#completewith YetiHide
>>当您在整个费拉拉进行探索时，请注意|T132836:0|t[|cRXP_FRIENDLY_Distress Beacon|r]掉落
.collect 8705,1,2766
.accept 2766 >>接任务: |cRXP_LOOT_寻找OOX-22/FE！|r
step
.goto Feralas,72.79,39.32,60,0
.goto Feralas,72.11,37.21,60,0
.goto Feralas,73.18,36.29,60,0
.goto Feralas,72.79,39.32
>>杀死Mojache营地西北部的|cRXP_ENEMY_Woodpaw Gnolls|r。掠夺他们的|cRXP_Loot_Manes|r
.complete 2862,1 
.mob Woodpaw Mongrel
.mob Woodpaw Trapper
.mob Woodpaw Brute
.mob Woodpaw Reaver
.mob Woodpaw Mystic
.mob Woodpaw Alpha
step
#completewith Scroll
.goto Feralas,75.30,28.26,0
.use 9466 >>站在蓝色圆圈附近，然后使用|T134435:0|t[奥温铲子]
>>为|cRXP_Loot_Gordunni Cobalt|r掠夺|cRX_PICK_Gordunni土丘|r
.complete 2987,1 
step
#completewith Shovel
.goto Feralas,76.10,33.20,0
>>在戈杜尼前哨杀死|cRXP_ENEMY_Gordunni食人魔|r、|cRXD_ENEMY_食人魔法师|r和|cRXP_ENEMY_Brutes|r
.complete 2975,1 
.complete 2975,2 
.complete 2975,3 
.mob Gordunni Ogre
.mob Gordunni Ogre Mage
.mob Gordunni Brute
step
#label Scroll
.goto Feralas,75.25,34.44,0
.loop 25,Feralas,79.4,34.8,80.5,34.3,80.8,35.0,75.1,29.8,75.2,28.7,74.6,27.9,79.4,34.8,80.5,34.3,80.8,35.0,75.1,29.8,75.2,28.7,74.6,27.9,79.4,34.8
>>将|cRXP_PICK_Scroll|r在地面上展开|T134943:0|t[|cRXP-Loot_Gordunni Scroll|r]。使用它开始任务
>>|cRXP_WARN_跟随箭头到达不同的产卵位置|r
.collect 9370,1,2978,1 
.accept 2978 >>接任务: |cRXP_LOOT_戈杜尼卷轴|r
.use 9370
step
#label Shovel
.goto Feralas,74.29,28.98,30,0
.goto Feralas,75.35,28.23,30,0
.goto Feralas,76.01,29.00,30,0
.goto Feralas,76.89,29.60,30,0
.goto Feralas,76.47,33.05,30,0
.goto Feralas,76.70,33.86,30,0
.goto Feralas,74.29,28.98
.use 9466 >>站在蓝色圆圈附近，然后使用|T134435:0|t[奥温铲子]
>>为|cRXP_Loot_Gordunni Cobalt|r掠夺|cRX_PICK_Gordunni土丘|r
.complete 2987,1 
step
.goto Feralas,74.82,27.53,50,0
.goto Feralas,75.25,29.55,50,0
.goto Feralas,76.51,30.48,50,0
.goto Feralas,75.45,34.59,50,0
.goto Feralas,74.82,27.53
>>在戈杜尼前哨杀死|cRXP_ENEMY_Gordunni食人魔|r、|cRXD_ENEMY_食人魔法师|r和|cRXP_ENEMY_Brutes|r
.complete 2975,1 
.complete 2975,2 
.complete 2975,3 
.mob Gordunni Ogre
.mob Gordunni Ogre Mage
.mob Gordunni Brute
step
.goto Feralas,76.10,33.20
.xp 45 >>升级到45级
step << Shaman
#completewith WoodpawWarTurnin
.hs >>赫斯前往莫贾奇营地
.use 6948
step << !Shaman
#completewith next
.goto Feralas,74.73,43.59,150 >>Return to Camp Mojache
step
#label WoodpawWarTurnin
.goto Feralas,74.90,42.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈杜肯·迅蹄|r
.turnin 2862 >>交任务: |cRXP_FRIENDLY_与豺狼人开战|r
.accept 2863 >>接任务: |cRXP_LOOT_突然袭击|r
.target Hadoken Swiftstrider
step
.goto Feralas,75.80,43.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
.turnin 2975 >>交任务: |cRXP_FRIENDLY_菲拉斯的食人魔|r
.accept 2980 >>接任务: |cRXP_LOOT_菲拉斯的食人魔|r
.turnin 2978 >>交任务: |cRXP_FRIENDLY_戈杜尼卷轴|r
.accept 2979 >>接任务: |cRXP_LOOT_黑暗仪式|r
.target Rok Orhan
step
.goto Feralas,75.70,44.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥尔文·吉兹米克|r
.turnin 2987 >>交任务: |cRXP_FRIENDLY_戈杜尼钴矿石|r
.target Orwin Gizzmick
step
.goto Feralas,68.80,48.00
>>杀死|cRXP_ENEMY_Sprite飞镖手|r。掠夺他们的|cRXX_Loot_Fwing|r
.complete 2973,1 
.mob Sprite Darter
step
.loop 25,Feralas,67.50,55.60,69.05,55.78,68.60,54.25,71.51,55.98,72.42,56.63,73.21,56.25,72.42,56.63,71.51,55.98,68.60,54.25,69.05,55.7867.50,55.60
>>在指定时间内杀死|cRXP_ENEMY_Woodpaw Alphas|r
*|cRXP_WARN_There's usually one in each camp|r
.complete 2863,1 
.unitscan Woodpaw Alpha
step
#completewith KruegTurnin1
.hs >>赫斯前往莫贾奇营地
.use 6948
.cooldown item,6948,>0
step
#completewith next
.goto Feralas,74.73,43.59,150 >>Return to Camp Mojache
.cooldown item,6948,<0
step
#label KruegTurnin1
.goto Feralas,76.00,42.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁伊格·碎颅|r
.turnin 2973 >>交任务: |cRXP_FRIENDLY_新斗篷的光辉|r
.accept 2974 >>接任务: |cRXP_LOOT_可怕的发现|r
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈杜肯·迅蹄|r
.turnin 2863 >>交任务: |cRXP_FRIENDLY_突然袭击|r
.accept 2902 >>接任务: |cRXP_LOOT_调查木爪岭|r
.target Hadoken Swiftstrider
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step
.goto Feralas,69.92,38.97,60,0
.goto Feralas,68.71,39.90,60,0
.goto Feralas,68.08,46.12,60,0
.goto Feralas,66.63,46.62,60,0
.goto Feralas,69.92,38.97,60,0
.goto Feralas,66.63,46.62
>>杀死|cRXP_ENEMY_Grimtotam牛头人|r。掠夺他们的|cRXX_Loot_Horns|r
>>|cRXP_ENEMY_冷酷图腾突袭者|r|cRXP_WARN_cast|r|T132149:0|t[Net]|cRXP-WARN_其移动固定10秒|r
.complete 2974,1 
.mob Grimtotem Shaman
.mob Grimtotem Raider
.mob Grimtotem Naturalist
step
.goto Feralas,71.60,55.90
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击板条箱顶部的|cRXP_PICK_Woodpaw作战地图|r
.turnin 2902 >>交任务: |cRXP_FRIENDLY_调查木爪岭|r
.accept 2903 >>接任务: |cRXP_LOOT_作战计划|r
step
.goto Feralas,76.00,42.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁伊格·碎颅|r
.turnin 2974 >>交任务: |cRXP_FRIENDLY_可怕的发现|r
.accept 2976 >>接任务: |cRXP_LOOT_可怕的发现|r
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈杜肯·迅蹄|r
.turnin 2903 >>交任务: |cRXP_FRIENDLY_作战计划|r
.accept 7730 >>接任务: |cRXP_LOOT_祖卡什的入侵|r
.accept 7731 >>接任务: |cRXP_LOOT_毒刺鞭笞者|r
.target Hadoken Swiftstrider
step
#completewith next
.goto Feralas,73.38,62.94,0
>>杀死|cRXP_ENEMY_Zukk’ash Silithi|r。掠夺他们的|cRXP_Loot_CARPACE|r
.complete 7730,1 
.mob Zukk'ash Worker
.mob Zukk'ash Wasp
.mob Zukk'ash Tunneler
.mob Zukk'ash Stinger
step
.goto Feralas,73.38,63.24,-1
.goto Feralas,76.36,61.19,-1
>>杀死|cRXP_ENEMY_Stinglasher |r。掠夺它的|cRXX_Loot_GRAND|r
>>|cRXP_WARN_这群暴徒可能很难确保有可用的冷却|r
>>它在Silithid Hives的外围巡逻
.complete 7731,1 
.unitscan Stinglasher
step
.goto Feralas,75.21,61.82,60,0
.goto Feralas,74.10,62.42,60,0
.goto Feralas,72.86,62.78,60,0
.goto Feralas,75.21,61.82,60,0
.goto Feralas,72.86,62.78
>>杀死|cRXP_ENEMY_Zukk’ash Silithi|r。掠夺他们的|cRXP_Loot_CARPACE|r
.complete 7730,1 
.mob Zukk'ash Worker
.mob Zukk'ash Wasp
.mob Zukk'ash Tunneler
.mob Zukk'ash Stinger
step
.goto Feralas,74.90,42.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈杜肯·迅蹄|r
.turnin 7730 >>交任务: |cRXP_FRIENDLY_祖卡什的入侵|r
.turnin 7731 >>交任务: |cRXP_FRIENDLY_毒刺鞭笞者|r
.accept 7732 >>接任务: |cRXP_LOOT_祖卡什报告|r
.target Hadoken Swiftstrider
step
#completewith egghypo
.goto Feralas,56.15,46.88,0
.use 10699 >>杀死|cRXP_ENEMY_Vale尖叫者|r，然后在他们的尸体上使用|T135474:0|t[Yeh'kinya's Bramble]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
#completewith next
.goto Feralas,58.59,69.85,0
>>杀死|cRXP_ENEMY_Gordunni法师领主|r。掠夺他们的|cRXX_Loot_Orb|r
.complete 2979,1 
.mob Gordunni Mage-Lord
step
.goto Feralas,61.86,54.46,60,0
.goto Feralas,61.03,56.55,60,0
.goto Feralas,60.69,58.52,60,0
.loop 25,Feralas,59.72,62.77,58.93,64.13,58.31,65.20,58.25,66.56,58.55,67.75,59.54,68.37,60.85,69.68,60.95,67.65,60.35,66.63,60.11,64.93,59.58,64.51,59.72,62.77
>>在伊西尔迪恩废墟周围杀死|cRXP_ENEMY_Gordunni Maulers|r、|cRXP_ENEMY_Warlocks|r和|cRXD_ENEMY_Shaman|r
.complete 2980,1 
.complete 2980,2 
.complete 2980,3 
.mob Gordunni Shaman
.mob Gordunni Warlock
.mob Gordunni Mauler
step
.loop 25,Feralas,59.72,62.77,58.93,64.13,58.31,65.20,58.25,66.56,58.55,67.75,59.54,68.37,60.85,69.68,60.95,67.65,60.35,66.63,60.11,64.93,59.58,64.51,59.72,62.77
>>杀死|cRXP_ENEMY_Gordunni法师领主|r。掠夺他们的|cRXX_Loot_Orb|r
.complete 2979,1 
.mob Gordunni Mage-Lord
step
#completewith next
.use 10699 >>杀死|cRXP_ENEMY_Vale尖叫者|r，然后在他们的尸体上使用|T135474:0|t[Yeh'kinya's Bramble]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
#label egghypo
.goto Feralas,56.66,75.89
>>沿着山脉向南旅行，然后从一个河马巢穴中掠夺一个|T132833:0|t[河马蛋]
.collect 8564,1 
step
#completewith next
.use 10699 >>杀死|cRXP_ENEMY_Rogue Vale尖叫者|r，然后在他们的尸体上使用|T135474:0|t[Yeh'kinya的荆棘]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
#ssf
.loop 25,Feralas,56.71,64.09,56.61,62.01,55.87,60.34,54.79,60.44,55.30,62.17,54.49,64.33,55.23,66.21,55.88,65.91,56.71,64.09
>>杀死|cRXP_ENEMY_Frayfeather Hippogryphs |r。掠夺它们的|cRXX_Loot_Features|r
.collect 4589,10,7842,1 
.mob Frayfeather Hippogryph
step
#ah
.loop 25,Feralas,56.71,64.09,56.61,62.01,55.87,60.34,54.79,60.44,55.30,62.17,54.49,64.33,55.23,66.21,55.88,65.91,56.71,64.09
>>杀死|cRXP_ENEMY_Frayfeather Hippogryphs |r。掠夺它们的|cRXX_Loot_Features|r
>>|cRXP_ENEMY_你也可以从拍卖行购买|r
.collect 4589,10,7842,1 
.mob Frayfeather Hippogryph
step
.goto Feralas,58.45,55.83,-1
.goto Feralas,56.70,56.13,-1
>>杀死|cRXP_ENEMY_Vale尖叫者|r，然后在他们的尸体上使用|T135474:0|t[Yeh'kinya's Bramble]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
#label YetiHide
.goto Feralas,55.14,56.35,70,0
.goto Feralas,53.12,56.27,70,0
.goto Feralas,52.05,58.40
>>杀死|cRXP_ENEMY_Yetis|r。掠夺他们的|cRXX_Loot_Hides|r
.complete 2822,1 
.mob Feral Scar Yeti
.mob Enraged Feral Scar
.mob Hulking Feral Scar
.mob Lurking Feral Scar
.mob Bloodroar the Stalker
step
.accept 2766 >>接任务: |cRXP_LOOT_寻找OOX-22/FE！|r
.itemcount 8705,1 
.use 8705
step
.goto Feralas,53.35,55.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-22/FE|r
.turnin 2766 >>交任务: |cRXP_FRIENDLY_寻找OOX-22/FE！|r
.target Homing Robot OOX-22/FE
.isOnQuest 2766
step
.goto Feralas,53.35,55.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-22/FE|r
.accept 2767 >>接任务: |cRXP_LOOT_拯救OOX-22/FE！|r
>>|cRXP_WARN_这开始了鸡的护送；准备好使用冷却/消耗品，因为这个任务很难|r

.target Homing Robot OOX-22/FE
.isQuestTurnedIn 2766
step
.goto Feralas,55.47,56.37,30,0
.goto Feralas,54.38,51.32,60,0
.goto Feralas,50.31,49.91,40,0
.goto Feralas,48.38,44.83,40,0
.goto Feralas,45.04,43.27
>>|cRXP_WARN_将产生3个波浪。将所有很长的冷却时间保存为|r|cRXP_ENEMY_Gnolls|r|cRXP_WARN_，并在|r| cRXP__ENEMY_Yetis上使用一些|r
+3 Yetis (each level 46)
+3 Gorillas
+4 Gnolls
.complete 2767,1 
.isOnQuest 2767
.target Homing Robot OOX-22/FE
step
#completewith next
.hs >>心回到Mojache营地
.use 6948
step
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格鲁尔|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
>>|cRXP_WARN_确保您不出售任何|r|T135992:0|t[优雅的长羽毛]
.target Innkeeper Greul
step
.goto Feralas,75.80,43.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
.turnin 2980 >>交任务: |cRXP_FRIENDLY_菲拉斯的食人魔|r
.turnin 2979 >>交任务: |cRXP_FRIENDLY_黑暗仪式|r
.accept 3002 >>接任务: |cRXP_LOOT_戈杜尼宝珠|r
.target Rok Orhan
step
.goto Feralas,74.40,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.accept 3121 >>接任务: |cRXP_LOOT_奇怪的要求|r
.target Witch Doctor Uzer'i
step
.goto Feralas,74.40,42.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杉多尔·迅蹄|r
.turnin 2822 >>交任务: |cRXP_FRIENDLY_质量的保证|r
.target Jangdor Swiftstrider
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step << Druid
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 1824 >>训练你的职业技能
.target Jannos Lighthoof
.xp <44,1
.xp >46,1
step << Druid
#optional
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9821 >>训练你的职业技能
.target Jannos Lighthoof
.xp <46,1
step << !Mage
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Shyn
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
step
.goto Thunder Bluff,34.42,46.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.turnin 2280 >>交任务: |cRXP_FRIENDLY_白金圆盘|r
.accept 2440 >>接任务: |cRXP_WARN_白金圆盘|r
.target Sage Truthseeker
.isQuestTurnedIn 2278
.dungeon ULDA
step
.goto Thunder Bluff,46.61,33.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_本娜·冰蹄|r
.turnin 2440 >>交任务: |cRXP_FRIENDLY_白金圆盘|r
.accept 2965 >>接任务: |cRXP_WARN_奥丹姆的线索|r
.target Bena Winterhoof
.isQuestTurnedIn 2278
.dungeon ULDA
step
.goto Thunder Bluff,75.67,31.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
.turnin 2965 >>交任务: |cRXP_FRIENDLY_奥丹姆的线索|r
.accept 2966 >>接任务: |cRXP_WARN_拭目以待|r
.target Nara Wildmane
.isQuestTurnedIn 2278
.dungeon ULDA
step
.goto Thunder Bluff,61.50,80.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1205 >>交任务: |cRXP_FRIENDLY_死沼巨鳄|r
.target Melor Stonehoof
.isQuestComplete 1205
step << !Mage
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Tal
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step
.goto Orgrimmar,39.20,86.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤塞尔奈|r
.turnin 3002 >>交任务: |cRXP_FRIENDLY_戈杜尼宝珠|r
.target Uthel'nay
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10185 >>训练你的职业技能
.target Pephredo
.xp <44,1
.xp >46,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10197 >>训练你的职业技能
.target Pephredo
.xp <46,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10927 >>训练你的职业技能
.target Ur'kyo
.xp <44,1
.xp >46,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10945 >>训练你的职业技能
.target Ur'kyo
.xp <46,1
step
.goto Orgrimmar,39.00,38.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
.turnin 1262 >>交任务: |cRXP_FRIENDLY_向佐尔报告|r
.target Zor Lonetree
.isOnQuest 1262
step
.goto Orgrimmar,39.00,38.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
.accept 7541 >>接任务: |cRXP_WARN_为部落效力|r
.turnin 7541 >>交任务: |cRXP_FRIENDLY_为部落效力|r
.target Zor Lonetree
.isQuestTurnedIn 1262
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 16315 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <44,1
.xp >46,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10472 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <46,1
step
.goto Orgrimmar,59.4,36.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德兰·杜佛斯|r
.accept 2283 >>接任务: |cRXP_LOOT_搜寻项链|r
.turnin 2283 >>交任务: |cRXP_FRIENDLY_搜寻项链|r
.target Dran Droffers
.itemcount 7666,1
step
.goto Orgrimmar,56.50,46.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.turnin 7732 >>交任务: |cRXP_FRIENDLY_祖卡什报告|r
.target Zilzibin Drumlore
step
.goto Orgrimmar,75.20,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 2976 >>交任务: |cRXP_FRIENDLY_可怕的发现|r
.target Belgrom Rockmaul
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14285 >>训练你的职业技能
.target Ormak Grimshot
.xp <44,1
.xp >46,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14304 >>训练你的职业技能
.target Ormak Grimshot
.xp <46,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11584 >>训练你的职业技能
.target Grezz Ragefist
.xp <44,1
.xp >46,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11578 >>训练你的职业技能
.target Grezz Ragefist
.xp <46,1
step << Orc !Warlock
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r, |cRXP_FRIENDLY_奥古纳罗|r
.train 825 >>火车|T136103:0|t[骑狼]
.vendor >>|cRXP_BUY_BUY a|r|T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step
.goto Orgrimmar,49.60,50.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
.turnin 3121 >>交任务: |cRXP_FRIENDLY_奇怪的要求|r
.accept 3122 >>接任务: |cRXP_LOOT_向巫医尤克里回复|r
.target Neeru Fireblade
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11341 >>训练你的职业技能
.target Ormok
.xp <44,1
.xp >46,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11293 >>训练你的职业技能
.target Ormok
.xp <46,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11671 >>训练你的职业技能
.target Mirket
.xp <44,1
.xp >46,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11699 >>训练你的职业技能
.target Mirket
.xp <46,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step
#ah
#completewith STVZepp2
+|cRXP_WARN_检查您的银行是否有任何丢失的|r|T134332:0|t[Stranglethorn的Green Hills-Pages]|cRXP_WARN_并从拍卖行购买您仍然需要的任何物品|r
>>|cRXP_WARN_第1章要求：第1、4、6、8页|r
>>|cRXP_WARN_第2章要求：第10、11、14、16页|r
>>|cRXP_WARN_第3章要求：第18、20、21、24页|r
>>|cRXP_WARN_第4章要求：第25、26、27页|r
>>|cRXP_WARN_将新购买的页面放入您的银行。如果您无法获得它们，请跳过此步骤|r
.group
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师萨苏恩|r
.collect 2799,10,349,1 >>|cRXP_BUY_从拍卖行购买10件|r|T134298:0|t[Gorilla Fans]|cRXP_Buy_|r
.target Auctioneer Thathung
.group
step << Troll
#optional
#completewith next
.subzone 367 >>前往森津村
.xp <40,1
.money <90
.skill riding,75,1
step << Troll
#optional
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 10861 >>火车|T136103:0|t[猛禽骑乘]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FF猛禽|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step
#label STVZepp2
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 46-47南方荆棘
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 40-50
#next 47-48 Swamp of Sorrows
step
.goto Stranglethorn Vale,32.20,27.60
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_鼓泡釜|r
.accept 586 >>接任务: |cRXP_LOOT_甘祖拉恩|r
step
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.accept 571 >>接任务: |cRXP_LOOT_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,28.80,44.80
>>杀死|cRXP_ENEMY_Tethis|r。掠夺他的|cRXX_Loot_Talon|r
>>他在猛禽区周围巡逻
.complete 197,1 
.unitscan Tethis
.group 2
step
#completewith Anathek
>>杀死|cRXP_ENEMY_Skullsplitter猎人|r、|cRXD_ENEMY_Berserkers|r和|cRXP_ENEMY_Headhunters|r
.complete 586,1 
.complete 586,3 
.complete 586,2 
.mob Skullsplitter Hunter
.mob Skullsplitter Berserker
.mob 颅骨分离器猎头
step
#completewith next
+|cRXP_WARN_下一个任务可能很难，要格外小心|r
step
#label Anathek
.goto Stranglethorn Vale,44.3,44.9,30,0
.loop 25,Stranglethorn Vale,47.1,40.7,44.3,44.9,45.8,41.2,47.1,40.7
>>杀死|cRXP_ENEMY_Ana'tek the Crumal|r。掠夺他的|cRXX_Loot_Armor|r
*|cRXP_WARN_Be careful of Ana'thek's adds and his|r |cFFEB144Cexecute ability.|r
.complete 586,4 
.unitscan Ana'thek the Cruel
step
.loop 25,Stranglethorn Vale,47.9,42.9,47.6,44.1,46.0,42.8,44.4,41.9,47.4,39.8,47.9,42.9
>>杀死|cRXP_ENEMY_Skullsplitter猎人|r、|cRXD_ENEMY_Berserkers|r和|cRXP_ENEMY_Headhunters|r
.complete 586,1 
.complete 586,3 
.complete 586,2 
.mob Skullsplitter Hunter
.mob Skullsplitter Berserker
.mob 颅骨分离器猎头
step
.loop 25,Stranglethorn Vale,47.26,28.58,49.61,23.98,48.95,19.87,47.26,23.98
.goto Stranglethorn Vale,48.95,19.87,70,0
>>杀死|cRXP_ENEMY_Bhag'thera|r。为他的|cRXX_Loot_Fang而掠夺他|r
>>|cRXP_WARN_在与|cRXP_ENEMY_Bhag'thera|r交战之前，清除|cRXX_ENEMY_Shadowmaw Panthers|r的区域以避免添加|r
.complete 193,1 
.mob Shadowmaw Panther
.unitscan Bhag'thera
.group 2
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔加丁爵士|r, Hemet
.turnin 193 >>交任务: |cRXP_FRIENDLY_猎豹|r
.goto Stranglethorn Vale,35.55,10.55
.turnin 197 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 208 >>接任务: |cRXP_LOOT_王牌猎人|r
.goto Stranglethorn Vale,35.66,10.81
.target Sir S. J. Erlgadin
.target Hemet Nesingwary
.group
step
.goto Stranglethorn Vale,32.20,27.70
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_鼓泡釜|r
.turnin 586 >>交任务: |cRXP_FRIENDLY_甘祖拉恩|r
.accept 588 >>接任务: |cRXP_LOOT_耶尼库的命运|r
step
.goto Stranglethorn Vale,32.20,27.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 588 >>交任务: |cRXP_FRIENDLY_耶尼库的命运|r
.accept 589 >>接任务: |cRXP_LOOT_歌唱水晶|r
.target Kin'weelay
step
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >>飞到Booty Bay
.target Thysta
step
.goto Stranglethorn Vale,28.35,76.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 2767 >>交任务: |cRXP_FRIENDLY_拯救OOX-22/FE！|r
.target Oglethorpe Obnoticus
.isQuestComplete 2767
step
.goto Stranglethorn Vale,26.70,76.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海盗布劳兹|r
.accept 617 >>接任务: |cRXP_LOOT_一捆海蛇草|r
.target Privateer Bloads
step
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.turnin 1118 >>交任务: |cRXP_FRIENDLY_返回藏宝海湾|r
.accept 621 >>接任务: |cRXP_LOOT_赞吉尔的秘密|r
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.accept 606 >>接任务: |cRXP_LOOT_吓唬病鬼|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,28.10,76.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副克拉兹|r
.accept 595 >>接任务: |cRXP_LOOT_血帆海盗|r
.target First Mate Crazz
step
.goto Stranglethorn Vale,27.27,69.51
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击营地中心桶顶上的|cRXP_PICK_Bloodsail对应|r
.turnin 595 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 597 >>接任务: |cRXP_LOOT_血帆海盗|r
step
.goto Stranglethorn Vale,28.09,76.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副克拉兹|r
.turnin 597 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 599 >>接任务: |cRXP_LOOT_血帆海盗|r
.target First Mate Crazz
step
.goto Stranglethorn Vale,26.92,77.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪格|r
.accept 587 >>接任务: |cRXP_LOOT_鼻烟|r
.target Deeg
step
.goto Stranglethorn Vale,27.17,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 599 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 604 >>接任务: |cRXP_LOOT_血帆海盗|r
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,28.59,75.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_独眼迪兹|r
.accept 576 >>接任务: |cRXP_LOOT_海盗的眼睛|r
.target Dizzy One-Eye
step
#completewith Swashbucklers
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。为|cRXX_Loot_Dizzy's Eye掠夺他们|r
>>|cRXP_WARN_不要把注意力集中在这个上，你可以稍后完成|r
.complete 576,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Bloodsail Swashbucklers|r
.complete 604,1 
.mob Bloodsail Swashbuckler
step
.goto Stranglethorn Vale,29.61,80.89,20,0
.goto Stranglethorn Vale,27.75,83.13,20,0
.goto Stranglethorn Vale,27.18,82.66,20,0
.goto Stranglethorn Vale,26.94,82.49
>>单击|cRXP_LOOT_Bloodsail订单|r和|cRXP_LOOT_BBloodsail图表|r
>>|cRXP_WARN_他们通常在半岛上的大型营地，或者在营地附近的船上|r
.complete 604,2 
.complete 604,3 
step
#label Swashbucklers
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79
>>杀死|cRXP_ENEMY_Bloodsail Swashbucklers|r
.complete 604,1 
.mob Bloodsail Swashbuckler
step
.goto Stranglethorn Vale,31.19,68.29,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44,60,0
.goto Stranglethorn Vale,31.12,59.80,60,0
.goto Stranglethorn Vale,31.27,65.53,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44
>>杀死|cRXP_ENEMY_Elder Mistvale Gorillas|r。掠夺它们的|cRXP_Loot_Giblets|r和|cRXP-Loot_Sinew|r
>>|cRXP_WARN_保存任意|r|T134298:0|t[Gorilla Fans]|cRXP_WARN_您的战利品。你稍后将需要它们进行另一次任务|r
.complete 606,1 
.complete 571,1 
.mob Elder Mistvale Gorilla
.group
step
.goto Stranglethorn Vale,31.19,68.29,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44,60,0
.goto Stranglethorn Vale,31.12,59.80,60,0
.goto Stranglethorn Vale,31.27,65.53,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44
>>杀死|cRXP_ENEMY_Elder Mistvale Gorillas|r。掠夺它们的|cRXP_Loot_Giblets|r和|cRXP-Loot_Sinew|r
.complete 606,1 
.complete 571,1 
.mob Elder Mistvale Gorilla
.solo
step
#optional
.goto Stranglethorn Vale,28.60,75.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_独眼迪兹|r
.turnin 576 >>交任务: |cRXP_FRIENDLY_海盗的眼睛|r
.target Dizzy One-Eye
.isQuestComplete 576
step
.goto Stranglethorn Vale,26.90,73.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"病鬼\"菲利普|r
.turnin 606 >>交任务: |cRXP_FRIENDLY_吓唬病鬼|r
.accept 607 >>接任务: |cRXP_LOOT_向马克基雷回报|r
.target "Shaky" Phillipe
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.turnin 607 >>交任务: |cRXP_FRIENDLY_向马克基雷回报|r
.accept 609 >>接任务: |cRXP_LOOT_讨债行动|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.20,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 604 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 608 >>接任务: |cRXP_LOOT_血帆海盗|r
.target Fleet Master Seahorn
.group
step
.goto Stranglethorn Vale,27.20,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 604 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,26.87,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >>飞往Grom'gol大本营
.target Gringer
step
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 571 >>交任务: |cRXP_FRIENDLY_摩克萨尔丁的魔法|r
.accept 573 >>接任务: |cRXP_LOOT_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,38.18,35.60
>>杀死|cRXP_ENEMY_King Bangalash|r。掠夺他的|cRXX_Loot_Head |r
>>|cRXP_WARN_这是一项艰巨的任务。当他产卵时，他会带着2个暴民，并且在大约50%的生命值下再产卵2个|r
.complete 208,1 
.unitscan King Bangalash
.group 3
step
.goto Stranglethorn Vale,39.48,47.42,60,0
.goto Stranglethorn Vale,41.67,50.19,60,0
.goto Stranglethorn Vale,43.84,47.77
>>进入洞穴，然后杀死|cRXP_ENEMY_Ironjaw Basilisk|r。掠夺他们的|cRXX_Loot_Shard|r
.complete 589,1 
.mob Ironjaw Basilisk
step
#completewith Chucky
>>杀死|cRXP_ENEMY_Zanzil亡灵|r。掠夺他们的|cRXP_Loot_Mixin|r
>>|cRXP_WARN_不要拉或攻击赞齐尔的弃儿|r
.complete 621,1 
step
.goto Stranglethorn Vale,35.25,51.25
>>杀死|cRXP_ENEMY_Maury|r。为她掠夺她|cRXX_OOT_Clubed Foot|r
.complete 609,1 
.unitscan Maury "Club Foot" Wilkins
step
.goto Stranglethorn Vale,34.92,51.84
>>杀死|cRXP_ENEMY_Jon-Jon|r。掠夺他的|cRXX_Loot_Spyglass|r
.complete 609,2 
.unitscan Jon-Jon the Crow
step
#label Chucky
.goto Stranglethorn Vale,40.00,58.24
>>杀死|cRXP_ENEMY_Chucky|r。掠夺他的|cRXX_Loot_Ring |r
.complete 609,3 
.unitscan Chucky "Ten Thumbs"
step
.loop 25,Stranglethorn Vale,40.63,60.03,39.66,59.28,38.71,59.72,38.58,58.54,38.90,57.60,39.95,57.25,41.27,57.15,40.77,59.00,40.63,60.03
>>杀死|cRXP_ENEMY_Zanzil亡灵|r。掠夺他们的|cRXP_Loot_Mixin|r
>>|cRXP_WARN_不要拉或攻击赞齐尔的弃儿|r
.complete 621,1 
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Witch Doctor
.mob Zanzil Naga
step
#completewith next
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。为|cRXX_Loot_Dizzy's Eye掠夺他们|r
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Warlock
.isOnQuest 576
.solo
step
.loop 25,Stranglethorn Vale,24.37,52.88,23.10,52.77,22.77,53.90,23.63,55.24,24.10,54.50,24.53,54.06,24.37,52.88
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。掠夺他们的|cRXX_Loot_Sunff|r
.complete 587,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Warlock
.isOnQuest 587
.solo
step
.loop 25,Stranglethorn Vale,24.37,52.88,23.10,52.77,22.77,53.90,23.63,55.24,24.10,54.50,24.53,54.06,24.37,52.88
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。为|cRXX_Loot_Dizzy's Eye掠夺他们|r
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Warlock
.isOnQuest 576
.solo
step
#completewith next
>>杀死|cRXP_ENEMY_Naga探索者|r。掠夺他们的|cRXX_Loot_Akiris Reed|r
.complete 573,1 
.complete 617,1 
.mob Naga Explorer
step
.goto Stranglethorn Vale,28.96,61.94
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_圣泉|r掠夺|cRXP_loot_圣泉水|r
.complete 573,1 
step
.loop 25,Stranglethorn Vale,28.00,63.12,28.15,64.42,25.55,63.11,25.07,63.73,24.61,64.59,24.02,63.74,24.15,62.14,24.49,61.33,24.73,59.87,25.21,59.03,25.92,59.52,26.95,59.14,27.00,61.39,28.00,63.12
>>完成杀戮|cRXP_ENEMY_Naga Explorers|r。掠夺他们的|cRXX_Loot_Akiris Reed|r
.complete 573,1 
.complete 617,1 
.mob Naga Explorer
step
.goto Stranglethorn Vale,28.60,75.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_独眼迪兹|r
.turnin 576 >>交任务: |cRXP_FRIENDLY_海盗的眼睛|r
.target Dizzy One-Eye
.isQuestComplete 576
step
.goto Stranglethorn Vale,27.80,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.turnin 609 >>交任务: |cRXP_FRIENDLY_讨债行动|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.80,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.accept 613 >>接任务: |cRXP_LOOT_玛雷的腿|r
.target "Sea Wolf" MacKinley
.group
step
.goto Stranglethorn Vale,26.70,76.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海盗布劳兹|r
.turnin 617 >>交任务: |cRXP_FRIENDLY_一捆海蛇草|r
.target Privateer Bloads
step
.goto Stranglethorn Vale,27.11,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.turnin 621 >>交任务: |cRXP_FRIENDLY_赞吉尔的秘密|r
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.13,77.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威士忌斯利姆|r
.accept 580 >>接任务: |cRXP_LOOT_威士忌斯利姆的酒|r
.target Whiskey Slim
step
.goto Stranglethorn Vale,27.11,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.accept 1119 >>接任务: |cRXP_WARN_赞吉尔的药剂和蠢人酒|r
.target Crank Fizzlebub
.solo
step
.goto Stranglethorn Vale,27.00,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪格|r
.turnin 587 >>交任务: |cRXP_FRIENDLY_鼻烟|r
.target Deeg
.isQuestComplete 587
step
#completewith next
.isOnQuest 1119
+|cRXP_WARN_请注意，赞齐尔的混合物和愚人节任务有一个2小时的计时器|r
.solo
step
.goto Stranglethorn Vale,27.10,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 608 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.target Fleet Master Seahorn
.group
step
.goto Stranglethorn Vale,27.70,76.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin|r
.accept 348 >>接任务: |cRXP_LOOT_荆棘谷热疫|r
.target Fin Fizracket
.group
step
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.accept 8551 >>接任务: |cRXP_LOOT_船长的箱子|r
.target Captain Hecklebury Smotts
.group
step
#completewith next
+撤回您的所有|T134332:0|t[荆棘之青山页面]
.group
step
.goto Stranglethorn Vale,26.87,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >>飞往Grom'gol大本营
.target Gringer
step
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 573 >>交任务: |cRXP_FRIENDLY_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 589 >>交任务: |cRXP_FRIENDLY_歌唱水晶|r
.accept 591 >>接任务: |cRXP_WARN_心灵之眼|r
.target Kin'weelay
.group
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 589 >>交任务: |cRXP_FRIENDLY_歌唱水晶|r
.target Kin'weelay
step
.goto Stranglethorn Vale,38.18,35.60
>>杀死|cRXP_ENEMY_King Bangalash|r。掠夺他的|cRXX_Loot_Head |r
>>|cRXP_WARN_这是一项艰巨的任务。当他产卵时，他会带着2个暴民，并且在大约50%的时候会多生2个。|r
.complete 208,1 
.unitscan King Bangalash
.group 3
step
#completewith next
>>杀死|cRXP_ENEMY_Mosh'Ogg食人魔|r。掠夺它们以获取|cRXX_Loot_Moury的钥匙|r
.complete 613,1 
.group 4
step
.goto Stranglethorn Vale,52.93,27.60
>>杀死|cRXP_ENEMY_Mai'Zoth|r。掠夺他获得|cRXX_Loot_Mind的眼睛|r
>>|cRXP_WARN_他位于洞穴的后面，由2名附加队员防守|r
.complete 591,1 
.mob Mai'Zoth
.group 4
step
.goto Stranglethorn Vale,50.78,27.74,-1
.goto Stranglethorn Vale,49.25,27.10,-1
>>杀死|cRXP_ENEMY_Mosh'Ogg食人魔|r。掠夺它们以获取|cRXX_Loot_Moury的钥匙|r
.complete 613,1 
.group 4
step
#completewith next
.goto Stranglethorn Vale,35.70,10.80,0
+Turn in all the |T134332:0|t[Green Hills of Stranglethorn - Pages] that you have
.group
step
.goto Stranglethorn Vale,35.70,10.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet|r
.turnin 208 >>交任务: |cRXP_FRIENDLY_王牌猎人|r
.target Hemet Nesingwary
.isQuestComplete 208
.group
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 591 >>交任务: |cRXP_FRIENDLY_心灵之眼|r
.accept 592 >>接任务: |cRXP_WARN_拯救耶尼库|r
.target Kin'weelay
.group
step
#completewith next
.goto Stranglethorn Vale,32.80,65.80,0
>>杀死所有找到的|cRXP_ENEMY_Gorilla|r。掠夺他们的|cRXP_Loot_Fans|r
.collect 2799,10 
.isOnQuest 348
.group
.addquestitem 2799,348
step
.goto Stranglethorn Vale,35.27,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医安巴格瓦|r
.turnin 349 >>交任务: |cRXP_FRIENDLY_荆棘谷热疫|r
.target Witch Doctor Unbagwa
.isOnQuest 348
.group 3
step
.goto Stranglethorn Vale,35.27,60.40
>>面波|cRXP_ENEMY_Gorillas|r直到野蛮人|cRXX_ENEMY_Mokk|r出现。杀死他并掠夺他的|cRXP_loot_Heart|r
.complete 348,1 
.unitscan Mokk the Savage
.isOnQuest 348
.group 3
step
.goto Stranglethorn Vale,39.0,58.20
.use 3912 >>使用|cRXP_ENEMY_Yenniku|r上的|T134336:0|t[灵魂宝石]，然后与他交谈以取回他的|cRXX_LOOT_Gem|r
.complete 592,1 
.unitscan Yenniku
.group
.isOnQuest 592
step
.goto Stranglethorn Vale,36.6,39.6
>>杀死|cRXP_ENEMY_Gorlash|r。掠夺他的|cRXX_Loot_Churs|r
.complete 8551,1 
.isOnQuest 8551
.unitscan Gorlash
.group 3
step
#completewith Keelhaul
.goto Stranglethorn Vale,32.90,88.20,0
.goto Stranglethorn Vale,30.60,90.60,0
.goto Stranglethorn Vale,29.30,88.30,0
>>搜索飞船的低层，直到你在地面上找到一个小卷轴。为|T134939:0|t[|cRXP_Loot_Cortello的谜语|r]抢劫它。使用它开始任务
.accept 624 >>接任务: |cRXP_LOOT_科泰罗的谜题|r
.collect 4056,1,624,1 >>Cortello's Riddle (1)
.use 4056
.group 3
step
#completewith Keelhaul
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。掠夺他们的|cRXD_Loot_Sunff|r和|cRXX_Loot_Dizzy's Eye |r
.complete 587,1 
.complete 576,1 
.group
step
.goto Stranglethorn Vale,32.90,88.20
>>杀死船后部2楼的|cRXP_ENEMY_Captain Stillwater|r
.complete 608,1 
.unitscan Captain Stillwater
.group 3
step
.goto Stranglethorn Vale,30.60,90.60
>>杀死船后部2楼的|cRXP_ENEMY_Fleet Master Firallon|r
.complete 608,3 
.unitscan Fleet Master Firallon
.group 3
step
#label Keelhaul
.goto Stranglethorn Vale,29.30,88.30
>>杀死船后部2楼的|cRXP_ENEMY_Keelhaul|r船长。
>>|cRXP_ENEMY_Garr|r|cRXP_WARN_can充能造成严重伤害，眩晕2秒，|r|T132152:0|t[Srash]
.complete 608,2 
.unitscan Captain Keelhaul
.unitscan Garr Salthoof
.group 3
step
#completewith next
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。掠夺他们的|cRXX_Loot_Sunff|r
.complete 587,1 
.isOnQuest 587
.group
step
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。掠夺他们的|cRXX_Loot_Dizzy之眼|r
.complete 576,1 
.isOnQuest 576
.group
step
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。掠夺他们的|cRXX_Loot_Sunff|r
.complete 587,1 
.isOnQuest 587
.group
step
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回Booty Bay，然后与|cRXP_FRIENDLY_Captain Hecklebury Smotts|r通话
.turnin 8551 >>交任务: |cRXP_FRIENDLY_船长的箱子|r
.target Captain Hecklebury Smotts
.isQuestComplete 8551
.group
step
.goto Stranglethorn Vale,28.60,75.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_独眼迪兹|r
.turnin 576 >>交任务: |cRXP_FRIENDLY_海盗的眼睛|r
.target Dizzy One-Eye
.group
step
.goto Stranglethorn Vale,27.60,76.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬·菲兹拉克|r
.turnin 348 >>交任务: |cRXP_FRIENDLY_荆棘谷热疫|r
.target Fin Fizracket
.group
step
.goto Stranglethorn Vale,27.80,77.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.turnin 613 >>交任务: |cRXP_FRIENDLY_玛雷的腿|r
.target "Sea Wolf" MacKinley
.isQuestComplete 613
.group
step
.goto Stranglethorn Vale,27.00,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪格|r
.turnin 587 >>交任务: |cRXP_FRIENDLY_鼻烟|r
.target Deeg
.group
step
.goto Stranglethorn Vale,27.11,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.accept 1119 >>接任务: |cRXP_WARN_赞吉尔的药剂和蠢人酒|r
.target Crank Fizzlebub
.group
step
#completewith next
.isOnQuest 1119
+|cRXP_WARN_请注意，赞齐尔的混合物和愚人节任务有一个2小时的计时器|r
.group
step
.goto Stranglethorn Vale,26.87,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >>飞往Grom'gol大本营
.target Gringer
.group
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 592 >>交任务: |cRXP_FRIENDLY_拯救耶尼库|r
.target Kin'weelay
.isQuestComplete 592
.group
step
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Stonard>>飞往斯托纳德
.target Thysta
.zoneskip Swamp of Sorrows
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 47-48 Swamp of Sorrows
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 40-50
#next 47-49 塔纳利斯
step
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 2784 >>接任务: |cRXP_WARN_失落的荣耀|r
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.complete 2784,1 
.target Fallen Hero of the Horde
.skipgossip
step
.goto Blasted Lands,52.76,2.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2784 >>交任务: |cRXP_FRIENDLY_失落的荣耀|r
.accept 2621 >>接任务: |cRXP_WARN_悔恨的战士|r
.target Fallen Hero of the Horde
step
#completewith next
.goto Swamp of Sorrows,46.0,54.2,50,0
.subzone 75 >>Travel to Stonard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费泽鲁尔|r, |cRXP_FRIENDLY_分队指挥官鲁尔格|r
.accept 1429 >>接任务: |cRXP_WARN_阿塔莱流放者|r
.goto Swamp of Sorrows,47.93,54.79
.turnin 2621 >>交任务: |cRXP_FRIENDLY_悔恨的战士|r
.accept 2622 >>接任务: |cRXP_WARN_丢失的命令|r
.goto Swamp of Sorrows,47.78,54.94
.target Fel'zerul
.target Dispatch Commander Ruags
step
.goto Swamp of Sorrows,44.96,57.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_本戈尔|r
.turnin 2622 >>交任务: |cRXP_FRIENDLY_丢失的命令|r
.accept 2623 >>接任务: |cRXP_WARN_沼泽空谈者|r
.target Bengor
step
.goto Swamp of Sorrows,81.31,80.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托克卡尔|r
.accept 699 >>接任务: |cRXP_WARN_缺乏补给|r
.target Tok'Kar
step
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏塔佐尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Thultazor
step
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔塔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Rartar
step
.goto Swamp of Sorrows,82.0,68.6,40,0
.goto Swamp of Sorrows,86.6,58.6,40,0
.loop 25,Swamp of Sorrows,87.6,39.6,86.8,35.8,83.2,31.6,82.8,26.2,80.6,20.8,78.6,13.6,74.0,15.6,75.8,20.6,78.6,23.0,79.6,29.2,81.6,33.0,84.8,36.2,87.6,39.6
>>杀死|cRXP_ENEMY_Sawtothe Snappers|r。掠夺它们的|cRXX_Loot_爪|r
.complete 699,1 
.mob Sawtooth Snapper
step
.goto Swamp of Sorrows,81.40,80.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托克卡尔|r
.turnin 699 >>交任务: |cRXP_FRIENDLY_缺乏补给|r
.accept 1422 >>接任务: |cRXP_WARN_海中的威胁|r
.target Tok'Kar
step
.goto Swamp of Sorrows,83.70,80.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡塔尔|r
.turnin 1422 >>交任务: |cRXP_FRIENDLY_海中的威胁|r
.accept 1426 >>接任务: |cRXP_WARN_海中的威胁|r
.target Katar
step
.loop 25,Swamp of Sorrows,85.4,82.8,86.6,79.4,88.6,76.6,91.6,69.6,93.4,64.0,94.6,58.2,95.2,51.0,94.6,58.2,93.4,64.0,91.6,69.6,88.6,76.6,87.2,80.4,86.4,84.6,85.6,88.8,83.6,93.8,81.2,93.0,83.2,88.4,85.4,82.8
>>杀死|cRXP_ENEMY_Marsh Murlocs|r、|cRXD_ENEMY_ Marsh喷壶|r和|cRXP_ENEMY_马什跳蚤|r
.complete 1426,1 
.complete 1426,2 
.complete 1426,3 
.mob Marsh Murloc
.mob Marsh Inkspewer
.mob Marsh Flesheater
step
.goto Swamp of Sorrows,83.70,80.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡塔尔|r
.turnin 1426 >>交任务: |cRXP_FRIENDLY_海中的威胁|r
.accept 1427 >>接任务: |cRXP_WARN_海中的威胁|r
.target Katar
step
.goto Swamp of Sorrows,81.40,80.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托克卡尔|r
.turnin 1427 >>交任务: |cRXP_FRIENDLY_海中的威胁|r
.target Tok'Kar
step
.goto Swamp of Sorrows,83.75,80.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡塔尔|r
.accept 1428 >>接任务: |cRXP_WARN_海中的威胁|r
.target Katar
step
#completewith SwampTalker
.goto Swamp of Sorrows,66.03,79.60,40,0
.subzone 1817 >>向西行驶，进入斯塔尔博格洞穴
step
#completewith next
>>杀死|cRXP_ENEMY_Marsh Murlocs|r、|cRXD_ENEMY_ Marsh喷壶|r和|cRXP_ENEMY_马什跳蚤|r
>>|cRXP_WARN_它们在营地以西的斯塔尔博格洞穴以更高的速度产卵|r
.complete 1428,1 
.complete 1428,2 
.complete 1428,3 
.mob Marsh Murloc
.mob Marsh Inkspewer
.mob Marsh Flesheater
step
#label SwampTalker
.goto Swamp of Sorrows,66.08,77.67,60,0
.goto Swamp of Sorrows,62.90,87.40
>>杀死|cRXP_ENEMY_Swamp Talker|r。掠夺他以获得|cRXX_Loot_ Warchief的命令|r
>>|cRXP_WARN_保存|r|cRXP_ENEMY_Swamp Talker|r|cRXP_WARN_的冷却时间。他的附加值在1次命中中死亡，但如果活着，会造成重大伤害。|r
.complete 2623,1 
.unitscan Swamp Talker
step
.loop 25,Swamp of Sorrows,62.48,87.74,60.95,84.20,62.20,83.16,64.60,81.25,66.42,84.59,63.34,86.47,63.84,91.64,62.48,87.74
>>杀死|cRXP_ENEMY_Marsh Murlocs|r、|cRXD_ENEMY_ Marsh喷壶|r和|cRXP_ENEMY_马什跳蚤|r
>>|cRXP_WARN_它们在营地以西的斯塔尔博格洞穴以更高的速度产卵|r
.complete 1428,1 
.complete 1428,2 
.complete 1428,3 
.mob Marsh Murloc
.mob Marsh Inkspewer
.mob Marsh Flesheater
step
.goto Swamp of Sorrows,83.70,80.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡塔尔|r
.turnin 1428 >>交任务: |cRXP_FRIENDLY_海中的威胁|r
.target Katar
step << Hunter/Warlock/Shaman/Warrior
#completewith next
.goto Swamp of Sorrows,46.0,54.2,50,0
.subzone 75 >>Travel west to Stonard
step << Hunter
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 14304 >>训练你的职业技能
.target Ogrom
.xp <46,1
.xp >48,1
step << Hunter
#optional
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 14321 >>训练你的职业技能
.target Ogrom
.xp <48,1
step << Hunter
.goto Swamp of Sorrows,47.35,52.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗科尔|r
.train 24562 >>训练你的宠物法术
.target Grokor
.xp <48,1
step << Warlock
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 11699 >>训练你的职业技能
.target Kartosh
.xp <46,1
.xp >48,1
step << Warlock
#optional
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 11712 >>训练你的职业技能
.target Kartosh
.xp <48,1
step << Warlock
.goto Swamp of Sorrows,48.59,55.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.vendor >>购买任何你能负担得起的宠物升级
.target Greshka
step << Shaman
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 10586 >>训练你的职业技能
.target Haromm
.xp <46,1
.xp >48,1
step << Shaman
#optional
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 10431 >>训练你的职业技能
.target Haromm
.xp <48,1
step << Warrior
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 11578 >>训练你的职业技能
.target Malosh
.xp <46,1
.xp >48,1
step << Warrior
#optional
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 20661 >>训练你的职业技能
.target Malosh
.xp <48,1
step
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2623 >>交任务: |cRXP_FRIENDLY_沼泽空谈者|r
.accept 2801 >>接任务: |cRXP_LOOT_悲伤的故事|r
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.complete 2801,1 
.skipgossip
step
.goto Blasted Lands,52.76,2.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2801 >>交任务: |cRXP_FRIENDLY_悲伤的故事|r
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,22.90,48.30
>>|TInterface/GossipFrame/HealerGossipIcon:0|t在桥下的水中单击|cRXP_PICK_Soggy Scroll|r
.turnin 624 >>交任务: |cRXP_FRIENDLY_科泰罗的谜题|r
.accept 625 >>接任务: |cRXP_LOOT_科泰罗的谜题|r
.isOnQuest 624
.group
step
#completewith next
.hs >>赫斯前往莫贾奇营地
.use 6948
step
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格鲁尔|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Greul
step << Druid
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9823 >>训练你的职业技能
.target Jannos Lighthoof
.xp <46,1
.xp >48,1
step << Druid
#optional
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 22828 >>训练你的职业技能
.target Jannos Lighthoof
.xp <48,1
step
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3122 >>交任务: |cRXP_FRIENDLY_向巫医尤克里回复|r
.accept 3123 >>接任务: |cRXP_LOOT_测试容器|r
.accept 3380 >>接任务: |cRXP_LOOT_沉没的神庙|r
.target Witch Doctor Uzer'i
step
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩|r
.fly Tanaris>>前往: 塔纳利斯
.target Shyn
.zoneskip Tanaris
step
#optional
.abandon 197 >>Abandon Raptor Mastery
.isOnQuest 197
step
#optional
.abandon 193 >>Abandon Panther Mastery
.isOnQuest 193
step
#optional
.abandon 208 >>Abandon Big Game Hunter
.isOnQuest 208
step
#optional
.abandon 608 >>放弃血帆海盗
.isOnQuest 608
step
#optional
.abandon 613 >>放弃打断Maury的脚
.isOnQuest 613
step
.abandon 348 >>放弃荆棘热
.isOnQuest 348
step
#optional
.abandon 8551 >>放弃船长的胸脯
.isOnQuest 8551
step
#optional
.abandon 591 >>Abandon The Mind's Eye
.isOnQuest 591
step
#optional
.abandon 348 >>放弃荆棘热
.isOnQuest 348
step
#optional
.abandon 348 >>放弃荆棘热
.isOnQuest 348
step
#optional
.abandon 592 >>放弃拯救Yenniku
.isOnQuest 592
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 47-49 塔纳利斯
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 40-50
#next 49-50 辛特兰
step
#completewith next
.goto Thousand Needles,70.58,62.69,200 >>前往: |cRXP_PICK_千针石林|r
step
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.turnin 1119 >>交任务: |cRXP_FRIENDLY_赞吉尔的药剂和蠢人酒|r
.timer 13,Kravel Koalbeard RP
.target Kravel Koalbeard
step
.goto Thousand Needles,80.33,76.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1187 >>交任务: |cRXP_FRIENDLY_拉泽瑞克的调整|r
.target Razzeric
.isQuestComplete 1187
step
.goto Thousand Needles,80.33,76.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉泽瑞克|r
.accept 1188 >>接任务: |cRXP_LOOT_安全第一|r
.target Razzeric
.isQuestTurnedIn 1187
step
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1120 >>接任务: |cRXP_WARN_灌醉侏儒|r
.target Kravel Koalbeard
step
.goto Thousand Needles,77.56,76.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侏儒车队老板|r
.turnin 1120 >>交任务: |cRXP_FRIENDLY_灌醉侏儒|r
.target Gnome Pit Boss
step
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1122 >>接任务: |cRXP_WARN_向菲兹巴布报告|r
.target Kravel Koalbeard
step
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.subzone 976 >>前往: |cRXP_PICK_塔纳利斯|r
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 82 >>接任务: |cRXP_LOOT_腐化之巢|r
.target Kravel Koalbeard
step
.goto Tanaris,51.90,27.00
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击巨型笼子旁的|cRXP_PICK_Wanted海报|r
.accept 2875 >>接任务: |cRXP_LOOT_通缉：安德雷·费尔比德|r
step
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 3362 >>接任务: |cRXP_LOOT_灌木谷|r
.target Tran'rek
step
.goto Tanaris,51.00,27.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史瑞夫|r
.turnin 1188 >>交任务: |cRXP_FRIENDLY_安全第一|r
.target Shreev
.isQuestComplete 1188
step
.goto Tanaris,51.80,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin|r
.accept 2605 >>接任务: |cRXP_LOOT_口渴的地精|r
.target Marin Noggenfogger
step
.goto Tanaris,52.50,27.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.home >>将您的炉石设置为Gadgetzan
.target Innkeeper Fizzgrimble
step
.goto Tanaris,52.30,27.00
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击传送机旁边的|cRXP_PICK_Egg-O-Matic|r，然后交上你的希波格里普蛋
.accept 2741 >>接任务: |cRXP_WARN_超级测蛋器|r
.turnin 2741 >>交任务: |cRXP_FRIENDLY_超级测蛋器|r
.addquestitem 8564,2741
step
+打开您的|T132594:0|t[蛋箱]
.itemcount 8647,1 
.use 8647
step
.goto Tanaris,52.80,27.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安蒂|r
.accept 5863 >>接任务: |cRXP_LOOT_砂槌食人魔|r
.target Andi Lynn
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2750 >>接任务: |cRXP_WARN_坏掉的蛋|r
.turnin 2750 >>交任务: |cRXP_FRIENDLY_坏掉的蛋|r
.target Curgle Cranklehop
.itemcount 8646,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2749 >>接任务: |cRXP_WARN_普通的蛋|r
.turnin 2749 >>交任务: |cRXP_FRIENDLY_普通的蛋|r
.target Curgle Cranklehop
.itemcount 8645,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2748 >>接任务: |cRXP_WARN_优良的蛋|r
.turnin 2748 >>交任务: |cRXP_FRIENDLY_优良的蛋|r
.target Curgle Cranklehop
.itemcount 8644,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2747 >>接任务: |cRXP_WARN_特别的蛋|r
.turnin 2747 >>交任务: |cRXP_FRIENDLY_特别的蛋|r
.target Curgle Cranklehop
.itemcount 8643,1 
step
+打开您的|T132594:0|t[配给箱]
.itemcount 9539,1 
.use 9539
step
+打开您的|T132595:0|t[魔盒]
.itemcount 9540,1 
.use 9540
step
+打开您的|T132597:0|t[礼品盒]
.itemcount 9541,1 
.use 9541
step
#completewith next
.goto Tanaris,52.64,25.73,50,0
.goto Tanaris,67.1,22.4,50,0
.subzone 977 >>向东行驶至Steamweidle港
step
.goto Tanaris,66.60,22.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_傲慢的店主|r
.accept 8365 >>接任务: |cRXP_LOOT_海盗的帽子！|r
.target Haughty Modiste
step
.goto Tanaris,67.00,22.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 3520 >>交任务: |cRXP_FRIENDLY_尖啸者的灵魂|r
.target Yeh'kinya
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Bilgewhizzle, |cRXP_FRIENDLY_斯杜雷|r
.accept 8366 >>接任务: |cRXP_LOOT_南海复仇|r
.goto Tanaris,67.06,23.89
.accept 2873 >>接任务: |cRXP_LOOT_斯杜雷的货物|r
.goto Tanaris,67.11,23.98
.target Security Chief Bilgewhizzle
.target Stoley
step
#completewith FireBeard
.goto Tanaris,68.76,41.51,30,0
.subzone 1336 >>向南行驶至Lost Rigger Cove
step
#completewith StolenCargo
>>杀死|cRXP_ENEMY_南海海盗|r。掠夺他们的|cRXX_Loot_海盗帽|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#completewith next
>>在西楼二楼为|cRXP_Loot_Stoley的货物|r抢劫|cRXP_PICK_Stolen货物|r
.complete 2873,1 
step
#label FireBeard
.goto Tanaris,73.37,47.14
>>杀死|cRXP_ENEMY_Andre Firebeard|r。掠夺他的|cRXX_Loot_Head|r
>>|cRXP_WARN_小心，因为他拉附近的暴徒。如果可以的话，分开拉他，然后放风筝重置其他暴徒|r
.complete 2875,1 
.unitscan Andre Firebeard
step
#label StolenCargo
.goto Tanaris,72.23,46.81
>>在西楼二楼为|cRXP_Loot_Stoley的货物|r抢劫|cRXP_PICK_Stolen货物|r
.complete 2873,1 
step
.loop 25,Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
>>杀死|cRXP_ENEMY_南海海盗|r。掠夺他们的|cRXX_Loot_海盗帽|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
.loop 25,Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
>>杀死|cRXP_ENEMY_南海海盗|r
.xp 47 >>升级到47级
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#completewith Gahzridian
.goto Tanaris,68.27,41.21,30,0
.goto Tanaris,65.71,41.53,30,0
.goto Tanaris,52.71,45.92,50,0
.subzone 1938 >>离开Lost Rigger Cove，然后向西行驶至Broken Pillar
step
#optional
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Marvon|r
.turnin 3380 >>交任务: |cRXP_FRIENDLY_沉没的神庙|r
.accept 3161 >>接任务: |cRXP_LOOT_加兹瑞迪安|r
.target Marvon Rivetseeker
.isOnQuest 3380
step
#label Gahzridian
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.accept 3161 >>接任务: |cRXP_LOOT_加兹瑞迪安|r
.target Marvon Rivetseeker
step
#completewith next
.subzone 982 >>继续往西到邪恶的巢穴
step
.goto Tanaris,35.68,39.78,70,0
.goto Tanaris,36.55,41.98,70,0
.goto Tanaris,35.59,44.08,70,0
.goto Tanaris,35.60,48.79,70,0
.goto Tanaris,31.70,49.12,70,0
.goto Tanaris,30.83,46.10,70,0
.goto Tanaris,35.68,39.78
>>杀死|cRXP_ENEMY_Centipar Silithids|r。掠夺它们的|cRXX_Loot_Inter零件|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Centipar Swarmers |r|cRXP_WARN_。他们可以从很远的距离孕育出许多小黄人和社会攻击|r
>>|cRXP_WARN_All | r | cRXP_ENEMY_Centipar | r | c RXP_WARN_cast | r | T132152:0 | t[Thrash]| cRXF_WARN_（每10秒额外攻击2次）
.complete 82,1 
.mob Centipaar Wasp
.mob Centipaar Stinger
.mob Centipaar Swarmer
.mob Centipaar Worker
.mob Centipaar Sandreaver
.mob Centipaar Tunneler
step
#completewith Garmarok
.goto Tanaris,40.98,57.16,50,0
.subzone 983 >>向东南行驶至Dunemaul大院
step
#completewith next
>>杀死|cRXP_ENEMY_Dunemaul Brutes|r和|cRXP_ENEMY_ Dunemaul Enforcers|r
>>|cRXP_WARN_避免|r|cRXP_ENEMY_Dunemaul Warlocks|r|cRXP_WARN_，因为它们有荆棘诅咒|r << Rogue/Warrior/Shaman/Paladin/Hunter
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
#label Garmarok
.goto Tanaris,41.50,57.80
>>在洞穴中杀死|cRXP_ENEMY_Gor'marok|r
>>|cRXP_WARN_小心他的重伤害输出和致命一击|r
.complete 5863,3 
.unitscan Gor'marok the Ravager
step
#completewith next
.use 9978 >>装备|T133151:0|t[Gahz'ridian探测器]
>>为|cRXP_Loot_Gahz'ridian饰品|r掠夺|cRX_PICK_成堆的沙子|r
>>|cRXP_WARN_Gahz'ridian会出现在你的小地图上。你可以在东月和南月遗址及其周围找到货物|r
.complete 3161,1 
.use 9978
step
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23,60,0
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23
>>杀死|cRXP_ENEMY_Dunemaul Brutes|r和|cRXP_ENEMY_ Dunemaul Enforcers|r
>>|cRXP_WARN_避免|r|cRXP_ENEMY_Dunemaul Warlocks|r|cRXP_WARN_，因为它们有荆棘诅咒|r << Rogue/Warrior/Shaman/Paladin/Hunter
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23,60,0
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23
.use 9978 >>装备|T133151:0|t[Gahz'ridian探测器]
>>为|cRXP_Loot_Gahz'ridian饰品|r掠夺|cRX_PICK_成堆的沙子|r
>>|cRXP_WARN_Gahz'ridian会出现在你的小地图上。你可以在东月和南月遗址及其周围找到货物|r
.complete 3161,1 
.use 9978
step
.goto Tanaris,39.69,78.30,60,0
.goto Tanaris,39.21,80.25,25,0
.goto Tanaris,38.67,80.45,25,0
.goto Tanaris,38.47,80.99,30,0
.goto Tanaris,37.63,81.40
>>单击|cRXP_PICK_Uldum基座|r
>>|cRXP_WARN_小心！该地区有精英|r|cRXP_ENEMY_Dune Giants|r|cRXP_WARN_in。按照航路点箭头避开农业|r
.turnin 2966 >>交任务: |cRXP_FRIENDLY_拭目以待|r
.accept 2954 >>接任务: |cRXP_WARN_石头卫士|r
.unitscan Dune Smasher
.unitscan Raging Dune Smasher
.isQuestTurnedIn 2965
.dungeon ULDA
step
.goto Tanaris,37.63,81.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺甘农的石卫兵|r
.complete 2954,1 
.skipgossip
.target Stone Watcher of Norgannon
.isQuestTurnedIn 2965
.dungeon ULDA
step
.goto Tanaris,37.63,81.40
>>单击|cRXP_PICK_Uldum基座|r
.turnin 2954 >>交任务: |cRXP_FRIENDLY_石头卫士|r
.accept 2967 >>接任务: |cRXP_WARN_返回雷霆崖|r
.isQuestTurnedIn 2965
.dungeon ULDA
step
#completewith Thistleshrubs
.goto Tanaris,31.06,64.91,20,0
.subzone 980 >>前往蓟花谷
step
#completewith next
>>杀死|cRXP_ENEMY_Thistlesbush Dew Collectors|r。掠夺它们以获得|cRXD_Loot_Laden Dew Gland|r
>>|cRXP_WARN_它的掉落率很低，而且它的产卵与其他暴民类型共享，所以杀死所有东西让它们更快地产卵|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
#label Thistleshrubs
.loop 25,Tanaris,29.50,62.98,27.76,65.80,28.30,68.39,30.63,66.57,30.62,63.76,29.50,62.98
>>杀死|cRXP_ENEMY_所有蓟灌木元素|r
.complete 3362,1 
.complete 3362,2 
.mob Gnarled Thistleshrub
.mob Thistleshrub Rootshaper
step
.loop 25,Tanaris,29.50,62.98,27.76,65.80,28.30,68.39,30.63,66.57,30.62,63.76,29.50,62.98
>>杀死|cRXP_ENEMY_Thistlesbush Dew Collectors|r。掠夺它们以获得|cRXD_Loot_Laden Dew Gland|r
>>|cRXP_WARN_它的掉落率很低，而且它的产卵与其他暴民类型共享，所以杀死所有东西让它们更快地产卵|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
.loop 25,Tanaris,29.37,59.97,28.70,67.32,31.66,74.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t搜索|cRXP_FRIENDLY_Tooga|r，然后与他交谈，开始他的护送任务
>>|cRXP_WARN_他在该地区有4个不同的产卵地点|r
.accept 1560 >>接任务: |cRXP_LOOT_图加的任务|r
.target Tooga
step
.goto Tanaris,66.58,25.64
>>导向|cRXP_FRIENDLY_Tooga|r朝向Steamweidle港
>|cRXP_WARN_You will fail the quest if you get too far away from him|r
.complete 1560,1 
.target Tooga
step
.goto Tanaris,66.58,25.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔塔|r
.turnin 1560 >>交任务: |cRXP_FRIENDLY_图加的任务|r
.target Torta
step
#completewith next
.goto Tanaris,67.1,22.4,50,0
.subzone 977 >>向北行驶至Steamweidle港
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Bilgewhizzle, |cRXP_FRIENDLY_斯杜雷|r
.turnin 2875 >>交任务: |cRXP_FRIENDLY_通缉：安德雷·费尔比德|r
.turnin 8366 >>交任务: |cRXP_FRIENDLY_南海复仇|r
.goto Tanaris,67.06,23.89
.turnin 2873 >>交任务: |cRXP_FRIENDLY_斯杜雷的货物|r
.accept 2874 >>接任务: |cRXP_LOOT_给马克基雷的货物|r
.goto Tanaris,67.11,23.98
.target Security Chief Bilgewhizzle
.target Stoley
step
.goto Tanaris,66.60,22.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_傲慢的店主|r
.turnin 8365 >>交任务: |cRXP_FRIENDLY_海盗的帽子！|r
.target Haughty Modiste
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 3527 >>接任务: |cRXP_WARN_摩沙鲁的预言|r
.target Yeh'kinya
.isQuestTurnedIn 3520
.dungeon ZF
step
#completewith next
.hs >>回到Gadgetzan
.use 6948
.cooldown item,6948,>0
step
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪尔格·奎克里弗|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Dirge Quikcleave
step << skip
.goto Tanaris,52.30,28.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 9245 >>将偷来的瓶子存入银行
.target Gimblethorn
step
.goto Tanaris,51.80,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin|r
.turnin 2605 >>交任务: |cRXP_FRIENDLY_口渴的地精|r
.accept 2606 >>接任务: |cRXP_LOOT_好味道|r
.target Marin Noggenfogger
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 82 >>交任务: |cRXP_FRIENDLY_腐化之巢|r
.target Alchemist Pestlezugg
step
.goto Tanaris,51.10,26.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普琳科|r
.turnin 2606 >>交任务: |cRXP_FRIENDLY_好味道|r
.accept 2641 >>接任务: |cRXP_LOOT_斯普琳科的秘密佐料|r
.target Sprinkle
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 10 >>接任务: |cRXP_LOOT_谢申克的救赎|r
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,51.50,26.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 3362 >>交任务: |cRXP_FRIENDLY_灌木谷|r
.target Tran'rek
step
.goto Tanaris,52.80,27.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安蒂|r
.turnin 5863 >>交任务: |cRXP_FRIENDLY_砂槌食人魔|r
.target Andi Lynn
step
.goto Tanaris,52.70,45.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3161 >>交任务: |cRXP_FRIENDLY_加兹瑞迪安|r
.accept 3444 >>接任务: |cRXP_LOOT_石环|r
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,56.19,66.62,30,0
.subzone 981 >>向南前往缺口追逐
step
#label BugHole
.goto Tanaris,55.69,69.44,50,0
.goto Tanaris,56.36,68.44,30,0
.goto Tanaris,57.45,70.45,30,0
.goto Tanaris,55.96,71.16
>>|TInterface/GossipFrame/HealerGossipIcon:0|t进入silithid配置单元，然后单击|cRXP_PICK_Scrimshank的测量设备控制台|r并掠夺|cRXP-loot_Scrimsshank的勘测设备|r
>>|cRXP_WARN_对|cRXP_ENEMY_Hazzali Swarmers |r|cRXP-WARN_a要格外小心，因为他们可以快速召唤出造成高伤害的附加值。他们还可以从极端距离对其他暴民进行社交攻击|r
.complete 10,1 
.unitscan Hazzali Swarmer
step
.use 8623 >>如果你发现了一个|T132836:0|t[OOX-17/TN遇险信标]，点击它并接受它的任务。否则，跳过此步骤
.accept 351 >>接任务: |cRXP_LOOT_寻找OOX-17/TN！|r
.itemcount 8623,1
step
#optional
.goto Tanaris,60.20,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r
.turnin 351 >>交任务: |cRXP_FRIENDLY_寻找OOX-17/TN！|r
.target Homing Robot OOX-17/TN
.isOnQuest 351
step
#optional
.goto Tanaris,60.23,64.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r
>>|cRXP_WARN_这个任务可能很困难。吃/喝到饱，并使用任何自我缓冲（卷轴、食物、灵丹妙药等）|r
.accept 648 >>接任务: |cRXP_LOOT_拯救OOX-17/TN！|r
.target Homing Robot OOX-17/TN
.isQuestTurnedIn 351
step
#optional
.goto Tanaris,67.09,23.18
>>护送|cRXP_FRIENDLY_Homing Robot OOX-17/TN|r到Steamweidle Port
>>|cRXP_WARN_一包3级46-47级|r|cRXP_ENEMY_Scorpions|r|cRXP_WARN_将在下一个山脉产卵|r
>>|cRXP_WARN_一组3级43-45|r|cRXP_ENEMY_Wastwark暴徒|r|cRXP_WARN_将在水泉场周围产卵。聚焦|r|cRXP_ENEMY_Scofflaw|r|cRXP_WARN_。当你的生命值低于20%时，它会执行|r
.complete 648,1 
.target Homing Robot OOX-17/TN
.unitscan Wastewander Scofflaw
.isQuestTurnedIn 351
step
#sticky
#complete with EnterZF
.subzone 978 >>现在你应该找一个小组去祖法拉克
.dungeon ZF
step << Shaman
#completewith next
.hs >>心灵或星体召回Gadgetzan
.subzoneskip 976
step << Shaman
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Dirge Quikcleave
step << !Shaman
#completewith next
.goto Tanaris,50.6,28.1
.subzone 976 >>前往: |cRXP_PICK_塔纳利斯|r
step
.goto Tanaris,50.21,27.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 10 >>交任务: |cRXP_FRIENDLY_谢申克的救赎|r
.accept 110 >>接任务: |cRXP_LOOT_昆虫研究|r
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 110 >>交任务: |cRXP_FRIENDLY_昆虫研究|r
.accept 113 >>接任务: |cRXP_LOOT_昆虫研究|r
.target Alchemist Pestlezugg
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 113 >>交任务: |cRXP_FRIENDLY_昆虫研究|r
.accept 32 >>接任务: |cRXP_LOOT_异种蝎的威胁|r
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦顿·轻锤|r
.accept 3042 >>接任务: |cRXP_WARN_巨魔调和剂|r
.target Trenton Lighthammer
.dungeon ZF
step
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.accept 2768 >>接任务: |cRXP_WARN_探水棒|r
.target Chief Engineer Bilgewhizzle
.dungeon ZF
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 2865 >>接任务: |cRXP_WARN_圣甲虫的壳|r
.target Tran'rek
.dungeon ZF
step
#completewith next
.goto Thousand Needles,70.58,62.69,200 >>前往: |cRXP_PICK_千针石林|r
.dungeon ZF
step
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 2770 >>接任务: |cRXP_WARN_加兹瑞拉|r
.target Wizzle Brassbolts
.dungeon ZF
step
#label EnterZF
.goto Tanaris,38.91,20.78,40,0
.goto Tanaris,38.731,19.839
.zone 219 >>Enter Zul'Farrak
.dungeon ZF
step
#completewith Gahzrilla
>>杀死|cRXP_ENEMY_Trolls|r。掠夺他们的|cRXX_Loot_Toll脾气|r
.complete 3042,1 
.isOnQuest 3042
.dungeon ZF
step
#completewith next
>>杀死|cRXP_ENEMY_Scarab|r。掠夺他们的|cRXD_Loot_未被破解的Scarab外壳|r
.complete 2865,1 
.isOnQuest 2865
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Theka烈士|r。掠夺他获得|cRXX_Loot_First Mosh'aru平板电脑|r
.complete 3527,1 
.mob Theka the Martyr
.isOnQuest 3527
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Scarab|r。掠夺他们的|cRXD_Loot_未被破解的Scarab外壳|r
.complete 2865,1 
.isOnQuest 2865
.dungeon ZF
step
#completewith next
+Ascend the Pyramid
>>杀死|cRXP_ENEMY_Sandfury刽子手|r。掠夺他以获得|cRXX_Loot_刽子手的钥匙|r
>>|cRXP_WARN_聚会中的任何人都可以掠夺|r|cRXP_loot_Key|r
>>|cRXP_WARN_使用|r|cRXP_LOOT_刽子手的钥匙|r|cRXP_WARN_在其中一个|cRX_PICK_Troll笼子|r上释放|cRXT_FRIENDLY_Srgeant Bly|r和他的乐队|r
.collect 8444,1 
.disablecheckbox
.isOnQuest 2768
.mob Sandfury Executioner
.dungeon ZF
step
>>防守|cRXP_FRIENDLY_Srgeant Bly|r和他的乐队，然后在短时间后与他们一起向下移动
>>杀死|cRXP_ENEMY_Nekrum Gutchewer|r。吃吃喝喝，然后与|cRXP-FRIENDLY_Srgeant Bly|r交谈，与他对抗
>>杀死|cRXP_ENEMY_Bly中士|r。掠夺他获得|cRXX_Loot_Divinomatic Rod|r
.complete 2768,1 
.isOnQuest 2768
.skipgossip
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Hydromancer Velratha|r。掠夺她获得|cRXD_Loot_Tiara of the Deep|r和|cRXT_Loot_Second Mosh'aru Tablet|r
.complete 2846,1 
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 2846
.isOnQuest 3527
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Hydromancer Velratha|r。掠夺她获得|cRXX_Loot_Tiara of the Deep|r
.complete 2846,1 
.mob Hydromancer Velratha
.isOnQuest 2846
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Hydromancer Velratha|r。掠夺她获得|cRXX_Loot_Second Mosh'aru平板电脑|r
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 3527
.dungeon ZF
step
#label Gahzrilla
>>|cRXP_WARN_使用|r|T133056:0|t[Zul'Farrak的Mallet]|cRXP_WARN_on the |cRX_PICK_Gong|r来召唤|r|cRXP_ENEMY_Gahz'rilla|r
>>杀死|cRXP_ENEMY_Gahz'rilla|r。掠夺他获得|cRXD_Loot_Gahz'rilla的带电天平|r
>>|cRXP_WARN_如果你的队伍中没有人拥有|r|T133056:0|t[Zul'Farrak的Mallet]|cRXP_WARN_，你将无法召唤|r|cRXP-ENEMY_Gahz'rilla|r
.complete 2770,1 
.mob Gahz'rilla
.isOnQuest 2770
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Trolls|r。掠夺他们的|cRXX_Loot_Toll脾气|r
.complete 3042,1 
.isOnQuest 3042
.dungeon ZF
step
.hs >>回到Gadgetzan
.use 6948
.cooldown item,6948,>0
.dungeon ZF
.zoneskip Tanaris
step
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦顿·轻锤|r
.turnin 3042 >>交任务: |cRXP_FRIENDLY_巨魔调和剂|r
.target Trenton Lighthammer
.isQuestComplete 3042
.dungeon ZF
step
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.turnin 2768 >>交任务: |cRXP_FRIENDLY_探水棒|r
.target Chief Engineer Bilgewhizzle
.isQuestComplete 2768
.dungeon ZF
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 2865 >>交任务: |cRXP_FRIENDLY_圣甲虫的壳|r
.target Tran'rek
.isQuestComplete 2865
.dungeon ZF
step
.goto Tanaris,52.40,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.accept 864 >>接任务: |cRXP_LOOT_向药剂师金格回报|r
.target Chief Engineer Bilgewhizzle
.isQuestTurnedIn 654
step
#completewith next
.goto Tanaris,66.989,22.354,100 >>前往Steamweidle港
.dungeon ZF
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 3527 >>交任务: |cRXP_FRIENDLY_摩沙鲁的预言|r
.target Yeh'kinya
.isQuestComplete 3527
.dungeon ZF
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 4787 >>接任务: |cRXP_WARN_远古之卵|r
.target Yeh'kinya
.isQuestTurnedIn 3527
.dungeon ZF
step
#completewith next
.zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
.dungeon ZF
step
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 2770 >>交任务: |cRXP_FRIENDLY_加兹瑞拉|r
.target Wizzle Brassbolts
.isQuestComplete 2770
.dungeon ZF
step
#optional
.abandon 2770 >>Abandon Gahz'rilla
.dungeon ZF
step
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Brackenwall >>Fly to Dustwallow Marsh
.target Bulkrek Ragefist
step
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.accept 1170 >>接任务: |cRXP_LOOT_奥妮克希亚的血脉|r
.target Draz'Zilb
step
.goto Dustwallow Marsh,36.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫格穆洛克大王|r
.turnin 1170 >>交任务: |cRXP_FRIENDLY_奥妮克希亚的血脉|r
.accept 1171 >>接任务: |cRXP_LOOT_奥妮克希亚的血脉|r
.target Overlord Mok'Morokk
step
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1171 >>交任务: |cRXP_FRIENDLY_奥妮克希亚的血脉|r
.accept 1172 >>接任务: |cRXP_LOOT_奥妮克希亚的血脉|r
.target Draz'Zilb
step
#completewith next
.goto Dustwallow Marsh,32.28,65.54,30,0
.subzone 498 >>向南前往Bloodfen Burrow
step
.goto Dustwallow Marsh,31.10,66.10
>>进入洞穴，然后单击岩石上的|cRXP_PICK_Musty Scroll|r
>>|cRXP_WARN_小心点，因为这个区域是超级典当行|r
.turnin 625 >>交任务: |cRXP_FRIENDLY_科泰罗的谜题|r
.accept 626 >>接任务: |cRXP_LOOT_科泰罗的谜题|r
.isOnQuest 625
.group
step
.goto Dustwallow Marsh,48.50,75.30,0
.goto Dustwallow Marsh,55.9,81.9,0
.goto Dustwallow Marsh,53.6,72.5
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_Onyxia的蛋|r进行销毁
.complete 1172,1 
step
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔贝萨|r
.turnin 2846 >>交任务: |cRXP_FRIENDLY_深渊皇冠|r
.target Tabetha
.isQuestComplete 2991
.dungeon ZF
step
.goto Dustwallow Marsh,48.50,75.30
.xp 47+118800 >>升级到47级+1118800

step
#completewith next
.goto Dustwallow Marsh,36.1,30.7,30,0
.subzone 496 >>向北行驶至Brackenwall村
step
.goto Dustwallow Marsh,37.15,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1172 >>交任务: |cRXP_FRIENDLY_奥妮克希亚的血脉|r
.target Draz'Zilb
step
#completewith next
.goto Dustwallow Marsh,36.30,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫格穆洛克大王|r
>>|cRXP_WARN_Accepting this quest turns|r |cRXP_ENEMY_Overlord Mok'Morokk|r |cRXP_WARN_hostile. 他击球非常用力，应该做好准备. Be prepared|r
.turnin 1172 >>交任务: |cRXP_FRIENDLY_奥妮克希亚的血脉|r
.accept 1173 >>接任务: |cRXP_LOOT_挑战莫格穆洛克|r
.unitscan Overlord Mok'Morokk
.group
step
.goto Dustwallow Marsh,36.30,31.50
>>将生命值降低到30%左右，击败|cRXP_ENEMY_Overlord Mok'Morokk|r
>>|cRXP_WARN_他击球非常用力，应该做好准备|r
.complete 1173,1 
.unitscan Overlord Mok'Morokk
.group 3
step
.goto Dustwallow Marsh,36.30,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫格穆洛克大王|r
>>|cRXP_WARN_不要接受这个任务的后续行动|r|cRXP_FRIENDLY_Mok'Morokk|r|cRXP_WARN_会变成敌人并杀死你|r
.turnin 1172 >>交任务: |cRXP_FRIENDLY_奥妮克希亚的血脉|r
.unitscan Overlord Mok'Morokk
.solo
step
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1173 >>交任务: |cRXP_FRIENDLY_挑战莫格穆洛克|r
.target Draz'Zilb
.isQuestComplete 1173
.group
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
.isOnQuest 2967
.dungeon ULDA
step << !Mage
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fly Thunder Bluff>>前往: |cRXP_PICK_雷霆崖|r
.target Shardi
.zoneskip Thunder Bluff
.isOnQuest 2967
.dungeon ULDA
step
.goto Thunder Bluff,75.67,31.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
.turnin 2967 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
.accept 2968 >>接任务: |cRXP_WARN_进一步的任务|r
.target Nara Wildmane
.isQuestTurnedIn 2954
.dungeon ULDA
step
.goto Thunder Bluff,34.42,46.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.turnin 2968 >>交任务: |cRXP_FRIENDLY_进一步的任务|r
.target Sage Truthseeker
.isQuestTurnedIn 2954
.dungeon ULDA
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14304 >>训练你的职业技能
.target Urek Thunderhorn
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14321 >>训练你的职业技能
.target Urek Thunderhorn
.xp <48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24562 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11578 >>训练你的职业技能
.target Ker Ragetotem
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 20661 >>训练你的职业技能
.target Ker Ragetotem
.xp <48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9823 >>训练你的职业技能
.target Turak Runetotem
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 22828 >>训练你的职业技能
.target Turak Runetotem
.xp <48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << !Mage
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Tal
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << !Mage
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Shardi
.zoneskip Dustwallow Marsh,1
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10197 >>训练你的职业技能
.target Pephredo
.xp <46,1
.xp >48,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10215 >>训练你的职业技能
.target Pephredo
.xp <48,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10945 >>训练你的职业技能
.target Ur'kyo
.xp <46,1
.xp >48,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10899 >>训练你的职业技能
.target Ur'kyo
.xp <48,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10586 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <46,1
.xp >48,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10431 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <48,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14304 >>训练你的职业技能
.target Ormak Grimshot
.xp <46,1
.xp >48,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14321 >>训练你的职业技能
.target Ormak Grimshot
.xp <48,1
step << Hunter
#optional
.goto Orgrimmar,66.33,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24562 >>训练你的宠物法术
.target Xao'tsu
.xp <48,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11578 >>训练你的职业技能
.target Grezz Ragefist
.xp <46,1
.xp >48,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20661 >>训练你的职业技能
.target Grezz Ragefist
.xp <48,1
step << Orc !Warlock
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r, |cRXP_FRIENDLY_奥古纳罗|r
.train 825 >>火车|T136103:0|t[骑狼]
.vendor >>|cRXP_BUY_BUY a|r|T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11293 >>训练你的职业技能
.target Ormok
.xp <46,1
.xp >48,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11299 >>训练你的职业技能
.target Ormok
.xp <48,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11699 >>训练你的职业技能
.target Mirket
.xp <46,1
.xp >48,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11712 >>训练你的职业技能
.target Mirket
.xp <48,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>升级宠物的能力
.target Kurgul
step
.goto Orgrimmar,56.40,46.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.turnin 32 >>交任务: |cRXP_FRIENDLY_异种蝎的威胁|r
.target Zilzibin Drumlore
step
.goto Orgrimmar,59.40,36.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dran|r
.accept 649 >>接任务: |cRXP_LOOT_寻找蜜酒|r
.target Dran Droffers
step
.goto Orgrimmar,59.50,36.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔顿·杜佛斯|r
.turnin 649 >>交任务: |cRXP_FRIENDLY_寻找蜜酒|r
.accept 650 >>接任务: |cRXP_LOOT_寻找蜜酒|r
.target Malton Droffers
step
.goto Orgrimmar,55.52,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰斯雷蒙|r
.accept 4300 >>接任务: |cRXP_LOOT_骨刃武器|r
.target Jes'rimon
step << Troll
#completewith next
.subzone 367 >>前往森津村
step << Troll
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 10861 >>火车|T136103:0|t[猛禽骑乘]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FF猛禽|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << !Mage
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
step
#optional
.abandon 2846 >>抛弃深渊的蒂亚拉
.isOnQuest 2846
.dungeon ZF
step
#optional
.abandon 3527 >>放弃Mosh’aru的预言
.isOnQuest 3527
.dungeon ZF
step
#optional
.abandon 2768 >>放弃神杖
.isOnQuest 2768
.dungeon ZF
step
#optional
.abandon 3042 >>Abandon Troll Temper
.isOnQuest 3042
.dungeon ZF
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 49-50 辛特兰
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 40-50
#next 50-51 Feralas
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜|r
.vendor >>至少购买四个|cRXP_Buy_Teleportation符文|r
.collect 17031,4 
.target Hannah Akeley
step
.goto Undercity,73.20,32.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oran|r
.accept 2995 >>接任务: |cRXP_LOOT_通讯路线|r
.target Oran Snakewrithe
step
.goto Undercity,50.00,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师金格|r
.turnin 864 >>交任务: |cRXP_FRIENDLY_向药剂师金格回报|r
.target Apothecary Zinge
.isOnQuest 864
step
.goto Undercity,53.77,54.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝尔杜加|r
.turnin 728 >>交任务: |cRXP_FRIENDLY_远赴幽暗城|r
.target Keeper Bel'dugur
.isOnQuest 728
.dungeon ULDA
step
.goto Undercity,62.31,48.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patrick|r
.turnin 2342 >>交任务: |cRXP_FRIENDLY_失而复得|r
.target Patrick
.dungeon ULDA
.isQuestComplete 2342
step
#completewith FlyTM1
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
.collect 4589,10,7842,1 >>|cRXP_BUY_从拍卖行购买十件|r|T135992:0|t[Long Elegant Feather]|cRXP_Buy_|r
.target Auctioneer Rhyker
step << Undead !Warlock
#completewith next
.subzone 159 >>Travel to Brill
step << Undead !Warlock
.goto Tirisfal Glades,60.09,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Velma, |cRXP_FRIENDLY_撒迦利亚·普斯特|r
.train 10906 >>火车|T136103:0|t[不死骑士术]
.vendor >>|cRXP_BUY_BUY a|r|T132264:0|t[|cFF0070FF骨骼马|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step
#label FlyTM1
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step
#optional
.abandon 2342 >>放弃回收的宝藏
.isOnQuest 2342
step
.goto Hillsbrad Foothills,61.53,19.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 2934 >>接任务: |cRXP_LOOT_完好无损的毒囊|r
.target Apothecary Lydon
step
.goto Hillsbrad Foothills,86.60,29.49,30,0
.goto The Hinterlands,9.7,55.8
.zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
#completewith AtalalExile
.goto The Hinterlands,35.9,63.9,40,0
.subzone 353 >>向东南行驶至Shadra'Alor
step
#completewith AtalalExile
>>杀死|cRXP_ENEMY_Witherbark Broodguard|r。掠夺它们以获得|cRXX_Loot_未损坏的毒液袋|r
>>|cRXP_WARN_|r|cRXP_OOT_Undamaged Venom Sac|r|cRXP_WARN_持续时间为30分钟，请尽快将其打开|r
.complete 2934,1 
.mob Witherbark Broodguard
step
.goto The Hinterlands,33.751,75.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1429 >>交任务: |cRXP_FRIENDLY_阿塔莱流放者|r
.accept 1444 >>接任务: |cRXP_WARN_向费泽鲁尔复命|r
.accept 1446 >>接任务: |cRXP_WARN_预言者迦玛兰|r
.target Atal'ai Exile
.dungeon ST
step
#label AtalalExile
.goto The Hinterlands,33.70,75.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1429 >>交任务: |cRXP_FRIENDLY_阿塔莱流放者|r
.accept 1444 >>接任务: |cRXP_WARN_向费泽鲁尔复命|r
.target Atal'ai Exile





step
.goto The Hinterlands,36.28,68.43,60,0
.goto The Hinterlands,34.16,67.00,60,0
.goto The Hinterlands,33.19,69.66,60,0
.goto The Hinterlands,30.66,69.71,60,0
.goto The Hinterlands,32.08,73.36,60,0
.goto The Hinterlands,35.48,74.42,60,0
.goto The Hinterlands,35.32,70.90,60,0
.goto The Hinterlands,35.79,64.35,60,0
.goto The Hinterlands,33.19,69.66
>>杀死|cRXP_ENEMY_Witherbark Broodguard|r。掠夺它们以获得|cRXX_Loot_未损坏的毒液袋|r
>>|cRXP_WARN_|r|cRXP_OOT_Undamaged Venom Sac|r|cRXP_WARN_持续时间为30分钟，请尽快将其打开|r
.complete 2934,1 
.mob Witherbark Broodguard
step
#completewith next
.goto Hillsbrad Foothills,60.8,21.2,60,0
.subzone 272 >>离开腹地，回到塔伦磨坊
step
.goto Hillsbrad Foothills,61.53,19.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
>>|cRXP_WARN_|r|cRXP_OOT_Undamaged Venom Sac|r|cRXP_WARN_持续时间为30分钟，请尽快将其打开|r
.turnin 2934 >>交任务: |cRXP_FRIENDLY_完好无损的毒囊|r
.target Apothecary Lydon










step
.goto The Hinterlands,26.70,48.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沃拉丁·猎日者|r
.turnin 650 >>交任务: |cRXP_FRIENDLY_寻找蜜酒|r
.accept 77 >>接任务: |cRXP_LOOT_收集蜜糖|r
.target Gilveradin Sunchaser
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>前往Revantusk村
step
#label ViHo
.goto The Hinterlands,72.50,66.20,50,0
.goto The Hinterlands,77.10,80.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠斯拉提|r
.accept 7839 >>接任务: |cRXP_LOOT_邪枝窃贼|r
.target Smith Slagtree
step
.goto The Hinterlands,78.20,81.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔德|r
.accept 7840 >>接任务: |cRXP_LOOT_拉尔德的午餐|r
.target Lard
step
.goto The Hinterlands,80.40,81.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_钓鱼者卡图姆|r
.accept 7815 >>接任务: |cRXP_LOOT_钳嘴龟！|r
.accept 7816 >>接任务: |cRXP_LOOT_加莫里塔！|r
.target Katoom the Angler
step
#completewith Gammerita
>>沿海岸抢劫|cRXP_PICK_Pupellyverbos Port Bottles|r
.complete 580,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Saltwater Snapjaws |r
.complete 7815,1 
.mob Saltwater Snapjaw
step
#label Gammerita
.goto The Hinterlands,81.87,49.36,70,0
.goto The Hinterlands,79.86,60.32,70,0
.goto The Hinterlands,78.54,67.85,70,0
.goto The Hinterlands,79.14,71.45,70,0
.goto The Hinterlands,77.47,75.83,70,0
.goto The Hinterlands,78.83,76.26
>>杀死|cRXP_ENEMY_Gammerita|r。掠夺她获得|cRXX_Loot_Katoom的最佳诱惑|r
>>|cRXP_WARN_她沿着海岸巡逻。把她放风筝给警卫。如果你不能始终如一地重新拴住她，那就等到她离村子很近的时候|r
.complete 7816,1 
.unitscan Gammerita
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击瀑布下的|cRXP_PICK_Cortello的谜语|r
.goto The Hinterlands,80.80,46.80
.turnin 626 >>交任务: |cRXP_FRIENDLY_科泰罗的谜题|r
.isOnQuest 626
.group
step
.goto The Hinterlands,84.40,41.30
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Lard的野餐篮|r。杀死3个产生的|cRXP_ENEMY_Vilebranch绑架者|r。偷走其中一个作为|cRXP_Loot_Lard的午餐|r
>>|cRXP_WARN_所有的暴民都有执行。在这个过程中要格外小心，尽量不要让你的健康下降到20%左右|r
.complete 7840,1 
.unitscan Vilebranch Kidnapper
step
#completewith next
>>沿海岸抢劫|cRXP_PICK_Pupellyverbos Port Bottles|r
.complete 580,1 
step
.loop 25,The Hinterlands,80.0,58.8,77.2,61.8,77.2,64.2,74.8,68.6,75.6,72.0,78.2,69.2,78.0,64.2,80.0,58.8
>>杀死|cRXP_ENEMY_Saltwater Snapjaws |r
.complete 7815,1 
.mob Saltwater Snapjaw
step
.goto The Hinterlands,79.86,60.32,80,0
.goto The Hinterlands,78.54,67.85,80,0
.goto The Hinterlands,79.14,71.45,80,0
.goto The Hinterlands,77.47,75.83,80,0
.goto The Hinterlands,78.83,76.26
>>沿海岸抢劫|cRXP_PICK_Pupellyverbos Port Bottles|r
.complete 580,1 
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>前往Revantusk村
step
.goto The Hinterlands,80.30,81.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_钓鱼者卡图姆|r
.turnin 7815 >>交任务: |cRXP_FRIENDLY_钳嘴龟！|r
.turnin 7816 >>交任务: |cRXP_FRIENDLY_加莫里塔！|r
.target Katoom the Angler
step
.goto The Hinterlands,78.20,81.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔德|r
.turnin 7840 >>交任务: |cRXP_FRIENDLY_拉尔德的午餐|r
.target Lard
step
.goto The Hinterlands,78.80,78.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师雅尔金|r
.accept 7844 >>接任务: |cRXP_LOOT_野蛮的亲戚|r
.target Mystic Yayo'jin
step
.goto The Hinterlands,79.40,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥索·莫吉克|r
.accept 7841 >>接任务: |cRXP_LOOT_给蛮锤部族的警告|r
.target Otho Moji'ko
step
.goto The Hinterlands,79.10,79.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎户马克霍尔|r
.accept 7828 >>接任务: |cRXP_LOOT_银鬃捕猎者|r
.accept 7829 >>接任务: |cRXP_LOOT_野蛮的枭兽|r
.accept 7830 >>接任务: |cRXP_LOOT_死者的复仇|r
.target Huntsman Markhor
step
#completewith Bucket
>>杀死|cRXP_ENEMY_Silvermane跟踪者|r
.complete 7828,1 
.mob Silvermane Stalker
step
#completewith Bucket
.use 9618 >>杀死|cRXP_ENEMY_Savage Owlbeasts|r并在其尸体附近使用|T133841:0|t[Wildkin Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 7829,1 
.complete 3123,1 
.mob Savage Owlbeast
step
#completewith Bucket
>>杀死|cRXP_ENEMY_Vilebranch头皮|r和|cRXX_ENEMY_Villebranch烟灰层|r
>>|cRXP_ENEMY_Vilebranch头皮|r|cRXP_WARN_have执行。在这个过程中要格外小心，尽量不要让你的健康下降到20%左右|r
.complete 7844,1 
.complete 7844,2 
.mob Vilebranch Scalper
.mob Vilebranch Soothsayer
step
#label Bucket
.goto The Hinterlands,72.53,52.92,25,0
.goto The Hinterlands,71.14,48.64,25,0
.goto The Hinterlands,66.09,44.71,25,0
.goto The Hinterlands,57.57,42.50,25,0
.goto The Hinterlands,53.18,39.20,25,0
.goto The Hinterlands,72.53,52.92,25,0
.goto The Hinterlands,71.14,48.64,25,0
.goto The Hinterlands,66.09,44.71,25,0
>>织机|cRXP_PICK_Slagtree丢失的工具|r（一个小桶）
>>|cRXP_WARN_水桶可以在5个位置产卵|r
.complete 7839,1 
step
#completewith next
.goto The Hinterlands,58.7,41.9,50,0
.subzone 351 >>向西北方向行驶，然后进入洞穴Skulk Rock
step
.goto The Hinterlands,57.50,39.50,20,0
.goto The Hinterlands,56.5,43.9
>>掠夺|cRXP_PICK_Horde补给箱|r以获取|cRXP_Loot_Hinderlands蜂蜜波纹|r
.complete 77,1 
step
#completewith QuelDanilLodge
.use 9618 >>杀死|cRXP_ENEMY_Savage Owlbeasts|r并在其尸体附近使用|T133841:0|t[Wildkin Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 7829,1 
.complete 3123,1 
.mob Savage Owlbeast
step
#completewith next
>>杀死|cRXP_ENEMY_Silvermane咆哮者|r
.complete 7828,2 
.mob Silvermane Howler
step
#label QuelDanilLodge
#completewith next
.goto The Hinterlands,31.06,47.84,50,0
.subzone 350 >>向西前往奎尔达尼尔旅馆
step
#completewith Escort
>>杀死|cRXP_ENEMY_Highvale High Elves |r
>>|cRXP_WARN_小心你的健康|r|cRXP_ENEMY_Highvale Rangers|r|cRXP_WARN_can精灵之火，使逃生更加困难|r << Rogue
.complete 7841,1 
.complete 7841,2 
.complete 7841,3 
.complete 7841,4 
.mob Highvale Scout
.mob Highvale Outrunner
.mob Highvale Ranger
.mob Highvale Marksman
step
#label Notes
.goto The Hinterlands,29.60,48.70
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击地面上的|cRXP_PICK_Highvale Notes |r
.complete 2995,2 
step
.goto The Hinterlands,28.60,46.10
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击表上的|cRXP_PICK_Highvale报告|r
.complete 2995,3 
step
#requires Notes
.goto The Hinterlands,32.00,46.90
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击地面上的|cRXP_PICK_Highvale Records|r
.complete 2995,1 
step
.goto The Hinterlands,30.73,46.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林吉|r
>>|cRXP_WARN_这将开始护送！|r
.accept 2742 >>接任务: |cRXP_LOOT_林吉被困住了！|r
.target Rin'ji
step
#label Escort
.goto The Hinterlands,34.98,56.92
>>护送|cRXP_FRIENDLY_Rin'ji|r
.complete 2742,1 
step
.loop 25,The Hinterlands,33.0,51.6,30.4,51.0,29.6,48.6,28.6,46.6,29.6,48.6,32.2,47.6,32.6,43.6,33.8,44.8,33.8,48.6,33.0,51.6
>>完成杀戮|cRXP_ENEMY_Highvale High Elves |r
>>|cRXP_WARN_小心你的健康|r|cRXP_ENEMY_Highvale Rangers|r|cRXP_WARN_can精灵之火，使逃生更加困难|r << Rogue
.complete 7841,1 
.complete 7841,2 
.complete 7841,3 
.complete 7841,4 
.mob Highvale Scout
.mob Highvale Outrunner
.mob Highvale Ranger
.mob Highvale Marksman
step
#completewith Tragan
>>杀死|cRXP_ENEMY_Silvermane咆哮者|r
.complete 7828,2 
.mob Silvermane Howler
step
.goto The Hinterlands,26.61,48.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沃拉丁·猎日者|r
.turnin 77 >>交任务: |cRXP_FRIENDLY_收集蜜糖|r
.accept 81 >>接任务: |cRXP_LOOT_送回蜜酒|r
.target Gilveradin Sunchaser
step
#completewith JinthaAlor
+|cRXP_WARN_你现在应该开始为金塔的颜色任务寻找一个团队（5人）
.group
step
#label Tragan
.goto The Hinterlands,40.00,59.90
>>游到池塘底部，然后掠夺|cRXP_PICK_Mushroom|r以获得|cRXP _loot_Violet Tragan|r
.complete 2641,1 
step
.loop 25,The Hinterlands,51.0,41.6,51.4,47.8,51.2,57.2,50.6,63.6,49.6,59.8,45.6,58.8,43.2,61.8,39.2,63.2,36.8,58.6,39.4,55.8,38.8,50.8,39.4,46.2,43.4,46.4,38.8,50.8
>>完成击杀|cRXP_ENEMY_Silvermane Howlers|r
.complete 7828,2 
.mob Silvermane Howler
step
.loop 25,The Hinterlands,45.6,63.4,44.4,67.0,46.4,68.8,49.6,65.2,50.6,65.8,50.6,62.4,45.6,63.4
>>完成杀死神庙基座周围的|cRXP_ENEMY_Vilebranch Scapers|r和|cRXX_ENEMY_Villebranch Soothlayers|r
>>|cRXP_ENEMY_Vilebranch头皮|r|cRXP_WARN_have执行。在这个过程中要格外小心，尽量不要让你的健康下降到20%左右|r
>>|cRXP_WARN_不要爬到顶端！有高水平的精英|r
.complete 7844,1 
.complete 7844,2 
.mob Vilebranch Scalper
.mob Vilebranch Soothsayer
step
#completewith SkylordPlume
>>杀死|cRXP_ENEMY_Silvermane跟踪者|r
.complete 7828,1 
.mob Silvermane Stalker
step
#completewith next
.use 9618 >>杀死|cRXP_ENEMY_Savage Owlbeasts|r并在其尸体附近使用|T133841:0|t[Wildkin Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 7829,1 
.mob Savage Owlbeast
step
#label SkylordPlume
.loop 25,The Hinterlands,53.0,56.6,54.0,54.2,56.0,51.6,58.6,53.0,61.0,54.8,64.2,56.6,63.8,53.6,64.6,48.6,66.6,42.6,61.4,42.4,60.6,48.2,59.8,52.2,57.0,50.2,54.6,47.0,51.0,44.0,50.6,53.0,56.6
>>找到并杀死一个|cRXP_ENEMY_Razorbeak Skylord|r。掠夺它的|cRXX_Loot_Plume|r
.complete 7830,1 
.unitscan Razorbeak Skylord
step
#completewith Stalkers
.use 9618 >>杀死|cRXP_ENEMY_Savage Owlbeasts|r并在其尸体附近使用|T133841:0|t[Wildkin Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 7829,1 
.mob Savage Owlbeast
step
#label Stalkers
.loop 25,The Hinterlands,70.6,63.4,70.6,57.4,73.2,52.6,69.0,50.6,69.0,45.6,66.6,48.0,63.2,47.8,61.6,41.8,58.6,46.8,56.2,46.8,54.4,44.0,53.6,49.2,53.2,55.6,55.6,51.4,58.6,53.2,60.8,55.6,64.0,54.6,66.6,57.2,68.4,62.6,70.6,63.4
>>完成杀戮|cRXP_ENEMY_Silvermane追踪者|r
.complete 7828,1 
.mob Silvermane Stalker
step
.loop 25,The Hinterlands,70.6,63.4,70.6,57.4,73.2,52.6,69.0,50.6,69.0,45.6,66.6,48.0,63.2,47.8,61.6,41.8,58.6,46.8,56.2,46.8,54.4,44.0,53.6,49.2,53.2,55.6,55.6,51.4,58.6,53.2,60.8,55.6,64.0,54.6,66.6,57.2,68.4,62.6,70.6,63.4
.use 9618 >>杀死|cRXP_ENEMY_Savage Owlbeasts|r并在其尸体附近使用|T133841:0|t[Wildkin Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 7829,1 
.mob Savage Owlbeast
step

.goto The Hinterlands,49.30,37.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
.accept 485 >>接任务: |cRXP_LOOT_找到OOX-09/HL！|r
.turnin 485 >>交任务: |cRXP_FRIENDLY_找到OOX-09/HL！|r
.target Homing Robot OOX-09/HL
.itemcount 8704,1 
.solo
step
.goto The Hinterlands,49.35,37.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
>>|cRXP_WARN_这种护送可能是致命的。如果这会使你的跑步面临风险，请毫不犹豫地放弃尝试|r
.accept 836 >>接任务: |cRXP_LOOT_拯救OOX-09/HL！|r
.target Homing Robot OOX-09/HL
.isQuestTurnedIn 485
.solo

step
.goto The Hinterlands,79.47,61.21
>>护送|cRXP_FRIENDLY_Homing Robot OOX-09/HL|r到海岸
>>|cRXP_WARN_这种护送可能是致命的。如果这会使你的跑步面临风险，请毫不犹豫地放弃尝试|r
>>|cRXP_WARN_一包3只46级|r|cRXP_ENEMY_劫掠猫头鹰|r|cRXP_WARN_将在Skulk Rock以南的路上产卵。他们对低生命值感到愤怒，所以试着一次杀死一个|r
>>|cRXP_WARN_一包3级47级|r|cRXP_ENEMY_Vilebranch伏击者|r|cRXP_WARN_将在金塔洛以北的树林中产卵。当你的生命值低于20%时，它们就会执行。如果可以的话，可以使用长CC，并将鸡罐放在一两个CC上，直到它的生命值达到一半左右|r
.complete 836,1 
.target Homing Robot OOX-09/HL
.mob Marauding Owlbeast
.unitscan Vilebranch Ambusher
.isQuestTurnedIn 485
.solo
step
.goto The Hinterlands,86.30,59.00
>>|TInterface/GossipFrame/HealerGossipIcon:0|t游到远东的岛屿，然后点击|cRXP_PICK_Rinji的秘密|r
.turnin 2742 >>交任务: |cRXP_FRIENDLY_林吉被困住了！|r
.accept 2782 >>接任务: |cRXP_LOOT_林吉的秘密|r
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>前往Revantusk村
step
.goto The Hinterlands,77.20,80.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠斯拉提|r
.turnin 7839 >>交任务: |cRXP_FRIENDLY_邪枝窃贼|r
.target Smith Slagtree
step
.goto The Hinterlands,78.80,78.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7844 >>交任务: |cRXP_FRIENDLY_野蛮的亲戚|r
.target Mystic Yayo'jin
step
#label JinthaAlor
.goto The Hinterlands,79.08,78.99
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Call to Arms|r在小屋旁要海报
>>|cRXP_WARN_这是5人小组任务|r
.accept 7861 >>接任务: |cRXP_LOOT_通缉：邪恶祭司海克斯和她的爪牙|r
.accept 7862 >>接任务: |cRXP_LOOT_职位空缺：恶齿村卫兵队长|r
.group
step
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥索·莫吉克|r
.turnin 7841 >>交任务: |cRXP_FRIENDLY_给蛮锤部族的警告|r
.target Otho'Mojiko
step
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥索·莫吉克|r
.accept 7842 >>接任务: |cRXP_LOOT_又一个给蛮锤部族的警告|r
.turnin 7842 >>交任务: |cRXP_FRIENDLY_又一个给蛮锤部族的警告|r
.target Otho Moji'ko
.addquestitem 4589,7842
step
.goto The Hinterlands,79.10,79.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎户马克霍尔|r
.turnin 7828 >>交任务: |cRXP_FRIENDLY_银鬃捕猎者|r
.turnin 7829 >>交任务: |cRXP_FRIENDLY_野蛮的枭兽|r
.turnin 7830 >>交任务: |cRXP_FRIENDLY_死者的复仇|r
.target Huntsman Markhor
step
#completewith next
.goto The Hinterlands,78,14,81.38,25,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔德|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Lard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎户马克霍尔|r, Torntusk
>>|cRXP_WARN_这是5人小组任务|r
.accept 7849 >>接任务: |cRXP_LOOT_分离的痛苦|r
.goto The Hinterlands,79.16,79.53
.accept 7845 >>接任务: |cRXP_LOOT_被绑架的断齿长者！|r
.accept 7850 >>接任务: |cRXP_LOOT_黑暗之瓶|r
.goto The Hinterlands,78.20,81.17
.target Huntsman Markhor
.target Primal Torntusk
.group
step
#completewith Vilebranchs
>>掠夺地上的|cRXP_Loot_染血血管|r
>>|cRXP_WARN_不要担心专注于此；你可以在后面的步骤中完成|r
.complete 7850,1 
.isOnQuest 7850
.group 5
step
#completewith ReKey
>>杀死|cRXP_ENEMY_Vilebranch巨魔|r
>>|cRXP_WARN_不要担心专注于此；你可以在后面的步骤中完成|r
.complete 7862,4 
.complete 7862,1 
.complete 7862,3 
.complete 7862,2 
.mob Vilebranch Soul Eater
.mob Vilebranch Berserker
.mob Vilebranch Blood Drinker
.mob Vilebranch Shadow Hunter
.isOnQuest 7862
.group 5
step
.goto The Hinterlands,62.1,75.3
>>在|cRXP_Loot_Huntsman Malkhor的骨|r的坑中心处掠夺|cRXP _PICK_骨堆|r
.complete 7849,2 
.isOnQuest 7849
.group 5
step
.goto The Hinterlands,58.6,64.9
>>为|cRXP_Loot_Huntsman Malkhor的头骨|r掠夺|cRXP_PICK_头骨堆|r
.complete 7849,1 
.isOnQuest 7849
.group 5
step
.goto The Hinterlands,59.6,77.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿长者|r
.turnin 7845 >>交任务: |cRXP_FRIENDLY_被绑架的断齿长者！|r
.accept 7846 >>接任务: |cRXP_LOOT_找回钥匙！|r
.target Elder Torntusk
.isOnQuest 7845
.group
step
.goto The Hinterlands,59.6,77.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿长者|r
.accept 7846 >>接任务: |cRXP_LOOT_找回钥匙！|r
.target Elder Torntusk
.isQuestTurnedIn 7845
.group
step
.goto The Hinterlands,59.3,78.2
>>杀死|cRXP_ENEMY_邪恶女祭司十六进制|r
>>|cRXP_WARN_对她的六角术能力要格外小心，因为她可能会发送垃圾邮件|r
.complete 7861,1 
.unitscan Vile Priestess Hexx
.isOnQuest 7861
.group 5
step
#completewith Hitahya
>>|cRXP_WARN你可以通过跳一跳|r来达到更高的级别（无需与许多守卫战斗）
.link https://www.youtube.com/watch?v=UPiNtMem9tM >>单击此处查看视频指南
.group
step
#completewith next
>>掠夺|cRXP_Loot_Acient Egg|r
.complete 4787,1 
.isQuestTurnedIn 3527
.group 5
step
#label Hitahya
.goto The Hinterlands,57.8,86.8
>>杀死守护者|cRXP_ENEMY_Hitah'ya |r。为她掠夺她|cRXX_Loot_Key|r
.complete 7846,1 
.unitscan Hitah'ya the Keeper
.isOnQuest 7846
.group 5
step
.goto The Hinterlands,57.60,86.79
>>掠夺|cRXP_Loot_Acient Egg|r
.complete 4787,1 
.isQuestTurnedIn 3527
.group 5
step
.goto The Hinterlands,59.6,77.9
>>杀死|cRXP_ENEMY_Vilebranch Aman'zasi近卫|r
.complete 7861,2 
.mob Vilebranch Aman'zasi Guard
.isOnQuest 7846
.group 5
step
.goto The Hinterlands,59.6,77.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿长者|r
.turnin 7846 >>交任务: |cRXP_FRIENDLY_找回钥匙！|r
.accept 7847 >>接任务: |cRXP_LOOT_向断齿族长复命|r
.target Elder Torntusk
.isQuestComplete 7846
.group
step
#label ReKey
.goto The Hinterlands,59.6,77.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿长者|r
.accept 7847 >>接任务: |cRXP_LOOT_向断齿族长复命|r
.target Elder Torntusk
.isQuestTurnedIn 7846
.group
step
#label Vilebranchs
.goto The Hinterlands,60.6,65.4
>>完成击杀|cRXP_ENEMY_Vilebranch巨魔|r
>>|cRXP_ENEMY_食魂者|r|cRXP_WARN_处于2级|r|cRXP_ENEMY_Berserkers|r|cRXP_WARN_are处于第三级|r|cRXP_ENEMY_Blood Drinkers |r|cRXP_WARN_and |r|cRXP__ENEMY_Shadow Hunters |r| cRXP_WARN_are on the 4th and 5th level|r
.complete 7862,4 
.complete 7862,1 
.complete 7862,3 
.complete 7862,2 
.mob Vilebranch Soul Eater
.mob Vilebranch Berserker
.mob Vilebranch Blood Drinker
.mob Vilebranch Shadow Hunter
.isOnQuest 7862
.group 5
step
.goto The Hinterlands,67.9,73.4
>>完成掠夺地面上的|cRXP_LOOT_污血血管|r
.complete 7850,1 
.isOnQuest 7850
.group 5
step

.goto The Hinterlands,49.30,37.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
.accept 485 >>接任务: |cRXP_LOOT_找到OOX-09/HL！|r
.turnin 485 >>交任务: |cRXP_FRIENDLY_找到OOX-09/HL！|r
.target Homing Robot OOX-09/HL
.itemcount 8704,1 
.group
step
.goto The Hinterlands,49.35,37.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
>>|cRXP_WARN_这种护送可能是致命的。如果这会使你的跑步面临风险，请毫不犹豫地放弃尝试|r
.accept 836 >>接任务: |cRXP_LOOT_拯救OOX-09/HL！|r
.target Homing Robot OOX-09/HL
.isQuestTurnedIn 485
.group
step
.goto The Hinterlands,79.47,61.21
>>护送|cRXP_FRIENDLY_Homing Robot OOX-09/HL|r到海岸
>>|cRXP_WARN_这种护送可能是致命的。如果这会使你的跑步面临风险，请毫不犹豫地放弃尝试|r
>>|cRXP_WARN_一包3只46级|r|cRXP_ENEMY_劫掠猫头鹰|r|cRXP_WARN_将在Skulk Rock以南的路上产卵。他们对低生命值感到愤怒，所以试着一次杀死一个|r
>>|cRXP_WARN_一包3级47级|r|cRXP_ENEMY_Vilebranch伏击者|r|cRXP_WARN_将在金塔洛以北的树林中产卵。当你的生命值低于20%时，它们就会执行。如果可以的话，可以使用长CC，并将鸡罐放在一两个CC上，直到它的生命值达到一半左右|r
.complete 836,1 
.target Homing Robot OOX-09/HL
.mob Marauding Owlbeast
.unitscan Vilebranch Ambusher
.isQuestTurnedIn 485
.group
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>前往Revantusk村
.group
step
.goto The Hinterlands,78.80,78.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7862 >>交任务: |cRXP_FRIENDLY_职位空缺：恶齿村卫兵队长|r
.turnin 7861 >>交任务: |cRXP_FRIENDLY_通缉：邪恶祭司海克斯和她的爪牙|r
.target Mystic Yayo'jin
.isQuestComplete 7862
.isQuestComplete 7861
.group
step
.goto The Hinterlands,78.80,78.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7861 >>交任务: |cRXP_FRIENDLY_通缉：邪恶祭司海克斯和她的爪牙|r
.target Mystic Yayo'jin
.isQuestComplete 7861
.group
step
.goto The Hinterlands,78.80,78.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7862 >>交任务: |cRXP_FRIENDLY_职位空缺：恶齿村卫兵队长|r
.target Mystic Yayo'jin
.isQuestComplete 7862
.group
step
.goto The Hinterlands,79.16,79.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎户马克霍尔|r
.turnin 7849 >>交任务: |cRXP_FRIENDLY_分离的痛苦|r
.target Huntsman Markhor
.isQuestComplete 7849
.group
step
#completewith next
.goto The Hinterlands,78,14,81.38,25,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔德|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Lard
.group
step
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿族长|r
.turnin 7845 >>交任务: |cRXP_FRIENDLY_被绑架的断齿长者！|r
.turnin 7850 >>交任务: |cRXP_FRIENDLY_黑暗之瓶|r
.turnin 7847 >>交任务: |cRXP_FRIENDLY_向断齿族长复命|r
.target Primal Torntusk
.isOnQuest 7845
.isQuestComplete 7850
.isOnQuest 7847
.group
step
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿族长|r
.turnin 7845 >>交任务: |cRXP_FRIENDLY_被绑架的断齿长者！|r
.target Primal Torntusk
.isOnQuest 7845
.group
step
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿族长|r
.turnin 7850 >>交任务: |cRXP_FRIENDLY_黑暗之瓶|r
.target Primal Torntusk
.isQuestComplete 7850
.group
step
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿族长|r
.turnin 7847 >>交任务: |cRXP_FRIENDLY_向断齿族长复命|r
.target Primal Torntusk
.isOnQuest 7847
.group
step
#completewith next
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格卡斯|r
.fly Hammerfall >>飞到Hammerfall
.target Gorkas
.skill firstaid,<260,1
step
.goto Arathi Highlands,73.41,36.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里高利·维克托医生|r
.train 18629 >>Train Runecloth Bandage
.target Doctor Gregory Victor
.skill firstaid,<260,1
step << !Mage
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤尔达|r
.fp Hinterlands >>获取腹地航线
.fly Undercity >>飞到地下城
.target Urda
.zoneskip Arathi Highlands,1
step << !Mage
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格卡斯|r
.fly Undercity >>飞到地下城
.target Gorkas
.zoneskip The Hinterlands,1
step << Mage
#completewith next
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜|r
.vendor >>至少购买四个|cRXP_Buy_Teleportation符文|r
.collect 17031,4 
.target Hannah Akeley
step
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
>>|cRXP_BUY_从拍卖行购买以下物品|r
>>|cRXP_WARN_然后把它们存到银行！|r
.collect 8391,5,2581,1 
.collect 8392,6,2581,1 
.collect 8393,6,2581,1 
.collect 8396,14,2581,1 
.collect 8394,11,2581,1 
.collect 4457,10 
.target Auctioneer Rhyker
.group
step
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
>>|cRXP_BUY_从拍卖行购买以下物品|r
>>|cRXP_WARN_然后把它们存到银行！|r
.collect 8391,5,2581,1 
.collect 8392,6,2581,1 
.collect 8393,6,2581,1 
.collect 8396,14,2581,1 
.collect 8394,11,2581,1 
.target Auctioneer Rhyker
.solo
step
.goto Undercity,73.50,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oran|r
.turnin 2995 >>交任务: |cRXP_FRIENDLY_通讯路线|r
.turnin 2782 >>交任务: |cRXP_FRIENDLY_林吉的秘密|r
.accept 8273 >>接任务: |cRXP_WARN_奥兰的感谢|r
.turnin 8273 >>交任务: |cRXP_FRIENDLY_奥兰的感谢|r
.target Oran Snakewrithe
step
.goto Undercity,48.50,71.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师科雷|r
.accept 3568 >>接任务: |cRXP_WARN_堕落之水|r
.target Chemist Cuely
step
#optional
.abandon 7862 >>放弃职位空缺：Revantusk村的警卫队长
.isOnQuest 7862
step
#optional
.abandon 7861 >>遗弃通缉犯：邪恶的女祭司赫克斯和她的小黄人
.isOnQuest 7861
step
#optional
.abandon 7849 >>放弃分离焦虑
.isOnQuest 7849
step
#optional
.abandon 7845 >>抛弃被绑架的老龙牙！
.isOnQuest 7845
step
#optional
.abandon 7850 >>Abandon Dark Vessels
.isOnQuest 7850
step
#optional
.abandon 7846 >>放弃恢复密钥！
.isOnQuest 7846
step
.hs >>从赫斯到塔纳瑞斯
.use 6948
step
#completewith next
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Dirge Quikcleave
step
.goto Tanaris,51.10,26.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普琳科|r
.turnin 2641 >>交任务: |cRXP_FRIENDLY_斯普琳科的秘密佐料|r
.accept 2661 >>接任务: |cRXP_LOOT_给马林的粉末|r
.target Sprinkle
step
.goto Tanaris,51.80,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin|r
.turnin 2661 >>交任务: |cRXP_FRIENDLY_给马林的粉末|r
.accept 2662 >>接任务: |cRXP_LOOT_诺格弗格药剂|r
.turnin 2662 >>交任务: |cRXP_FRIENDLY_诺格弗格药剂|r
.collect 8529,60 >>|cRXP_WARN_随身携带一堆|r|T134863:0|t[Noggenfogger Elixir]|cRXP_WARN_on是一种很好的做法。多买两堆，然后存起来|r
.target Marin Noggenfogger
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 4787 >>交任务: |cRXP_FRIENDLY_远古之卵|r
.target Yeh'kinya
.isQuestComplete 4787
.dungeon ZF
step
#sticky
#completewith EnterMaraudon
.subzone 2100 >>现在你应该找一个去马劳东的团队
.dungeon MARA
step
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Shadowprey Village >>飞往Shadowprey村
.target Bullkrek Ragefist
.zoneskip Feralas
.dungeon MARA
step
.goto Desolace,23.22,70.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vark|r at the top of the hut
.accept 7029 >>接任务: |cRXP_WARN_维利塔恩的污染|r
.target Vark Battlescar
.dungeon MARA
step
.goto Desolace,26.87,77.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟琳德拉|r
.accept 7064 >>接任务: |cRXP_WARN_大地的污染|r
.target Selendra
.dungeon MARA
step
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_半人马贱民|r
>>|cRXP_WARN_|cRXP_FRIENDLY_Centaur Paria|r在德索拉斯南部附近巡逻|r
.accept 7067 >>接任务: |cRXP_WARN_贱民的指引|r
.target Centaur Pariah
.dungeon MARA
step
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维洛|r
.accept 7028 >>接任务: |cRXP_WARN_扭曲的邪恶|r
.target Willow
.dungeon MARA
step
.goto Desolace,29.89,62.44,0
.goto 1414,38.43,57.97
.zone 1414 >>前往: |cRXP_PICK_凄凉之地|r
.dungeon MARA
step
#completewith EnterMaraudon
>>杀死Maraudon的所有|cRXP_ENEMY_Monsters|r。掠夺他们的|cRXP_Loot_Theradric水晶雕刻|r
>>|cRXP_WARN_这可以在实例的外部和内部完成。现在不要尝试完成此操作|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
>>杀死|cRXP_ENEMY_无名先知|r。为|T133277:0|t[|cRXP-Loot_灵魂护身符|r]掠夺它
>>|cRXP_WARN_这是在实例之外完成的|cRXP_ENEMY_无名先知|r可能正在巡逻|r
.collect 17757,1,7067,1 
.mob The Nameless Prophet
.isOnQuest 7067
.dungeon MARA
step
#completewith next
>>杀死|cRXP_ENEMY_Shadowshard Smasher|r和|cRXD_ENEMY_ Shadowshard Rumbler|r。掠夺他们的|cRXP_Loot_Shadowshard碎片|r
>>|cRXP_WARN_这些仅在实例外部的紫色部分中找到|r
.complete 7068,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7068
.dungeon MARA
step
.goto 1414,38.469,57.287,20,0
.goto 1414,38.380,57.376,30,0
.goto 1414,38.469,57.287
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_精灵护身符|r]|cRXP_WARN_在|r|cRXP-FRIENDLY_Spirit of Gelk上|r
>>杀死|cRXP_ENEMY_Gelk|r。为第二可汗的|T134104:0|t[|cRXX_Loot_Gem|r]掠夺他
>>|cRXP_WARN_这是在实例之外完成的|r
.collect 17762,1,7067,1 
.use 17757 
.mob Spirit of Gelk
.mob Gelk
.isOnQuest 7067
.dungeon MARA
step
.goto 1414,38.13,56.90,60,0
.goto 1414,28.76,56.96,60,0
.goto 1414,38.13,56.90
>>杀死|cRXP_ENEMY_Shadowshard Smasher|r和|cRXD_ENEMY_ Shadowshard Rumbler|r。掠夺他们的|cRXP_Loot_Shadowshard碎片|r
>>|cRXP_WARN_这些仅在实例外部的紫色部分中找到|r
.complete 7068,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7068
.dungeon MARA
step
.goto 1414,38.497,57.721
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_精灵护身符|r]|cRXP_WARN_在|r|cRXP-FRIENDLY_Spirit of Kolk上|r
>>杀死|cRXP_ENEMY_Kolk|r。掠夺他获得|T134129:0|t[|cRXX_Loot_Gem|r]
>>|cRXP_WARN_这是在实例之外完成的|r
.collect 17761,1,7067,1 
.use 17757 
.mob Spirit of Kolk
.mob Kolk
.isOnQuest 7067
.dungeon MARA
step
.goto 1414,38.77,58.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_半人马贱民|r
.accept 7044 >>接任务: |cRXP_WARN_玛拉顿的传说|r
.target Cavindra
.dungeon MARA
step
.goto 1414,38.928,58.354
>>|cRXP_WARN_在橙色水池中使用|r|T134865:0|t[涂层Cerulean小瓶]|cRXP_WARN_in|r
.complete 7029,2 
.use 17693 
.isOnQuest 7029
.dungeon MARA
step
.goto 1414,39.00,58.32,70,0
.goto 1414,39.13,57.68,60,0
.goto 1414,39.25,57.71,20,0
.goto 1414,39.13,57.68
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵符|r]|cRXP_WARN_在|r|cRXP-FRIENDLY_Spirit of Magra上|r
>>杀死|cRXP_ENEMY_Magra|r。为第三可汗的|T134135:0|t[|cRXX_Loot_Gem|r]掠夺他
>>|cRXP_WARN_这是在实例之外完成的|r
.collect 17763,1,7067,1 
.use 17757 
.mob Spirit of Magra
.mob Magra
.isOnQuest 7067
.dungeon MARA
step
#label EnterMaraudon
.goto 1414,39.266,58.205
.zone 280 >>通过橙色边输入Maraudon实例
.dungeon MARA
step
#completewith CrystalCarving
>>杀死Maraudon中的任何|cRXP_ENEMY_Monster|r。掠夺他们的|cRXP_Loot_Theradric水晶雕刻|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
#completewith next
>>|cRXP_WARN_在橙色内部的小花/植物上使用|r|T134804:0|t[填充的Cerulean小瓶]|cRXP_WARN_|r
>>杀死被召唤的|cRXP_ENEMY_Noxxious Scion|r
.complete 7029,1 
.use 17696 
.isOnQuest 7029
.dungeon MARA
step
>>|cRXP_WARN_在Veng的|r|cRXP_FRIENDLY_Spirit上使用|r|T133277:0|t[|cRXP_LOOT_灵符|r]|cRXP _WARN_|r
>>杀死|cRXP_ENEMY_Veng|r。掠夺他获得|T134116:0|t[|cRXX_Loot_Gem|r]
>>|cRXP_ENEMY_Veng|r|cRXP_WARN_trols在Maraudon橙色实例内部|r
.collect 17765,1,7067,1 
.use 17757 
.mob Spirit of Veng
.mob Veng
.isOnQuest 7067
.dungeon MARA
step
>>|cRXP_WARN_在橙色内部的小花/植物上使用|r|T134804:0|t[填充的Cerulean小瓶]|cRXP_WARN_|r
>>杀死被召唤的|cRXP_ENEMY_Noxxious Scion|r
.complete 7029,1 
.use 17696 
.isOnQuest 7029
.dungeon MARA
step
>>杀死|cRXP_ENEMY_Noxxion|r。掠夺他以获得|cRXD_Loot_庆祝棒|r
>>杀死|cRXP_ENEMY_Lord Vyletong|r。掠夺他获得|cRXP_Loot_ Celebrian Diamond|r
>>|cRXP_ENEMY_橙色部分的Noxxion |r|cRXP_WARN_is和紫色部分的|cRXP-ENEMY_Lord Vyletong|r|r
.complete 7044,2 
.complete 7044,1 
.isOnQuest 7044
.dungeon MARA
step
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵符|r]|cRXP_WARN_在|r|cRXP-FRIENDLY_Spirit of Maraudos上|r
>>杀死|cRXP_ENEMY_Maraudos|r。为第四可汗的|T134132:0|t[|cRXP-Loot_Gem|r]掠夺他
>>|cRXP_ENEMY_Maraudos|r|cRXP_WARN_trols在Maraudon紫色实例内部|r
.collect 17764,1,7067,1 
.use 17757 
.mob Spirit of Maraudos
.mob Maraudos
.isOnQuest 7067
.dungeon MARA
step
>>|cRXP_WARN_Channel任意一个|r|T134129:0|t|T134104:0|t| T134135:0 |t|T134132:0|t|134116:0|t[|cRXP_LOOT_Gems of the Khans|r]|cRXP_WARN_to create the |r|T133277:0|t[| cRXP_OOT_Amulet of Union|r]
.complete 7067,1 
.use 17761,1
.use 17762,1
.use 17763,1
.use 17764,1
.use 17765,1
.itemcount 17761,1
.itemcount 17762,1
.itemcount 17763,1
.itemcount 17764,1
.itemcount 17765,1
.isOnQuest 7067
.dungeon MARA
step
>>杀死|cRXP_ENEMY_庆祝被诅咒的人|r，然后与|cRXP-FRIENDLY_Celebras救赎者交谈|r
.turnin 7044 >>交任务: |cRXP_FRIENDLY_玛拉顿的传说|r
.isQuestComplete 7044
.mob Celebras the Cursed
.target Celebras the Redeemed
.dungeon MARA
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.accept 7046 >>接任务: |cRXP_WARN_塞雷布拉斯节杖|r
.timer 14,Incantation of Celebras Spawning RP
.target Celebras the Redeemed
.isQuestTurnedIn 7044
.dungeon MARA
step
.cast 6477 >>点击地面上的|cRXP_PICK_Celebras咒语|r
.timer 34,The Scepter of Celebras RP
.isQuestTurnedIn 7044
.dungeon MARA
step
>>|cRXP_WARN_等待RP|r
.complete 7046,1 
.isQuestTurnedIn 7044
.dungeon MARA
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.turnin 7046 >>交任务: |cRXP_FRIENDLY_塞雷布拉斯节杖|r
.isQuestTurnedIn 7044
.target Celebras the Redeemed
.dungeon MARA
step
>>杀死|cRXP_ENEMY_Theradas公主|r
.complete 7064,1 
.mob Princess Theradras
.isOnQuest 7064
.dungeon MARA
step
#label CrystalCarving
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔塔的灵魂|r
.accept 7066 >>接任务: |cRXP_WARN_生命之种|r
.target Zaetar's Spirit
.dungeon MARA
step
>>杀死Maraudon中的任何|cRXP_ENEMY_Monster|r。掠夺他们的|cRXP_Loot_Theradric水晶雕刻|r
>>|cRXP_WARN_这可以在实例外部和内部完成|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
.zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
.link https://www.youtube.com/watch?v=_Y2qVZjYjwo&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
.dungeon MARA
step
.goto Desolace,26.87,77.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟琳德拉|r
.turnin 7064 >>交任务: |cRXP_FRIENDLY_大地的污染|r
.target Selendra
.isQuestComplete 7064
.dungeon MARA
step
.goto Desolace,23.22,70.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vark|r at the top of the hut
.turnin 7029 >>交任务: |cRXP_FRIENDLY_维利塔恩的污染|r
.target Vark Battlescar
.isQuestComplete 7029
.dungeon MARA
step
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_半人马贱民|r
>>|cRXP_WARN_|cRXP_FRIENDLY_Centaur Paria|r在德索拉斯南部附近巡逻|r
.turnin 7067 >>交任务: |cRXP_FRIENDLY_贱民的指引|r
.target Centaur Pariah
.isQuestComplete 7067
.dungeon MARA
step
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维洛|r
.turnin 7028 >>交任务: |cRXP_FRIENDLY_扭曲的邪恶|r
.target Willow
.isQuestComplete 7028
.dungeon MARA
step
.hs >>从赫斯到塔纳瑞斯
.use 6948
.dungeon MARA
step
#completewith next
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Dirge Quikcleave
.dungeon MARA
step
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Feralas>>Fly to Feralas
.target Bullkrek Ragefist
.zoneskip Feralas
step
#optional
.abandon 7029 >>放弃Vyletong腐败
.isOnQuest 7029
.dungeon MARA
step
#optional
.abandon 7064 >>弃土弃种
.isOnQuest 7064
.dungeon MARA
step
#optional
.abandon 7067 >>放弃教区的指示
.isOnQuest 7067
.dungeon MARA
step
#optional
.abandon 7028 >>Abandon Twisted Evils
.isOnQuest 7028
.dungeon MARA
step
#optional
.abandon 7068 >>放弃阴影碎片
.isOnQuest 7068
.dungeon MARA
step
#optional
.abandon 7044 >>放弃马劳东传说
.isOnQuest 7044
.dungeon MARA
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 50-60
#name 50-51 Feralas
#next 51-52荆棘/爆破地
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step
.goto Feralas,76.20,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.accept 3063 >>接任务: |cRXP_LOOT_对鹰身人的复仇|r
.accept 3062 >>接任务: |cRXP_LOOT_黑暗之心|r
.target Talo Thornhoof
.group
step
.goto Feralas,76.20,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.accept 3063 >>接任务: |cRXP_LOOT_对鹰身人的复仇|r
.target Talo Thornhoof
step
.goto Feralas,74.50,42.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杉多尔·迅蹄|r
.accept 7734 >>接任务: |cRXP_LOOT_更高的品质|r
.target Jangdor Swiftstrider
step
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3123 >>交任务: |cRXP_FRIENDLY_测试容器|r
.accept 3124 >>接任务: |cRXP_LOOT_角鹰兽灵魂精华|r
.accept 3128 >>接任务: |cRXP_LOOT_天然材料|r
.target Witch Doctor Uzer'i
step
#completewith next
.goto Feralas,58.0,53.1,50,0
.goto Feralas,54.2,68.6,0
.subzone 1106 >>向西南方向前往弗雷费瑟高地
step
.loop 25,Feralas,55.6,60.6,55.4,64.2,53.8,66.8,54.6,68.6,54.0,71.6,54.2,72.6,55.6,75.2,57.0,74.8,56.0,72.4,55.0,70.6,56.2,66.0,56.8,65.6,57.4,62.6,55.6,60.6
.use 9619 >>杀死|cRXP_ENEMY_Frayfeather Hippogryphs |r。掠夺它们的|cRXP_Loot_Frages|r
>>在他们的尸体上使用|T133841:0|t[Hippogryph Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 3124,1 
.complete 3128,4 
.mob Frayfeather Stagwing
.mob Frayfeather Skystormer
.mob Frayfeather Hippogryph
.mob Frayfeather Patriarch
step
#completewith next
.goto Feralas,75.9,43.7,0
.subzone 1099 >>Travel to Camp Mojache
step
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3124 >>交任务: |cRXP_FRIENDLY_角鹰兽灵魂精华|r
.accept 3125 >>接任务: |cRXP_LOOT_精灵龙灵魂精华|r
.target Witch Doctor Uzer'i
step
.goto Feralas,69.55,46.96,50,0
.goto Feralas,68.82,48.54,50,0
.goto Feralas,67.69,47.95,50,0
.goto Feralas,66.57,47.74,50,0
.goto Feralas,69.55,46.96,50,0
.goto Feralas,68.82,48.54,50,0
.goto Feralas,67.69,47.95
.use 9620 >>杀死|cRXP_ENEMY_Sprite飞镖手|r。掠夺他们的|cRXD_Loot_Minerals|r。
>>在他们的尸体上使用|T133841:0|t[精灵龙Muisek容器]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 3125,1 
.complete 3128,2 
.mob Sprite Darter
step
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3125 >>交任务: |cRXP_FRIENDLY_精灵龙灵魂精华|r
.accept 3126 >>接任务: |cRXP_LOOT_树人灵魂精华|r
.target Witch Doctor Uzer'i
step
.goto Feralas,69.4,44.6,70,0
.goto Feralas,70.6,41.8,70,0
.goto Feralas,75.0,38.6,70,0
.goto Feralas,77.4,40.8,70,0
.goto Feralas,78.6,42.4,70,0
.goto Feralas,79.6,45.4,70,0
.goto Feralas,69.4,44.6
.line Feralas,55.8,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >>杀死|cRXP_ENEMY_Wandering Forest Walkers |r。掠夺他们的|cRXD_Loot_Splicented Logs|r
>>在他们的尸体上使用|T133841:0|t[Treant Muisek Vessel]
>>|cRXP_WARN_箭头将引导你沿着他们的巡逻路线，这些路线也在你的世界地图上标出。任务物品有冷却时间，一次只对一具尸体有效，即使它们是堆叠的|r
.collect 9590,1 
.collect 9593,1 
.unitscan Wandering Forest Walker
step
.goto Feralas,67.97,59.99,70,0
.goto Feralas,68.99,60.19,70,0
.goto Feralas,69.57,59.39,70,0
.goto Feralas,70.42,57.76,70,0
.goto Feralas,71.48,58.00,70,0
.goto Feralas,72.27,59.39,70,0
.goto Feralas,72.71,58.54,70,0
.goto Feralas,74.24,58.18,70,0
.goto Feralas,74.72,56.33,70,0
.goto Feralas,74.24,58.18,70,0
.goto Feralas,72.89,57.66,70,0
.goto Feralas,72.67,56.02,70,0
.goto Feralas,73.44,54.87,70,0
.goto Feralas,73.60,53.79,70,0
.goto Feralas,73.97,53.33,70,0
.goto Feralas,74.26,53.12,70,0
.goto Feralas,73.94,51.66,70,0
.goto Feralas,72.80,50.88,70,0
.line Feralas,55.8.,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >>杀死|cRXP_ENEMY_Wandering Forest Walkers |r。掠夺他们的|cRXD_Loot_Splicented Logs|r
>>在他们的尸体上使用|T133841:0|t[Treant Muisek Vessel]
>>|cRXP_WARN_箭头将引导你沿着他们的巡逻路线，这些路线也在你的世界地图上标出。任务物品有冷却时间，一次只对一具尸体有效，即使它们是堆叠的|r
.collect 9590,2 
.collect 9593,2 
.unitscan Wandering Forest Walker
step
.goto Feralas,58.6,52.0,70,0
.goto Feralas,60.0,48.8,70,0
.goto Feralas,57.8,48.0,70,0
.goto Feralas,55.6,47.0,70,0
.goto Feralas,53.2,46.6,70,0
.goto Feralas,51.6,49.0,70,0
.goto Feralas,58.6,52.0
.line Feralas,55.8.,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >>杀死|cRXP_ENEMY_Wandering Forest Walkers |r。掠夺他们的|cRXD_Loot_Splicented Logs|r
>>在他们的尸体上使用|T133841:0|t[Treant Muisek Vessel]
>>|cRXP_WARN_箭头将引导你沿着他们的巡逻路线，这些路线也在你的世界地图上标出。任务物品有冷却时间，一次只对一具尸体有效，即使它们是堆叠的|r
.collect 9593,3 
.unitscan Wandering Forest Walker
step
#completewith next
.goto Feralas,75.9,43.7,0
.subzone 1099 >>Travel to Camp Mojache
step
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3126 >>交任务: |cRXP_FRIENDLY_树人灵魂精华|r
.accept 3127 >>接任务: |cRXP_LOOT_山岭巨人灵魂精华|r
.target Witch Doctor Uzer'i
step
#completewith next
.goto Feralas,51.89,49.82,30,0
.goto Feralas,48.82,45.15,30,0
.goto Feralas,45.67,46.94,30,0
.subzone 1108 >>向西前往被遗忘的海岸
step
.goto Feralas,44.81,43.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔宾·范达瑟|r
.accept 7003 >>接任务: |cRXP_LOOT_被缩小的巨人|r
.target Zorbin Fandazzle
step
#completewith next
>>留意|T134362:0|t[|cRXP_LOOT_Perfect Yeti Hide|r]
>>|cRXP_WARN_还不接受任务！如果在收集所有|r|cRXP_LOOT_愤怒的疤痕Yeti隐藏物之前找不到，请跳过此步骤|r
.collect 18972,1 
step
.goto Feralas,52.05,31.82,40,0
.loop 25,Feralas,52.06,30.72,52.50,29.74,53.09,30.80,52.05,31.82,53.11,31.79,54.33,32.54,55.07,32.27,55.43,33.53,55.81,33.0,54.34,33.21,54.81,33.86,54.34,33.21,55.81,33.0,55.43,33.53,55.07,32.27,54.33,32.54,53.11,31.79,52.05,31.82,52.06,30.72
>>杀死|cRXP_ENEMY_Rage Scar Yetis|r。掠夺他们的|cRXP_Loot_Hides|r
.complete 7734,1 
.mob Ferocious Rage Scar
.mob Rage Scar Yeti
.mob Elder Rage Scar
step
.loop 25,Feralas,41.08,24.52,39.36,24.29,38.38,22.21,38.52,20.83,39.47,22.04,41.08,24.52
.use 18904 >>在|cRXP_ENEMY_Land Walkers|r和|cRXP_ENEMY_Cliff Giants|r上使用|T133003:0|t[Zorbin的超收缩器]。杀死他们并掠夺他们的|cRXD_loot_REduce|r
.use 9621 >>在他们的尸体上使用|T133841:0|t
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 3127,1 
.collect 18956,8 
.mob Land Walker
.mob Cliff Giant
step
#completewith next
.goto Feralas,40.9,12.0,0
.subzone 1114 >>北上前往瑞文风废墟
step
#completewith next
>>杀死|cRXP_ENEMY_Northspring Harpies|r。为|T134228:0|t[哈塔伦之角]掠夺它们
>>|cRXP_WARN_喇叭的下降率很低，可能需要一段时间才能拿到|r
.complete 3063,1 
.complete 3063,2 
.complete 3063,3 
.complete 3063,4 
.collect 9530,1 
.mob Northspring Harpy
.mob Northspring Roguefeather
.mob Northspring Slayer
.mob Northspring Windcaller
.group 2
step
.goto Feralas,40.56,8.58
.use 9530 >>使用|T134228:0|t[哈塔隆之角]召唤|cRXP_ENEMY_Edana哈塔隆|r。杀死她并为她掠夺|cRXX_loot_Heart|r
.complete 3062,1 
.unitscan Edana of Hatetalon
.group 2
step
.loop 25,Feralas,38.62,13.35,38.61,14.64,39.78,14.09,39.95,12.41,40.98,11.09,39.70,11.09,38.83,10.87,38.07,12.04,38.62,13.35
>>杀死|cRXP_ENEMY_Northspring Harpies|r
.complete 3063,1 
.complete 3063,2 
.complete 3063,3 
.complete 3063,4 
.mob Northspring Harpy
.mob Northspring Roguefeather
.mob Northspring Slayer
.mob Northspring Windcaller
step
.loop 25,Feralas,41.08,24.52,39.36,24.29,38.38,22.21,38.52,20.83,39.47,22.04,41.08,24.52
.use 18904 >>在|cRXP_ENEMY_Land Walkers|r和|cRXP_ENEMY_Cliff Giants|r上使用|T133003:0|t[Zorbin的超收缩器]。杀死他们并掠夺他们的|cRXD_loot_REduce|r
.use 9621 >>在他们的尸体上使用|T133841:0|t
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 3127,1 
.complete 7003,1 
.mob Land Walker
.mob Cliff Giant
step
.goto Feralas,38.1,14.4
.xp 51 >>升级到51级

step
#completewith next
.goto Feralas,44.8,44.0,0
.subzone 1108 >>向南前往被遗忘的海岸
step
.goto Feralas,44.81,43.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔宾·范达瑟|r
.turnin 7003 >>交任务: |cRXP_FRIENDLY_被缩小的巨人|r
.target Zorbin Fandazzle
step << Druid
#completewith DruidTraining11
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 22828 >>训练你的职业技能
.target Loganaar
.xp <48,1
.xp >50,1
step << Druid
#label DruidTraining11
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9884 >>训练你的职业技能
.target Loganaar
.xp <50,1
step
#completewith next
.hs >>Gadgetzan之炉
.use 6948
step
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Dirge Quikcleave
step
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3380 >>交任务: |cRXP_FRIENDLY_沉没的神庙|r
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,27.00,55.66,150,0
.goto Tanaris,27.00,50.21
.zone Un'Goro Crater >>前往: |cRXP_PICK_安戈洛环形山|r
step
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 4289 >>接任务: |cRXP_LOOT_安戈洛的猩猩|r
.accept 4290 >>接任务: |cRXP_LOOT_拉克维的食物|r
.target Torwa Pathfinder
step
#completewith Scent
.loop 25,Un'Goro Crater,68.2,75.0,67.0,71.2,67.8,67.0,68.0,61.6,64.8,62.6,63.0,66.4,61.6,70.8,59.8,75.2,59.4,79.0,62.0,82.4,61.8,76.0,63.6,77.2,66.2,77.8,68.2,75.0
>>杀死|cRXP_ENEMY_Ravasaur猛禽|r。掠夺它们的|cRXX_Loot_爪|r
>>|cRXP_WARN_现在不要专注于这个任务，只要他们穿过你的路就杀了他们|r
.complete 4300,1 
.mob Ravasaur
.mob Ravasaur Hunter
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Matriarch
.isOnQuest 4300
step
#completewith BoneBlade
.goto Un'Goro Crater,70.60,53.26,0
>>保存25个|cRXP_LOOT_Un'Goro土壤|r，您将在探索时从暴徒手中掠夺这些土壤
.collect 11018,25 
step
#completewith BoneBlade
.goto Un'Goro Crater,73.06,51.57,0
>>掠夺7|cRXP_Loot_Power水晶|r每种颜色
.collect 11186,7 
.collect 11188,7 
.collect 11185,7 
.collect 11184,7 
step
.goto Un'Goro Crater,63.10,68.60
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wrecked Raft|r
.accept 3844 >>接任务: |cRXP_LOOT_无人知晓的秘密|r
step
.goto Un'Goro Crater,63.10,69.00
>>|TInterface/GossipFrame/HealerGossipIcon:0|t进入水下，然后单击|cRXP_PICK_Small Pack |r
.turnin 3844 >>交任务: |cRXP_FRIENDLY_无人知晓的秘密|r
.accept 3845 >>接任务: |cRXP_LOOT_无人知晓的秘密|r
step
.goto Un'Goro Crater,68.80,56.80
>>将|cRXP_PICK_新鲜Thresadon尸体|r作为|cRXP_Loot_ Thresadon尸块|r
.complete 4290,1 
step
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4290 >>交任务: |cRXP_FRIENDLY_拉克维的食物|r
.accept 4291 >>接任务: |cRXP_LOOT_拉克维的气味|r
.target Torwa Pathfinder
step
.goto Un'Goro Crater,67.30,73.10,20,0
.goto Un'Goro Crater,66.60,66.70
>>踩在小蛋窝上召唤|cRXP_ENEMY_Lar'Korwi Mates|r。杀死它们并掠夺它们的|cRXX_loot_GRAND|r
.complete 4291,1 
.unitscan Lar'Korwi Mate
step
#label Scent
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4291 >>交任务: |cRXP_FRIENDLY_拉克维的气味|r
.target Torwa Pathfinder
step
#label BoneBlade
.loop 25,Un'Goro Crater,68.2,75.0,67.0,71.2,67.8,67.0,68.0,61.6,64.8,62.6,63.0,66.4,61.6,70.8,59.8,75.2,59.4,79.0,62.0,82.4,61.8,76.0,63.6,77.2,66.2,77.8,68.2,75.0
>>杀死|cRXP_ENEMY_Ravasaur猛禽|r。掠夺它们的|cRXX_Loot_爪|r
.complete 4300,1 
.mob Ravasaur
.mob Ravasaur Hunter
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Matriarchaw
.isOnQuest 4300
step 
>>织机7 |cRXP_Loot_每种颜色的功率晶体|r
>>|cRXP_WARN_尽量留在西部/西北部/北部地区。他们有较低级别的暴徒可以逃跑|r
.collect 11186,7 
.collect 11188,7 
.collect 11185,7 
.collect 11184,7 
step
#completewith next
.goto Un'Goro Crater,44.70,8.10
.use 11107 >>打开|T133653:0|t[A Small Pack]获取以下内容：
.complete 3845,1 
.complete 3845,2 
.complete 3845,3 
step
#completewith next
.goto Un'Goro Crater,44.6,8.2
.subzone 541 >>向北前往元帅避难所
step
.goto Un'Goro Crater,44.70,8.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3845 >>交任务: |cRXP_FRIENDLY_无人知晓的秘密|r
.accept 3908 >>接任务: |cRXP_LOOT_无人知晓的秘密|r
.target Linken
step
#completewith next
.destroy 11107 >>摧毁: |cRXP_ENEMY_小背包|r
.destroy 3108 >>摧毁: |cRXP_ENEMY_破损的重型飞刀|r
.destroy 11108 >>摧毁: |cRXP_ENEMY_褪色的照片|r
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.90,2.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.accept 4284 >>接任务: |cRXP_LOOT_能量水晶|r
.turnin 4284 >>交任务: |cRXP_FRIENDLY_能量水晶|r
.target J.D. Collie
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t退出洞穴，然后与|cRXP_FRIENDLY_Gryfe|r交谈
.fp Marshal >>获取Un'Goro陨石坑飞行路线
.fly Camp Mojache >>飞往莫雅奇营地
.target Gryfe
step
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3128 >>交任务: |cRXP_FRIENDLY_天然材料|r
.turnin 3127 >>交任务: |cRXP_FRIENDLY_山岭巨人灵魂精华|r
.accept 3129 >>接任务: |cRXP_LOOT_灵魂武器|r
.target Witch Doctor Uzer'i
step
.goto Feralas,74.43,42.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杉多尔·迅蹄|r
.turnin 7734 >>交任务: |cRXP_FRIENDLY_更高的品质|r
.target Jangdor Swiftstrider
step
.goto Feralas,74.43,42.91
.use 18972 >>使用|T134362:0|t[|cRXP_LOOT_Perfect Yeti Hide|r]接受任务
.accept 7738 >>接任务: |cRXP_WARN_完美的雪人毛皮|r
.itemcount 18972,1
step
.goto Feralas,74.43,42.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杉多尔·迅蹄|r
.turnin 7738 >>交任务: |cRXP_FRIENDLY_完美的雪人毛皮|r
.target Jangdor Swiftstrider
.isOnQuest 7738
step
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 3063 >>交任务: |cRXP_FRIENDLY_对鹰身人的复仇|r
.accept 4120 >>接任务: |cRXP_WARN_堕落的力量|r
.turnin 3062 >>交任务: |cRXP_FRIENDLY_黑暗之心|r
.target Talo Thornhoof
.isQuestComplete 3062
.group
step
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 3063 >>交任务: |cRXP_FRIENDLY_对鹰身人的复仇|r
.accept 4120 >>接任务: |cRXP_WARN_堕落的力量|r
.target Talo Thornhoof
step
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3129 >>交任务: |cRXP_FRIENDLY_灵魂武器|r
.target Witch Doctor Uzer'i
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step << Druid
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9884 >>训练你的职业技能
.target Jannos Lighthoof
.xp <50,1
.xp >52,1
step << Druid
#optional
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9894 >>训练你的职业技能
.target Jannos Lighthoof
.xp <52,1
step << Shaman
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Shyn
step << Shaman
.goto Orgrimmar,38.66,35.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨格尼|r
.accept 8410 >>接任务: |cRXP_WARN_元素掌握|r
.target Sagorne Creststrider
step << Shaman
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Crossroads >>飞向十字路口
.target Doras
step << !Shaman
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩|r
.fly Crossroads >>飞向十字路口
.target Shyn
step
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
.home >>将您的炉石设置为十字路口
.target Innkeeper Boorand Plainswind
step
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
step
#optional
.abandon 3062 >>Abandon Dark Heart
.isOnQuest 3062
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 51-52荆棘/爆破地
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 50-60
#next 52-53灼热的峡谷/燃烧的草原
step
.goto The Barrens,62.50,38.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv|r
.accept 4502 >>接任务: |cRXP_LOOT_火山的活动|r
.target Liv Rizzlefix
step
.goto The Barrens,62.50,38.60
>>抢劫|cRXP_PICK_Marvon的箱子|r用于|cRXP_Loot_Stone Circle|r的建筑外
.complete 3444,1 
step
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,23.60,72.00
>>杀死|cRXP_ENEMY_Mok'rash|r。掠夺他|T133694:0|t[|cRXD_Loot_Mogrammed Sash|r]。使用它开始任务
.collect 3985,1,8552 
.accept 8552 >>接任务: |cRXP_LOOT_刺着字母的腰带|r
.use 3985
.group 3
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 648 >>交任务: |cRXP_FRIENDLY_拯救OOX-17/TN！|r
.target Oglethorpe Obnoticus
.isQuestComplete 648
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 836 >>交任务: |cRXP_FRIENDLY_拯救OOX-09/HL！|r
.target Oglethorpe Obnoticus
.isQuestComplete 836
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 2767 >>交任务: |cRXP_FRIENDLY_拯救OOX-22/FE！|r
.target Oglethorpe Obnoticus
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.accept 3721 >>接任务: |cRXP_WARN_你自己的OOX|r
.turnin 3721 >>交任务: |cRXP_FRIENDLY_你自己的OOX|r
.target Oglethorpe Obnoticus
.isQuestTurnedIn 648
.isQuestTurnedIn 836
.isQuestTurnedIn 2767
step
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.turnin 8552 >>交任务: |cRXP_FRIENDLY_刺着字母的腰带|r
.target Captain Hecklebury Smotts
.isOnQuest 8552
.group
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r, |cRXP_FRIENDLY_斯普罗格|r
.accept 615 >>接任务: |cRXP_LOOT_船长的弯刀|r
.goto Stranglethorn Vale,26.69,73.62
.turnin 615 >>交任务: |cRXP_FRIENDLY_船长的弯刀|r
.goto Stranglethorn Vale,26.66,73.64
.target Captain Hecklebury Smotts
.target Sprogger
.isQuestTurnedIn 8552
.group
step
#ah
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普罗格|r
.accept 8554 >>接任务: |cRXP_WARN_挑战奈古拉什|r
.target Sprogger
.group
step
#completewith next
.goto Stranglethorn Vale,26.55,76.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r
.bankwithdraw 4306,15 >>从您的银行提取15|T132905:0|t[丝绸]
.target Viznik
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.turnin 2874 >>交任务: |cRXP_FRIENDLY_给马克基雷的货物|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.10,77.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威士忌斯利姆|r
.turnin 580 >>交任务: |cRXP_FRIENDLY_威士忌斯利姆的酒|r
.target Whiskey Slim
step
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.turnin 1122 >>交任务: |cRXP_FRIENDLY_向菲兹巴布报告|r
.target Crank Fizzlebub
step
#ah
.goto Stranglethorn Vale,27.04,77.17,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼克拉克斯·菲拉莫格|r
>>|cRXP_WARN_如果您没有得到|r|T133974:0|t[烤鸡翅]|cRXP_WARN_earlier（并且您的小组成员都没有），则跳过此步骤。总共需要10个翅膀才能召唤|r|cRXP_ENEMY_Negolash|r
.vendor >>购买|cRXP_Buy_Junglevine葡萄酒|r，来自|cRXP-FRIENDLY_Nixxrax|r
.collect 4457,10 
.collect 4595,5 
.target Nixxrax Fillamug
.group
step
#ah
#completewith next
.goto Stranglethorn Vale,29.83,72.25,50,0
.goto Stranglethorn Vale,33.66,75.05,50,0
.subzone 43 >>从Booty Bay向北行驶，然后向东前往海滩
.group
step
#ah
.goto Stranglethorn Vale,32.5,81.90
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_毁坏的救生艇|r
.turnin 619 >>交任务: |cRXP_FRIENDLY_引诱奈古拉什|r
.group
step
#ah
.goto Stranglethorn Vale,32.50,81.94
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_Ruined Lifeboat|r召唤|cRXP_ENEMY_Negolash|r。杀死他并掠夺他以获得|cRXD_loot_Smotts的切割玻璃|r
>>|cRXP_WARN_如果您没有得到|r|T133974:0|t[烤鸡翅]|cRXP_WARN_earlier（并且您的小组成员都没有），则跳过此步骤。总共需要10个翅膀才能召唤|r|cRXP_ENEMY_Negolash|r
.complete 8554,1 
.unitscan Negolash
.group 3
step
#loop
.goto Stranglethorn Vale,34.22,73.25,60,0
.goto Stranglethorn Vale,34.01,77.21,60,0
.goto Stranglethorn Vale,32.34,79.44,60,0
.goto Stranglethorn Vale,32.38,82.23,60,0
>>沿东南海岸抢劫|cRXP_PICK_Half-Burried Bottles|r
.collect 4098,1,594
.accept 594 >>接任务: |cRXP_LOOT_瓶中信|r
step
.goto Stranglethorn Vale,38.53,80.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普巴尔公主|r
.turnin 594 >>交任务: |cRXP_FRIENDLY_瓶中信|r
.accept 630 >>接任务: |cRXP_LOOT_瓶中信|r
.target Princess Poobah
.group
step
.goto Stranglethorn Vale,40.94,83.89
>>杀死|cRXP_ENEMY_King Mukla|r。掠夺他的|cRXX_Loot_Key|r
>>|cRXP_WARN_清除|r|cRXP_ENEMY_King Mukla|r|cRXP_WARN_周围的一点空间，因为他有恐惧|r
.complete 630,1 
.unitscan King Mukla
.group 4
step
.goto Stranglethorn Vale,38.53,80.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普巴尔公主|r
.turnin 630 >>交任务: |cRXP_FRIENDLY_瓶中信|r
.target Princess Poobah
.group
step
#ah
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普罗格|r
.turnin 8554 >>交任务: |cRXP_FRIENDLY_挑战奈古拉什|r
.target Sprogger
.isQuestComplete 8554
.group
step << Shaman
.goto Stranglethorn Vale,26.55,76.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r
.bankwithdraw 7069,7068,7067,7070 >>从您的银行提取以下项目：
+|T135805:0|t[元素之火]
+|T134714:0|t[元素水]
+|T134572:0|t[元素土]
+|T136107:0|t[元素空气]
.target Viznik
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8643 >>训练你的职业技能
.target Ian Strom
.xp <50,1
.xp >52,1
step << Rogue
#optional
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 11342 >>训练你的职业技能
.target Ian Strom
.xp <52,1
step
#ah
#completewith next
+如果您早些时候从拍卖行购买了以下物品，请从银行提取
+|T133972:0|t[Snickerfang Jowl]
+|T134343:0|t[炸猪肺]
+|T133708:0|t[Scorpok Pincer]
+|T134342:0|t[Vulture Gizzard]
+|T134340:0|t[蛇头脑]
step
.goto Stranglethorn Vale,26.87,77.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Stonard>>飞往斯托纳德
.target Gringer
step
.goto Swamp of Sorrows,47.90,55.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费泽鲁尔|r
.turnin 1444 >>交任务: |cRXP_FRIENDLY_向费泽鲁尔复命|r
.target Fel'zerul
step << Hunter
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 13554 >>训练你的职业技能
.target Ogrom
.xp <50,1
.xp >52,1
step << Hunter
#optional
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 13543 >>训练你的职业技能
.target Ogrom
.xp <52,1
step << Warlock
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 17925 >>训练你的职业技能
.target Kartosh
.xp <50,1
.xp >52,1
step << Warlock
#optional
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 11675 >>训练你的职业技能
.target Kartosh
.xp <52,1
step << Warlock
.goto Swamp of Sorrows,48.59,55.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.vendor >>购买任何你能负担得起的宠物升级
.target Greshka
step << Shaman
#optional
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 10437 >>训练你的职业技能
.target Haromm
.xp <50,1
.xp >52,1
step << Shaman
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 10467 >>训练你的职业技能
.target Haromm
.xp <52,1
step << Warrior
#optional
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 1719 >>训练你的职业技能
.target Malosh
.xp <50,1
.xp >52,1
step << Warrior
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 11551 >>训练你的职业技能
.target Malosh
.xp <52,1
step
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏塔佐尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Thultazor
step
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔塔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Rartar
step << Warrior
.goto Swamp of Sorrows,34.20,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 8423 >>接任务: |cRXP_WARN_战士的血脉|r
.target Fallen Hero of the Horde
step << Warrior
.loop 25,Blasted Lands,53.6,37.2,54.6,41.4,55.6,43.2,52.8,41.8,50.2,38.6,48.0,37.6,46.6,40.2,44.6,37.0,44.6,33.8,48.0,34.4,50.8,36.0,53.6,37.2
>>在爆炸的土地上杀死|cRXP_ENEMY_Helboars|r
.complete 8423,1 
.mob Helboar
step << Warrior
.goto Swamp of Sorrows,34.20,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 8423 >>交任务: |cRXP_FRIENDLY_战士的血脉|r
.accept 8424 >>接任务: |cRXP_WARN_魔誓者之战|r
.target Fallen Hero of the Horde
step
#completewith LuckyFragment
>>在您进行探索时，请留意|T134089:0|t[|cRXP_LOOT_Impefect Draenethyst Fragments|r]和|T134564:0|t[|cRXP-LOOT_Iflawless Draenethyst Sphere|r]
.collect 10593,1,3501,1 
.collect 8244,1,3501,1 
step << Hunter/Rogue
.goto Blasted Lands,48.00,20.13,80,0
.goto Blasted Lands,44.61,24.93,80,0
.goto Blasted Lands,44.72,33.85,80,0
.goto Blasted Lands,50.40,37.51,80,0
.goto Blasted Lands,54.88,44.05,80,0
.goto Blasted Lands,56.54,37.12,80,0
.goto Blasted Lands,62.30,28.86,80,0
.goto Blasted Lands,50.40,37.51
>>杀死|cRXP_ENEMY_Scorpids|r、|cRXD_ENEMY_Vultures |r和|cRXP_ENEMY_Boars|r。掠夺它们的|cRXP_Loot_Picker|r、| cRXP_Loot_Gizzards|r和| cRXD_Loot_Lungs|r
.collect 8393,3,2585,1 
.collect 8396,2,2585,1 
.collect 8392,1,2585,1 
.mob Scorpok Stinger
.mob Black Slayer
.mob Ashmane Boar
step << Hunter/Rogue
#sf
.goto Blasted Lands,50.55,14.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2585 >>接任务: |cRXP_WARN_决定性的打击|r
.turnin 2585 >>交任务: |cRXP_FRIENDLY_决定性的打击|r
.target Bloodmage Drazial
step << Druid/Warrior/Shaman
.goto Blasted Lands,48.00,20.13,80,0
.goto Blasted Lands,44.61,24.93,80,0
.goto Blasted Lands,44.72,33.85,80,0
.goto Blasted Lands,50.40,37.51,80,0
.goto Blasted Lands,54.88,44.05,80,0
.goto Blasted Lands,56.54,37.12,80,0
.goto Blasted Lands,62.30,28.86,80,0
.goto Blasted Lands,50.40,37.51
>>杀死|cRXP_ENEMY_Hyenas|r、|cRXD_ENEMY_Boars|r和|cRXP_ENEMY_Scorpids|r。掠夺它们的|cRXP_Loot_Jowls|r，|cRXT_Loot_Lung|r和| cRXP_Loot_Pincers|r
.collect 8391,3,2581,1 
.collect 8392,2,2581,1 
.collect 8393,1,2581,1 
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Druid/Warrior/Shaman
#ssf
.goto Blasted Lands,50.55,14.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2581 >>接任务: |cRXP_WARN_弯牙土狼的颚骨|r
.turnin 2581 >>交任务: |cRXP_FRIENDLY_弯牙土狼的颚骨|r
.target Bloodmage Drazial
step << Hunter/Rogue
.goto Blasted Lands,48.00,20.13,80,0
.goto Blasted Lands,44.61,24.93,80,0
.goto Blasted Lands,44.72,33.85,80,0
.goto Blasted Lands,50.40,37.51,80,0
.goto Blasted Lands,54.88,44.05,80,0
.goto Blasted Lands,56.54,37.12,80,0
.goto Blasted Lands,62.30,28.86,80,0
.goto Blasted Lands,50.40,37.51
>>杀死|cRXP_ENEMY_Hyenas|r、|cRXD_ENEMY_Boars|r、| cRXP__ENEMY_Scorpids|r，|cRXP_ENEMY_Vultures|r和|cRXP_ENEMY_Basilisk|r。掠夺它们以获取以下信息：
.collect 8391,5 
.collect 8392,5 
.collect 8393,3 
.collect 8396,12 
.collect 8394,11 
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Ashmane Boar
.mob Scorpok Stinger
.mob Black Slayer
.mob Redstone Basilisk
.mob Redstone Crystalhide
step << Druid/Warrior/Shaman
.goto Blasted Lands,48.00,20.13,80,0
.goto Blasted Lands,44.61,24.93,80,0
.goto Blasted Lands,44.72,33.85,80,0
.goto Blasted Lands,50.40,37.51,80,0
.goto Blasted Lands,54.88,44.05,80,0
.goto Blasted Lands,56.54,37.12,80,0
.goto Blasted Lands,62.30,28.86,80,0
.goto Blasted Lands,50.40,37.51
>>杀死|cRXP_ENEMY_Hyenas|r、|cRXD_ENEMY_Boars|r、| cRXP__ENEMY_Scorpids|r，|cRXP_ENEMY_Vultures|r和|cRXP_ENEMY_Basilisk|r。掠夺它们以获取以下信息：
.collect 8391,2 
.collect 8392,4 
.collect 8393,5 
.collect 8396,14 
.collect 8394,11 
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Ashmane Boar
.mob Scorpok Stinger
.mob Black Slayer
.mob Redstone Basilisk
.mob Redstone Crystalhide
step << !Hunter !Rogue !Druid !Warrior !Shaman
.goto Blasted Lands,48.00,20.13,80,0
.goto Blasted Lands,44.61,24.93,80,0
.goto Blasted Lands,44.72,33.85,80,0
.goto Blasted Lands,50.40,37.51,80,0
.goto Blasted Lands,54.88,44.05,80,0
.goto Blasted Lands,56.54,37.12,80,0
.goto Blasted Lands,62.30,28.86,80,0
.goto Blasted Lands,50.40,37.51
>>杀死|cRXP_ENEMY_Hyenas|r、|cRXD_ENEMY_Boars|r、| cRXP__ENEMY_Scorpids|r，|cRXP_ENEMY_Vultures|r和|cRXP_ENEMY_Basilisk|r。掠夺它们以获取以下信息：
.collect 8391,5 
.collect 8392,6 
.collect 8393,6 
.collect 8396,14 
.collect 8394,11 
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Ashmane Boar
.mob Scorpok Stinger
.mob Black Slayer
.mob Redstone Basilisk
.mob Redstone Crystalhide
step
#label LuckyFragment
.goto Blasted Lands,51.8,35.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_收藏家库米沙|r
.accept 3501 >>接任务: |cRXP_WARN_多多益善|r
.turnin 3501 >>交任务: |cRXP_FRIENDLY_多多益善|r
.target Kum'isha the Collector
.itemcount 10593,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血法师德拉吉亚|r, |cRXP_FRIENDLY_血法师莱诺雷|r
.accept 2585 >>接任务: |cRXP_WARN_决定性的打击|r << !Rogue !Hunter
.turnin 2585 >>交任务: |cRXP_FRIENDLY_决定性的打击|r << !Rogue !Hunter
.accept 2583 >>接任务: |cRXP_WARN_野猪的活力|r
.turnin 2583 >>交任务: |cRXP_FRIENDLY_野猪的活力|r
.accept 2581 >>接任务: |cRXP_WARN_弯牙土狼的颚骨|r << !Druid !Warrior !Shaman
.turnin 2581 >>交任务: |cRXP_FRIENDLY_弯牙土狼的颚骨|r << !Druid !Warrior !Shaman
.goto Blasted Lands,50.55,14.21
.accept 2601 >>接任务: |cRXP_WARN_石化蜥蜴的大脑|r
.turnin 2601 >>交任务: |cRXP_FRIENDLY_石化蜥蜴的大脑|r
.accept 2603 >>接任务: |cRXP_WARN_秃鹫的活力|r
.turnin 2603 >>交任务: |cRXP_FRIENDLY_秃鹫的活力|r
.goto Blasted Lands,50.64,14.30
.target Bloodmage Drazial
.target Bloodmage Lynnore
.addquestitem 8391,2581
.addquestitem 8392,2583
.addquestitem 8393,2585
.addquestitem 8394,2601
.addquestitem 8396,2603
step << Hunter/Rogue
#ah
.goto Blasted Lands,50.55,14.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2585 >>接任务: |cRXP_WARN_决定性的打击|r
.turnin 2585 >>交任务: |cRXP_FRIENDLY_决定性的打击|r
.target Bloodmage Drazial
step << Druid/Warrior/Shaman
#ah
.goto Blasted Lands,50.55,14.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2581 >>接任务: |cRXP_WARN_弯牙土狼的颚骨|r
.turnin 2581 >>交任务: |cRXP_FRIENDLY_弯牙土狼的颚骨|r
.target Bloodmage Drazial
step << Warrior
.loop 25,Blasted Lands,62.4,39.4,62.4,43.0,64.6,47.8,64.0,45.6,63.6,42.6,63.6,39.2,62.4,39.4
.loop 25,Blasted Lands,65.02,32.94,64.15,30.73,63.79,34.18,65.85,34.46,65.02,32.94,65.85,31.97,66.29,30.40,67.39,31.77,68.32,31.21,67.61,29.06,68.32,31.21,67.39,31.77,66.29,30.40,65.85,31.97,65.02,32.94
.complete 8424,1 
.complete 8424,2 
.complete 8424,3 
>>|CRXP_WARN_如果你进入洞穴，小心两端的两名精英|r
step << Warrior
.goto Swamp of Sorrows,34.20,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 8424 >>交任务: |cRXP_FRIENDLY_魔誓者之战|r
.target Fallen Hero of the Horde
step
#completewith next
.subzone 75 >>Travel to Stonard
.subzoneskip 75
step
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏塔佐尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Thultazor
step
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔塔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Rartar
step
.goto Swamp of Sorrows,46.10,54.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷依克|r
.fly Badlands>>飞到荒地
.target Breyk
step
#optional
.abandon 8554 >>Abandon Facing Negolash
.isOnQuest 8554
step
#optional
.abandon 630 >>放弃瓶子里的信息
.isOnQuest 630
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 52-53灼热的峡谷/燃烧的草原
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 50-60
#next 53-54 Azshara
step
.goto Badlands,2.80,45.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高恩|r
.accept 793 >>接任务: |cRXP_LOOT_破碎的联盟|r
.target Gorn
.group
step
#completewith next
.goto Badlands,79.97,36.57,50,0
.subzone 339 >>向东前往莱特克洛峡谷
.isOnQuest 793
.group
step
.goto Badlands,72.30,66.80
>>为|cRXP_Loot_Opal Runestone|r掠夺Opal |r的|cRXP_PICK_Pillar
.collect 4844,1 
.isOnQuest 793
.group 4
step
.goto Badlands,81.30,64.20
>>为|cRXP_Loot_Amerthyst Runestone|r掠夺|cRX_PICK_Pillar of Amethyst|r
.collect 4843,1 
.isOnQuest 793
.group 4
step
.goto Badlands,83.50,32.90
>>为|cRXP_Loot_Diamond Runestone|r掠夺|cRXP_PICK_Pillar of Diamond |r
.collect 4845,1 
.isOnQuest 793
.group 4
step
.goto Badlands,81.70,49.90
>>|TInterface/GossipFrame/HealerGossipIcon:0|tAfter collecting the 3 runestones, click the |cRXP_PICK_Seal of the Earth|r to summon |cRXP_ENEMY_Blacklash|r and |cRXP_ENEMY_Hematus|r
.accept 795 >>接任务: |cRXP_WARN_大地封印|r
.turnin 795 >>交任务: |cRXP_FRIENDLY_大地封印|r
.isOnQuest 793
.group
step
.goto Badlands,81.70,49.90
>>杀死|cRXP_ENEMY_Blacklash|r和|cRXD_ENEMY_Hematus|r。掠夺它们的|cRXP_Loot_Bindings|r和| cRXP_Loot_Chains|r
>>|cRXP_WARN_通过杀死|r|cRXP_ENEMY_Hematus|r|cRXP_WARN_first来简化这次遭遇，因为他的火焰自助餐增强了|r|cRXP_ENEMY_Blacklash的|r| cRXP_WARN_fire呼吸|r
.complete 793,1 
.complete 793,2 
.mob Blacklash
.mob Hematus
.isOnQuest 793
.group 4
step
>>如果您没有15块丝绸布，请从安吉尔堡垒或Hammertoe挖掘点的|cRXP_ENEMY_Shadowforge dwarves|r处收集
>>|cRXP_WARN_你将需要布料来完成即将到来的任务。荒原暴民的掉落率远高于瑟林峡谷暴民|r
.collect 4306,15 
.group
step
.goto Badlands,2.80,45.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高恩|r
.turnin 793 >>交任务: |cRXP_FRIENDLY_破碎的联盟|r
.target Gorn
.isQuestComplete 793
.group
step
.goto Badlands,3.40,48.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨特拉克|r
>>|cRXP_WARN_您可能需要等待|r|cRXP_FRIENDLY_Thal'trak|r|cRXP_WARN_to才能完成他的RP。只需跟随他|r
.accept 3821 >>接任务: |cRXP_LOOT_巨槌石|r
.target Thal'trak Proudtusk
step
#completewith HoardO
>>如果您没有15块丝绸布，请从达斯贝尔石窟的|cRXP_ENEMY_达斯贝尔彻食人魔|r处收集
>>|cRXP_WARN_你将需要布料来完成即将到来的任务。荒原暴民的掉落率远高于瑟林峡谷暴民|r
.collect 4306,15 
step
.goto Badlands,3.62,61.88,50,0
.goto Searing Gorge,72.34,55.47
.zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
step
.goto Searing Gorge,65.55,62.15
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wooden Outhouse|r
.accept 4449 >>接任务: |cRXP_LOOT_被锁起来的矮人|r
step
.goto Searing Gorge,63.43,60.91,20,0
.goto Searing Gorge,69.29,33.39
>>杀死|cRXP_ENEMY_黑铁地质学家|r
>>|cRXP_WARN_你可能需要在北部营地和南部挖掘点之间旅行才能完成这项任务|r
.complete 4449,1 
.mob Dark Iron Geologist
step
.goto Searing Gorge,39.10,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r, then complete his dialogue
.accept 3441 >>接任务: |cRXP_LOOT_神圣的惩戒|r
.complete 3441,1 
.target Velarok Windblade
.skipgossip
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r
.turnin 3441 >>交任务: |cRXP_FRIENDLY_神圣的惩戒|r
.accept 3442 >>接任务: |cRXP_LOOT_无瑕之焰|r
.target Velarok Windblade
step
#completewith next
.goto Searing Gorge,32.50,32.48,30,0
.subzone 1446 >>向西上山，前往Thorium Point
step
.goto Searing Gorge,34.84,30.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞沙|r
.fp Thorium >>获得灼热峡谷飞行路线
.target Grisha
step
.goto Searing Gorge,38.58,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel|r
.accept 7723 >>接任务: |cRXP_LOOT_该死的手指头！|r
.accept 7724 >>接任务: |cRXP_LOOT_熔岩蜘蛛的威胁！|r
.accept 7727 >>接任务: |cRXP_LOOT_熏火龙|r
.target Hansel Heavyhands
step
.goto Searing Gorge,37.64,26.47
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wanted/Missing/Lost&Found|r板
.accept 7728 >>接任务: |cRXP_LOOT_被盗：鼓风机和望远镜|r
.accept 7729 >>接任务: |cRXP_LOOT_工作机会：肃清竞争对手|r
step
#completewith Spiders
>>杀死|cRXP_ENEMY_War Golem|r和|cRXD_ENEMY_Elements|r。掠夺他们的|cRXP_Loot_火焰之心|r和| cRXP_Loot_ Golem Oil|r
>>|cRXP_WARN_杀死你看到的任何|r|cRXP_ENEMY_Magma元素|r|cRXP_WARN_。他们可以放下两个任务项目|r
.complete 3442,1 
.complete 3442,2 
.mob Heavy War Golem
.mob Tempered War Golem
.mob Inferno Elemental
.mob Blazing Elemental
.unitscan Magma Elemental
step
#completewith Elementals
.goto Searing Gorge,32.6,55.0,40,0
.goto Searing Gorge,36.2,61.6,40,0
.goto Searing Gorge,44.6,62.6,40,0
.goto Searing Gorge,52.4,57.8,40,0
.goto Searing Gorge,51.4,55.8,40,0
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。掠夺它们以获得|cRXX_Loot_Lookout的Spyglass|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#completewith Elementals
.goto Searing Gorge,38.0,49.8,40,0
.goto Searing Gorge,40.8,49.8,40,0
.goto Searing Gorge,42.8,51.6
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。掠夺它们以获得|cRXX_Loot_Smithing Tuyere|r
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
#label Spiders
.loop 25,Searing Gorge,33.0,39.6,28.8,43.8,27.6,52.0,30.8,59.8,26.6,69.4,22.6,74.0,25.0,76.2,29.6,75.8,30.6,71.8,31.8,66.4,30.8,59.8,27.6,52.0,28.8,43.8,33.0,39.6,
>>杀死|cRXP_ENEMY_大熔岩蜘蛛|r along the western/southwestern mountains
.complete 7724,1 
.mob Greater Lava Spider
step
#completewith next
.goto Searing Gorge,43.61,40.78,0
.goto Searing Gorge,32.54,47.19,0
>>杀死|cRXP_ENEMY_重型战争傀儡|r
.complete 7723,1 
.mob Heavy War Golem
step
#label Elementals
.loop 25,Searing Gorge,44.0,38.2,46.6,37.8,47.0,41.4,43.6,44.6,40.6,44.8,36.8,47.6,33.2,52.2,34.0,59.6,36.6,62.8,32.6,70.6,30.6,64.6,28.4,64.0,25.6,53.6,32.4,53.6,33.8,47.4,35.6,41.2,37.6,44.6,40.6,42.8,44.0,38.2
>>完成杀死|cRXP_ENEMY_War Golem|r和|cRXD_ENEMY_Elements|r。掠夺他们的|cRXP_Loot_火焰之心|r和| cRXP_Loot_ Golem Oil|r
>>|cRXP_WARN_杀死你看到的任何|r|cRXP_ENEMY_Magma元素|r|cRXP_WARN_。他们可以放下两个任务项目|r
.complete 3442,1 
.complete 3442,2 
.mob Heavy War Golem
.mob Tempered War Golem
.mob Inferno Elemental
.mob Blazing Elemental
.unitscan Magma Elemental
step
#label WarGolems
.goto Searing Gorge,35.16,45.78,70,0
.goto Searing Gorge,40.40,44.42,70,0
.goto Searing Gorge,45.72,41.98,70,0
.goto Searing Gorge,50.66,39.23,70,0
.goto Searing Gorge,35.16,45.78,70,0
.goto Searing Gorge,40.40,44.42,70,0
.goto Searing Gorge,45.72,41.98
>>杀死|cRXP_ENEMY_重型战争傀儡|r
.complete 7723,1 
.mob Heavy War Golem
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r
.turnin 3442 >>交任务: |cRXP_FRIENDLY_无瑕之焰|r
.accept 3443 >>接任务: |cRXP_LOOT_铸造火炬杆|r
.target Velarok Windblade
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel|r
.turnin 7724 >>交任务: |cRXP_FRIENDLY_熔岩蜘蛛的威胁！|r
.turnin 7723 >>交任务: |cRXP_FRIENDLY_该死的手指头！|r
.goto Searing Gorge,38.58,27.80
.target Hansel Heavyhands
step
.goto Searing Gorge,37.64,26.47
.accept 7701 >>接任务: |cRXP_LOOT_悬赏：工头玛托留斯|r
.group
step
.goto Searing Gorge,38.58,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大铁匠博恩奈特|r
.accept 7722 >>接任务: |cRXP_LOOT_绝密配方！|r
.target Master Smith Burninate
.group
step
.goto Searing Gorge,47.54,46.89,30 >>跳下平台，进入洞穴
step
.goto Searing Gorge,51.49,36.55,40,0
.loop 25,Searing Gorge,51.36,32.24,50.35,24.24,46.76,20.91,44.04,25.41,48.64,27.42,49.68,31.63,51.36,32.24
>>下降到洞穴的下层，然后杀死|cRXP_ENEMY_Incindosaurs|r
.complete 7727,1 
.mob Incendosaur
step
#completewith Shanksinnit
.goto Searing Gorge,48.41,41.08,40,0
.goto Searing Gorge,47.94,47.58,40,0
.goto Searing Gorge,49.86,45.97,40,0
.goto Searing Gorge,49.75,45.82,35 >>离开洞穴，然后沿着平台向上，在更高的水平面上重新进入洞穴
step
#completewith Shanksinnit
>>杀死|cRXP_ENEMY_黑铁任务主管|r和|cRXX_ENEMY_黑铁奴隶|r
.complete 7729,1 
.complete 7729,2 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
step
.goto Searing Gorge,40.45,35.75
>>再次离开洞穴，从洞穴右侧重新进入
>>杀死|cRXP_ENEMY_Oversear Maltorius |r。掠夺他的|cRXP_Loot_Head|r并掠夺|cRXT_PICK_Secret Plans:Fiery Flux |r
>>|cRXP_WARN_这是一场具有挑战性的战斗。在获得计划之前，通过清理整个房间，为装备或逃生开辟道路|r
.complete 7722,1 
.complete 7701,1 
.unitscan Overseer Maltorius
.isOnQuest 7701
.group 3
step
#label Shanksinnit
.loop 25,Searing Gorge,46.36,53.91,42.75,54.91,41.35,53.44,37.97,49.17,39.32,44.55,37.97,49.17,35.85,42.12,38.16,38.35,39.24,32.84,41.60,26.95,43.59,22.85,43.46,28.38,46.04,25.49,45.47,30.46,43.13,32.50,43.41,35.64,48.27,43.38,49.88,46.10,48.28,50.79,46.36,53.91
>>杀死所有|cRXP_ENEMY_黑铁矮人|r和|cRXX_ENEMY_奴隶工人|r。掠夺他们的|cRXD_Loot_Daggers|r
.complete 3443,1 
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
.mob Dark Iron Slaver
.mob Dark Iron Taskmaster
.mob Dark Iron Geologist
.mob Dark Iron Watchman
.mob Dark Iron Steelshifter
.mob Dark Iron Kidnapper
step
.loop 25,Searing Gorge,46.36,53.91,42.75,54.91,41.35,53.44,37.97,49.17,39.32,44.55,37.97,49.17,35.85,42.12,38.16,38.35,39.24,32.84,41.60,26.95,43.59,22.85,43.46,28.38,46.04,25.49,45.47,30.46,43.13,32.50,43.41,35.64,48.27,43.38,49.88,46.10,48.28,50.79,46.36,53.91
>>继续杀死|cRXP_ENEMY_Dark Iron Dwarves |r，直到您掠夺|T134246:0|t[|cRXP-loot_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_现在还不接受任务！这可能会导致questlog问题|r
.collect 11818,1,4451 
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
.mob Dark Iron Slaver
.mob Dark Iron Taskmaster
.mob Dark Iron Geologist
.mob Dark Iron Watchman
.mob Dark Iron Steelshifter
.mob Dark Iron Kidnapper
step
#completewith next
.goto Searing Gorge,35.45,23.51,50 >>注销后跳出洞穴。有许多不同的点可以使用
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >>点击此处参考
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r
.turnin 3443 >>交任务: |cRXP_FRIENDLY_铸造火炬杆|r
.accept 3452 >>接任务: |cRXP_LOOT_烈焰之盒|r
.target Velarok Windblade
.group
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r
.turnin 3443 >>交任务: |cRXP_FRIENDLY_铸造火炬杆|r
.target Velarok Windblade
step
.goto Searing Gorge,26.56,35.03,70,0
.loop 25,Searing Gorge,24.56,39.25,22.50,39.77,22.18,36.45,24.52,34.62,25.02,31.00,25.74,29.39,22.33,26.85,25.73,25.38,27.43,24.93,25.74,29.39,25.02,31.00,24.52,34.62,24.56,39.25
>>杀死|cRXP_ENEMY_Twilight暴徒|r。掠夺他们获得拉格纳罗斯的|cRXX_Loot_符号|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
.isOnQuest 3452
.group 3
step
.isQuestComplete 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3452 >>交任务: |cRXP_FRIENDLY_烈焰之盒|r
.accept 3453 >>接任务: |cRXP_LOOT_惩戒火炬|r
.timer 28,The Torch of Retribution RP
.turnin 3453 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
.accept 3454 >>接任务: |cRXP_LOOT_惩戒火炬|r
.target Velarok Windblade
.group
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3453 >>接任务: |cRXP_LOOT_惩戒火炬|r
.timer 28,The Torch of Retribution RP
.turnin 3453 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
.accept 3454 >>接任务: |cRXP_LOOT_惩戒火炬|r
.target Velarok Windblade
.group
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.055,39.067
>>单击|cRXP_PICK_Torch of Retribution |r
.turnin 3454 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
.group
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r and |cRXP_FRIENDLY_Maltrake|r
.accept 3462 >>接任务: |cRXP_LOOT_侍卫玛特拉克|r
.goto Searing Gorge,39.06,38.99
.turnin 3462 >>交任务: |cRXP_FRIENDLY_侍卫玛特拉克|r
.accept 3463 >>接任务: |cRXP_LOOT_烧掉它们！|r
.goto Searing Gorge,39.17,39.00
.target Velarok Windblade
.target Squire Maltrake
.isQuestTurnedIn 3452
.group
step
#completewith OuthouseAndy
.goto Searing Gorge,34.08,53.99,0
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。为|cRXX_Loot_Lookout的Spyglass|r掠夺它们
.complete 7728,2 
.mob Dark Iron Lookout
step
#completewith WarGolems
.goto Searing Gorge,40.90,50.31,0
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。为|cRXX_Loot_Smithing Tuyere|r掠夺它们
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
.goto Searing Gorge,33.30,54.47
.use 10515 >>装备|T135466:0|t[惩戒之炬]，然后爬上塔并点击|cRXP_PICK_Sentry Brazier |r
.complete 3463,4 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
.group
step
.goto Searing Gorge,42.91,51.73,50,0
.goto Searing Gorge,40.43,49.37,50,0
.goto Searing Gorge,37.81,49.66,50,0
.goto Searing Gorge,40.43,49.37
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。为|cRXX_Loot_Smithing Tuyere|r掠夺它们
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
.goto Searing Gorge,35.66,60.68
.use 10515 >>装备|T135466:0|t[惩戒之炬]，然后爬上塔并点击|cRXP_PICK_Sentry Brazier |r
.complete 3463,1 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
.group
step
.goto Searing Gorge,44.03,60.90
.use 10515 >>装备|T135466:0|t[惩戒之炬]，然后爬上塔并点击|cRXP_PICK_Sentry Brazier |r
.complete 3463,2 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
.group
step
#label OuthouseAndy
.goto Searing Gorge,65.59,62.17
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wooden Outhouse|r
.turnin 4449 >>交任务: |cRXP_FRIENDLY_被锁起来的矮人|r
.addquestitem 4306,4449
step
.goto Searing Gorge,65.59,62.17
>>使用|T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]接受任务
.collect 11818,1,4451 
.accept 4451 >>接任务: |cRXP_LOOT_自由的钥匙|r
.use 11818
step
.goto Searing Gorge,65.59,62.17
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wooden Outhouse|r
.turnin 4451 >>交任务: |cRXP_FRIENDLY_自由的钥匙|r
step
#label OuthouseAndy
.goto Searing Gorge,50.10,54.70
.use 10515 >>装备|T135466:0|t[惩戒之炬]，然后爬上塔并点击|cRXP_PICK_Sentry Brazier |r
>>|cRXP_WARN_小心，有可能从北侧的桥上掉下来！离开塔时一定要跳上桥|r << !Tauren
.complete 3463,3 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
.group
step
.goto Searing Gorge,34.08,53.99
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。为|cRXX_Loot_Lookout的Spyglass|r掠夺它们
.complete 7728,2 
.mob Dark Iron Lookout
step
.loop 25,Searing Gorge,46.36,53.91,42.75,54.91,41.35,53.44,37.97,49.17,39.32,44.55,37.97,49.17,35.85,42.12,38.16,38.35,39.24,32.84,41.60,26.95,43.59,22.85,43.46,28.38,46.04,25.49,45.47,30.46,43.13,32.50,43.41,35.64,48.27,43.38,49.88,46.10,48.28,50.79,46.36,53.91
>>杀死|cRXP_ENEMY_黑铁任务主管|r和|cRXX_ENEMY_黑铁奴隶|r
.complete 7729,1 
.complete 7729,2 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
step
#completewith next
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maltrake|r
.turnin 3463 >>交任务: |cRXP_FRIENDLY_烧掉它们！|r
.target Squire Maltrake
.isQuestTurnedIn 3452
.group
step
.goto Searing Gorge,38.85,38.99
>>|TInterface/GossipFrame/HealerGossipIcon:0|t打开地上的箱子两次，然后打开黑龙之光|r的|cRXP_PICK_Hoard并掠夺|cRXP-loot_黑龙之火|r
.accept 3481 >>接任务: |cRXP_LOOT_打开箱子…|r
.turnin 3481 >>交任务: |cRXP_FRIENDLY_打开箱子…|r
.isQuestTurnedIn 3452
.group
step
.goto Searing Gorge,37.60,26.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo|r
.turnin 7701 >>交任务: |cRXP_FRIENDLY_悬赏：工头玛托留斯|r
.target Lookout Captain Lolo Longstriker
.isQuestComplete 7701
.group
step
#completewith next
.goto Searing Gorge,32.50,32.48,30,0
.subzone 1446 >>Travel to Thorium Point
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Hansel, |cRXP_FRIENDLY_监工斯克兰格|r
.turnin 7727 >>交任务: |cRXP_FRIENDLY_熏火龙|r
.goto Searing Gorge,38.58,27.80
.turnin 7728 >>交任务: |cRXP_FRIENDLY_被盗：鼓风机和望远镜|r
.goto Searing Gorge,38.98,27.50
.target Hansel Heavyhands
.target Taskmaster Scrange
step
.goto Searing Gorge,38.80,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大铁匠博恩奈特|r
.turnin 7722 >>交任务: |cRXP_FRIENDLY_绝密配方！|r
.target Master Smith Burninate
.isQuestComplete 7722
.group
step
.goto Searing Gorge,38.80,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监工斯克兰格|r
.turnin 7729 >>交任务: |cRXP_FRIENDLY_工作机会：肃清竞争对手|r
.target Taskmaster Scrange
.isQuestComplete 7729
step
#completewith next
.goto Searing Gorge,69.2,71.6,50,0
.goto Searing Gorge,73.2,76.0,50,0
.goto Searing Gorge,73.61,82.93
+Run down to southeast Searing Gorge where |cRXP_ENEMY_Margol the Rager|r is found. Wait for him to patrol all the way out of his cave, then logout skip from the mushrooms at the back << Druid/Shaman
>>小心，因为|cRXP_ENEMY_Margol|r对自然魔法免疫 << Shaman/Druid
+跑到瑟林峡谷东南部，在那里找到了暴怒玛戈尔。等待他一路巡逻出洞穴（或杀死他），然后从后面的蘑菇中跳出来 << !Druid !Shaman
.link https://www.youtube.com/watch?v=0_g2SY2JKt8 >>点击此处参考
step
.goto Burning Steppes,28.43,17.70
.zone Burning Steppes >>前往: |cRXP_PICK_燃烧平原|r
step
.goto Burning Steppes,65.69,24.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦格鲁克|r
.fp Flame Crest >>获取燃烧的阶梯飞行路径
.target Vahgruk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁奇·斯迪波尔|r, |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.accept 4726 >>接任务: |cRXP_LOOT_雏龙精华|r
.goto Burning Steppes,65.24,24.01
.accept 4296 >>接任务: |cRXP_LOOT_七贤石板|r
.goto Burning Steppes,65.15,23.94
.target Tinkee Steamboil
.target Maxwort Uberglint
step
#completewith HoardO
.use 12284 >>在|cRXP_ENEMY_Black Broodlings|r上使用您的|T133001:0|t[Draco Incarcinatrix 900]，然后杀死他们，并从|cRX_PICK_Red方尖碑|r上掠夺|cRXP-loot_Broudling Essence |r
.complete 4726,1 
.mob Black Broodling
step
.goto Burning Steppes,54.10,40.70
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击矮人雕像前的|cRXP_PICK_Stone Placard|r创建|cRXP_LOOT_Tablet转录本|r
.complete 4296,1 
step
.goto Burning Steppes,77.68,38.23,60,0
.goto Burning Steppes,79.80,45.60
>>|TInterface/GossipFrame/HealerGossipIcon:0|t过桥，然后上山。点击祭坛顶上的|cRXP_PICK_Sha'ni Proudtusk的遗体|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha'ni|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Firegut Brutes'|r|cRXP_WARN_knockback，因为它会把你从山上撞倒|r
.turnin 3821 >>交任务: |cRXP_FRIENDLY_巨槌石|r
.accept 3822 >>接任务: |cRXP_WARN_克罗格鲁尔|r
.target Sha'ni Proudtusk
step
.goto Burning Steppes,77.20,47.50,25,0
.goto Burning Steppes,82.70,38.90,25,0
.goto Burning Steppes,81.60,48.20
>>杀死|cRXP_ENEMY_Krom'Grul|r。抢走他|cRXX_Loot_Sha'ni的鼻环|r
>>|cRXP_WARN_他可以在三个洞穴中的任何一个产卵；你可能需要搜索。小心|r|cRXP_ENEMY_Firegut Brutes'|r|cRXP_WARN_knockback，因为它会把你从山上撞倒|r|r
.complete 3822,1 
.target Krom'Grul
step
#label HoardO
.goto Burning Steppes,95.09,31.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus|r
>>|cRXP_WARN_打开你的|r|T132595:0|t[黑蜻蜓之巢]|cRXP_WARN_if你还没有打开|r
.accept 4022 >>接任务: |cRXP_LOOT_烈焰精华|r
.turnin 4022 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.target Cyrus Therepentous
.isQuestTurnedIn 3452
.group
step
.loop 25,Burning Steppes,81.8,27.8,85.8,30.2,90.6,29.8,92.0,39.4,90.6,49.4,88.8,56.2,85.2,61.4,82.0,61.6,84.6,56.0,89.4,52.6,88.6,44.8,91.6,38.4,89.8,33.6,86.4,32.0,81.8,27.8
.use 12284 >>在|cRXP_ENEMY_Black Broodlings|r上使用您的|T133001:0|t[Draco Incarcinatrix 900]。杀死他们并从|cRX_PICK_Red方尖碑|r上掠夺|cRXD_loot_Brouodling Essence |r
.complete 4726,1 
.mob Black Broodling
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁奇·斯迪波尔|r, |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.turnin 4726 >>交任务: |cRXP_FRIENDLY_雏龙精华|r
.accept 4808 >>接任务: |cRXP_LOOT_菲诺克|r
.goto Burning Steppes,65.24,24.01
.turnin 4296 >>交任务: |cRXP_FRIENDLY_七贤石板|r
.goto Burning Steppes,65.15,23.94
.target Tinkee Steamboil
.target Maxwort Uberglint
step
.goto Burning Steppes,65.70,24.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦格鲁克|r
.fly Badlands >>飞到荒地
.target Vahgruk
.zoneskip Badlands
step
#completewith next
.goto Badlands,2.81,45.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板舒尔卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shul'kar
step
.goto Badlands,3.40,48.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨特拉克|r
>>|cRXP_WARN_你可能要等Thal’trak完成他的RP。跟着他走吧|r
.turnin 3822 >>交任务: |cRXP_FRIENDLY_克罗格鲁尔|r
.target Thal'trak Proudtusk
step << Rogue/Shaman
.goto Badlands,4.00,44.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里克|r
.fly Tarren Mill
.target Gorrik
.zoneskip Hillsbrad Foothills
step << Rogue
.goto Hillsbrad Foothills,75.49,23.96,30,0
.goto Hillsbrad Foothills,75.61,19.52,30,0
.goto Hillsbrad Foothills,77.68,22.59,30,0
.goto Hillsbrad Foothills,77.58,19.61,30,0
.goto Alterac Mountains,86.02,78.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r
.accept 8234 >>接任务: |cRXP_WARN_密封的蓝袋子|r
.target Lord Jorach Ravenholdt
step << Shaman
.goto Alterac Mountains,80.50,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 8410 >>交任务: |cRXP_FRIENDLY_元素掌握|r
.accept 8412 >>接任务: |cRXP_WARN_灵魂图腾|r
.target Bath'rah the Windwatcher
step << Shaman

.loop 25,Western Plaguelands,34.6,65.8,33.6,63.2,31.8,63.6,32.0,59.6,30.8,50.2,32.8,56.0,36.0,58.4,34.0,61.8,34.6,65.8
>>向北跑进西部瘟疫地，然后向西跑。小心小联盟阵营。游过水面。
>>杀死|cRXP_ENEMY_Venom Mist潜伏者|r，|cRXD_ENEMY_Carrion Vultures |r和|cRXP_ENEMY_Diseased Black Bears |r。掠夺它们的|cRXP_Loot_Eyes |r和| cRXP_Loot-C爪|r
.complete 8412,1 
.complete 8412,2 
.mob Carrion Vulture
.mob Venom Mist Lurker
.mob Diseased Black Bear
step << Shaman
.goto Alterac Mountains,80.50,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 8412 >>交任务: |cRXP_FRIENDLY_灵魂图腾|r
.target Bath'rah the Windwatcher
step << Shaman
.goto Alterac Mountains,80.50,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.accept 8413 >>接任务: |cRXP_WARN_巫毒羽毛|r
.target Bath'rah the Windwatcher
.isQuestTurnedIn 8412
.dungeon ST
step << Rogue/Shaman
.goto Hillsbrad Foothills,60.14,18.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦格鲁克|r
.fly Undercity >>飞到地下城
.target Vahgruk
.zoneskip Undercity
step << !Rogue !Shaman
.goto Badlands,4.00,44.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里克|r
.fly Undercity >>飞到地下城
.target Vahgruk
.zoneskip Undercity
step
.goto Undercity,47.46,73.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_化学家弗雷|r
.accept 4293 >>接任务: |cRXP_WARN_软泥怪的样本…|r
.accept 4294 >>接任务: |cRXP_WARN_一大堆软泥怪|r
.target Chemist Fuely
step << Druid
#completewith DruidTraining8
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9894 >>训练你的职业技能
.target Loganaar
.xp <52,1
.xp >54,1
step << Druid
#label DruidTraining8
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9904 >>训练你的职业技能
.target Loganaar
.xp <54,1
step << !Mage
#completewith next
.hs >>炉膛到十字路口
.use 6948
step << !Mage
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Devrak
.zoneskip Orgrimmar
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step
#optional
.abandon 795 >>放弃地球之印
.isOnQuest 795
step
#optional
.abandon 793 >>放弃破裂的联盟
.isOnQuest 793
step
#optional
.abandon 7701 >>放弃通缉：监督Maltorius
.isOnQuest 7701
step
#optional
.abandon 7722 >>Abandon What the Flux?
.isOnQuest 7722
step
#optional
.abandon 3452 >>放弃火焰的外壳
.isOnQuest 3452
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 53-54 Azshara
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 50-60
#next 54-54 Felwood
step
.goto Orgrimmar,54.10,68.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grysha|r
.home >>将您的炉石设置为Orgrimmar
.target Innkeeper Grysha
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10467 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <52,1
.xp >54,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10408 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <54,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 13543 >>训练你的职业技能
.target Ormak Grimshot
.xp <52,1
.xp >54,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14290 >>训练你的职业技能
.target Ormak Grimshot
.xp <54,1
step << Hunter
.goto Orgrimmar,66.33,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24631 >>训练你的宠物法术
.target Xao'tsu
.xp <54,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11551 >>训练你的职业技能
.target Grezz Ragefist
.xp <52,1
.xp >54,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11605 >>训练你的职业技能
.target Grezz Ragefist
.xp <54,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11342 >>训练你的职业技能
.target Ormok
.xp <52,1
.xp >54,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11294 >>训练你的职业技能
.target Ormok
.xp <54,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Undercity,48.47,45.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泽弗洛斯特|r
.trainer >>训练你的职业技能
.accept 8419 >>接任务: |cRXP_LOOT_小鬼的要求|r
.target Zevrost
step << Warlock
.goto Orgrimmar,47.55,46.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>升级宠物的能力
.target Kurgul
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10186 >>训练你的职业技能
.target Pephredo
.xp <52,1
.xp >54,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10199 >>训练你的职业技能
.target Pephredo
.xp <54,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10946 >>训练你的职业技能
.target Ur'kyo
.xp <52,1
.xp >54,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 15267 >>训练你的职业技能
.target Ur'kyo
.xp <54,1
step
.goto Orgrimmar,59.40,36.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dran|r
.turnin 81 >>交任务: |cRXP_FRIENDLY_送回蜜酒|r
.target Dran Droffers
step
.goto Orgrimmar,55.60,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰斯雷蒙|r
.turnin 4300 >>交任务: |cRXP_FRIENDLY_骨刃武器|r
.target Jes'rimon
step << skip
.goto Orgrimmar,55.52,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰斯雷蒙|r
.accept 4300 >>接任务: |cRXP_LOOT_骨刃武器|r
.target Jes'rimon

step
.goto Orgrimmar,75.00,34.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.accept 3504 >>接任务: |cRXP_WARN_叛徒|r
.target Belgrom Rockmaul
step
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Splintertree Post >>飞到Splinterree Post
.target Doras
.zoneskip Ashenvale
step
#completewith next
.goto Ashenvale,75.37,64.73,20,0
.goto Ashenvale,79.07,55.41,30,0
.goto Ashenvale,91.24,46.47,30,0
.goto Ashenvale,95.33,48.38,15,0
.subzone 879 >>前往: |cRXP_PICK_艾萨拉|r
step
.goto Azshara,10.40,74.90,40,0
.goto Azshara,11.40,78.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗哈图|r
.accept 5535 >>接任务: |cRXP_WARN_永不安息的灵魂|r
.accept 5536 >>接任务: |cRXP_WARN_充满仇恨的土地|r
.target Loh'atu
step
#completewith next
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXX_ENEMY_High borne巫妖|r << !Priest
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXX_ENEMY_High borne巫妖|r。为你的职业任务保留1|T134437:0|t[不死之神] << Priest
.complete 5535,1 
.complete 5535,2 
.collect 7972,1 << Priest 
.mob Highborne Apparition
.mob Highborne Lichling
step
.loop 25,Azshara,19.4,64.0,19.6,60.8,21.2,60.8,20.6,63.6,19.4,64.0
>>杀死|cRXP_ENEMY_Haldarr Satyrs|r、|cRXD_ENEMY_Haldarr Tricksters|r和|cRXP_ENEMY_Halldarr Felwadde|r
.complete 5536,1 
.complete 5536,2 
.complete 5536,3 
.mob Haldarr Satyr
.mob Haldarr Trickster
.mob Haldarr Felsworn
step
.loop 25,Azshara,17.8,67.8,16.6,71.8,14.6,73.6,13.6,72.6,16.6,68.6,17.2,66.0,17.8,67.8
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXX_ENEMY_High borne巫妖|r << !Priest
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXX_ENEMY_High borne巫妖|r。为你的职业任务保留1|T134437:0|t[不死之神] << Priest
.complete 5535,1 
.complete 5535,2 
.collect 7972,1 << Priest 
.mob Highborne Apparition
.mob Highborne Lichling
step
.goto Azshara,11.36,78.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗哈图|r
.turnin 5535 >>交任务: |cRXP_FRIENDLY_永不安息的灵魂|r
.turnin 5536 >>交任务: |cRXP_FRIENDLY_充满仇恨的土地|r
.target Loh'atu
step
#completewith next
.goto Azshara,22.00,49.70,30,0
.subzone 1237 >>向东北行驶至瓦洛莫克
step
.goto Azshara,22.00,49.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克隆姆|r
.fp Azshara >>获取Azshara飞行路线
.target Kroum
step
.goto Azshara,22.20,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格图·血拳|r
.turnin 3504 >>交任务: |cRXP_FRIENDLY_叛徒|r
.target Ag'tor Bloodfist
.isOnQuest 3504
step
.goto Azshara,22.20,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格图·血拳|r
.accept 3505 >>接任务: |cRXP_WARN_叛徒|r
.target Ag'tor Bloodfist
.isQuestTurnedIn 3504
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.accept 3517 >>接任务: |cRXP_WARN_偷窃知识|r
.target Jediga
step << Rogue
.goto Azshara,44.20,22.40
>>扒手|cRXP_ENEMY_Timbermaw萨满|r直到你掠夺一个|cRXX_loot_密封Azure包|r
.complete 8234,1 
.mob Timbermaw Shaman
step << Rogue/Mage
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step << Rogue
.goto Azshara,27.64,41.49,30,0
.goto Azshara,29.7,40.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r
>>|cRXP_WARN_大法师在他的塔上徘徊|r
.turnin 8234 >>交任务: |cRXP_FRIENDLY_密封的蓝袋子|r
.accept 8235 >>接任务: |cRXP_WARN_密文碎片|r
.target Archmage Xylem
step << Mage
.goto Azshara,29.2,40.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r
>>|cRXP_WARN_大法师在他的塔上徘徊|r
.accept 8251 >>接任务: |cRXP_WARN_魔法的尘埃|r
.target Archmage Xylem
step << Rogue/Mage
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这会把你传送回去|r
.turnin 3421 >>交任务: |cRXP_FRIENDLY_回程|r
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest
#completewith next
.goto Azshara,41.61,42.68,50 >>前往|cRXP_FRIENDLY_Ogtinc|r，他位于一座小山峰上
step << Hunter/Priest
.goto Azshara,42.40,42.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
>>|cRXP_WARN_靠近他时要小心摔倒；他处境岌岌可危|r
.accept 8153 >>接任务: |cRXP_WARN_苔蹄快步者的鹿角|r << Hunter
.accept 8255 >>接任务: |cRXP_WARN_苔蹄快步者|r << Priest
.target Ogtinc
step << Hunter/Priest
.loop 25,Azshara,48.4,33.2,48.4,16.4,55.2,17.0,59.6,22.9,70.6,28.4,83.2,25.0,76.6,27.3,67.8,27.4,61.4,23.3,55.3,25.3,50.2,25.4,48.4,33.2
>>杀死|cRXP_ENEMY_Mosshove Coursers|r。掠夺他们的|cRXX_Loot_Atlers|r << Hunter
>>杀死|cRXP_ENEMY_Mosshove Coursers|r。掠夺他们的|cRXX_Loot_GRAND|r << Priest
>>|cRXP_ENEMY_Mosshove Coursers|r|cRXP_WARN_share respawn with Hippogryphs and Chimaeras|r
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
step << Hunter
.goto Azshara,42.40,42.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.turnin 8153 >>交任务: |cRXP_FRIENDLY_苔蹄快步者的鹿角|r
.accept 8231 >>接任务: |cRXP_WARN_碎浪多头怪|r
.target Ogtinc
step
.goto Azshara,53.45,21.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基姆加尔|r
.accept 3601 >>接任务: |cRXP_WARN_我就是基姆加尔！|r
.target Kim'jael
step
#completewith Magus
>>偷走散落在营地周围的|cRXP_PICK_Kim'Jael的装备|r箱子
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step << !Mage
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
>>杀死|cRXP_ENEMY_血精灵回收者|r和|cRXX_ENEMY_血精灵测量者|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Surveyors|r|cRXP_WARN_have a short cooling Fire Nova，and |r|cRXP__ENEMY_Reclaimers|r|C RXP_WARN_have a high damage fireball|r
.complete 3505,1 
.complete 3505,2 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
.isOnQuest 3505
step << Mage
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
>>杀死|cRXP_ENEMY_血精灵回收者|r和|cRXP_ENEMY_血精灵测量者|r。掠夺他们的|cRXD_Loot_Dust|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Surveyors|r|cRXP_WARN_have a short cooling Fire Nova，and |r|cRXP__ENEMY_Reclaimers|r|C RXP_WARN_have a high damage fireball|r
.complete 3505,1 
.complete 3505,2 
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
.isOnQuest 3505
step
.goto Azshara,59.40,31.20
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击召唤圈基座上的|cRXP_PICK_Kaldorei召唤符|r
.complete 3505,3 
.complete 3505,4 
.turnin 3505 >>交任务: |cRXP_FRIENDLY_叛徒|r
.isOnQuest 3505
step
.goto Azshara,59.50,31.20
>>|TInterface/GossipFrame/HealerGossipIcon:0|t再次单击|cRXP_PICK_Kaldorei召唤符|r
.accept 3506 >>接任务: |cRXP_WARN_叛徒|r
.isQuestTurnedIn 3505
step
#label Magus
.goto Azshara,59.50,31.40
>>摧毁其中一个|cRXP_PICK_Arcane聚焦水晶|r。这将召唤一名|cRXP_ENEMY_Blood Elf Defender |r
>>13秒后，|cRXP_ENEMY_Magus Rimtori|r将产卵。杀死她并为她掠夺她|cRXP_loot_Head |r
.complete 3506,1 
.isQuestTurnedIn 3505
.mob Blood Elf Defender
.unitscan Magus Rimtori
step
.goto Azshara,57.02,29.45
.loop 25,Azshara,58.5,25.0,58.9,28.3,59.6,30.9,57.0,29.9,56.5,28.4,58.5,25.0
>>偷走散落在营地周围的|cRXP_PICK_Kim'Jael的装备|r箱子
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step << Warrior/Hunter/Rogue/Druid/Shaman
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
.xp 54 >>升级到54级
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
.goto Azshara,53.45,21.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基姆加尔|r
.turnin 3601 >>交任务: |cRXP_FRIENDLY_我就是基姆加尔！|r
.accept 5534 >>接任务: |cRXP_WARN_基姆加尔“丢失”的装备|r
.target Kim'jael
step << Hunter
#completewith next
.goto Azshara,47.80,60.80,50
>>向南行驶到悬崖上，然后跳下水
step << Hunter
.loop 25,Azshara,87.2,23.0,89.8,22.6,89.8,27.4,90.8,31.0,90.2,35.6,88.0,32.0,87.6,30.0,84.6,30.8,84.2,27.8,87.2,23.0
>>杀死所有类型的|cRXP_ENEMY_Wavethrougher|r。掠夺它们的|cRXP_Loot_Scale|r
.complete 8231,1 
.mob Wavethrasher
.mob Young Wavethrasher
.mob Great Wavethrasher
step << Rogue
.loop 25,Azshara,66.6,25.2,69.0,25.6,71.6,29.2,71.6,24.6,80.8,24.6,86.6,19.6,74.6,12.6,66.6,25.2
>>杀死|cRXP_ENEMY_Forest Ooze|r。掠夺它们的|cRXP_Loot_Encoded Fragments|r
.complete 8235,1 
.unitscan Forest Ooze
step << Mage
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step << Mage
.goto Azshara,29.2,40.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r
>>|cRXP_WARN_大法师在他的塔上徘徊|r
.turnin 8251 >>交任务: |cRXP_FRIENDLY_魔法的尘埃|r
.accept 8252 >>接任务: |cRXP_WARN_纳迦的珊瑚|r
.target Archmage Xylem
step << Mage
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step << !Hunter !Mage
#completewith next
.goto Azshara,47.80,60.80,50
>>向南行驶到悬崖上，然后跳下水
step
#completewith Tablets
>>杀死所有|cRXP_ENEMY_Spitelash Nagas|r。掠夺它们以获得|cRXP_Loot_魔法珊瑚|r和|cRXP-Loot_某些符文|r << Mage
>>|cRXP_WARN_|r|cRXP_OOT_Enchanted Coral|r|cRXP_WARN_i被|r| cRXP_ENEMY_Spitelash警报器|r|特定地掉落|r << Mage
>>杀死所有|cRXP_ENEMY_Spitelash Nagas|r。掠夺它们以获得|cRXX_Loot_Some符文|r << !Mage
.complete 5534,1 
.complete 8252,1 << Mage 
.mob Spitelash Myrmidon
.mob Spitelash Enchantress
.mob Spitelash Battlemaster
.unitscan Spitelash Siren << Mage
step
.goto Azshara,47.80,60.80
.use 10687 >>在水坑中游泳并使用|T132793:0|t[标记为#1的空小瓶]
.complete 3568,1 
step
.goto Azshara,47.80,51.30
.use 10688 >>在水坑中游泳，并使用|T132793:0|t[标记为#2的空小瓶]
.complete 3568,2 
step
.goto Azshara,48.70,48.50
.use 10689 >>在水坑中游泳并使用|T132793:0|t[标有#3的空小瓶]
.complete 3568,3 
step
.goto Azshara,47.50,46.20
.use 10870 >>在水坑中游泳并使用|T132793:0|t[标记为#4的空小瓶]
.complete 3568,4 
step
#label Tablets
.goto Azshara,39.80,46.81,40,0
.goto Azshara,39.86,48.72,40,0
.goto Azshara,37.30,48.12,40,0
.goto Azshara,38.55,54.58,40,0
.goto Azshara,40.97,55.00,40,0
.goto Azshara,40.81,62.69,40,0
.goto Azshara,42.95,63.76,40,0
.goto Azshara,38.70,63.30,40,0
.goto Azshara,36.35,58.75,40,0
.goto Azshara,35.92,57.55,40,0
.goto Azshara,34.89,53.93,40,0
.goto Azshara,35.86,53.49
>>掠夺散落在废墟周围的|cRXP_PICK_Glowing Tablet|r
.complete 3517,1 
.complete 3517,2 
.complete 3517,3 
.complete 3517,4 
step
.loop 25,Azshara,44.0,48.2,45.6,43.8,47.0,41.6,48.8,45.0,47.4,49.0,48.2,54.0,48.2,59.8,48.6,64.8,46.2,61.0,45.6,57.8,46.0,52.8,44.0,48.2
>>杀死所有|cRXP_ENEMY_Spitelash Nagas|r。掠夺它们以获得|cRXP_Loot_魔法珊瑚|r和|cRXP-Loot_某些符文|r << Mage
>>杀死所有|cRXP_ENEMY_Spitelash Nagas|r。掠夺它们以获得|cRXX_Loot_Some符文|r << !Mage
>>|cRXP_WARN_|r|cRXP_OOT_Enchanted Coral|r|cRXP_WARN_i被|r| cRXP_ENEMY_Spitelash警报器|r|特定地掉落|r << Mage
.complete 5534,1 
.complete 8252,1 << Mage 
.mob Spitelash Myrmidon
.mob Spitelash Enchantress
.mob Spitelash Battlemaster
.unitscan Spitelash Siren << Mage
step << Hunter/Priest
.goto Azshara,42.40,42.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.turnin 8231 >>交任务: |cRXP_FRIENDLY_碎浪多头怪|r << Hunter
.turnin 8255 >>交任务: |cRXP_FRIENDLY_苔蹄快步者|r << Priest
.accept 8256 >>接任务: |cRXP_WARN_亡灵的腐液|r << Priest
.turnin 8256 >>交任务: |cRXP_FRIENDLY_亡灵的腐液|r << Priest
.target Ogtinc
step << Hunter/Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.accept 8232 >>接任务: |cRXP_WARN_神庙中的绿龙|r << Hunter
.accept 8257 >>接任务: |cRXP_WARN_摩弗拉斯之血|r << Priest
.target Ogtinc
.isQuestTurnedIn 8231 << Hunter
.isQuestTurnedIn 8256 << Priest
.dungeon ST
step
.goto Azshara,45.55,37.79,50,0
.goto Azshara,53.45,21.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t从废墟中跑上山，然后与|cRXP_FRIENDLY_Kim'jael|r交谈
.turnin 5534 >>交任务: |cRXP_FRIENDLY_基姆加尔“丢失”的装备|r
.target Kim'jael
step
.goto Azshara,22.60,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.turnin 3517 >>交任务: |cRXP_FRIENDLY_偷窃知识|r
.accept 3561 >>接任务: |cRXP_WARN_大法师克希雷姆的石版|r
.accept 3518 >>接任务: |cRXP_WARN_玛加萨的石版|r
.accept 3541 >>接任务: |cRXP_WARN_杰斯雷蒙的石版|r
.target Jediga
step
.goto Azshara,22.26,51.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格图·血拳|r
.turnin 3506 >>交任务: |cRXP_FRIENDLY_叛徒|r
.accept 3507 >>接任务: |cRXP_WARN_叛徒|r
.target Ag'tor Bloodfist
.isQuestTurnedIn 3505
step
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step
.goto Azshara,29.7,40.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r
.turnin 3561 >>交任务: |cRXP_FRIENDLY_大法师克希雷姆的石版|r
.accept 3565 >>接任务: |cRXP_WARN_克希雷姆的报酬|r
.turnin 8252 >>交任务: |cRXP_FRIENDLY_纳迦的珊瑚|r << Mage
.turnin 8235 >>交任务: |cRXP_FRIENDLY_密文碎片|r << Rogue
.target Archmage Xylem
step << Mage/Rogue
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r, 他在塔上
.accept 8253 >>接任务: |cRXP_WARN_毁灭摩弗拉斯|r << Mage
.accept 8236 >>接任务: |cRXP_WARN_碧蓝钥匙|r << Rogue
.target Archmage Xylem
.isQuestTurnedIn 8252 << Mage
.isQuestTurnedIn 8235 << Rogue
.dungeon ST
step
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这会把你传送回去|r
.turnin 3421 >>交任务: |cRXP_FRIENDLY_回程|r
.timer 8,Return Trip RP
.target Nyrill
step
.goto Azshara,22.56,51.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.turnin 3565 >>交任务: |cRXP_FRIENDLY_克希雷姆的报酬|r
.target Jediga
step
.goto Azshara,21.96,49.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克隆姆|r
.fly Splintertree Post >>飞到Splinterree Post
.target Kroum
.zoneskip Ashenvale
step
.goto Ashenvale,55.78,28.12
.zone 361 >>前往: |cRXP_PICK_费伍德森林|r
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 54-54 Felwood
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 50-60
#next 54-56 Un'Goro Crater
step
#optional
#completewith next
.abandon 3504 
step
.goto Felwood,51.00,85.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉兹|r
.accept 8460 >>接任务: |cRXP_LOOT_木喉熊怪的盟友|r
.target Grazle
step
.goto Felwood,50.90,81.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔诺恩·红羽|r
.accept 5156 >>接任务: |cRXP_LOOT_验证腐蚀|r
.target Taronn Redfeather
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5155 >>接任务: |cRXP_LOOT_加德纳尔的势力|r
.target Greta Mosshoof
step
.goto Felwood,46.70,83.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝丝·河风|r
.accept 4102 >>接任务: |cRXP_LOOT_净化费伍德|r
.target Maybess Riverbreeze
step
#completewith next
.subzone 1763 >>Travel to Jaedenar
step
.goto Felwood,38.45,60.72
>>杀死|cRXP_ENEMY_Jaedenar猎犬|r，|cRXD_ENEMY_Guardians|r，| cRXP__ENEMY_Adepts|r和|cRXP_ENEMY_Cultist|r
>>|cRXP_WARN_非常小心|r|cRXP_ENEMY_Jaedenar Adepts|r|cRXP_WARN_；它们会眨眼，还有强烈的火球和火焰|r
.complete 5155,1 
.complete 5155,2 
.complete 5155,3 
.complete 5155,4 
.mob Jaedenar Hound
.mob Jaedenar Guardian
.mob Jaedenar Adept
.mob Jaedenar Cultist
step
#completewith next
.goto Felwood,37.37,49.83,40,0
.goto Felwood,35.45,50.10,40,0
.goto Felwood,34.57,52.12
.subzone 1997 >>前往Bloodvenom Post
step
.goto Felwood,34.80,52.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德雷卡苏|r
.accept 6162 >>接任务: |cRXP_LOOT_最后一战|r
.target Dreka'Sur
step
.goto Felwood,34.20,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna|r
.accept 4505 >>接任务: |cRXP_LOOT_腐化之井|r
.target Winna Hazzard
step
.goto Felwood,34.40,53.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉卡尔|r
.fp Felwood >>获取Felwood飞行路线
.target Brakkar
step << Warlock
#completewith next
.goto Felwood,33.0,66.4,30,0
.goto Felwood,37.6,66.6,30,0
.goto Felwood,37.2,69.8,30,0
>>杀死所有|cRXP_ENEMY_Jadefire Satyrs|r，直到你掠夺1|cRXX_loot_Felcloth|r
.collect 14256,1 
.mob Jadefire Rogue
.mob Jadefire Felsworn
.unitscan Jadefire Shadowstalker
step
.goto Felwood,36.02,66.99,70,0
.goto Felwood,32.30,66.60
.use 12566 >>前往Constellas废墟中的绿色月井，然后使用您的|T134870:0|t[硬化薄片]
>>|cRXP_WARN_这一带有潜行的撒旦，有很强的减速毒药。他们中的一些人在巡逻，所以要小心|r
.complete 4505,1 
.unitscan Jadefire Shadowstalker << !Warlock
step << Warlock
.goto Felwood,33.0,66.4,30,0
.goto Felwood,37.6,66.6,30,0
.goto Felwood,37.2,69.8
>>杀死所有|cRXP_ENEMY_Jadefire Satyrs|r，直到你掠夺1|cRXX_loot_Felcloth|r
.collect 14256,1 
.mob Jadefire Rogue
.mob Jadefire Felsworn
.unitscan Jadefire Shadowstalker
step
#completewith next
>>杀死|cRXP_ENEMY_枯木勇士|r、|cRXP_ENEMY_枯木探路者|r和|cRXX_ENEMY_Deadwood园丁|r
.complete 8460,1 
.complete 8460,2 
.complete 8460,3 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,48.20,94.30
>>杀死|cRXP_ENEMY_Overlord Ror|r。掠夺他的|cRXX_Loot_爪|r
>>|cRXP_WARN_清除该区域以避免因其AoE恐惧引起的并发症|r
.complete 6162,1 
.unitscan Overlord Ror
step
.loop 25,Felwood,48.2,94.3,46.8,91.8,46.6,90.4,46.6,88.6,48.6,89.4,49.2,91.6,48.2,94.3
>>杀死|cRXP_ENEMY_枯木勇士|r、|cRXP_ENEMY_枯木探路者|r和|cRXX_ENEMY_Deadwood园丁|r
.complete 8460,1 
.complete 8460,2 
.complete 8460,3 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step << !Warrior !Hunter !Rogue !Druid !Shaman
.loop 25,Felwood,48.2,94.3,46.8,91.8,46.6,90.4,46.6,88.6,48.6,89.4,49.2,91.6,48.2,94.3
.xp 54+35000 >>升级到54级35000/173900级
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,51.00,85.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉兹|r
.turnin 8460 >>交任务: |cRXP_FRIENDLY_木喉熊怪的盟友|r
.accept 8462 >>接任务: |cRXP_LOOT_与纳菲恩交谈|r
.target Grazle
step
.goto Felwood,51.20,82.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5155 >>交任务: |cRXP_FRIENDLY_加德纳尔的势力|r
.accept 5157 >>接任务: |cRXP_LOOT_收集堕落之水|r
.target Greta Mosshoof
step
#completewith next
.subzone 1763 >>Travel to Jaedenar
step
.goto Felwood,35.20,59.80
.use 12922 >>在绿色的月井里使用|T132788:0|t[空食堂]
>>|cRXP_WARN_要非常小心Jaedenar Adepts；它们会眨眼，还有强烈的火球和火焰|r
.complete 5157,1 
.unitscan Jaedenar Adept
step << Warlock
.goto Felwood,37.6,68.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.turnin 8419 >>交任务: |cRXP_FRIENDLY_小鬼的要求|r
.accept 8421 >>接任务: |cRXP_LOOT_奇怪的材料|r
.target Impsy
step << !Warlock
.loop 25,Felwood,41.2,45.4,43.4,48.2,42.6,50.2,39.6,54.0,40.8,59.8,40.8,66.0,40.2,68.6,38.8,71.6,41.6,71.6,42.0,67.8,40.8,66.0,40.8,59.8,39.6,54.0,41.2,50.6,38.6,49.6,43.4,48.2,41.2,45.4
>>杀死|cRXP_ENEMY_Cursed Ooze|r和|cRXD_ENEMY_Tained Ooze| r。掠夺它们的|cRXP_Loot_Slime Samples|r
.collect 12230,35 
.mob Cursed Ooze
.mob Tainted Ooze
step << Warlock
.loop 25,Felwood,41.2,45.4,43.4,48.2,42.6,50.2,39.6,54.0,40.8,59.8,40.8,66.0,40.2,68.6,38.8,71.6,41.6,71.6,42.0,67.8,40.8,66.0,40.8,59.8,39.6,54.0,41.2,50.6,38.6,49.6,43.4,48.2,41.2,45.4
>>杀死|cRXP_ENEMY_Cursed Ooze|r和|cRXD_ENEMY_Tained Ooze| r。掠夺它们的|cRXP_Loot_Slime Samples|r和| cRXP_Loot_SBloodvenom Essence |r
>>|cRXP_WARN_仅|r|cRXP_ENEMY_Tained Ooze|r|cRXP_WARN_can drop|r| cRXP_OOT_Bloodvenom Essence|r
.collect 12230,35 
.complete 8421,2 
.mob Cursed Ooze
.mob Tainted Ooze
step
#completewith next
>>Run into a crater
.complete 5156,3 
step
.loop 25,Felwood,40.6,42.4,42.0,37.6,45.6,38.6,44.6,42.6,40.6,42.4
>>杀死|cRXP_ENEMY_Entropic Beasts|r和|cRXD_ENEMY_Entropic Horrors|r
>>|cRXP_WARN_它们共享产卵，所以你可能不得不杀死每种类型的额外产卵|r
.complete 5156,1 
.complete 5156,2 
.complete 5156,3 
.mob Entropic Horror
.mob Entropic Beast
step
.goto Felwood,41.20,42.82
>>Run into a crater
.complete 5156,3 
step << Warlock
.loop 25,Felwood,49.6,30.0,46.4,24.6,49.2,19.8,53.0,20.4,52.0,24.8,49.6,30.0
>>杀死|cRXP_ENEMY_Withered Protectors|、|cRXD_ENEMY_Irotree Stompers|和|cRXP_ENEMY_Irontree Wanderers|。掠夺他们的|cRXP_Loot_Rotting Wood|r
.complete 8421,1 
.mob Withered Protectors
.mob Irontree Stompers
.mob Irontree Wanderers
step << Warlock
.goto Felwood,37.6,68.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.turnin 8421 >>交任务: |cRXP_FRIENDLY_奇怪的材料|r
.target Impsy
step << Warlock
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.accept 8422 >>接任务: |cRXP_WARN_巨魔的羽毛|r
.target Impsy
.isQuestTurnedIn 8421
.dungeon ST
step
#completewith next
>>杀死|cRXP_ENEMY_Angerclaw灰熊|r和|cRXX_ENEMY_Felpaw掠夺者|r
.complete 4120,1 
.complete 4120,2 
.mob Angerclaw Grizzly
.mob Felpaw Ravager
step
.goto Felwood,56.6,17.4,40,0
.goto Felwood,57.8,19.2,40,0
.goto Felwood,57.6,21.8,40,0
.goto Felwood,59.2,20.4
>>杀死|cRXP_ENEMY_Warpwood Moss Flayer|r和|cRXX_ENEMY_Warrpwood Shreders |r。掠夺它们以获取它们的|cRXD_Loot_ Blood Ambers|r
.complete 4102,1 
.mob Warpwood Moss Flayer
.mob Warpwood Shredder
step
.loop 25,Felwood,56.0,22.2,53.2,28.0,56.8,26.4,56.0,22.2,58.6,15.6,64.6,20.0,58.6,15.6,56.2,8.6,50.8,12.6,53.6,15.6,56.0,22.2
>>完成击杀|cRXP_ENEMY_Angerclaw灰熊|r和|cRXX_ENEMY_Felpaw掠夺者|r
.complete 4120,1 
.complete 4120,2 
.mob Angerclaw Grizzly
.mob Felpaw Ravager
step
#completewith next
.goto Felwood,64.70,8.10,70 >>前往Timbermaw Hold入口
step
.goto Felwood,64.70,8.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳菲恩|r
.turnin 8462 >>交任务: |cRXP_FRIENDLY_与纳菲恩交谈|r
.target Nafien
step
#completewith next
.goto Felwood,65.37,6.92,20,0
.goto Felwood,64.89,5.82,20,0
.goto Felwood,64.56,3.46,20,0
.goto Felwood,65.41,2.77,20,0
.goto Felwood,65.38,1.08,20,0
.goto Felwood,65.98,0.64,20,0
.goto Kalimdor,52.27,22.95,20,0
.goto Kalimdor,52.33,22.62,20,0
.goto Kalimdor,52.23,22.49,20,0
.goto Kalimdor,52.27,22.35,20,0
.goto Kalimdor,52.33,22.34,20,0
.goto Moonglade,35.74,72.37,20,0
.zone Moonglade >>前往: |cRXP_PICK_月光林地|r
.zoneskip Moonglade
.isOnQuest 7066
.dungeon MARA
step
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者雷姆洛斯|r
.turnin 7066 >>交任务: |cRXP_FRIENDLY_生命之种|r
.target Keeper Remulos
.isOnQuest 7066
.dungeon MARA
step
#completewith next
.goto Felwood,65.44,2.81,20,0
.goto Felwood,66.51,2.98,20,0
.goto Felwood,67.82,4.33,20,0
.goto Felwood,67.93,5.11,20,0
.zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.accept 5082 >>接任务: |cRXP_LOOT_冬泉熊怪的威胁|r
.turnin 3908 >>交任务: |cRXP_FRIENDLY_无人知晓的秘密|r
.target Donova Snowden
step
#completewith next
>>杀死|cRXP_ENEMY_Winterfall Furbolgs|r，直到你掠夺了一个|T134865:0|t[|cRXP-loot_空的消防水瓶|r]。使用它来接受任务
.collect 12771,1,5083 
.accept 5083 >>接任务: |cRXP_LOOT_冬泉火酒|r
.use 12771
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.loop 25,Winterspring,31.0,36.8,30.0,35.8,31.0,34.8,33.6,37.0,31.0,36.8
>>杀死|cRXP_ENEMY_Winterfall探路者|r，|cRXD_ENEMY_ WinterfallDen守望者|r和|cRXP_ENEMY_温特fall图腾|r
>>|cRXP_WARN_如果你的产卵量用完了，就清除东南部的营地|r
.complete 5082,1 
.complete 5082,2 
.complete 5082,3 
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.loop 25,Winterspring,39.0,42.8,41.8,44.6,42.4,42.4,39.0,42.8
>>杀死|cRXP_ENEMY_Winterfall Furbolgs|r，直到你掠夺了一个|T134865:0|t[|cRXP-loot_空的消防水瓶|r]。使用它来接受任务
.collect 12771,1,5083 
.accept 5083 >>接任务: |cRXP_LOOT_冬泉火酒|r
.use 12771
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5082 >>交任务: |cRXP_FRIENDLY_冬泉熊怪的威胁|r
.turnin 5083 >>交任务: |cRXP_FRIENDLY_冬泉火酒|r
.accept 5084 >>接任务: |cRXP_LOOT_堕落熊怪|r
.target Donova Snowden
step
#hardcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_暴雪已经调整了任务[Videre Elixir]，这样它就不会再在官方硬核服务器上杀死你了|r
.accept 3909 >>接任务: |cRXP_WARN_视灵药剂|r
.target Donova Snowden
step
#softcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_你可以安全地完成这个任务，作为[维迪尔灵丹妙药]任务链的一部分|r
.accept 3909 >>接任务: |cRXP_WARN_视灵药剂|r
.target Donova Snowden
step
#completewith next
.subzone 2255 >>Travel to Everlook
step
.goto Winterspring,61.60,38.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.turnin 4808 >>交任务: |cRXP_FRIENDLY_菲诺克|r
.target Felnok Steelspring
step
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fp Everlook >>获取Everlook飞行路线
.fly Felwood >>Fly to Felwood
.target Yugrek
step
.goto Felwood,34.20,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna|r
.turnin 4505 >>交任务: |cRXP_FRIENDLY_腐化之井|r
.target Winna Hazzard
step
.goto Felwood,34.80,52.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德雷卡苏|r
.turnin 6162 >>交任务: |cRXP_FRIENDLY_最后一战|r
.target Dreka'Sur
step
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝丝·河风|r
.turnin 4102 >>交任务: |cRXP_FRIENDLY_净化费伍德|r
step
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝丝·河风|r
>>|cRXP_WARN_选择选项：|r“我需要一个Cenarion信标。”
.collect 11511,1 
.target Maybess Riverbreeze
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5157 >>交任务: |cRXP_FRIENDLY_收集堕落之水|r
.accept 5158 >>接任务: |cRXP_LOOT_水之魂的帮助|r
.target Greta Mosshoof
step
.goto Felwood,50.90,81.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔诺恩·红羽|r
.turnin 5156 >>交任务: |cRXP_FRIENDLY_验证腐蚀|r
.target Taronn Redfeather
step
#completewith next
.hs >>前往: 奥格瑞玛
.use 6948
step
.goto Orgrimmar,54.10,68.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Gryshka
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
>>|cRXP_BUY_从拍卖行购买一件|r|T133021:0|t[Mithril Casing]|cRXP_Buy_|r 
.target Auctioneer Thathung
.collect 10561,1
step
.goto Orgrimmar,55.52,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰斯雷蒙|r
.turnin 3541 >>交任务: |cRXP_FRIENDLY_杰斯雷蒙的石版|r
.accept 3563 >>接任务: |cRXP_WARN_杰斯雷蒙的报酬|r
.target Jes'rimon
.isOnQuest 3541
step
.goto Orgrimmar,55.52,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰斯雷蒙|r
.accept 3563 >>接任务: |cRXP_WARN_杰斯雷蒙的报酬|r
.target Jes'rimon
.isQuestTurnedIn 3541
step
.goto Orgrimmar,75.20,34.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 3507 >>交任务: |cRXP_FRIENDLY_叛徒|r
.target Belgrom Rockmaul
.isOnQuest 3507
step
.goto Orgrimmar,56.40,46.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.accept 4494 >>接任务: |cRXP_LOOT_异种蝎的远征|r
.target Zilzibin Drumlore
step
.goto Orgrimmar,45.11,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
.fly Camp Taurajo >>飞往陶拉霍营地
.target Doras
.zoneskip The Barrens
step
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.home >>将您的炉石设置为陶拉霍营地
.target Innkeeper Byula
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 54-56 Un'Goro Crater
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 50-60
#next 56-57 Felwood/冬泉
step
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Tanaris >>前往: 塔纳利斯
.target Omusa Thunderhorn
.zoneskip Tanaris
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4494 >>交任务: |cRXP_FRIENDLY_异种蝎的远征|r
.accept 4496 >>接任务: |cRXP_LOOT_擒虫先擒王|r
.target Alchemist Pestlezugg
step
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3444 >>交任务: |cRXP_FRIENDLY_石环|r
.target Marvon Rivetseeker
step
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Un'Goro Crater>>飞到Un'Goro火山口
.target Bullkrek Ragefist
.zoneskip Un'Goro Crater
step
.goto Un'Goro Crater,43.89,7.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍莱伊·马绍尔|r
.accept 3883 >>接任务: |cRXP_LOOT_异型的生态|r
.target Hol'anyee Marshal
step
.goto Un'Goro Crater,43.50,7.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark|r
.accept 3882 >>接任务: |cRXP_LOOT_挖骨头|r
.target Spark Nilminer
step
.goto Un'Goro Crater,43.61,8.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普拉格·弗劳克|r
.accept 4501 >>接任务: |cRXP_LOOT_当心翼手龙|r
.target Spraggle Frock
step
.goto Un'Goro Crater,45.53,8.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞安|r
.accept 4145 >>接任务: |cRXP_LOOT_拉瑞安和穆尔金|r
.target Larion
step
.goto Tanaris,12.80,8.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希兹尔|r
.accept 4503 >>接任务: |cRXP_LOOT_希兹尔的的飞行器|r
.target Shizzle
step
#completewith Mighty
>>杀死你遇到的每一个|cRXP_ENEMY_Ooze|r。掠夺它们的|cRXP_Loot_Slime样本|r和|cRXX_Loot_Un'Goro土壤|r
.collect 11018,25 
.collect 12235,35 
.mob Muculent Ooze
.mob Glutinous Ooze
.mob Primal Ooze
step
#completewith Gorillaz
.goto Un'Goro Crater,52.8,13.4,40,0
.goto Un'Goro Crater,53.0,17.6,40,0
.goto Un'Goro Crater,56.6,16.6,40,0
.goto Un'Goro Crater,60.6,20.6,40,0
>>在前往真菌岩的途中，杀死|cRXP_ENEMY_Bloodpeal Flayers|r
>>|cRXP_WARN_他们的毒药造成很高的伤害。不要把注意力集中在这一点上。你可以稍后完成|r << Warrior/Rogue
>>|cRXP_WARN_他们的毒药造成高伤害并消耗法力。不要把注意力集中在这一点上。你可以稍后完成|r << !Warrior !Rogue
.complete 4145,3 
.mob Bloodpetal Flayer
step
#label Gorillaz
#completewith FungalRock
.goto Un'Goro Crater,62.97,17.39,40,0
.subzone 542 >>Travel to Fungal Rock
step
#label FungalRock
.goto Un'Goro Crater,61.85,17.71,50,0
.goto Un'Goro Crater,64.32,16.35,25,0
.goto Un'Goro Crater,65.83,15.61,20,0
.goto Un'Goro Crater,68.70,17.13,20,0
.goto Un'Goro Crater,69.52,16.82,20,0
.goto Un'Goro Crater,68.63,14.36,20,0
.goto Un'Goro Crater,68.51,13.27,20,0
.goto Un'Goro Crater,65.64,14.60,20,0
.goto Un'Goro Crater,65.06,16.70,20,0
.goto Un'Goro Crater,63.91,16.35,20,0
.goto Un'Goro Crater,62.86,18.17
>>杀死|cRXP_ENEMY_Un'Goro Stompers|r，|cRXX_ENEMY_Un'Goro Thunderers|r和|cRXD_ENEMY_Un'Goro大猩猩|r。掠夺它们的|cRXP_OOT_Pelt|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Un'Goro Gorillas|r|cRXP_WARN_call在90码范围内寻求帮助|r|cRXP_ENEMY_Un'Goro Thunderers|r|cRXP_WARN_拥有高伤害、瞬间电击法术|r
.complete 4289,2 
.complete 4289,3 
.complete 4289,1 
.mob Un'Goro Thunderer
.mob Un'Goro Stomper
.mob Un'Goro Gorilla
step
#completewith Ucha
>>杀死|cRXP_ENEMY_Diemetradons|r。掠夺他们的|cRXP_Loot_Bones|r和|cRXP-Loot_Scales|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Elder Diemetradons的|r|cRXP_WARN_Pummel能力，它会中断法术|r << Warlock/Priest/Mage/Shaman/Druid
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
.loop 25,Un'Goro Crater,57.6,36.8,64.4,30.8,68.2,24.0,71.2,31.0,74.2,39.6,76.0,47.4,74.2,39.6,69.4,38.0,66.6,35.6,60.0,39.4,57.6,36.8
>>杀死|cRXP_ENEMY_花瓣式阈值|r、|cRXP_ENEMY_Bloodpeal Lashers|r和|cRXX_ENEMY_blowdeal Flayers|r
>>|cRXP_WARN_他们的毒药造成高伤害，可以解除武装|r << Warrior/Rogue/Shaman
>>|cRXP_WARN_他们的毒药造成高伤害并消耗法力|r << !Warrior !Rogue !Shaman
.complete 4145,4 
.complete 4145,1 
.complete 4145,3 
.mob Bloodpetal Thresher
.mob Bloodpetal Lasher
step
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4289 >>交任务: |cRXP_FRIENDLY_安戈洛的猩猩|r
.accept 4292 >>接任务: |cRXP_LOOT_拉克维的诱饵|r
.accept 4301 >>接任务: |cRXP_LOOT_强大的尤尔查|r
.accept 9052 >>接任务: |cRXP_WARN_血瓣毒药|r << Druid
.target Torwa Pathfinder
step
.goto Un'Goro Crater,79.94,49.88
.use 11568 >>打开|T133635:0|t[Torwa‘s Pouch]
.use 11569 >>站在大而平的岩石旁，然后用|T133970:0|t[腊谷肉]
.use 11570 >>使用|T134743:0|t[保存的信息素混合物]
>>杀死|cRXP_ENEMY_Lar'korwi|r。抢劫他的|cRXP_Loot_Head|r
.complete 4292,1 
.mob Lar'korwi
step
#label Ucha
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4292 >>交任务: |cRXP_FRIENDLY_拉克维的诱饵|r
.target Torwa Pathfinder
step << Druid
#sticky
#label bloodcap
>>在区域周围拾取|cRXP_PICK_Bloodpeal Sprouts|r，直到您有8个|cRXP_Loot_BBloodcaps|r
.complete 9052,2 
step
.loop 25,Un'Goro Crater,68.2,75.0,67.0,71.2,67.8,67.0,68.0,61.6,64.8,62.6,63.0,66.4,61.6,70.8,59.8,75.2,59.4,79.0,62.0,82.4,61.8,76.0,63.6,77.2,66.2,77.8,68.2,75.0
>>杀死|cRXP_ENEMY_Ravasaur猛禽|r。掠夺它们的|cRXX_Loot_爪|r
.complete 4300,1 
.mob Ravasaur
.mob Ravasaur Hunter
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Matriarch
.isOnQuest 4300
step
#completewith next
.goto Un'Goro Crater,50.59,77.06,0
>>杀死|cRXP_ENEMY_Gorishi Silithi|r。掠夺它们以获得|cRXX_Loot_ Gorishi气味腺|r << !Druid
>>杀死|cRXP_ENEMY_Gorishi Silithi|r。掠夺它们以获得|cRXP_Loot_Gorishi气味腺|r和|cRXD_Loot_Gorishi刺|r << Druid
.complete 4496,1 
.complete 9052,1 << Druid 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
step
.goto Un'Goro Crater,49.97,81.36,40,0
.goto Un'Goro Crater,48.7,85.2
.use 11132 >>进入silithid洞穴，然后拥抱左侧墙壁。在圆形腔室中间使用您的|T134864:0|t[刮擦小瓶]
.complete 3883,1 
step
.goto Un'Goro Crater,49.44,82.85,40,0
.goto Un'Goro Crater,50.35,79.55,50,0
.goto Un'Goro Crater,48.69,76.45,70,0
.goto Un'Goro Crater,47.58,81.58,70,0
.goto Un'Goro Crater,49.38,82.32,70,0
.goto Un'Goro Crater,52.38,84.31,70,0
.goto Un'Goro Crater,54.03,78.15,70,0
.goto Un'Goro Crater,51.74,75.36
>>杀死|cRXP_ENEMY_Gorishi Silithi|r。掠夺它们以获得|cRXX_Loot_ Gorishi气味腺|r << !Druid
>>杀死|cRXP_ENEMY_Gorishi Silithi|r。掠夺它们以获得|cRXP_Loot_Gorishi气味腺|r和|cRXD_Loot_Gorishi刺|r << Druid
.complete 4496,1 
.complete 9052,1 << Druid 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
step
.goto Un'Goro Crater,56.2,88.2,40,0
.goto Un'Goro Crater,57.0,92.6,40,0
.goto Un'Goro Crater,50.4,87.8,40,0
.goto Un'Goro Crater,50.6,89.8,40,0
.goto Un'Goro Crater,43.0,85.2,40,0
.goto Un'Goro Crater,43.6,92.4
>>在南部山区杀死|cRXP_ENEMY_Pterrordax|r
.complete 4501,1 
.unitscan Pterrordax
step
#completewith BloodpetalTrappers
>>杀死|cRXP_ENEMY_Diemetradons|r。掠夺他们的|cRXP_Loot_Bones|r和|cRXP-Loot_Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
#completewith next
.loop 25,Un'Goro Crater,36.6,65.8,40.8,62.8,41.8,56.8,40.6,51.2,39.6,43.4,37.8,36.6,32.6,34.4,27.6,37.2,26.0,45.4,26.8,58.2,30.8,68.0,38.4,74.0,40.8,67.2,32.8,63.2,30.8,59.6
>>杀死|cRXP_ENEMY_Frenzied Pterrordax|r。掠夺他们的|cRXP_Loot_Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#label BloodpetalTrappers
.goto Un'Goro Crater,35.49,43.91
>>杀死|cRXP_ENEMY_花瓣陷阱|r
>>|cRXP_WARN_他们的毒药伤害很高，可以施放缠绕的树根|r << Warrior/Rogue/Shaman
>>|cRXP_WARN_他们的毒药造成高伤害并消耗法力。它们可以铸造缠绕的根|r << !Warrior !Rogue !Shaman
.complete 4145,2 
.mob Bloodpetal Trapper
step
#completewith next
>>杀死|cRXP_ENEMY_Frenzied Pterrordax|r。掠夺他们的|cRXP_Loot_Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
.goto Un'Goro Crater,29.0,54.8,40,0
.goto Un'Goro Crater,30.8,59.6,40,0
.goto Un'Goro Crater,33.0,65.6,40,0
.loop 25,Un'Goro Crater,36.6,65.8,40.8,62.8,41.8,56.8,40.6,51.2,39.6,43.4,37.8,36.6,32.6,34.4,27.6,37.2,26.0,45.4,26.8,58.2,30.8,68.0,38.4,74.0,40.8,67.2,32.8,63.2,30.8,59.6
>>杀死|cRXP_ENEMY_Diemetradons|r。掠夺他们的|cRXP_Loot_Bones|r和|cRXP-Loot_Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
.loop 25,Un'Goro Crater,36.6,65.8,40.8,62.8,41.8,56.8,40.6,51.2,39.6,43.4,37.8,36.6,32.6,34.4,27.6,37.2,26.0,45.4,26.8,58.2,30.8,68.0,38.4,74.0,40.8,67.2,32.8,63.2,30.8,59.6
>>杀死|cRXP_ENEMY_Frenzied Pterrordax|r。掠夺他们的|cRXP_Loot_Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#completewith next
.subzone 541 >>前往元帅避难所
step
.goto Un'Goro Crater,43.61,8.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普拉格·弗劳克|r
.turnin 4501 >>交任务: |cRXP_FRIENDLY_当心翼手龙|r
.accept 4492 >>接任务: |cRXP_LOOT_走丢了！|r
.target Spraggle Frock
step
.goto Un'Goro Crater,44.23,11.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希兹尔|r
.turnin 4503 >>交任务: |cRXP_FRIENDLY_希兹尔的的飞行器|r
.target Shizzle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍莱伊·马绍尔|r, |cRXP_FRIENDLY_威利德·马绍尔|r
.turnin 3883 >>交任务: |cRXP_FRIENDLY_异型的生态|r
.goto Un'Goro Crater,43.89,7.24
.accept 3881 >>接任务: |cRXP_LOOT_抢救物资|r
.goto Un'Goro Crater,43.95,7.14
.target Hol'anyee Marshal
.target Williden Marshal
step
.goto Un'Goro Crater,43.50,7.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark|r
.turnin 3882 >>交任务: |cRXP_FRIENDLY_挖骨头|r
.target Spark Nilminer
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.90,2.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.accept 4288 >>接任务: |cRXP_LOOT_西部水晶塔|r
.accept 4285 >>接任务: |cRXP_LOOT_北部水晶塔|r
.accept 4287 >>接任务: |cRXP_LOOT_东部水晶塔|r
.target J.D. Collie
step
.goto Un'Goro Crater,45.53,8.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞安|r
.turnin 4145 >>交任务: |cRXP_FRIENDLY_拉瑞安和穆尔金|r
.target Larion
step
.goto Un'Goro Crater,46.37,13.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna|r
.accept 4243 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.target Karna Remtravel
step
.goto Un'Goro Crater,56.49,12.44
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Northern Crystal Pylon|r
.complete 4285,1 
.isOnQuest 4285
step
.goto Un'Goro Crater,64.17,16.43,40,0
.goto Un'Goro Crater,67.66,16.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入洞穴时拥抱右侧墙壁，然后与|cRXP_FRIENDLY_A-Me 01|r交谈
.turnin 4243 >>交任务: |cRXP_FRIENDLY_找回A-Me 01|r
.target A-Me 01
step
.goto Un'Goro Crater,68.0,13.2
>>杀死洞穴后面的|cRXP_ENEMY_U'cha|r。抢劫他的|cRXP_Loot_Pelt|r
.complete 4301,1 
.unitscan U'cha
step
#ah
.goto Un'Goro Crater,67.67,16.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me|r
.accept 4244 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.turnin 4244 >>交任务: |cRXP_FRIENDLY_找回A-Me 01|r
.accept 4245 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.target A-Me 01
step
#ah
.goto Un'Goro Crater,67.67,16.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me|r
.accept 4245 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.target A-Me 01
step
#ah
.goto Un'Goro Crater,46.37,13.43
>>护送|cRXP_FRIENDLY_A-Me|r返回元帅避难所
.complete 4245,1 
.isOnQuest 4245
step
#ah
.goto Un'Goro Crater,46.37,13.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna|r
.turnin 4245 >>交任务: |cRXP_FRIENDLY_找回A-Me 01|r
.target Karna Remtravel
.isQuestComplete 4245
step
.goto Un'Goro Crater,68.54,36.54
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_食品箱|r
.complete 3881,1 
step
#requires bloodcap << Druid
.goto Un'Goro Crater,77.24,49.96
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Eastern Crystal Pylon|r
.complete 4287,1 
.isOnQuest 4287
step
#label Mighty
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4301 >>交任务: |cRXP_FRIENDLY_强大的尤尔查|r
.turnin 9052 >>交任务: |cRXP_FRIENDLY_血瓣毒药|r << Druid
.target Torwa Pathfinder
step << Druid
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
>>|cRXP_WARN_当你完成这项任务时，请仔细阅读我们的说明。这个任务非常危险|r
.accept 9051 >>接任务: |cRXP_WARN_毒性测试|r
.target Torwa Pathfinder
step
.goto Un'Goro Crater,38.46,66.07
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Research Equipment框|r
.complete 3881,2 
step
.goto Un'Goro Crater,23.87,59.21
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Western Crsytal Pylon|r
.complete 4288,1 
step
.goto Un'Goro Crater,30.94,50.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兰克|r
.accept 974 >>接任务: |cRXP_LOOT_究根问底|r
.target Krakle
step << Druid 
>>轨迹a|cRXP_ENEMY_Devilsaur|r或|cRXX_ENEMY_Ironhide Devilsaur |r
>>|cRXP_WARN_不要使用|r|cRXP暴君Devilsaur|r|cRXP_WARN_；他们的恐惧能力是致命的|r
>>|cRXP_WARN_在|r|cRXP_ENEMY_Devilsaur|r|cRXP_WARN_上进行垃圾邮件休眠，而不执行其他操作。如果它坏了，就再发一次垃圾邮件。|r
>>|cRXP_ENEMY_Devilsaur|r|cRXP_WARN_have 170%移动速度；他们无法逃脱|r
.use 22432 >>在它睡着的时候用你的|T135125:0|t[Devilsaur Barb]
.complete 9051,1 
.unitscan Devilsaur
.unitscan Ironhide Devilsaur
.unitscan Tyrant Devilsaur
step << Druid
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9051 >>交任务: |cRXP_FRIENDLY_毒性测试|r
.target Torwa Pathfinder
step << Druid
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 9053 >>接任务: |cRXP_WARN_更好的材料|r
.target Torwa Pathfinder
.isQuestTurnedIn 9051
.dungeon ST
step
.goto Un'Goro Crater,46.60,62.37,70,0
.goto Un'Goro Crater,49.25,64.43,70,0
.goto Un'Goro Crater,50.93,67.97,70,0
.goto Un'Goro Crater,55.97,69.52,70,0
.goto Un'Goro Crater,57.84,63.53,70,0
.goto Un'Goro Crater,58.80,57.84,70,0
.goto Un'Goro Crater,58.43,52.67,70,0
.goto Un'Goro Crater,57.94,44.83,70,0
.goto Un'Goro Crater,50.93,67.97
>>完成杀戮|cRXP_ENEMY_Ooze|r。掠夺他们的|cRXP_Loot_Slime样本|r和|cRXT_Loot_Un'Goro土壤|r
>>|cRXP_ENEMY_南部/西部的原始Ooze|r|cRXP_WARN_to最为丰富，但要小心穿过该地区的|r|cRXP_ENEMY_Devilsour|r|r
.collect 11018,25 
.collect 12235,35 
.mob Muculent Ooze
.mob Glutinous Ooze
.mob Primal Ooze
step
#completewith HotSpot
.goto Un'Goro Crater,47.1,47.1,10,0
.goto Un'Goro Crater,47.7,48.3,10,0
.goto Un'Goro Crater,48.2,50.1,10,0
.goto Un'Goro Crater,48.6,49.8,20 >>火山西侧的熔岩路径是通往顶部的捷径
step
#completewith next
>>杀死|cRXP_ENEMY_Fire Elements|r。掠夺他们的|cRXX_Loot_Ash|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
.mob Blazing Invader
step
#label HotSpot
.goto Un'Goro Crater,49.6,45.7
.use 12472 >>爬上火山顶部，然后使用|T132995:0|t[Krakle's Thermometer]
.complete 974,1 
step
.goto Un'Goro Crater,30.94,50.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兰克|r
.turnin 974 >>交任务: |cRXP_FRIENDLY_究根问底|r
.accept 980 >>接任务: |cRXP_LOOT_新的泉水|r
.target Krakle
step
.loop 25,Un'Goro Crater,46.7,53.2,49.8,53.9,52.2,54.2,51.2,51.6,53.1,50.4,52.6,45.3,51.5,46.3,50.3,47.7,51.3,49.4,50.3,47.7,49.5,47.3,47.8,50.9,46.7,53.2
>>杀死|cRXP_ENEMY_Fire Elements|r。掠夺他们的|cRXX_Loot_Ash|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
.mob Blazing Invader
step
#completewith next
.goto Un'Goro Crater,52.42,51.00,30 >>进入火山东侧的洞穴
step
.goto Un'Goro Crater,51.90,49.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林格|r
.turnin 4492 >>交任务: |cRXP_FRIENDLY_走丢了！|r
.accept 4491 >>接任务: |cRXP_LOOT_朋友的帮助|r
.target Ringo
step
.goto Un'Goro Crater,43.62,8.50
.use 11804 >>护送|cRXP_FRIENDLY_Ringo|r前往元帅避难所。当他摔倒时，使用|T132805:0|t[Spraggle’s Canteen]
>>|cRXP_WARN_小心别骑得太快离开林戈|r
.complete 4491,1 
.target Ringo
step
.goto Un'Goro Crater,43.61,8.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普拉格·弗劳克|r
.turnin 4491 >>交任务: |cRXP_FRIENDLY_朋友的帮助|r
.target Spraggle Frock
step
.goto Un'Goro Crater,43.89,7.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威利德·马绍尔|r
.turnin 3881 >>交任务: |cRXP_FRIENDLY_抢救物资|r
.target Williden Marshal
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.9,2.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 4288 >>交任务: |cRXP_FRIENDLY_西部水晶塔|r
.turnin 4285 >>交任务: |cRXP_FRIENDLY_北部水晶塔|r
.turnin 4287 >>交任务: |cRXP_FRIENDLY_东部水晶塔|r
.accept 4321 >>接任务: |cRXP_LOOT_分析水晶塔|r
.turnin 4321 >>交任务: |cRXP_FRIENDLY_分析水晶塔|r
.target J.D. Collie
step
.goto Un'Goro Crater,45.53,8.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞安|r
.accept 4147 >>接任务: |cRXP_LOOT_玛尔冯的车间|r
.target Larion
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Tanaris >>前往: 塔纳利斯
.target Gryfe
.zoneskip Tanaris
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4496 >>交任务: |cRXP_FRIENDLY_擒虫先擒王|r
.target Alchemist Pestlezugg
step
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.accept 3446 >>接任务: |cRXP_WARN_深入神庙|r
.accept 3447 >>接任务: |cRXP_WARN_雕像群的秘密|r
.target Marvon Rivetseeker
.isQuestTurnedIn 3444
.dungeon ST
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 3528 >>接任务: |cRXP_WARN_神灵哈卡|r
.target Yeh'kinya
.isQuestTurnedIn 4787 
.dungeon ST
step
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Feralas>>Fly to Feralas
.target Bullkrek Ragefist
.zoneskip Feralas
step
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 4120 >>交任务: |cRXP_FRIENDLY_堕落的力量|r
.target Talo Thornhoof
step
#completewith next
.goto Feralas,55.90,46.23,20 >>沿着Dire Maul的边界前往西区
step
.goto Feralas,55.41,45.54
.zone 1414 >>|cRXP_WARN_你必须探索Dire Maul区域，作为以后解锁任务的先决条件|r
.link https://youtu.be/ayEKuXSUU2A >>|cRXP_WARN_点击此处查看视频参考|r
step
.goto Feralas,50.76,49.83,60,0
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷甘·山酒|r
>>|cRXP_BUY_从他那里买一些|r|T134006:0|t[诱饵]|cRXP_Buy_|r
.collect 11141,1,3909,1 
.target Gregan Brewspewer
step
.goto Feralas,44.60,10.19
>>给|cRXP_ENEMY_Miblon Snarlpothe|r一些诱饵，他在废墟中守卫|cRXP-LOOT_Evoroot|r
>>|cRXP_WARN_你也可以从大楼后面进去|r
.collect 11242,1,3909,1 
.unitscan Miblon Snarltooth
step
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷甘·山酒|r, Evoroot
.complete 3909,1 
.target Gregan Brewspewer
step
#completewith next
.hs >>Hearth前往陶拉霍营地
.use 6948
step
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Byula
step << !Mage
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10199 >>训练你的职业技能
.target Thurston Xane
.xp <54,1
.xp >56,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10157 >>训练你的职业技能
.target Thurston Xane
.xp <56,1
step
#sticky
#label BluffRunner
.goto Thunder Bluff,41.54,57.87,70,0
.goto Thunder Bluff,52.76,62.07,30,0
.goto Thunder Bluff,55.63,50.08,70,0
.goto Thunder Bluff,41.54,57.87,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷霆崖信使斯塔德尔|r
>>|cRXP_WARN_他在露台上巡逻，所以你可能不得不四处寻找他|r
.accept 1000 >>接任务: |cRXP_WARN_新的边疆|r
.accept 5095 >>接任务: |cRXP_LOOT_战斗的号角：瘟疫之地！|r
.target Bluff Runner Windstrider
step
.goto Thunder Bluff,45.80,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
.accept 3762 >>接任务: |cRXP_WARN_协助大德鲁伊|r
.target Innkeeper Pala
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14290 >>训练你的职业技能
.target Urek Thunderhorn
.xp <54,1
.xp >56,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14305 >>训练你的职业技能
.target Urek Thunderhorn
.xp <56,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24631 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <54,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11605 >>训练你的职业技能
.target Ker Ragetotem
.xp <54,1
.xp >56,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 20662 >>训练你的职业技能
.target Ker Ragetotem
.xp <56,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 10408 >>训练你的职业技能
.target Tigor Skychaser
.xp <54,1
.xp >56,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 10432 >>训练你的职业技能
.target Tigor Skychaser
.xp <56,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10900 >>训练你的职业技能
.target Malakai Cross
.xp <54,1
.xp >56,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10929 >>训练你的职业技能
.target Malakai Cross
.xp <56,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9857 >>训练你的职业技能
.target Turak Runetotem
.xp <54,1
.xp >56,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 22829 >>训练你的职业技能
.target Tura
.xp <56,1
step
.goto Thunder Bluff,78.50,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
.turnin 1000 >>交任务: |cRXP_FRIENDLY_新的边疆|r
.accept 1123 >>接任务: |cRXP_WARN_拉比恩·萨图纳|r
.turnin 3762 >>交任务: |cRXP_FRIENDLY_协助大德鲁伊|r
.accept 3761 >>接任务: |cRXP_LOOT_安戈洛的泥土|r
.target Arch Druid Hamuul Runetotem
step
.goto Thunder Bluff,77.30,22.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格德|r
.turnin 3761 >>交任务: |cRXP_FRIENDLY_安戈洛的泥土|r
.target Ghede
step
.goto Thunder Bluff,78.40,28.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
.accept 3782 >>接任务: |cRXP_WARN_晨光麦研究|r
.target Arch Druid Hamuul Runetotem
step
.goto Thunder Bluff,70.20,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.turnin 3518 >>交任务: |cRXP_FRIENDLY_玛加萨的石版|r
.target Magatha Grimtotem
.isOnQuest 3518
step
.goto Thunder Bluff,70.20,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.accept 3562 >>接任务: |cRXP_WARN_玛加萨的报酬|r
.target Magatha Grimtotem
.isQuestTurnedIn 3518
step
.goto Thunder Bluff,71.00,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴珊娜·符文图腾|r
.turnin 3782 >>交任务: |cRXP_FRIENDLY_晨光麦研究|r
.target Bashana Runetotem
step
.goto Thunder Bluff,47.02,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Ratchet>>飞到棘轮
.target Tal
.zoneskip Thunder Bluff,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 56-57 Felwood/冬泉
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 50-60
#next 57-59西部PL/东部PL
step
#sticky
#completewith EnterST
.subzone 1417 >>现在你应该找一个小组去沉没寺
.dungeon ST
step
.goto The Barrens,62.50,38.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv|r
.turnin 4502 >>交任务: |cRXP_FRIENDLY_火山的活动|r
.turnin 4147 >>交任务: |cRXP_FRIENDLY_玛尔冯的车间|r
.target Liv Rizzlefix
step
.goto The Barrens,62.50,38.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv|r
.accept 4146 >>接任务: |cRXP_WARN_除草器的燃料|r
.target Liv Rizzlefix
.isQuestTurnedIn 4147
.dungeon ST
step
.goto The Barrens,65.80,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 5158 >>交任务: |cRXP_FRIENDLY_水之魂的帮助|r
.accept 5159 >>接任务: |cRXP_LOOT_净化过的水|r
.target Islen Waterseer
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
.dungeon ST
step
.goto Stranglethorn Vale,26.90,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Stonard>>飞往斯托纳德
.target Gringer
.zoneskip Swamp of Sorrows
.dungeon ST
step
.goto Swamp of Sorrows,47.93,54.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费泽鲁尔|r
.accept 1445 >>接任务: |cRXP_WARN_阿塔哈卡神庙|r
.isQuestTurnedIn 1444
.dungeon ST
step << Warrior
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 8425 >>接任务: |cRXP_WARN_巫毒羽毛|r
.target Fallen Hero of the Horde
.isQuestTurnedIn 8424
.dungeon ST
step
.goto 1415,56.33,76.28
.subzone 1477 >>Travel to Sunken Temple
.dungeon ST
step
#completewith next
>>杀死沉没神殿中的|cRXP_ENEMY_Atal'ai巨魔|r。掠夺他们的|cRXP_Loot_哈卡尔的恋物癖|r
>>|cRXP_WARN_沉没神庙内外的巨魔都可以放下这些|r
.complete 1445,1 
.isOnQuest 1445
.dungeon ST
step
#label EnterST
.goto 1415,56.33,76.28,40,0
.goto 1415,56.46,75.54,20,0
.goto 1415,56.83,75.86,20,0
.goto 1415,56.94,76.03,15,0
.goto 1415,57.06,75.58,20,0
.goto 1415,56.76,75.35,15,0
.goto 1415,56.809,75.151
.subzone 1477,2 >>Zone into Sunken Temple
.dungeon ST
step
#sticky
>>杀死沉没神殿中的|cRXP_ENEMY_Atal'ai巨魔|r。掠夺他们的|cRXP_Loot_哈卡尔的恋物癖|r
.complete 1445,1 
.isOnQuest 1445
.dungeon ST
step
#sticky
>>杀死|cRXP_ENEMY_Deep Lurkers |r、|cRXD_ENEMY_Murk Worms |r和|cRXP_ENEMY_Saturated Ooze|r。掠夺它们的|cRXP_Loot_Atal'ai Haze|r
>>|cRXP_ENEMY_在实例开始时向右走下楼梯，找到这些暴徒|r
.complete 4146,1 
.isOnQuest 4146
.dungeon ST
step << Druid
#completewith Altar
>>杀死|cRXP_ENEMY_Atal'alarion|r。为|cRXP_Loot_Putrid Vine|r掠夺他
>>|cRXP_ENEMY_阿塔警报|r|cRXP_WARN_i在下沉神殿的下层，通过点击平台上的所有|cRX_PICK_阿塔艾雕像|r进行召唤|r
.complete 9053,1 
.isOnQuest 9053
.dungeon ST
step 
#completewith next
>>单击Hakkar的|cRXP_PICK_Altar|r
>>|cRXP_WARN_哈卡尔的|cRXP_PICK_祭坛位于下沉神庙的下层|r
.turnin 3446 >>交任务: |cRXP_FRIENDLY_深入神庙|r
.isOnQuest 3446
.dungeon ST
step 
>>点击Hakkar的|cRXP_PICK_Idol |r
>>|cRXP_WARN_点击平台上的所有|cRXP_PICK_Atal'ai状态|r将激活Hakkar的|r|cRX_PICK_Idol|r
>>|cRXP_WARN_哈卡尔的|cRXP_PICK_Idol |r位于下沉神庙的下层|r
.turnin 3447 >>交任务: |cRXP_FRIENDLY_雕像群的秘密|r
.isOnQuest 3447
.dungeon ST
step 
#label Altar
>>单击Hakkar的|cRXP_PICK_Altar|r
>>|cRXP_WARN_哈卡尔的|cRXP_PICK_祭坛位于下沉神庙的下层|r
.turnin 3446 >>交任务: |cRXP_FRIENDLY_深入神庙|r
.isOnQuest 3446
.dungeon ST
step << Druid
>>杀死|cRXP_ENEMY_Atal'alarion|r。为|cRXP_Loot_Putrid Vine|r掠夺他
>>|cRXP_ENEMY_阿塔警报|r|cRXP_WARN_i在下沉神殿的下层，通过点击平台上的所有|cRX_PICK_阿塔艾雕像|r进行召唤|r
.complete 9053,1 
.isOnQuest 9053
.dungeon ST
step << Shaman/Warrior/Warlock
>>杀死|cRXP_ENEMY_Gasher|r和|cRXX_ENEMY_Zul'Lor|r。掠夺他们的|cRXD_Loot_Amber巫毒羽毛|r
>>杀死|cRXP_ENEMY_Mijan|r和|cRXX_ENEMY_Hukku|r。掠夺他们的|cRXP_Loot_蓝色巫毒羽毛|r
>>杀死|cRXP_ENEMY_Zolo|r和|cRXX_ENEMY_Loro|r。掠夺他们的|cRXP_Loot_绿色巫毒羽毛|r
>>|cRXP_WARN_此任务在沉没神庙的上层完成|r
.complete 8413,1 << Shaman 
.complete 8413,2 << Shaman 
.complete 8413,3 << Shaman 
.complete 8425,1 << Warrior 
.complete 8425,2 << Warrior 
.complete 8425,3 << Warrior 
.complete 8422,1 << Warlock 
.complete 8422,2 << Warlock 
.complete 8422,3 << Warlock 
.isOnQuest 8413 << Shaman
.isOnQuest 8425 << Warrior
.isOnQuest 8422 << Warlock
.dungeon ST
step
>>|cRXP_WARN_在Dragonflayer Skeleton旁边使用|r|T132834:0|t[Egg of Hakkar]|cRXP_WARN_while，然后完成事件|r
>>杀死|cRXP_ENEMY_Hakkar|r的小黄人，直到Hakkar| r的|cRXP_ENEMY_Avatar加入
>>杀死Hakkar的|cRXP_ENEMY_Avatar |r。为|T136148:0|t[|cRXX_Loot_Hakar|r]掠夺它
>>|cRXP_WARN_使用|r|T136148:0|t[|cRXP_LOOT_哈卡精华|r]|cRXP_WARN_填充|r|T132834:0|t[哈卡蛋]
.collect 10663,1,3528,1 
.disablecheckbox
.complete 3528,1 
.use 10465 
.use 10663 
.isOnQuest 3528
.dungeon ST
step
>>Kill |cRXP_ENEMY_接任务: |cRXP_WARN_预言者迦玛兰|r|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_You must kill the 6 |cRXP_ENEMY_Trolls|r on the upper platforms to gain access to|r |cRXP_ENEMY_接任务: |cRXP_WARN_预言者迦玛兰|r|r
.complete 1446,1 
.isOnQuest 1446
.dungeon ST
step << Hunter/Mage/Priest/Rogue
>>杀死|cRXP_ENEMY_Morphaz|r。为Morphaz的|cRXP_Loot_Toth而掠夺它|r << Hunter
>>杀死|cRXP_ENEMY_Morphaz|r。为|cRXP_Loot_Arcane碎片而掠夺它|r << Mage
>>杀死|cRXP_ENEMY_Morphaz|r。为Morphaz的|cRXP_Loot_血液而掠夺它|r << Priest
>>杀死|cRXP_ENEMY_Morphaz|r。获取|cRXP_Loot_AAzure密钥|r << Rogue
.complete 8232,1 << Hunter 
.complete 8253,1 << Mage 
.complete 8257,1 << Priest 
.complete 8236,1 << Rogue 
.isOnQuest 8232 << Hunter
.isOnQuest 8253 << Mage
.isOnQuest 8257 << Priest
.isOnQuest 8236 << Rogue
.dungeon ST
step
>>杀死Eranikus的|cRXP_ENEMY_Shade|r。为|T135229:0|t[|cRXX_Loot_Eranikus|r]掠夺他
>>|cRXP_WARN_使用|T135229:0|t[|cRXP_LOOT_Eranikus|r]开始任务|r
>>|cRXP_WARN_在与Eranikus|r的|cRXP_ENEMY_Shade交战之前，确保你已经杀死了上层的所有|cRXP_ENEMY_Dragonkin|r暴徒，否则他们会全部攻击你|r
.collect 10454,1,3373,1 
.accept 3373 >>接任务: |cRXP_WARN_伊兰尼库斯精华|r
.dungeon ST
step
>>单击|cRXP_PICK_Essence字体|r
.turnin 3373 >>交任务: |cRXP_FRIENDLY_伊兰尼库斯精华|r
.isOnQuest 3373
.dungeon ST
step
.zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
.dungeon ST
step
.goto Swamp of Sorrows,47.93,54.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费泽鲁尔|r
.turnin 1445 >>交任务: |cRXP_FRIENDLY_阿塔哈卡神庙|r
.isQuestComplete 1445
.dungeon ST
step << Warrior
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
>>|cRXP_WARN_I强烈建议您选择|r|T132788:0|t[|cFF0070FF钻石烧瓶|r]|cRXP_WARN_a作为奖励。虽然其他奖励也很好，但您永远不会更换|r|T132788:0|t[|cFF0070FF钻石烧瓶|r]
.turnin 8425 >>交任务: |cRXP_FRIENDLY_巫毒羽毛|r
.target Fallen Hero of the Horde
.isQuestComplete 842
.dungeon ST
step
.hs >>Hearth前往陶拉霍营地
.use 6948
.dungeon ST
step
#completewith next
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Un'Goro Crater>>飞到Un'Goro火山口
.target Omusa Thunderhorn
.zoneskip Un'Goro Crater
.isQuestComplete 4145
.dungeon ST
step
.goto Un'Goro Crater,45.53,8.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞安|r
.turnin 4146 >>交任务: |cRXP_FRIENDLY_除草器的燃料|r
.target Larion
.isQuestComplete 4146
.dungeon ST
step << Druid
#completewith next
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Un'Goro Crater>>飞到Un'Goro火山口
.target Omusa Thunderhorn
.zoneskip Un'Goro Crater
.isQuestComplete 9053
.dungeon ST
step << Druid
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9053 >>交任务: |cRXP_FRIENDLY_更好的材料|r
.target Torwa Pathfinder
.isQuestComplete 9053
.dungeon ST
step
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Tanaris >>前往: 塔纳利斯
.target Omusa Thunderhorn
.subzoneskip 378,1
.isQuestComplete 3528
.dungeon ST
step
#completewith next
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Tanaris >>前往: 塔纳利斯
.target Gryfe
.subzoneskip 541,1
.isQuestComplete 3528
.dungeon ST
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 3528 >>交任务: |cRXP_FRIENDLY_神灵哈卡|r
.target Yeh'kinya
.isQuestComplete 3528
.dungeon ST
step
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Azshara >>Fly to Azshara
.target Gryfe
.subzoneskip 541,1
.dungeon ST
step
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Azshara >>Fly to Azshara
.target Bullkrek Ragefist
.zoneskip Tanaris,1
.dungeon ST
step
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Azshara >>Fly to Azshara
.target Omusa Thunderhorn
.zoneskip The Barrens
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.turnin 3562 >>交任务: |cRXP_FRIENDLY_玛加萨的报酬|r
.target Jediga
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.turnin 3563 >>交任务: |cRXP_FRIENDLY_杰斯雷蒙的报酬|r
.target Jediga
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.accept 3542 >>接任务: |cRXP_WARN_安德隆·甘特的石版|r
.target Jediga
step << Hunter/Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.turnin 8232 >>交任务: |cRXP_FRIENDLY_神庙中的绿龙|r << Hunter
.turnin 8257 >>交任务: |cRXP_FRIENDLY_摩弗拉斯之血|r << Priest
.target Ogtinc
.isQuestComplete 8232 << Hunter
.isQuestComplete 8257 << Priest
.dungeon ST
step << Mage/Rogue
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
>>|cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
.isQuestComplete 8253 << Mage
.isQuestComplete 8236 << Rogue
.dungeon ST
step << Mage/Rogue
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r, 他在塔上
.turnin 8253 >>交任务: |cRXP_FRIENDLY_毁灭摩弗拉斯|r << Mage
.turnin 8236 >>交任务: |cRXP_FRIENDLY_碧蓝钥匙|r << Rogue
.target Archmage Xylem
.dungeon ST
.isQuestComplete 8253 << Mage
.isQuestComplete 8236 << Rogue
step << Mage/Rogue
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这会把你传送回去|r
.turnin 3421 >>交任务: |cRXP_FRIENDLY_回程|r
.timer 8,Return Trip RP
.target Nyrill
.dungeon ST
.isQuestTurnedIn 8253 << Mage
.isQuestTurnedIn 8236 << Rogue
step
.goto Azshara,22.00,49.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克隆姆|r
.fly Felwood>>Fly to Felwood
.target Kroum
.zoneskip Felwood
step
.goto Felwood,34.30,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna|r
.accept 4506 >>接任务: |cRXP_WARN_被腐蚀的猫|r
.target Winna Hazzard
step
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特鲁尔·法贝恩|r
.accept 4521 >>接任务: |cRXP_WARN_冬泉谷的枭兽|r
.target Trull Failbane
step << Warlock
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.turnin 8422 >>交任务: |cRXP_FRIENDLY_巨魔的羽毛|r
.target Impsy
.isQuestComplete 8422
.dungeon ST
step
#completewith next
>>从Felwood的任何暴徒手中掠夺|cRXP_Loot_腐蚀的灵魂碎片|r
>>慢慢向南走，直到你有6个
.collect 11515,6,5882,1 
.itemcount 11511,1 
step
#completewith next
.subzone 2479 >>前往翡翠保护区
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5159 >>交任务: |cRXP_FRIENDLY_净化过的水|r
.target Greta Mosshoof
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5165 >>接任务: |cRXP_LOOT_熄灭火焰|r
.target Greta Mosshoof
.group
step
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝丝·河风|r
>>|cRXP_WARN_转入您的6|r|T132884:0|t[|cRXP_LOOTCorrupted Soul Shard|r]|cRXP_WARN_您必须收到2|r|T132804:0|t[|cRXD_LOOTCenarion Plant Salves|r]
>>如果没有6个，请从南边的|cRXP_ENEMY_Furbolgs|r获取它们
.collect 11515,6,5887,1 
.accept 5887 >>接任务: |cRXP_LOOT_狩猎换药膏|r
.turnin 5887 >>交任务: |cRXP_FRIENDLY_狩猎换药膏|r
.target Maybess Riverbreeze
.zoneskip Felwood,1
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
#completewith Kitten
#icon |T135934:0|t
.goto Felwood,55.808,10.438,0
.goto Felwood,50.575,13.918,0
.goto Felwood,63.336,22.610,0
.goto Felwood,40.142,44.353,0
.goto Felwood,40.142,56.523,0
.goto Felwood,48.260,75.650,0
.goto Felwood,45.942,85.219,0
.goto Felwood,52.893,87.825,0
.goto Felwood,52.893,87.825,25,0
.goto Felwood,45.942,85.219,25,0
.goto Felwood,48.260,75.650,25,0
.goto Felwood,40.142,56.523,25,0
.goto Felwood,40.142,44.353,25,0
.goto Felwood,50.575,13.918,25,0
.goto Felwood,55.808,10.438,25,0
.goto Felwood,63.336,22.610,25,0
.aura 15366 >>|cRXP_WARN_查找一首|cRXP_PICK_Corrupted Songflower|r。单击它以清除它。单击|cRX_PICK_Cleansed Songflower |r以接收一小时长的|r|T135934:0|t[Songflower Serenade]|cRXP_WARN_buff|r
>>|cRXP_WARN_他们的位置已经在你的地图上标出了。如果找不到，请跳过此步骤|r
.itemcount 11516,2 
step
#label Kitten
.goto Felwood,36.02,66.99,70,0
.goto Felwood,32.40,66.60,20,0
+使用|T132599:0|t[Winna‘s Kitten Carrier]在Constellas废墟的损坏月井
>>|cRXP_WARN_完成后手动跳过此步骤|r
.use 12565
step
#label EnterShadowH
.goto Felwood,35.367,58.376
.subzone 1770 >>前往Jaedenar内的Shadow Hold
.group
step
#completewith next
>>单击地面上的四个|cRXP_PICK_Brazier|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
.group 2
step
>>杀死|cRXP_ENEMY_Jaedenar Enforcers|r，|cRXD_ENEMY_Jaedenar Darkwavers|r、|cRXP_ENEMY_ JaedenarWarlocks|r和|cRXT_ENEMY_贾德纳尔退伍军人|r。掠夺他们一个|T134235:0|t[|cRXP_Loot_血红钥匙|r]
>>|cRXP_WARN_使用|r|T134235:0|t[|cRXP_LOOT_血红键|r]|cRXP-WARN_to开始任务|r
>>|cRXP_WARN_这将开始一个护送任务。即使你仍然需要熄灭钎焊剂，也要开始这场护航|r
.collect 13140,1,5202 
.accept 5202 >>接任务: |cRXP_LOOT_奇怪的红钥匙|r
.use 13140 
.mob Jaedenar Enforcer
.mob Jaedenar Darkweaver
.mob Jaedenar Warlock
.mob Jaedenar Legionnaire
.group 2
step
#label eStart
.goto Felwood,36.207,55.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的亚科纳琳|r
.turnin 5202 >>交任务: |cRXP_FRIENDLY_奇怪的红钥匙|r
.accept 5203 >>接任务: |cRXP_LOOT_逃出加德纳尔|r
.target Captured Arko'narin
.group 2
step
#completewith next
>>单击地面上的四个|cRXP_PICK_Brazier|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
.group 2
step
.goto Felwood,35.44,59.01
>>护送|cRXP_FRIENDLY_Arko'narin|r通过阴影保持。在|cRXP_FRIENDLY_Arko'narin|r装备好她的盔甲后，杀死产生的3|cRXP_ENEMY_Felguard|r
>>|cRXP_FRIENDLY_Arko'narin|r|cRXP_WARN_has 6000 HP；让她的坦克暴徒。当你向入口前进时，熄灭阴影舱内的钎焊器|r
>>一旦|cRXP_FRIENDLY_Arko'narin|r离开洞穴，树之光之灵|r就会产生。杀了他
>>|cRXP_WARN_小心添加。他有一个500点伤害的震击法，而且打击非常猛烈。如果你有攻击性的冷却，在这里使用它们|r
.complete 5203,1 
.group 2
step
>>单击地面上的四个|cRXP_PICK_Brazier|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
.group 2
step
#completewith next
.goto Felwood,37.37,49.83,40,0
.goto Felwood,35.45,50.10,40,0
.goto Felwood,34.57,52.12
.subzone 1997 >>前往Bloodvenom Post
step
#label SaberTurnIn
.goto Felwood,34.20,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t接近|cRXP_FRIENDLY_Winna|r。与|cRXP_FRIENDLY_Corrupted Saber|r交谈，然后与|cRXP_FRIENDLY_Winna |r交谈
.turnin 4506 >>交任务: |cRXP_FRIENDLY_被腐蚀的猫|r
.target Winna Hazzard
.skipgossip
step
#completewith next
.goto Felwood,64.70,8.10,70 >>前往Timbermaw Hold入口
step
.goto Felwood,64.70,8.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳菲恩|r
.accept 8461 >>接任务: |cRXP_LOOT_北方的死木熊怪|r
.target Nafien
step
#completewith next
.goto Felwood,62.68,8.06,0
>>杀死|cRXP_ENEMY_枯木巢穴守望者|r，|cRXX_ENEMY_Deadwood复仇者|r安|cRXD_ENEMY_Deadwood萨满|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Deadwood复仇者|r|cRXP_WARN_first。如果你多次拉动，如果附近有毛皮死亡，它会激怒你|r
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.mob Deadwood Den Watcher
.mob Deadwood Shaman
.mob Deadwood Avenger
step
.goto Felwood,60.20,5.90
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Deadwood Cauldron|r
.turnin 5084 >>交任务: |cRXP_FRIENDLY_堕落熊怪|r
.accept 5085 >>接任务: |cRXP_LOOT_神秘的粘液|r
step
.goto Felwood,61.67,7.23,50,0
.goto Felwood,62.68,8.39,50,0
.goto Felwood,62.55,10.49,50,0
.goto Felwood,63.19,13.01,50,0
.goto Felwood,61.67,7.23,50,0
.goto Felwood,62.68,8.39,50,0
.goto Felwood,62.55,10.49,50,0
.goto Felwood,63.19,13.01
>>杀死|cRXP_ENEMY_枯木巢穴守望者|r，|cRXX_ENEMY_Deadwood复仇者|r安|cRXD_ENEMY_Deadwood萨满|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Deadwood复仇者|r|cRXP_WARN_first。如果你多次拉动，如果附近有毛皮死亡，它会激怒你|r
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.mob Deadwood Den Watcher
.mob Deadwood Shaman
.mob Deadwood Avenger
step
.goto Felwood,64.70,8.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳菲恩|r
.turnin 8461 >>交任务: |cRXP_FRIENDLY_北方的死木熊怪|r
.accept 8465 >>接任务: |cRXP_LOOT_与萨尔法交谈|r
.target Nafien
step
#completewith next
.goto Felwood,65.16,7.88,40,0
.goto Felwood,64.67,3.14,40,0
.goto Felwood,66.40,2.95,40,0
.goto Felwood,68.24,5.60,40,0
.goto Felwood,68.73,6.38
.zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
.goto Felwood,68.30,6.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔法|r
.turnin 8465 >>交任务: |cRXP_FRIENDLY_与萨尔法交谈|r
.accept 8464 >>接任务: |cRXP_WARN_冬泉熊怪的活动|r
.target Salfa
step
#softcoreserver
.goto Winterspring,31.30,45.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
>>|cRXP_WARN_不接受后续见面会|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 4842 >>接任务: |cRXP_LOOT_奇怪的源头|r
.turnin 3909 >>交任务: |cRXP_FRIENDLY_视灵药剂|r 
.turnin 5085 >>交任务: |cRXP_FRIENDLY_神秘的粘液|r
.accept 5086 >>接任务: |cRXP_LOOT_剧毒之水|r
.target Donova Snowden
.isQuestComplete 3909
step
#softcoreserver
.goto Winterspring,31.30,45.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 4842 >>接任务: |cRXP_LOOT_奇怪的源头|r
.turnin 5085 >>交任务: |cRXP_FRIENDLY_神秘的粘液|r
.accept 5086 >>接任务: |cRXP_LOOT_剧毒之水|r
.target Donova Snowden
step
#hardcoreserver
.goto Winterspring,31.30,45.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
>>|cRXP_WARN_暴雪已经调整了[Videre Elixir]的任务链，这样它就不会再在官方硬核服务器上杀死你了|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 4842 >>接任务: |cRXP_LOOT_奇怪的源头|r
.turnin 3909 >>交任务: |cRXP_FRIENDLY_视灵药剂|r 
.accept 3912 >>接任务: |cRXP_WARN_墓地相见|r 
.turnin 5085 >>交任务: |cRXP_FRIENDLY_神秘的粘液|r
.accept 5086 >>接任务: |cRXP_LOOT_剧毒之水|r
.target Donova Snowden
.isQuestComplete 3909
step
#hardcoreserver
.goto Winterspring,31.30,45.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 4842 >>接任务: |cRXP_LOOT_奇怪的源头|r
.turnin 5085 >>交任务: |cRXP_FRIENDLY_神秘的粘液|r
.accept 5086 >>接任务: |cRXP_LOOT_剧毒之水|r
.target Donova Snowden
step
#completewith WSYetis
>>在前往Everlook的途中，杀死|cRXP_ENEMY_Ragged Owlbeats|r
.complete 4521,2 
.mob Ragged Owlbeast
step
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.home >>将您的炉石设置为Everlook
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
#label WSYetis
.goto Winterspring,60.88,37.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.accept 3783 >>接任务: |cRXP_LOOT_雪怪计划！|r
.target Umi Rumplesnicker
step
#label Ursius
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.accept 5054 >>接任务: |cRXP_LOOT_碎齿熊尤西乌斯|r
.target Storm Shadowhoof
.group
step
.loop 25,Winterspring,57.8,34.6,56.6,32.4,56.0,28.6,58.8,27.4,60.6,29.8,59.6,31.4,60.6,33.6,58.6,33.2,57.8,34.6
>>杀死Everlook以西的|cRXP_ENEMY_Ragged Owlbeats|r
.complete 4521,2 
.mob Ragged Owlbeast
step
#completewith ROwlbeasts
>>杀死所有类型的|cRXP_ENEMY_Ice Thistle Yetis|r。掠夺它们的|cRXP_Loot_Fur|r
>>|cRXP_WARN_不要专注于此；你可以稍后完成|r
.complete 3783,1 
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step
#completewith next
.goto Winterspring,60.67,29.81,0
.goto Winterspring,58.64,34.51,0
>>杀死|cRXP_ENEMY_Raging Owlbeats|r
.complete 4521,1 
.mob Raging Owlbeast
.group 0
step
.goto Winterspring,56.62,32.34,70,0
.goto Winterspring,60.50,33.02,70,0
.goto Winterspring,62.55,30.83,70,0
.goto Winterspring,62.43,28.08,70,0
.goto Winterspring,63.40,27.04
>>杀死|cRXP_ENEMY_Ursius|r。如果需要，你可以把他放回Everlook。记得造成51%+的伤害
>>|cRXP_WARN_小心，因为这个任务可能很难|r
.complete 5054,1 
.unitscan Ursius
.group 2
step
#label ROwlbeasts
.goto Winterspring,60.58,29.76,50,0
.goto Winterspring,58.82,27.41,70,0
.goto Winterspring,56.06,27.83,70,0
.goto Winterspring,55.97,30.25,70,0
.goto Winterspring,55.10,32.16,70,0
.goto Winterspring,60.58,29.76,50,0
.goto Winterspring,58.82,27.41
>>杀死|cRXP_ENEMY_Raging Owlbeats|r
.complete 4521,1 
.mob Raging Owlbeast
step
.loop 25,Winterspring,66.5,41.7,64.9,40.2,65.9,43.6,66.2,45.8,67.6,45.6,67.6,43.8,67.2,43.0,67.6,41.9,68.4,41.5,69.00,41.3,69.5,40.0,69.8,41.8,70.1,42.0,70.3,40.8,71.3,40.8,71.8,39.8,70.5,38.3,71.8,39.8,71.3,40.8,70.3,40.8,69.5,40.0,69.00,41.3,68.4,41.5,66.5,41.7
>>杀死所有类型的|cRXP_ENEMY_Ice Thistle Yetis|r。掠夺它们的|cRXP_Loot_Fur|r
.complete 3783,1 
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step << Shaman
#completewith next
.hs >>Hearth或Astral召回Everlook
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.turnin 5054 >>交任务: |cRXP_FRIENDLY_碎齿熊尤西乌斯|r
.accept 5055 >>接任务: |cRXP_LOOT_冰风奇美拉布鲁米兰|r
.target Storm Shadowhoof
.group
step
.goto Winterspring,60.88,37.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.turnin 3783 >>交任务: |cRXP_FRIENDLY_雪怪计划！|r
.target Umi Rumplesnicker
step
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Felwood>>Fly to Felwood
.target Yugrek
.zoneskip Felwood
step
.goto Felwood,34.70,52.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特鲁尔·法贝恩|r
.turnin 4521 >>交任务: |cRXP_FRIENDLY_冬泉谷的枭兽|r
.accept 4741 >>接任务: |cRXP_WARN_冬泉谷的枭兽|r
.target Trull Failbane
step 
#completewith next
.goto Felwood,34.42,53.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉卡尔|r
.fly Tanaris>>前往: 塔纳利斯
.target Brakkar
.zoneskip Tanaris
.isOnQuest 3912
step
#hardcoreserver
.isOnQuest 3912
#completewith next
.goto Tanaris,53.99,28.63
.cast 417627 >>|cRXP_WARN_使用|r|T134813:0|t[Videre Elixir]|cRXP_WARN_at Tanaris墓地|r
>>|cRXP_WARN_暴雪已经调整了这个任务，所以消耗这个任务不会杀死你在官方硬核服务器上的角色。然而，它会将你的健康水平降低到3%。离开墓地前，确保包扎或吃东西|r
.use 11243 
step
#hardcoreserver
.isOnQuest 3912
.goto Tanaris,53.93,23.33
>>|cRXP_WARN_离开墓地前，确保包扎或吃东西|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加里杨|r
>>|cRXP_WARN_你必须拥有|T132331:0|t[濒死体验]的debuff才能通过饮用|r|T134813:0|t[Videre Elixir]
>>|cRXP_WARN_暴雪已经调整了这个任务，所以消耗这个任务不会杀死你在官方硬核服务器上的角色|r
.use 11243 
.turnin 3912 >>交任务: |cRXP_FRIENDLY_墓地相见|r
.accept 3913 >>接任务: |cRXP_WARN_寻找墓碑|r
.target Gaeriyan
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,53.93,23.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加里杨|r
>>|cRXP_WARN_你必须拥有|T132331:0|t[濒死体验]的debuff才能通过饮用|r|T134813:0|t[Videre Elixir]
>>|cRXP_WARN_暴雪已经调整了这个任务，所以消耗这个任务不会杀死你在官方硬核服务器上的角色|r
.use 11243 
.accept 3913 >>接任务: |cRXP_WARN_寻找墓碑|r
.target Gaeriyan
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,53.815,29.061
>>单击|cRXP_PICK_显眼的墓碑|r
.turnin 3913 >>交任务: |cRXP_FRIENDLY_寻找墓碑|r
.accept 3914 >>接任务: |cRXP_WARN_林克的剑|r
step
#hardcoreserver
#completewith next
.destroy 11243 >>摧毁: |cRXP_ENEMY_视灵药剂|r
step
.isQuestTurnedIn 3912
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Un'Goro Crater >>飞到Un'Goro火山口
.target Bullkrek Ragefist
.zoneskip Tanaris,1
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3914 >>交任务: |cRXP_FRIENDLY_林克的剑|r
.accept 3941 >>接任务: |cRXP_WARN_侏儒的援助|r
.target Linken
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 3941 >>交任务: |cRXP_FRIENDLY_侏儒的援助|r
.timer 25,A Gnome's Assistance RP
.accept 3942 >>接任务: |cRXP_WARN_林克的记忆|r
.target J.D. Collie
step << Druid
#completewith DruidTraining9
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9857 >>训练你的职业技能
.target Loganaar
.xp <54,1
.xp >56,1
step << Druid
#label DruidTraining9
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 22829 >>训练你的职业技能
.target Loganaar
.xp <56,1
step
#completewith next
.hs >>Hearth to Winterspring
.use 6948
.zoneskip Winterspring
step
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,54.7,46.0,60,0
.goto Winterspring,56.6,52.4,60,0
.goto Winterspring,60.5,55.6,60,0
.goto Winterspring,62.4,58.9,60,0
.goto Winterspring,58.8,63.5
>>杀死|cRXP_ENEMY_Brumeran|r
.complete 5055,1 
.unitscan Brumeran
.group 3
step
.loop 25,Winterspring,63.6,22.6,63.4,20.8,65.2,19.6,63.6,16.2,65.2,19.6,66.0,18.6,66.6,21.4,66.8,24.6,65.4,22.6,63.6,22.6
>>杀死|cRXP_ENEMY_Moonthented猫头鹰|r
>>|cRXP_WARN_他们的月火相当猛烈，他们的复兴很强大|r
.complete 4741,1 
.mob Moontouched Owlbeast
step
.goto Winterspring,60.09,73.34
>>前往黑暗耳语峡谷的边界
.complete 4842,1 
step
#completewith next
.subzone 2255 >>Travel to Everlook
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.turnin 5055 >>交任务: |cRXP_FRIENDLY_冰风奇美拉布鲁米兰|r
.target Storm Shadowhoof
.group
step
.goto Winterspring,61.34,38.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷戈|r
.accept 6029 >>接任务: |cRXP_LOOT_永望镇报告|r
.accept 6030 >>接任务: |cRXP_LOOT_尼古拉斯·瑟伦霍夫公爵|r
.accept 5601 >>接任务: |cRXP_LOOT_小妹妹帕米拉|r
.target Gregor Greystone
step
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Felwood>>Fly to Felwood
.target Yugrek
.zoneskip Felwood
step
.goto Felwood,34.70,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特鲁尔·法贝恩|r
.turnin 4741 >>交任务: |cRXP_FRIENDLY_冬泉谷的枭兽|r
.accept 4721 >>接任务: |cRXP_WARN_冬泉谷的枭兽|r
.target Trull Failbane
step
#completewith SilverHeartP
#icon |T135934:0|t
.goto Felwood,55.808,10.438,0
.goto Felwood,50.575,13.918,0
.goto Felwood,63.336,22.610,0
.goto Felwood,40.142,44.353,0
.goto Felwood,40.142,56.523,0
.goto Felwood,48.260,75.650,0
.goto Felwood,45.942,85.219,0
.goto Felwood,52.893,87.825,0
.aura 15366 >>|cRXP_WARN_查找一首|cRXP_PICK_Corrupted Songflower|r。单击它以清除它。单击|cRX_PICK_Cleansed Songflower |r以接收一小时长的|r|T135934:0|t[Songflower Serenade]|cRXP_WARN_buff|r
>>|cRXP_WARN_他们的位置已经在你的地图上标出了。不要费很大劲去找|r
.itemcount 11516,2 
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5165 >>交任务: |cRXP_FRIENDLY_熄灭火焰|r
.accept 5242 >>接任务: |cRXP_LOOT_最终一击|r
.target Greta Mosshoof
.isQuestComplete 5165
.group
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5242 >>接任务: |cRXP_LOOT_最终一击|r
.target Greta Mosshoof
.isQuestTurnedIn 5165
.group
step
.goto Felwood,51.30,82.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰希尔·月弓|r
.turnin 5203 >>交任务: |cRXP_FRIENDLY_逃出加德纳尔|r
.accept 5204 >>接任务: |cRXP_LOOT_光明的惩戒|r
.target Jessir Moonbow
.isQuestComplete 5203
.group
step
.goto Felwood,51.30,82.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰希尔·月弓|r
.accept 5204 >>接任务: |cRXP_LOOT_光明的惩戒|r
.target Jessir Moonbow
.isQuestTurnedIn 5203
.group
step
#hardcoreserver
#label SilverHeartP
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 3942 >>交任务: |cRXP_FRIENDLY_林克的记忆|r 
.accept 4084 >>接任务: |cRXP_WARN_银爪铁心|r 
.target Eridan Bluewind
.isQuestTurnedIn 3912
step
#hardcoreserver
#completewith next
>>杀死|cRXP_ENEMY_Felpaw狼队|r和|cRXD_ENEMY_Angercaw熊队|r。掠夺它们的|cRXP_Loot_Claws |r
.complete 4084,1 
.mob Irontree Stomper
.mob Irontree Wanderer
.mob Angerclaw Mauler
.mob Angerclaw Grizzly
.mob Angerclaw Bear
.mob Felpaw Wolf
.mob Felpaw Scavenger
.mob Felpaw Ravager
.isQuestTurnedIn 3912
.group 0
step
#completewith ShadowLordFelidan
.goto Felwood,35.367,58.376
.subzone 1770 >>前往Jaedenar内的Shadow Hold
.group
step
.goto Felwood,35.39,58.74,30,0
.goto Felwood,38.30,50.50
>>深入阴影持有，然后杀死|cRXP_ENEMY_Rakaiah|r
.complete 5204,1 
.unitscan Rakaiah
.group 2
step
.goto Felwood,38.50,50.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特雷·莱弗治的残骸|r
>>|cRXP_WARN_遗迹周围的暴徒可以通过让你保持战斗状态来窃听，尽管他们不会攻击你|r
.turnin 5204 >>交任务: |cRXP_FRIENDLY_光明的惩戒|r
.accept 5385 >>接任务: |cRXP_LOOT_特雷·莱弗治的残骸|r
.target Remains of Trey Lightforge
.isQuestTurnedIn 5203
.group
step
#label ShadowLordFelidan
.goto Felwood,38.90,46.80
>>杀死|cRXP_ENEMY_Shadow Lord Fel'dan|r、|cRXD_ENEMY_Moora|r和|cRXP_ENEMY_Salia|r。掠夺|cRXX_ENEMY_影子Lord Fel'dan|r以换取他的|cRXP_OOT_Head|r
>>|cRXP_WARN_躲在房间外面，利用视线避开费尔丹的阴影。当他开始选角时，躲在视线之外。一旦他的施法结束/失败，就进入视线，这样他就可以重新开始施法/不会离LOS点太近|r
.complete 5242,1 
.complete 5242,2 
.complete 5242,3 
.mob Moora
.mob Salia
.unitscan Shadow Lord Felidan
.group 2
step
#completewith next
.goto Felwood,38.72,46.77
.goto Felwood,49.57,30.76,30 >>执行注销跳跃以传送出阴影保持
.link https://youtu.be/SWBtPqm5M0Q?t=128 >>|cRXP_WARN_单击此处查看示例|r
.group
step
#hardcoreserver
.loop 25,Felwood,49.6,30.0,46.4,24.6,49.2,19.8,53.0,20.4,52.0,24.8,49.6,30.0
>>杀死|cRXP_ENEMY_Ironstree树|r。掠夺它们以获得|cRXD_Loot_Ionstree心|r
.complete 4084,2 
.mob Irontree Stomper
.mob Irontree Wanderer
.isQuestTurnedIn 3912
step
.goto Felwood,50.87,23.72,50,0
.goto Felwood,49.44,23.39,50,0
.goto Felwood,48.86,24.80,50,0
.goto Felwood,49.76,27.29,50,0
.goto Felwood,50.87,23.72,50,0
.goto Felwood,49.44,23.39
>>杀死|cRXP_ENEMY_Toxic Horrors|r。掠夺它们的|cRXP_Loot_Droplets|r
.complete 5086,1 
.mob Toxic Horror
step
#hardcoreserver
.goto Felwood,53.75,28.06,90,0
.goto Felwood,58.03,17.83,90,0
.goto Felwood,63.27,19.15
>>杀死|cRXP_ENEMY_Felpaw狼队|r和|cRXD_ENEMY_Angercaw熊队|r。掠夺它们的|cRXP_Loot_Claws |r
.complete 4084,1 
.mob Angerclaw Mauler
.mob Angerclaw Grizzly
.mob Angerclaw Bear
.mob Felpaw Wolf
.mob Felpaw Scavenger
.mob Felpaw Ravager
.isQuestTurnedIn 3912
step
#label LeaveFelwood
#completewith next
.goto Felwood,65.16,7.88,40,0
.goto Felwood,64.67,3.14,40,0
.goto Felwood,66.40,2.95,40,0
.goto Felwood,68.24,5.60,40,0
.goto Felwood,68.73,6.38
.zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 4842 >>交任务: |cRXP_FRIENDLY_奇怪的源头|r
.turnin 5086 >>交任务: |cRXP_FRIENDLY_剧毒之水|r
.accept 5087 >>接任务: |cRXP_LOOT_冬泉信使|r
.target Donova Snowden
step
.goto Winterspring,67.96,37.54,40,0
.goto Winterspring,66.16,33.66,40,0
.goto Winterspring,64.37,32.06,40,0
.goto Winterspring,62.41,25.53,40,0
.goto Winterspring,61.97,23.00,40,0
.goto Winterspring,57.30,28.05,40,0
.goto Winterspring,54.07,30.98,40,0
.goto Winterspring,53.49,34.13,40,0
.goto Winterspring,47.81,39.23,40,0
.goto Winterspring,39.36,41.28,40,0
.goto Winterspring,30.12,42.57,40,0
.goto Winterspring,28.01,34.60
>>杀死|cRXP_ENEMY_Winterfall Runners |r
>>|cRXP_WARN_他们在Timbermaw Hold隧道和Everlook东北部临冬村之间的道路上巡逻。或者，穿过洞穴跑回费尔伍德，杀死费尔帕夫村大锅旁的奔跑者|r
.complete 5087,1 
.unitscan Winterfall Runner
.zoneskip Felwood
step
.goto Felwood,60.20,5.90
>>杀死|cRXP_ENEMY_Winterfall Runners |r
>>|cRXP_WARN_The Runner位于Felpaw村西北部的大锅旁|r
.complete 5087,1 
.unitscan Winterfall Runner
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5087 >>交任务: |cRXP_FRIENDLY_冬泉信使|r
.target Donova Snowden
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.accept 5121 >>接任务: |cRXP_LOOT_冬泉酋长|r
.target Donova Snowden
.group
step << !Mage
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Felwood>>Fly to Felwood
.target Yugrek
.zoneskip Felwood
step << Mage
#completewith next
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Splintertree Post >>飞到Splinterree Post
.target Doras
.zoneskip Ashenvale
step
#completewith next
.subzone 2479 >>前往翡翠保护区
step
#hardcoreserver
.goto Felwood,51.35,81.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4084 >>交任务: |cRXP_FRIENDLY_银爪铁心|r 
.target Eridan Bluewind
.isQuestTurnedIn 3912
step
.goto Felwood,51.23,82.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5242 >>交任务: |cRXP_FRIENDLY_最终一击|r
.target Greta Mosshoof
.isQuestComplete 5242
.group
step
.goto Felwood,51.35,82.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰希尔·月弓|r
.turnin 5385 >>交任务: |cRXP_FRIENDLY_特雷·莱弗治的残骸|r
.target Jessir Moonbow
.isQuestTurnedIn 5204
.group
step << !Mage
#completewith next
.subzone 431 >>前往Splintertree Post
step << !Mage
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Orgrimmar>>飞往奥格瑞玛
.target Vhulgra
.zoneskip Orgrimmar
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
.isQuestComplete 4300
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10157 >>训练你的职业技能
.target Pephredo
.xp <56,1
.xp >58,1
.isQuestComplete 4300
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10054 >>训练你的职业技能
.target Pephredo
.xp <58,1
.isQuestComplete 4300
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10929 >>训练你的职业技能
.target Ur'kyo
.xp <56,1
.xp >58,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10947 >>训练你的职业技能
.target Ur'kyo
.xp <58,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10432 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <56,1
.xp >58,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10473 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <58,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20662 >>训练你的职业技能
.target Grezz Ragefist
.xp <56,1
.xp >58,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11597 >>训练你的职业技能
.target Grezz Ragefist
.xp <58,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11689 >>训练你的职业技能
.target Mirket
.xp <56,1
.xp >58,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11713 >>训练你的职业技能
.target Mirket
.xp <58,1
step << Warlock
.goto Orgrimmar,47.55,46.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>升级宠物的能力
.target Kurgul
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11300 >>训练你的职业技能
.target Ormok
.xp <56,1
.xp >58,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11305 >>训练你的职业技能
.target Ormok
.xp <58,1
step << Rogue
.goto Orgrimmar,42.09,49.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷库尔|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14305 >>训练你的职业技能
.target Ormak Grimshot
.xp <56,1
.xp >58,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14322 >>训练你的职业技能
.target Ormak Grimshot
.xp <58,1
step
.goto Orgrimmar,55.60,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰斯雷蒙|r
.turnin 4300 >>交任务: |cRXP_FRIENDLY_骨刃武器|r
.target Jes'rimon
.isQuestComplete 4300
step << Mage
#completewith next
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜·阿克雷|r
.vendor >>|cRXP_BUY_至少买两个|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Hannah Akeley
step << !Mage
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step << Shaman
#completewith next
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Michael Garrett
.zoneskip Hillsbrad Foothills
.isQuestComplete 8413
.dungeon ST
step << Shaman
.goto Alterac Mountains,80.50,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 8413 >>交任务: |cRXP_FRIENDLY_巫毒羽毛|r
.target Bath'rah the Windwatcher
.isQuestComplete 8413
.dungeon ST
step << Shaman
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly Undercity >>飞到地下城
.target Zarise
.zoneskip Undercity
.zoneskip Tirisfal Glades
.dungeon ST
step
#optional
.abandon 3447 >>放弃圈子的秘密
.isOnQuest 3447
.dungeon ST
step
#optional
.abandon 3528 >>Abandon The God Hakkar
.isOnQuest 3528
.dungeon ST
step
#optional
.abandon 4146 >>Abandon Zapper Fuel
.isOnQuest 4146
.dungeon ST
step
#optional
.abandon 1445 >>放弃阿塔尔哈卡尔神庙
.isOnQuest 1445
.dungeon ST
step
#optional
.abandon 5165 >>放弃保护的火焰
.isOnQuest 5165
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 57-59西部PL/东部PL
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 50-60
#next 59-59冬泉/Silithus I
step
#completewith next
.subzone 152 >>前往Bulwark
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往布尔瓦克，然后与|cRXP_FRIENDLY_Derrington|r通话
.turnin 5095 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
.accept 5096 >>接任务: |cRXP_LOOT_误导血色十字军|r
.target High Executor Derrington
step
.goto Western Plaguelands,26.55,56.18
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击火旁的|cRXP_PICK_燃烧盒|r
.collect 12814,1 
step
.goto Tirisfal Glades,83.19,68.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_银色黎明军官加鲁什|r
.turnin 6029 >>交任务: |cRXP_FRIENDLY_永望镇报告|r
.turnin 5405 >>交任务: |cRXP_FRIENDLY_银色黎明委任徽章|r
.target Argent Officer Garush
step
.goto Tirisfal Glades,83.30,72.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克·莱文|r
.accept 5901 >>接任务: |cRXP_LOOT_瘟疫与你|r
.target Mickey Levine
step 
.goto Western Plaguelands,40.5,51.8
.use 12807 >>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Command帐篷|r，然后使用|T132484:0|t[Scourge Banner]
>>|cRXP_WARN_这些暴徒相对来说比较难，可以互相链式拉动，所以要小心|r
.complete 5096,1 
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
.turnin 5096 >>交任务: |cRXP_FRIENDLY_误导血色十字军|r
.accept 5098 >>接任务: |cRXP_LOOT_标记哨塔|r
.accept 5228 >>接任务: |cRXP_LOOT_瘟疫之锅|r
.target High Executor Derrington
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5228 >>交任务: |cRXP_FRIENDLY_瘟疫之锅|r
.accept 5229 >>接任务: |cRXP_LOOT_目标：费尔斯通农场|r
.target Shadow Priestess Vandis
step
.goto Western Plaguelands,37.12,57.18
>>杀死|cRXP_ENEMY_大锅领主比勒马|r。抢走他的|cRXX_Loot_大锅钥匙|r
.complete 5229,1 
.unitscan Cauldron Lord Bilemaw
step
.goto Western Plaguelands,37.2,56.8
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击在讲台上滚动的|cRXP_PICK_Scourge Cauldron|r
.turnin 5229 >>交任务: |cRXP_FRIENDLY_目标：费尔斯通农场|r
.accept 5230 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the second floor of the house
.accept 5021 >>接任务: |cRXP_LOOT_迟到总比不到好|r
.target Janice Felstone
step
.goto Western Plaguelands,38.8,55.3
>>|TInterface/GossipFrame/HealerGossipIcon:0|t在谷仓中单击|cRXP_PICK_Janice的包裹|r
>>|cRXP_WARN_如果你想跳过里面的暴徒，你可以在走廊墙上点击它|r
.turnin 5021 >>交任务: |cRXP_FRIENDLY_迟到总比不到好|r
.accept 5023 >>接任务: |cRXP_LOOT_迟到总比不到好|r
step
#completewith next
.subzone 152 >>Return to The Bulwark
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5230 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.accept 5231 >>接任务: |cRXP_LOOT_目标：达尔松之泪|r
.target Shadow Priestess Vandis
step
.goto Western Plaguelands,46.04,52.33
>>杀死|cRXP_ENEMY_釜主Malvinous |r。抢走他的|cRXX_Loot_釜钥匙|r
.complete 5231,1 
.unitscan Cauldron Lord Malvinious
step
.goto Western Plaguelands,46.2,52.0
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击在讲台上滚动的|cRXP_PICK_Scourge Cauldron|r
.turnin 5231 >>交任务: |cRXP_FRIENDLY_目标：达尔松之泪|r
.accept 5232 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
.goto Western Plaguelands,47.8,50.6
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Dalson夫人日记|r
.turnin 5058 >>交任务: |cRXP_FRIENDLY_达尔松夫人的日记|r
step
.goto Western Plaguelands,47.49,51.00
>>杀死|cRXP_ENEMY_Wandering Skeleton |r。掠夺它的|cRXD_Loot_Outhouse密钥|r
>>|cRXP_WARN_如果骨骼未繁殖，则升级骨骼碎片|r
.collect 12738,1 
.unitscan Wandering Skeleton
step
#completewith next
.goto Western Plaguelands,48.2,49.7
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Outhouse|r
.turnin 5059 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
.goto Western Plaguelands,48.2,49.7
>>杀死|cRXP_ENEMY_Farmer Dalson|r。抢走他的|cRXX_Loot_橱柜钥匙|r
>>|cRXP_WARN_这个暴民有色雷斯和愤怒。要非常小心|r
.collect 12739,1,5060 
.unitscan Farmer Dalson
step
.goto Western Plaguelands,47.4,49.7
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击房屋顶层的|cRXP_PICK_Locked Cabinet|r
.turnin 5060 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.accept 4971 >>接任务: |cRXP_LOOT_时间问题|r
.target Chromie
step
.goto Western Plaguelands,40.15,71.50
.use 12815 >>在塔楼门口的外角使用您的|T135432:0|t[灯塔火炬]
>>|cRXP_WARN_不要让精英参与其中|r
.complete 5098,1 
step
.goto Western Plaguelands,42.28,66.05
.use 12815 >>在塔楼门口的外角使用您的|T135432:0|t[灯塔火炬]
>>|cRXP_WARN_不要让精英参与其中|r
.complete 5098,2 
step
.goto Western Plaguelands,44.24,63.06
.use 12815 >>在塔楼门口的外角使用您的|T135432:0|t[灯塔火炬]
>>|cRXP_WARN_不要让精英参与其中|r
.complete 5098,3 
step
.goto Western Plaguelands,45.8,63.3
.use 12627 >>在发光发射井附近使用|T134229:0|t[Temporal Displacer]产生|cRXP_ENEMY_Temporal Parasites|r
>>|cRXP_WARN_时间寄生虫垃圾邮件速度慢，死亡后可以产生更多寄生虫。如果它们开始压倒你，准备好跑到水里去；他们不会游泳|r
.complete 4971,1 
.mob Temporal Parasite
step
#completewith next
.goto Western Plaguelands,65.23,86.30,0
.goto Western Plaguelands,65.23,86.30,40,0
.goto The Hinterlands,22.32,27.19,30,0
.goto The Hinterlands,24.37,31.09,30,0
.goto The Hinterlands,23.91,33.27,30,0
.goto The Hinterlands,24.44,36.69,30,0
.goto The Hinterlands,23.87,38.59,30,0
.goto The Hinterlands,24.70,44.70,60 >>沿着一条小路向东南行驶，进入腹地。按照航路点指示
.dungeon ST
step
.goto The Hinterlands,33.751,75.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1446 >>交任务: |cRXP_FRIENDLY_预言者迦玛兰|r
.target Atal'ai Exile
.isQuestComplete 1446
.dungeon ST
step
#completewith next
.goto The Hinterlands,24.70,44.70,0
.goto The Hinterlands,24.70,44.70,60,0
.goto The Hinterlands,23.87,38.59,30,0
.goto The Hinterlands,24.44,36.69,30,0
.goto The Hinterlands,23.91,33.27,30,0
.goto The Hinterlands,24.37,31.09,30,0
.goto The Hinterlands,22.32,27.19,30,0
.goto Western Plaguelands,65.23,86.30,40 >>重返西方瘟疫之地
.zoneskip Western Plaguelands
.isQuestTurnedIn 1446
.dungeon ST
step
.goto Western Plaguelands,46.73,71.14
.use 12815 >>在塔楼门口的外角使用您的|T135432:0|t[灯塔火炬]
>>|cRXP_WARN_不要让精英参与其中|r
.complete 5098,4 
step
#completewith next
.subzone 152 >>Return to The Bulwark
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5232 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.accept 5233 >>接任务: |cRXP_LOOT_目标：嚎哭鬼屋|r
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
.turnin 5098 >>交任务: |cRXP_FRIENDLY_标记哨塔|r
.accept 838 >>接任务: |cRXP_LOOT_通灵学院|r
.target High Executor Derrington
step
.goto Tirisfal Glades,83.28,69.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
.turnin 838 >>交任务: |cRXP_FRIENDLY_通灵学院|r
.accept 964 >>接任务: |cRXP_LOOT_骸骨碎片|r
.target Apothecary Dithers
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.turnin 4971 >>交任务: |cRXP_FRIENDLY_时间问题|r
.accept 4972 >>接任务: |cRXP_LOOT_找回时间|r
.target Chromie
.isQuestComplete 4971
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.accept 4972 >>接任务: |cRXP_LOOT_找回时间|r
.target Chromie
.isQuestTurnedIn 4971
step
#completewith next
>>在被毁的建筑物中偷走|cRXP_PICK_Small Lockboxes|r，用于|cRXP_OOT_Andorhal手表|r
.complete 4972,1 
.isOnQuest 4972
step
.goto Western Plaguelands,45.8,65.8,40,0
.loop 25,Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
>>杀死安多哈尔的所有|cRXP_ENEMY_Skeletons|r。掠夺它们的|cRXP_Loot_Fragments|r
>>|cRXP_ENEMY_骨骼执行器|r|cRXP_WARN_can execute|r
.complete 964,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
.mob Skeletal Warlord
.mob Skeletal Sorcerer
.mob Skeletal Flayer
.mob Skeletal Terror
step
.loop 25,Western Plaguelands,40.4,66.5,38.9,68.1,41.3,69.8,42.8,73.9,43.6,73.4,45.1,73.7,46.5,73.0,44.8,70.5,42.9,68.5,40.9,67.2,40.4,66.5
>>在被毁的建筑物中偷走|cRXP_PICK_Small Lockboxes|r，用于|cRXP_OOT_Andorhal手表|r
.complete 4972,1 
.isOnQuest 4972
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.turnin 4972 >>交任务: |cRXP_FRIENDLY_找回时间|r
.target Chromie
.isQuestComplete 4972
step
.goto Western Plaguelands,53.07,65.97
>>杀死|cRXP_ENEMY_大锅领主剃刀|r。抢走他的|cRXX_Loot_大锅钥匙|r
>>|cRXP_ENEMY_冰冻食尸鬼|r|cRXP_WARN_拥有5秒长的瞬发AoE眩晕|r
.complete 5233,1 
.unitscan Cauldron Lord Razarch
step
.goto Western Plaguelands,53.0,65.7
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击在讲台上滚动的|cRXP_PICK_Scourge Cauldron|r
>>|cRXP_ENEMY_冰冻食尸鬼|r|cRXP_WARN_拥有5秒长的瞬发AoE眩晕|r
.turnin 5233 >>交任务: |cRXP_FRIENDLY_目标：嚎哭鬼屋|r
.accept 5234 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
>>|cRXP_ENEMY_冰冻食尸鬼|r|cRXP_WARN_拥有5秒长的瞬发AoE眩晕|r
.accept 4984 >>接任务: |cRXP_LOOT_大自然的苦楚|r
.target Mulgris Deepriver
step
#completewith Businessman
>>杀死|cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves |r|cRXP_WARN_share与|r|cRXP_ENEMY_Carrion Lurkers|r| cRXP_WRN_一起产卵。如有必要，杀死它们以重置区域|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,51.92,28.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.accept 6004 >>接任务: |cRXP_LOOT_未竟的事业|r
.target Kirsta Deepshadow
step
#completewith next
>>杀死|cRXP_ENEMY_Scarlet法师|r和|cRXD_ENEMY_ Scarlet骑士|r
>>|cRXP_WARN_|r|cRXP_ENEMY_Mages|r|cRXP_WARN_and|r|C RXP_ENEMY_Knights|r|cRXP_WARN_share重生。如有必要，杀死额外的暴徒以重置该区域|r
.goto Western Plaguelands,50.43,41.12,70,0
.goto Western Plaguelands,53.50,36.85,70,0
.goto Western Plaguelands,50.43,41.12,70,0
.complete 6004,3 
.complete 6004,4 
.mob Scarlet Mage
.mob Scarlet Knight
step
>>杀死|cRXP_ENEMY_Scarlet Medics|r和|cRXX_ENEMY_Scarlet Hunters|r
>>|cRXP_ENEMY_在营地中可以找到医生|r|cRXP_WARN_an和|r|cRXP_ENEMY_Hunters |r|C RXP_WARN_c。如有必要，杀死额外的暴徒以重置该区域|r
.goto Western Plaguelands,51.77,44.13,70,0
.goto Western Plaguelands,40.83,52.30,70,0
.goto Western Plaguelands,47.35,51.54,0
.goto Western Plaguelands,51.77,44.13
.complete 6004,1 
.complete 6004,2 
.mob Scarlet Medic
.mob Scarlet Hunter
step
.goto Western Plaguelands,50.43,41.12,70,0
.goto Western Plaguelands,53.50,36.85,70,0
.goto Western Plaguelands,50.43,41.12
>>完成击杀|cRXP_ENEMY_Scarlet法师|r和|cRXX_ENEMY_ Scarlet骑士|r
>>|cRXP_WARN_|r|cRXP_ENEMY_Mages|r|cRXP_WARN_and|r|C RXP_ENEMY_Knights|r|cRXP_WARN_share重生。如有必要，杀死额外的暴徒以重置该区域|r
.complete 6004,3 
.complete 6004,4 
.mob Scarlet Mage
.mob Scarlet Knight
step
.goto Western Plaguelands,51.92,28.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6004 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.accept 6023 >>接任务: |cRXP_LOOT_未竟的事业|r
.target Kirsta Deepshadow
step
.goto Western Plaguelands,57.83,36.10
>>杀死|cRXP_ENEMY_Huntsman Radley|r
>>|cRXP_WARN_她周围的暴徒可以轻而易举地用链条拉动。施法者铸造霜新星|r
.complete 6023,1 
.unitscan Huntsman Radley
step
.goto Western Plaguelands,54.64,23.71
>>杀死|cRXP_ENEMY_Cavalier Durgen|r
>>|cRXP_WARN_如果你等他巡逻出塔后再拉，这次遭遇会安全得多。他有5秒的瞬间施法眩晕|r
.complete 6023,2 
.unitscan Cavalier Durgen
step
#label Businessman
.goto Western Plaguelands,51.92,28.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6023 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
step
.goto Western Plaguelands,50.0,36.8,40,0
.loop 25,Western Plaguelands,46.8,39.6,45.8,46.4,43.4,54.8,46.0,59.2,51.6,61.6,51.0,53.2,50.0,46.6,47.8,43.4,46.8,39.6
>>杀死|cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves |r|cRXP_WARN_share与|r|cRXP_ENEMY_Carrion Lurkers|r| cRXP_WRN_一起产卵。如有必要，杀死它们以重置区域|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
.turnin 4984 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.accept 4985 >>接任务: |cRXP_LOOT_大自然的苦楚|r
.target Mulgris Deepriver
step
.loop 25,Western Plaguelands,57.0,60.8,58.6,53.8,55.2,50.4,58.6,53.8,66.2,47.4,66.0,55.6,66.2,47.4,58.6,53.8,55.2,50.4,58.6,53.8,57.0,60.8
>>杀死|cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_ENEMY_Diseased Grizzles |r|cRXP_WARN_share与|r|cRXP_ENEMY_Plague Lurkers |r| cRXP_WRN_一起产卵。如有必要，杀死它们以重置区域|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
.turnin 4985 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.target Mulgris Deepriver
step
#completewith next
.goto Eastern Plaguelands,7.59,43.57,50 >>前往东部瘟疫地区的|cRXP_FRIENDLY_Tirion|r
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 5542 >>接任务: |cRXP_LOOT_恶魔之犬|r
.accept 5543 >>接任务: |cRXP_LOOT_血染的天空|r
.accept 5544 >>接任务: |cRXP_LOOT_腐肉虫|r
.target Tirion Fordring
step
#completewith WormMeat
>>杀死|cRXP_ENEMY_Carrion蠕虫|r。掠夺它们的|cRXX_Loot_Meat|r
.complete 5544,1 
.mob Carrion Worm
.mob Carrion Devourer
step
#completewith Pamela
>>杀死|cRXP_ENEMY_Plaguebats|r和|cRXP_ENEMY_Plasguehound符文|r
.complete 5543,1 
.complete 5542,1 
.mob Plaguebat
.mob Plaguehound Runt
step
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.accept 6042 >>接任务: |cRXP_WARN_讨厌的蝙蝠|r
.target Nathanos Blightcaller
step
.goto Eastern Plaguelands,36.47,90.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
.turnin 5601 >>交任务: |cRXP_FRIENDLY_小妹妹帕米拉|r
.accept 5149 >>接任务: |cRXP_LOOT_帕米拉的洋娃娃|r
.target Pamela Redpath
step
.goto Eastern Plaguelands,38.10,92.24
>>在毁坏的建筑物中抢劫地板上的3|cRXP_PICK_Doll Parts|r
>>|cRXP_WARN_点击玩偶碎片可以产生一些|r|cRXP_ENEMY_过去的幽灵|r|cRXP_WARN_它们有冰甲和霜震|r
.collect 12886,1,5149,1 
.unitscan Ghost of the Past
step
.goto Eastern Plaguelands,39.64,92.51
>>在毁坏的建筑物中抢劫地板上的3|cRXP_PICK_Doll Parts|r
>>|cRXP_WARN_点击玩偶碎片可以产生一些|r|cRXP_ENEMY_过去的幽灵|r|cRXP_WARN_它们有冰甲和霜震|r
.collect 12887,1,5149,1 
.unitscan Ghost of the Past
step
.goto Eastern Plaguelands,39.67,90.24
>>在毁坏的建筑物中抢劫地板上的3|cRXP_PICK_Doll Parts|r
>>|cRXP_WARN_点击玩偶碎片可以产生一些|r|cRXP_ENEMY_过去的幽灵|r|cRXP_WARN_它们有冰甲和霜震|r
.collect 12888,1,5149,1 
.unitscan Ghost of the Past
step
.goto Eastern Plaguelands,36.47,90.80
.use 12886 >>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|T134164:0|t[帕梅拉娃娃头]组合三件
.complete 5149,1 
step
#label Pamela
.goto Eastern Plaguelands,36.47,90.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
.turnin 5149 >>交任务: |cRXP_FRIENDLY_帕米拉的洋娃娃|r
.accept 5152 >>接任务: |cRXP_LOOT_玛莱恩姑妈|r
.accept 5241 >>接任务: |cRXP_LOOT_卡林叔叔|r
.target Pamela Redpath
step
#loop
.goto Eastern Plaguelands,40.09,82.83,70,0
.goto Eastern Plaguelands,43.06,82.47,70,0
.goto Eastern Plaguelands,43.97,74.96,70,0
.goto Eastern Plaguelands,36.35,69.28,70,0
.goto Eastern Plaguelands,30.46,70.17,70,0
.goto Eastern Plaguelands,19.69,68.12,70,0
.goto Eastern Plaguelands,18.24,77.03,70,0
.goto Eastern Plaguelands,24.94,70.55,70,0
.goto Eastern Plaguelands,31.20,72.10,70,0
.goto Eastern Plaguelands,34.16,82.21,70,0
>>杀死|cRXP_ENEMY_Plaguebats|r和|cRXP_ENEMY_Plasguehound符文|r
.complete 5543,1 
.complete 5542,1 
.mob Plaguebat
.mob Plaguehound Runt
step
.goto Eastern Plaguelands,46.14,65.32,70,0
.goto Eastern Plaguelands,49.24,61.48,70,0
.goto Eastern Plaguelands,50.26,54.66,70,0
.goto Eastern Plaguelands,55.24,54.72,70,0
.goto Eastern Plaguelands,61.47,61.92,70,0
.goto Eastern Plaguelands,65.18,70.17,70,0
.goto Eastern Plaguelands,69.94,72.99,70,0
.goto Eastern Plaguelands,72.99,75.98,70,0
.goto Eastern Plaguelands,77.94,69.64
>>杀死|cRXP_ENEMY_Plaguehound|r和|cRXD_ENEMY_Noxious Plaguebats|r
.complete 5542,2 
.complete 6042,1 
.mob Plaguehound
.mob Noxious Plaguebat
step
#completewith next
.subzone 2268 >>前往光明的希望教堂
step
.goto Eastern Plaguelands,80.22,57.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔吉亚|r
.fp Light's Hope Chapel	>>获得光明希望教堂的飞行路线
.target Georgia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Nicholas, |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 6030 >>交任务: |cRXP_FRIENDLY_尼古拉斯·瑟伦霍夫公爵|r
.goto Eastern Plaguelands,81.44,59.81
.turnin 5241 >>交任务: |cRXP_FRIENDLY_卡林叔叔|r
.accept 5211 >>接任务: |cRXP_LOOT_达隆郡的保卫者|r
.goto Eastern Plaguelands,81.51,59.77
.target Duke Nicholas Zverenhoff
.target Carlin Redpath
step
.goto Eastern Plaguelands,79.60,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alen|r
.accept 6021 >>接任务: |cRXP_LOOT_流亡者塞达尔|r
.accept 5281 >>接任务: |cRXP_LOOT_永不安息的灵魂|r
.target Caretaker Alen
step
#sticky
#completewith LostSymbol
.goto Eastern Plaguelands,77.11,48.00,0
.goto Eastern Plaguelands,67.30,40.67,0
.goto Eastern Plaguelands,26.48,37.58,0
>>杀死|cRXP_ENEMY_Diseased Flayers|r和|cRXP_ENEMY_Gibbering食尸鬼|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that appear over their corpses
>>|cRXP_WARN_这些暴徒与少数暴徒共享产卵点，所以在所有食尸鬼死亡后杀死所有人|r
.complete 5211,1 
.unitscan Diseased Flayer;Gibbering Ghoul
.skipgossip
step
#label WormMeat
#loop
.goto Eastern Plaguelands,69.73,50.55,70,0
.goto Eastern Plaguelands,70.42,43.50,70,0
.goto Eastern Plaguelands,70.34,38.47,70,0
.goto Eastern Plaguelands,67.02,34.41,70,0
.goto Eastern Plaguelands,62.69,34.72,70,0
.goto Eastern Plaguelands,50.36,28.49,70,0
.goto Eastern Plaguelands,51.18,39.91,70,0
>>杀死|cRXP_ENEMY_Monstrous瘟疫蝙蝠|r和|cRXD_ENEMY_Frenzied瘟疫猎犬|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Monstrous瘟疫蝙蝠|r|cRXP_WARN_在近战范围内保持沉默10秒|r << !Rogue !Warrior
.complete 6042,2 
.complete 5542,3 
.mob Monstrous Plaguebat
.mob Frenzied Plaguehound
step
#loop
.goto Eastern Plaguelands,69.73,50.55,70,0
.goto Eastern Plaguelands,70.42,43.50,70,0
.goto Eastern Plaguelands,70.34,38.47,70,0
.goto Eastern Plaguelands,67.02,34.41,70,0
.goto Eastern Plaguelands,62.69,34.72,70,0
.goto Eastern Plaguelands,50.36,28.49,70,0
.goto Eastern Plaguelands,51.18,39.91,70,0
>>杀死|cRXP_ENEMY_Carrion蠕虫|r。掠夺它们的|cRXX_Loot_Meat|r
.complete 5544,1 
.mob Carrion Worm
.mob Carrion Devourer
step
#completewith next
.subzone 2277 >>Travel to Plaguewood
step
#loop
.goto Eastern Plaguelands,39.97,21.11,50,0
.goto Eastern Plaguelands,34.90,24.67,50,0
.goto Eastern Plaguelands,30.69,24.99,50,0
.goto Eastern Plaguelands,26.59,23.84,50,0
.goto Eastern Plaguelands,24.19,23.62,50,0
.goto Eastern Plaguelands,21.15,24.05,50,0
.goto Eastern Plaguelands,20.90,29.89,50,0
.goto Eastern Plaguelands,23.75,32.44,50,0
.goto Eastern Plaguelands,26.48,37.58,50,0
.goto Eastern Plaguelands,29.55,34.13,50,0
.goto Eastern Plaguelands,34.89,35.29,50,0
.goto Eastern Plaguelands,42.80,34.24,50,0
>>为其|cRXP_Loot_Termites|r掠夺tan |cRX_PICK_Termite丘|r
.complete 5901,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入房子，然后与|cRXP_FRIENDLY_Egan |r和|cRXP-FRIENDLY_Augustus|r交谈
.turnin 5281 >>交任务: |cRXP_FRIENDLY_永不安息的灵魂|r
.goto Eastern Plaguelands,14.45,33.74
.accept 6164 >>接任务: |cRXP_LOOT_奥古斯图斯的收据册|r
.goto Eastern Plaguelands,14.44,33.51
.target Egan
.target Augustus the Touched
step
.goto Eastern Plaguelands,17.42,31.10
>>行窃|cRXP_PICK_Augustus收据簿|r在客栈二楼
.complete 6164,1 
step
.goto Eastern Plaguelands,14.44,33.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被感动的奥古斯图斯|r
.turnin 6164 >>交任务: |cRXP_FRIENDLY_奥古斯图斯的收据册|r
.target Augustus the Touched
step
.goto Eastern Plaguelands,14.44,33.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被感动的奥古斯图斯|r
>>|cRXP_WARN_在包里留出足够的空间 
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
step
#completewith next
.goto Eastern Plaguelands,27.59,43.33,40,0
.goto Eastern Plaguelands,24.43,41.00,40,0
.goto Eastern Plaguelands,23.33,42.30,40,0
.goto Eastern Plaguelands,21.80,40.36,40,0
.goto Eastern Plaguelands,19.58,42.98,40,0
.goto Eastern Plaguelands,18.71,40.81,40,0
.goto Eastern Plaguelands,16.37,42.00,40,0
.goto Eastern Plaguelands,10.99,47.75,40,0
+表演东部瘟疫山脉跳跃以节省时间
>>|cRXP_WARN_你的包里必须有|r|T134863:0|t[Noggenfogger Elixirs]|cRXP_WARN_in|r
.link https://www.youtube.com/watch?v=6VIULBxMyfU >>点击此处参考
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 5542 >>交任务: |cRXP_FRIENDLY_恶魔之犬|r
.turnin 5543 >>交任务: |cRXP_FRIENDLY_血染的天空|r
.turnin 5544 >>交任务: |cRXP_FRIENDLY_腐肉虫|r
.accept 5742 >>接任务: |cRXP_LOOT_救赎|r
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
>>|cRXP_WARN_听提里奥的故事时打字/坐着。执行此操作时可以挂载|r
.complete 5742,1 
.turnin 5742 >>交任务: |cRXP_FRIENDLY_救赎|r
.target Tirion Fordring
.skipgossip
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 5781 >>接任务: |cRXP_LOOT_遗忘的记忆|r
.target Tirion Fordring
.group
step
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.accept 6133 >>接任务: |cRXP_WARN_游侠之王的命令|r
.accept 6022 >>接任务: |cRXP_WARN_杀戮的理由|r
.turnin 6042 >>交任务: |cRXP_FRIENDLY_讨厌的蝙蝠|r
.target Nathanos Blightcaller
.group
step
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.accept 6022 >>接任务: |cRXP_WARN_杀戮的理由|r
.turnin 6042 >>交任务: |cRXP_FRIENDLY_讨厌的蝙蝠|r
.target Nathanos Blightcaller
step
.goto Eastern Plaguelands,28.34,86.79
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_Loose Dirt Mound|r，召唤|cRXD_ENEMY_Mercutio Filthgorger|r和3|cRXP_ENEMY_Crypt Robbers|r。杀死他，然后掠夺他的|cRXP_loot_Hammer |r
>>|cRXP_WARN_这个任务非常危险。|r|cRXP_ENEMY_Crypt Robbers|r|cRXP_WARN_不同寻常；它们需要很长时间才能重置，并且可以在分开拉动时重新拴上皮带|r
.complete 5781,1 
.mob Crypt Robber
.unitscan Mercutio Filthgorger
.group 2
step
.goto Eastern Plaguelands,27.41,84.92
>>杀死地下室中的|cRXP_ENEMY_Zaeldarr Outcast|r。抢劫他的|cRXP_Loot_Head|r
.complete 6021,1 
.unitscan Zaeldarr the Outcast
step
.goto Eastern Plaguelands,27.28,85.22
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击地下室地面上的大|cRXP_PICK_Torn Scroll|r
.accept 6024 >>接任务: |cRXP_LOOT_哈米亚的请求|r
.group
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 5781 >>交任务: |cRXP_FRIENDLY_遗忘的记忆|r
.accept 5845 >>接任务: |cRXP_LOOT_失落的荣耀|r
.target Tirion Fordring
.isQuestComplete 5781
.group
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 5845 >>接任务: |cRXP_LOOT_失落的荣耀|r
.target Tirion Fordring
.isQuestTurnedIn 5781
.group
step
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.accept 6022 >>接任务: |cRXP_LOOT_杀戮的理由|r
.target Nathanos Blightcaller
step
#completewith RottingUndead
.subzone 2264 >>前往科林十字路口
step
#completewith next
>>杀死|cRXP_ENEMY_Undad|r。掠夺他们的|cRXD_Loot_Live Rot|r。
>>|cRXP_WARN_一群群精英在北路和东路巡逻。隐形暴徒在科林十字路口内巡逻，所以试着把暴徒拉出来|r
.collect 15447,7 
.mob Hate Shrieker
.mob Scourge Warder
.mob Stitched Horror
.mob Gibbering Ghoul
.mob Unseen Servant
.mob Dark Caster
step
#label RottingUndead
.loop 25,Eastern Plaguelands,58.2,70.2,60.4,71.6,61.0,69.4,61.4,66.4,59.4,66.4,58.0,67.6,58.2,70.2
.use 15454 >>在活腐到期前使用|T133748:0|t[迫击炮和害虫]
.complete 6022,1 
step
.goto Eastern Plaguelands,64.25,22.09,50,0
.goto Eastern Plaguelands,68.57,20.95,50,0
.goto Eastern Plaguelands,69.23,18.48
>>杀死|cRXP_ENEMY_Infiltator Hameya|r。为她掠夺她|cRXX_Loot_Key|r
>>|cRXP_WARN_你应该能够避开上山途中的所有暴徒。跑过他们所有人，然后上山向东。不要靠近坟墓|r
.complete 6024,1 
.unitscan Infiltrator Hameya
.group 2
step
#completewith next
.goto Eastern Plaguelands,52.14,18.30,0
>>将|cRXP_Loot_Quel'Thalas注册表|r放在工作台上
.complete 6133,4 
.group 2
step
#loop
.goto Eastern Plaguelands,51.75,21.66,40,0
.goto Eastern Plaguelands,50.73,18.33,40,0
.goto Eastern Plaguelands,50.89,16.50,40,0
.goto Eastern Plaguelands,52.97,17.29,40,0
.goto Eastern Plaguelands,52.88,19.18,40,0
>>杀死|cRXP_ENEMY_Pathstriders|r、|cRXD_ENEMY_Rangers|r和|cRXP_ENEMY_Woodsman|r
>>|cRXP_WARN_这些暴徒对非精英阶层打击很大|r << !Rogue !Druid
>>|cRXP_WARN_这些暴徒对非精英阶层的打击很大；记住Pathstrider的精灵之火能力，以防你需要逃跑|r << Rogue/Druid
.complete 6133,1 
.complete 6133,2 
.complete 6133,3 
.mob Pathstrider
.mob Ranger
.mob Woodsman
.group 2
step
.goto Eastern Plaguelands,52.14,18.30
>>将|cRXP_Loot_Quel'Thalas注册表|r放在工作台上
.complete 6133,4 
.group 2
step
#label LostSymbol
.goto Eastern Plaguelands,71.30,33.97
>>在水下掠夺|cRXP_Loot_失去荣誉的符号|r
.complete 5845,1 
.isQuestTurnedIn 5781
.group 0
step
.goto Eastern Plaguelands,77.11,48.00,0
.goto Eastern Plaguelands,67.30,40.67,0
.goto Eastern Plaguelands,26.48,37.58,0
.loop 25,Eastern Plaguelands,68.2,40.8,68.6,38.6,66.0,36.0,64.6,38.0,65.4,41.2,66.6,38.6,68.2,40.8
>>杀死|cRXP_ENEMY_Diseased Flayers|r和|cRXP_ENEMY_Gibbering食尸鬼|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that appear over their corpses
>>|cRXP_WARN_这些暴徒与少数暴徒共享产卵点，所以在所有食尸鬼死亡后杀死所有人|r
.complete 5211,1 
.unitscan Diseased Flayer;Gibbering Ghoul
.skipgossip
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alen|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
>>|cRXP_WARN_再过几步，你就可以进入Undercity，然后上布料；你至少需要13个空位|r
.target Caretaker Alen
step
.goto Eastern Plaguelands,79.60,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alen|r
.turnin 6021 >>交任务: |cRXP_FRIENDLY_流亡者塞达尔|r
.target Caretaker Alen
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5211 >>交任务: |cRXP_FRIENDLY_达隆郡的保卫者|r
.target Carlin Redpath
step << !Mage
.goto Eastern Plaguelands,80.22,57.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔吉亚|r
.fly Undercity >>飞到地下城
.target Georgia
.zoneskip Undercity
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
step << Mage
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 10157 >>训练你的职业技能
.target Anastasia Hartwell
.xp <56,1
.xp >58,1
step << Mage
#optional
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 10054 >>训练你的职业技能
.target Anastasia Hartwell
.xp <58,1
step << Warlock
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 11689 >>训练你的职业技能
.target Richard Kerwin
.xp <56,1
.xp >58,1
step << Warlock
#optional
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 11713 >>训练你的职业技能
.target Richard Kerwin
.xp <58,1
step << Warlock
.goto Undercity,85.70,16.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martha|r
.trainer >>升级宠物的能力
.target Martha Strain
step << Priest
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
.train 10929 >>训练你的职业技能
.target Father Lazarus
.xp <56,1
.xp >58,1
step << Priest
#optional
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
.train 10947 >>训练你的职业技能
.target Father Lazarus
.xp <58,1
step << Warrior
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 20662 >>训练你的职业技能
.target Angela Curthas
.xp <56,1
.xp >58,1
step << Warrior
#optional
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 11597 >>训练你的职业技能
.target Angela Curthas
.xp <58,1
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 11300 >>训练你的职业技能
.target Carolyn Ward
.xp <56,1
.xp >58,1
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 11305 >>训练你的职业技能
.target Carolyn Ward
.xp <58,1
step
.goto Undercity,69.79,43.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皇家管理人巴哈乌斯|r
.turnin 5023 >>交任务: |cRXP_FRIENDLY_迟到总比不到好|r
.accept 5049 >>接任务: |cRXP_LOOT_杰雷米亚的忧伤|r
.target Royal Overseer Bauhaus
step
.goto Undercity,67.61,44.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeremiah|r
.turnin 5049 >>交任务: |cRXP_FRIENDLY_杰雷米亚的忧伤|r
.accept 5050 >>接任务: |cRXP_LOOT_好运护符|r
.target Jeremiah Payson
step
#ah
#completewith UCClothTurnins
.goto Undercity,67.66,35.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r
>>|cRXP_BUY_在拍卖行购买每种布料240块|r
.collect 2592,240 
.collect 4306,240 
.collect 4338,240 
.collect 14047,240 
.target Auctioneer Cain
step
#ah
#completewith next
.goto Undercity,68.15,38.26,0
+转到邮箱并检索以下内容：
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#ah
#label UCClothTurnins
.goto Undercity,71.66,29.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱斯顿·法斯雷|r
>>|cRXP_WARN_禁用任何其他自动提交信誉项目的插件，否则你稍后会被告知再次购买布料|r
.turnin 7813 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7814 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7817 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7818 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
.target Ralston Farnsley
step
.goto Undercity,48.50,71.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师科雷|r
.turnin 3568 >>交任务: |cRXP_FRIENDLY_堕落之水|r
.target Chemist Cuely
.isQuestComplete 3568
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师科雷|r, |cRXP_FRIENDLY_瑟尔萨·风歌|r
.accept 3569 >>接任务: |cRXP_WARN_堕落之水|r
.goto Undercity,48.71,71.40
.turnin 3569 >>交任务: |cRXP_FRIENDLY_堕落之水|r
.turnin 3570 >>交任务: |cRXP_FRIENDLY_堕落之水|r
.goto Undercity,49.03,70.81
.target Chemist Cuely
.target Thersa Windsong
.isQuestTurnedIn 3568
step
.goto Undercity,47.8,73.3
>>使用|cRXP_PICK_Testing Equipment|r测试所有样本
.use 15103 >>打开您的|T134437:0|t[损坏的测试样本]
.use 15102 >>打开您的|T134437:0|t[Un'Goro Tested Samples]
.complete 4293,1 
.complete 4294,1 
step
.goto Undercity,48.50,71.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师科雷|r
.turnin 4293 >>交任务: |cRXP_FRIENDLY_软泥怪的样本…|r
.turnin 4294 >>交任务: |cRXP_FRIENDLY_一大堆软泥怪|r
.accept 4642 >>接任务: |cRXP_WARN_融合软泥怪|r
.target Chemist Cuely
step
.goto Undercity,54.81,76.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德隆·甘特|r
.turnin 3542 >>交任务: |cRXP_FRIENDLY_安德隆·甘特的石版|r
.accept 3564 >>接任务: |cRXP_WARN_安德隆的报酬|r
.target Andron Gant
.isOnQuest 3542
step
.goto Undercity,54.81,76.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德隆·甘特|r
.accept 3564 >>接任务: |cRXP_WARN_安德隆的报酬|r
.target Andron Gant
.isOnQuest 3542
step
#phase 6
#ah
.goto Undercity,71.42,46.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯托克顿|r
>>|cRXP_BUY_从拍卖行购买以下物品。你稍后需要这些才能在EPL中进行多次免费任务登录|r
>>|cRXP_WARN_有5个不同的任务，每个任务需要30个。如果你不能得到一种类型的30个，那么跳过它|r
.collect 22529,30,9136,1 
.collect 22526,30,9126,1 
.collect 22525,30,9124,1 
.collect 22527,30,9128,1 
.collect 22528,30,9131,1 
.target Auctioneer Stockton
step
>>如果你早些时候在灼热峡谷完成了任务，那么从你的银行取出|T134430:0|t[黑蜻蜓熔岩]。你需要它
.collect 10575,1,4022,1 
.isQuestTurnedIn 3481
.dungeon BRD
step
.goto Undercity,51.88,64.49,30,0
.goto Undercity,58.07,91.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas|r
.accept 5961 >>接任务: |cRXP_LOOT_女妖之王的勇士|r
.target Lady Sylvanas Windrunner
step
.goto Undercity,55.22,90.88
.goto Undercity,67.90,15.28,30 >>|cRXP_WARN_执行注销跳过，将角色定位在最低楼梯的最高部分，直到看起来像是漂浮的，然后注销并返回|r
.link https://www.youtube.com/watch?v=jj85AXyF1XE >>|cRXP_WARN_单击此处查看示例|r
>>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
step
#completewith next
.goto Tirisfal Glades,61.85,66.59,60 >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step
.goto Tirisfal Glades,83.28,69.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
.turnin 964 >>交任务: |cRXP_FRIENDLY_骸骨碎片|r
.target Apothecary Dithers
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5234 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.accept 5235 >>接任务: |cRXP_LOOT_目标：盖罗恩农场|r
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.29,72.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克·莱文|r
.turnin 5901 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.accept 5902 >>接任务: |cRXP_LOOT_瘟疫与你|r
.target Mickey Levine
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t爬到大楼的顶层，然后与|cRXP_FRIENDLY_Janice|r交谈
.turnin 5050 >>交任务: |cRXP_FRIENDLY_好运护符|r
.accept 5051 >>接任务: |cRXP_LOOT_两半合一|r
.target Janice Felstone
step
.loop 25,Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
>>杀死|cRXP_ENEMY_Jabbering食尸鬼|r。掠夺它以获得|cRXX_Loot_好运另一半符|r
.use 12722 >>使用它创建|cRXP_LOOT_好运好运符|r
.complete 5051,1 
.unitscan Jabbering Ghoul
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the top floor of the building
.turnin 5051 >>交任务: |cRXP_FRIENDLY_两半合一|r
.target Janice Felstone
step
.goto Western Plaguelands,49.13,78.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛莱恩·雷德帕斯|r
.turnin 5152 >>交任务: |cRXP_FRIENDLY_玛莱恩姑妈|r
.accept 5153 >>接任务: |cRXP_LOOT_古怪的历史学家|r
.target Marlene Redpath
step
.goto Western Plaguelands,49.69,76.75
>>掠夺|cRXP_PICK_Joseph Redpath的纪念碑|r用于|cRXP_Loot_Joseph的结婚戒指|r
.complete 5153,1 
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.turnin 5153 >>交任务: |cRXP_FRIENDLY_古怪的历史学家|r
.accept 5154 >>接任务: |cRXP_LOOT_达隆郡的历史|r
.target Chromie
step
.goto Western Plaguelands,43.4,69.6
>>在市政厅内抢劫|cRXP_PICK_Musty Tomes|r，直到您抢劫|cRXP_Loot_Annals of Darrowshire|r
>>|cRXP_WARN_许多书都是假的，打开后会滋生暴徒。真正的书都是白色的，没有灰色/深色。你可能必须点击假书才能生成一本真书|r
.complete 5154,1 
.link https://i.imgur.com/B2HDb6K.png >>点击此处查看视觉示例
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.turnin 5154 >>交任务: |cRXP_FRIENDLY_达隆郡的历史|r
.accept 5210 >>接任务: |cRXP_LOOT_卡林·雷德帕斯|r
.target Chromie
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
.accept 4987 >>接任务: |cRXP_LOOT_雕文橡木枝|r
.target Mulgris Deepriver
step
.goto Western Plaguelands,62.80,58.76
>>杀死|cRXP_ENEMY_Cauldron Lord Soulwraith |r。抢走他的|cRXX_Loot_CauldronKey|r
>>|cRXP_WARN_这个暴徒有一种10秒的沉默疾病|r << !Priest
>>|cRXP_WARN_这群暴徒有一种10秒的沉默疾病；预制废除疾病并保持它|r << Priest
.complete 5235,1 
.unitscan Cauldron Lord Soulwraith
step
.goto Western Plaguelands,62.5,58.6
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击在讲台上滚动的|cRXP_PICK_Scourge Cauldron|r
.turnin 5235 >>交任务: |cRXP_FRIENDLY_目标：盖罗恩农场|r
.accept 5236 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
#completewith next
.goto Eastern Plaguelands,7.59,43.57,50 >>Travel back to Tirion
.group
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 5845 >>交任务: |cRXP_FRIENDLY_失落的荣耀|r
.accept 5846 >>接任务: |cRXP_LOOT_爱与家庭|r
.target Tirion Fordring
.isQuestTurnedIn 5781
.group
step
#completewith next
.subzone 2261 >>前往Undercroft
.group
step
.goto Eastern Plaguelands,28.03,86.16
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击地下室后面的|cRXP_PICK_土堆|r
.turnin 6024 >>交任务: |cRXP_FRIENDLY_哈米亚的请求|r
.isQuestComplete 6024
.group
step
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.turnin 5961 >>交任务: |cRXP_FRIENDLY_女妖之王的勇士|r
.turnin 6022 >>交任务: |cRXP_FRIENDLY_杀戮的理由|r
.turnin 6133 >>交任务: |cRXP_FRIENDLY_游侠之王的命令|r
.target Nathanos Blightcaller
.group
step
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.turnin 5961 >>交任务: |cRXP_FRIENDLY_女妖之王的勇士|r
.turnin 6022 >>交任务: |cRXP_FRIENDLY_杀戮的理由|r
.target Nathanos Blightcaller
step
#completewith next
.subzone 2268 >>前往光明的希望教堂
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5210 >>交任务: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.accept 5181 >>接任务: |cRXP_LOOT_达隆郡的恶魔|r
.accept 5168 >>接任务: |cRXP_LOOT_达隆郡的英雄|r
.target Carlin Redpath
.group
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5210 >>交任务: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.accept 5181 >>接任务: |cRXP_LOOT_达隆郡的恶魔|r
.target Carlin Redpath
step
.goto Eastern Plaguelands,51.11,49.92
>>偷走位于湖心石中的|cRXP_Loot_Horgus的头骨|r
.complete 5181,1 
step
.goto Eastern Plaguelands,53.91,65.76
>>在感染疤痕中夺取马尔杜克的|cRXP_Loot_破碎之剑|r
.complete 5181,2 
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5181 >>交任务: |cRXP_FRIENDLY_达隆郡的恶魔|r
.target Carlin Redpath
.solo
step
.goto Western Plaguelands,63.80,57.18
>>织机|cRXP_Loot_红道之盾|r
.complete 5168,2 
.group
step
.goto Western Plaguelands,65.79,75.41
>>Swim to Caer Darrow << !Shaman/Priest
>>水上漫步至Caer Darrow，或游泳 << Shaman
>>使用Levitate，跑到Caer Darrow，或者游泳 << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_画家瑞弗蕾|r
.turnin 5846 >>交任务: |cRXP_FRIENDLY_爱与家庭|r
.target Artist Renfray
.isOnQuest 5846
.group
step
#completewith next
.subzone 192 >>前往北岭木材营地
step
.goto Western Plaguelands,48.35,32.00
>>|TInterface/GossipFrame/HealerGossipIcon:0|t进入磨机。单击坡道旁的|cRXP_PICK_Northridge木材厂板条箱|r，然后单击|cRXP _PICK_Termite桶|r
.turnin 5902 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.accept 6390 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
.goto Western Plaguelands,51.92,28.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.accept 6025 >>接任务: |cRXP_LOOT_未竟的事业|r
.target Kirsta Deepshadow
.group
step
.goto Western Plaguelands,47.94,21.43,60,0
.goto Western Plaguelands,43.31,17.34,50,0
.goto Western Plaguelands,45.6,18.6
>>跑进Hearthglen，一旦你进入，就按照箭头重置暴徒
>>跑到塔顶。小心，因为外面的圣骑士可以治愈。你可以试着从他们身边跑过去/人群控制他们，然后登上顶峰
>>|cRXP_WARN_注意暴徒没有Z轴范围。如果他们在你正下方，他们可以从塔的底部击中你|r
.complete 6025,1 
.group 2
step
.goto Western Plaguelands,42.53,18.99
>>在教堂内抢劫|cRXP_Loot_Davil的Libram|r
>>|cRXP_WARN_小心，里面有很多精英|r
.complete 5168,1 
.group 5
step
.goto Western Plaguelands,51.92,28.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开Hearthglen，然后与|cRXP_FRIENDLY_Kirsta|r交谈
.turnin 6025 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
.isQuestComplete 6025
.group
step
#completewith next
.subzone 152 >>返回Bulwark
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5236 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.30,72.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克·莱文|r
.turnin 6390 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.target Mickey Levine
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
.turnin 5238 >>交任务: |cRXP_FRIENDLY_任务完成！|r
.target High Executor Derrington
step
#completewith next
.subzone 2268 >>返回光明的希望教堂
.group
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5181 >>交任务: |cRXP_FRIENDLY_达隆郡的恶魔|r
.turnin 5168 >>交任务: |cRXP_FRIENDLY_达隆郡的英雄|r
.target Carlin Redpath
.isQuestComplete 5168
.group
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5181 >>交任务: |cRXP_FRIENDLY_达隆郡的恶魔|r
.target Carlin Redpath
.group
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.accept 5206 >>接任务: |cRXP_WARN_达隆郡的掠夺者|r
.target Carlin Redpath
.isQuestTurnedIn 5181
.isQuestTurnedIn 5168
.group
step
#loop
.goto Eastern Plaguelands,77.17,48.18,50,0
.goto Eastern Plaguelands,81.49,43.17,50,0
.goto Eastern Plaguelands,82.52,40.47,50,0
.goto Eastern Plaguelands,82.73,37.94,50,0
.goto Eastern Plaguelands,84.43,38.30,50,0
.goto Eastern Plaguelands,84.88,41.89,50,0
.goto Eastern Plaguelands,86.73,44.35,50,0
.goto Eastern Plaguelands,84.19,44.85,50,0
.goto Eastern Plaguelands,82.07,43.47,50,0
>>杀死|cRXP_ENEMY_Scourge Champions |r。掠夺他们的|T133728:0|t[|cRXP-Loot_Festid Skulls|r]
.use 13156 >>在|T133728:0|t[|cRXP_LOOT_胎儿头骨|r]上使用|T134095:0|t[神秘水晶]创建|cRXX_LOOT_共振头骨|r
.complete 5206,1 
.mob Scourge Champion
.isOnQuest 5206
.group
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5206 >>交任务: |cRXP_FRIENDLY_达隆郡的掠夺者|r
.target Carlin Redpath
.isQuestComplete 5206
.group
step
#optional
.abandon 4971 >>放弃时间问题
.isOnQuest 4971
step
#optional
.abandon 5781 >>放弃被遗忘的记忆
.isOnQuest 5781
step
#optional
.abandon 6133 >>Abandon 交任务: |cRXP_FRIENDLY_游侠之王的命令|r
.isOnQuest 6133
step
#optional
.abandon 6024 >>Abandon Hameya's Plea
.isOnQuest 6024
step
#optional
.abandon 5168 >>抛弃达罗郡的英雄
.isOnQuest 5168
step
#optional
.abandon 6025 >>放弃未完成的业务
.isOnQuest 6025
step
#phase 6
#ah
.goto Eastern Plaguelands,80.937,58.515
+|cRXP_WARN_如果您购买了|r|T133614:0|t[黑铁碎片]|cRXP_WARN_/|r|T134139:0|t[元素核心]|cRXP_WARN_//|r|T133571:0|t[地穴恶魔零件]|cRX P_WARN_/|r|t 133724:0|t][骨碎片]| cRX P_WARN_/|r | T136074:0|t[野蛮霜]| cRXP_WARN_请将它们从您的邮件中取出。如果您没有购买，请跳过此步骤|r
.itemcount 22529,<30 
.itemcount 22526,<30 
.itemcount 22525,<30 
.itemcount 22527,<30 
.itemcount 22528,<30 
step
#phase 6
#completewith 5TurnIns
>>|cRXP_WARN_如果你没有接受这些任务所需的声望，就在附近的|cRXP_ENEMY_Undad|r上磨一磨，直到你与银色黎明友好为止|r
.reputation 529,friendly
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.200,59.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱茵|r
.accept 9136 >>接任务: |cRXP_WARN_蛮荒之叶|r
.turnin 9136 >>交任务: |cRXP_FRIENDLY_蛮荒之叶|r
.itemcount 22529,30
.target Rayne
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.505,58.556
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎手雷奥普德|r
.accept 9124 >>接任务: |cRXP_WARN_地穴追猎者护甲的材料……|r
.turnin 9124 >>交任务: |cRXP_FRIENDLY_地穴追猎者护甲的材料……|r
.itemcount 22525,30
.target Huntsman Leopold
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.428,58.507
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杀手洛汗|r
.accept 9126 >>接任务: |cRXP_WARN_骨镰的材料|r
.turnin 9126 >>交任务: |cRXP_FRIENDLY_骨镰的材料|r
.itemcount 22526,30
.target Rohan the Assassin
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.523,58.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师安吉拉·杜萨图斯|r
.accept 9128 >>接任务: |cRXP_WARN_元素交易|r
.turnin 9128 >>交任务: |cRXP_FRIENDLY_元素交易|r
.itemcount 22527,30
.target Archmage Angela Dosantos
step
#phase 6
#ah
#optional
#label 5TurnIns
.goto Eastern Plaguelands,81.798,58.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korfax|r
.accept 9131 >>接任务: |cRXP_WARN_无畏护甲的材料|r
.turnin 9131 >>交任务: |cRXP_FRIENDLY_无畏护甲的材料|r
.itemcount 22528,30
.target Korfax, Champion of the Light

step
.goto Eastern Plaguelands,80.22,57.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔吉亚|r
.fly Badlands >>飞到荒地
.target Georgia
.zoneskip Badlands
.dungeon BRD
step
#completewith KargathBRDQuests
+你现在将开始收集贝莱德深渊的任务。
>>贝莱德深渊是一个非常复杂的地牢。为了以最有效的方式完成所有任务，需要在中途离开地牢以提交/接受后续任务，这样才能在一次运行中完成所有任务。
>>尽量确保所有成员都完成了相同的任务和预任务，并有2-3小时的游戏时间。
.dungeon BRD

step
.goto Badlands,3.77,47.47
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wanted海报|r
.accept 4081 >>接任务: |cRXP_WARN_格杀勿论：黑铁矮人|r
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑德哈特|r
>>|cRXP_WARN_他可能正在Kargath的山上巡逻。找到他或等待他回来|r
.accept 3906 >>接任务: |cRXP_WARN_不和谐的烈焰|r
.unitscan Thunderheart
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗法师薇薇安·拉格雷|r
.accept 7201 >>接任务: |cRXP_WARN_最后的元素|r
.accept 4134 >>接任务: |cRXP_WARN_遗失的雷酒秘方|r
.target Shadowmage Vivian Lagrave
.dungeon BRD
step
#label KargathBRDQuests
.goto Badlands,3.03,47.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞朵拉·穆瓦丹尼|r
.accept 4061 >>接任务: |cRXP_WARN_机器的崛起|r
.target Hierophant Theodora Mulvadania
.dungeon BRD
step
#completewith next
+如果你的团队中有法师，请将你的炉石设置为Kargath！
.dungeon BRD
step
.goto Badlands,3.98,44.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里克|r
.fly Flame Crest >>Fly to Flame Crest
.target Gorrik
.zoneskip Burning Steppes
.dungeon BRD

step
.goto Burning Steppes,65.152,23.911
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.accept 4123 >>接任务: |cRXP_WARN_山脉之心|r
.target Maxwort Uberglint
.dungeon BRD
step
.goto Burning Steppes,66.058,21.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤卡·斯库比格特|r
.accept 4136 >>接任务: |cRXP_WARN_雷布里·斯库比格特|r
.target Yuka Screwspigot
.dungeon BRD
step
#loop
.goto Burning Steppes,62.74,34.92,60,0
.goto Burning Steppes,57.43,36.36,60,0
.goto Burning Steppes,53.03,39.25,60,0
.goto Burning Steppes,59.19,40.17,60,0
.goto Burning Steppes,63.33,43.19,60,0
.goto Burning Steppes,67.37,44.38,60,0
>>杀死|cRXP_ENEMY_War Reavers|r。掠夺他们的|cRXX_Loot_Shard|r
>>|cRXP_WARN_完成此操作将解锁可选的BRD任务。可以跳过|r
.complete 4061,1 
.mob War Reaver
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
>>选择选项：“我向你出示我的事迹证明，居鲁士。”
.accept 4022 >>接任务: |cRXP_LOOT_烈焰精华|r
.turnin 4022 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.itemcount 10575,1 
.target Cyrus Therepentous
.isQuestTurnedIn 3481
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
>>如果您错过了|T134430:0|t[黑蜻蜓熔化]，并且无法完成任务，请与|cRXP_FRIENDLY_Cyrus|r交谈并选择选项：“我没有任何证据，Cyrus。”
>>这将在小洞穴的入口处产生一条54级精英龙。确保你身边有队员帮助杀死它，然后掠夺它以获得|T134430:0|t[黑蜻蜓熔化]
>>选择后面的选项：“我向你出示我的事迹证明，居鲁士。”
.collect 10575,1,4022,1 
.accept 4022 >>接任务: |cRXP_LOOT_烈焰精华|r
.turnin 4022 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.target Cyrus Therepentous
.isQuestAvailable 4022
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
.accept 4024 >>接任务: |cRXP_LOOT_烈焰精华|r
.target Cyrus Therepentous
.isQuestTurnedIn 4022
.dungeon BRD

step
#completewith CoreAttunement
.subzone 25 >>前往贝莱德山
.dungeon BRD
step
#softcoreserver
#softcore
+故意死在贝莱德山的熔岩中，最好是在熔融核心入口附近
>>要执行此步骤，您必须是|T132331:0|t[Ghost]才能在Blackrock Mountain内与|cRXP_FRIENDLY_Francklorn Forgewright|r对话。完成任务后在尸体前复活
.goto 1415,48.624,64.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗兰克罗恩·铸铁|r
.accept 3801 >>接任务: |cRXP_WARN_黑铁的遗产|r
.turnin 3801 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
.accept 3802 >>接任务: |cRXP_WARN_黑铁的遗产|r
.target Franclorn Forgewright
.dungeon BRD
step
#hardcoreserver
.goto 1415,48.656,64.134
.cast 417803 >>单击Embersight的|cRXP_PICK_Brazier |r以获得|T136215:0|t[Emberglow Vision]debuff
.dungeon BRD
step
#hardcoreserver
.goto 1415,48.624,64.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗兰克罗恩·铸铁|r
>>你必须有|T136215:0|t[Emberglow Vision]的debuff才能看到他
.accept 3801 >>接任务: |cRXP_WARN_黑铁的遗产|r
.turnin 3801 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
.accept 3802 >>接任务: |cRXP_WARN_黑铁的遗产|r
.target Franclorn Forgewright
.dungeon BRD
step
#label CoreAttunement
.goto 1415,48.409,63.815
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛索斯·天痕|r
.accept 7848 >>接任务: |cRXP_WARN_熔火之心的传送门|r
.target Lothos Riftwaker
.dungeon BRD
step
>>杀死|cRXP_ENEMY_Overmaster Pyron|r
>>|cRXP_ENEMY_BRD实例门户外部的Overmaster Pyron |r|cRXP_WARN_trols|r
.complete 3906,1 
.mob Overmaster Pyron
.isOnQuest 3906
.dungeon BRD
step
#label EnterBRD1
.subzone 1584 >>输入Blackrock Depths实例
.dungeon BRD
step
>>杀死|cRXP_ENEMY_Anvilrage矮人|r
.complete 4081,1 
.complete 4081,2 
.complete 4081,3 
.mob Anvilrage Guardsman
.mob Anvilrage Warden
.mob Anvilrage Footman
.isOnQuest 4081
.dungeon BRD
step
#completewith next
+Travel back to Kargath
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑德哈特|r
>>|cRXP_WARN_他可能正在Kargath的山上巡逻。找到他或等待他回来|r
.turnin 3906 >>交任务: |cRXP_FRIENDLY_不和谐的烈焰|r
.unitscan Thunderheart
.isQuestComplete 3906
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑德哈特|r
>>|cRXP_WARN_他可能正在Kargath的山上巡逻。找到他或等待他回来|r
.accept 3907 >>接任务: |cRXP_WARN_不和谐的火焰|r
.unitscan Thunderheart
.isQuestTurnedIn 3906
.dungeon BRD
step
.goto Badlands,3.03,47.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞朵拉·穆瓦丹尼|r
.turnin 4061 >>交任务: |cRXP_FRIENDLY_机器的崛起|r
.target Hierophant Theodora Mulvadania
.isQuestComplete 4061
.dungeon BRD
step
.goto Badlands,3.03,47.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞朵拉·穆瓦丹尼|r
.accept 4062 >>接任务: |cRXP_WARN_机器的崛起|r
.target Hierophant Theodora Mulvadania
.isQuestTurnedIn 4061
.dungeon BRD
step
.goto Badlands,5.81,47.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军官高图斯|r
.turnin 4081 >>交任务: |cRXP_FRIENDLY_格杀勿论：黑铁矮人|r
.target Warlord Goretooth
.isQuestComplete 4081
.dungeon BRD
step
.goto Badlands,5.96,47.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_神射手贾拉玛弗|r
.accept 3981 >>接任务: |cRXP_WARN_指挥官哥沙克|r
.target Galamav the Marksman
.isQuestTurnedIn 3906
.dungeon BRD
step
.goto Badlands,3.97,46.77
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wanted海报|r
.accept 4082 >>接任务: |cRXP_WARN_格杀勿论：高阶黑铁军官|r
.isQuestTurnedIn 4081
.dungeon BRD
step
.goto Badlands,25.95,44.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 4062 >>交任务: |cRXP_FRIENDLY_机器的崛起|r
.accept 4063 >>接任务: |cRXP_WARN_机器的崛起|r
.target Lotwil Veriatus
.isQuestTurnedIn 4061
.dungeon BRD
step
#label EnterBRD2
.subzone 1584 >>返回Blackrock Mountain并进入Blackrock Depths实例
.dungeon BRD
step
#completewith WhatsGoingOn
>>杀死|cRXP_ENEMY_Fire元素|r和|cRXX_ENEMY_Golems|r。掠夺它们的|cRXP_Loot_元素本质|r
>>|cRXP_WARN_现在不需要完成此任务|r
.complete 7201,1 
.isOnQuest 7201
.dungeon BRD
step
#completewith next
+完成“法律之环”老板活动，然后从隧道出口向上，立即右转，穿过法律之环顶部，前往金库
.dungeon BRD
step
>>在安全墙内偷走|cRXP_Loot_The Heart of The Mountain |r。它需要15秒才能重生
>>有一个技巧可以让你在不打开保险箱的情况下抢劫它。查看下面的链接，了解如何完成
.complete 4123,1 
.link https://clips.twitch.tv/GenerousCarefulHerringNomNom-4BUCn6yI1dMozIkF >>点击此处查看如何掠夺山之心
.isOnQuest 4123
.dungeon BRD
step
>>杀死|cRXP_ENEMY_Fineous Darkwire|r。掠夺他获得|cRXX_Loot_INFEL|r
.complete 3802,1 
.target Fineous Darkvire
.isOnQuest 3802
.dungeon BRD
step
>>杀死|cRXP_ENEMY_燃烧领主|r
.complete 3907,1 
.target Lord Incendius
.isOnQuest 3907
.dungeon BRD
step
>>在法律之环上方的位置附近往回跑
>>单击|cRXP_PICK_法国遗忘纪念碑|r
.turnin 3802 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
.isQuestComplete 3802
.dungeon BRD
step
#completewith next
>>杀死|cRXP_ENEMY_Anvilrage矮人|r
.complete 4082,1 
.complete 4082,2 
.complete 4082,3 
.mob Anvilrage Medic
.mob Anvilrage Soldier
.mob Anvilrage Officer
.isOnQuest 4082
.dungeon BRD
step
>>前往入口处的影之门
>>杀死|cRXP_ENEMY_Bael-Gar|r
.use 11231 >>|cRXP_WARN_在他的尸体上使用|r|T134430:0|t[Altered Black Dragonflight Molt]|cRXP_WARN_|r
.complete 4024,1 
.mob Bael'Gar
.isOnQuest 4024
.dungeon BRD
step
>>完成击杀|cRXP_ENEMY_Anvilrage矮人|r
.complete 4082,1 
.complete 4082,2 
.complete 4082,3 
.mob Anvilrage Medic
.mob Anvilrage Soldier
.mob Anvilrage Officer
.isOnQuest 4082
.dungeon BRD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官哥沙克|r
>>如果你的团队没有盗贼，你可能需要杀死|cRXP_ENEMY_High Interrogator Gerstahn|r以获得|cRXP_LOOT_Prison Cell Key|r来开门
>>|cRXP_WARN_确保所有党员都自动接受此步骤！RestedXP已关闭此步骤的自动接受功能|r
.turnin 3981 >>交任务: |cRXP_FRIENDLY_指挥官哥沙克|r
.accept 3982,1 >>接任务: |cRXP_WARN_[What Is Going On?]|r
.target Commander Gor'shak
.dungeon BRD
step
>>防御|cRXP_FRIENDLY_Commander Gor'shak|r免受来袭的|cRXP-ENEMY_Anvilrage Dwarves的攻击|r
.complete 3982,1 
.target Commander Gor'shak
.isQuestTurnedIn 3981
.dungeon BRD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官哥沙克|r
.turnin 3982 >>交任务: |cRXP_FRIENDLY_出了什么事？|r
.accept 4001 >>接任务: |cRXP_WARN_[What Is Going On?]|r
.target Commander Gor'shak
.isQuestTurnedIn 3981
.dungeon BRD
step
#label WhatsGoingOn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡兰·巨锤|r
>>|cRXP_WARN_他位于大厅对面|r|cRXP_FRIENDLY_Commander Gor'shak|r
.complete 4001,1 
.target Kharan Mighthammer
.skipgossip
.isQuestTurnedIn 3981
.dungeon BRD
step
#completewith next
+向Everlook致敬，飞往Orgrimmar。如果你有法师，请请求一个通往奥格里玛的入口
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
.turnin 4001 >>交任务: |cRXP_FRIENDLY_出了什么事？|r
.accept 4002 >>接任务: |cRXP_WARN_东部王国|r
.target Thrall
.isQuestTurnedIn 3982
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
.complete 4002,1
.target Thrall
.isQuestTurnedIn 3982
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
.turnin 4002 >>交任务: |cRXP_FRIENDLY_东部王国|r
.accept 4003 >>接任务: |cRXP_WARN_拯救公主|r
.target Thrall
.isQuestTurnedIn 3982
.dungeon BRD
step
#completewith EnterBRD3
+如果你把你的炉石放在那里，那就把炉石放在卡加特。如果你不这样做，就把齐柏林飞艇带到Stranglethorn，然后飞到那里
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑德哈特|r
>>|cRXP_WARN_他可能正在Kargath的山上巡逻。找到他或等待他回来|r
.turnin 3907 >>交任务: |cRXP_FRIENDLY_不和谐的火焰|r
.unitscan Thunderheart
.isQuestComplete 3907
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗法师薇薇安·拉格雷|r
.turnin 7201 >>交任务: |cRXP_FRIENDLY_最后的元素|r
.target Shadowmage Vivian Lagrave
.isQuestComplete 7201
.dungeon BRD
step
.goto Badlands,5.81,47.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军官高图斯|r
.turnin 4082 >>交任务: |cRXP_FRIENDLY_格杀勿论：高阶黑铁军官|r
.target Warlord Goretooth
.isQuestComplete 4082
.dungeon BRD
step
#label EnterBRD3
.subzone 1584 >>Enter Blackrock Depths
.dungeon BRD
step
#completewith PrincessSaved
>>杀死|cRXP_ENEMY_Fire元素|r和|cRXX_ENEMY_Golems|r。掠夺它们的|cRXP_Loot_元素本质|r
.complete 7201,1 
.isOnQuest 7201
.dungeon BRD
step
>>杀死|cRXP_ENEMY_Golem Lord Argelmach|r。掠夺他的|cRXX_Loot_Head |r
>>杀死|cRXP_ENEMY_Golems|r。掠夺他们的|cRXX_Loot_Elemental Core|r
.complete 4063,1 
.complete 4063,2 
.mob Golem Lord Argelmach
.dungeon BRD
step
#completewith next
>>进入酒吧，进入左边的小房间。在酒吧奔跑时，不要攻击任何中立暴徒
>>点击3|cRXP_PICK_Thunderbrew Lager Kegs|r摧毁它们，迫使|cRXD_ENEMY_Hurley Blackbreath |r和他的3|cRX _ENEMY_Blackbreath Cronies|r交战
>>杀死|cRXP_ENEMY_Hurley Blackbreath |r。掠夺他获得|cRXX_Loot_丢失的霹雳配方|r
.complete 4134,1 
.target Hurley Blackbreath
.isOnQuest 4134
.dungeon BRD
step
>>进入酒吧，进入左边的小房间。在酒吧奔跑时，不要攻击任何中立暴徒
>>杀死|cRXP_ENEMY_Ribbly Screwspike|r。抢走他的|cRXX_Loot_Head|r
>>要与|cRXP_ENEMY_Ribbly Screwspit|r交战，请坦克与他交谈，然后将他和他的|cRXX_ENEMY_Cronies|r带着小桶带回房间
.complete 4136,1 
.target Ribbly Screwspigot
.skipgossip
.isOnQuest 4136
.dungeon BRD
step
>>进入酒吧，进入左边的小房间。在酒吧奔跑时，不要攻击任何中立暴徒
>>点击3|cRXP_PICK_Thunderbrew Lager Kegs|r摧毁它们，迫使|cRXD_ENEMY_Hurley Blackbreath |r和他的3|cRX _ENEMY_Blackbreath Cronies|r交战
>>杀死|cRXP_ENEMY_Hurley Blackbreath |r。掠夺他获得|cRXX_Loot_丢失的霹雳配方|r
.complete 4134,1 
.isOnQuest 4134
.dungeon BRD
step
>>在熔芯实例入口外的地面上掠夺|cRXP_Loot_Core碎片|r
.complete 7848,1 
.isOnQuest 7848
.dungeon BRD
step
>>杀死|cRXP_ENEMY_达格兰·塔里桑皇帝|r
>>|cRXP_WARN_您不能为了完成并完成此任务而杀死|cRXP_ENEMY_公主莫伊拉·布蓝胡子|r|r
>>|cRXP_WARN_让一名党员风筝|cRXP_ENEMY_公主Moira Bronzebeard|r，而其他人杀死|r|cRXX_ENEMY_Emperor Dagran Thaurissan|r
.complete 4003,1 
.isOnQuest 4003
.dungeon BRD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁炉堡公主茉艾拉·铜须|r
.turnin 4003 >>交任务: |cRXP_FRIENDLY_拯救公主|r
.accept 4004 >>接任务: |cRXP_WARN_拯救公主？|r
.target Princess Moira Bronzebeard
.isQuestComplete 4003
.dungeon BRD
step
#label PrincessSaved
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁炉堡公主茉艾拉·铜须|r
.accept 4004 >>接任务: |cRXP_WARN_拯救公主？|r
.target Princess Moira Bronzebeard
.isQuestTurnedIn 4003
.dungeon BRD
step
#completewith KargathTurnins
+Heath或返回Kargath
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗法师薇薇安·拉格雷|r
.turnin 4134 >>交任务: |cRXP_FRIENDLY_遗失的雷酒秘方|r
.target Shadowmage Vivian Lagrave
.isQuestComplete 4134
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗法师薇薇安·拉格雷|r
.turnin 7201 >>交任务: |cRXP_FRIENDLY_最后的元素|r
.target Shadowmage Vivian Lagrave
.isQuestComplete 7201
.dungeon BRD
step
#label KargathTurnins
.goto Badlands,25.95,44.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 4063 >>交任务: |cRXP_FRIENDLY_机器的崛起|r
.target Lotwil Veriatus
.isQuestTurnedIn 4062
.dungeon BRD
step
.goto Badlands,3.98,44.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里克|r
.fly Flame Crest >>Fly to Flame Crest
.target Gorrik
.zoneskip Burning Steppes
.dungeon BRD
step
.goto Burning Steppes,65.152,23.911
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.turnin 4123 >>交任务: |cRXP_FRIENDLY_山脉之心|r
.target Maxwort Uberglint
.isQuestComplete 4123
.dungeon BRD
step
.goto Burning Steppes,66.058,21.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤卡·斯库比格特|r
.turnin 4136 >>交任务: |cRXP_FRIENDLY_雷布里·斯库比格特|r
.target Yuka Screwspigot
.isQuestComplete 4136
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
.turnin 4024 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.target Cyrus Therepentous
.dungeon BRD
.isQuestComplete 4024
step
.goto 1415,48.409,63.815
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛索斯·天痕|r
>>|cRXP_WARN_你可以现在就交，也可以下次在贝莱德山时交|r
.turnin 7848 >>交任务: |cRXP_FRIENDLY_熔火之心的传送门|r
.target Lothos Riftwaker
.isQuestComplete 7848
.dungeon BRD
step
#completewith next
+向Everlook致敬，飞往Orgrimmar。如果你有法师，请请求一个通往奥格里玛的入口
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
.turnin 4004 >>交任务: |cRXP_FRIENDLY_拯救公主？|r
.target Thrall
.isQuestTurnedIn 4003
.dungeon BRD
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 59-59冬泉/Silithus I
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 50-60
#next 59-60冬泉/Silithus II
step
#completewith ChillyHorns
+飞或心到Everlook
.zoneskip Winterspring
.dungeon BRD
step
#completewith ChillyHorns
.hs >>Hearth to Everlook公司公司
.use 6948
.zoneskip Winterspring
.dungeon !BRD
step
#label ChillyHorns
.goto Winterspring,61.60,38.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.accept 4809 >>接任务: |cRXP_WARN_冰风奇美拉角|r
.target Felnok Steelspring
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.accept 5056 >>接任务: |cRXP_WARN_希洛塔姆|r
.target Storm Shadowhoof
.group
step
.goto Winterspring,60.90,37.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.accept 977 >>接任务: |cRXP_LOOT_雪怪计划！|r
.target Umi Rumplesnicker
step
#completewith next
#loop
.goto Winterspring,50.54,14.27,50,0
.goto Winterspring,48.52,12.15,50,0
.goto Winterspring,49.72,8.84,50,0
.goto Winterspring,48.54,7.89,50,0
.goto Winterspring,49.67,7.03,50,0
.goto Winterspring,51.94,9.31,50,0
.goto Winterspring,51.64,11.34,50,0
>>杀死|cRXP_ENEMY_Frostsabers|r。掠夺它们|T133298:0|t[|cRXP-Loot_神圣的Frostsaber肉|r]
.collect 12733,1,5056,1 
.mob Frostsaber Pride Watcher
.mob Frostsaber Huntress
.mob Frostsaber Stalker
.mob Frostsaber Cub
.mob Frostsaber
.group 0
step
.goto Winterspring,49.68,9.75
.use 12733 >>将|T133298:0|t[|cRXP_LOOT_神圣冰刀肉|r]放在石头上
>>杀死出现的|cRXP_ENEMY_Shy-Rotam|r
.complete 5056,1 
.unitscan Shy-Rotam
.group 3
step
.loop 25,Winterspring,64.0,22.6,65.6,23.2,67.6,22.6,65.6,19.6,63.6,16.2,65.6,19.6,64.0,20.8,64.0,22.6
>>杀死|cRXP_ENEMY_狂暴猫头鹰|r。掠夺它们一个|T133298:0|t[|cRXD_Loot_Blue-Fathered Necklace|r]。使用它来接受任务
.complete 4721,1 
.collect 12558,1,4721,1 
.accept 4882 >>接任务: |cRXP_WARN_守护秘密|r
.use 12558
.mob Berserk Owlbeast
step
#completewith next
>>杀死|cRXP_ENEMY_Winterfall Ursa|r，|cRXD_ENEMY_温特福尔萨满|r和|cRXP_ENEMY_温特福尔巢穴守望者|r
>>|cRXP_WARN_如果竞争太激烈，跳过这一步|r
.complete 8464,1 
.complete 8464,2 
.complete 8464,3 
.mob Winterfall Shaman
.mob Winterfall Den Watcher
.mob Winterfall Ursa
step
.goto Winterspring,69.62,38.31
>>杀死|cRXP_ENEMY_临冬城高级首领|r。掠夺他的|T133740:0|t[|cRXP-Loot_Crudely-writted Log|r]。使用它来接受任务
>>|cRXP_WARN_首先杀死|r|cRXP_ENEMY_Winterfall萨满|r|cRXP_WARN_first，然后重置以确保安全。如果可以的话，使用你的攻击性冷却和CC；他的霜震很重|r
.complete 5121,1 
.collect 12842,1,5123 
.accept 5123 >>接任务: |cRXP_LOOT_最后一片|r
.use 12842
.mob Winterfall Shaman
.unitscan High Chief Winterfall
.group 2
step
.loop 25,Winterspring,67.6,34.1,66.4,34.3,65.9,35.3,66.6,36.3,67.5,35.5,68.4,35.7,68.3,37.3,67.5,37.9,66.8,37.3,65.6,37.7,66.7,39.1,68.0,39.4,68.8,37.7,68.4,35.7,67.6,34.1
>>杀死|cRXP_ENEMY_Winterfall Ursa|r，|cRXD_ENEMY_温特福尔萨满|r和|cRXP_ENEMY_温特福尔巢穴守望者|r
>>|cRXP_WARN_如果竞争太激烈，跳过这一步|r
.complete 8464,1 
.complete 8464,2 
.complete 8464,3 
.mob Winterfall Shaman
.mob Winterfall Den Watcher
.mob Winterfall Ursa
step
.loop 25,Winterspring,66.5,41.7,64.9,40.2,65.9,43.6,66.2,45.8,67.6,45.6,67.6,43.8,67.2,43.0,67.6,41.9,68.4,41.5,69.00,41.3,69.5,40.0,69.8,41.8,70.1,42.0,70.3,40.8,71.3,40.8,71.8,39.8,70.5,38.3,71.8,39.8,71.3,40.8,70.3,40.8,69.5,40.0,69.00,41.3,68.4,41.5,66.5,41.7
>>杀死|cRXP_ENEMY_Ice Thistle Patriarchs and Matriachs|r，直到你掠夺一个|cRXX_loot_Pristine Yeti Horn|r
.complete 977,1 
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step
.loop 25,Winterspring,67.6,48.2,66.2,52.4,63.6,47.2,61.6,45.0,58.2,45.0,57.4,46.6,55.4,49.0,55.2,46.4,48.6,45.0,44.8,42.2,44.0,36.0,48.0,36.6,49.4,34.4,54.0,36.8,56.6,25.6,55.6,22.4,58.0,19.8,60.6,23.6,66.4,26.8,65.6,32.6,62.4,36.2,61.2,41.6,67.6,48.2
>>杀死Everlook以北的所有冷风奇马。掠夺他们的|cRXP_Loot_Horns|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step << Shaman
#completewith next
.hs >>Hearth或Astral召回Everlook
step << Shaman
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,61.6,38.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.turnin 4809 >>交任务: |cRXP_FRIENDLY_冰风奇美拉角|r
.target Felnok Steelspring
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.turnin 5056 >>交任务: |cRXP_FRIENDLY_希洛塔姆|r
.target Storm Shadowhoof
.isQuestComplete 5056
.group
step
.goto Winterspring,60.90,37.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.turnin 977 >>交任务: |cRXP_FRIENDLY_雪怪计划！|r
.accept 5163 >>接任务: |cRXP_LOOT_雪怪计划！|r
.target Umi Rumplesnicker
step
.goto Winterspring,61.50,38.60
.use 12928 >>在|cRXP_FRIENDLY_Legacki|r上使用|T133003:0|t[机械Yeti]
.complete 5163,1 
.target Legacki
step << !Shaman
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
#completewith next
.goto Winterspring,31.30,45.20,60 >>返回|cRXP_FRIENDLY_Donova|r
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5121 >>交任务: |cRXP_FRIENDLY_冬泉酋长|r
.turnin 5123 >>交任务: |cRXP_FRIENDLY_最后一片|r
.accept 5128 >>接任务: |cRXP_LOOT_熊怪酋长的话|r
.target Donova Snowden
.isQuestComplete 5121
.group
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5123 >>交任务: |cRXP_FRIENDLY_最后一片|r
.accept 5128 >>接任务: |cRXP_LOOT_熊怪酋长的话|r
.target Donova Snowden
.isOnQuest 5123
.group
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.accept 5128 >>接任务: |cRXP_LOOT_熊怪酋长的话|r
.target Donova Snowden
.isQuestTurnedIn 5128
.group
step
.goto Felwood,68.30,6.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔法|r
.turnin 8464 >>交任务: |cRXP_FRIENDLY_冬泉熊怪的活动|r
.target Salfa
.isQuestComplete 8464
step << !Druid
#completewith RabineSaturna
.goto Winterspring,27.40,33.64,40,0
.goto Winterspring,25.70,31.93,40,0
.goto Winterspring,25.35,31.36,40,0
.goto Winterspring,26.36,28.04,40,0
.goto Winterspring,26.61,24.49,40,0
.goto Winterspring,26.59,24.17
.zone Moonglade >>前往: |cRXP_PICK_月光林地|r
step << Druid
#completewith RabineSaturna
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 22829 >>训练你的职业技能
.target Loganaar
.xp <56,1
.xp >58,1
step << Druid
#label DruidTraining10
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9850 >>训练你的职业技能
.target Loganaar
.xp <58,1
step
#label RabineSaturna
.goto Moonglade,51.70,45.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 1123 >>交任务: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.accept 1124 >>接任务: |cRXP_WARN_废土|r
.target Rabine Saturna
step
.goto Moonglade,51.68,45.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
>>|cRXP_WARN_如果Dire Maul对话不可用，请跳过此步骤。如果你去过Dire Maul的户外区域/在任何时候发现了Dire Maur，它都可以使用|r
.accept 5527 >>接任务: |cRXP_WARN_净化之匣|r
.target Rabine Saturna
.skipgossip
step
.goto Moonglade,32.10,66.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法斯托恩|r
.fp Moonglade >>获取Moonglade飞行路线 << !Druid
.fly Felwood>>Fly to Felwood
.target Faustron
step
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特鲁尔·法贝恩|r
.turnin 4721 >>交任务: |cRXP_FRIENDLY_冬泉谷的枭兽|r
.turnin 4882 >>交任务: |cRXP_FRIENDLY_守护秘密|r
.accept 4883 >>接任务: |cRXP_WARN_守护秘密|r
.target Trull Failbane
.isQuestComplete 4721
step
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特鲁尔·法贝恩|r
.turnin 4882 >>交任务: |cRXP_FRIENDLY_守护秘密|r
.accept 4883 >>接任务: |cRXP_WARN_守护秘密|r
.target Trull Failbane
step
.goto Felwood,51.14,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科雷克·望天|r
.turnin 5128 >>交任务: |cRXP_FRIENDLY_熊怪酋长的话|r
.target Kelek Skykeeper
.isQuestTurnedIn 5123
.group
step
#hardcoreserver
.goto Felwood,51.35,81.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4084 >>交任务: |cRXP_FRIENDLY_银爪铁心|r
.accept 4005 >>接任务: |cRXP_WARN_亚奎门塔斯|r 
.target Eridan Bluewind
.isQuestTurnedIn 3912
step
#completewith next
.hs >>心回冬泉
.use 6948
.cooldown item,6948,>0,1
step
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Azshara>>Fly to Azshara
.target Yugrek
.cooldown item,6948,>0,1
.zoneskip Azshara
step
#completewith next
.subzone 431 >>前往Splintertree Post
.cooldown item,6948,<0,1
step
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Azshara>>Fly to Azshara
.target Vhulgra
.cooldown item,6948,<0,1
.zoneskip Azshara
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.turnin 3564 >>交任务: |cRXP_FRIENDLY_安德隆的报酬|r
.target Jediga
.isOnQuest 3564
step << !Mage
.goto Azshara,22.00,49.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克隆姆|r
.fly Thunder Bluff>>前往: |cRXP_PICK_雷霆崖|r
.target Kroum
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10157 >>训练你的职业技能
.target Thurston Xane
.xp <56,1
.xp >58,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10054 >>训练你的职业技能
.target Thurston Xane
.xp <58,1
step
#ah
#completewith next
.goto Thunder Bluff,45.22,59.40
+如果您早些时候买了足够的布料，请转到邮箱并取回以下物品：
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#ah
.goto Thunder Bluff,43.3,42.8
>>|cRXP_WARN_禁用任何其他自动提交信誉项目的插件，否则你稍后会被告知再次购买布料|r
>>如果你没有足够的捐款，可以从拍卖行购买3叠每种布料
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉姆斯塔格|r
.turnin 7820 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7821 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7822 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7823 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
.target Auctioneer Stampi
.target Rumstag Proudstrider
step
.goto Thunder Bluff,75.80,31.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
.turnin 4987 >>交任务: |cRXP_FRIENDLY_雕文橡木枝|r
.turnin 4883 >>交任务: |cRXP_FRIENDLY_守护秘密|r
.target Nara Wildmane
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14305 >>训练你的职业技能
.target Urek Thunderhorn
.xp <56,1
.xp >58,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14322 >>训练你的职业技能
.target Urek Thunderhorn
.xp <58,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 20662 >>训练你的职业技能
.target Ker Ragetotem
.xp <56,1
.xp >58,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11597 >>训练你的职业技能
.target Ker Ragetotem
.xp <58,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 10432 >>训练你的职业技能
.target Tigor Skychaser
.xp <56,1
.xp >58,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 10473 >>训练你的职业技能
.target Tigor Skychaser
.xp <58,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10929 >>训练你的职业技能
.target Malakai Cross
.xp <56,1
.xp >58,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10947 >>训练你的职业技能
.target Malakai Cross
.xp <58,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 22829 >>训练你的职业技能
.target Turak Runetotem
.xp <56,1
.xp >58,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9850 >>训练你的职业技能
.target Tura
.xp <58,1
step
.goto Thunder Bluff,47.02,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Tanaris>>前往: 塔纳利斯
.target Tal
.zoneskip Tanaris
step
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 4504 >>接任务: |cRXP_LOOT_极度粘稠的沥青|r
.target Tran'rek
step
.goto Tanaris,51.10,26.90
.use 12928 >>在|cRXP_FRIENDLY_Sprinkle|r上使用|T133003:0|t[机械Yeti]
.complete 5163,2 
.target Sprinkle
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4507 >>接任务: |cRXP_LOOT_捕捉皇后|r
.target Alchemist Pestlezugg
.group
step
#hardcoreserver
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >>前往Lost Rigger Cove
.isQuestTurnedIn 4084
step
#hardcoreserver
#completewith next
#label SummonAquementas
.goto Tanaris,70.43,49.90
.cast 13978 >>|cRXP_WARN_使用|r|T133742:0|t[Book of Aquor]|cRXP_WARN_to在Lost Rigger Cove内的石头召唤圈召唤|cRXP-ENEMY_Aquementas|r|r
.timer 15,Aquementas RP
.use 11617 
.use 11169 
.isQuestTurnedIn 4084
step
#hardcoreserver
.goto Tanaris,70.43,49.93
>>杀死|cRXP_ENEMY_Aquementas|r
.complete 4005,1 
.use 11617 
.use 11169 
.mob Aquementas
.isQuestTurnedIn 4084
step
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Un'Goro Crater >>飞到Un'Goro火山口
.target Bullkrek Ragefist
.zoneskip Un'Goro Crater
step
#hardcoreserver
.goto Un'Goro Crater,41.92,2.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 4005 >>交任务: |cRXP_FRIENDLY_亚奎门塔斯|r 
.accept 3961 >>接任务: |cRXP_WARN_林克的冒险|r 
.target J.D. Collie
.isQuestTurnedIn 4084
step
#hardcoreserver
.goto Un'Goro Crater,44.66,8.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3961 >>交任务: |cRXP_FRIENDLY_林克的冒险|r 
.accept 3962 >>接任务: |cRXP_WARN_结伴而行|r 
.target Linken
.isQuestTurnedIn 4005
.group
step
#hardcoreserver
.goto Un'Goro Crater,44.66,8.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3961 >>交任务: |cRXP_FRIENDLY_林克的冒险|r 
.target Linken
step
.goto Un'Goro Crater,43.70,9.40
.use 12928 >>在|cRXP_FRIENDLY_Quixxil|r上使用|T133003:0|t[机械Yeti]
.complete 5163,3 
.target Quixxil
step
.loop 25,Un'Goro Crater,47.2,14.7,48.1,17.7,49.8,20.6,51.3,23.9,53.6,22.7,54.5,27.0,52.2,27.6,49.2,31.2,48.0,36.3,46.6,30.5,48.2,24.7,47.8,20.5,43.7,21.1,41.3,21.0,42.8,15.9,47.2,14.7
>>杀死|cRXP_ENEMY_Tar元素|r。掠夺它们的|cRXX_Loot_超级粘性焦油|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Tar Lord|r|cRXP_WARN_cast纠缠根|r << !Warrior !Rogue !Shaman
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Tar Lord|r|cRXP_WARN_cast纠缠根|r|cRXP_ENEMY_Tar野兽|r|cRXP_WARN_can在它们被击中时解除你的武装4秒|r << Warrior/Rogue/Shaman
.complete 4504,1 
.mob Tar Beast
.mob Tar Creeper
.mob Tar Lord
.mob Tar Lurker
step
.goto Un'Goro Crater,51.6,34.8,40,0
.goto Un'Goro Crater,51.6,30.6,40,0
.goto Un'Goro Crater,47.6,26.8,40,0
.goto Un'Goro Crater,45.2,22.8,40,0
.goto Un'Goro Crater,54.0,18.6,40,0
.goto Un'Goro Crater,56.6,18.4,40,0
.use 12288 >>让一个|cRXP_ENEMY_Primal Ooze|r在战斗中击中你，然后使用|T132622:0|t[Encased Corrupt Ooze]
>>杀死|cRXP_ENEMY_Gargantuan Ooze|r。掠夺它的|cRXP-Loot_Merged Ooze Sample|r
>>|cRXP_WARN_你只能使用一次任务物品。在你释放自己之前，让软泥攻击你|r
.complete 4642,1 
.mob Primal Ooze
.unitscan Gargantuan Ooze
step
#hardcoreserver
.isOnQuest 3962
#completewith next
>>|cRXP_WARN_前往火羽岭的顶部|r
.cast 14247 >>|cRXP_WARN_装备|r|T135467:0|t[水之银图腾]|cRXP_WARN_in|r
>>|cRXP_WARN_使用|r|T135467:0|t[水之银图腾]|cRXP_WARN_on|cRXP_ENEMY_Blazerunner|r来驱散他的光环。他的光环会把你击退，他可以在战斗中周期性地重新塑造它。确保您或党员随时准备好使用|r|T135467:0|t[水之银图腾]
.use 11522 
.group 3
step
#hardcoreserver
.isOnQuest 3962
.goto Un'Goro Crater,49.401,49.305
>>|cRXP_WARN_使用|r|T135467:0|t[水之银图腾]|cRXP_WARN_on|cRXX_ENEMY_Blazerunner|r驱散他的光环|r
>>杀死|cRXP_ENEMY_Blazerunner|r
.complete 3962,1 
.use 11522 
.mob Blazerunner
.group 3
step
#hardcoreserver
.isOnQuest 3962
.goto Un'Goro Crater,50.279,49.973
>>打开|cRXP_PICK_Ornate胸脯|r。为|cRXP _Loot_Golden Flame|r掠夺它
.complete 3962,2 
.group
step
.goto Un'Goro Crater,50.15,79.98,40,0
.goto Un'Goro Crater,49.74,82.52,30,0
.goto Un'Goro Crater,45.19,82.20,30,0
.goto Un'Goro Crater,43.41,80.98
>>深入silithid蜂箱，直到你到达圆形腔室中的一块高高的水晶
.use 11833 >>使用您的|T134809:0|t[Gorishi Queen Lure]召唤|cRXP_ENEMY_Gorishi Hive Queen |r。杀死她，然后掠夺她|cRXX_OOT_Gorishi女王大脑|r
>>|cRXP_WARN_通过把暴徒拖进走廊来阻止新的浪潮攻击你。根据你的杀戮速度，走廊巡逻队可能会在第二波之后重新出现|r
.complete 4507,1 
.group 2
step
#completewith next
.goto Silithus,88.09,23.43,70,0
.goto Un'Goro Crater,30.15,10.41,70,0
.goto Un'Goro Crater,25.14,12.71,70,0
.goto Silithus,81.87,18.93
.zone Silithus >>前往: |cRXP_PICK_希利苏斯|r
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.turnin 1124 >>交任务: |cRXP_FRIENDLY_废土|r
.accept 1125 >>接任务: |cRXP_WARN_南风村的灵魂|r
.target Layo Starstrike
step
#completewith end
.xpto60hc >>一旦你有足够的xp达到60，就跳到指南的第2部分

step
#phase 4
.goto Silithus,51.80,38.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比提克斯·斯巴格|r
.accept 8277 >>接任务: |cRXP_LOOT_沙漠中的剧毒|r
.target Beetix Ficklespragg
step
#phase 4
.goto Silithus,51.30,38.20
>>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wanted海报|r
.accept 8283 >>接任务: |cRXP_LOOT_通缉：死亡弯钩|r
.group
step
#phase 4
#completewith next
.goto Silithus,51.15,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者梅恩·长角|r
.accept 8280 >>接任务: |cRXP_LOOT_保护补给线|r
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,49.60,37.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_地质学家拉克斯班|r
.accept 8284 >>接任务: |cRXP_LOOT_暮光的秘密|r
.target Geologist Larksbane
step
#phase 4
.goto Silithus,49.20,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
.accept 8304 >>接任务: |cRXP_LOOT_亲爱的纳塔莉亚|r
.target Commander Mar'alith
step
#phase 4
.goto Silithus,48.57,37.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor|r
.accept 8318 >>接任务: |cRXP_LOOT_秘密交流|r
.target Bor Wildmane
step
#phase 4
#completewith s1
>>杀死|cRXP_ENEMY_Dredge Strikers|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
#completewith s1
>>杀死|cRXP_ENEMY_Stonelash Scorpids|r和|cRXX_ENEMY_Sand Skitter|r。掠夺他们的|cRXD_Loot_Stringer|r和| cRXP_Loot_Fangs|r
.complete 8277,1 
.complete 8277,2 
.mob Stonelash Scorpid
.mob Sand Skitterer
step
#completewith Spirits
.use 20461 >>留意|cRXP_ENEMY_Hive'Ashi无人机|r掉落的|T133463:0|t[|cRXP-LOOT_BRAN Bronzebeard的丢失信件|r]。如果掉落，请使用它开始任务
.collect 20461,1,8308 
.accept 8308 >>接任务: |cRXP_WARN_布莱恩·铜须的信|r
step
#completewith next
>>杀死|cRXP_ENEMY_Torged德鲁伊|r和|cRXD_ENEMY_torged哨兵|r
>>|cRXP_WARN_它们死后很有可能产生|r|cRXP_ENEMY_Hive'Ashi无人机|r|cRXP_WARN_|r
.complete 1125,1 
.complete 1125,2 
.mob Tortured Druid
.mob Tortured Sentinel
step
.goto Silithus,63.22,55.35
>>在小屋内偷走|cRXP_PICK_Dusty圣物箱|r，以获得|cRXP_Loot_纯净圣物箱| r
.complete 5527,1 
.isOnQuest 5527
step
#label Spirits
.loop 25,Silithus,61.6,48.6,63.8,48.6,63.6,51.6,62.6,55.6,62.6,58.6,60.0,55.8,60.6,52.8,61.6,48.6
>>杀死|cRXP_ENEMY_Torged德鲁伊|r和|cRXD_ENEMY_torged哨兵|r
>>|cRXP_WARN_它们死后很有可能产生|r|cRXP_ENEMY_Hive'Ashi无人机|r|cRXP_WARN_|r
.complete 1125,1 
.complete 1125,2 
.mob Tortured Druid
.mob Tortured Sentinel
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.turnin 1125 >>交任务: |cRXP_FRIENDLY_南风村的灵魂|r
.target Layo Starstrike
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.accept 1126 >>接任务: |cRXP_WARN_塔中之巢|r
.target Layo Starstrike
.group
step
#completewith next
.use 20461 >>留意|cRXP_ENEMY_Hive'Ashi无人机|r掉落的|T133463:0|t[|cRXP-LOOT_BRAN Bronzebeard的丢失信件|r]。如果掉落，请使用它开始任务
.collect 20461,1,8308 
.accept 8308 >>接任务: |cRXP_WARN_布莱恩·铜须的信|r
.group 0
step
.goto Silithus,60.22,52.55
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击塔顶的|cRXP_PICK_Gooey Nest|r
>>杀死产生的两个|cRXP_ENEMY_Hive'Ashi伏击者|r。为|cRXP_Loot_Encrusted Silithid对象|r掠夺它们
>>|cRXP_WARN_当你进入塔的底层时，三架|r|cRXP_ENEMY_Hive'Ashi无人机|r|cRXP_WARN_将产生！|r
.complete 1126,1 
.mob Hive'Ashi Drone
.mob Hive'Ashi Ambusher
.group 2
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.turnin 1126 >>交任务: |cRXP_FRIENDLY_塔中之巢|r
.accept 6844 >>接任务: |cRXP_WARN_档案管理员阿姆伯尔|r
.target Layo Starstrike
.isQuestComplete 1126
.group
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.accept 6844 >>接任务: |cRXP_WARN_档案管理员阿姆伯尔|r
.target Layo Starstrike
.isQuestTurnedIn 1126
.group
step
#phase 4
#label s1
.goto Silithus,30.0,28.0,50,0
.loop 25,Silithus,19.5,21.1,20.1,15.5,21.5,12.8,21.7,9.4,24.1,9.8,26.6,13.3,24.1,15.5,21.5,22.0
>>将蓝色的|cRXP_PICK_Glowing Tablet|r在地上掠夺|cRXP_Loot_暮光之城Tablet碎片|r
.complete 8284,1 
step
#phase 4
#completewith next
>>杀死|cRXP_ENEMY_Dredge Strikers|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
.loop 25,Silithus,51.6,16.4,54.6,13.2,58.4,13.6,62.6,16.6,61.4,21.6,63.2,24.0,64.8,28.2,67.6,32.0,60.6,30.6,56.4,32.8,53.0,28.0,54.8,21.8,51.6,16.4
>>杀死|cRXP_ENEMY_Stonelash Scorpids|r和|cRXX_ENEMY_Sand Skitter|r。掠夺他们的|cRXD_Loot_Stringer|r和| cRXP_Loot_Fangs|r
.complete 8277,1 
.complete 8277,2 
.mob Stonelash Scorpid
.mob Sand Skitterer
step
#phase 4
.loop 25,Silithus,51.6,16.4,54.6,13.2,58.4,13.6,62.6,16.6,61.4,21.6,63.2,24.0,64.8,28.2,67.6,32.0,60.6,30.6,56.4,32.8,53.0,28.0,54.8,21.8,51.6,16.4
>>杀死|cRXP_ENEMY_Dredge Strikers|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
.goto Silithus,49.70,37.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_地质学家拉克斯班|r
.turnin 8284 >>交任务: |cRXP_FRIENDLY_暮光的秘密|r
.accept 8285 >>接任务: |cRXP_LOOT_沙漠隐士|r
.target Geologist Larksbane
step
#phase 4
.goto Silithus,51.15,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者梅恩·长角|r
.turnin 8280 >>交任务: |cRXP_FRIENDLY_保护补给线|r
.accept 8281 >>接任务: |cRXP_LOOT_确保安全|r
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.80,38.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比提克斯·斯巴格|r
.turnin 8277 >>交任务: |cRXP_FRIENDLY_沙漠中的剧毒|r
.accept 8278 >>接任务: |cRXP_LOOT_诺格的最后一线希望|r
.target Beetix Ficklespragg
step
#phase 4
#completewith Deserter
.goto Silithus,39.31,53.33,0
>>杀死|cRXP_ENEMY_Dredge Crushers|r
>>|cRXP_WARN_不要专注于此；你可以稍后完成|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
#completewith Deserter
.goto Silithus,62.52,64.00,0
.goto Silithus,50.73,55.99,0
>>杀死|cRXP_ENEMY_Stonelash Flayer|r和|cRXP_ENEMY_Stonelash Pincers|r。掠夺它们以获取它们的|cRXD_OOT_Stinger|r
>>杀死|cRXP_ENEMY_Rock Stalkers |r。掠夺他们的|cRXX_Loot_Fangs|r
>>|cRXP_WARN_不要专注于此；你可以稍后完成|r
.complete 8278,1 
.complete 8278,2 
.complete 8278,3 
.mob Stonelash Flayer
.mob Stonelash Pincer
.mob Rock Stalker
step
#phase 4
.goto Silithus,41.30,88.50,10,0
.goto Silithus,40.80,88.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特加尔·雕石|r, |cRXP_FRIENDLY_弗兰卡·石桥|r
.complete 8304,2 
.complete 8304,1 
.target Rutgar Glyphshaper
.target Frankal Stonebridge
.skipgossip
step
.goto Silithus,41.30,88.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特加尔·雕石|r
.turnin 8308 >>交任务: |cRXP_FRIENDLY_布莱恩·铜须的信|r
.target Rutgar Glyphshaper
.isOnQuest 8308
step
#phase 4
#label Deserter
.goto Silithus,67.19,69.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit|r
.turnin 8285 >>交任务: |cRXP_FRIENDLY_沙漠隐士|r
.accept 8279 >>接任务: |cRXP_LOOT_暮光词典|r
.target Hermit Ortell
step
#phase 4
#completewith next
>>杀死|cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
.loop 25,Silithus,62.2,63.2,57.0,59.2,50.8,58.0,47.8,54.6,40.8,50.2,34.6,49.4,36.2,39.4,33.6,34.6,27.8,43.4,33.0,49.0,34.6,53.6,34.6,60.4,34.2,65.4,39.4,64.6,42.6,61.4,48.8,62.4,52.8,63.0,59.0,64.4,62.6,66.2,62.2,63.2
>>杀死|cRXP_ENEMY_Stonelash Pincers|r。掠夺他们的|cRXX_Loot_Stringer|r
.complete 8278,2 
.mob Stonelash Pincer
step
#phase 4
.loop 25,Silithus,62.2,63.2,57.0,59.2,50.8,58.0,47.8,54.6,40.8,50.2,34.6,49.4,36.2,39.4,33.6,34.6,27.8,43.4,33.0,49.0,34.6,53.6,34.6,60.4,34.2,65.4,39.4,64.6,42.6,61.4,48.8,62.4,52.8,63.0,59.0,64.4,62.6,66.2,62.2,63.2
>>杀死|cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
.loop 25,Silithus,42.6,86.4,38.6,87.4,38.2,83.2,34.0,76.6,32.0,81.0,27.6,85.2,24.6,82.0,23.4,77.2,27.6,76.4,31.6,74.8,34.6,71.4,38.6,69.2,43.0,68.4,46.8,69.6,44.2,75.6,45.4,80.2,45.4,85.6,42.6,86.4
>>杀死|cRXP_ENEMY_Stonewlash Flayer|r和|cRXD_ENEMY_Rock Stalkers |r。掠夺他们的|cRXP_Loot_Stringer|r和| cRXP_Loot_Fangs|r
.complete 8278,1 
.complete 8278,3 
.mob Stonelash Flayer
.mob Rock Stalker
step
#phase 4
.goto Silithus,51.15,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者梅恩·长角|r
.turnin 8281 >>交任务: |cRXP_FRIENDLY_确保安全|r
.target Windcaller Proudhorn
step
#phase 4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比提克斯·斯巴格|r, |cRXP_FRIENDLY_诺格·斯巴格|r
.turnin 8278 >>交任务: |cRXP_FRIENDLY_诺格的最后一线希望|r
.goto Silithus,51.80,38.51
.accept 8282 >>接任务: |cRXP_LOOT_诺格的背包|r
.goto Silithus,51.62,38.50
.target Beetix Ficklespragg
.target Noggle Ficklespragg
step
#phase 4
.goto Silithus,49.20,34.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
.turnin 8304 >>交任务: |cRXP_FRIENDLY_亲爱的纳塔莉亚|r
.target Commander Mar'alith
step
#phase 4
#completewith LexiconChapter2
>>杀死|cRXP_ENEMY_Twilight邪教分子|r。掠夺他们的|cRXD_Loot_加密的Twilight文本|r
>>|cRXP_ENEMY_暮光之城守护者|r|cRXP_WARN_，|r|cRXP_ENEMY_Overlords|r |cRXP_WARN_and|r |c RXX_ENEMY_Masters|r |C RXP_WARN_具有非常高的爆发潜力|r
.collect 20404,10,8323,1 
.mob Twilight Stonecaller
.mob Twilight Avenger
.mob Twilight Geolord
.mob Twilight Flamereaver
.mob Twilight Master
.mob Twilight Overlord
.mob Twilight Marauder
step
#phase 4
.goto Silithus,40.86,42.22
>>杀死|cRXP_ENEMY_暮光之城守护者哈文思|r。掠夺他的|cRXD_Loot_暮光之光词典章节|r
>>他在Cenarion Hold西南部的营地东侧巡逻
>>|cRXP_WARN_小心，他的爆发力很高|r
.complete 8279,3 
.unitscan Twilight Keeper Havunth
step
#phase 4
.goto Silithus,26.34,36.62
>>杀死|cRXP_ENEMY_暮光之城守护者Mayna|r。为她掠夺她|cRXD_Loot_暮光之夜词典章节|r
>>她在Cenarion Hold西面的营地巡逻
>>|cRXP_WARN_小心，她有心灵尖叫（瞬间恐惧）|r
.complete 8279,1 
.unitscan Twilight Keeper Mayna
step
#phase 4
#label LexiconChapter2
.goto Silithus,16.08,86.37
>>杀死|cRXP_ENEMY_暮光之城守护者Exeter|r。掠夺他的|cRXD_Loot_暮光之光词典章节|r
>>他在营地的后面，离Cenarion Hold西南/Ahn'Qiraj西北很远
>>|cRXP_WARN_小心，他有眩晕和致命一击|r
.complete 8279,2 
.unitscan Twilight Keeper Exeter
step
#phase 4
#completewith next
>>织机|cRXP_Loot_Noggle的挎包|r
.complete 8282,1 
.unitscan Deathclasp
.group
step
#phase 4
.goto Silithus,45.00,92.20
>>用|cRXP_ENEMY_Deathclack|r拆分并拉动巡逻的附加值。将它们放风筝，直到|cRXX_ENEMY_deathclack| r重置，然后杀死它们
>>杀死|cRXP_ENEMY_Deathclack|r。抢夺他的|cRXX_Loot_Picker|r。尽一切可能防止他进入近战范围
>>|cRXP_WARN_这个任务暴民攻击力很强，有一个可以眩晕8秒的减毒效果。如果你不熟悉/没有准备好，这个任务是极其危险的；必要时跳过|r
.complete 8283,1 
.mob Stonelash Flayer
.unitscan Deathclasp
.group 3
step
#phase 4
.goto Silithus,44.50,91.40
>>地面上的织机|cRXP_Loot_Noggle的挎包|r
.complete 8282,1 
.unitscan Deathclasp
.group
step
#phase 4
.goto Silithus,44.50,91.40
>>地面上的织机|cRXP_Loot_Noggle的挎包|r
>>|cRXP_WARN_小心不要激怒死亡扣|r
.complete 8282,1 
.unitscan Deathclasp
.solo
step
#phase 4
.goto Silithus,67.20,69.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit|r
.turnin 8279 >>交任务: |cRXP_FRIENDLY_暮光词典|r
.accept 8287 >>接任务: |cRXP_LOOT_摆脱困境|r
.accept 8323 >>接任务: |cRXP_LOOT_真正的信徒|r
.turnin 8323 >>交任务: |cRXP_FRIENDLY_真正的信徒|r
.target Hermit Ortell
step
.goto Silithus,67.20,69.24
.goto Silithus,47.21,37.93,30 >>|cRXP_WARN_跳到洞穴里一把立着的火把上。通过注销并重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=bFS4TUbJse8&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
step
#phase 4
.goto Silithus,51.62,38.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺格·斯巴格|r
.turnin 8282 >>交任务: |cRXP_FRIENDLY_诺格的背包|r
.target Noggle Ficklespragg
step
#phase 4
.goto Silithus,50.80,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vish|r
.turnin 8283 >>交任务: |cRXP_FRIENDLY_通缉：死亡弯钩|r
.target Vish Kozus
.isQuestComplete 8283
.group
step
#phase 4
.goto Silithus,49.20,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
.turnin 8287 >>交任务: |cRXP_FRIENDLY_摆脱困境|r
.target Commander Mar'alith
step
#phase 4
.loop 25,Silithus,38.8,45.4,38.2,43.8,38.8,42.6,40.4,42.4,41.4,45.6,40.0,46.2,38.8,45.4
>>杀死|cRXP_ENEMY_Twilight邪教分子|r。掠夺他们的|cRXD_Loot_加密的Twilight文本|r
>>|cRXP_ENEMY_暮光之城守护者|r|cRXP_WARN_，|r|cRXP_ENEMY_Overlords|r |cRXP_WARN_and|r |c RXX_ENEMY_Masters|r |C RXP_WARN_具有非常高的爆发潜力|r
.complete 8318,1 
.mob Twilight Stonecaller
.mob Twilight Avenger
.mob Twilight Geolord
.mob Twilight Flamereaver
.mob Twilight Master
.mob Twilight Overlord
.mob Twilight Marauder
step
#phase 4
.goto Silithus,48.57,37.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor|r
.turnin 8318 >>交任务: |cRXP_FRIENDLY_秘密交流|r
.target Bor Wildmane
step
.goto Silithus,48.69,36.67,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁克·驯风者|r
.fly Un'Goro >>飞到Un'Goro火山口
.target Runk Windtamer
.zoneskip Un'Goro Crater
step
#hardcoreserver
.goto Un'Goro Crater,44.65,8.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3962 >>交任务: |cRXP_FRIENDLY_结伴而行|r 
.target Linken
.isQuestComplete 3962
.group
step
#completewith end
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Tanaris >>前往: 塔纳利斯
.target Gryfe
.zoneskip Tanaris
step
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 4504 >>交任务: |cRXP_FRIENDLY_极度粘稠的沥青|r
.target Tran'rek
step
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4507 >>交任务: |cRXP_FRIENDLY_捕捉皇后|r
.accept 4509 >>接任务: |cRXP_LOOT_临危不惧|r
.target Alchemist Pestlezugg
.isQuestComplete 4507
.group
step
#label end
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4509 >>接任务: |cRXP_LOOT_临危不惧|r
.target Alchemist Pestlezugg
.isQuestTurnedIn 4507
.group
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#version 15
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 50-60
#name 59-60冬泉/Silithus II
step
#completewith next
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Un'Goro Crater >>飞到Un'Goro火山口
.target Bullkrek Ragefist
.zoneskip Un'Goro Crater
step
#hardcoreserver
.goto Un'Goro Crater,44.65,8.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3962 >>交任务: |cRXP_FRIENDLY_结伴而行|r
.target Linken
.isQuestComplete 3962
.group
step
#completewith tanaris
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Tanaris >>前往: 塔纳利斯
.target Gryfe
.zoneskip Tanaris
step
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4507 >>交任务: |cRXP_FRIENDLY_捕捉皇后|r
.accept 4509 >>接任务: |cRXP_LOOT_临危不惧|r
.target Alchemist Pestlezugg
.isQuestComplete 4507
.group
step
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4509 >>接任务: |cRXP_LOOT_临危不惧|r
.target Alchemist Pestlezugg
.isQuestTurnedIn 4507
.group
step
#label tanaris
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 4504 >>交任务: |cRXP_FRIENDLY_极度粘稠的沥青|r
.target Tran'rek
step
#completewith next
.hs >>Hearth to Everlook公司公司
.use 6948
.zoneskip Winterspring
step
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,60.88,37.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.turnin 5163 >>交任务: |cRXP_FRIENDLY_雪怪计划！|r
.target Umi Rumplesnicker
step << Druid
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << !Druid
#label moonglade
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Moonglade>>Fly to Moonglade
.target Yugrek
.zoneskip Moonglade
step
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿姆伯尔|r
.turnin 6844 >>交任务: |cRXP_FRIENDLY_档案管理员阿姆伯尔|r
.accept 6845 >>接任务: |cRXP_WARN_发现过去的秘密|r
.target Umber
.isQuestTurnedIn 1126
.group
step
.goto Moonglade,51.68,45.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 6845 >>交任务: |cRXP_FRIENDLY_发现过去的秘密|r
.target Rabine Saturna
.isQuestTurnedIn 1126
.group
step
.goto Moonglade,51.68,45.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 5527 >>交任务: |cRXP_FRIENDLY_净化之匣|r
.target Rabine Saturna
.isQuestComplete 5527
step
.goto Moonglade,44.87,35.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿姆伯尔|r
.accept 1185 >>接任务: |cRXP_WARN_壳中的东西…|r
.turnin 1185 >>交任务: |cRXP_FRIENDLY_壳中的东西…|r
.target Umber
.isQuestTurnedIn 1126
.group
step << !Mage
.goto Moonglade,32.10,66.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法斯托恩|r
.fly Orgrimmar>>飞往奥格瑞玛
.target Faustron
.zoneskip Orgrimmar
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step
.goto Orgrimmar,56.50,46.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.turnin 4509 >>交任务: |cRXP_FRIENDLY_临危不惧|r
.accept 4511 >>接任务: |cRXP_LOOT_临危不惧|r
.target Zilzibin Drumlore
.isQuestTurnedIn 4507
.group
step
#ah
.goto Orgrimmar,63.62,51.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱什纳·刺藤|r
>>|cRXP_WARN_禁用任何其他自动提交信誉项目的插件，否则你稍后会被告知再次购买布料|r
.turnin 7826 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7827 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7831 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7824 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
.target Rashona Straglash
step
#ah
#completewith next
.goto Orgrimmar,50.68,70.37,0
>>如果您早些时候买了足够的布料，请转到邮箱并取回以下物品：
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#ah
.goto Orgrimmar,37.69,87.92
>>|cRXP_WARN_禁用任何其他自动提交信誉项目的插件，否则你稍后会被告知再次购买布料|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维赫纳|r
.turnin 7833 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7834 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7835 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7836 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
.target Vehena
step
.goto Orgrimmar,49.70,69.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁斯|r
.turnin 4511 >>交任务: |cRXP_FRIENDLY_临危不惧|r
.target Karus
.isQuestTurnedIn 4507
.group
step
.goto Orgrimmar,54.10,68.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grysha|r
.home >>将您的炉石设置为Orgrimmar
.target Innkeeper Grysha
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
step << !Mage
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step
.goto Undercity,48.50,71.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师科雷|r
.turnin 4642 >>交任务: |cRXP_FRIENDLY_融合软泥怪|r
.target Chemist Cuely
step
#completewith next
.goto Tirisfal Glades,61.9,59.1
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Stonard>>飞往斯托纳德
.target Thysta
.zoneskip Swamp of Sorrows
step
.goto Swamp of Sorrows,34.29,66.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 2681 >>接任务: |cRXP_WARN_禁锢我们的石头|r
.target Fallen Hero of the Horde
step
#completewith Stonesthat
+将|cRXP_ENEMY_Servants|r拖动到附近的|cRX_PICK_Stone of Binding|r，然后使其达到1%的生命值
+|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Stone of Binding|r when the |cRXP_ENEMY_Servant|r becomes banished, then finish them off
step
#completewith next
>>杀死|cRXP_ENEMY_Allistarj|r的仆人
.complete 2681,3,1 
.mob Servant of Allistarj
step
.goto Blasted Lands,43.6,11.8,50,0
.goto Blasted Lands,41.6,14.2,50,0
.goto Blasted Lands,49.4,43.6
>>杀死|cRXP_ENEMY_Grol|r的仆人
.complete 2681,2,1 
.mob Servant of Grol
step
#completewith next
.goto Blasted Lands,43.4,40.4,50,0
.goto Blasted Lands,41.6,39.6,50,0
.goto Blasted Lands,38.6,34.0
>>杀死|cRXP_ENEMY_Allistarj|r的仆人
.complete 2681,3,1 
.mob Servant of Allistarj
step
.loop 25,Blasted Lands,53.2,59.6,51.8,56.8,53.8,53.6,55.6,51.0,60.0,50.6,62.2,51.6,63.8,55.8,62.2,51.6,60.0,50.6,55.6,51.0,53.8,53.6,51.8,56.8,53.2,59.6
>>杀死|cRXP_ENEMY_Razelikh的仆人|r
.complete 2681,1 
.mob Servant of Razelikh
step
#label Stonesthat
.goto Blasted Lands,64.6,46.6,50,0
.goto Blasted Lands,64.0,40.6,50,0
.goto Blasted Lands,64.8,34.6
>>杀死|cRXP_ENEMY_Sevine的仆人|r
.complete 2681,4,1 
.mob Servant of Sevine
step
#completewith next
.zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
.goto Blasted Lands,52.76,2.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2681 >>交任务: |cRXP_FRIENDLY_禁锢我们的石头|r
.accept 2702 >>接任务: |cRXP_WARN_古代英雄|r
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.29,66.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2702 >>交任务: |cRXP_FRIENDLY_古代英雄|r
.accept 2701 >>接任务: |cRXP_WARN_古代英雄|r
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.29,66.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2701 >>交任务: |cRXP_FRIENDLY_古代英雄|r
.target Fallen Hero of the Horde
step
.hs >>前往: 奥格瑞玛
.use 6948
.zoneskip Orgrimmar
step
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Azshara >>Fly to Azshara
.target Doras
.zoneskip Azshara
step
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
.xp 60 >>升级到60级
]])
