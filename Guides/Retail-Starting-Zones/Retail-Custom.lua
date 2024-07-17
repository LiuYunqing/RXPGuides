RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup 首次演练（战役）60-70
#groupweight 10
#name 2） 奥恩阿兰平原战役
#displayname Chapter 2 - Ohn'ahran Plains Campaign
#next 3） Azure Span活动
step
#completewith Ohn'ahran Plains Campaign
+欢迎使用RestedXP的Ohn'ahran平原指南。
step
#title Dragon Glyph
#completewith next
.goto 2023,78.40,21.18,10 >>飞越空中的龙雕
step
#label Ohn'ahran Plains Campaign
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,77.72,23.93
.turnin 65779 >>交任务: |cRXP_FRIENDLY_深入平原|r
.accept 65780 >>接任务: |cRXP_WARN_证明自我|r
.target Scout Tomul
step
>>杀死|cff00ecffBlazing Proto Dragon|r
.goto 2023,78.50,27.21
.complete 65780,1 
step
.goto 2023,78.63,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65780 >>Turn in Proving Oneself
.accept 65783 >>接任务: |cRXP_WARN_营火欢迎你|r
.target Scout Tomul
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,85.31,25.41
.turnin 65783 >>Turn in Welcome at Our Fire
.accept 70174 >>接任务: |cRXP_WARN_席卡尔|r
.target Scout Tomul
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,85.74,25.32
.skipgossip 181217,1
.complete 70174,1 
.target Sansok Khan
step
.goto 2023,85.73,25.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.turnin 70174 >>Turn in The Shikaar
.accept 65802 >>接任务: |cRXP_WARN_旅途供给|r
.accept 65801 >>接任务: |cRXP_WARN_自报家门|r
.target Sansok Khan
step
#title Supply 1
.goto 2023,86.17,25.32
.complete 65802,2,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru or Belika
.goto 2023,85.76,26.59
.skipgossip
.complete 65801,2 
.target Aru
step
#title Pod 1
.goto 2023,85.51,26.88
.complete 65802,1,1 
step
#title Pod 2
.goto 2023,84.98,26.63
.complete 65802,1,2 
step
#title Pod 3
.goto 2023,84.59,27.08
.complete 65802,1,3 
step
#title Supply 2
.goto 2023,84.31,27.19
.complete 65802,2,2 
step
#title Pod 4
.goto 2023,84.29,25.77
.complete 65802,1,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Nuqut
.goto 2023,83.93,25.88
.skipgossip 1
.complete 65801,3 
.target Beastmaster Nuqut
step
#title Pod 5
.goto 2023,83.76,25.09
.complete 65802,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Ehri and Farrier Roscha
.accept 65950 >>接任务: |cRXP_WARN_鳄鱼人窃贼|r
.goto 2023,84.40,25.01
.accept 65951 >>接任务: |cRXP_WARN_独行供货商|r
.goto 2023,84.34,25.00
.target Apprentice Ehri
.target Farrier Roscha
step
#completewith next
+|cfff78300尽可能避免杀死萨满。我们稍后需要它们|r
step
>>杀死该区域的|cff00ecffMudfines|r。掠夺物资
.goto 2023,82.30,28.97,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.60,30.82
.complete 65950,1 
step
>>Follow the arrow
.goto 2023,80.65,30.87
.complete 65951,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,80.56,30.74
.turnin 65951 >>Turn in Sole Supplier
.turnin 65950 >>Turn in Thieving Gorlocs
.accept 65953 >>接任务: |cRXP_WARN_神谕之陨|r
.accept 65954 >>接任务: |cRXP_WARN_释放猎犬|r
.accept 65955 >>接任务: |cRXP_WARN_半人马最好的朋友|r
.target Khasar
step
>>Open the cage
.goto 2023,80.56,30.74
.complete 65955,1 
step
#completewith OhnahranPlainsReleaseTheHounds4
>>杀死|cff00ecffMudfin萨满|r。掠夺他们的图腾。
.complete 65953,1 
step
#title Bakar Collar 1
.goto 2023,80.63,30.69
.complete 65954,2,1 
step
#title Bakar Freed 1
>>Open the cage
.goto 2023,81.16,29.77
.complete 65954,1,1 
step
#title Bakar Freed 2
>>Open the cage
.goto 2023,81.43,29.69
.complete 65954,1,2 
step
#title Bakar Freed 3
>>Open the cage
.goto 2023,82.22,30.27
.complete 65954,1,3 
step
#title Bakar Collar 2
.goto 2023,82.22,30.43
.complete 65954,2 
step
#label OhnahranPlainsReleaseTheHounds4
#title Bakar Freed 4
>>Open the cage
.goto 2023,82.36,30.56
.complete 65954,1,4 
step
#sticky
#label OhnahranPlainsTheOracull
#title Kill Mudfin Shamans
>>杀死|cff00ecffMudfin萨满|r。掠夺他们的图腾。
.goto 2023,81.74,31.64,15,0
.goto 2023,81.99,32.17,15,0
.goto 2023,82.36,32.58,15,0
.goto 2023,81.73,30.81,15,0
#loop
.line 2023,81.74,31.64,81.99,32.17,82.36,32.58,81.73,30.81
.goto 2023,81.74,31.64,18,0
.goto 2023,81.99,32.17,18,0
.goto 2023,82.36,32.58,18,0
.goto 2023,81.73,30.81,18,0
.complete 65953,1 
step
#title Bakar Freed 5
>>Open the cage
.goto 2023,81.25,31.70
.complete 65954,1 
step
#requires OhnahranPlainsTheOracull
#completewith next
.goto 2023,83.08,32.06,10 >>进入洞穴
step
#requires OhnahranPlainsTheOracull
>>打开笼子等待卡萨尔
.goto 2023,83.38,32.40
.complete 65955,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.43,32.33
.turnin 65955 >>Turn in A Centaur's Best Friend
.turnin 65953 >>Turn in The Ora-cull
.turnin 65954 >>Turn in Release the Hounds
.accept 65952 >>接任务: |cRXP_WARN_[A Chief of Legends]|r
.target Khasar
step
#completewith next
.goto 2023,83.08,32.06,10 >>离开洞穴
step
#sticky
#label OhnahranPlainsChiefofLegends
>>杀死|cff00ecff首领Grrlgllmesh|r
.goto 2023,82.10,31.44
.complete 65952,1 
step
>>掠夺Grrlgllmesh首领的奖章并使用它
.collect 191127,1,66005,1
.goto 2023,82.05,31.45
.accept 66005 >>接任务: |cRXP_WARN_失落友人勋章|r
step
#requires OhnahranPlainsChiefofLegends
#completewith next
.goto 2023,83.08,32.06,10 >>进入洞穴
step
#requires OhnahranPlainsChiefofLegends
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.44,32.33
.turnin 65952 >>Turn in A Chief of Legends
.turnin 66005 >>Turn in Medallion of a Fallen Friend
.accept 65949 >>接任务: |cRXP_WARN_独身修理匠|r
.accept 66006 >>接任务: |cRXP_WARN_返回罗莎身边|r
.target Khasar
step
>>Pick up the supplies
.goto 2023,83.51,32.14
.complete 66006,1 
step
#completewith next
.goto 2023,83.08,32.06,10 >>离开洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回Timberstep前哨。与Farrier Roscha交谈
.goto 2023,84.40,25.02
.turnin 65949 >>Turn in The Sole Mender
.turnin 66006 >>Turn in Return to Roscha
.target Farrier Roscha
step
#title Supply 3
.goto 2023,84.34,24.91
.complete 65802,2,3 
step
#title Supply 4
.goto 2023,84.37,23.12
.complete 65802,2 
step
.goto 2023,85.63,20.85
.skipgossip 1
.complete 65801,1 
step
.goto 2023,84.69,22.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul inside the hut
.turnin 65801 >>Turn in Supplies for the Journey
.turnin 65802 >>Turn in Supplies for the Journey
.accept 65803 >>接任务: |cRXP_WARN_前往城市|r
.target Scout Tomul
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,83.15,23.74
.skipgossip
.complete 65803,1 
.target Scout Tomul
step
>>你可以和他一起骑行，听他的故事，或者直接飞到第一站。
.goto 2023,75.57,31.84
.complete 65803,3 
step
.goto 2023,75.66,31.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65803 >>Turn in Toward the City
.accept 65804 >>接任务: |cRXP_WARN_觅食即竞争|r
.target Scout Tomul
step
>>与神秘爪印互动
.goto 2023,76.73,31.89
.accept 70185 >>接任务: |cRXP_WARN_神奇野兽在哪里|r
step
#completewith OhnahranPlainsMysteriousBeast
>>杀死该区域的|cff00ecffbeas|r。掠夺他们的肉
*The best source of meat are Mammoths and Stomphoofs.
.complete 65804,1 
step
#completewith next
.goto 2023,77.78,35.39,10 >>进入洞穴
step
#label OhnahranPlainsMysteriousBeast
>>杀死|cff00ecffKonkhular |r。掠夺他的毛皮
.goto 2023,78.22,35.24
.complete 70185,1 
.unitscan Konkhular
step
#completewith next
.goto 2023,77.78,35.39,10 >>离开洞穴
step
>>杀死该区域的|cff00ecffbeas|r。掠夺他们的肉
*The best source of meat is Mammoths.
.goto 2023,79.22,30.63,40,0
.goto 2023,77.89,29.57,40,0
.goto 2023,74.62,29.06,40,0
.goto 2023,76.08,34.27,40,0
.goto 2023,77.47,32.21,40,0
.goto 40,2023,79.22,30.63,77.89,29.57,74.62,29.06,76.08,34.27,77.47,32.21
.complete 65804,1 
step
#requires OhnahranPlainsForFoodandRivalry
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,75.67,31.68
.turnin 65804 >>Turn in For Food and Rivalry
.turnin 70185 >>Turn in Mysterious Beast
.accept 65940 >>接任务: |cRXP_WARN_一路颠簸|r
.target Scout Tomul
step
>>你可以和他一起骑行，听他的故事，或者直接飞到第二站。
.goto 2023,70.07,37.84
.complete 65940,2 
step
.goto 2023,69.97,37.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65940 >>Turn in By Broken Road
.accept 65805 >>接任务: |cRXP_WARN_与欧恩哈拉沟通|r
.target Ohn Seshteng
step
#completewith OhnahranPlainsConnectiontoRiverReeds
+遵循循环。不要完成此步骤
.goto 2023,68.51,40.13,30,0
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
#completewith OhnahranPlainsConnectiontoRiverReeds
>>杀死|cff00ecffMudwalker Salamanthers|r。偷走他们的心
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
#completewith next
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
>>单击|cff00ecffJadethroat Mallard|r
.goto 2023,69.94,37.66,0,0
.complete 65805,2 
step
#label OhnahranPlainsConnectiontoRiverReeds
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
#completewith next
+遵循循环。不要完成此步骤
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
>>杀死|cff00ecffMudwalker Salamanthers|r。偷走他们的心
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
.goto 2023,69.96,37.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65805 >>Turn in Connection to Ohn'ahra
.accept 66848 >>接任务: |cRXP_WARN_风之征兆|r
.target Ohn Seshteng
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,69.96,37.96
.skipgossip 184595,2
.complete 66848,1 
.target Ohn Seshteng
step
>>Place the totems
.goto 2023,69.93,37.62
.complete 66848,2 
step

>>Wait
.goto 2023,69.93,37.62
.complete 66848,3 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng and Sansok Khan
.turnin 66848 >>Turn in Omens on the Wind
.goto 2023,69.96,37.94
.accept 65806 >>接任务: |cRXP_WARN_马鲁凯|r
.goto 2023,70.02,38.01
.target Ohn Seshteng
.target Sansok Khan
step
>>你可以乘坐Stout Riding Bakar，听故事，或者直接飞往Marrukal。
.goto 2023,61.84,39.83
.complete 65806,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 65806 >>Turn in Maruukai
.accept 66018 >>接任务: |cRXP_WARN_诺库德氏族|r
.accept 66017 >>接任务: |cRXP_WARN_欧恩伊尔氏族|r
.accept 66016 >>接任务: |cRXP_WARN_提莱氏族|r
.target Sansok Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Windsage Kven
.goto 2023,62.18,36.41
.accept 70337 >>接任务: |cRXP_WARN_闪烬哨站|r
.target Windsage Kven
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66017 >>Turn in Clan Ohn'ir
.accept 66020 >>接任务: |cRXP_WARN_兆示焚香|r
.target Ohn Seshteng
step
#completewith next
.goto 2023,62.84,34.34,10 >>Leave the building
step
#title Sweetsuckle Bloom 1
>>从地上捡起来
.collect 191160,1,66020,1
.goto 2023,63.42,33.82
step
#title Sweetsuckle Bloom 2
>>从地上捡起来
.collect 191160,2,66020,1
.goto 2023,63.77,34.42
step
#title Sweetsuckle Bloom 3
>>从地上捡起来
.collect 191160,3,66020,1
.goto 2023,63.57,34.73
step
#title Sweetsuckle Bloom 4+5
>>从地上捡起来
.collect 191160,5,66020,1
.goto 2023,63.39,34.88
step
>>使用您包中的|T458235:0|t[Steetsuckle Bloom]
.use 191160
.goto 2023,62.82,33.69
.complete 66020,1 
step
>>与香炉互动
.goto 2023,62.82,33.69
.complete 66020,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66020 >>Turn in Omens and Incense
.target Ohn Seshteng
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66016 >>Turn in Clan Teerai
.accept 66019 >>接任务: |cRXP_WARN_光耀先祖|r
.target Quariin Dotur
step
>>拿起生野味
.goto 2023,59.39,37.82
.complete 66019,1 
step
>>Interact with the shade
.goto 2023,59.13,37.57
.complete 66019,2 
step
>>拿起香料罐
.goto 2023,59.31,37.29
.complete 66019,3 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.61
.complete 66019,4 
step
>>拿起一篮香料
.goto 2023,59.39,37.37
.complete 66019,5 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,59.16,37.57
.complete 66019,6 
step
>>拿起一锅香料
.goto 2023,59.05,37.88
.complete 66019,7 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.58
.complete 66019,8 
step
>>Pick up the Game Meat
.goto 2023,59.14,37.58
.complete 66019,9 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,58.90,37.26
.complete 66019,10 
step
>>Interact with the shade
.goto 2023,59.16,37.10
.complete 66019,11 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66019 >>Turn in Honoring Our Ancestors
.target Qariin Dotur
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul and Guard Bahir
.turnin 66018 >>Turn in Clan Nokhud
.goto 2023,60.38,40.69
.accept 66021 >>接任务: |cRXP_WARN_讨厌的外来者|r
.goto 2023,60.31,40.75
.target Scout Tomul
.target Guard Bahir
step
>>杀死|cff00ecffNokhud战斗机|r
.goto 2023,58.67,42.21,35,0
.goto 2023,59.83,42.96,35,0
.goto 2023,59.60,41.79
.complete 66021,1 
step
.goto 2023,61.98,41.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Tirren
.accept 65837 >>接任务: |cRXP_WARN_松木的困局|r
.target Beastmaster Tirren
step
.goto 2023,62.43,41.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 66021 >>Turn in Unwelcome Outsider
.target Scout Tomul
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru who is following you
.goto 2023,62.43,41.71
.accept 66969 >>接任务: |cRXP_WARN_平原氏族|r
.target Aru
step
#completewith next
.goto 2023,62.80,40.64
.home >>将您的炉石设置为Maruukai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.complete 66969,1 
.target Sansok Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.gossipoption 56528 
.gossipoption 56515 
.gossipoption 56537 
.gossipoption 56549 
.gossipoption 56554 
.goto 2023,61.43,39.52
.complete 66969,2 
.target Sansok Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 66969 >>Turn in Clans of the Plains
.target Sansok Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等着吉米萨，和他说话
.goto 2023,61.03,40.43
.accept 66948 >>接任务: |cRXP_WARN_使者驾到|r
.target Gemisath
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath
.goto 2023,61.03,40.44
.skipgossip 194927,4
.complete 66948,1 
.target Gemisath
step
.goto 2023,61.03,40.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath
.turnin 66948 >>交任务: |cRXP_FRIENDLY_使者|r's Arrival
.accept 66022 >>接任务: |cRXP_WARN_尊可汗|r
.target Gemisath
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato on the upper level
.goto 2023,60.29,37.89
.skipgossip 186942,1
.complete 66022,1 
.target Khansguard Akato
step
.goto 2023,60.35,38.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato on the upper level
.turnin 66022 >>Turn in The Khanam Matra
.accept 66023 >>接任务: |cRXP_WARN_破约弃盟|r
.target Khansguard Akato
step
.goto 2023,59.52,38.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.accept 66024 >>接任务: |cRXP_WARN_绝命断后|r
.target Scout Tomul
step
#completewith next
>>杀死|cff00ecffNokhud背叛者|r
.complete 66023,1 
step
>>杀死|cff00ecffGuard Bahir|r
.goto 2023,58.06,39.37
.complete 66024,1 
step
>>杀死|cff00ecffNokhud背叛者|r
.goto 2023,58.85,39.09,30,0
.goto 2023,60.12,37.66,30,0
.goto 2023,62.02,39.35,30,0
.goto 2023,60.60,40.48,30,0
.goto 2023,60.12,37.66
.complete 66023,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato and Khanam Matra Sarest |cfff78300on top of the tower|r
.goto 2023,60.36,38.05
.turnin 66023 >>Turn in Trucebreakers
.turnin 66024 >>Turn in Covering Their Tails
.accept 66025 >>接任务: |cRXP_WARN_诺库德威胁|r
.timer 19,Roleplay Duration
.target Khansguard Akato
.target Khanam Matra Sarest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest after a short roleplay
.goto 2023,60.00,37.48
.turnin 66025 >>Turn in The Nokhud Threat
.accept 66201 >>接任务: |cRXP_WARN_战争之蹄|r
.target Khanam Matra Sarest
step
.pve
.goto 2023,63.47,48.63,10,0
.goto 2023,63.03,48.54
>>在小瀑布下的洞穴中杀死|cff00ecffSunscale Behemoth|r
.accept 69837 >>接任务: |cRXP_WARN_赤鳞巨兽|r
.complete 69837,1 
step
#completewith next
+使用你的龙骑坐骑飞往Jebotai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Jebotai
.goto 2023,41.89,61.80
.turnin 66201 >>Turn in Hooves of War
.accept 66222 >>接任务: |cRXP_WARN_风暴前的宁静|r
.target Khansguard Jebotai
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用枪鞋。激活NPC旁边的RP Walk，与他们交谈
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.goto 2023,41.62,56.75
.accept 66688 >>接任务: |cRXP_WARN_风之迹印|r
.target Elder Nazuun
step
.xp 65.5,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.goto 2023,41.62,56.75
.accept 66687 >>接任务: |cRXP_WARN_猛兽之地|r
.target Elder Nazuun
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quartermaster Gensai
.goto 2023,40.72,56.35
.skipgossip
.complete 66222,2 
.target Quartermaster Gensai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击通缉板
.goto 2023,39.56,56.43
.accept 71027 >>接任务: |cRXP_WARN_通缉：雷鸣者玛拉纳尔|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Hojin
.goto 2023,39.44,55.32
.skipgossip
.complete 66222,3 
.target Khansguard Hojin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbalist Agura
.goto 2023,38.49,57.41
.skipgossip
.complete 66222,1 
.target Herbalist Agura
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Khenyug
.goto 2023,37.57,59.45
.skipgossip
.complete 66222,4 
.target Scout Khenyug
step
.goto 2023,41.89,61.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Jebotai
.turnin 66222 >>Turn in The Calm Before the Storm
.accept 70229 >>接任务: |cRXP_WARN_秘术师博库|r
.target Khansguard Jebotai
step
.goto 2023,36.81,57.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 70229 >>Turn in Boku the Mystic
.accept 66254 >>接任务: |cRXP_WARN_悲观的秘术师|r
.target Initiate Boku
step
#title Totem 1
>>Place the totem
.goto 2023,36.71,57.12
.complete 66254,1,1 
step
#title Totem 2
>>Place the totem
.goto 2023,36.66,57.72
.complete 66254,1,2 
step
#title Totem 3
>>Place the totem
.goto 2023,37.11,57.85
.complete 66254,1,3 
step
#title Totem 4
>>Place the totem
.goto 2023,37.20,57.26
.complete 66254,1 
step
.goto 2023,36.81,57.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66254 >>Turn in Pessimistic Mystic
.accept 66224 >>接任务: |cRXP_WARN_秘术师的奥秘|r
.target Initiate Boku
step
>>飞往霹雳马拉那。杀了他。抢他的盘子
.goto 2023,42.26,47.13
.complete 71027,1 
.unitscan Mara'nar
step
.isOnQuest 66687
>>杀死敏捷的Slyvern|r。掠夺他们的爪子
.goto 2023,43.28,46.82,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,41.70,44.86,30,0
.goto 2023,41.38,46.80,30,0
#loop
.line 2023,41.70,44.86,42.87,44.07,43.28,46.82,41.38,46.80
.goto 2023,41.70,44.86,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,43.28,46.82,30,0
.goto 2023,41.38,46.80,30,0
.complete 66687,2 
step
.isOnQuest 66687
#completewith next
.goto 2023,43.53,47.95,20 >>进入洞穴
step
.isOnQuest 66687
>>杀死洞穴里的蜘蛛和蛋。把它们洗劫一空
.goto 2023,44.04,48.47,20,0
.goto 2023,43.96,49.31,20,0
.goto 2023,43.65,50.35
.complete 66687,1 
step
#completewith next
.goto 2023,43.53,47.95,20 >>离开洞穴
step
#completewith next
.goto 2023,45.19,48.66,10 >>飞起来，进入斯卡拉的洞穴
step
.goto 2023,44.91,49.21
.complete 70783,1 
step
>>捡起地上的蕨类植物孢子、羽毛和空心芦苇
.goto 2023,44.32,54.34,20,0
.goto 2023,45.56,52.79,20,0
.goto 2023,46.34,53.01,20,0
.goto 2023,46.94,51.43,20,0
.goto 2023,49.15,52.45
.complete 66688,1 
step
.goto 2023,49.34,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与提供船只互动
.turnin 66688 >>Turn in Signs of the Wind
step
#completewith next
.accept 70374 >>接任务: |cRXP_WARN_蒙福的希米亚|r
.gossipoption 56476 >>Talk to Himia, The Blessed
.goto 2023,49.34,49.41
step
>>杀死产卵|cff00ecffElements|r
.goto 2023,49.34,49.41
.complete 70374,1 
step
.isOnQuest 66687
>>杀死雷暴。掠夺它们的鳞片
.goto 2023,50.57,50.14,30,0
.goto 2023,51.33,48.78,30,0
.goto 2023,51.08,47.44,30,0
.goto 2023,50.57,50.14
.complete 66687,3 
step
.goto 2023,41.63,56.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.turnin -66687 >>Turn in Land of the Apex
.turnin 70374 >>Turn in Himia, the Blessed
.target Elder Nazuun
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞往Khansguard Jebotai并与他交谈
.goto 2023,41.89,61.80
.turnin 71027 >>Turn in WANTED: Mara'nar the Thunderous
.target Khansguard Jebotai
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用枪鞋。激活NPC旁边的RP Walk，与他们交谈
step
>>Follow the arrow
.goto 2023,44.33,61.78
.complete 66224,1 
step
>>与博库的物品互动
.goto 2023,44.55,61.94
.skipgossip
.complete 66224,2 
step
>>Follow the arrow
.goto 2023,46.35,63.15
.complete 66224,3 
step
>>与不明半人马互动
.goto 2023,46.52,63.26
.skipgossip
.complete 66224,4 
step
>>Follow the arrow
.goto 2023,49.09,63.44
.complete 66224,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku and Tigari Khan
.turnin 66224 >>Turn in Mystic Mystery
.goto 2023,49.31,63.22
.accept 70195 >>接任务: |cRXP_WARN_闪电强夺|r
.accept 66225 >>接任务: |cRXP_WARN_囤积图腾|r
.goto 2023,49.36,63.14
.target Initiate Boku
.target Tigari Khan
step
#completewith next
>>杀死|cff00ecffNokhud神秘猎人|r和|cff0ecffNoKhud掠夺者|r。掠夺他们的图腾
.complete 66225,1 
step
>>杀死Windbinder|r Shela。抢她的命
.goto 2023,48.90,69.03
.complete 70195,1 
.complete 70195,2 
.unitscan Shela the Windbinder
step
>>杀死|cff00ecffNokhud神秘猎人|r和|cff0ecffNoKhud掠夺者|r。掠夺他们的图腾
#loop
.line 2023,50.20,68.72,50.86,67.94,51.60,67.66,48.90,66.86,48.90,66.86
.goto 2023,50.20,68.72,20,0
.goto 2023,50.86,67.94,20,0
.goto 2023,51.60,67.66,20,0
.goto 2023,48.90,66.86,20,0
.goto 2023,48.90,66.86,20,0
.complete 66225,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tigari Khan
.goto 2023,49.36,63.14
.turnin 66225 >>Turn in Taken By Storm
.turnin 70195 >>Turn in Taken By Storm
.accept 66236 >>接任务: |cRXP_WARN_捕风捉雷|r
.target Tigari Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.goto 2023,58.11,68.97
.turnin 66236 >>Turn in Catching Wind
.accept 66257 >>接任务: |cRXP_WARN_武禽戏法|r
.accept 66256 >>接任务: |cRXP_WARN_隼派主义|r
.accept 66242 >>接任务: |cRXP_WARN_气象控制|r
.target Initiate Boku
step
#completewith OhnahranPlainsChildWagons
>>杀死|cff00ecffPrimalists|r、|cff0ecffEssences|r和|cff00 ecffInitiates|r
.goto 2023,59.95,66.08,0,0
.complete 66256,2 
.complete 66242,1 
.complete 66242,2 
step
#title Child 1 + Wagon 1
>>摧毁捆绑图腾，放置风图腾
.goto 2023,58.06,67.43
.complete 66256,1,1 
.complete 66257,1,1 
step
#title Wagon 2
>>Place a wind totem
.goto 2023,59.21,65.51
.complete 66257,1,2 
step
#title Child 2
>>摧毁捆绑图腾
.goto 2023,59.38,64.94
.complete 66256,1,2 
step
#completewith OhnahranPlainsChildWagons
>>见到她就杀了她
.goto 2023,59.90,67.02,10,0
.goto 2023,59.90,67.02,0,0
.accept 69968 >>接任务: |cRXP_WARN_普罗泽拉·风击|r
.complete 69968,1 
step
#title Child 3
>>摧毁捆绑图腾
.goto 2023,60.78,66.94
.complete 66256,1,3 
step
#title Child 4
>>摧毁捆绑图腾
.goto 2023,61.76,67.17
.complete 66256,1,4 
step
#title Wagon 3
>>Place a wind totem
.goto 2023,61.76,66.65
.complete 66257,1,3 
step
#title Child 5
.goto 2023,59.64,64.03
.complete 66256,1,5 
step
#label OhnahranPlainsChildWagons
#title Child 6 + Wagon 4
>>摧毁捆绑图腾，放置风图腾
.goto 2023,58.82,61.76
.complete 66256,1 
.complete 66257,1 
step
#sticky
#label OhnahranPlainsEagleWeatherControl
.goto 2023,58.24,64.34,25,0
.goto 2023,58.62,68.30,25,0
.goto 2023,59.95,66.08,25,0
.goto 2023,61.46,65.40,25,0
.goto 2023,59.95,66.08,0,0
.complete 66256,2 
.complete 66242,1 
.complete 66242,2 
step
>>见到她就杀了她
.goto 2023,59.90,67.02
.accept 69968 >>接任务: |cRXP_WARN_普罗泽拉·风击|r
.complete 69968,1 
.unitscan Prozela Galeshott
step
#title Dragon Glyph: Windsong Rise
.goto 2023,61.49,64.33
.achievement 16576,10 >>拿起空中的龙雕
step
#requires OhnahranPlainsEagleWeatherControl
.goto 2023,60.66,63.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66242 >>Turn in Eagle-itarian
.turnin 66256 >>Turn in Eagle-itarian
.turnin 66257 >>Turn in Fowl Sorcery
.accept 66258 >>接任务: |cRXP_WARN_不，欧恩哈拉！|r
.target Initiate Boku
step
>>杀死奥哈拉（大鸟）周围的所有暴徒。最简单的（也不是慢很多）是在航路点位置等待大型暴徒产卵
*You can skip the next cutscene
.goto 2023,61.04,64.88
.complete 66258,1 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>Wait for the roleplay
.complete 66258,2 
step
.goto 2023,61.42,62.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66258 >>Turn in Oh No, Ohn'ahra!
.accept 66259 >>接任务: |cRXP_WARN_噩耗汹涌|r
.target Initiate Boku
step
#completewith next
+乘坐你的龙骑坐骑飞往丸开
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,60.00,37.48
.skipgossip 181198,1
.complete 66259,1 
.target Khanam Matra Sarest
step
.goto 2023,60.00,37.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.turnin 66259 >>Turn in A Storm of Ill Tidings
.timer 65,Report Duration
.accept 66327 >>接任务: |cRXP_WARN_追风的人|r
.target Khanam Matra Sarest
step
#completewith next
.goto 2023,60.01,37.48
.gossipoption 107753 >>Talk to Khanam Matra Sarest. |cffffff00Skip this step if he starts talking by himself|r
step
#sticky
#label OhnahranPlainsChasingtheWind
.complete 66327,1 
step
.xp 65.25,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t忽略报告。飞到远程癌症医生Aerilyn那里和她说话
.goto 2023,65.99,25.09
.turnin 70337 >>Turn in Emberwatch
.accept 65890 >>接任务: |cRXP_WARN_奈萨扎恩废墟|r
.target Telemancer Aerilyn
step
.xp 65.25,1
#completewith OhnahranPlainsToolsoftheTirade
>>Kill mobs in the area
.accept 65892 >>接任务: |cRXP_WARN_碎焰崩毁|r
.complete 65892,1 
step
.xp 65.25,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.00,18.29
.turnin 65890 >>Turn in The Nelthazan Ruins
.accept 65893 >>接任务: |cRXP_WARN_圣物查探|r
.accept 65891 >>接任务: |cRXP_WARN_建言工具|r
.target Skyscribe Adenedal
step
.isOnQuest 65893
#completewith OhnahranPlainsToolsoftheTirade
>>杀死|cff00ecffTaraseks|r和|cff0ecffSundered暴徒|r。掠夺他们的碎片
.goto 2023,63.03,17.67,0,0
.complete 65893,1 
step
.isOnQuest 65891
#title Tool Deployed 1
>>与Waygate碎石互动
.goto 2023,63.56,17.18
.complete 65891,1,1 
step
.isOnQuest 65891
#title Tool Deployed 2
>>与Waygate碎石互动
.goto 2023,63.43,16.73
.complete 65891,1,2 
step
.isOnQuest 65891
#title Tool Deployed 3
>>与Waygate碎石互动
.goto 2023,63.50,15.10
.complete 65891,1,3 
step
.isOnQuest 65891
#title Tool Deployed 4
>>与Waygate碎石互动
.goto 2023,63.05,14.78
.complete 65891,1,4 
step
.isOnQuest 65891
#label OhnahranPlainsToolsoftheTirade
#title Tool Deployed 5
>>与Waygate碎石互动
.goto 2023,62.79,15.68
.complete 65891,1 
step
.isOnQuest 65892
#completewith next
>>Kill mobs in the area
.goto 2023,63.57,15.34,0,0
.accept 65892 >>接任务: |cRXP_WARN_碎焰崩毁|r
.complete 65892,1 
step
.isOnQuest 65893
>>杀死|cff00ecffTaraseks|r和|cff0ecffSundered暴徒|r。掠夺他们的碎片
.goto 2023,62.28,17.53,20,0
.goto 2023,62.90,17.90,20,0
.goto 2023,63.77,16.47,20,0
.goto 2023,63.57,15.34
.complete 65893,1 
step
.isOnQuest 65892
>>Kill mobs in the area
#loop
.line 2023,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.accept 65892 >>接任务: |cRXP_WARN_碎焰崩毁|r
.complete 65892,1 
step
#requires OhnahranPlainsTheSunderedAsunder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.01,18.26
.turnin -65891 >>Turn in Tools of the Tirade
.turnin -65893 >>Turn in The Relic Inquiry
.target Skyscribe Adenadal
step
#requires OhnahranPlainsChasingtheWind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,60.00,37.47
.skipgossip
.complete 66327,2 
.target Khanam Matra Sarest
step
#completewith next
+乘坐你的龙骑坐骑飞往Khanam Matra Sarest
step
#label OhnahranPlainsMeetKhananMatra
>>Follow the arrow
.goto 2023,73.04,40.54
.complete 66327,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,73.03,40.58
.turnin 66327 >>Turn in Chasing the Wind
.accept 70244 >>接任务: |cRXP_WARN_诺库德的报应|r
.target Khanam Matra Sarest
step
>>杀死暴民（5%），治愈幸存者（10%）
.goto 2023,74.91,41.13,20,0
.goto 2023,74.79,39.48,25,0
.goto 2023,76.00,41.59,20,0
.goto 2023,74.91,41.13
.complete 70244,1 
step
>>杀死|cff00ecffWarmonger Kharad|r
.goto 2023,76.14,40.87
.complete 70244,2 
.unitscan Warmonger Kharad
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
*If you can't turn in the quest, relog!
.goto 2023,76.70,40.93
.turnin 70244 >>Turn in Nokhud Can Come of This
.accept 66329 >>接任务: |cRXP_WARN_吹响号角|r
.target Khanam Matra Sarest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,76.70,40.93
.skipgossip 188068,1
.complete 66329,1 
.target Khanam Matra Sarest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,76.70,40.93
.turnin 66329 >>Turn in Blowing of the Horn
.accept 66328 >>接任务: |cRXP_WARN_绿龙坠落|r
.target Khanam Matra Sarest
step
#completewith next
+乘坐龙骑坐骑飞向青龙
step
>>Follow the arrow
.goto 2023,72.48,49.82
.complete 66328,1 
step
#completewith OhnahranPlainsGreenDragonDown
.goto 2023,72.34,50.33
.gossipoption 56207 >>Talk to Khanam Matra Sarest and fly to the next waypoint 
.timer 50,Listen
.complete 66328,2 
.target Khanam Matra Sarest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sentinel Olekk and Scout Watu
.goto 2023,81.03,58.91
.turnin -65837 >>Turn in Trouble In The Pines
.accept 66681 >>接任务: |cRXP_WARN_风暴附体|r
.accept 66680 >>接任务: |cRXP_WARN_数绒羊|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo and buy 1 Diced Meat
.goto 2023,80.64,58.76
.buy 193890,1 
.complete 66680,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wish
.goto 2023,81.03,59.53
.skipgossip
.complete 66680,2 
.target Wish
step
#completewith OhnahranPlainsCountingSheep
>>主要杀死|cff00ecffStags|r、|cff0ecffDos|r和|cff00 ecffVultures|r。避开熊
.complete 66681,1 
step
#completewith OhnahranPlainsCountingSheep
>>杀死一只|cff00ecff风暴之兽|r。为风暴之碎片掠夺它。在您的库存中单击它
.collect 194031,1,66689,1
.accept 66689 >>接任务: |cRXP_WARN_不只是石头|r
step
#title Argali Saved 1
>>在丢失的Argali上使用|T135158:0|t[Wish's Wistle]
.goto 2023,80.49,63.11
.use 193892
.complete 66680,3,1 
step
#title Argali Saved 2
>>在丢失的Argali上使用|T135158:0|t[Wish's Wistle]
.goto 2023,80.60,65.37
.use 193892
.complete 66680,3,2 
step
#title Argali Saved 3
>>在丢失的Argali上使用|T135158:0|t[Wish's Wistle]
.goto 2023,81.21,65.83
.use 193892
.complete 66680,3,3 
step
#title Argali Saved 4
>>在丢失的Argali上使用|T135158:0|t[Wish's Wistle]
.goto 2023,81.83,66.19
.use 193892
.complete 66680,3,4 
step
#label OhnahranPlainsCountingSheep
#title Argali Saved 5
>>在丢失的Argali上使用|T135158:0|t[Wish's Wistle]
.goto 2023,82.45,64.41
.use 193892
.complete 66680,3 
step
>>主要杀死|cff00ecffStags|r、|cff0ecffDos|r和|cff00 ecffVultures|r。避开熊
.goto 2023,82.39,64.69,25,0
#loop
.line 2023,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.complete 66681,1 
step
>>杀死一只|cff00ecff风暴之兽|r。为风暴之碎片掠夺它。在您的库存中单击它
.collect 194031,1,66689,1
.goto 2023,82.34,64.59
.accept 66689 >>接任务: |cRXP_WARN_不只是石头|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66680 >>Turn in Counting Sheep
.turnin 66681 >>Turn in Tempests Abound
.turnin 66689 >>Turn in More Than A Rock
.accept 66683 >>接任务: |cRXP_WARN_最后分析法|r
.target Scout Watu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Basan
.goto 2023,80.96,59.52
.skipgossip 1
.complete 66683,1 
.target Basan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo
.goto 2023,80.64,58.76
.skipgossip 2
.complete 66683,3 
.target Sondo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nakeena
.goto 2023,80.44,57.89
.skipgossip 2
.complete 66683,2 
.target Nakeena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66683 >>Turn in Last Resort Analysis
.target Scout Watu
step
#completewith OhnahranPlainsWiththeWindatOurBacks
.goto 2023,81.33,59.30
.home >>将你的炉石设置为松木柱
step
#label OhnahranPlainsGreenDragonDown
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest and Merithra
.turnin 66328 >>Turn in Green Dragon Down
.goto 2023,72.35,50.33
.accept 66344 >>接任务: |cRXP_WARN_风之助力|r
.goto 2023,72.46,50.77
.target Khanam Matra Sarest
.target Merithra
step
#completewith next
+|cfff78300如果你是一个经验丰富的龙骑者，在与格里修斯交谈5秒后下马，并使用你的龙骑坐骑到达那里|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gerithus
.goto 2023,72.31,50.70
.skipgossip
.timer 100,Flight Duration
.complete 66344,1 
.target Gerithus
step
#label OhnahranPlainsWiththeWindatOurBacks
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.goto 2023,28.26,57.69
.turnin 66344 >>Turn in With the Wind at Our Backs
.accept 70220 >>接任务: |cRXP_WARN_树影庇护所|r
.target Merithra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guard-Captain Alowen
.goto 2023,29.08,55.26
.skipgossip
.complete 70220,1 
.target Guard-Captain Alowen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Isidra
.goto 2023,30.19,55.69
.skipgossip
.complete 70220,3 
.target Isidra the Mender
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sariosa
.goto 2023,29.83,57.65
.skipgossip 1
.complete 70220,2 
.target Sariosa
step
#completewith next
>>|cfff78300如果您想使用龙骑坐骑而不是飞到维拉尼库斯，请跳过此步骤|r
.skipgossip
.goto 2023,29.28,56.44,8 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aronus who will fly you to Viranikus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Viranikus
.goto 2023,29.77,59.99
.skipgossip
.complete 70220,5 
.target Viranikus
step
.goto 2023,28.26,57.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.turnin 70220 >>Turn in Shady Sanctuary
.accept 66331 >>接任务: |cRXP_WARN_拜荒者前线|r
.target Merithra
step
#completewith next
+乘坐你的龙骑坐骑飞往贝利卡
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Belika and Boku
.skipgossip
.complete 66331,3 
.goto 2023,27.57,46.00
.complete 66331,2 
.goto 2023,25.72,44.26
.target Belika
.target Boku
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng and |cfff78300immediately leave the vehicle|r
.goto 2023,26.18,40.06
.skipgossip
.complete 66331,4 
.target Ohn Seshteng
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.goto 2023,25.63,40.52
.skipgossip
.complete 66331,5 
.target Merithra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest and Merithra
.goto 2023,25.67,40.43
.turnin 66331 >>Turn in The Primalist Front
.accept 66333 >>接任务: |cRXP_WARN_为索雷苏斯复仇|r
.target Khanam Matra Sarest
.target Merithra
step
#completewith OhnahranPlainsDeconstructAdditionalPylons
>>杀死该地区的敌人|cffffff00当你要拉很多暴徒时使用公会横幅|r
.complete 66421,1 
step
#completewith OhnahranPlainsJusticeForSelthus
*Possible Warmonger spawn points are marked on your (Mini)map
.goto 2023,24.67,41.17,0
.goto 2023,24.03,40.74,0
.goto 2023,24.21,39.85,0
.goto 2023,24.90,39.76,0
.goto 2023,24.41,38.42,0
.goto 2023,25.45,37.64,0
.complete 66333,1 
step
#title Ballista 1/3
.goto 2023,24.81,39.89
.complete 66333,2,1 
step
#title Ballista 2/3
.goto 2023,24.36,38.48
.complete 66333,2,2 
step
#label OhnahranPlainsJusticeForSelthus
#title Ballista 3/3
.goto 2023,25.44,37.74
.complete 66333,2 
step
*Possible Warmonger spawn points are marked on your (Mini)map
.goto 2023,24.67,41.17,0
.goto 2023,24.03,40.74,0
.goto 2023,24.21,39.85,0
.goto 2023,24.90,39.76,0
.goto 2023,24.41,38.42,0
.goto 2023,25.45,37.64,0
.goto 2023,24.56,40.41,30,0
.goto 2023,24.06,40.75,30,0
.goto 2023,24.20,37.65,30,0
.goto 2023,25.47,37.86,30,0
.goto 2023,24.56,40.41,30,0
.goto 2023,24.06,40.75,30,0
.goto 2023,24.20,37.65,30,0
.goto 2023,25.47,37.86,30,0
.goto 2023,24.56,40.41
.complete 66333,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest next to you (she should be following you)
.turnin 66333 >>Turn in Justice for Solethus
.accept 66784 >>接任务: |cRXP_WARN_扼制风暴|r
.accept 66335 >>接任务: |cRXP_WARN_拆除更多的水晶塔|r
.target Khanam Matra Sarest
step
>>飞到挂架并在挂架旁边使用|cffffff00[ExtraActionButton]|r
*To avoid pulling mobs wait for Khanam Matra Sarest before dismounting
.goto 2023,23.93,39.47
.complete 66335,1 
step
>>杀死大门口洞穴内的三名召唤师
.goto 2023,24.76,35.09
.complete 66784,1 
step
>>飞到挂架并在挂架旁边使用|cffffff00[ExtraActionButton]|r
*To avoid pulling mobs wait for Khanam Matra Sarest before dismounting
.goto 2023,23.11,37.53
.complete 66335,2 
step
#label OhnahranPlainsDeconstructAdditionalPylons
>>飞到挂架并在挂架旁边使用|cffffff00[ExtraActionButton]|r
*To avoid pulling mobs wait for Khanam Matra Sarest before dismounting
.goto 2023,21.43,37.53
.complete 66335,3 
step
>>完成奖金目标
.goto 2023,21.43,37.53
.complete 66421,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest next to you (she should be following you)
.goto 2023,21.43,37.53
.turnin 66335 >>Turn in Deconstruct Additional Pylons
.turnin 66784 >>Turn in Starve the Storm
.accept 66337 >>接任务: |cRXP_WARN_风暴克星|r
.target Khanam Matra Sarest
step
#completewith next
+杀死风暴中的神族德雷克，迫使科罗莱斯下马
step
>>杀死|cff00ecffKoroleth|r
.goto 2023,22.37,39.81
.complete 66337,1 
.unitscan Koroleth
step
#completewith next
+|cfff78300如果你是一名经验丰富的龙骑者，在与格里修斯交谈5秒后下马，并使用你的龙骑坐骑到达那里|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gerithus
.goto 2023,22.92,40.23
.skipgossip
.timer 34,Flight Duration
.complete 66337,2 
.target Gerithus
step
.goto 2023,25.65,48.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.turnin 66337 >>Turn in Stormbreaker
.accept 66336 >>接任务: |cRXP_WARN_翡翠之岛|r
.target Merithra
step
#completewith next
+乘坐你的龙骑坐骑飞往梅里特拉
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.goto 2023,22.14,50.97
.turnin 66336 >>Turn in The Isle of Emerald
.accept 66783 >>接任务: |cRXP_WARN_修复誓言|r
.target Merithra
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,22.29,50.88
.skipgossip 1
.cast 375466 >>拿起她右手拿着的长矛
.target Sansok Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marithra
.goto 2023,22.14,50.98
.skipgossip 188181,1
.complete 66783,1 
.target Marithra
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tigari Khan
.goto 2023,22.36,51.05
.skipgossip 3
.cast 375472 >>捡起他右手拿着的羽毛
.target Tigari Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marithra
.goto 2023,22.14,50.98
.skipgossip 188181,1
.complete 66783,2 
.target Marithra
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,22.34,50.96
.skipgossip 3
.timer 5,Roleplay Duration
.cast 375470 >>拿起她右手拿着的喇叭
.target Khanam Matra Sarest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marithra
.goto 2023,22.14,50.98
.skipgossip 188181,1
.complete 66783,3 
.target Marithra
step
#completewith OhnahranPlainsRenewalofVows
*您可以跳过下一个过场（Esc->是）
step
#completewith next
.goto 2023,22.14,50.98
.cast 391289 >>从Merithra那里采集Everbloom土壤
step
#label OhnahranPlainsRenewalofVows
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,22.33,50.96
.skipgossip
.complete 66783,4 
.target Khanam Matra Sarest
step
.goto 2023,22.14,50.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Merithra
.turnin 66783 >>Turn in Renewal of Vows
.accept 66340 >>接任务: |cRXP_WARN_融入碧蓝|r
.target Merithra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest
.goto 2023,22.34,50.95
.accept 66339 >>接任务: |cRXP_WARN_诺库德阻击战：天为风之所归|r
.target Khanam Matra Sarest
step
#completewith next
.hs >>Hearth to Pinewood Post
step
#completewith next
+带着你的龙骑坐骑飞往智者马苏德
step
.goto 2023,71.65,80.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Masud the Wise
.turnin 66340 >>Turn in Into the Azure
.accept 65686 >>接任务: |cRXP_WARN_前往碧蓝林海|r
.target Masud the Wise
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup Threads of Fate 60-70
#name B2Ohn'ahran Plains ToF
#displayname Chapter 2 - Ohn'ahran Plains ToF
#next C3Azure Span ToF
step
#completewith Ohn'ahran Plains Campaign
+欢迎使用RestedXP的Ohn'ahran平原指南。
step
.goto 2022,48.27,88.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Taurasza
.accept 65779 >>Accept Into the Plains
step
#label Ohn'ahran Plains Campaign
.goto 2023,77.73,23.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65779 >>交任务: |cRXP_FRIENDLY_深入平原|r
.accept 65780 >>接任务: |cRXP_WARN_证明自我|r
step
>>杀死|cff00ecffBlazing Proto Dragon|r
.goto 2023,78.50,27.21
.complete 65780,1 
step
.goto 2023,78.63,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65780 >>Turn in Proving Oneself
.accept 65783 >>接任务: |cRXP_WARN_营火欢迎你|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,85.31,25.41
.turnin 65783 >>Turn in Welcome at Our Fire
.accept 70174 >>接任务: |cRXP_WARN_席卡尔|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,85.74,25.32
.skipgossip 181217,1
.complete 70174,1 
step
.goto 2023,85.73,25.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.turnin 70174 >>Turn in The Shikaar
.accept 65802 >>接任务: |cRXP_WARN_旅途供给|r
.accept 65801 >>接任务: |cRXP_WARN_自报家门|r
step
#title Supply 1
.goto 2023,86.17,25.32
.complete 65802,2,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru or Belika
.goto 2023,85.76,26.59
.skipgossip
.complete 65801,2 
step
#title Pod 1
.goto 2023,85.51,26.88
.complete 65802,1,1 
step
#title Pod 2
.goto 2023,84.98,26.63
.complete 65802,1,2 
step
#title Pod 3
.goto 2023,84.59,27.08
.complete 65802,1,3 
step
#title Supply 2
.goto 2023,84.31,27.19
.complete 65802,2,2 
step
#title Pod 4
.goto 2023,84.29,25.77
.complete 65802,1,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Nuqut
.goto 2023,83.93,25.88
.skipgossip 1
.complete 65801,3 
step
#title Pod 5
.goto 2023,83.76,25.09
.complete 65802,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Ehri and Farrier Roscha
.accept 65950 >>接任务: |cRXP_WARN_鳄鱼人窃贼|r
.goto 2023,84.40,25.01
.accept 65951 >>接任务: |cRXP_WARN_独行供货商|r
.goto 2023,84.34,25.00
step
#completewith next
+|cfff78300尽可能避免杀死萨满|r
step
>>杀死该区域的|cff00ecffMudfines|r。掠夺物资
.goto 2023,82.30,28.97,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.60,30.82
.complete 65950,1 
step
>>Follow the arrow
.goto 2023,80.65,30.87
.complete 65951,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,80.56,30.74
.turnin 65951 >>Turn in Sole Supplier
.turnin 65950 >>Turn in Thieving Gorlocs
.accept 65953 >>接任务: |cRXP_WARN_神谕之陨|r
.accept 65954 >>接任务: |cRXP_WARN_释放猎犬|r
.accept 65955 >>接任务: |cRXP_WARN_半人马最好的朋友|r
step
>>Open the cage
.goto 2023,80.56,30.74
.complete 65955,1 
step
#completewith OhnahranPlainsReleaseTheHounds4
>>杀死|cff00ecffMudfin萨满|r。掠夺他们的图腾。
.complete 65953,1 
step
#title Bakar Collar 1
.goto 2023,80.63,30.69
.complete 65954,2,1 
step
#title Bakar Freed 1
>>Open the cage
.goto 2023,81.16,29.77
.complete 65954,1,1 
step
#title Bakar Freed 2
>>Open the cage
.goto 2023,81.43,29.69
.complete 65954,1,2 
step
#title Bakar Freed 3
>>Open the cage
.goto 2023,82.22,30.27
.complete 65954,1,3 
step
#title Bakar Collar 2
.goto 2023,82.22,30.43
.complete 65954,2 
step
#label OhnahranPlainsReleaseTheHounds4
#title Bakar Freed 4
>>Open the cage
.goto 2023,82.36,30.56
.complete 65954,1,4 
step
#sticky
#label OhnahranPlainsTheOracull
#title Kill Mudfin Shamans
>>杀死|cff00ecffMudfin萨满|r。掠夺他们的图腾。
.goto 2023,81.74,31.64,15,0
.goto 2023,81.99,32.17,15,0
.goto 2023,82.36,32.58,15,0
.goto 2023,81.73,30.81,15,0
#loop
.line 2023,81.74,31.64,81.99,32.17,82.36,32.58,81.73,30.81
.goto 2023,81.74,31.64,18,0
.goto 2023,81.99,32.17,18,0
.goto 2023,82.36,32.58,18,0
.goto 2023,81.73,30.81,18,0
.complete 65953,1 
step
#title Bakar Freed 5
>>Open the cage
.goto 2023,81.25,31.70
.complete 65954,1 
step
#requires OhnahranPlainsTheOracull
#completewith next
.goto 2023,83.08,32.06,10 >>进入洞穴
step
#requires OhnahranPlainsTheOracull
>>打开笼子等待卡萨尔
.goto 2023,83.38,32.40
.complete 65955,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.43,32.33
.turnin 65955 >>Turn in A Centaur's Best Friend
.turnin 65953 >>Turn in The Ora-cull
.turnin 65954 >>Turn in Release the Hounds
.accept 65952 >>接任务: |cRXP_WARN_[A Chief of Legends]|r
step
#completewith next
.goto 2023,83.08,32.06,10 >>离开洞穴
step
#sticky
#label OhnahranPlainsChiefofLegends
>>杀死|cff00ecff首领Grrlgllmesh|r
.goto 2023,82.10,31.44
.complete 65952,1 
step
>>掠夺Grrlgllmesh首领的奖章并使用它
.collect 191127,1,66005,1
.goto 2023,82.05,31.45
.accept 66005 >>接任务: |cRXP_WARN_失落友人勋章|r
step
#requires OhnahranPlainsChiefofLegends
#completewith next
.goto 2023,83.08,32.06,10 >>进入洞穴
step
#requires OhnahranPlainsChiefofLegends
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.44,32.33
.turnin 65952 >>Turn in A Chief of Legends
.turnin 66005 >>Turn in Medallion of a Fallen Friend
.accept 65949 >>接任务: |cRXP_WARN_独身修理匠|r
.accept 66006 >>接任务: |cRXP_WARN_返回罗莎身边|r
step
>>Pick up the supplies
.goto 2023,83.51,32.14
.complete 66006,1 
step
#completewith next
.goto 2023,83.08,32.06,10 >>离开洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回Timberstep前哨。与Farrier Roscha交谈
.goto 2023,84.40,25.02
.turnin 65949 >>Turn in The Sole Mender
.turnin 66006 >>Turn in Return to Roscha
step
#title Supply 3
.goto 2023,84.34,24.91
.complete 65802,2,3 
step
#title Supply 4
.goto 2023,84.37,23.12
.complete 65802,2 
step
.goto 2023,85.63,20.85
.skipgossip 1
.complete 65801,1 
step
.goto 2023,84.69,22.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul inside the hut
.turnin 65801 >>Turn in Supplies for the Journey
.turnin 65802 >>Turn in Supplies for the Journey
.accept 65803 >>接任务: |cRXP_WARN_前往城市|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,83.15,23.74
.skipgossip
.complete 65803,1 
step
>>你可以和他一起骑行，听他的故事，或者直接飞到第一站。
.goto 2023,75.57,31.84
.complete 65803,3 
step
.goto 2023,75.66,31.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65803 >>Turn in Toward the City
.accept 65804 >>接任务: |cRXP_WARN_觅食即竞争|r
step
>>与神秘爪印互动
.goto 2023,76.73,31.89
.accept 70185 >>接任务: |cRXP_WARN_神奇野兽在哪里|r
step
#completewith OhnahranPlainsMysteriousBeast
>>杀死该区域的|cff00ecffbeas|r。掠夺他们的肉
*The best source of meat are Mammoths and Stomphoofs.
.complete 65804,1 
step
#completewith next
.goto 2023,77.78,35.39,10 >>进入洞穴
step
#label OhnahranPlainsMysteriousBeast
>>杀死|cff00ecffKonkhular |r。掠夺他的毛皮
.goto 2023,78.22,35.24
.complete 70185,1 
step
#completewith next
.goto 2023,77.78,35.39,10 >>离开洞穴
step
>>杀死该区域的|cff00ecffbeas|r。掠夺他们的肉
*The best source of meat is Mammoths.
.goto 2023,79.22,30.63,40,0
.goto 2023,77.89,29.57,40,0
.goto 2023,74.62,29.06,40,0
.goto 2023,76.08,34.27,40,0
.goto 2023,77.47,32.21,40,0
.goto 40,2023,79.22,30.63,77.89,29.57,74.62,29.06,76.08,34.27,77.47,32.21
.complete 65804,1 
step
#requires OhnahranPlainsForFoodandRivalry
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,75.67,31.68
.turnin 65804 >>Turn in For Food and Rivalry
.turnin 70185 >>Turn in Mysterious Beast
.accept 65940 >>接任务: |cRXP_WARN_一路颠簸|r
step
>>你可以和他一起骑行，听他的故事，或者直接飞到第二站。
.goto 2023,70.07,37.84
.complete 65940,2 
step
.goto 2023,69.97,37.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65940 >>Turn in By Broken Road
.accept 65805 >>接任务: |cRXP_WARN_与欧恩哈拉沟通|r
step
#completewith OhnahranPlainsConnectiontoRiverReeds
+遵循循环。不要完成此步骤
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
#completewith OhnahranPlainsConnectiontoRiverReeds
>>杀死|cff00ecffMudwalker Salamanthers|r。偷走他们的心
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
#completewith next
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
>>单击|cff00ecffJadethroat Mallard|r
.goto 2023,69.94,37.66,0,0
.complete 65805,2 
step
#label OhnahranPlainsConnectiontoRiverReeds
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
#completewith next
+遵循循环。不要完成此步骤
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
>>杀死|cff00ecffMudwalker Salamanthers|r。偷走他们的心
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
.goto 2023,69.96,37.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65805 >>Turn in Connection to Ohn'ahra
.accept 66848 >>接任务: |cRXP_WARN_风之征兆|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,69.96,37.96
.skipgossip 184595,2
.complete 66848,1 
step
>>Place the totems
.goto 2023,69.93,37.62
.complete 66848,2 
step

>>Wait
.goto 2023,69.93,37.62
.complete 66848,3 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng and Sansok Khan
.turnin 66848 >>Turn in Omens on the Wind
.goto 2023,69.96,37.94
.accept 65806 >>接任务: |cRXP_WARN_马鲁凯|r
.goto 2023,70.02,38.01
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞到远程癌症医生Aerilyn那里和她说话
.goto 2023,65.99,25.09
.accept 65890 >>接任务: |cRXP_WARN_奈萨扎恩废墟|r
step
#completewith OhnahranPlainsToolsoftheTirade
>>Kill mobs in the area
.accept 65892 >>接任务: |cRXP_WARN_碎焰崩毁|r
.complete 65892,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.00,18.29
.turnin 65890 >>Turn in The Nelthazan Ruins
.accept 65893 >>接任务: |cRXP_WARN_圣物查探|r
.accept 65891 >>接任务: |cRXP_WARN_建言工具|r
step
#completewith OhnahranPlainsToolsoftheTirade
>>杀死|cff00ecffTaraseks|r和|cff0ecffSundered暴徒|r。掠夺他们的碎片
.goto 2023,63.03,17.67,0,0
.complete 65893,1 
step
#title Tool Deployed 1
>>与Waygate碎石互动
.goto 2023,63.56,17.18
.complete 65891,1,1 
step
#title Tool Deployed 2
>>与Waygate碎石互动
.goto 2023,63.43,16.73
.complete 65891,1,2 
step
#title Tool Deployed 3
>>与Waygate碎石互动
.goto 2023,63.50,15.10
.complete 65891,1,3 
step
#title Tool Deployed 4
>>与Waygate碎石互动
.goto 2023,63.05,14.78
.complete 65891,1,4 
step
#label OhnahranPlainsToolsoftheTirade
#title Tool Deployed 5
>>与Waygate碎石互动
.goto 2023,62.79,15.68
.complete 65891,1 
step
#completewith next
>>Kill mobs in the area
.goto 2023,63.57,15.34,0,0
.accept 65892 >>接任务: |cRXP_WARN_碎焰崩毁|r
.complete 65892,1 
step
>>杀死|cff00ecffTaraseks|r和|cff0ecffSundered暴徒|r。掠夺他们的碎片
.goto 2023,62.28,17.53,20,0
.goto 2023,62.90,17.90,20,0
.goto 2023,63.77,16.47,20,0
.goto 2023,63.57,15.34
.complete 65893,1 
step
>>Kill mobs in the area
#loop
.line 2023,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.accept 65892 >>接任务: |cRXP_WARN_碎焰崩毁|r
.complete 65892,1 
step
#requires OhnahranPlainsTheSunderedAsunder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.01,18.26
.turnin 65891 >>Turn in Tools of the Tirade
.turnin 65893 >>Turn in The Relic Inquiry
step
>>你可以乘坐Stout Riding Bakar，听故事，或者直接飞往Marrukal。
.goto 2023,61.84,39.83
.complete 65806,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 65806 >>Turn in Maruukai
.accept 66018 >>接任务: |cRXP_WARN_诺库德氏族|r
.accept 66017 >>接任务: |cRXP_WARN_欧恩伊尔氏族|r
.accept 66016 >>接任务: |cRXP_WARN_提莱氏族|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66017 >>Turn in Clan Ohn'ir
.accept 66020 >>接任务: |cRXP_WARN_兆示焚香|r
step
#completewith next
.goto 2023,62.84,34.34,10 >>Leave the building
step
#title Sweetsuckle Bloom 1
>>从地上捡起来
.collect 191160,1,66020,1
.goto 2023,63.42,33.82
step
#title Sweetsuckle Bloom 2
>>从地上捡起来
.collect 191160,2,66020,1
.goto 2023,63.77,34.42
step
#title Sweetsuckle Bloom 3
>>从地上捡起来
.collect 191160,3,66020,1
.goto 2023,63.57,34.73
step
#title Sweetsuckle Bloom 4+5
>>从地上捡起来
.collect 191160,5,66020,1
.goto 2023,63.39,34.88
step
>>使用您包中的|T458235:0|t[Steetsuckle Bloom]
.use 191160
.goto 2023,62.82,33.69
.complete 66020,1 
step
>>与香炉互动
.goto 2023,62.82,33.69
.complete 66020,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66020 >>Turn in Omens and Incense
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66016 >>Turn in Clan Teerai
.accept 66019 >>接任务: |cRXP_WARN_光耀先祖|r
step
>>拿起生野味
.goto 2023,59.39,37.82
.complete 66019,1 
step
>>Interact with the shade
.goto 2023,59.13,37.57
.complete 66019,2 
step
>>拿起香料罐
.goto 2023,59.31,37.29
.complete 66019,3 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.61
.complete 66019,4 
step
>>拿起一篮香料
.goto 2023,59.39,37.37
.complete 66019,5 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,59.16,37.57
.complete 66019,6 
step
>>拿起一锅香料
.goto 2023,59.05,37.88
.complete 66019,7 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.58
.complete 66019,8 
step
>>Pick up the Game Meat
.goto 2023,59.14,37.58
.complete 66019,9 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,58.90,37.26
.complete 66019,10 
step
>>Interact with the shade
.goto 2023,59.16,37.10
.complete 66019,11 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66019 >>Turn in Honoring Our Ancestors
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul and Guard Bahir
.turnin 66018 >>Turn in Clan Nokhud
.goto 2023,60.38,40.69
.accept 66021 >>接任务: |cRXP_WARN_讨厌的外来者|r
.goto 2023,60.31,40.75
step
>>杀死|cff00ecffNokhud战斗机|r
.goto 2023,58.67,42.21,35,0
.goto 2023,59.83,42.96,35,0
.goto 2023,59.60,41.79
.complete 66021,1 
step
.goto 2023,63.12,34.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Windsage Ordven
.accept 65906 >>接任务: |cRXP_WARN_苦闷的新兵|r
step
.goto 2023,61.98,41.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Tirren
.accept 65837 >>接任务: |cRXP_WARN_松木的困局|r
step
.goto 2023,62.43,41.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 66021 >>Turn in Unwelcome Outsider
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru who is following you
.goto 2023,62.43,41.71
.accept 66969 >>接任务: |cRXP_WARN_平原氏族|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.complete 66969,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.gossipoption 56528 
.gossipoption 56515 
.gossipoption 56537 
.gossipoption 56549 
.gossipoption 56554 
.goto 2023,61.43,39.52
.complete 66969,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 66969 >>Turn in Clans of the Plains
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等着吉米萨，和他说话
.goto 2023,61.03,40.43
.accept 66948 >>接任务: |cRXP_WARN_使者驾到|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath
.goto 2023,61.03,40.44
.skipgossip 194927,4
.complete 66948,1 
step
.goto 2023,61.03,40.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath
.turnin 66948 >>交任务: |cRXP_FRIENDLY_使者|r's Arrival
.accept 66022 >>接任务: |cRXP_WARN_尊可汗|r
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato
.goto 2023,60.29,37.89
.skipgossip 186942,1
.complete 66022,1 
step
.goto 2023,60.35,38.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato
.turnin 66022 >>Turn in The Khanam Matra
.accept 66023 >>接任务: |cRXP_WARN_破约弃盟|r
step
.goto 2023,59.52,38.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.accept 66024 >>接任务: |cRXP_WARN_绝命断后|r
step
#completewith next
>>杀死|cff00ecffNokhud背叛者|r
.complete 66023,1 
step
>>杀死|cff00ecffGuard Bahir|r
.goto 2023,58.06,39.37
.complete 66024,1 
step
>>杀死|cff00ecffNokhud背叛者|r
.goto 2023,58.85,39.09,30,0
.goto 2023,60.12,37.66,30,0
.goto 2023,62.02,39.35,30,0
.goto 2023,60.60,40.48,30,0
.goto 2023,60.12,37.66
.complete 66023,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato and Khanam Matra Sarest |cfff78300on top of the tower|r
.goto 2023,60.36,38.05
.turnin 66023 >>Turn in Trucebreakers
.turnin 66024 >>Turn in Covering Their Tails
.accept 66025 >>接任务: |cRXP_WARN_诺库德威胁|r
.timer 19,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest after a short roleplay
.goto 2023,60.00,37.48
.turnin 66025 >>Turn in The Nokhud Threat
.accept 66201 >>接任务: |cRXP_WARN_战争之蹄|r
step
.goto 2023,63.47,48.63,10,0
.goto 2023,63.03,48.54
>>在小瀑布下的洞穴中杀死|cff00ecffSunscale Behemoth|r
.accept 69837 >>接任务: |cRXP_WARN_赤鳞巨兽|r
.complete 69837,1 
step
.isWorldQuestAvailable 2023,70549
>>杀死蜜蜂、李子或使用|cffffff00[ExtraActionButton]|r
.goto 2023,63.41,56.67
.complete 70549,2 
step
#completewith next
+使用你的龙骑坐骑飞往Jebotai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Jebotai
.goto 2023,41.89,61.80
.turnin -66201 >>Turn in Hooves of War
step
.isQuestTurnedIn 66201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Jebotai
.goto 2023,41.89,61.80
.accept 66222 >>接任务: |cRXP_WARN_风暴前的宁静|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.goto 2023,41.62,56.75
.accept 66688 >>接任务: |cRXP_WARN_风之迹印|r
.accept 66687 >>接任务: |cRXP_WARN_猛兽之地|r
step
.isOnQuest 66222
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quartermaster Gensai
.goto 2023,40.72,56.35
.skipgossip
.complete 66222,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击通缉板
.goto 2023,39.56,56.43
.accept 71027 >>接任务: |cRXP_WARN_通缉：雷鸣者玛拉纳尔|r
step
.isOnQuest 66222
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Hojin
.goto 2023,39.44,55.32
.skipgossip
.complete 66222,3 
step
.isOnQuest 66222
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbalist Agura
.goto 2023,38.49,57.41
.skipgossip
.complete 66222,1 
step
.isOnQuest 66222
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Khenyug
.goto 2023,37.57,59.45
.skipgossip
.complete 66222,4 
step
>>飞往霹雳马拉那。杀了他。抢他的盘子
.goto 2023,42.26,47.13
.complete 71027,1 
step
>>杀死敏捷的Slyvern|r。掠夺他们的爪子
.goto 2023,43.28,46.82,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,41.70,44.86,30,0
.goto 2023,41.38,46.80,30,0
#loop
.line 2023,41.70,44.86,42.87,44.07,43.28,46.82,41.38,46.80
.goto 2023,41.70,44.86,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,43.28,46.82,30,0
.goto 2023,41.38,46.80,30,0
.complete 66687,2 
step
#completewith next
.goto 2023,43.53,47.95,20 >>进入洞穴
step
>>杀死洞穴里的蜘蛛和蛋。把它们洗劫一空
.goto 2023,44.04,48.47,20,0
.goto 2023,43.96,49.31,20,0
.goto 2023,43.65,50.35
.complete 66687,1 
step
#completewith next
.goto 2023,43.53,47.95,20 >>离开洞穴
step
#completewith next
.goto 2023,45.19,48.66,10 >>飞起来，进入斯卡拉的洞穴
step
.goto 2023,44.91,49.21
.complete 70783,1 
step
>>捡起地上的蕨类植物孢子、羽毛和空心芦苇
.goto 2023,44.32,54.34,25,0
.goto 2023,45.56,52.79,25,0
.goto 2023,46.34,53.01,25,0
.goto 2023,46.94,51.43,25,0
.goto 2023,49.15,52.45
.complete 66688,1 
step
.goto 2023,49.34,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与提供船只互动
.turnin 66688 >>Turn in Signs of the Wind
.accept 70374 >>接任务: |cRXP_WARN_蒙福的希米亚|r
step
#completewith next
.gossipoption 56476 >>Talk to Himia, The Blessed
.goto 2023,49.34,49.41
step
>>杀死产卵|cff00ecffElements|r
.goto 2023,49.34,49.41
.complete 70374,1 
step
>>杀死雷暴。掠夺它们的鳞片
.goto 2023,50.57,50.14,30,0
.goto 2023,51.33,48.78,30,0
.goto 2023,51.08,47.44,30,0
.goto 2023,50.57,50.14
.complete 66687,3 
step
.pvp
.isWorldQuestAvailable 2023,70209
>>杀死该区域的鸭子（或玩家）
.goto 2023,42.87,36.02,35,0
.goto 2023,42.55,34.09,35,0
.goto 2023,46.31,33.35,35,0
#loop
.line 2023,42.87,36.02,42.55,34.09,46.31,33.35,
.goto 2023,42.87,36.02,35,0
.goto 2023,42.55,34.09,35,0
.goto 2023,46.31,33.35,35,0
.complete 70209,1 
step
.goto 2023,41.63,56.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.turnin 66687 >>Turn in Land of the Apex
.turnin 70374 >>Turn in Himia, the Blessed
.accept 66834 >>接任务: |cRXP_WARN_博学者雷伦|r
step
>>Click on the basket
.goto 2023,40.11,57.86
.complete 66834,1 
step
>>拿起手电筒并使用|cffffff00[ExtraActionButton]|r
.goto 2023,40.21,57.89
.complete 66834,2 
.complete 66834,3 
step
>>拿起长矛并使用|cffffff00[ExtraActionButton]|r
.goto 2023,40.06,57.77
.complete 66834,4 
.complete 66834,5 
step
>>拿起弓，使用|cffffff00[ExtraActionButton]|r
.goto 2023,40.05,57.73
.complete 66834,6 
.complete 66834,7 
step
.goto 2023,41.64,56.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.turnin 66834 >>Turn in Rellen, the Learned
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞往Khansguard Jebotai并与他交谈
.goto 2023,41.89,61.80
.turnin -66222 >>Turn in The Calm Before the Storm
.turnin 71027 >>Turn in WANTED: Mara'nar the Thunderous
step
.goto 2023,40.93,61.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Yuvari
.accept 66651 >>接任务: |cRXP_WARN_诺库缺德|r
step
.goto 2023,39.04,66.01
>>返回启动Zorig
.turnin 66651 >>Turn in Up to No-khud
.accept 66652 >>接任务: |cRXP_WARN_归于疗愈者|r
step
>>杀死|cff00ecffTombcaller Ganzaya
.goto 2023,37.07,65.70
.complete 66652,1 
step
>>Pick up the spear
.goto 2023,37.03,65.47
.complete 66652,2 
step
.goto 2023,39.05,66.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Zorig
.turnin 66652 >>Turn in Return to Mender
.accept 66654 >>接任务: |cRXP_WARN_渎圣者的克星|r
.accept 66655 >>接任务: |cRXP_WARN_除灵密料|r
step
#completewith OhnahranPlainsClumpofSacredSoil
>>杀死该地区的暴徒。掠夺他们的武器和头骨
.complete 66654,2 
.complete 66655,1 
step
#completewith OhnahranPlainsClumpofSacredSoil
>>杀死该区域的|cff00ecffCentaur|r
.complete 66654,1 
step
#title Soil 1/6
>>捡起被扰乱的圣土
.goto 2023,36.88,64.12
.complete 66655,2,1 
step
#title Soil 2/6
>>捡起被扰乱的圣土
.goto 2023,35.92,64.72
.complete 66655,2,2 
step
#title Soil 3/6
>>捡起被扰乱的圣土
.goto 2023,35.38,65.32
.complete 66655,2,3 
step
#title Soil 4/6
>>捡起被扰乱的圣土
.goto 2023,34.45,65.76
.complete 66655,2,4 
step
#title Soil 5/6
>>捡起被扰乱的圣土
.goto 2023,34.33,67.13
.complete 66655,2,5 
step
#label OhnahranPlainsClumpofSacredSoil
#title Soil 6/6
>>捡起被扰乱的圣土
.goto 2023,35.07,67.22
.complete 66655,2 
step
#completewith next
>>杀死该地区的暴徒。掠夺他们的武器和头骨
.goto 2023,34.47,66.86
.complete 66654,2 
.complete 66655,1 
step
>>杀死该区域的|cff00ecffCentaur|r
.goto 2023,34.87,69.06,30,0
.goto 2023,36.43,67.85,30,0
.goto 2023,36.41,64.20,30,0
.goto 2023,33.06,67.29,30,0
#loop
.line 2023,34.87,69.06,36.43,67.85,36.41,64.20,33.06,67.29
.goto 2023,34.87,69.06,30,0
.goto 2023,36.43,67.85,30,0
.goto 2023,36.41,64.20,30,0
.goto 2023,33.06,67.29,30,0
.complete 66654,1 
step
>>杀死该地区的暴徒。掠夺他们的武器和头骨
#loop
.line 2023,34.87,69.06,36.43,67.85,36.41,64.20,33.06,67.29
.goto 2023,34.87,69.06,30,0
.goto 2023,36.43,67.85,30,0
.goto 2023,36.41,64.20,30,0
.goto 2023,33.06,67.29,30,0
.complete 66654,2 
.complete 66655,1 
step
.goto 2023,33.76,65.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Zorig
.turnin 66655 >>Turn in Reagents of De-Necromancy
.turnin 66654 >>Turn in Desecrator Annihilator
.accept 69936 >>接任务: |cRXP_WARN_破坏主谋赞布尔|r
step
>>杀死|cff00ecff监督赞布尔|r
.goto 2023,35.60,65.06,25,0
.goto 2023,36.83,67.88,35,0
.goto 2023,33.91,69.38,35,0
.goto 2023,34.13,66.12,35,0
#loop
.line 2023,35.60,65.06,36.83,67.88,33.91,69.38,34.13,66.12
.goto 2023,35.60,65.06,35,0
.goto 2023,36.83,67.88,35,0
.goto 2023,33.91,69.38,35,0
.goto 2023,34.13,66.12,35,0
.unitscan Overseer Zambul
.complete 69936,1 
step
.goto 2023,33.76,65.36
>>返回启动Zorig
.turnin 69936 >>Turn in Zambul, Head Vandal
step
.goto 2023,56.26,75.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.turnin -65906 >>Turn in A Disgruntled Initiate
.accept 65901 >>接任务: |cRXP_WARN_偷溜出门|r
step
#title Totem 1/3
>>Place the totem
.goto 2023,56.67,76.29
.complete 65901,1,1 
step
#title Totem 2/3
>>Place the totem
.goto 2023,57.36,76.33
.complete 65901,1,2 
step
#title Totem 3/3
>>Place the totem
.goto 2023,57.00,75.47
.complete 65901,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.goto 2023,56.25,75.95
.skipgossip 190014,3
.complete 65901,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t顺着箭头往北走，与Radiya发起人交谈
.goto 2023,54.78,66.41
.turnin 65901 >>Turn in Sneaking Out
.accept 65907 >>接任务: |cRXP_WARN_酷爱水果|r
step
>>从地上的灌木丛中摘下野生布什果实
.goto 2023,54.02,70.80
.complete 65907,1 
step
>>在泥浆夯实机上使用|T134001:0|t
.goto 2023,54.61,67.59
.use 192743
.complete 65907,2 
step
.goto 2023,54.78,66.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.turnin 65907 >>Turn in Favorite Fruit
.accept 65770 >>接任务: |cRXP_WARN_保证就是承诺|r
step
.goto 2023,54.78,66.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再次与发起Radiya对话
.skipgossip
.complete 65770,1 
step
>>Follow the arrow
.goto 2023,52.98,63.88
.complete 65770,2 
step
.goto 2023,52.02,63.24
>>Return to Godoloto
.turnin 65770 >>Turn in A Promise Is A Promise
step
>>见到她就杀了她
.goto 2023,59.90,67.02
.accept 69968 >>接任务: |cRXP_WARN_普罗泽拉·风击|r
.complete 69968,1 
step
#title Dragon Glyph: Windsong Rise
.goto 2023,61.49,64.33
.achievement 16576,10 >>拿起空中的龙雕
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sentinel Olekk and Scout Watu
.goto 2023,81.03,58.91
.turnin -65837 >>Turn in Trouble In The Pines
.accept 66681 >>接任务: |cRXP_WARN_风暴附体|r
.accept 66680 >>接任务: |cRXP_WARN_数绒羊|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo and buy 1 Diced Meat
.goto 2023,80.64,58.76
.buy 193890,1
.complete 66680,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wish
.goto 2023,81.03,59.53
.skipgossip
.complete 66680,2 
step
#completewith OhnahranPlainsCountingSheep
>>主要杀死|cff00ecffStags|r、|cff0ecffDos|r和|cff00 ecffVultures|r。避开熊
.complete 66681,1 
step
#completewith OhnahranPlainsCountingSheep
>>杀死一只|cff00ecff风暴之兽|r。为风暴之碎片掠夺它。在您的库存中单击它
.collect 194031,1,66689,1
.accept 66689 >>接任务: |cRXP_WARN_不只是石头|r
step
#title Argali Saved 1
>>在丢失的Argali上使用|T135158:0|t[Wish's Wistle]
.goto 2023,80.49,63.11
.use 193892
.complete 66680,3,1 
step
#title Argali Saved 2
>>在丢失的Argali上使用|T135158:0|t[Wish's Wistle]
.goto 2023,80.60,65.37
.use 193892
.complete 66680,3,2 
step
#title Argali Saved 3
>>在丢失的Argali上使用|T135158:0|t[Wish's Wistle]
.goto 2023,81.21,65.83
.use 193892
.complete 66680,3,3 
step
#title Argali Saved 4
>>在丢失的Argali上使用|T135158:0|t[Wish's Wistle]
.goto 2023,81.83,66.19
.use 193892
.complete 66680,3,4 
step
#label OhnahranPlainsCountingSheep
#title Argali Saved 5
>>在丢失的Argali上使用|T135158:0|t[Wish's Wistle]
.goto 2023,82.45,64.41
.use 193892
.complete 66680,3 
step
>>主要杀死|cff00ecffStags|r、|cff0ecffDos|r和|cff00 ecffVultures|r。避开熊
.goto 2023,82.39,64.69,25,0
#loop
.line 2023,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.complete 66681,1 
step
>>杀死一只|cff00ecff风暴之兽|r。为风暴之碎片掠夺它。在您的库存中单击它
.collect 194031,1,66689,1
.goto 2023,82.34,64.59
.accept 66689 >>接任务: |cRXP_WARN_不只是石头|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66680 >>Turn in More Than A Rock
.turnin 66681 >>Turn in Tempests Abound
.turnin 66689 >>Turn in More Than A Rock
.accept 66683 >>接任务: |cRXP_WARN_最后分析法|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Basan
.goto 2023,80.96,59.52
.skipgossip 1
.complete 66683,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo
.goto 2023,80.64,58.76
.skipgossip 2
.complete 66683,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nakeena
.goto 2023,80.44,57.89
.skipgossip 2
.complete 66683,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66683 >>Turn in Last Resort Analysis
.accept 65836 >>接任务: |cRXP_WARN_风暴显露|r
step
>>Follow the arrow
.goto 2023,83.62,60.66
.complete 65836,1 
step
>>杀死|cff00ecffStormed Blackpaw|r
.goto 2023,83.99,60.79
.complete 65836,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,83.98,60.73
.turnin 65836 >>Turn in Show of Storm
.accept 66684 >>接任务: |cRXP_WARN_追逐风暴|r
step
#completewith next
>>杀死|cff00ecffPrimalist部队|r
.goto 2023,84.89,62.83,0,0
.complete 66684,1 
step
>>点击风暴塔
.goto 2023,85.03,64.14
.complete 66684,2 
step
#completewith next
>>杀死|cff00ecffPrimalist部队|r
.goto 2023,84.89,62.83
.complete 66684,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,80.85,58.96
.turnin 66684 >>Turn in Storm Chasing
step
.isWorldQuestAvailable 2023,70146
>>Kill mobs in the area
.goto 2023,83.27,55.61,25,0
.goto 2023,83.71,53.87,25,0
.goto 2023,84.92,53.38,25,0
.goto 2023,85.88,54.09,25,0
.goto 2023,84.53,55.87,25,0
#loop
.line 2023,83.27,55.61,83.71,53.87,84.92,53.38,85.88,54.09,84.53,55.87
.goto 2023,83.27,55.61,25,0
.goto 2023,83.71,53.87,25,0
.goto 2023,84.92,53.38,25,0
.goto 2023,85.88,54.09,25,0
.goto 2023,84.53,55.87,25,0
.accept 70146 >>接任务: |cRXP_WARN_高地斥驳|r
.complete 70146,1 
step
.isWorldQuestAvailable 2023,70638
>>杀死|cff00ecffUnleashed Storm|r和|cff0ecffWinddevils|r
.goto 2023,74.09,71.38
.complete 70638,1 
.complete 70638,2 
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup 首次演练（战役）60-70
#name 4) Thaldraszus Campaign
#displayname Chapter 4 - Thaldraszus Campaign (End)
step
#completewith next
+欢迎使用RestedXP的Thaldraszus指南。
step
.isOnQuest 66244
.itemcount 140192,1
.cast 222695 >>使用你的达拉然炉石
step << Alliance
.isOnQuest 66244
.itemcount 140192,1
.goto 627,39.55,63.17
.zone 84 >>前往: |cRXP_PICK_暴风城|r
step << Alliance
.isOnQuest 66244
.itemcount 140192,1
.goto 84,48.88,93.44
.zone 2112 >>乘坐门户前往瓦尔德拉肯
step << Horde
.isOnQuest 66244
.itemcount 140192,1
.goto 627,55.28,24.02
.zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r
step << Horde
.isOnQuest 66244
.itemcount 140192,1
.goto 85,57.12,87.38
.zone 2112 >>乘坐门户前往瓦尔德拉肯
step
.isOnQuest 66244
.zoneskip 2024,1
.itemcount 104299,1
#completewith ThaldraszusToValdrakken
.goto 2024,37.02,60.47
.cast 126389 >>Use your Goblin Glider
.cast 148537 >>之后使用你的坠落火焰
.zone 2025 >>Fly to Thaldraszus
step
.zoneskip 2024,1
.isOnQuest 66244
.itemcount 140192,<1
#completewith ThaldraszusToValdrakken
.goto 2024,37.07,60.82
.fly Pinewood Post, Ohnahran Plains >>飞往奥纳兰平原的松林哨所
step
.xp 70,1
.goto 2112,48.09,59.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hot Springs Spa Promoter
.accept 72067 >>接任务: |cRXP_WARN_休闲时间！|r
step
.isOnQuest 66244
#label ThaldraszusToValdrakken
>>龙骑时顺箭而行
.goto 2112,54.48,47.90
.complete 66244,1 
step
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2112,58.15,34.90
.turnin -66244 >>交任务: |cRXP_FRIENDLY_去往瓦德拉肯|r
.accept 66159 >>接任务: |cRXP_WARN_凶恶之讯|r
.skipgossip 187678,1
.complete 66159,1 
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder and Captain Drine
.turnin 66159 >>Turn in A Message Most Dire
.goto 2112,58.15,34.90
.accept 66166 >>接任务: |cRXP_WARN_耳聪目明|r
.accept 66163 >>接任务: |cRXP_WARN_无处可藏|r
.goto 2112,59.39,34.83
.target Alexstrasza the Life-Binder
.target Captain Drine
step
#title Dragon Glyph: Valdrakken
.goto 2112,59.52,38.27
.achievement 16578,4 >>在塔上方捡起龙雕文|cffffff00
step
#sticky
#label ThaldraszusNowheretoHide
>>使用|T317244:0:0|t再现龙眼
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cff00ff00Valdrakken Citizens|r. The spies are marked on your (mini)map (so open your map and look for the step number!)
.use 198859
.goto 2112,54.72,61.41,0
.goto 2112,51.12,62.54,0
.goto 2112,48.43,58.09,0
.goto 2112,50.54,50.77,0
.goto 2112,48.85,47.73,0
.goto 2112,35.85,56.65,0
.goto 2112,36.17,64.03,0
.goto 2112,41.60,65.28,0
.goto 2112,39.93,71.38,0
.goto 2112,37.98,71.29,0
.goto 2112,49.17,76.43,0
.goto 2112,52.35,76.87,0
.goto 2112,54.31,70.02,0
.goto 2112,40.11,51.80,0
.goto 2112,27.45,60.38,0
.goto 2112,25.16,64.89,0
.goto 2112,32.18,68.50,0
.goto 2112,31.40,62.95,0
.skipgossip
.complete 66163,1 
.complete 66163,2 
step
#completewith next
.goto 2112,55.50,57.34,15 >>用你的龙骑座滑翔下来，进入岸边
step
>>与储物箱互动
.goto 2112,59.18,54.69
.complete 66166,2 
step
#completewith next
.goto 2112,48.43,49.90,8 >>进入客栈
step
>>与酒杯互动
.goto 2112,46.94,47.74
.complete 66166,3 
step
#completewith next
.goto 2112,47.45,46.22
.home >>将你的炉石设定为烤公羊
step
#completewith next
.goto 2112,48.43,49.90,8 >>Leave the inn
step
>>与联合体分类帐交互
.goto 2112,34.66,61.30
.complete 66166,1 
step
#requires ThaldraszusNowheretoHide
.goto 2112,54.72,47.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66163 >>Turn in Nowhere to Hide
.turnin 66166 >>Turn in Eyes and Ears
.accept 66167 >>接任务: |cRXP_WARN_南侧遇袭|r
.target Captain Drine
step
>>Follow the arrow
.goto 2025,35.80,82.12
.complete 66167,1 
step
>>与守护者Velomir互动
.goto 2025,35.85,82.56
.complete 66167,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,35.85,82.56
.turnin 66167 >>Turn in Southern Exposure
.accept 66169 >>接任务: |cRXP_WARN_现世报|r
.accept 66246 >>接任务: |cRXP_WARN_战争迷雾|r
.target Guardian Velomir
step
#completewith ThaldraszusLookoutMordren
>>杀死|cff00ecffMagmaswear灵长类动物|r
.goto 2025,36.65,84.36,0,0
.complete 66169,1 
step
>>与|cff00ff00Mangled Corpse|r交互
#title Unit Found 1
.goto 2025,36.25,83.73
.skipgossip
.complete 66246,1,1 
step
#completewith next
+带着你的龙骑坐骑飞起来
step
>>与|cff00ff00Mangled Corpse|r交互
#title Unit Found 2
.goto 2025,35.76,84.19
.skipgossip
.complete 66246,1,2 
step
>>与|cff00ff00Mangled Corpse|r交互
#title Unit Found 3
.goto 2025,36.46,85.39
.skipgossip
.complete 66246,1,3 
step
#label ThaldraszusLookoutMordren
>>飞上塔并杀死|cff00ecffLookout Mordren|r。如果你造成低伤害，请跳过
.goto 2025,36.80,85.59
.accept 69967 >>接任务: |cRXP_WARN_哨兵莫德伦|r
.complete 69967,1 
step
#title Dragon Glyph: South Hold Gate
.goto 2025,35.56,85.55
.achievement 16578,3 >>拿起塔顶的龙雕文|cffffff00 |r
step
>>杀死|cff00ecffMagmaswear灵长类动物|r
.goto 2025,36.67,83.38,20,0
.goto 2025,36.65,84.36,20,0
.goto 2025,36.08,84.59,20,0
.goto 2025,36.67,83.38
.complete 66169,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir.
.goto 2025,37.62,83.08
.turnin 66169 >>Turn in Vengeance, Served Hot
.turnin 66246 >>Turn in The Fog of Battle
.accept 66245 >>接任务: |cRXP_WARN_追思牺牲者|r
.target Guardian Velomir
step
>>与戴着面具的长矛互动
.goto 2025,37.85,83.26
.accept 66247 >>接任务: |cRXP_WARN_九点五成新|r
step
>>滑下来和二等兵希查谈谈。在路上到处找他。造成低伤害时跳过
.goto 2025,37.54,86.05,100,0
.goto 2025,37.44,82.26,100,0
.goto 2025,37.54,86.05,100,0
.goto 2025,37.44,82.26
.skipgossip
.accept 70986 >>接任务: |cRXP_WARN_列兵西克扎尔|r
.complete 70986,1 
step
.goto 2025,38.56,83.41
>>与重型绳索的线圈相互作用
.accept 66248 >>接任务: |cRXP_WARN_绑扎系固|r
step
#completewith ThaldraszusRemembertheThingsTogether
>>杀死|cff00ecffMagmaswear Rockcleaver|r。掠夺他们的长矛。
.goto 2025,38.70,84.41,0,0
.complete 66247,1 
step
#title |T1408443:0:0|tSignet 1
>>与地面上的尸体互动
.goto 2025,38.89,84.05
.complete 66245,1,1 
step
#title |T1119938:0:0|tRope 1
.goto 2025,39.14,84.03
.complete 66248,1,1 
step
#title |T1408443:0:0|tSignet 2
>>与地面上的尸体互动
.goto 2025,39.37,83.93
.complete 66245,1,2 
step
#title |T1119938:0:0|tRope 2
.goto 2025,39.47,83.83
.complete 66248,1,2 
step
#title |T1408443:0:0|tSignet 3
>>与地面上的尸体互动
.goto 2025,39.22,83.63
.complete 66245,1,3 
step
#title |T1408443:0:0|tSignet 4
>>与地面上的尸体互动
.goto 2025,39.21,83.18
.complete 66245,1,4 
step
#title |T1119938:0:0|tRope 3
.goto 2025,39.45,82.52
.complete 66248,1,3 
step
#title |T1408443:0:0|tSignet 5
>>与地面上的尸体互动
.goto 2025,39.69,82.10
.complete 66245,1,5 
step
#title |T1408443:0:0|tSignet 6
>>与地面上的尸体互动
.goto 2025,39.47,81.77
.complete 66245,1,6 
step
#title |T1408443:0:0|tSignet 7
>>与地面上的尸体互动
.goto 2025,39.00,81.90
.complete 66245,1,7 
step
#title |T1408443:0:0|tSignet 7 + |T1119938:0:0|tRope 4
>>与地面上的尸体互动
.goto 2025,39.09,82.54
.complete 66245,1,7 
.complete 66248,1,4 
step
#title |T1119938:0:0|tRope 5
.goto 2025,38.74,82.18
.complete 66248,1 
step
#label ThaldraszusRemembertheThingsTogether
#title |T1408443:0:0|tSignet 8
>>与地面上的尸体互动
.goto 2025,39.00,81.90
.complete 66245,1 
step
>>杀死|cff00ecffMagmaswear Rockcleaver|r。掠夺他们的长矛。
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
#loop
.line 2025,39.24,83.73,39.05,86.20,39.46,82.15,38.47,83.06,39.09,83.09,38.56,84.65
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
.goto 2025,38.56,84.65,20,0
.complete 66247,1 
step
.goto 2025,37.63,83.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.turnin 66245 >>Turn in Remember the Fallen
.turnin 66247 >>Turn in Slightly Used Weapons
.turnin 66248 >>Turn in Tying Things Together
.accept 66249 >>接任务: |cRXP_WARN_净空行动|r
.target Guardian Velomir
step
>>登上围攻蝎子
.goto 2025,40.88,83.88
.complete 66249,1 
step
>>环顾四周并发送垃圾邮件|T1412205:0:0|t围攻螺栓（1）以杀死|cff00ecffMagmaswear Trueborn|r
.goto 2025,40.88,83.88
.complete 66249,2 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.56,85.48
.turnin 66249 >>Turn in Clear the Sky
.accept 66250 >>接任务: |cRXP_WARN_长官何在？|r
.target Guardian Velomir
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
*You can skip the next cinematic
.goto 2025,40.19,85.16
.skipgossip
.complete 66250,1 
.target Guardian Velomir
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.13
.turnin 66250 >>Turn in Where's The Chief?
.accept 66251 >>接任务: |cRXP_WARN_火焰斗士|r
.target Guardian Velomir
step
>>使用射程能力将其击倒
.goto 2025,40.12,86.61
.complete 66251,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.14
.turnin 66251 >>Turn in Fire Fighter
.accept 66252 >>接任务: |cRXP_WARN_战况报告|r
.target Guardian Velomir
step
#completewith next
.cooldown item,6489,<1,1
.hs >>Hearth to Valdrakken
step
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.goto 2112,55.94,39.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66252 >>Turn in Reporting In
.target Captain Drine
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2112,61.56,39.13
.accept 66320 >>接任务: |cRXP_WARN_光阴流转|r
.target Nozdormu
step
#title Dragon Glyph: Gelikyr Overlook
.goto 2025,52.70,67.41
.achievement 16578,11 >>捡起下桥上方的龙雕
step
#title Dragon Glyph: Passage of Time
.goto 2025,55.71,72.20
.achievement 16578,12 >>在流沙入口处领取龙雕
step
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie and wait for the roleplay
>>|cffffff00在等待角色扮演时使用龙雕文|r
.skipgossip 187100,1
.timer 44,Roleplay Duration
.complete 66320,1 
.target Chromie
step
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 66320 >>Turn in The Flow of Time
.target Chromie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2025,57.53,78.79
.accept 66080 >>接任务: |cRXP_WARN_临时困扰|r
.target Andantenormu
step
>>小心别被撞倒
.goto 2025,55.60,77.33
.accept 69873 >>接任务: |cRXP_WARN_赫恩拉尔|r
.complete 69873,1 
step
>>Follow the arrow
.goto 2025,54.99,75.64
.complete 66080,1 
step
.goto 2025,54.96,75.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66080 >>Turn in Temporal Difficulties
.accept 70136 >>接任务: |cRXP_WARN_无暇思痛|r
.target Siaszerathel
step
#sticky
#label ThaldraszusHaventGotTimeForStaff
>>Pick up the staff
.goto 2025,52.72,76.86,0,0
.complete 70136,1 
step
>>杀死|cff00ecffCrazed Alpha |r
.goto 2025,52.69,76.81
.complete 70136,3 
step
#requires ThaldraszusHaventGotTimeForStaff
>>Pick up the notes
.goto 2025,53.18,77.39
.complete 70136,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,54.96,75.65
.turnin 70136 >>Turn in Haven't Got Time For the Pain
.accept 66082 >>接任务: |cRXP_WARN_瓶装时间|r
.accept 66081 >>接任务: |cRXP_WARN_时光飞逝|r
.target Siaszerathel
step
#sticky
#label ThaldraszusTimeinaBottle
.goto 2025,54.25,76.62,0,0
>>杀死该区域的暴民并穿过时间蛾（发光的球体）
*Sadly others can steal your orbs :(
.complete 66082,1 
step
#title Collector 1
.goto 2025,55.07,76.76
.complete 66081,1,1 
step
#title Collector 2
.goto 2025,55.57,76.80
.complete 66081,1,2 
step
#title Collector 3
.goto 2025,56.48,78.08
.complete 66081,1,3 
step
#title Collector 4
.goto 2025,55.60,78.95
.complete 66081,1,4 
step
#title Collector 5
.goto 2025,55.02,78.81
.complete 66081,1,5 
step
#title Collector 6
.goto 2025,55.20,77.85
.complete 66081,1,6 
step
#title Collector 7
.goto 2025,54.34,77.86
.complete 66081,1,7 
step
#title Collector 8
.goto 2025,54.25,76.62
.complete 66081,1 
step
#requires ThaldraszusTimeinaBottle
.goto 2025,57.45,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66082 >>Turn in Time in a Bottle
.turnin 66081 >>Turn in Time is Running Out
.timer 10,Roleplay Duration
.target Siaszerathel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu after a short roleplay
.goto 2025,57.52,78.79
.accept 66083 >>接任务: |cRXP_WARN_宛如初见|r
.timer 20,Roleplay Duration
.target Andantenormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等着Andantenomu和他说话
.goto 2025,57.58,78.37
.skipgossip
.complete 66083,1 
.target Andantenormu
step
>>与时态收集器交互
.goto 2025,57.68,78.33
.complete 66083,2 
step
>>与Crystal Focus互动
.goto 2025,57.66,78.39
.complete 66083,3 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>与失时文物互动
.goto 2025,57.64,78.46
.complete 66083,4 
.timer 90,Roleplay Duration
step
>>等Andantenormu把你带回来。您也可以通过时间门户
.complete 66083,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等着Andantenomu和他说话
.goto 2025,57.52,78.79
.turnin 66083 >>Turn in Feels Like the First Time
.accept 66084 >>接任务: |cRXP_WARN_时势如此|r
.target Andantenormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,57.45,78.92
.accept 66085 >>接任务: |cRXP_WARN_倘若光阴倒转|r
.target Siaszerathel
step
#completewith next
.goto 2025,57.62,79.02
.fp >>获取流沙飞行路径
step
#completewith ThaldraszusIfWeCouldTurnBackTime
>>杀死该区域的大部分|cff00ecffmurlocs|r。掠夺他们的残留物
.complete 66084,1 
step
>>与时间裂缝互动
.goto 2025,58.59,78.21
.complete 66085,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,59.80,79.31
.skipgossip
.timer 5,Roleplay Duration
.complete 66085,2 
.target Siaszerathel
step
>>与时间裂缝互动
.goto 2025,60.00,79.28
.complete 66085,3 
step
>>与时间裂缝互动
.goto 2025,59.98,77.20
.complete 66085,4 
step
#label ThaldraszusIfWeCouldTurnBackTime
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu
.goto 2025,59.95,77.23
.skipgossip
.complete 66085,5 
.target Aeonormu
step
>>杀死该区域的大部分|cff00ecffmurlocs|r。掠夺他们的残留物
.goto 2025,59.81,78.84,25,0
.goto 2025,58.58,77.11,25,0
.goto 2025,58.30,78.80,25,0
.goto 2025,59.96,79.27,25,0
.goto 2025,59.43,78.17
.complete 66084,1 
step
#requires ThaldraszusTimesLikeThese
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Siaszerathel
.turnin 66084 >>Turn in Times Like These
.goto 2025,57.52,78.79
.turnin 66085 >>Turn in If We Could Turn Back Time
.goto 2025,57.45,78.92
.target Andantenormu
.target Siaszerathel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu
.goto 2025,57.55,78.87
.accept 66087 >>接任务: |cRXP_WARN_终止时间|r
.target Aeonormu
step
>>使用|cffffff00[ExtractActionButton]|r专注于关闭时间步枪和buff|cff00ff00Bronze Warders|r
*You can also kill mobs
.goto 2025,57.17,81.02,20,0
.goto 2025,57.74,81.17,20,0
.goto 2025,56.84,82.16,20,0
.goto 2025,56.95,84.29,20,0
.goto 2025,57.68,84.86,20,0
.goto 2025,57.88,83.81,20,0
.goto 2025,57.88,84.55
.complete 66087,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu and Andantenormu
.turnin 66087 >>Turn in Closing Time
.goto 2025,57.55,78.87
.accept 65935 >>接任务: |cRXP_WARN_追赶克罗米|r
.goto 2025,57.52,78.80
.target Andantenormu
.target Aeonormu
step
>>Fly to Chromie
.goto 2025,59.64,81.51
.complete 65935,1 
.target Chromie
step
.goto 2025,59.57,81.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 65935 >>Turn in Catching Up to Chromie
.accept 65948 >>接任务: |cRXP_WARN_时光碎块|r
.accept 65947 >>接任务: |cRXP_WARN_凝时旅行者|r
.target Chromie
step
.goto 2025,59.56,82.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.accept 66646 >>接任务: |cRXP_WARN_伤亡控制|r
.target Andantenormu
step
#completewith ThaldraszusCracksInTime
>>杀死|cff00ecffTimelings|r和|cff0ecffTimeless因果关系|r
.complete 66646,1 
step
#title Timewalker 1
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,59.01,82.77
.complete 65947,1,1 
step
#title Timewalker 2
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,58.72,82.44
.complete 65947,1,2 
step
#title Timewalker 3
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,58.38,82.14
.complete 65947,1,3 
step
#title Timewalker 4
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,58.15,82.86
.complete 65947,1,4 
step
>>使用|cffffff00[ExtraActionButton]|r并离开水晶
.goto 2025,58.46,83.10
.complete 65948,1 
step
>>与地面上的时间晶体相互作用以收集50个能量。
.goto 2025,58.41,82.98
.complete 65948,3,50 
step
#title Timewalker 5
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.31,81.39
.complete 65947,1,5 
step
>>使用|cffffff00[ExtraActionButton]|r并离开水晶
.goto 2025,60.76,80.48
.complete 65948,2 
step
#completewith ThaldraszusTimeLockedTimewalkers
>>与地面上的时间水晶相互作用以收集丢失的50能量。
.goto 2025,60.68,80.37,0,0
.complete 65948,3 
step
#title Timewalker 6
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.87,80.02
.complete 65947,1,6 
step
#title Timewalker 7
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.46,79.74
.complete 65947,1,7 
step
#label ThaldraszusTimeLockedTimewalkers
#title Timewalker 8
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.27,80.40
.complete 65947,1 
step
#label ThaldraszusCracksInTime
>>与地面上的时间水晶相互作用以收集丢失的50能量。
.goto 2025,60.68,80.37
.complete 65948,3 
step
>>杀死|cff00ecffTimelings|r和|cff0ecffTimeless因果关系|r
.goto 2025,58.46,83.10,30,0
.goto 2025,60.25,80.16,30,0
.goto 2025,60.76,80.48
.complete 66646,1 
step
#requires ThaldraszusQuellingCausalities
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Chromie
.turnin 66646 >>Turn in Quelling Causalities
.goto 2025,59.56,82.67
.turnin 65947 >>Turn in Time-Locked Timewalkers
.turnin 65948 >>Turn in Cracks in Time
.accept 65938 >>接任务: |cRXP_WARN_永恒之伍|r
.goto 2025,59.58,81.75
.target Andantenormu
.target Chromie
step
>>使用|cffffff00[ExtraActionButton]|r，然后走下坡道
*Make sure to dismount
.goto 2025,60.49,83.26
.complete 65938,1 
step
>>杀死|cff00ecff巨人时间元素|r
.goto 2025,60.68,83.58
.complete 65938,2 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,59.58,81.71
.turnin 65938 >>Turn in The Once and Future Team
.accept 65962 >>接任务: |cRXP_WARN_无尽倒计时|r
.target Chromie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,59.58,81.71
.skipgossip 6
.complete 65962,1 
.target Chromie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2025,60.05,82.45
.turnin 65962 >>Turn in The Never-Final Countdown
.accept 70040 >>接任务: |cRXP_WARN_坠越时间|r
.target Nozdormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi
.goto 2025,59.52,82.51
.skipgossip
.complete 70040,1 
.target Soridormi
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,59.30,82.16
.skipgossip
.complete 70040,3 
.target Siaszerathel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2025,60.19,81.77
.skipgossip
.complete 70040,2 
.target Andantenormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu and wait for the roleplay
.goto 2025,60.06,82.44
.skipgossip 186931,1
.timer 24,Roleplay Duration
.complete 70040,4 
.target Nozdormu
step
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 70040 >>Turn in Tumbling Through Time
.accept 66029 >>接任务: |cRXP_WARN_临时调整|r
.accept 66028 >>接任务: |cRXP_WARN_走向未来！|r
.target Nozdormu
step
>>与通往灵长类动物未来的门户互动
.goto 2025,59.83,82.24
.complete 66028,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi and Possible Future You
.turnin 66028 >>Turn in To the Future!
.accept 66030 >>接任务: |cRXP_WARN_抵抗并非徒劳|r
.goto 2085,61.10,50.82
.accept 66031 >>接任务: |cRXP_WARN_争分夺秒|r
.goto 2085,61.45,50.20
.target Soridormi
.target Possible Future You
step
>>在Chromie和Eternus附近使用|T133240:0|t[Chrono Crystal]
.goto 2085,46.92,41.15
.use 192749
.complete 66029,1 
step
#completewith ThaldraszusResistanceIsntFutile
+如果您需要战斗帮助，请使用|cffffff00[ExtraActionButton]|r
step
#completewith ThaldraszusResistanceIsntFutile
>>杀死|cff00ecffHoary Icicles|r或|cff0ecffRestless Icicless|r。掠夺它们以获取精华
*Avoid killing elites
.complete 66031,1 
step
#title Fighter Healed 1
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,44.72,43.63
.complete 66030,1,1 
step
#title Fighter Healed 2
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,43.49,41.13
.complete 66030,1,2 
step
#title Fighter Healed 3
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,44.32,38.42
.complete 66030,1,3 
step
#title Fighter Healed 4
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,46.97,36.33
.complete 66030,1,4 
step
#title Fighter Healed 5
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,46.04,32.44
.complete 66030,1,5 
step
#title Fighter Healed 6
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,50.64,30.28
.complete 66030,1,6 
step
#title Fighter Healed 7
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,52.77,30.22
.complete 66030,1,7 
step
#title Fighter Healed 8
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,54.49,28.54
.complete 66030,1,8 
step
#title Fighter Healed 9
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,52.47,24.21
.complete 66030,1,9 
step
#label ThaldraszusResistanceIsntFutile
#title Fighter Healed 10
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,62.04,28.40
.complete 66030,1,10 
step
>>杀死并释放|cff00ecffHoary Icicles|r或|cff0ecffRestless Icicless|r
*Avoid killing elites
.goto 2085,57.87,25.26,20,0
.goto 2085,52.36,24.46,20,0
.goto 2085,56.61,28.14
.complete 66031,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Possible Future You and Soridormi
.turnin 66031 >>Turn in Making Time
.goto 2085,61.47,50.22
.turnin 66030 >>Turn in Resistance Isn't Futile
.goto 2085,61.08,50.83
step
.goto 2085,61.09,50.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi
.accept 66032 >>接任务: |cRXP_WARN_返回现世|r
.target Soridormi
step
#completewith next
.goto 2085,61.01,50.55
.zone 2025 >>Use the portal back
step
.goto 2025,60.05,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66029 >>Turn in Temporal Tuning
.turnin 66032 >>Turn in Return to the Present
.accept 72519 >>接任务: |cRXP_WARN_陨时二度|r
.accept 66033 >>接任务: |cRXP_WARN_走向……过去？|r
.target Nozdormu
step
>>使用传送门到Azmerloth
.goto 2025,59.97,82.08
.complete 66033,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66033 >>Turn in To the... Past?
.accept 66035 >>接任务: |cRXP_WARN_鱼人微粒|r
.goto 2092,59.83,66.15
.accept 66036 >>接任务: |cRXP_WARN_Mugurlglrlgl！|r << Alliance
.accept 66704 >>接任务: |cRXP_WARN_Mugurlglrlgl！|r << Horde
.goto 2092,59.97,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
#completewith next
+你只能在这里使用普通的地面支架！
step
#completewith ThaldraszusMurlocMotes
>>杀死|cff00ecff死亡驱逐舰|r和|cff0ecff死亡人数|r
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
#title Mote 1
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.05,68.69
.complete 66035,1,1 
step
#title Mote 2
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.62,68.39
.complete 66035,1,2 
step
#title Mote 3
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.71,66.76
.complete 66035,1,3 
step
#title Mote 4
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.27,67.05
.complete 66035,1,4 
step
#title Mote 5
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.61,65.98
.complete 66035,1,5 
step
#title Mote 6
>>穿过Motes。你可能不得不跳下去
.goto 2092,62.54,66.16
.complete 66035,1,6 
step
#title Mote 7
>>穿过Motes。你可能不得不跳下去
.goto 2092,62.72,65.11
.complete 66035,1,7 
step
#title Mote 8
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.85,63.81
.complete 66035,1,8 
step
>>在Chromie和Eternus附近使用|T133240:0|t[Chrono Crystal]
.goto 2092,61.49,61.76
.use 192749
.complete 72519,1 
step
#title Mote 9
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.22,63.50
.complete 66035,1,9 
step
#title Mote 10
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.28,63.88
.complete 66035,1,10 
step
#title Mote 11
>>穿过Motes。你可能不得不跳下去
.goto 2092,59.25,63.30
.complete 66035,1,11 
step
#label ThaldraszusMurlocMotes
#title Mote 12
>>穿过Motes。你可能不得不跳下去
.goto 2092,58.53,64.12
.complete 66035,1 
step
>>杀死|cff00ecff死亡驱逐舰|r和|cff0ecff死亡人数|r
.goto 2092,58.57,64.94,25,0
.goto 2092,59.25,67.50,25,0
.goto 2092,60.77,67.83,25,0
.goto 2092,61.69,64.23
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66035 >>Turn in Murloc Motes
.goto 2092,59.84,66.14
.turnin 66036 >>Turn in Mugurlglrlgl! << Alliance
.turnin 66704 >>Turn in Mugurlglrlgl! << Horde
.accept 70373 >>接任务: |cRXP_WARN_死亡之伊鲁古勒！|r << Alliance
.accept 70371 >>接任务: |cRXP_WARN_死亡之伊鲁古勒！|r << Horde
.timer 5,Roleplay Duration
.goto 2092,59.98,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
>>在短暂的角色扮演后登上料斗
.goto 2092,59.81,65.71
.complete 70373,1 <<Alliance 
.complete 70371,1 <<Horde 
step
>>垃圾邮件|T651086:0|t螺栓（1）。冷却时使用（2）和（3）。
*Make sure to target Deathwingurlugull.
.complete 70373,2 <<Alliance 
.complete 70371,2 <<Horde 
step
#completewith next
+|cfff78300提前离开车辆|r
step <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Varian Wryngrrlgulgll and Andantenormu
.turnin 70373 >>Turn in Deathwingurlugull!
.goto 2092,59.91,65.99
.accept 66037 >>接任务: |cRXP_WARN_回到现实|r
.goto 2092,59.83,66.14
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
step <<Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrallgrulgulgul and Andantenormu
.turnin 70371 >>Turn in Deathwingurlugull!
.goto 2092,59.97,65.99
.accept 66037 >>接任务: |cRXP_WARN_回到现实|r
.goto 2092,59.83,66.14
.target Andantenormu
.target Thrallgrulgulgul << Horde
step
#completewith next
.goto 2092,59.72,66.11
.zone 2025 >>使用门户进行时间冲突
step
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66037 >>Turn in Back to Reality
.turnin 72519 >>Turn in Temporal Two-ning
.accept 66660 >>接任务: |cRXP_WARN_就位……预备……|r
.target Nozdormu
step
>>使用Gnoll战争的传送门
.goto 2025,59.92,82.19
.complete 66660,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2090,43.39,69.22
.turnin 66660 >>Turn in On Your Mark... Get Set...
.accept 66038 >>接任务: |cRXP_WARN_与时间赛跑！|r
.target Andantenormu
step
#completewith ThaldraszusRaceThroughTime
+|cfff78300穿过速度靴获得移动速度buff并避开圆圈|r
step
.isOnQuest 66038
.goto 2090,43.19,68.05,15,0
.goto 2090,42.97,66.93,15,0
.goto 2090,42.61,65.18,15,0
.goto 2090,41.96,63.82,15,0
.goto 2090,41.58,61.96,15,0
.goto 2090,40.63,59.71,15,0
.goto 2090,40.32,57.88,15,0
.goto 2090,39.65,56.46,15,0
.goto 2090,38.11,54.13,15,0
.goto 2090,37.08,53.36,15,0
.goto 2090,35.78,53.56,15,0
.goto 2090,34.68,53.16,15,0
.goto 2090,33.77,52.04,15,0
.goto 2090,32.83,50.54,15,0
.goto 2090,32.37,49.70
.zone 2091 >>顺着箭头走。到达第一个入口
step
.isOnQuest 66038
.goto 2091,47.16,66.66,15,0
.goto 2091,46.67,67.58,15,0
.goto 2091,45.90,68.25,15,0
.goto 2091,45.16,69.52,15,0
.goto 2091,44.47,69.63,15,0
.goto 2091,43.24,70.61,15,0
.goto 2091,42.02,72.21,15,0
.goto 2091,41.39,73.50,15,0
.goto 2091,40.97,75.02,15,0
.goto 2091,40.34,75.91,15,0
.goto 2091,39.52,76.78
.zone 2088 >>顺着箭头走。到达第二个入口
step
.isOnQuest 66038
.goto 2088,31.30,63.53,15,0
.goto 2088,30.14,63.46,25,0
.goto 2088,28.64,62.93,25,0
.goto 2088,27.67,62.74,25,0
.goto 2088,24.05,60.46,25,0
.goto 2088,22.84,59.25,25,0
.goto 2088,22.11,60.21,25,0
.goto 2088,21.42,59.20,25,0
.goto 2088,19.80,58.69,25,0
.goto 2088,17.92,59.28,25,0
.goto 2088,15.74,58.55,25,0
.goto 2088,15.05,83.53
.zone 2089 >>顺着箭头走。到达第三个入口
step
#label ThaldraszusRaceThroughTime
.goto 2089,43.38,69.19
.complete 66038,1 
step
.goto 2089,52.36,73.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.turnin 66038 >>Turn in Race Through Time!
.accept 66039 >>接任务: |cRXP_WARN_克罗米时间|r
.target Andantenormu
step
.itemcount 132516,1
#completewith TheBlackEmpireChromieTime
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
.itemcount 132516,0
#completewith TheBlackEmpireChromieTime
+您只能使用普通装载
step
#completewith next
.goto 2089,57.08,69.02,20,0
.goto 2089,57.44,54.32,20,0
.goto 2089,53.76,43.23,20 >>Follow the arrow
step
#label TheBlackEmpireChromieTime
>>在Chromie和Eternus附近使用|T133240:0|t[Chrono Crystal]
.goto 2089,53.76,43.23
.use 192749
.complete 66039,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2089,53.41,43.93
.turnin 66039 >>Turn in Chromie Time
.accept 66040 >>接任务: |cRXP_WARN_回到未来|r
.target Chromie
step
#completewith next
+别忘了，您可以使用|cffffff00[ExtraActionButton]|r
+您可以跳过下一个过场（Esc->是）
step
>>Kill the incoming waves
.goto 2089,52.94,44.53
.skipgossip
.complete 66040,1 
.complete 66040,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,60.08,82.42
.skipgossip 1
.complete 66040,3 
.target Chromie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2025,60.05,82.45
.turnin 66040 >>Turn in Back to the Future
.accept 66221 >>接任务: |cRXP_WARN_勇往直前|r
.target Nozdormu
step
#completewith next
.hs >>Hearth to Valdrakken
step
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza
.goto 2112,58.09,34.76
.skipgossip 187678,1
.complete 66221,1 
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2112,58.09,34.76
.turnin 66221 >>Turn in Moving On
.target Alexstrasza the Life-Binder
step
.pve
.xp 70,1
.goto 2025,50.27,67.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Szareth
.accept 69932 >>接任务: |cRXP_WARN_生命宝贵|r
.accept 69933 >>接任务: |cRXP_WARN_好奇的代价|r
.target Szareth
step
.pve
.xp 70,1
#completewith ThaldraszusCuriositysPrice
>>杀死|cff00ecff高效授粉器|r。掠夺它们以获取花粉
>>或者掠夺华丽的花朵
.complete 69932,2 
step
.pve
.xp 70,1
#title Sun-Basked Linens 1/6
>>拿起手工编织的篮子
.goto 2025,49.60,67.54
.complete 69932,1,1 
step
.pve
.xp 70,1
#title Sun-Basked Linens 2/6
>>拿起手工编织的篮子
.goto 2025,49.28,67.47
.complete 69932,1,2 
step
.pve
.xp 70,1
#title Sun-Basked Linens 3/6
>>拿起手工编织的篮子
.goto 2025,49.00,67.24
.complete 69932,1,3 
step
.pve
.xp 70,1
#title Sun-Basked Linens 4/6
>>拿起手工编织的篮子
.goto 2025,48.80,67.22
.complete 69932,1,4 
step
.pve
.xp 70,1
#title Sun-Basked Linens 5/6
>>拿起手工编织的篮子
.goto 2025,49.60,67.54
.complete 69932,1,5 
step
.pve
.xp 70,1
#title Sun-Basked Linens 6/6
>>拿起手工编织的篮子
.goto 2025,48.81,67.04
.complete 69932,1 
step
.pve
.xp 70,1
#label ThaldraszusCuriositysPrice
>>点击Stubborn Vine，然后移开将其拔出
>>之后击毙拉丹袭击者
.complete 69933,1 
.complete 69933,2 
step
.pve
.xp 70,1
>>杀死|cff00ecff高效授粉器|r。掠夺它们以获取花粉
>>或者掠夺华丽的花朵
.goto 2025,49.26,66.42,25,0
.goto 2025,49.89,66.67,25,0
.goto 2025,49.31,66.83
.complete 69932,2 
step
.pve
.xp 70,1
>>点击大楼内的小急流
.goto 2025,49.42,67.92
.complete 69932,3 
step
.pve
.xp 70,1
.goto 2025,50.28,67.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Szareth
.turnin 69932 >>Turn in Every Life Counts
.turnin 69933 >>Turn in Curiosity's Price
.accept 69934 >>接任务: |cRXP_WARN_豆腐心肠|r
.target Szareth
step
.pve
.xp 70,1
#completewith next
.goto 2025,52.99,67.56,15 >>进入洞穴
step
.pve
.xp 70,1
>>点击洞穴中的胸部
.goto 2025,53.32,67.52
.complete 69934,1 
step
.pve
.xp 69,1
>>点击Gelikyr Post内的胸部
.goto 2025,51.69,69.16
.complete 69934,2 
step
.pve
.goto 2025,51.70,69.26
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Timetender Athekk
.turnin 69934 >>Turn in Bleeding Hearts
.target Timetender Athekk
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.accept 66134 >>接任务: |cRXP_WARN_艾泽拉斯虫害控制|r
.target Gryrmpech
step
.xp 70,1
.isOnQuest 66134
>>杀死|cff00ecff搅拌过的幼苗|r
.goto 2025,38.34,74.99,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
#loop
.line 2025,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66
.goto 2025,38.34,74.99,18,0
.goto 2025,18.00,38.33,18,0
.goto 2025,75.60,37.69,18,0
.goto 2025,76.04,37.23,18,0
.goto 2025,76.66,38.34,18,0
.goto 2025,74.99,18.00,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
.complete 66134,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66134 >>Turn in Azeroth Pest Control
.accept 66135 >>接任务: |cRXP_WARN_园丁的学徒|r
.target Gryrmpech
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击地面上的青铜秒表
.goto 2025,38.91,74.25
.accept 66278 >>接任务: |cRXP_WARN_彼之垃圾|r
step
.xp 70,1
>>点击储物箱、毁坏的桶、花园垃圾和废木材来清理房间
.goto 2025,38.94,74.18
.complete 66135,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66135 >>Turn in The Gardener's Apprentice
.turnin 66278 >>Turn in One Drakonid's Junk
.accept 66136 >>接任务: |cRXP_WARN_元素提炼|r
.accept 66137 >>接任务: |cRXP_WARN_鞭笞一击|r
.accept 66279 >>接任务: |cRXP_WARN_准点新徒|r
.target Gryrmpech
step
.xp 70,1
>>点击地面上的巴兹尔顿勋爵
.goto 2025,37.88,75.44
.complete 66279,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.complete 66279,2 
.target Orizmu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66279 >>Turn in New Kid on the Clock
.accept 66138 >>接任务: |cRXP_WARN_流沙过隙|r
.target Orizmu
step
.xp 70,1
#title Pile of Sand 1/8
>>捡起地上的沙子
.goto 2025,35.52,72.78
.complete 66138,1,1 
step
.xp 70,1
#title Pile of Sand 2/8
>>捡起地上的沙子
.goto 2025,35.69,72.60
.complete 66138,1,2 
step
.xp 70,1
#title Pile of Sand 4/8
>>捡起地上的沙子
.goto 2025,35.83,72.77,-1
.goto 2025,35.81,72.48,-1
.complete 66138,1,4 
step
.xp 70,1
#title Pile of Sand 5/8
>>捡起地上的沙子
.goto 2025,36.02,72.57
.complete 66138,1,5 
step
.xp 70,1
#title Pile of Sand 6/8
>>捡起地上的沙子
.goto 2025,36.22,72.42
.complete 66138,1,6 
step
.xp 70,1
#title Pile of Sand 7/8
>>捡起地上的沙子
.goto 2025,36.47,72.43
.complete 66138,1,7 
step
.xp 70,1
#title Pile of Sand 8/8
>>捡起地上的沙子
.goto 2025,36.61,72.69
.complete 66138,1 
step
.xp 70,1
>>杀死|cff00ecffLiskron the Dazzling |r。如果你造成低伤害，请跳过
.goto 2025,36.24,72.50
.accept 72116 >>接任务: |cRXP_WARN_炫目的里斯克隆|r
.complete 72116,1 
step
.xp 70,1
>>杀死|cff00ecffChurning飞溅|r和|cff0ecffHulking Waves |r。掠夺它们的精华
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,18,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
#loop
.line 2025,37.51,71.73,37.40,70.99,37.32,69.70,36.88,70.49,36.88,71.21
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,20,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
.complete 66136,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66138 >>Turn in Like Sands Through the Hourglass
.target Orizmu
step
.xp 70,1
>>杀死该地区的|cff00ecffLashers|r
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71,67,20,0
#loop
.line 2025,34.73,72.95,33.89,72.63,34.16,71.85,34.60,71,67,34.79,72.37
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71.00,20,0
.goto 2025,67.00,34.79,20,0
.complete 66137,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66136 >>Turn in Elemental Extract
.turnin 66137 >>Turn in Lashing Out
.accept 66139 >>接任务: |cRXP_WARN_[Flame at Last]|r
.target Gryrmpech
step
.xp 70,1
>>在|cff00ecffBlazing Inferno|r上使用|T236213:0|t【浓缩水精华】并杀死它
.goto 2025,35.58,75.16
.complete 66139,1 
.complete 66139,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66139 >>Turn in Flame at Last
.accept 66412 >>接任务: |cRXP_WARN_继续前行，巴希尔顿|r
.target Gryrmpech
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Basilton
.goto 2025,37.88,75.44
.complete 66412,1 
.target Lord Basilton
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.47
.turnin 66412 >>Turn in Carry On, Basilton
.target Gryrmpech
step
.xp 70,1
.goto 2022,60.23,72.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞到Thomas Bright那里和他谈谈
.accept 67100 >>接任务: |cRXP_WARN_赠予米格尔|r
.target Thomas Bright
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再次与Thomas Bright交谈
.goto 2022,60.23,72.18
.skipgossip 1
.complete 67100,1 
.target Thomas Bright
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.06,58.13
.accept 66435 >>接任务: |cRXP_WARN_现场回收|r
.accept 66436 >>接任务: |cRXP_WARN_捣蛋鬼入土|r
.target Elementalist Taiyang
step
.xp 70,1
#completewith WakingShoreAKeyElement
>>杀死|cff00ecffEarth元素|r
.goto 2022,66.06,58.13,0,0
.complete 66436,1 
step
.xp 70,1
#completewith next
>>杀死|cff00ecffEarth Elements|r.Loot Orb of Primal Stone。在你的包里点击它
.collect 191904,1,66437,1
.accept 66437 >>接任务: |cRXP_WARN_关键元素|r
step
.xp 70,1
#title Spam talk to the explorer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cfff78300与Beleaguered Explorer进行垃圾邮件对话|r
.goto 2022,67.16,58.32,10,0
.goto 2022,67.53,57.97,10,0
.goto 2022,67.87,57.90,10,0
.goto 2022,67.81,57.37,10,0
.goto 2022,67.60,56.51
.skipgossip
.complete 66435,1 
step
.xp 70,1
#label WakingShoreAKeyElement
>>杀死|cff00ecffEarth Elements|r.Loot Orb of Primal Stone。在你的包里点击它
.collect 191904,1,66437,1
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.accept 66437 >>接任务: |cRXP_WARN_关键元素|r
step
.xp 70,1
>>杀死|cff00ecffEarth元素|r
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.goto 2022,67.89,54.73,20,0
.goto 2022,66.06,58.13
.complete 66436,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66436 >>Turn in Unearthed Troublemakers
.turnin 66435 >>Turn in Site Salvage
.turnin 66437 >>Turn in A Key Element
.target Elementalist Taiyang
step
.xp 70,1
.goto 2022,66.57,56.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Tae'shara Bloodwatcher
.accept 66438 >>接任务: |cRXP_WARN_目标远大|r
.accept 66441 >>接任务: |cRXP_WARN_蒸馏法|r
.accept 66439 >>接任务: |cRXP_WARN_火急火燎|r
.target Examiner Tae'shara Bloodwatcher
step
.xp 70,1
.goto 2022,70.49,56.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.accept 70994 >>接任务: |cRXP_WARN_排水系统解决方案|r
.target Zikkori
step
.xp 70,1
#completewith next
>>把|T3610505:0|t[Zikkori的吸水装置]扔到闪闪发光的溪流下
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
.xp 70,1
>>杀死|cff00ecffAcequian|r。为球体掠夺它
.goto 2022,72.17,56.71
.complete 66441,1 
step
.xp 70,1
>>把|T3610505:0|t[Zikkori的吸水装置]扔到闪闪发光的溪流下
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.goto 2022,70.50,56.84
.turnin 70994 >>Turn in Drainage Solutions
.target Zikkori
step
.xp 70,1
#completewith next
>>杀死该区域的|cff00ecff首要部队|r。为火精灵掠夺它们
.goto 2022,68.13,64.19
.complete 67100,2 
step
.xp 70,1
>>杀死该区域的|cff00ecff首要部队|r。为火焰而掠夺碎片
.goto 2022,69.89,64.44
.complete 66439,1 
step
.xp 70,1
>>杀死该区域的|cff00ecff首要部队|r。为火精灵掠夺它们
.goto 2022,68.13,64.19
.complete 67100,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Ri'tal
.goto 2022,70.64,63.13
.complete 66438,1 
.target Scout Ri'tal
step
.xp 70,1
>>|cfff78300拥抱右侧墙壁|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Francisco
.goto 2022,70.14,61.53
.complete 66438,2 
.target Scout Francisco
step
.xp 70,1
>>|cfff78300抓住左墙，然后按箭头|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk
.goto 2022,69.39,61.86,10,0
.goto 2022,69.08,61.66,8,0
.goto 2022,68.27,61.54
.complete 66438,3 
step
.xp 70,1
>>使用|T135821:0t[原始火焰碎片]
.use 192545
.goto 2022,66.59,56.08
.complete 66439,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66438 >>Turn in Lofty Goals
.turnin 66439 >>Turn in Rapid Fire Plans
.turnin 66441 >>Turn in Distilled Effort
.accept 66442 >>接任务: |cRXP_WARN_理论依据|r
.target Elementalist Taiyang
step
.xp 70,1
>>在航路点等待，直到您可以使用|cffffff00[ExtraActionButton]|r并使用它
.goto 2022,66.56,56.06
.complete 66442,1 
.complete 66442,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.51,55.96
.turnin 66442 >>Turn in Let's Get Theoretical
.accept 66447 >>接任务: |cRXP_WARN_跨越屏障|r
.target Elementalist Taiyang
step
.xp 70,1
>>杀死|cff00ecffDiscrodant Watcher|r
.goto 2022,66.09,55.36
.complete 66447,1 
step
.xp 70,1
>>Click on the rune stone
.goto 2022,66.08,55.03
.complete 66447,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,65.88,57.47
.turnin 66447 >>Turn in Beyond the Barrier
.target Elementalist Taiyang
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞到Thomas Bright那里和他谈谈
.goto 2022,60.22,72.18
.turnin 67100 >>Turn in A Gift for Miguel
.target Thomas Bright
step
.xp 62.7,1
.goto 2022,37.45,71.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.accept 66003 >>接任务: |cRXP_WARN_环驭众火|r
.target Earthcaller Yevaa
step
.isOnQuest 66003
>>杀死|cff00ecffBlazing Manifessions|r。然后抢劫捆绑环
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
#loop
.line 2022,,37.99,71.58,38.15,73.04,37.31,73.68,,36.75,72.98,37.12,71.84,38.05,69.42
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.31,73.68,22,0
.goto 2022,36.75,72.98,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
.complete 66003,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.turnin -66003 >>Turn in Rings To Bind Them
.target Earthcaller Yevaa
step
.isQuestTurnedIn 66003
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.accept 66369 >>接任务: |cRXP_WARN_大地结界|r
.target Earthcaller Yevaa
step
.isOnQuest 66369
>>点击地球守卫
.goto 2022,37.54,71.23
.complete 66369,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.turnin -66369 >>Turn in The Earthen Ward
.target Earthcaller Yevaa
step
.isQuestTurnedIn 66369
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.accept 66368 >>接任务: |cRXP_WARN_风暴中的岛屿|r
.target Earthcaller Yevaa
step
.isOnQuest 66368
#completewith next
>>杀死|cff00ecffBlazing宣言|r
.complete 66368,1 
step
.isOnQuest 66368
.goto 2022,37.62,75.10
.complete 66368,2 
.unitscan Melter Igneous
step
.isOnQuest 66368
>>杀死|cff00ecffBlazing宣言|r
.goto 2022,37.98,76.02,20,0
.goto 2022,39.58,74.41,20,0
.goto 2022,39.14,73.14,20,0
.goto 2022,38.01,71.79,20,0
.goto 2022,36.55,71.79,20,0
.goto 2022,36.95,73.62,20,0
#loop
.line 2022,37.98,76.02,39.58,74.41,39.14,73.14,38.01,71.79,36.55,71.79,36.95,73.62
.goto 2022,37.98,76.02,25,0
.goto 2022,39.58,74.41,25,0
.goto 2022,39.14,73.14,25,0
.goto 2022,38.01,71.79,25,0
.goto 2022,36.55,71.79,25,0
.goto 2022,36.95,73.62,25,0
.complete 66368,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.78
.turnin -66368 >>Turn in Island In A Storm
.target Earthcaller Yevaa
step
.xp 70,1
#completewith next
.hs >>Hearth to Valdrakken
step
.xp 70,1
.goto 2025,40.42,49.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Spa Concierge
.turnin -72067 >>Turn in Relaxation Time!
.accept 72246 >>接任务: |cRXP_WARN_宁静美梦|r
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 72246 >>Turn in Serene Dreams
.accept 70738 >>接任务: |cRXP_WARN_俞加课|r
.goto 2025,40.49,48.93
.accept 70740 >>接任务: |cRXP_WARN_蒸汽清洁|r
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith ThaldraszusTheYougaClass
>>杀死|cff00ecffElements|r
.complete 70740,1 
step
.xp 70,1
.goto 2025,41.47,47.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与放置不当的行李互动
.accept 70741 >>接任务: |cRXP_WARN_他人所爱|r
step
.xp 70,1
>>营救尤加教官
.goto 2025,41.17,47.49
.complete 70738,2 
step
.xp 70,1
#title Belongings Found 2/6
>>捡起地上的书
.goto 2025,41.16,47.43
.complete 70741,1,2 
step
.xp 70,1
#title Student Rescued 1/6
>>Rescue the student
.goto 2025,41.45,47.04
.complete 70738,1,1 
step
.xp 70,1
#title Student Rescued 2/6
>>Rescue the student
.goto 2025,41.06,46.81
.complete 70738,1,2 
step
.xp 70,1
#title Belongings Found 3/6
>>拿起丢失的S.E.L.F.I.E相机
.goto 2025,40.72,47.31
.complete 70741,1,3 
step
.xp 70,1
#title Student Rescued 3/6
>>Rescue the student
.goto 2025,40.51,47.31
.complete 70738,1,3 
step
#title Student Rescued 4/6
>>Rescue the student
.goto 2025,40.18,46.94
.complete 70738,1,4 
step
.xp 70,1
#title Belongings Found 4/6
>>拿起时尚的雨伞
.goto 2025,40.10,46.61
.complete 70741,1,4 
step
.xp 70,1
#title Belongings Found 5/6
>>捡起翻过来的沙滩椅
.goto 2025,40.27,46.16
.complete 70741,1,5 
step
.xp 70,1
#title Student Rescued 5/6
>>Rescue the student
.goto 2025,40.03,45.98
.complete 70738,1,5 
step
.xp 70,1
#title Student Rescued 6/6
>>Rescue the student
.goto 2025,40.81,46.09
.complete 70738,1 
step
.xp 70,1
#label ThaldraszusTheYougaClass
#title Belongings Found 6/6
>>拿起湿漉漉的你加枕头
.goto 2025,41.01,45.96
.complete 70741,1 
step
.xp 70,1
>>杀死|cff00ecffElements|r
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
#loop
.line 2025,39.99,45.69,39.46,47.37,40.46,48.00,41.48,47.33,40.98,45.52
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
.complete 70740,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 70738 >>Turn in The You-ga Class
.turnin 70741 >>Turn in Some Favorite Things
.goto 2025,40.49,48.92
.turnin 70740 >>Turn in Steam Cleaning
.goto 2025,40.46,48.88
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara
.goto 2025,40.49,48.97
.accept 70743 >>接任务: |cRXP_WARN_宝贝宝宝|r
step
.xp 70,1
>>Follow the arrow
.goto 2025,38.90,45.22
.complete 70743,1 
step
.xp 70,1
>>等待角色扮演并点击小狗
.goto 2025,38.90,45.22
.complete 70743,2 
step
.xp 70,1
.goto 2025,38.89,45.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与恐怖的混乱互动
.accept 70744 >>接任务: |cRXP_WARN_看呐！骨头！|r
step
.xp 70,1
#title Cleaned Mess 2/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.92,45.22
.complete 70744,1,2 
step
.xp 70,1
#title Cleaned Mess 3/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.52,45.73
.complete 70744,1,3 
step
.xp 70,1
#title Cleaned Mess 4/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.65,46.19
.complete 70744,1,4 
step
.xp 70,1
#title Cleaned Mess 5/10
>>从地面上捡起更多可怕的混乱
.goto 2025,37.91,46.22
.complete 70744,1,5 
step
.xp 70,1
#title Cleaned Mess 6/10
>>从地面上捡起更多可怕的混乱
.goto 2025,37.79,46.29
.complete 70744,1,6 
step
.xp 70,1
#title Cleaned Mess 7/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.03,47.10
.complete 70744,1,7 
step
.xp 70,1
#title Cleaned Mess 8/10
>>从地面上捡起更多可怕的混乱
.goto 2025,39.18,47.34
.complete 70744,1,8 
step
.xp 70,1
#title Cleaned Mess 9/10
>>从地面上捡起更多可怕的混乱
.goto 2025,39.56,47.21
.complete 70744,1,9 
step
.xp 70,1
#title Cleaned Mess 10/10
>>从地面上捡起更多可怕的混乱
.goto 2025,39.70,47.88
.complete 70744,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara and Quillius
.turnin 70743 >>Turn in Precious Baby
.turnin 70744 >>Turn in Look at the Bones!
.goto 2025,40.49,48.97
.accept 70745 >>接任务: |cRXP_WARN_强制休闲|r
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith next
.goto 2025,39.69,47.45,20,0
.goto 2025,39.89,48.45,15 >>进入洞穴 below
step
.xp 70,1
>>杀死|cff00ecffVadme Blackheart|r。离开火和水的虚空区域
.goto 2025,40.04,49.05
.complete 70745,1 
step
.xp 70,1
.goto 2025,40.46,48.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quilius
.turnin 70745 >>Turn in Enforced Relaxation
step
+Campaign completed!
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup Threads of Fate 60-70
#name D4Thaldraszus ToF
#displayname Chapter 4 - Thaldraszus ToF (End)
step
.xp 70,1
#completewith next
+欢迎使用RestedXP的Thaldraszus ToF指南。
step
.xp 70,1
.goto 2112,48.09,59.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hot Springs Spa Promoter
.accept 72067 >>接任务: |cRXP_WARN_休闲时间！|r
step
.xp 70,1
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2112,58.15,34.90
.accept 66159 >>接任务: |cRXP_WARN_凶恶之讯|r
step
.xp 70,1
#completewith next
+您可以跳过下一个过场（Esc->是）
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza
.goto 2112,58.15,34.90
.skipgossip 187678,1
.complete 66159,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder and Captain Drine
.turnin 66159 >>Turn in A Message Most Dire
.goto 2112,58.15,34.90
.accept 66166 >>接任务: |cRXP_WARN_耳聪目明|r
.accept 66163 >>接任务: |cRXP_WARN_无处可藏|r
.goto 2112,59.39,34.83
step
.xp 70,1
#sticky
#label ThaldraszusNowheretoHide
>>使用|T317244:0:0|t再现龙眼
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cff00ff00Valdrakken Citizens|r marked on your (mini)map
.use 198859
.goto 2112,54.72,61.41,0
.goto 2112,51.12,62.54,0
.goto 2112,48.43,58.09,0
.goto 2112,50.54,50.77,0
.goto 2112,48.85,47.73,0
.goto 2112,35.85,56.65,0
.goto 2112,36.17,64.03,0
.goto 2112,41.60,65.28,0
.goto 2112,39.93,71.38,0
.goto 2112,37.98,71.29,0
.goto 2112,49.17,76.43,0
.goto 2112,52.35,76.87,0
.goto 2112,54.31,70.02,0
.goto 2112,40.11,51.80,0
.goto 2112,27.45,60.38,0
.goto 2112,25.16,64.89,0
.goto 2112,32.18,68.50,0
.goto 2112,31.40,62.95,0
.skipgossip
.complete 66163,1 
.complete 66163,2 
step
.xp 70,1
#completewith next
.goto 2112,55.50,57.34,8 >>用你的龙骑座滑翔下来，进入岸边
step
.xp 70,1
>>与储物箱互动
.goto 2112,59.18,54.69
.complete 66166,2 
step
.xp 70,1
#completewith next
.goto 2112,48.43,49.90,8 >>进入客栈
step
.xp 70,1
>>与酒杯互动
.goto 2112,46.94,47.74
.complete 66166,3 
step
.xp 70,1
#completewith next
.goto 2112,47.45,46.22
.home >>将你的炉石设定为烤公羊
step
.xp 70,1
#completewith next
.goto 2112,48.43,49.90,8 >>Leave the inn
step
.xp 70,1
>>与联合体分类帐交互
.goto 2112,34.66,61.30
.complete 66166,1 
step
.xp 70,1
#requires ThaldraszusNowheretoHide
.goto 2112,54.72,47.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66163 >>Turn in Nowhere to Hide
.turnin 66166 >>Turn in Eyes and Ears
.accept 66167 >>接任务: |cRXP_WARN_南侧遇袭|r
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.accept 66134 >>接任务: |cRXP_WARN_艾泽拉斯虫害控制|r
step
.xp 70,1
>>杀死|cff00ecff搅拌过的幼苗|r
.goto 2025,38.34,74.99,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
#loop
.line 2025,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66
.goto 2025,38.34,74.99,18,0
.goto 2025,18.00,38.33,18,0
.goto 2025,75.60,37.69,18,0
.goto 2025,76.04,37.23,18,0
.goto 2025,76.66,38.34,18,0
.goto 2025,74.99,18.00,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
.complete 66134,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66134 >>Turn in Azeroth Pest Control
.accept 66135 >>接任务: |cRXP_WARN_园丁的学徒|r
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击地面上的青铜秒表
.goto 2025,38.91,74.25
.accept 66278 >>接任务: |cRXP_WARN_彼之垃圾|r
step
.xp 70,1
>>点击储物箱、毁坏的桶、花园垃圾和废木材来清理房间
.goto 2025,38.94,74.18
.complete 66135,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66135 >>Turn in The Gardener's Apprentice
.turnin 66278 >>Turn in One Drakonid's Junk
.accept 66136 >>接任务: |cRXP_WARN_元素提炼|r
.accept 66137 >>接任务: |cRXP_WARN_鞭笞一击|r
.accept 66279 >>接任务: |cRXP_WARN_准点新徒|r
step
.xp 70,1
>>点击地面上的巴兹尔顿勋爵
.goto 2025,37.88,75.44
.complete 66279,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.complete 66279,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66279 >>Turn in New Kid on the Clock
.accept 66138 >>接任务: |cRXP_WARN_流沙过隙|r
step
.xp 70,1
#title Pile of Sand 1/8
>>捡起地上的沙子
.goto 2025,35.52,72.78
.complete 66138,1,1 
step
.xp 70,1
#title Pile of Sand 2/8
>>捡起地上的沙子
.goto 2025,35.69,72.60
.complete 66138,1,2 
step
.xp 70,1
#title Pile of Sand 2/8
>>捡起地上的沙子
.goto 2025,35.69,72.60
.complete 66138,1,2 
step
.xp 70,1
#title Pile of Sand 4/8
>>捡起地上的沙子
.goto 2025,35.83,72.77,-1
.goto 2025,35.81,72.48,-1
.complete 66138,1,4 
step
.xp 70,1
#title Pile of Sand 5/8
>>捡起地上的沙子
.goto 2025,36.02,72.57
.complete 66138,1,5 
step
.xp 70,1
#title Pile of Sand 6/8
>>捡起地上的沙子
.goto 2025,36.22,72.42
.complete 66138,1,6 
step
.xp 70,1
#title Pile of Sand 7/8
>>捡起地上的沙子
.goto 2025,36.47,72.43
.complete 66138,1,7 
step
.xp 70,1
#title Pile of Sand 8/8
>>捡起地上的沙子
.goto 2025,36.61,72.69
.complete 66138,1 
step
.xp 70,1
>>杀死|cff00ecffLiskron the Dazzling |r。如果你造成低伤害，请跳过
.goto 2025,36.24,72.50
.accept 72116 >>接任务: |cRXP_WARN_炫目的里斯克隆|r
.complete 72116,1 
step
.xp 70,1
>>杀死|cff00ecffChurning飞溅|r和|cff0ecffHulking Waves |r。掠夺它们的精华
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,18,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
#loop
.line 2025,37.51,71.73,37.40,70.99,37.32,69.70,36.88,70.49,36.88,71.21
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,20,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
.complete 66136,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66138 >>Turn in Like Sands Through the Hourglass
step
.xp 70,1
>>杀死该地区的|cff00ecffLashers|r
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71,67,20,0
#loop
.line 2025,34.73,72.95,33.89,72.63,34.16,71.85,34.60,71,67,34.79,72.37
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71.00,20,0
.goto 2025,67.00,34.79,20,0
.complete 66137,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66136 >>Turn in Elemental Extract
.turnin 66137 >>Turn in Lashing Out
.accept 66139 >>接任务: |cRXP_WARN_[Flame at Last]|r
step
.xp 70,1
>>在|cff00ecffBlazing Inferno|r上使用|T236213:0|t【浓缩水精华】并杀死它
.goto 2025,35.58,75.16
.complete 66139,1 
.complete 66139,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66139 >>Turn in Flame at Last
.accept 66412 >>接任务: |cRXP_WARN_继续前行，巴希尔顿|r
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Basilton
.goto 2025,37.88,75.44
.complete 66412,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.47
.turnin 66412 >>Turn in Carry On, Basilton
step
.xp 70,1
>>Follow the arrow
.goto 2025,35.80,82.12
.complete 66167,1 
step
.xp 70,1
>>与守护者Velomir互动
.goto 2025,35.85,82.56
.complete 66167,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,35.85,82.56
.turnin 66167 >>Turn in Southern Exposure
.accept 66169 >>接任务: |cRXP_WARN_现世报|r
.accept 66246 >>接任务: |cRXP_WARN_战争迷雾|r
step
.xp 70,1
#completewith ThaldraszusLookoutMordren
>>杀死|cff00ecffMagmaswear Primalists|r。如果你造成低伤害，则跳过
.goto 2025,36.65,84.36,0,0
.complete 66169,1 
step
.xp 70,1
>>与|cff00ff00Mangled Corpse|r交互
#title Unit Found 1
.goto 2025,36.25,83.73
.skipgossip
.complete 66246,1,1 
step
.xp 70,1
#completewith next
+Fly up
step
.xp 70,1
>>与|cff00ff00Mangled Corpse|r交互
#title Unit Found 2
.goto 2025,35.76,84.19
.skipgossip
.complete 66246,1,2 
step
.xp 70,1
>>与|cff00ff00Mangled Corpse|r交互
#title Unit Found 3
.goto 2025,36.46,85.39
.skipgossip
.complete 66246,1,3 
step
.xp 70,1
#label ThaldraszusLookoutMordren
>>飞上塔并杀死|cff00ecffLookout Mordren|r。低伤害跳跃
.goto 2025,36.80,85.59
.accept 69967 >>接任务: |cRXP_WARN_哨兵莫德伦|r
.complete 69967,1 
step
.xp 70,1
>>杀死|cff00ecffMagmaswear灵长类动物|r
.goto 2025,36.67,83.38,20,0
.goto 2025,36.65,84.36,20,0
.goto 2025,36.08,84.59,20,0
.goto 2025,36.67,83.38
.complete 66169,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,37.62,83.08
.turnin 66169 >>Turn in Vengeance, Served Hot
.turnin 66246 >>Turn in The Fog of Battle
.accept 66245 >>接任务: |cRXP_WARN_追思牺牲者|r
step
.xp 70,1
>>与戴着面具的长矛互动
.goto 2025,37.85,83.26
.accept 66247 >>接任务: |cRXP_WARN_九点五成新|r
step
.xp 70,1
>>滑下来与二等兵希查交谈
.goto 2025,37.54,86.05
.skipgossip
.accept 70986 >>接任务: |cRXP_WARN_列兵西克扎尔|r
.complete 70986,1 
step
.xp 70,1
.goto 2025,38.56,83.41
>>与重型绳索的线圈相互作用
.accept 66248 >>接任务: |cRXP_WARN_绑扎系固|r
step
.xp 70,1
#completewith ThaldraszusRemembertheThingsTogether
>>杀死|cff00ecffMagmaswear Rockcleaver|r。掠夺他们的长矛。
.goto 2025,38.70,84.41,0,0
.complete 66247,1 
step
.xp 70,1
#title |T1408443:0:0|tSignet 1
>>与地面上的尸体互动
.goto 2025,38.89,84.05
.complete 66245,1,1 
step
.xp 70,1
#title |T1119938:0:0|tRope 1
.goto 2025,39.14,84.03
.complete 66248,1,1 
step
.xp 70,1
#title |T1408443:0:0|tSignet 2
>>与地面上的尸体互动
.goto 2025,39.37,83.93
.complete 66245,1,2 
step
.xp 70,1
#title |T1119938:0:0|tRope 2
.goto 2025,39.47,83.83
.complete 66248,1,2 
step
.xp 70,1
#title |T1408443:0:0|tSignet 3
>>与地面上的尸体互动
.goto 2025,39.22,83.63
.complete 66245,1,3 
step
.xp 70,1
#title |T1408443:0:0|tSignet 4
>>与地面上的尸体互动
.goto 2025,39.21,83.18
.complete 66245,1,4 
step
.xp 70,1
#title |T1119938:0:0|tRope 3
.goto 2025,39.45,82.52
.complete 66248,1,3 
step
.xp 70,1
#title |T1408443:0:0|tSignet 5
>>与地面上的尸体互动
.goto 2025,39.69,82.10
.complete 66245,1,5 
step
.xp 70,1
#title |T1408443:0:0|tSignet 6
>>与地面上的尸体互动
.goto 2025,39.47,81.77
.complete 66245,1,6 
step
.xp 70,1
#title |T1408443:0:0|tSignet 7
>>与地面上的尸体互动
.goto 2025,39.00,81.90
.complete 66245,1,7 
step
.xp 70,1
#title |T1408443:0:0|tSignet 7 + |T1119938:0:0|tRope 4
>>与地面上的尸体互动
.goto 2025,39.09,82.54
.complete 66245,1,7 
.complete 66248,1,4 
step
.xp 70,1
#title |T1119938:0:0|tRope 5
.goto 2025,38.74,82.18
.complete 66248,1 
step
.xp 70,1
#label ThaldraszusRemembertheThingsTogether
#title |T1408443:0:0|tSignet 8
>>与地面上的尸体互动
.goto 2025,39.00,81.90
.complete 66245,1 
step
.xp 70,1
>>杀死|cff00ecffMagmaswear Rockcleaver|r。掠夺他们的长矛。
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
#loop
.line 2025,39.24,83.73,39.05,86.20,39.46,82.15,38.47,83.06,39.09,83.09,38.56,84.65
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
.goto 2025,38.56,84.65,20,0
.complete 66247,1 
step
.xp 70,1
.goto 2025,37.63,83.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.turnin 66245 >>Turn in Remember the Fallen
.turnin 66247 >>Turn in Slightly Used Weapons
.turnin 66248 >>Turn in Tying Things Together
.accept 66249 >>接任务: |cRXP_WARN_净空行动|r
step
.xp 70,1
>>登上围攻蝎子
.goto 2025,40.88,83.88
.complete 66249,1 
step
.xp 70,1
>>环顾四周并发送垃圾邮件|T1412205:0:0|t围攻螺栓（1）以杀死|cff00ecffMagmaswear Trueborn|r
.goto 2025,40.88,83.88
.complete 66249,2 
step
.xp 70,1
#completewith next
+您可以跳过下一个过场（Esc->是）
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.56,85.48
.turnin 66249 >>Turn in Clear the Sky
.accept 66250 >>接任务: |cRXP_WARN_长官何在？|r
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
*You can skip the next cinematic
.goto 2025,40.19,85.16
.skipgossip
.complete 66250,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.13
.turnin 66250 >>Turn in Where's The Chief?
.accept 66251 >>接任务: |cRXP_WARN_火焰斗士|r
step
.xp 70,1
>>使用射程能力将其击倒
.goto 2025,40.12,86.61
.complete 66251,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.14
.turnin 66251 >>Turn in Fire Fighter
.accept 66252 >>接任务: |cRXP_WARN_战况报告|r
step
.xp 70,1
#completewith next
.cooldown item,6489,>0,1
.hs >>Hearth to Valdrakken
step
.xp 70,1
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.xp 70,1
.goto 2112,55.94,39.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66252 >>Turn in Reporting In
step
.xp 70,1
.goto 2025,40.42,49.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Spa Concierge
.turnin -72067 >>Turn in Relaxation Time!
.accept 72246 >>接任务: |cRXP_WARN_宁静美梦|r
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 72246 >>Turn in Serene Dreams
.accept 70738 >>接任务: |cRXP_WARN_俞加课|r
.goto 2025,40.49,48.93
.accept 70740 >>接任务: |cRXP_WARN_蒸汽清洁|r
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith ThaldraszusTheYougaClass
>>杀死|cff00ecffElements|r
.complete 70740,1 
step
.xp 70,1
.goto 2025,41.47,47.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与放置不当的行李互动
.accept 70741 >>接任务: |cRXP_WARN_他人所爱|r
step
.xp 70,1
>>营救尤加教官
.goto 2025,41.17,47.49
.complete 70738,2 
step
.xp 70,1
#title Belongings Found 2/6
>>捡起地上的书
.goto 2025,41.16,47.43
.complete 70741,1,2 
step
.xp 70,1
#title Student Rescued 1/6
>>Rescue the student
.goto 2025,41.45,47.04
.complete 70738,1,1 
step
.xp 70,1
#title Student Rescued 2/6
>>Rescue the student
.goto 2025,41.06,46.81
.complete 70738,1,2 
step
.xp 70,1
#title Belongings Found 3/6
>>拿起丢失的S.E.L.F.I.E相机
.goto 2025,40.72,47.31
.complete 70741,1,3 
step
.xp 70,1
#title Student Rescued 3/6
>>Rescue the student
.goto 2025,40.51,47.31
.complete 70738,1,3 
step
.xp 70,1
#title Student Rescued 4/6
>>Rescue the student
.goto 2025,40.18,46.94
.complete 70738,1,4 
step
.xp 70,1
#title Belongings Found 4/6
>>拿起时尚的雨伞
.goto 2025,40.10,46.61
.complete 70741,1,4 
step
.xp 70,1
#title Belongings Found 5/6
>>捡起翻过来的沙滩椅
.goto 2025,40.27,46.16
.complete 70741,1,5 
step
.xp 70,1
#title Student Rescued 5/6
>>Rescue the student
.goto 2025,40.03,45.98
.complete 70738,1,5 
step
.xp 70,1
#title Student Rescued 6/6
>>Rescue the student
.goto 2025,40.81,46.09
.complete 70738,1 
step
.xp 70,1
#label ThaldraszusTheYougaClass
#title Belongings Found 6/6
>>拿起湿漉漉的你加枕头
.goto 2025,41.01,45.96
.complete 70741,1 
step
.xp 70,1
>>杀死|cff00ecffMudgatu|r。抢他的太阳镜。在你的包里点击它
>>|cffffff00你只能在68级以上完成此任务|r
.goto 2025,40.49,45.34
.collect 200586,1,70377,1
.accept 70377 >>接任务: |cRXP_WARN_时尚不再|r
step
.xp 70,1
>>杀死|cff00ecffElements|r
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
#loop
.line 2025,39.99,45.69,39.46,47.37,40.46,48.00,41.48,47.33,40.98,45.52
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
.complete 70740,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zeldis
.isOnQuest 70377
.goto 2025,39.4,48.4
.turnin 70377 >>Turn in Derelict Fashion
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 70738 >>Turn in The You-ga Class
.turnin 70741 >>Turn in Some Favorite Things
.goto 2025,40.49,48.92
.turnin 70740 >>Turn in Steam Cleaning
.goto 2025,40.46,48.88
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara
.goto 2025,40.49,48.97
.accept 70743 >>接任务: |cRXP_WARN_宝贝宝宝|r
step
.xp 70,1
>>Follow the arrow
.goto 2025,38.90,45.22
.complete 70743,1 
step
.xp 70,1
>>等待角色扮演并点击小狗
.goto 2025,38.90,45.22
.complete 70743,2 
step
.xp 70,1
.goto 2025,38.89,45.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与恐怖的混乱互动
.accept 70744 >>接任务: |cRXP_WARN_看呐！骨头！|r
step
.xp 70,1
#title Cleaned Mess 2/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.92,45.22
.complete 70744,1,2 
step
.xp 70,1
#title Cleaned Mess 3/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.52,45.73
.complete 70744,1,3 
step
.xp 70,1
#title Cleaned Mess 4/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.65,46.19
.complete 70744,1,4 
step
.xp 70,1
#title Cleaned Mess 5/10
>>从地面上捡起更多可怕的混乱
.goto 2025,37.91,46.22
.complete 70744,1,5 
step
.xp 70,1
#title Cleaned Mess 6/10
>>从地面上捡起更多可怕的混乱
.goto 2025,37.79,46.29
.complete 70744,1,6 
step
.xp 70,1
#title Cleaned Mess 7/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.03,47.10
.complete 70744,1,7 
step
.xp 70,1
#title Cleaned Mess 8/10
>>从地面上捡起更多可怕的混乱
.goto 2025,39.18,47.34
.complete 70744,1,8 
step
.xp 70,1
#title Cleaned Mess 9/10
>>从地面上捡起更多可怕的混乱
.goto 2025,39.56,47.21
.complete 70744,1,9 
step
.xp 70,1
#title Cleaned Mess 10/10
>>从地面上捡起更多可怕的混乱
.goto 2025,39.70,47.88
.complete 70744,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara and Quillius
.turnin 70743 >>Turn in Precious Baby
.turnin 70744 >>Turn in Look at the Bones!
.goto 2025,40.49,48.97
.accept 70745 >>接任务: |cRXP_WARN_强制休闲|r
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith next
.goto 2025,39.69,47.45,20,0
.goto 2025,39.89,48.45,15 >>进入洞穴 below
step
.xp 70,1
>>杀死|cff00ecffVadme Blackheart|r。离开火和水的虚空区域
.goto 2025,40.04,49.05
.complete 70745,1 
step
.xp 70,1
.goto 2025,40.46,48.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quilius
.turnin 70745 >>Turn in Enforced Relaxation
step
.xp 70,1
.goto 2025,50.27,67.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Szareth
.accept 69932 >>接任务: |cRXP_WARN_生命宝贵|r
.accept 69933 >>接任务: |cRXP_WARN_好奇的代价|r
step
.xp 70,1
#completewith ThaldraszusCuriositysPrice
>>杀死|cff00ecff高效授粉器|r。掠夺它们以获取花粉
>>或者掠夺华丽的花朵
.complete 69932,2 
step
.xp 70,1
#title Sun-Basked Linens 1/6
>>拿起手工编织的篮子
.goto 2025,49.60,67.54
.complete 69932,1,1 
step
.xp 70,1
#title Sun-Basked Linens 2/6
>>拿起手工编织的篮子
.goto 2025,49.28,67.47
.complete 69932,1,2 
step
.xp 70,1
#title Sun-Basked Linens 3/6
>>拿起手工编织的篮子
.goto 2025,49.00,67.24
.complete 69932,1,3 
step
.xp 70,1
#title Sun-Basked Linens 4/6
>>拿起手工编织的篮子
.goto 2025,48.80,67.22
.complete 69932,1,4 
step
.xp 70,1
#title Sun-Basked Linens 5/6
>>拿起手工编织的篮子
.goto 2025,49.60,67.54
.complete 69932,1,5 
step
.xp 70,1
#title Sun-Basked Linens 6/6
>>拿起手工编织的篮子
.goto 2025,48.81,67.04
.complete 69932,1 
step
.xp 70,1
#label ThaldraszusCuriositysPrice
>>点击Stubborn Vine，然后移开将其拔出
>>之后击毙拉丹袭击者
.goto 2025,48.99,66.90
.complete 69933,1 
.complete 69933,2 
step
.xp 70,1
>>杀死|cff00ecff高效授粉器|r。掠夺它们以获取花粉
>>或者掠夺华丽的花朵
.goto 2025,49.26,66.42,25,0
.goto 2025,49.89,66.67,25,0
.goto 2025,49.31,66.83
.complete 69932,2 
step
.xp 70,1
>>点击大楼内的小急流
.goto 2025,49.42,67.92
.complete 69932,3 
step
.xp 70,1
.goto 2025,50.28,67.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Szareth
.turnin 69932 >>Turn in Every Life Counts
.turnin 69933 >>Turn in Curiosity's Price
.accept 69934 >>接任务: |cRXP_WARN_豆腐心肠|r
step
.xp 70,1
#completewith next
.goto 2025,52.99,67.56,15 >>进入洞穴
step
.xp 70,1
>>点击洞穴中的胸部
.goto 2025,53.32,67.52
.complete 69934,2 
step
.xp 70,1
.goto 2025,52.39,68.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Nori
.accept 66448 >>接任务: |cRXP_WARN_歧路守路者|r
step
.xp 70,1
>>点击Gelikyr Post内的胸部
.goto 2025,51.69,69.16
.complete 69934,4 
step
.xp 70,1
.goto 2025,51.70,69.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Timetender Athekk
.turnin 69934 >>Turn in Bleeding Hearts
step
.xp 70,1
.goto 2025,54.68,69.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.turnin 66448 >>Turn in The Wayward Waywatcher
.accept 66100 >>接任务: |cRXP_WARN_补给重担|r
.accept 66230 >>接任务: |cRXP_WARN_糊图请求|r
step
.xp 70,1
#completewith ThaldraszusSupplyinginWeight
>>杀死|cff00ecffEmebertoths|r。抢走他们的钥匙
.complete 66230,1 
step
.xp 70,1
#title Supplies 1/6
>>领取Waywatcher用品
.goto 2025,55.07,68.67
.complete 66100,1,1 
step
.xp 70,1
#title Supplies 2/6
>>领取Waywatcher用品
.goto 2025,55.18,68.11
.complete 66100,1,2 
step
.xp 70,1
#title Supplies 3/6
>>领取Waywatcher用品
.goto 2025,55.51,68.43
.complete 66100,1,3 
step
.xp 70,1
#title Supplies 4/6
>>领取Waywatcher用品
.goto 2025,55.73,68.11
.complete 66100,1,4 
step
.xp 70,1
#label ThaldraszusSupplyinginWeight
#title Supplies 5/6
>>领取Waywatcher用品
.goto 2025,55.54,69.35
.complete 66100,1,5 
step
.xp 70,1
>>杀死|cff00ecffEmebertoths|r。抢走他们的钥匙
.goto 2025,55.51,69.03
.complete 66230,1 
step
.xp 70,1
>>打开Tarasek锁箱
.goto 2025,55.53,69.37
.complete 66230,2 
step
.xp 70,1
#title Supplies 6/6
>>领取Waywatcher用品
.goto 2025,55.93,68.61
.complete 66100,1 
step
.xp 70,1
.goto 2025,56.95,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.turnin 66100 >>Turn in Supplying in Weight
.turnin 66230 >>Turn in A Sketchy Request
.accept 66456 >>接任务: |cRXP_WARN_剧毒调和|r
.accept 66457 >>接任务: |cRXP_WARN_终结蓝色|r
step
.xp 70,1
#completewith ThaldraszusEndingtheBluePeriod
>>杀死|cff00ecffEmbertoth长矛猎人|r。掠夺他们的长矛
.complete 66456,1 
step
.xp 70,1
#completewith next
.goto 2025,55.78,71.02,15 >>进入洞穴
step
.xp 70,1
#label ThaldraszusEndingtheBluePeriod
>>杀死|cff00ecffBluescale|r
.complete 66457,1 
step
.xp 70,1
>>杀死|cff00ecffEmbertoth长矛猎人|r。掠夺他们的长矛
.goto 2025,55.31,71.58,25,0
.goto 2025,55.27,70.46,25,0
.goto 2025,56.22,69.87,25,0
.goto 2025,56.37,70.42,25,0
.goto 2025,55.75,70.94,25,0
#loop
.line 2025,55.31,71.58,55.27,70.46,56.22,69.87,56.37,70.42,55.75,70.94
.goto 2025,55.31,71.58,30,0
.goto 2025,55.27,70.46,30,0
.goto 2025,56.22,69.87,30,0
.goto 2025,56.37,70.42,30,0
.goto 2025,55.75,70.94,30,0
.complete 66456,1 
step
.xp 70,1
.goto 2025,56.94,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.turnin 66456 >>Turn in A Poisonous Palette
.turnin 66457 >>Turn in Ending the Blue Period
step
.xp 70,1
.goto 2025,56.94,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.accept 66465 >>接任务: |cRXP_WARN_摧毁长矛贮藏|r
.accept 66467 >>接任务: |cRXP_WARN_艺术源于生活|r
step
.xp 70,1
#title Cache Destroyed 1/8
.goto 2025,56.90,66.44
>>Destroy the Spear Cache
.complete 66465,1,1 
step
.xp 70,1
#title Cache Destroyed 2/8
.goto 2025,57.27,66.15
>>Destroy the Spear Cache
.complete 66465,1,2 
step
.xp 70,1
#title Cache Destroyed 3/8
.goto 2025,57.45,66.89
>>Destroy the Spear Cache
.complete 66465,1,3 
step
.xp 70,1
#title Cache Destroyed 4/8
.goto 2025,57.83,66.38
>>Destroy the Spear Cache
.complete 66465,1,4 
step
.xp 70,1
#title Cache Destroyed 5/8
.goto 2025,58.15,66.11
>>Destroy the Spear Cache
.complete 66465,1,5 
step
.xp 70,1
#title Cache Destroyed 6/8
.goto 2025,58.33,66.32
>>Destroy the Spear Cache
.complete 66465,1,6 
step
.xp 70,1
#title Cache Destroyed 7/8
.goto 2025,58.30,66.40
>>Destroy the Spear Cache
.complete 66465,1,7 
step
.xp 70,1
#title Cache Destroyed 8/8
.goto 2025,58.17,66.77
>>Destroy the Spear Cache
.complete 66465,1 
step
.xp 70,1
>>杀死|cff00ecffGreater Venomsprout|r
.goto 2025,58.30,67.16
.complete 66467,1 
step
.xp 70,1
.goto 2025,54.65,69.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开洞穴，与Waywatcher Alvi交谈
.turnin 66465 >>Turn in Cache and Release
.turnin 66467 >>Turn in Art Imitates Life
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2112,61.56,39.13
.accept 66320 >>接任务: |cRXP_WARN_光阴流转|r
.target Nozdormu
step
.xp 70,1
#title Dragon Glyph: Gelikyr Overlook
.goto 2025,52.70,67.41
.achievement 16578,11 >>捡起下桥上方的龙雕
step
.xp 70,1
#title Dragon Glyph: Passage of Time
.goto 2025,55.71,72.20
.achievement 16578,12 >>在流沙入口处领取龙雕
step
.xp 70,1
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie and wait for the roleplay
>>|cffffff00在等待角色扮演时使用龙雕文|r
.skipgossip 187100,1
.timer 44,Roleplay Duration
.complete 66320,1 
.target Chromie
step
.xp 70,1
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 66320 >>Turn in The Flow of Time
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2025,57.53,78.79
.accept 66080 >>接任务: |cRXP_WARN_临时困扰|r
.target Andantenormu
step
.xp 70,1
>>小心别被撞倒
.goto 2025,55.60,77.33
.accept 69873 >>接任务: |cRXP_WARN_赫恩拉尔|r
.complete 69873,1 
step
.xp 70,1
>>Follow the arrow
.goto 2025,54.99,75.64
.complete 66080,1 
step
.xp 70,1
.goto 2025,54.96,75.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66080 >>Turn in Temporal Difficulties
.accept 70136 >>接任务: |cRXP_WARN_无暇思痛|r
.target Siaszerathel
step
.xp 70,1
#sticky
#label ThaldraszusHaventGotTimeForStaff
>>Pick up the staff
.goto 2025,52.72,76.86,0,0
.complete 70136,1 
step
.xp 70,1
>>杀死|cff00ecffCrazed Alpha |r
.goto 2025,52.69,76.81
.complete 70136,3 
step
.xp 70,1
#requires ThaldraszusHaventGotTimeForStaff
>>Pick up the notes
.goto 2025,53.18,77.39
.complete 70136,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,54.96,75.65
.turnin 70136 >>Turn in Haven't Got Time For the Pain
.accept 66082 >>接任务: |cRXP_WARN_瓶装时间|r
.accept 66081 >>接任务: |cRXP_WARN_时光飞逝|r
.target Siaszerathel
step
.xp 70,1
#sticky
#label ThaldraszusTimeinaBottle
.goto 2025,54.25,76.62,0,0
>>杀死该区域的暴民并穿过时间蛾（发光的球体）
*Sadly others can steal your orbs :(
.complete 66082,1 
step
.xp 70,1
#title Collector 1
.goto 2025,55.07,76.76
.complete 66081,1,1 
step
.xp 70,1
#title Collector 2
.goto 2025,55.57,76.80
.complete 66081,1,2 
step
.xp 70,1
#title Collector 3
.goto 2025,56.48,78.08
.complete 66081,1,3 
step
.xp 70,1
#title Collector 4
.goto 2025,55.60,78.95
.complete 66081,1,4 
step
.xp 70,1
#title Collector 5
.goto 2025,55.02,78.81
.complete 66081,1,5 
step
.xp 70,1
#title Collector 6
.goto 2025,55.20,77.85
.complete 66081,1,6 
step
.xp 70,1
#title Collector 7
.goto 2025,54.34,77.86
.complete 66081,1,7 
step
.xp 70,1
#title Collector 8
.goto 2025,54.25,76.62
.complete 66081,1 
step
.xp 70,1
#requires ThaldraszusTimeinaBottle
.goto 2025,57.45,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66082 >>Turn in Time in a Bottle
.turnin 66081 >>Turn in Time is Running Out
.timer 10,Roleplay Duration
.target Siaszerathel
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu after a short roleplay
.goto 2025,57.52,78.79
.accept 66083 >>接任务: |cRXP_WARN_宛如初见|r
.timer 20,Roleplay Duration
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等着Andantenomu和他说话
.goto 2025,57.58,78.37
.skipgossip
.complete 66083,1 
.target Andantenormu
step
.xp 70,1
>>与时态收集器交互
.goto 2025,57.68,78.33
.complete 66083,2 
step
.xp 70,1
>>与Crystal Focus互动
.goto 2025,57.66,78.39
.complete 66083,3 
step
.xp 70,1
#completewith next
+您可以跳过下一个过场（Esc->是）
step
.xp 70,1
>>与失时文物互动
.goto 2025,57.64,78.46
.complete 66083,4 
.timer 90,Roleplay Duration
step
.xp 70,1
>>等Andantenormu把你带回来。您也可以通过时间门户
.complete 66083,5 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等着Andantenomu和他说话
.goto 2025,57.52,78.79
.turnin 66083 >>Turn in Feels Like the First Time
.accept 66084 >>接任务: |cRXP_WARN_时势如此|r
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,57.45,78.92
.accept 66085 >>接任务: |cRXP_WARN_倘若光阴倒转|r
.target Siaszerathel
step
.xp 70,1
#completewith next
.goto 2025,57.62,79.02
.fp >>获取流沙飞行路径
step
.xp 70,1
#completewith ThaldraszusIfWeCouldTurnBackTime
>>杀死该区域的大部分|cff00ecffmurlocs|r。掠夺他们的残留物
.complete 66084,1 
step
.xp 70,1
>>与时间裂缝互动
.goto 2025,58.59,78.21
.complete 66085,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,59.80,79.31
.skipgossip
.timer 5,Roleplay Duration
.complete 66085,2 
.target Siaszerathel
step
.xp 70,1
>>与时间裂缝互动
.goto 2025,60.00,79.28
.complete 66085,3 
step
.xp 70,1
>>与时间裂缝互动
.goto 2025,59.98,77.20
.complete 66085,4 
step
.xp 70,1
#label ThaldraszusIfWeCouldTurnBackTime
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu
.goto 2025,59.95,77.23
.skipgossip
.complete 66085,5 
.target Aeonormu
step
.xp 70,1
>>杀死该区域的大部分|cff00ecffmurlocs|r。掠夺他们的残留物
.goto 2025,59.81,78.84,25,0
.goto 2025,58.58,77.11,25,0
.goto 2025,58.30,78.80,25,0
.goto 2025,59.96,79.27,25,0
.goto 2025,59.43,78.17
.complete 66084,1 
step
.xp 70,1
#requires ThaldraszusTimesLikeThese
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Siaszerathel
.turnin 66084 >>Turn in Times Like These
.goto 2025,57.52,78.79
.turnin 66085 >>Turn in If We Could Turn Back Time
.goto 2025,57.45,78.92
.target Andantenormu
.target Siaszerathel
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu
.goto 2025,57.55,78.87
.accept 66087 >>接任务: |cRXP_WARN_终止时间|r
.target Aeonormu
step
.xp 70,1
>>使用|cffffff00[ExtractActionButton]|r专注于关闭时间步枪和buff|cff00ff00Bronze Warders|r
*You can also kill mobs
.goto 2025,57.17,81.02,20,0
.goto 2025,57.74,81.17,20,0
.goto 2025,56.84,82.16,20,0
.goto 2025,56.95,84.29,20,0
.goto 2025,57.68,84.86,20,0
.goto 2025,57.88,83.81,20,0
.goto 2025,57.88,84.55
.complete 66087,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu and Andantenormu
.turnin 66087 >>Turn in Closing Time
.goto 2025,57.55,78.87
.accept 65935 >>接任务: |cRXP_WARN_追赶克罗米|r
.goto 2025,57.52,78.80
.target Andantenormu
.target Aeonormu
step
.xp 70,1
>>Fly to Chromie
.goto 2025,59.64,81.51
.complete 65935,1 
.target Chromie
step
.xp 70,1
.goto 2025,59.57,81.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 65935 >>Turn in Catching Up to Chromie
.accept 65948 >>接任务: |cRXP_WARN_时光碎块|r
.accept 65947 >>接任务: |cRXP_WARN_凝时旅行者|r
.target Chromie
step
.xp 70,1
.goto 2025,59.56,82.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.accept 66646 >>接任务: |cRXP_WARN_伤亡控制|r
.target Andantenormu
step
.xp 70,1
#completewith ThaldraszusCracksInTime
>>杀死|cff00ecffTimelings|r和|cff0ecffTimeless因果关系|r
.complete 66646,1 
step
.xp 70,1
#title Timewalker 1
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,59.01,82.77
.complete 65947,1,1 
step
.xp 70,1
#title Timewalker 2
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,58.72,82.44
.complete 65947,1,2 
step
.xp 70,1
#title Timewalker 3
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,58.38,82.14
.complete 65947,1,3 
step
.xp 70,1
#title Timewalker 4
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,58.15,82.86
.complete 65947,1,4 
step
.xp 70,1
>>使用|cffffff00[ExtraActionButton]|r并离开水晶
.goto 2025,58.46,83.10
.complete 65948,1 
step
.xp 70,1
>>与地面上的时间晶体相互作用以收集50个能量。
.goto 2025,58.41,82.98
.complete 65948,3,50 
step
.xp 70,1
#title Timewalker 5
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.31,81.39
.complete 65947,1,5 
step
.xp 70,1
>>使用|cffffff00[ExtraActionButton]|r并离开水晶
.goto 2025,60.76,80.48
.complete 65948,2 
step
.xp 70,1
#completewith ThaldraszusTimeLockedTimewalkers
>>与地面上的时间水晶相互作用以收集丢失的50能量。
.goto 2025,60.68,80.37,0,0
.complete 65948,3 
step
.xp 70,1
#title Timewalker 6
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.87,80.02
.complete 65947,1,6 
step
.xp 70,1
#title Timewalker 7
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.46,79.74
.complete 65947,1,7 
step
.xp 70,1
#label ThaldraszusTimeLockedTimewalkers
#title Timewalker 8
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.27,80.40
.complete 65947,1 
step
.xp 70,1
#label ThaldraszusCracksInTime
>>与地面上的时间水晶相互作用以收集丢失的50能量。
.goto 2025,60.68,80.37
.complete 65948,3 
step
.xp 70,1
>>杀死|cff00ecffTimelings|r和|cff0ecffTimeless因果关系|r
.goto 2025,58.46,83.10,30,0
.goto 2025,60.25,80.16,30,0
.goto 2025,60.76,80.48
.complete 66646,1 
step
.xp 70,1
#requires ThaldraszusQuellingCausalities
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Chromie
.turnin 66646 >>Turn in Quelling Causalities
.goto 2025,59.56,82.67
.turnin 65947 >>Turn in Time-Locked Timewalkers
.turnin 65948 >>Turn in Cracks in Time
.accept 65938 >>接任务: |cRXP_WARN_永恒之伍|r
.goto 2025,59.58,81.75
.target Andantenormu
.target Chromie
step
.xp 70,1
>>使用|cffffff00[ExtraActionButton]|r，然后走下坡道
*Make sure to dismount
.goto 2025,60.49,83.26
.complete 65938,1 
step
.xp 70,1
>>杀死|cff00ecff巨人时间元素|r
.goto 2025,60.68,83.58
.complete 65938,2 
step
.xp 70,1
#completewith next
+您可以跳过下一个过场（Esc->是）
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,59.58,81.71
.turnin 65938 >>Turn in The Once and Future Team
.accept 65962 >>接任务: |cRXP_WARN_无尽倒计时|r
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,59.58,81.71
.skipgossip 6
.complete 65962,1 
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2025,60.05,82.45
.turnin 65962 >>Turn in The Never-Final Countdown
.accept 70040 >>接任务: |cRXP_WARN_坠越时间|r
.target Nozdormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi
.goto 2025,59.52,82.51
.skipgossip
.complete 70040,1 
.target Soridormi
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,59.30,82.16
.skipgossip
.complete 70040,3 
.target Siaszerathel
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2025,60.19,81.77
.skipgossip
.complete 70040,2 
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu and wait for the roleplay
.goto 2025,60.06,82.44
.skipgossip 186931,1
.timer 24,Roleplay Duration
.complete 70040,4 
.target Nozdormu
step
.xp 70,1
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 70040 >>Turn in Tumbling Through Time
.accept 66029 >>接任务: |cRXP_WARN_临时调整|r
.accept 66028 >>接任务: |cRXP_WARN_走向未来！|r
.target Nozdormu
step
.xp 70,1
>>与通往灵长类动物未来的门户互动
.goto 2025,59.83,82.24
.complete 66028,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi and Possible Future You
.turnin 66028 >>Turn in To the Future!
.accept 66030 >>接任务: |cRXP_WARN_抵抗并非徒劳|r
.goto 2085,61.10,50.82
.accept 66031 >>接任务: |cRXP_WARN_争分夺秒|r
.goto 2085,61.45,50.20
.target Soridormi
.target Possible Future You
step
.xp 70,1
>>在Chromie和Eternus附近使用|T133240:0|t[Chrono Crystal]
.goto 2085,46.92,41.15
.use 192749
.complete 66029,1 
step
.xp 70,1
#completewith ThaldraszusResistanceIsntFutile
+如果您需要战斗帮助，请使用|cffffff00[ExtraActionButton]|r
step
.xp 70,1
#completewith ThaldraszusResistanceIsntFutile
>>杀死|cff00ecffHoary Icicles|r或|cff0ecffRestless Icicless|r。掠夺它们以获取精华
*Avoid killing elites
.complete 66031,1 
step
.xp 70,1
#title Fighter Healed 1
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,44.72,43.63
.complete 66030,1,1 
step
.xp 70,1
#title Fighter Healed 2
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,43.49,41.13
.complete 66030,1,2 
step
.xp 70,1
#title Fighter Healed 3
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,44.32,38.42
.complete 66030,1,3 
step
.xp 70,1
#title Fighter Healed 4
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,46.97,36.33
.complete 66030,1,4 
step
.xp 70,1
#title Fighter Healed 5
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,46.04,32.44
.complete 66030,1,5 
step
.xp 70,1
#title Fighter Healed 6
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,50.64,30.28
.complete 66030,1,6 
step
.xp 70,1
#title Fighter Healed 7
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,52.77,30.22
.complete 66030,1,7 
step
.xp 70,1
#title Fighter Healed 8
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,54.49,28.54
.complete 66030,1,8 
step
.xp 70,1
#title Fighter Healed 9
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,52.47,24.21
.complete 66030,1,9 
step
.xp 70,1
#label ThaldraszusResistanceIsntFutile
#title Fighter Healed 10
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,62.04,28.40
.complete 66030,1,10 
step
.xp 70,1
>>杀死并释放|cff00ecffHoary Icicles|r或|cff0ecffRestless Icicless|r
*Avoid killing elites
.goto 2085,57.87,25.26,20,0
.goto 2085,52.36,24.46,20,0
.goto 2085,56.61,28.14
.complete 66031,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Possible Future You and Soridormi
.turnin 66031 >>Turn in Making Time
.goto 2085,61.47,50.22
.turnin 66030 >>Turn in Resistance Isn't Futile
.goto 2085,61.08,50.83
step
.xp 70,1
.goto 2085,61.09,50.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi
.accept 66032 >>接任务: |cRXP_WARN_返回现世|r
.target Soridormi
step
.xp 70,1
#completewith next
.goto 2085,61.01,50.55
.zone 2025 >>Use the portal back
step
.xp 70,1
.goto 2025,60.05,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66029 >>Turn in Temporal Tuning
.turnin 66032 >>Turn in Return to the Present
.accept 72519 >>接任务: |cRXP_WARN_陨时二度|r
.accept 66033 >>接任务: |cRXP_WARN_走向……过去？|r
.target Nozdormu
step
.xp 70,1
>>使用传送门到Azmerloth
.goto 2025,59.97,82.08
.complete 66033,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66033 >>Turn in To the... Past?
.accept 66035 >>接任务: |cRXP_WARN_鱼人微粒|r
.goto 2092,59.83,66.15
.accept 66036 >>接任务: |cRXP_WARN_Mugurlglrlgl！|r << Alliance
.accept 66704 >>接任务: |cRXP_WARN_Mugurlglrlgl！|r << Horde
.goto 2092,59.97,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
.xp 70,1
#completewith next
+你只能在这里使用普通的地面支架！
step
.xp 70,1
#completewith ThaldraszusMurlocMotes
>>杀死|cff00ecff死亡驱逐舰|r和|cff0ecff死亡人数|r
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
.xp 70,1
#title Mote 1
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.05,68.69
.complete 66035,1,1 
step
.xp 70,1
#title Mote 2
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.62,68.39
.complete 66035,1,2 
step
.xp 70,1
#title Mote 3
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.71,66.76
.complete 66035,1,3 
step
.xp 70,1
#title Mote 4
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.27,67.05
.complete 66035,1,4 
step
.xp 70,1
#title Mote 5
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.61,65.98
.complete 66035,1,5 
step
.xp 70,1
#title Mote 6
>>穿过Motes。你可能不得不跳下去
.goto 2092,62.54,66.16
.complete 66035,1,6 
step
.xp 70,1
#title Mote 7
>>穿过Motes。你可能不得不跳下去
.goto 2092,62.72,65.11
.complete 66035,1,7 
step
.xp 70,1
#title Mote 8
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.85,63.81
.complete 66035,1,8 
step
.xp 70,1
>>在Chromie和Eternus附近使用|T133240:0|t[Chrono Crystal]
.goto 2092,61.49,61.76
.use 192749
.complete 72519,1 
step
.xp 70,1
#title Mote 9
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.22,63.50
.complete 66035,1,9 
step
.xp 70,1
#title Mote 10
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.28,63.88
.complete 66035,1,10 
step
.xp 70,1
#title Mote 11
>>穿过Motes。你可能不得不跳下去
.goto 2092,59.25,63.30
.complete 66035,1,11 
step
.xp 70,1
#label ThaldraszusMurlocMotes
#title Mote 12
>>穿过Motes。你可能不得不跳下去
.goto 2092,58.53,64.12
.complete 66035,1 
step
.xp 70,1
>>杀死|cff00ecff死亡驱逐舰|r和|cff0ecff死亡人数|r
.goto 2092,58.57,64.94,25,0
.goto 2092,59.25,67.50,25,0
.goto 2092,60.77,67.83,25,0
.goto 2092,61.69,64.23
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66035 >>Turn in Murloc Motes
.goto 2092,59.84,66.14
.turnin 66036 >>Turn in Mugurlglrlgl! << Alliance
.turnin 66704 >>Turn in Mugurlglrlgl! << Horde
.accept 70373 >>接任务: |cRXP_WARN_死亡之伊鲁古勒！|r << Alliance
.accept 70371 >>接任务: |cRXP_WARN_死亡之伊鲁古勒！|r << Horde
.timer 5,Roleplay Duration
.goto 2092,59.98,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
.xp 70,1
>>在短暂的角色扮演后登上料斗
.goto 2092,59.81,65.71
.complete 70373,1 <<Alliance 
.complete 70371,1 <<Horde 
step
.xp 70,1
>>垃圾邮件|T651086:0|t螺栓（1）。冷却时使用（2）和（3）。
*Make sure to target Deathwingurlugull.
.complete 70373,2 <<Alliance 
.complete 70371,2 <<Horde 
step
.xp 70,1
#completewith next
+|cfff78300提前离开车辆|r
step <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Varian Wryngrrlgulgll and Andantenormu
.turnin 70373 >>Turn in Deathwingurlugull!
.goto 2092,59.91,65.99
.accept 66037 >>接任务: |cRXP_WARN_回到现实|r
.goto 2092,59.83,66.14
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
step <<Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrallgrulgulgul and Andantenormu
.turnin 70371 >>Turn in Deathwingurlugull!
.goto 2092,59.97,65.99
.accept 66037 >>接任务: |cRXP_WARN_回到现实|r
.goto 2092,59.83,66.14
.target Andantenormu
.target Thrallgrulgulgul << Horde
step
.xp 70,1
#completewith next
.goto 2092,59.72,66.11
.zone 2025 >>使用门户进行时间冲突
step
.xp 70,1
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66037 >>Turn in Back to Reality
.turnin 72519 >>Turn in Temporal Two-ning
.accept 66660 >>接任务: |cRXP_WARN_就位……预备……|r
.target Nozdormu
step
.xp 70,1
>>使用Gnoll战争的传送门
.goto 2025,59.92,82.19
.complete 66660,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2090,43.39,69.22
.turnin 66660 >>Turn in On Your Mark... Get Set...
.accept 66038 >>接任务: |cRXP_WARN_与时间赛跑！|r
.target Andantenormu
step
.xp 70,1
#completewith ThaldraszusRaceThroughTime
+|cfff78300穿过速度靴获得移动速度buff并避开圆圈|r
step
.xp 70,1
.isOnQuest 66038
.goto 2090,43.19,68.05,15,0
.goto 2090,42.97,66.93,15,0
.goto 2090,42.61,65.18,15,0
.goto 2090,41.96,63.82,15,0
.goto 2090,41.58,61.96,15,0
.goto 2090,40.63,59.71,15,0
.goto 2090,40.32,57.88,15,0
.goto 2090,39.65,56.46,15,0
.goto 2090,38.11,54.13,15,0
.goto 2090,37.08,53.36,15,0
.goto 2090,35.78,53.56,15,0
.goto 2090,34.68,53.16,15,0
.goto 2090,33.77,52.04,15,0
.goto 2090,32.83,50.54,15,0
.goto 2090,32.37,49.70
.zone 2091 >>顺着箭头走。到达第一个入口
step
.xp 70,1
.isOnQuest 66038
.goto 2091,47.16,66.66,15,0
.goto 2091,46.67,67.58,15,0
.goto 2091,45.90,68.25,15,0
.goto 2091,45.16,69.52,15,0
.goto 2091,44.47,69.63,15,0
.goto 2091,43.24,70.61,15,0
.goto 2091,42.02,72.21,15,0
.goto 2091,41.39,73.50,15,0
.goto 2091,40.97,75.02,15,0
.goto 2091,40.34,75.91,15,0
.goto 2091,39.52,76.78
.zone 2088 >>顺着箭头走。到达第二个入口
step
.xp 70,1
.isOnQuest 66038
.goto 2088,31.30,63.53,15,0
.goto 2088,30.14,63.46,25,0
.goto 2088,28.64,62.93,25,0
.goto 2088,27.67,62.74,25,0
.goto 2088,24.05,60.46,25,0
.goto 2088,22.84,59.25,25,0
.goto 2088,22.11,60.21,25,0
.goto 2088,21.42,59.20,25,0
.goto 2088,19.80,58.69,25,0
.goto 2088,17.92,59.28,25,0
.goto 2088,15.74,58.55,25,0
.goto 2088,15.05,83.53
.zone 2089 >>顺着箭头走。到达第三个入口
step
.xp 70,1
#label ThaldraszusRaceThroughTime
.goto 2089,43.38,69.19
.complete 66038,1 
step
.xp 70,1
.goto 2089,52.36,73.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.turnin 66038 >>Turn in Race Through Time!
.accept 66039 >>接任务: |cRXP_WARN_克罗米时间|r
.target Andantenormu
step
.xp 70,1
.itemcount 132516,1
#completewith TheBlackEmpireChromieTime
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
.xp 70,1
.itemcount 132516,0
#completewith TheBlackEmpireChromieTime
+您只能使用普通装载
step
.xp 70,1
#completewith next
.goto 2089,57.08,69.02,20,0
.goto 2089,57.44,54.32,20,0
.goto 2089,53.76,43.23,20 >>Follow the arrow
step
.xp 70,1
#label TheBlackEmpireChromieTime
>>在Chromie和Eternus附近使用|T133240:0|t[Chrono Crystal]
.goto 2089,53.76,43.23
.use 192749
.complete 66039,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2089,53.41,43.93
.turnin 66039 >>Turn in Chromie Time
.accept 66040 >>接任务: |cRXP_WARN_回到未来|r
.target Chromie
step
.xp 70,1
#completewith next
+别忘了，您可以使用|cffffff00[ExtraActionButton]|r
+您可以跳过下一个过场（Esc->是）
step
.xp 70,1
>>Kill the incoming waves
.goto 2089,52.94,44.53
.skipgossip
.complete 66040,1 
.complete 66040,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,60.08,82.42
.skipgossip 1
.complete 66040,3 
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2025,60.05,82.45
.turnin 66040 >>Turn in Back to the Future
.accept 66221 >>接任务: |cRXP_WARN_勇往直前|r
.target Nozdormu
step
.xp 70,1
#completewith next
.hs >>Hearth to Valdrakken
step
.xp 70,1
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza
.goto 2112,58.09,34.76
.skipgossip 187678,1
.complete 66221,1 
.target Alexstrasza the Life-Binder
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2112,58.09,34.76
.turnin 66221 >>Turn in Moving On
.target Alexstrasza the Life-Binder
step
+Done!
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup 首次演练（战役）60-70
#displayname Chapter 3 - The Azure Span Campaign
#name 3） Azure Span活动
#next 4) Thaldraszus Campaign
step
#completewith TheAzureSpanTotheAzureSpan
+欢迎使用RestedXP的Azure跨度指南。
step
#title Dragon Glyph: Forkriver Crossing
.goto 2023,70.06,86.98
.achievement 16577,11 >>拿起空中的龙雕
step << !Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones
.goto 2024,41.44,35.62
.turnin 65686 >>Turn in To the Azure Span
.accept 66228 >>接任务: |cRXP_WARN_安东尼达斯营地|r
.target Glania of the Blessed Ones
step << Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones and Scalecommander Emberthal
.turnin 65686 >>Turn in To the Azure Span
.goto 2024,41.44,35.62
.accept 70746 >>接任务: |cRXP_WARN_蓝色阴霾|r
.target Glania of the Blessed Ones
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.23,35.88
.accept 67174 >>接任务: |cRXP_WARN_奥术检测|r
.target Miva Star-Eye
step
>>与未发放的烧瓶互动
.goto 2024,41.39,35.70
.complete 67174,1 
step
>>与Dusty茶壶互动
.goto 2024,41.41,35.84
.complete 67174,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.accept 67177 >>接任务: |cRXP_WARN_通缉：吞食者|r
.target Shala
step
>>与Toolky的玩具船互动
.goto 2024,41.23,36.37
.complete 67174,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.22,35.89
.turnin 67174 >>Turn in Arcane Detection
.accept 67175 >>接任务: |cRXP_WARN_玩具爆炸船拆解指南|r
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Julk
.goto 2024,41.21,35.86
.skipgossip
.timer 15,Roleplay Duration
.complete 67175,1 
.target Julk
step
>>在短暂的角色扮演后与魔杖互动
.goto 2024,41.19,35.91
.complete 67175,2 
step
>>Click on the toy boat
.goto 2024,40.59,36.55
.complete 67175,3 
step
>>杀死|cff00ecffGorger|r。抢夺他的角
.goto 2024,39.66,37.24
.complete 67177,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.21,35.87
.turnin 67175 >>Turn in How To Stop An Exploding Toy Boat
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.turnin 67177 >>Turn in WANTED: Gorger
.target Shala
step << Dracthyr
>>跟随箭头到达Emberthal

.goto 2024,45.00,41.00
.complete 70746,1 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
.goto 2024,45.00,41.00
.turnin 70746 >>Turn in Shades of Blue
.target Scalecommander Emberthal
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Telash Greywing

.goto 2024,45.65,41.20
.accept 70747 >>接任务: |cRXP_WARN_碧蓝巫师|r
.target Telash Greywing
step << Dracthyr
#completwith next
+您可以跳过下一个过场（Esc->是）
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.skipgossip 192091,1
.complete 70747,1 
.target Archmage Khadgar
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.turnin 70747 >>Turn in The Azure Wizard
.target Archmage Khadgar
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+使用你的龙骑坐骑飞往Noriko
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+您可以跳过下一个过场（Esc->是）
step << !Dracthyr
#label TheAzureSpanCampAntonidas
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 66228 >>Turn in Camp Antonidas
.target Noriko the All-Remembering
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.accept 67033 >>接任务: |cRXP_WARN_组装工事|r
.accept 67035 >>接任务: |cRXP_WARN_保存知识|r
.target Noriko the All-Remembering
.target Althanus
step
#completewith next
.goto 2024,46.71,39.57
.fp >>获取安东尼达斯营飞行路线
step
#title |T1499566:0:0|tTome 1 + |T1041232:0:0|tDevice 1
>>捡起地上的刀和装置
.goto 2024,46.13,39.27
.complete 67035,1,1 
.complete 67033,1,1 
step
#title |T1499566:0:0|tTome 2
>>Pick up the tome
.goto 2024,45.73,39.29
.complete 67035,1,2 
step
#title |T1499566:0:0|tTome 3
>>Pick up the tome
.goto 2024,46.03,39.82
.complete 67035,1,3 
step
#title |T1041232:0:0|tDevice 2
.goto 2024,45.86,40.18
.complete 67033,1,2 
step
#title |T1499566:0:0|tTome 4 + |T1041232:0:0|tDevice 3
>>捡起地上的刀和装置
.goto 2024,46.07,40.86
.complete 67035,1 
.complete 67033,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.turnin 67033 >>Turn in Assemble the Defenses
.turnin 67035 >>Turn in Preservation of Knowledge
.accept 67036 >>接任务: |cRXP_WARN_肯瑞托之怒|r
.target Noriko the All-Remembering
.target Althanus
step
#completewith next
.goto 2024,46.29,38.86
.vehicle 192331 >>进入Arcane Blaster
step
>>使用|T429383:0:0|tArcane Blast（1）杀死飞龙|cfff78300不要手动离开奥术爆炸机|r
.goto 2024,46.29,38.86
.complete 67036,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.turnin 67036 >>Turn in Wrath of the Kirin Tor
.goto 2024,46.64,40.16
.target Noriko the All-Remembering
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待卡德加大法师并与他交谈
.accept 65688 >>接任务: |cRXP_WARN_与卡雷苟斯会合|r
.goto 2024,46.63,40.19
.target Archmage Khadgar
step
#completewith next
.goto 2024,45.99,38.79
.gossipoption 55328 >>与供应门户互动
.timer 8,Roleplay Duration
step
>>等一下袋子，把它捡起来
.goto 2024,45.95,38.90
.complete 65688,1 
.complete 65688,2 
step
>>与通缉令小册子互动
.goto 2024,46.13,39.61
.accept 66488 >>接任务: |cRXP_WARN_通缉：弗里基鲁斯|r
step
#completewith next
+使用你的龙骑坐骑飞往卡莱戈斯
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,40.92,55.00
.turnin 65688 >>Turn in Meeting Kalecgos
.accept 65689 >>接任务: |cRXP_WARN_卡雷众影|r
.target Kalecgos
step
#completewith next
>>从航路点位置与水晶塔互动
*Skip this step if you want to fly up
.goto 2024,40.99,55.06
.complete 65689,1 
step
.goto 2024,41.17,57.81
.complete 65689,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to both Mirror Images of Kalecgos
.goto 2024,40.74,59.04
.turnin 65689 >>Turn in The Many Images of Kalecgos
.accept 65702 >>接任务: |cRXP_WARN_驱役成狂|r
.accept 65709 >>接任务: |cRXP_WARN_奥术修补|r
step
>>使用|T133622:0:0|t[帮助物品袋]或使用|cffffff00[ExtraActionButton]|t
.goto 2024,40.72,59.10
.use 191953
.complete 65709,1 
step
#completewith TheAzureSpanArcanePruning1
>>杀死该区域的|cff00ecffElements|r。为不稳定的阿卡纳掠夺它们。
.complete 65702,1 
step
#completewith next
+权杖的射程很高，所以你可以在至少30码外使用它
step
#label TheAzureSpanArcanePruning1
>>在奥术场附近使用|T1379242:0:0|t[Ley权杖]
.use 191952
.complete 65709,2 
.goto 2024,39.57,60.27
step
#completewith next
.goto 2024,38.56,59.75,30 >>Fly up
step
.accept 69864 >>接任务: |cRXP_WARN_被遗忘的造物|r
.goto 2024,38.56,59.75
.complete 69864,1 
.goto 2024,38.18,59.03
step
#completewith TheAzureSpanArcanePruning2
>>杀死该区域的|cff00ecffElements|r。为不稳定的阿卡纳掠夺它们。
.complete 65702,1 
step
#completewith next
+权杖的射程很高，所以你可以在至少30码外使用它
step
#label TheAzureSpanArcanePruning2
>>在奥术场附近使用|T1379242:0:0|t[Ley权杖]
.use 191952
.complete 65709,3 
.goto 2024,41.18,62.26
step
>>杀死并释放该区域的|cff00ecffElements|r
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,40.42,60.51
.complete 65702,1 
step
.goto 2024,40.69,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t谈谈卡莱戈斯的镜像
.turnin 65709 >>Turn in Arcane Pruning
.turnin 65702 >>Turn in Driven Mad
.accept 65852 >>接任务: |cRXP_WARN_直达尖峰|r
step
>>使用奥术场旁边的|T133622:0:0|t[辅助物品袋]
.goto 2024,39.57,60.25
.use 191978
.complete 65852,1 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2024,39.57,60.25
.complete 65852,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.96,61.46
.turnin 65852 >>Turn in Straight to the Top
.accept 65751 >>接任务: |cRXP_WARN_平台整修|r
.accept 65752 >>接任务: |cRXP_WARN_奥术纷扰|r
.target Kalecgos
step
#completewith next
+您也可以单击Y形三通以使用该项目
step
#sticky
#label TheAzureSpanArcaneAnnoyances
>>使用|T1373906:0:0|t[奥术钩]向下拉动Y形臂
.use 194891
.goto 2024,39.91,61.66,0,0
.complete 65752,1 
step
#title Energy 1
>>Destroy the energy
.goto 2024,40.23,62.03
.complete 65751,1,1 
step
#title Energy 2
>>Destroy the energy
.goto 2024,39.58,62.72
.complete 65751,1,2 
step
#title Energy 3
>>Destroy the energy
.goto 2024,39.51,61.52
.complete 65751,1,3 
step
#requires TheAzureSpanArcaneAnnoyances
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.97,61.46
.turnin 65751 >>Turn in Platform Adjustments
.turnin 65752 >>Turn in Arcane Annoyances
.accept 65854 >>接任务: |cRXP_WARN_收复誓言石|r
.target Kalecgos
step
#title Dragon Glyph: Azure Archives
>>|cffffff00还没有飞下来|r
.goto 2024,39.34,63.16
.achievement 16577,2 >>拿起档案顶部的龙雕文
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞下来和卡莱戈斯谈谈
.goto 2024,39.44,63.18
.skipgossip
.complete 65854,1 
.target Kalecgos
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sindragosa
.goto 2024,39.48,63.07
.turnin 65854 >>Turn in Reclaiming the Oathstone
.accept 65855 >>接任务: |cRXP_WARN_援助碧蓝林海|r
.target Sindragosa
step
#completewith next
.goto 2024,37.84,62.00,15 >>进入客栈
step
#completewith TheAzureSpanAidingAzureSpan
.goto 2024,37.36,62.43
.home >>将你的炉石设置为魔法饼干旅馆
step
#completewith next
.goto 2024,37.07,60.82
.fp >>获取Azure档案飞行路径
step
#label TheAzureSpanAidingAzureSpan
.goto 2024,37.07,60.82
.complete 65855,1 
step
#completewith next
+使用飞行大师飞往安东尼达斯营或使用你的龙骑坐骑（更快）
step
#label TheAzureSpanAidingAzureSpan2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 65855 >>Turn in Aiding Azure Span
.accept 66699 >>接任务: |cRXP_WARN_当地包打听|r
.target Noriko the All-Remembering
.accept 69904 >>接任务: |cRXP_WARN_出奇寂静|r
step
>>Follow the arrow
.goto 2024,47.67,40.26
.skipgossip
.complete 69904,1 
step
.goto 2024,47.67,40.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Scrumpy
.turnin 69904 >>Turn in Suspiciously Quiet
.accept 66500 >>接任务: |cRXP_WARN_观像之道|r
step
>>点击紫色符文
.goto 2024,47.77,39.98
.skipgossip
.complete 66500,1 
step
>>杀死|cff00ecffFrigellus|r
.goto 2024,47.95,38.09
.complete 66488,1 
.unitscan Frigellus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Korrikunit
.goto 2024,46.76,38.59
.skipgossip
.complete 66699,1 
.target Korrikunit
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jokomuupat
.goto 2024,46.34,38.15
.skipgossip
.complete 66699,2 
.target Jokomuupat
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Custodian Cynegos
.goto 2024,46.01,38.31
.turnin 66488 >>Turn in WANTED: Frigellus
.target Custodian Cynegos
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arch Enchanter Celeste
.goto 2024,45.99,38.41
.accept 66489 >>接任务: |cRXP_WARN_布置防线|r
.target Arch Enchanter Celeste
step
>>点击柱子上的紫色符文
.goto 2024,46.02,38.62
.skipgossip
.complete 66500,4 
step
>>在瞄准|cff00ff00Azure Defender |r时使用|T135477:0|t[拱门教官的魔杖]
.use 192471
.goto 2024,46.17,38.98
.complete 66489,1 
step
.goto 2024,46.00,38.42
>>返回拱门魔法师塞莱斯特
.turnin 66489 >>Turn in Setting the Defense
.target Arch Enchanter Celeste
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk
.goto 2024,45.73,38.84
.skipgossip 190225,1
.complete 66699,3 
.target Babunituk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk
.goto 2024,45.73,38.84
.turnin 66699 >>Turn in Ask the Locals
.accept 65864 >>接任务: |cRXP_WARN_追赶车队|r
.target Babunituk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caddy Scattershot
.goto 2024,45.69,39.79
.accept 66671 >>接任务: |cRXP_WARN_偏僻之途|r
.target Caddy Scattershot
step
>>点击紫色符文
.goto 2024,46.03,40.95
.skipgossip
.complete 66500,3 
step
>>点击紫色符文
.goto 2024,47.10,40.37
.skipgossip
.complete 66500,2 
step
.goto 2024,47.67,40.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Scrumpy
.turnin 66500 >>Turn in Ways of Seeing
step
.goto 2024,46.64,40.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.accept 66503 >>接任务: |cRXP_WARN_为他人之所爱|r
.skipgossip 183543,1
.complete 66503,1 
step
>>与古代遗迹互动
.goto 2024,47.17,40.28
.complete 66503,2 
step
>>跳下并杀死|cff00ecff损失的回声|r
.goto 2024,47.02,40.40
.complete 66503,3 
step
.goto 2024,46.64,40.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t带着你的龙骑座滑翔下来，与Noriko谈论所有的回忆
.turnin 66503 >>Turn in For The Love of Others
step
#completewith next
.goto 2024,35.25,36.98,20 >>使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,35.25,36.98
.skipgossip 186224,1
.timer 19,Roleplay Duration
.complete 65864,1 
.target Brena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Elder Poa
.turnin 65864 >>Turn in Catch the Caravan
.goto 2024,35.25,36.97
.accept 65868 >>接任务: |cRXP_WARN_胡嚼蛮缠|r
.goto 2024,35.36,36.94
.accept 65867 >>接任务: |cRXP_WARN_大树丘豺嚎|r
.accept 65866 >>接任务: |cRXP_WARN_破陷行动|r
.goto 2024,35.28,36.94
.target Brena
.target Elder Poa
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>杀死该区域的|cff00ecffGnolls|r。掠夺他们作为祭品
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>与地面陷阱互动
.complete 65866,1 
step
>>杀死|cff00ecffHyenamaster Durgun|r
.goto 2024,35.66,34.73
.complete 65867,1 
.unitscan Hyenamaster Durgun
step
#completewith next
.goto 2024,34.95,32.59,10 >>进入洞穴
step
>>杀死|cff00ecff陷阱层Kerwal|r
.goto 2024,34.99,32.18
.complete 65867,2 
.unitscan Trap-Layer Kerwal
step
#completewith next
.goto 2024,34.95,32.59,10 >>离开洞穴
step
#label TheAzureSpanHowlingtheBigTreeHills
>>杀死|cff00ecffBakra the Bully|r
.goto 2024,33.96,33.18
.complete 65867,3 
.unitscan Bakra the Bully
step
#completewith next
>>与地面陷阱互动
.goto 2024,35.34,33.07,0,0
.complete 65866,1 
step
>>杀死该区域的|cff00ecffGnolls|r。掠夺他们作为祭品
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
>>与地面陷阱互动
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.complete 65866,1 
step
#requires TheAzureSpanThoseArentForChewing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.goto 2024,34.26,31.30
.turnin 65868 >>Turn in Those Aren't for Chewing
.turnin 65867 >>Turn in Howling in the Big Tree Hills
.turnin 65866 >>Turn in Snap the Traps
.timer 17,Roleplay Duration
.target Hanu
step
#completewith next
+等待简短的角色扮演
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.07
.accept 65871 >>接任务: |cRXP_WARN_豺狼当道|r
.accept 65872 >>接任务: |cRXP_WARN_豺狼人的恶意|r
.accept 65873 >>接任务: |cRXP_WARN_影足头豺|r
.accept 65870 >>接任务: |cRXP_WARN_补给！|r
.target Hanu
.target Brena
.target Elder Poa
step
#completewith next
.goto 2024,33.95,30.64,12 >>进入洞穴
step
#completewith TheAzureSpanLeaderoftheShadepawPack
>>在洞穴中杀死|cff00ecffGnolls|r
.goto 2132,45.88,50.78,0,0
.complete 65872,1 
step
>>Pick up the basket
.goto 2132,36.31,93.16
.complete 65870,3 
step
>>Pick up the barrel
.goto 2132,29.17,75.42
.complete 65870,1 
step
#title Tuskarr 1
>>Open the cage
.goto 2132,30.36,59.53
.complete 65871,1,1 
step
>>调查Norukks的尸体
.goto 2132,41.42,63.83
.complete 65871,2 
step
#title Tuskarr 2
>>Open the cage
.goto 2132,46.26,40.92
.complete 65871,1,2 
step
>>Pick up the barrel
.goto 2132,51.40,36.86
.complete 65870,2 
step
#title Tuskarr 3
>>Open the cage
.goto 2132,38.10,32.11
.complete 65871,1 
step
#label TheAzureSpanLeaderoftheShadepawPack
>>杀死胎儿卡普。掠夺他作为图腾。
.goto 2132,42.27,14.47
.complete 65873,1 
step
>>在洞穴中杀死|cff00ecffGnolls|r
.goto 2132,37.06,36.14,20,0
.goto 2132,44.64,36.89,20,0
.goto 2132,48.99,26.78,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,64.62,21.19,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,43.73,42.03,20,0
#loop
.line 2132,36.65,34.61,28.82,48.53,29.37,60.34,38.45,52.88,47.14,55.14,46.56,36.26,61.09,39.17,65.72,24.58
.goto 2132,36.65,34.61,20,0
.goto 2132,28.82,48.53,20,0
.goto 2132,29.37,60.34,20,0
.goto 2132,38.45,52.88,20,0
.goto 2132,47.14,55.14,20,0
.goto 2132,46.56,36.26,20,0
.goto 2132,61.09,39.17,20,0
.goto 2132,65.72,24.58,20,0
.complete 65872,1 
step
#completewith next
.goto 2024,34.92,30.03,10 >>离开洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.06
.turnin 65870 >>Turn in Supplies!
.turnin 65872 >>Turn in Ill Gnolls with Ill Intent
.turnin 65873 >>Turn in Leader of the Shadepaw Pack
.turnin 65871 >>Turn in Gnoll Way Out
.accept 66239 >>接任务: |cRXP_WARN_腐朽蔓延|r
.target Hanu
.target Brena
.target Elder Poa
step
#completewith next
+使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,28.69,34.82
.turnin 66239 >>Turn in Spreading Decay
.accept 65869 >>接任务: |cRXP_WARN_伏击再现|r
.target Brena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akiun
.goto 2024,28.68,34.75
.skipgossip
.complete 65869,1 
.target Akiun
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用枪鞋。激活NPC旁边的RP Walk，与他们交谈
step
#title Body 1
>>安装时与身体互动
.goto 2024,29.25,33.57
.skipgossip
.complete 65869,2,1 
step
#title Body 2
>>安装时与身体互动
.goto 2024,29.17,32.56
.skipgossip
.complete 65869,2,2 
step
#title Body 3
>>安装时与身体互动
.goto 2024,28.20,31.86
.skipgossip
.complete 65869,2,3 
step
#title Body 4
>>安装时与身体互动
.goto 2024,27.97,32.83
.skipgossip
.complete 65869,2 
step
#title Dragon Glyph: Creektooth Den
.goto 2024,26.73,31.68
.achievement 16577,6 >>捡起大树顶端的龙雕
step
.goto 2024,28.78,34.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.turnin 65869 >>Turn in Another Ambush
.accept 66026 >>接任务: |cRXP_WARN_需要紧急措施|r
.target Brena
step
.goto 2024,28.47,35.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Unkimi
.accept 71233 >>接任务: |cRXP_WARN_飞瀑直下|r
.target Unkimi
step
.pve
.goto 2024,22.72,41.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.accept 66262 >>接任务: |cRXP_WARN_废水清洁|r
step
.pve
>>点击腐烂的桩并杀死正在繁殖的Muck Elemental
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
#loop
.line 2024,22.45,41.96,22.04,41.66,22.27,41.20,22.83,41.18,23.22,41.16,23.60,41.40,22.81,42.15
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
.complete 66262,1 
step
.pve
.goto 2024,22.72,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66262 >>Turn in Waste Water Cleanup
.accept 66263 >>接任务: |cRXP_WARN_精准除害|r
.accept 66264 >>接任务: |cRXP_WARN_嚣张都靠武器|r
step
.pve
#completewith next
>>杀死|cff00ecffGnawbone武器|r。为武器而掠夺它们
.complete 66264,1 
step
.pve
#completewith next
.goto 2024,24.40,39.56,20 >>进入洞穴
step
.pve
#label TheAzureSpanAPrecisionApproach
>>杀死|cff00ecffFlayfist|r
.goto 2024,24.80,39.03
.complete 66263,1 
step
.pve
>>杀死|cff00ecffGnawbone武器|r。为武器而掠夺它们
.goto 2024,24.40,39.56,25,0
.goto 2024,23.33,39.87,25,0
.goto 2024,22.47,39.95,25,0
.goto 2024,22.09,40.67,25,0
.goto 2024,23.85,40.50,35,0
#loop
.line 2024,24.40,39.56,23.33,39.87,22.47,39.95,22.09,40.67,23.85,40.50
.goto 2024,24.40,39.56,35,0
.goto 2024,23.33,39.87,35,0
.goto 2024,22.47,39.95,35,0
.goto 2024,22.09,40.67,35,0
.goto 2024,23.85,40.50,35,0
.complete 66264,1 
step
.pve
.goto 2024,22.74,41.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66263 >>Turn in A Precision Approach
.turnin 66264 >>Turn in Disarmed and Docile
.accept 66265 >>接任务: |cRXP_WARN_下一个|r
.accept 66266 >>接任务: |cRXP_WARN_污秽杂种|r
step
.pve
.goto 2024,23.48,41.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Illusory Mage
.accept 66267 >>接任务: |cRXP_WARN_仁法会|r
step
.pve
#completewith TheAzureSpanMETA
>>杀死侧面的|cff00ecffMongrels|r和|cff0ecffMatriarchs|r
.complete 66266,2 
.complete 66266,1 
step
.pve
>>杀死小洞穴内的|cff00ecffCracktooth|r
.goto 2024,24.20,41.81
.complete 66265,1 
step
.pve
#label TheAzureSpanMETA
>>杀死该区域的|cff00ecffGnolls|r。偷他们的钥匙。你也可以从帐篷里取钥匙
.goto 2024,23.50,42.43,25,0
.goto 2024,23.73,43.25,25,0
.goto 2024,24.32,42.91,25,0
.goto 2024,23.94,42.02,25,0
#loop
.line 2024,23.50,42.43,23.73,43.25,24.32,42.91,23.94,42.02
.goto 2024,23.50,42.43,30,0
.goto 2024,23.73,43.25,30,0
.goto 2024,24.32,42.91,30,0
.goto 2024,23.94,42.02,30,0
.collect 191736,6,66267,0x1,-1
.complete 66267,1 
step
.pve
>>完成击杀|cff00ecffMongrels|r和|cff0ecffMatriarchs|r
.goto 2024,23.50,42.43,25,0
.goto 2024,23.73,43.25,25,0
.goto 2024,24.32,42.91,25,0
.goto 2024,23.94,42.02,25,0
#loop
.line 2024,23.50,42.43,23.73,43.25,24.32,42.91,23.94,42.02
.goto 2024,23.50,42.43,30,0
.goto 2024,23.73,43.25,30,0
.goto 2024,24.32,42.91,30,0
.goto 2024,23.94,42.02,30,0
.complete 66266,2 
.complete 66266,1 
step
.pve
.goto 2024,22.70,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66266 >>Turn in Filthy Mongrels
.turnin 66265 >>Turn in Who's Next?
.turnin 66267 >>Turn in M.E.T.A.
.accept 66268 >>接任务: |cRXP_WARN_失不过三|r
.accept 66269 >>接任务: |cRXP_WARN_除恶务尽|r
step
.pve
#completewith TheAzureSpanThirdTrystheCharm
>>杀死|cff00ecffStormfang元素主义者|r
.complete 66269,1 
step
.pve
#completewith next
.goto 2024,22.16,43.51,10 >>进入洞穴
step
.pve
#label TheAzureSpanThirdTrystheCharm
>>杀死|cff00ecff血爪|r
.goto 2024,22.27,43.20
.complete 66268,1 
step
.pve
#completewith TheAzureSpanThirdTrystheCharm
>>杀死|cff00ecffStormfang元素主义者|r
.goto 2024,22.27,42.50,25,0
.goto 2024,23.17,42.67,25,0
.goto 2024,23.32,43.28,25,0
.goto 2024,23.22,44.28,25,0
.goto 2024,22.52,43.54,25,0
#loop
.line 2024,22.27,42.50,23.17,42.67,23.32,43.28,23.22,44.28,22.52,43.54
.goto 2024,22.27,42.50,30,0
.goto 2024,23.17,42.67,30,0
.goto 2024,23.32,43.28,30,0
.goto 2024,23.22,44.28,30,0
.goto 2024,22.52,43.54,30,0
.complete 66269,1 
step
.pve
.goto 2024,22.74,41.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66269 >>Turn in Just To Be Sure
.turnin 66268 >>Turn in Third Try's the Charm
step
>>杀死|cff00ecffCascade|r
.goto 2024,23.33,33.60
.accept 72358 >>接任务: |cRXP_WARN_涌流|r
.complete 72358,1 
step
#completewith next
+使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,20.59,35.67
.turnin 66026 >>Turn in Urgent Action Required
.timer 24,Roleplay Duration
.target Brena
step
.goto 2024,18.73,24.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 71233 >>Turn in Falling Water
.accept 66837 >>接任务: |cRXP_WARN_饥一顿|r
.accept 66838 >>接任务: |cRXP_WARN_高处不胜寒|r
.target Willa Stronghinge
step
.goto 2024,19.04,23.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.accept 66844 >>接任务: |cRXP_WARN_巨狐修卡利|r
.target Zon'Wogi
step
#completewith next
.goto 2024,19.16,23.77
.fp >>获取三瀑布了望飞行路线
step
.goto 2024,18.98,23.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Modurun Sixtoes
.accept 66839 >>接任务: |cRXP_WARN_酿酒时间！|r
.target Modurun Sixtoes
step
#completewith next
>>杀死该区域的|cff00ecffbears|r。掠夺他们的毛皮
.complete 66838,1 
step
>>专注于拾取龙箔和血浆果
.goto 2024,20.46,25.93,25,0
.goto 2024,21.16,25.65,25,0
.goto 2024,21.70,25.54,25,0
.goto 2024,22.23,26.04,25,0
.goto 2024,22.76,26.05,25,0
.goto 2024,22.87,26.70,25,0
.goto 2024,23.23,26.82,25,0
.goto 2024,22.42,27.73,25,0
.goto 2024,21.91,27.83,25,0
.goto 2024,20.85,27.94,25,0
#loop
.line 2024,20.46,25.93,21.16,25.65,21.70,25.54,22.23,26.04,22.76,26.05,22.87,26.70,23.23,26.82,22.42,27.73,21.91,27.83,20.85,27.94
.goto 2024,20.46,25.93,30,0
.goto 2024,21.16,25.65,30,0
.goto 2024,21.70,25.54,30,0
.goto 2024,22.23,26.04,30,0
.goto 2024,22.76,26.05,30,0
.goto 2024,22.87,26.70,30,0
.goto 2024,23.23,26.82,30,0
.goto 2024,22.42,27.73,30,0
.goto 2024,21.91,27.83,30,0
.goto 2024,20.85,27.94,30,0
.complete 66839,1 
step
>>杀死该区域的|cff00ecffbears|r。掠夺他们的毛皮
.goto 2024,20.85,27.94,25,0
.goto 2024,21.91,27.83,25,0
#loop
.line 2024,20.46,25.93,21.16,25.65,21.70,25.54,22.23,26.04,22.76,26.05,22.87,26.70,23.23,26.82,22.42,27.73,21.91,27.83,20.85,27.94
.goto 2024,20.46,25.93,30,0
.goto 2024,21.16,25.65,30,0
.goto 2024,21.70,25.54,30,0
.goto 2024,22.23,26.04,30,0
.goto 2024,22.76,26.05,30,0
.goto 2024,22.87,26.70,30,0
.goto 2024,23.23,26.82,30,0
.goto 2024,22.42,27.73,30,0
.goto 2024,21.91,27.83,30,0
.goto 2024,20.85,27.94,30,0
.complete 66838,1 
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.accept 66843 >>接任务: |cRXP_WARN_无路克走|r
.target Branor Broadbraw
step
#completewith next
>>杀死|cff00ecffVorquins|r和|cff0ecffBruffalons|r。掠夺他们的侧翼和肉
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.complete 66837,2 
.complete 66837,1 
step
>>在洞穴内杀死|cff00ecffGloomfur Sasquatch|r
.goto 2024,16.01,27.25
.complete 66843,1 
.unitscan Gloomfur Sasquatch
step
>>杀死|cff00ecffVorquins|r和|cff0ecffBruffalons|r。掠夺他们的侧翼和肉
#loop
.line 2024,18.30,26.71,17.52,26.92,16.95,27.55,16.13,27.81,15.98,26.06,17.39,25.96
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.goto 2024,15.98,26.06,30,0
.goto 2024,17.39,25.96,30,0
.complete 66837,2 
.complete 66837,1 
step
>>杀死|cff00ecffSky Vixen Shokhari|r
.goto 2024,13.27,26.50
.complete 66844,1 
.unitscan Sky Vixen Shokhari
step
.goto 2024,18.75,24.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 66837 >>Turn in Nothing for Breakfast
.turnin 66838 >>Turn in It's Cold Up Here
.target Willa Stronghinge
step
.goto 2024,19.03,23.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.turnin 66844 >>Turn in The Great Shokhari
.target Zon'Wogi
step
.goto 2024,18.98,23.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Modurun Sixtoes
.turnin 66839 >>Turn in It's Brew Time!
.target Modurum Sixtoes
step
.goto 2024,18.54,23.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Manny Read
.accept 66840 >>接任务: |cRXP_WARN_[Water Safety]|r
.target Manny Read
step
#title Sample collected 1/3
>>在航路点位置使用|T134864:0|t[试水烧瓶]
.use 193569
.goto 2024,19.38,23.95
.complete 66840,1,1 
step
.goto 2024,19.16,24.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gannar Fullpack
.accept 66841 >>接任务: |cRXP_WARN_往昔的碎片|r
.target Gannar Fullpack
step
#title Sample collected 2/3
>>在航路点位置使用|T134864:0|t[试水烧瓶]
.use 193569
.goto 2024,20.01,24.18
.complete 66840,1,2 
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.turnin 66843 >>Turn in Out of Lukh
.target Branor Broadbraw
step
>>降落在岩石上，捡起古代文物
.goto 2024,17.61,28.23
.complete 66841,1 
step
#title Sample collected 3/3
>>在航路点位置使用|T134864:0|t[试水烧瓶]
.use 193569
.goto 2024,17.30,23.20
.complete 66840,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Manny Read and Thanessa Silverbloom
.turnin 66840 >>Turn in Water Safety
.goto 2024,18.54,23.67
.turnin 66841 >>Turn in A Shard of the Past
.goto 2024,18.65,23.67
.target Manny Read
.target Thanessa Silverbloom
step
.goto 2024,18.74,24.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guo-Hee Calmwater
.accept 66845 >>接任务: |cRXP_WARN_[Legendary Foil]|r
.target Guo-Hee Calmwater
step
>>击败神秘幻影
.goto 2024,17.26,26.21
.complete 66845,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t郭与神秘幻影对话
.turnin 66845 >>Turn in Legendary Foil
.goto 2024,18.74,24.42
.accept 66846 >>接任务: |cRXP_WARN_[The Heart of the Deck]|r
.goto 2024,18.77,24.43
.target Guo-Hee Calmwater
.target Mysterious Apparition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Mysterious Apparition and wait for the roleplay
.goto 2024,18.77,24.43
.skipgossip 191741,1
.timer 35,Roleplay Duration
.complete 66846,1 
.target Mysterious Apparition
step
.goto 2024,18.77,24.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mysterious Apparition
.turnin 66846 >>Turn in The Heart of the Deck
.target Mysterious Apparition
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos after a short roleplay
.goto 2024,20.53,35.69
.accept 65838 >>接任务: |cRXP_WARN_突破蕨皮|r
.target Kalecgos
step
#completewith TheAzureSpanLeyLitter
>>杀死|cff00ecffBrackenhides|r并摧毁他们的图腾（奖励目标）|cffffff00现在不要专注于完成这件事|r
.complete 65841,1 
step
>>与腐烂的根相互作用
.goto 2024,18.89,36.99
.skipgossip
.complete 65838,2 
step
>>与腐烂的根相互作用
.goto 2024,18.38,34.74
.skipgossip
.complete 65838,1 
step
>>与腐烂的根相互作用
.goto 2024,17.59,36.99
.skipgossip
.complete 65838,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.goto 2024,16.75,37.26
.turnin 65838 >>Turn in Breaching the Brackenhide
.accept 65846 >>接任务: |cRXP_WARN_魔网零落|r
.accept 65844 >>接任务: |cRXP_WARN_割除腐溃|r
.accept 65845 >>接任务: |cRXP_WARN_陨落者的回响|r
.target Kalecgos
.target Norukk
.target Brena
step
#completewith TheAzureSpanLeyLitter
>>|cfff78300小心叛国者，因为他们很少见|r
.goto 2024,17.69,37.74,0,0
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#completewith TheAzureSpanEchoesoftheFallen
.complete 65846,1 
step
#title Spirit 1
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]
.use 191928
.goto 2024,17.47,37.07
.complete 65845,1,1 
step
#title Spirit 2
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]
.use 191928
.goto 2024,18.13,37.67
.complete 65845,1,2 
step
#title Spirit 3
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]
.use 191928
.goto 2024,18.52,37.26
.complete 65845,1,3 
step
#title Spirit 4
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]
.use 191928
.goto 2024,17.54,37.93
.complete 65845,1,4 
step
#label TheAzureSpanEchoesoftheFallen
#title Spirit 5
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]
.use 191928
.goto 2024,17.41,38.65
.complete 65845,1 
step
#label TheAzureSpanLeyLitter
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
#loop
.line 2024,17.81,38.52,18.42,38.32,18.69,36.99,17.25,36.85,17.45,38.42
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
.complete 65846,1 
step
#sticky
#label TheAzureSpanStoptheSpread
>>杀死|cff00ecffBrackenhides|r并摧毁他们的图腾
.goto 2024,18.53,35.78
.complete 65841,1 
step
>>|cfff78300地图上标出了可能的trean位置|r
.goto 2024,17.2,37.0,0
.goto 2024,17.4,37.8,0
.goto 2024,17.4,39.2,0
.goto 2024,17.6,37.2,0
.goto 2024,17.8,38.8,0
.goto 2024,18.4,38.0,0
.goto 2024,18.6,38.0,0
.goto 2024,18.6,38.6,0
.goto 2024,18.8,36.6,0
.goto 2024,17.2,37.0,0
.goto 2024,17.2,37.40,0
.goto 2024,17.6,37.40,0
.goto 2024,18.8,36.40,0
.goto 2024,17.69,37.74
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#requires TheAzureSpanStoptheSpread
.goto 2024,16.74,37.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.turnin 65846 >>Turn in Ley Litter
.turnin 65844 >>Turn in Cut Out the Rot
.turnin 65845 >>Turn in Echoes of the Fallen
.accept 65848 >>接任务: |cRXP_WARN_魔典束缚|r
.target Kalecgos
.target Norukk
.target Brena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and wait for the roleplay
.goto 2024,16.74,37.32
.skipgossip 187873,1
.timer 21,Roleplay Duration
.complete 65848,1 
.target Kalecgos
step
>>魔咒之丘
.goto 2024,16.71,37.30
.complete 65848,2 
step
>>垃圾邮件|T134917:0:0|t部分收费（1）以加快移动速度
>>使用|T135753:0:0|tArcane Blast（2）杀死|cff00ecff净化器|r
.goto 2024,16.02,38.49
.complete 65848,3,1 
step
>>垃圾邮件|T134917:0:0|t部分收费（1）以加快移动速度
>>使用|T135753:0:0|tArcane Blast（2）杀死|cff00ecff净化器|r
.goto 2024,15.64,37.42
.complete 65848,3,2
step
>>垃圾邮件|T134917:0:0|t部分收费（1）以加快移动速度
>>使用|T135753:0:0|tArcane Blast（2）杀死|cff00ecff净化器|r
.goto 2024,15.22,37.95
.complete 65848,3,3 
step
>>使用|T429383:0:0|tArcane灵光（1）杀死|cff00ecffTwisted Ancient|r
.goto 2024,15.40,37.73
.complete 65848,4 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,15.30,39.43
.turnin 65848 >>Turn in Tome-ward Bound
.accept 65847 >>接任务: |cRXP_WARN_重新排列|r
.target Kalecgos
step
>>与Ley Crystal互动
.goto 2024,15.35,39.50
.complete 65847,1 
step
#title Infection 1
>>Destroy the infection
.goto 2024,15.51,39.31
.complete 65847,2,1 
step
#title Infection 2
>>Destroy the infection
.goto 2024,15.30,39.12
.complete 65847,2,2 
step
#title Infection 3
>>Destroy the infection
.goto 2024,15.07,39.52
.complete 65847,2 
step
#completewith next
.goto 2024,14.97,38.77,15 >>离开洞穴
step
#completewith next
+使用你的龙骑坐骑飞往卡莱戈斯
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Brena
.turnin 65847 >>Turn in Realignment
.goto 2024,16.11,41.40
.accept 65849 >>接任务: |cRXP_WARN_前往伊斯卡拉|r
.goto 2024,16.08,41.45
.target Kalecgos
.target Brena
step
>>杀死最强Tuskar|r
.goto 2024,17.23,41.46
.accept 69872 >>接任务: |cRXP_WARN_瓦克里尔，最强的海象人|r
.complete 69872,1 
step
#completewith next
+使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,13.24,49.56
.turnin 65849 >>Turn in To Iskaara
.accept 66210 >>接任务: |cRXP_WARN_聚集家庭|r
.target Brena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Roki
.goto 2024,13.14,49.26
.accept 72435 >>接任务: |cRXP_WARN_导引入门：伊斯卡拉|r
.target Roki
step
#completewith next
.goto 2024,12.78,49.34,8 >>进入客栈
step
#title |T134450:0:0|tOffering 1
>>拿起石雕
.goto 2024,12.49,49.45
.complete 66210,1,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.accept 66213 >>接任务: |cRXP_WARN_编造故事|r
.target Elder Nappa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Poa
.goto 2024,12.41,49.34
.skipgossip 1
.complete 66213,1 
.target Elder Poa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.turnin 66213 >>Turn in The Weave of a Tale
.target Elder Nappa
step
#completewith next
.goto 2024,12.78,49.34,8 >>Leave the inn
step
#title |T134989:0:0|tOffering 2
>>拿起装饰盾牌
.goto 2024,12.46,50.31
.complete 66210,1,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rokkutuk
.goto 2024,13.91,50.08
.complete 72435,2 
.target Rokkutuk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lukoturukk
.goto 2024,14.07,49.45
.accept 71234 >>接任务: |cRXP_WARN_海角新闻|r
.target Lukoturukk
step
#title |T1126431:0:0|tOffering 3
>>拿起手工制作的小船
.goto 2024,13.87,49.48
.complete 66210,1,3 
step
#title |T132803:0:0|tOffering 4
>>拿起装饰茶壶
.goto 2024,13.48,48.57
.complete 66210,1 
step
#sticky
#label TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arvik
.goto 2024,13.17,48.53
.complete 72435,1 
.target Arvik
step
>>与殡仪船互动
.goto 2024,13.14,48.57
.complete 66210,2 
step
#requires TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Norukk
.goto 2024,12.96,48.64
.complete 72435,4 
.target Norukk
step
.pve
.goto 2024,12.89,48.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.accept 66218 >>接任务: |cRXP_WARN_蹦跳顽童|r
.target Hanu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tatto
.goto 2024,13.18,48.82
.complete 72435,3 
.target Tatto
step
.goto 2024,13.20,48.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.accept 66217 >>接任务: |cRXP_WARN_通缉：克洛杰克，海滨巡游者|r
.target Bukarakikk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Murik
.goto 2024,13.14,49.26
.turnin 72435 >>Turn in Orientation: Iskaara
.target Murik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Kalecgos
.turnin 66210 >>Turn in Gather the Family
.goto 2024,13.24,49.56
.accept 65850 >>接任务: |cRXP_WARN_海洋轮回|r
.goto 2024,13.26,49.53
.target Brena
.target Kalecgos
step
#completewith next
.goto 2024,13.24,49.55
.gossipoption 55314 >>Talk to Brena
.timer 72,Roleplay Duration
.target Brena
step
>>角色扮演后与殡仪船互动
.goto 2024,13.18,49.20,8,0
.goto 2024,13.06,49.52,10,0
.goto 2024,13.16,50.20
.complete 65850,1 
.complete 65850,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,12.94,50.39
.turnin 65850 >>Turn in Gather the Familiy
.accept 65911 >>接任务: |cRXP_WARN_碧蓝盟会|r
.target Kalecgos
step
>>杀死海岸掠夺者克罗耶克。你可以跳过这个任务。这是一个非常强硬的精英|r
.unitscan Krojek The Shoreprowler
.goto 2024,10.45,53.66
.complete 66217,1 
.unitscan Krojek The Shoreprowler
step
.isQuestComplete 66217
.goto 2024,12.51,49.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.turnin 66217 >>Turn in WANTED: Krojek the Shoreprowler
.target Bukarakikk
step
.abandon 66217 >>放弃通缉犯：海岸掠夺者克罗耶克
step
.pve
.isOnQuest 66218
.goto 2024,10.59,46.87
.gossipoption 55003 >>Talk to Neelo
.target Neelo
step
.xp 68.5,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wayun
.goto 2024,7.45,44.28
.turnin 71234 >>Turn in Nook News
.target Wayun
step
.xp 68.5,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.accept 66781 >>接任务: |cRXP_WARN_口感问题|r
.target Mordigan Ironjaw
step
.isOnQuest 66781
>>捡起地上的大石头
.goto 2024,7.24,45.12
.complete 66781,1 
step
.isQuestComplete 66781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.turnin 66781 >>Turn in A Matter of Taste
.target Mordigan Ironjaw
step
.xp 68.5,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog, Examiner Rowe and Aelnara
.accept 66164 >>接任务: |cRXP_WARN_浑水摸鱼|r
.goto 2024,7.65,44.32
.accept 66154 >>接任务: |cRXP_WARN_催涎采样|r
.goto 2024,7.67,44.26
.accept 66147 >>接任务: |cRXP_WARN_水晶水中浸|r
.goto 2024,7.64,44.23
.target LOU-C Fitzcog
.target Examiner Rowe
.target Aelnara
step
.isOnQuest 66164
#completewith TheAzureSpanCrystalsintheWater
>>捡起地上被盗的零件
.complete 66164,1 
step
.isOnQuest 66154
#completewith TheAzureSpanCrystalsintheWater
>>杀死|cff00ecffBringtooths|r.为唾液掠夺它们
.complete 66154,1 
step
.isOnQuest 66147
#title Crystal Mined 1/4
.goto 2024,9.86,43.36
.complete 66147,1,1 
step
.isOnQuest 66147
#title Crystal Mined 2/4
.goto 2024,10.36,43.33
.complete 66147,1,2 
step
.isOnQuest 66147
#title Crystal Mined 3/4
.goto 2024,10.68,42.73
.complete 66147,1,3 
step
.isOnQuest 66147
#label TheAzureSpanCrystalsintheWater
#title Crystal Mined 4/4
.goto 2024,10.18,42.29
.complete 66147,1 
step
.isOnQuest 66164
#completewith next
>>捡起地上被盗的零件
.complete 66164,1 
step
.isOnQuest 66154
>>杀死|cff00ecffBringtooths|r.为唾液掠夺它们
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,35,0
.goto 2024,9.77,43.71,35,0
.goto 2024,10.31,43.44,35,0
.goto 2024,10.95,43.44,35,0
.goto 2024,10.28,42.36,35,0
.complete 66154,1 
step
.isOnQuest 66164
>>捡起地上被盗的零件
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,35,0
.goto 2024,9.77,43.71,35,0
.goto 2024,10.31,43.44,35,0
.goto 2024,10.95,43.44,35,0
.goto 2024,10.28,42.36,35,0
.complete 66164,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Rowe, Aelnara and LOU-C Fitzcog
.turnin -66154 >>Turn in Salivatory Samples
.goto 2024,7.67,44.26
.turnin -66147 >>Turn in Crystals in the Water
.goto 2024,7.64,44.23
.turnin -66164 >>Turn in Fishy Fingers
.goto 2024,7.65,44.32
.target Aelnara
step
.xp 68.5,1
.isQuestTurnedIn 66164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog
.accept 66175 >>接任务: |cRXP_WARN_[Field Experiment]|r
.goto 2024,7.65,44.32
.target LOU-C Fitzcog
step
.isOnQuest 66175
>>Click on the Geoscanner
.goto 2024,7.64,44.33
.complete 66175,1 
.timer 33,Roleplay Duration
step
.pve
.isQuestComplete 66218
.goto 2024,10.59,46.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Neelo
.turnin 66218 >>Turn in Scampering Scamps
.target Neelo
step
.isQuestComplete 66175
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog
.goto 2024,7.64,44.33
.turnin 66175 >>Turn in Field Experiment
.target LOU-C Fitzcog
step
#completewith next
.hs >>糖果旅馆之心
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.48,63.02
.turnin 65911 >>Turn in Azure Alignment
.accept 66027 >>接任务: |cRXP_WARN_呼叫蓝龙|r
.target Kalecgos
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.48,63.02
.skipgossip 186280,1
.complete 66027,1 
.target Kalecgos
step
.goto 2024,39.48,63.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.turnin 66027 >>Turn in Calling the Blue Dragons
.accept 65886 >>接任务: |cRXP_WARN_前往罗宁之盾|r
.target Kalecgos
step
>>按照箭头并使用|cffffff00[ExtraActionButton]|r
.goto 2024,41.19,62.27,-1
.goto 2024,39.56,60.26,-1
.goto 2024,38.26,61.50,-1
.complete 65886,2 
step
#title Dragon Glyph: Zelthrak Outpost
>>|cffffff00沿着箭头，尽量保持在尽可能高的位置，而不会失去速度|r
.goto 2024,53.03,48.65
.achievement 16577,8 >>在一棵大树的顶端捡起龙雕文
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.accept 66709 >>接任务: |cRXP_WARN_战地医师入门|r
.target Old Grimtusk
step
>>从老格里姆图斯克身上取下长矛
.goto 2024,59.26,39.73
.complete 66709,1 
step
>>Pick up the wood
.goto 2024,59.20,39.79
.complete 66709,2 
step
>>Place the Campfire
.goto 2024,59.25,39.77
.complete 66709,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.skipgossip 189963,1
.complete 66709,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.turnin 66709 >>Turn in Field Medic 101
.accept 66715 >>接任务: |cRXP_WARN_大撤离|r
.target Old Grimtusk
step
#completewith TheAzureSpanFrostbiteCausesandSymptoms
>>杀死|cff00ecffGnolls|r并摧毁他们的防御
.accept 66718 >>接任务: |cRXP_WARN_豺狼人必须死|r
.complete 66718,1 
step
>>Follow the arrow
.goto 2024,58.34,41.83
.complete 66715,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66715 >>Turn in The Extraction
.accept 66703 >>接任务: |cRXP_WARN_雪球效应|r
.target Frostbite
step
#completewith next
>>杀死|cff00ecffSnowdhide萨满|r。掠夺他们的图腾
.goto 2024,58.34,42.60,15,0
.complete 66703,1 
step
>>杀死|cff00ecffSnoll the Icebreaker|r
.goto 2024,57.90,44.82
.complete 66718,2 
.unitscan Snoll the Icebreaker
step
>>杀死|cff00ecffSnowdhide萨满|r。掠夺他们的图腾
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
#loop
.line 2024,58.34,42.64,56.89,42.33,57.64,41.53,58.34,42.64,56.89,42.33,57.64,41.53
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.complete 66703,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66703 >>Turn in Snowball Effect
.accept 67050 >>接任务: |cRXP_WARN_霜齿：表里症结|r
.target Frostbite
step
#label TheAzureSpanFrostbiteCausesandSymptoms
>>Place the totems
.goto 2024,58.24,41.95
.complete 67050,1 
step
>>杀死|cff00ecffGnolls|r并摧毁他们的防御
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,57.70,42.22
.complete 66718,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.complete 67050,2 
.target Old Grimtusk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.turnin 67050 >>Turn in Frostbite: Causes and Symptoms
.accept 66730 >>接任务: |cRXP_WARN_真正的幸存者|r
.target Old Grimtusk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往格里姆图斯克的藏身处，与老格里姆图斯交谈
.goto 2024,58.79,34.91
.turnin 66730 >>Turn in True Survivors
.target Old Grimtusk
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.87
.accept 68639 >>接任务: |cRXP_WARN_极地徘徊猎手|r
.accept 68641 >>接任务: |cRXP_WARN_青苔入药|r
.target Callisto Windsor
.target Steria Duskgrove
step
.pve
#completewith TheAzureSpanMossingtheMark
>>杀死|cff00ecff感染的寒皮|r
.complete 68639,1 
step
.pve
#title Drakmoss Clump 1
>>Pick up the Drakmoss
.goto 2024,63.68,30.66
.complete 68641,1,1 
step
.pve
#title Drakmoss Clump 2
>>Pick up the Drakmoss
.goto 2024,63.57,30.96
.complete 68641,1,2 
step
.pve
#title Drakmoss Clump 3
>>Pick up the Drakmoss
.goto 2024,63.53,31.18
.complete 68641,1,3 
step
.pve
#title Drakmoss Clump 4
>>Pick up the Drakmoss
.goto 2024,63.41,31.34
.complete 68641,1,4 
step
.pve
#label TheAzureSpanMossingtheMark
#title Drakmoss Clump 5
>>Pick up the Drakmoss
.goto 2024,63.22,31.35
.complete 68641,1 
step
.pve
>>杀死|cff00ecff感染的寒皮|r
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03,25,0
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03
.complete 68639,1 
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.86
.turnin 68639 >>Turn in Prowling Polar Predators
.turnin 68641 >>Turn in Mossing the Mark
.target Callisto Windsor
.target Steria Duskgrove
step
>>Dragonride到航路点位置
.goto 2024,65.81,25.33
.complete 65886,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.33
.turnin 65886 >>Turn in To Rhonin's Shield
.accept 65887 >>接任务: |cRXP_WARN_进入山区|r
.target Drok Scrollstabber
step
.xp 69,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.33
.accept 67299 >>接任务: |cRXP_WARN_净除幼龙|r
.target Drok Scrollstabber
step
.isOnQuest 67299
#completewith next
.goto 2024,65.71,25.56,10,0
.goto 2024,65.85,26.75,10,0
.goto 2024,66.03,25.60,10,0
.vehicle 192872 >>进入Arcane Blaster
step
.isOnQuest 67299
>>使用|T429383:0|tArcane Blast（1）杀死飞龙
>>你可以用（2）来减缓它们
.goto 2024,65.71,25.56
.complete 67299,1 
step
.isQuestComplete 67299
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.32
.turnin 67299 >>Turn in Drakes be Gone
.target Drok Scrollstabber
step
#completewith next
.goto 2024,66.00,25.39
.fp >>获取罗宁之盾飞行路线
step
.xp 69,1
.goto 2024,65.39,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.accept 66553 >>接任务: |cRXP_WARN_谷地寻踪|r
.accept 66554 >>接任务: |cRXP_WARN_防卫过当|r
.target Sonova Snowden
step
.xp 69,1
.goto 2024,65.56,16.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tyrnokos Sunstrike
.accept 66622 >>接任务: |cRXP_WARN_任性的工具|r
.target Tyrnokos Sunstrike
step
.isOnQuest 66622
>>单击Wayward Tools（Wayward Tools）（您可以在安装时执行此操作）
.target Wayward Tool
.goto 2024,65.96,16.51,25,0
.goto 2024,65.82,17.41,25,0
.goto 2024,65.25,17.23,25,0
.goto 2024,64.82,17.31,25,0
.goto 2024,64.71,16.83,25,0
.complete 66622,1 
step
.isOnQuest 66554
#completewith TheAzureSpanHollowUp
>>击败|cff00ecffFurbolgs|r
.complete 66554,1 
step
.isOnQuest 66553
#title Clue 1/6
>>点击触电冬皮
.goto 2024,66.48,13.27
.complete 66553,1,1 
step
.isOnQuest 66553
#title Clue 2/6
>>点击触电冬皮
.goto 2024,66.56,12.67
.complete 66553,1,2 
step
.isOnQuest 66553
#title Clue 3/6
>>点击触电冬皮
.goto 2024,66.81,12.51
.complete 66553,1,3 
step
.isOnQuest 66553
#title Clue 4/6
>>点击触电冬皮
.goto 2024,66.53,12.18
.complete 66553,1,4 
step
.isOnQuest 66553
#title Clue 5/6
>>点击触电冬皮
.goto 2024,66.29,12.25
.complete 66553,1,5 
step
.isOnQuest 66553
#label TheAzureSpanHollowUp
#title Clue 6/6
>>点击触电冬皮
.goto 2024,66.11,13.22
.complete 66553,1 
step
.isOnQuest 66554
>>击败|cff00ecffFurbolgs|r
.goto 2024,65.85,12.78,25,0
.goto 2024,66.82,13.47,25,0
.goto 2024,66.96,11.89,25,0
.goto 2024,65.85,12.78
.complete 66554,1 
step
.goto 2024,65.38,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.turnin -66553 >>Turn in Hollow Up
.turnin -66554 >>Turn in Aggressive Self-Defence
.target Sonova Snowden
step
.isQuestTurnedIn 66554
.goto 2024,65.38,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.accept 66555 >>接任务: |cRXP_WARN_容我一言|r
.target Sonova Snowden
step
.isOnQuest 66555
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.goto 2024,65.38,15.95
.skipgossip 189401,1
.complete 66555,1 
.target Sonova Snowden
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden and Tyrnokos Sunstrike
.turnin -66555 >>Turn in Bear With Me
.goto 2024,65.38,15.95
.turnin -66622 >>Turn in Wayward Tools
.goto 2024,65.57,16.17
.target Sonova Snowden
.target Tyrnokos Sunstrike
step
#title Dragon Glyph: Rhonin's Outpost
.goto 2024,67.65,29.12
.achievement 16577,9 >>在塔顶拾取龙雕
step
#completewith next
+使用你的龙骑坐骑飞向被召唤的驱逐舰
step
.goto 2024,70.12,33.26
.accept 69895 >>接任务: |cRXP_WARN_召唤的毁灭者|r
.complete 69895,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Khadgar
.turnin 65887 >>Turn in To the Mountain
.accept 65943 >>接任务: |cRXP_WARN_拜荒攻势|r
.goto 2024,70.01,35.23
.accept 65944 >>接任务: |cRXP_WARN_熔岩爆裂|r
.accept 66647 >>接任务: |cRXP_WARN_元素不器|r
.goto 2024,70.02,35.34
.target Kalecgos
.target Archmage Khadgar
step
#sticky
#label TheAzureSpanPrimalOffensive
>>在你的小地图上显示的区域搜索暴徒
.goto 2024,72.44,37.27,0,0
.complete 65943,1 
step
#title Lava Orb 1
.goto 2024,71.23,35.69,30,0
.goto 2024,72.26,37.26
.complete 65944,1,1 
step
>>杀死|cff00ecffRuvin Stonegrinder|r。掠夺她获得元素焦点
.goto 2024,72.51,38.11,30,0
.goto 2024,72.90,38.71
.complete 66647,1 
step
#title Lava Orb 2
.goto 2024,73.11,37.77
.complete 65944,1,2 
step
#title Lava Orb 3
.goto 2024,73.77,38.31
.complete 65944,1 
step
#requires TheAzureSpanPrimalOffensive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar and Kalecgos
.goto 2024,74.46,37.84
.turnin 66647 >>Turn in Elemental Unfocus
.turnin 65944 >>Turn in Lava Burst
.turnin 65943 >>Turn in Primal Offensive
.accept 65958 >>接任务: |cRXP_WARN_原始力量|r
.accept 65977 >>接任务: |cRXP_WARN_肯瑞托救援行动|r
.target Kalecgos
.target Archmage Khadgar
step
#completewith TheAzureSpanKirinTorRecovery
>>在|cff00ecff的尸体旁边使用|T1769011:0:0|t[EElementalFocus]原始列表/元素|r
>>|cfff78300如果你独自一人，避免杀死基本惩罚者。
.use 192479
.goto 2024,75.42,37.92,0,0
.complete 65958,1 
step
#title Mage 1
.goto 2024,74.59,38.58
.complete 65977,1,1 
step
#title Mage 2
.goto 2024,75.27,37.21
.complete 65977,1,2 
step
#title Mage 3
.goto 2024,76.14,37.86
.complete 65977,1,3 
step
#title Mage 4
.goto 2024,75.63,38.37
.complete 65977,1,4 
step
#title Mage 5
.goto 2024,76.02,39.54
.complete 65977,1,5 
step
#label TheAzureSpanKirinTorRecovery
#title Mage 6
.goto 2024,76.57,38.91
.complete 65977,1 
step
>>在|cff00ecff的尸体旁边使用|T1769011:0:0|t[EElementalFocus]原始列表/元素|r
>>|cfff78300如果你独自一人，避免杀死基本惩罚者。
.use 192479
.goto 2024,75.94,37.82,20,0
.goto 2024,75.01,37.74,30,0
.goto 2024,75.49,38.32,20,0
.goto 2024,75.83,39.22,20,0
.goto 2024,75.94,37.82,20,0
.goto 2024,75.01,37.74,30,0
.goto 2024,75.49,38.32,20,0
.goto 2024,75.83,39.22,20,0
.goto 2024,75.42,37.92
.complete 65958,1 
step
#requires TheAzureSpanPrimalPower
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,76.95,39.43
.turnin 65958 >>Turn in Primal Power
.turnin 65977 >>Turn in Kirin Tor Recovery
.accept 66007 >>接任务: |cRXP_WARN_解放天空|r
.target Archmage Khadgar
step
#completewith next
.goto 2024,76.95,39.43
.cast 378814 >>使用|cffffff00[ExtraActionButton]|r
step
#completewith TheAzureSpanFreeAir
+你可以在挖掘时摧毁熔岩灯塔
step
#title Lava Beacon 1
>>使用|T538536:0:0|t数字短划线（1）向前充电
>>使用|T132331:0:0|t隐藏（2）以躲避童子军
>>你也可以在变身时使用你的拼写书中的拼写
.goto 2024,77.36,39.92
.complete 66007,1,1 
step
#title Lava Beacon 2
>>使用|T538536:0:0|t数字短划线（1）向前充电
>>使用|T132331:0:0|t隐藏（2）以躲避童子军
.goto 2024,77.34,38.28
.complete 66007,1,2 
step
#title Lava Beacon 3
>>使用|T538536:0:0|t数字短划线（1）向前充电
>>使用|T132331:0:0|t隐藏（2）以躲避童子军
.goto 2024,78.24,37.62
.complete 66007,1,3 
step
#label TheAzureSpanFreeAir
#title Lava Beacon 4
>>使用|T538536:0:0|t数字短划线（1）向前充电
>>使用|T132331:0:0|t隐藏（2）以躲避童子军
.goto 2024,78.55,39.05
.complete 66007,1 
step
#completewith next
.goto 2024,78.69,39.62,10 >>进入洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,78.38,39.98
.turnin 66007 >>Turn in Free Air
.accept 66009 >>接任务: |cRXP_WARN_瓦克索斯防御战|r
.target Kalecgos
step
#completewith next
+|cfff78300在|T459027:0|t回复火焰穿过奥术符文|r。它们给你4秒的伤害豁免。
step
>>杀死|cff00ecffKorthox|r
.goto 2024,79.27,36.33
.complete 66009,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,77.99,32.47
.turnin 66009 >>Turn in In Defense of Vakthros
.accept 70041 >>接任务: |cRXP_WARN_噬雷之龙的狂怒|r
.target Archmage Khadgar
step
>>Mount the Arcane Disc
.goto 2024,78.03,32.44
.complete 70041,1 
step
>>垃圾邮件|T135734:0:0|tArcane Blast（1）杀死主要列表
>>准备好后使用|T134155:0|tKalecgos的援助（2）
.goto 2024,78.06,32.73
.complete 70041,2 
step
>>在灰色闪电云上使用|T135739:0:0|tAzure Dispel（3）
.goto 2024,78.06,32.73
.complete 70041,3 
step
>>冷却时使用|T134155:0:0|tKalecgos的辅助（2）
>>垃圾邮件|T135734:0:0|t缓存爆炸（1）
.goto 2024,78.06,32.73
.complete 70041,4
step
#completewith next
+|cfff78300使用（6）提前卸载|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,78.22,33.34
.turnin 70041 >>Turn in The Storm-Eater's Fury
.accept 66015 >>接任务: |cRXP_WARN_蓝龙誓言石|r
.target Kalecgos
step
#title Dragon Glyph; Vakthros Range
.goto 2024,72.60,39.69
.achievement 16577,10 >>拿起龙雕文
step
#title Dragon Glyph: Lost Ruins
.goto 2024,70.57,46.27
.achievement 16577,4 >>在塔顶拾取龙雕
step
.xp 69,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Maddy Scattershot
.accept 66391 >>接任务: |cRXP_WARN_废墟里见！|r
.goto 2024,63.42,58.03
.turnin 66671 >>Turn in Path to Nowhere
.goto 2024,63.22,58.41
.target Rannan Korren
.target Maddy Scattershot
step
.pve
.xp 69,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.accept 66141 >>接任务: |cRXP_WARN_礼崩乐坏|r
.goto 2024,63.20,58.61
.target Garz
step
.isQuestComplete 66391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,65.02,58.61
.turnin 66391 >>Turn in To the Ruins!
.target Rannan Korren
step
.isQuestTurnedIn 66391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.02,58.61
.accept 66353 >>接任务: |cRXP_WARN_R.A.D.装置异常|r
.accept 66352 >>接任务: |cRXP_WARN_窥敌先机|r
.target Rannan Korren
.target Lathos Sunband
step
.isOnQuest 66352
#completewith TheAzureSpanRADAnomalies
>>杀死|cff00ecffTarasek战士|r和|cff0ecffArcane操纵器|r。掠夺他们获得命令
.complete 66352,1 
step
.isOnQuest 66353
#title Record 1/3
>>在异常旁使用|T134519:0|t[R.A.D]
.use 191909
.goto 2024,65.52,58.82
.complete 66353,1,1 
step
.isOnQuest 66353
#title Record 2/3
>>在异常旁使用|T134519:0|t[R.A.D]
.use 191909
.goto 2024,66.31,59.37
.complete 66353,1,2 
step
.isOnQuest 66353
#label TheAzureSpanRADAnomalies
#title Record 3/3
>>在异常旁使用|T134519:0|t[R.A.D]
.use 191909
.goto 2024,66.39,59.72
.complete 66353,1 
step
.isOnQuest 66352
>>杀死|cff00ecffTarasek战士|r和|cff0ecffArcane操纵器|r。掠夺他们获得命令
.goto 2024,65.09,59.54,20,0
.goto 2024,66.35,59.56,20,0
.goto 2024,65.54,59.28
.complete 66352,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.03,58.67
.turnin -66353 >>Turn in R.A.D. Anomalies
.turnin -66352 >>Turn in What the Enemy Knows
.target Rannan Korren
.target Lathos Sunband
step
.isQuestTurnedIn 66352
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.goto 2024,65.03,58.67
.accept 66422 >>接任务: |cRXP_WARN_[The Expedition Continues!]|r
.target Lathos Sunband
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往Dragon控制台。与Lathos Sunband交谈
.goto 2024,65.64,60.78
.turnin -66422 >>Turn in The Expedition Continues!
.target Lathos Sunband
step
.isQuestTurnedIn 66422
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往Dragon控制台。与Lathos Sunband交谈
.goto 2024,65.64,60.78
.accept 66423 >>接任务: |cRXP_WARN_担忧与证实|r
.target Lathos Sunband
step
.isOnQuest 66423
#title Clue Found 1
>>与平板电脑交互
.goto 2024,65.32,60.80
.complete 66423,1,1 
step
.isOnQuest 66423
#title Clue Found 2
>>与平板电脑交互
.goto 2024,65.86,60.55
.complete 66423,1 
step
.isQuestComplete 66423
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.turnin -66423 >>Turn in Worries and Validations
.goto 2024,65.64,60.79
.target Lathos Sunband
step
.isQuestTurnedIn 66423
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.accept 66425 >>接任务: |cRXP_WARN_奥术超载|r
.goto 2024,65.63,60.76
.target Rannan Korren
step
.isOnQuest 66425
#title Bubble Dispelled 1
>>使用|T134519:0|t[R.A.D.D.E.R]消除障碍
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.28,61.31
.complete 66425,1,1 
step
.isOnQuest 66425
#title Bubble Dispelled 2
>>使用|T134519:0|t[R.A.D.D.E.R]消除障碍
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.10,61.54
.complete 66425,1,2 
step
.isOnQuest 66425
#title Bubble Dispelled 3
>>使用|T134519:0|t[R.A.D.D.E.R]驱散二层障碍物
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.18,60.95,10,0
.goto 2024,65.00,61.24,10,0
.goto 2024,65.06,61.14
.complete 66425,1 
step
.isQuestComplete 66425
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.turnin -66425 >>Turn in Arcane Overload
.goto 2024,65.63,60.76
.target Rannan Korren
step
.isQuestTurnedIn 66425
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.accept 66426 >>接任务: |cRXP_WARN_时不我待|r
.goto 2024,65.64,60.80
.target Lathos Sunband
step
.isOnQuest 66426
#title Dragon Glyph: Ruins of Karnthar
.goto 2024,68.65,60.42
.achievement 16577,3 >>在塔顶拾取龙雕
step
.isOnQuest 66426
>>按照箭头，等待角色扮演
.goto 2024,68.46,60.50
.complete 66426,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.goto 2024,68.46,60.50
.turnin -66426 >>Turn in Running Out of Time
.target Lathos Sunband
step
.isQuestTurnedIn 66426
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.goto 2024,68.46,60.50
.accept 66427 >>接任务: |cRXP_WARN_威胁突现|r
.target Lathos Sunband
step
.isOnQuest 66427
>>杀死|cff00ecff奥术操纵器塔隆|r
.goto 2024,68.07,61.59
.complete 66427,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.turnin -66427 >>Turn in A Looming Menace
.goto 2024,68.46,60.50
.target Lathos Sunband
step
.isQuestTurnedIn 66427
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.accept 66428 >>接任务: |cRXP_WARN_谊所应当|r
.goto 2024,68.48,60.43
.target Rannan Korren
step
.isOnQuest 66428
>>使用控制台旁边的|T134519:0|t[R.A.D.D.E.R.E.R]
.use 192475
.goto 2024,68.61,60.39
.complete 66428,1 
step
.isOnQuest 66428
>>Wait for the roleplay
.goto 2024,68.50,60.47
.complete 66428,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,68.50,60.47
.turnin -66428 >>Turn in Friendship For Granted
.target Rannan Korren
step
.isQuestTurnedIn 66428
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,68.50,60.47
.accept 66429 >>接任务: |cRXP_WARN_铭记于心|r
.target Rannan Korren
step
.pve
.xp 69,1
.isOnQuest 66141
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Narn
.goto 2024,65.62,54.84
.skipgossip
.complete 66141,1 
.target Narn
step
.pve
.isQuestComplete 66141
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.goto 2024,63.51,52.97
.turnin 66141 >>Turn in Broken Traditions, Broken Bodies
.target Garz
step
.pve
.xp 69,1
.isQuestTurnedIn 66141
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.goto 2024,63.51,52.97
.accept 66150 >>接任务: |cRXP_WARN_营救拉兹达|r
.accept 66149 >>接任务: |cRXP_WARN_元素影响|r
.accept 66148 >>接任务: |cRXP_WARN_熊弟阋墙|r
.target Garz
step
.pve
.isOnQuest 66148
#completewith next
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.complete 66148,1 
step
.pve
.isOnQuest 66149
#title Destroy Totem 1
>>Destroy the Totem
.goto 2024,62.74,51.82
.complete 66149,1,1 
step
.pve
.isOnQuest 66148
#title Kill Furbolgs + Elementals
#completewith next
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.goto 2024,62.71,51.28,15,0
.complete 66148,1 
step
.pve
.isOnQuest 66149
#title Destroy Totem 2
>>Destroy the Totem
.goto 2024,62.29,51.28
.complete 66149,1,2 
step
.pve
.isOnQuest 66148
#title Kill Furbolgs + Elementals
#completewith next
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.goto 2024,62.21,50.66,15,0
.complete 66148,1 
step
.pve
.isOnQuest 66149
#title Destroy Totem 3
>>Destroy the Totem
.goto 2024,62.02,51.75
.complete 66149,1 
step
.pve
.isOnQuest 66150
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
*Defeat the incoming waves of mobs
.goto 2024,60.94,51.46
.skipgossip
.complete 66150,1 
.complete 66150,2 
.target Radza Thunderclaw
step
.pve
.isOnQuest 66148
#title Kill Furbolgs + Elementals
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.goto 2024,61.51,52.07,15,0
.goto 2024,61.47,52.93,15,0
.goto 2024,61.58,54.22,25,0
.goto 2024,61.51,52.07
.complete 66148,1 
step
.pve
.xp 69,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Narn and Radza Thunderclaw (you may have to wait for him)
.goto 2024,60.92,50.54
.turnin -66148 >>Turn in Former Furbolg Family
.turnin -66149 >>Turn in Elemental Influence
.turnin -66150 >>Turn in Rescuing Radza
.target Radza Thunderclaw
.target Narn
step
.pve
.xp 69,1
.isQuestTurnedIn 66150
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
.goto 2024,60.92,50.54
.accept 66151 >>接任务: |cRXP_WARN_铁石心肠|r
.target Radza Thunderclaw
step
.pve
.xp 69,1
.isOnQuest 66151
>>杀死|cff00ecffStoneheart|r。在他的能力“地球洪流”期间远离他
*You can skip this if you deal low damage
.goto 2024,60.47,49.43
.complete 66151,1 
step
.pve
.isQuestComplete 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
.turnin 66151 >>Turn in His Stone Heart
.goto 2024,60.91,50.50
.target Radza Thunderclaw
step
.pve
.isQuestTurnedIn 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.accept 66152 >>接任务: |cRXP_WARN_敢问家在何方|r
.goto 2024,60.99,50.56
.target Garz
step
.pve
.isOnQuest 66152
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t无处返回营地。与Garz交谈
.goto 2024,63.20,58.67
.turnin 66152 >>Turn in Nowhere to Go
.target Garz
step
.isQuestComplete 66429
#completewith next
.goto 2024,63.45,58.66
.fp >>无处可去的营地飞行路线
step
.isQuestComplete 66429
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,63.68,58.91
.turnin 66429 >>Turn in I Will Remember
.target Rannan Korren
step
#completewith next
.hs >>糖果旅馆之心
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sindragosa
.goto 2024,39.48,63.06
.skipgossip 186188,1
.complete 66015,1 
.target Sindragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sindragosa and Kalecgos
.turnin 66015 >>Turn in The Blue Dragon Oathstone
.goto 2024,39.48,63.06
.accept 66244 >>Accept To Valdrakken
.goto 2024,39.47,63.05
.target Sindragosa
.target Kalecgos
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup Threads of Fate 60-70
#name C3Azure Span ToF
#displayname Chapter 3 - The Azure Span ToF
#next D4Thaldraszus ToF
step
#completewith TheAzureSpanTotheAzureSpan
+欢迎使用RestedXP的Azure跨度指南。
step
.goto 2023,71.65,80.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Masud the Wise
.accept 65686 >>接任务: |cRXP_WARN_前往碧蓝林海|r
.target Masud the Wise
step
#title Dragon Glyph: Forkriver Crossing
.goto 2023,70.06,86.98
.achievement 16577,11 >>拿起空中的龙雕
step << !Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones
.goto 2024,41.44,35.62
.turnin 65686 >>Turn in To the Azure Span
.accept 66228 >>接任务: |cRXP_WARN_安东尼达斯营地|r
.target Glania of the Blessed Ones
step << Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones and Scalecommander Emberthal
.turnin 65686 >>Turn in To the Azure Span
.goto 2024,41.44,35.62
.accept 70746 >>接任务: |cRXP_WARN_蓝色阴霾|r
.target Glania of the Blessed Ones
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.23,35.88
.accept 67174 >>接任务: |cRXP_WARN_奥术检测|r
.target Miva Star-Eye
step
>>与未发放的烧瓶互动
.goto 2024,41.39,35.70
.complete 67174,1 
step
>>与Dusty茶壶互动
.goto 2024,41.41,35.84
.complete 67174,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.accept 67177 >>接任务: |cRXP_WARN_通缉：吞食者|r
.target Shala
step
>>与Toolky的玩具船互动
.goto 2024,41.23,36.37
.complete 67174,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.22,35.89
.turnin 67174 >>Turn in Arcane Detection
.accept 67175 >>接任务: |cRXP_WARN_玩具爆炸船拆解指南|r
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Julk
.goto 2024,41.21,35.86
.skipgossip
.timer 15,Roleplay Duration
.complete 67175,1 
.target Julk
step
>>在短暂的角色扮演后与魔杖互动
.goto 2024,41.19,35.91
.complete 67175,2 
step
>>Click on the toy boat
.goto 2024,40.59,36.55
.complete 67175,3 
step
>>杀死|cff00ecffGorger|r。抢夺他的角
.goto 2024,39.66,37.24
.complete 67177,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.21,35.87
.turnin 67175 >>Turn in How To Stop An Exploding Toy Boat
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.turnin 67177 >>Turn in WANTED: Gorger
.target Shala
step << Dracthyr
>>跟随箭头到达Emberthal

.goto 2024,45.00,41.00
.complete 70746,1 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
.goto 2024,45.00,41.00
.turnin 70746 >>Turn in Shades of Blue
.target Scalecommander Emberthal
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Telash Greywing

.goto 2024,45.65,41.20
.accept 70747 >>接任务: |cRXP_WARN_碧蓝巫师|r
.target Telash Greywing
step << Dracthyr
#completwith next
+您可以跳过下一个过场（Esc->是）
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.skipgossip 192091,1
.complete 70747,1 
.target Archmage Khadgar
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.turnin 70747 >>Turn in The Azure Wizard
.target Archmage Khadgar
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+使用你的龙骑坐骑飞往Noriko
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+您可以跳过下一个过场（Esc->是）
step << !Dracthyr
#label TheAzureSpanCampAntonidas
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 66228 >>Turn in Camp Antonidas
.target Noriko the All-Remembering
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.accept 67033 >>接任务: |cRXP_WARN_组装工事|r
.accept 67035 >>接任务: |cRXP_WARN_保存知识|r
step
#completewith next
.goto 2024,46.71,39.57
.fp >>获取安东尼达斯营飞行路线
step
#title |T1499566:0:0|tTome 1 + |T1041232:0:0|tDevice 1
>>捡起地上的刀和装置
.goto 2024,46.13,39.27
.complete 67035,1,1 
.complete 67033,1,1 
step
#title |T1499566:0:0|tTome 2
>>Pick up the tome
.goto 2024,45.73,39.29
.complete 67035,1,2 
step
#title |T1499566:0:0|tTome 3
>>Pick up the tome
.goto 2024,46.03,39.82
.complete 67035,1,3 
step
#title |T1041232:0:0|tDevice 2
.goto 2024,45.86,40.18
.complete 67033,1,2 
step
#title |T1499566:0:0|tTome 4 + |T1041232:0:0|tDevice 3
>>捡起地上的刀和装置
.goto 2024,46.07,40.86
.complete 67035,1 
.complete 67033,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.turnin 67033 >>Turn in Assemble the Defenses
.turnin 67035 >>Turn in Preservation of Knowledge
.accept 67036 >>接任务: |cRXP_WARN_肯瑞托之怒|r
step
#completewith next
.goto 2024,46.29,38.86
.vehicle 192331 >>进入Arcane Blaster
step
>>使用|T429383:0:0|tArcane Blast（1）杀死飞龙|cfff78300不要手动离开奥术爆炸机|r
.goto 2024,46.29,38.86
.complete 67036,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.turnin 67036 >>Turn in Wrath of the Kirin Tor
.goto 2024,46.64,40.16
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待卡德加大法师并与他交谈
.accept 65688 >>接任务: |cRXP_WARN_与卡雷苟斯会合|r
.goto 2024,46.63,40.19
step
#completewith next
.goto 2024,45.99,38.79
.gossipoption 55328 >>与供应门户互动
.timer 8,Roleplay Duration
step
>>等一下袋子，把它捡起来
.goto 2024,45.95,38.90
.complete 65688,1 
.complete 65688,2 
step
>>与通缉令小册子互动
.goto 2024,46.13,39.61
.accept 66488 >>接任务: |cRXP_WARN_通缉：弗里基鲁斯|r
step
#completewith next
+使用你的龙骑坐骑飞往卡莱戈斯
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,40.92,55.00
.turnin 65688 >>Turn in Meeting Kalecgos
.accept 65689 >>接任务: |cRXP_WARN_卡雷众影|r
step
#completewith next
>>从航路点位置与水晶塔互动
*Skip this step if you want to fly up
.goto 2024,40.99,55.06
.complete 65689,1 
step
.goto 2024,41.17,57.81
.complete 65689,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to both Mirror Images of Kalecgos
.goto 2024,40.74,59.04
.turnin 65689 >>Turn in The Many Images of Kalecgos
.accept 65702 >>接任务: |cRXP_WARN_驱役成狂|r
.accept 65709 >>接任务: |cRXP_WARN_奥术修补|r
step
>>使用|T133622:0:0|t[帮助物品袋]或使用|cffffff00[ExtraActionButton]|t
.goto 2024,40.72,59.10
.use 191953
.complete 65709,1 
step
#completewith TheAzureSpanArcanePruning1
>>杀死该区域的|cff00ecffElements|r。为不稳定的阿卡纳掠夺它们。
.complete 65702,1 
step
#completewith next
+权杖的射程很高，所以你可以在至少30码外使用它
step
#label TheAzureSpanArcanePruning1
>>在奥术场附近使用|T1379242:0:0|t[Ley权杖]
.use 191952
.complete 65709,2 
.goto 2024,39.57,60.27
step
#completewith next
.goto 2024,38.56,59.75,30 >>Fly up
step
.accept 69864 >>接任务: |cRXP_WARN_被遗忘的造物|r
.goto 2024,38.56,59.75
.complete 69864,1 
.goto 2024,38.18,59.03
step
#completewith TheAzureSpanArcanePruning2
>>杀死该区域的|cff00ecffElements|r。为不稳定的阿卡纳掠夺它们。
.complete 65702,1 
step
#completewith next
+权杖的射程很高，所以你可以在至少30码外使用它
step
#label TheAzureSpanArcanePruning2
>>在奥术场附近使用|T1379242:0:0|t[Ley权杖]
.use 191952
.complete 65709,3 
.goto 2024,41.18,62.26
step
>>杀死并释放该区域的|cff00ecffElements|r
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,40.42,60.51
.complete 65702,1 
step
.goto 2024,40.69,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t谈谈卡莱戈斯的镜像
.turnin 65709 >>Turn in Arcane Pruning
.turnin 65702 >>Turn in Driven Mad
.accept 65852 >>接任务: |cRXP_WARN_直达尖峰|r
step
>>使用奥术场旁边的|T133622:0:0|t[辅助物品袋]
.goto 2024,39.57,60.25
.use 191978
.complete 65852,1 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2024,39.57,60.25
.complete 65852,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.96,61.46
.turnin 65852 >>Turn in Straight to the Top
.accept 65751 >>接任务: |cRXP_WARN_平台整修|r
.accept 65752 >>接任务: |cRXP_WARN_奥术纷扰|r
step
#completewith next
+您也可以单击Y形三通以使用该项目
step
#sticky
#label TheAzureSpanArcaneAnnoyances
>>使用|T1373906:0:0|t[奥术钩]向下拉动Y形臂
.use 194891
.goto 2024,39.91,61.66,0,0
.complete 65752,1 
step
#title Energy 1
>>Destroy the energy
.goto 2024,40.23,62.03
.complete 65751,1,1 
step
#title Energy 2
>>Destroy the energy
.goto 2024,39.58,62.72
.complete 65751,1,2 
step
#title Energy 3
>>Destroy the energy
.goto 2024,39.51,61.52
.complete 65751,1,3 
step
#requires TheAzureSpanArcaneAnnoyances
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.97,61.46
.turnin 65751 >>Turn in Platform Adjustments
.turnin 65752 >>Turn in Arcane Annoyances
.accept 65854 >>接任务: |cRXP_WARN_收复誓言石|r
step
>>飞下来和卡莱戈斯谈谈
.goto 2024,39.44,63.18
.skipgossip
.complete 65854,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sindragosa
.goto 2024,39.48,63.07
.turnin 65854 >>Turn in Reclaiming the Oathstone
.accept 65855 >>接任务: |cRXP_WARN_援助碧蓝林海|r
step
#completewith next
.goto 2024,37.84,62.00,15 >>进入客栈
step
#completewith TheAzureSpanAidingAzureSpan
.goto 2024,37.36,62.43
.home >>将你的炉石设置为魔法饼干旅馆
step
#completewith next
.goto 2024,37.07,60.82
.fp >>获取Azure档案飞行路径
step
#label TheAzureSpanAidingAzureSpan
.goto 2024,37.07,60.82
.complete 65855,1 
step
#completewith next
+使用飞行大师飞往安东尼达斯营或使用你的龙骑坐骑（更快）
step
#label TheAzureSpanAidingAzureSpan2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 65855 >>Turn in Aiding Azure Span
.accept 66699 >>接任务: |cRXP_WARN_当地包打听|r
step
>>杀死|cff00ecffFrigellus|r
.goto 2024,47.95,38.09
.complete 66488,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Korrikunit
.goto 2024,46.76,38.59
.skipgossip
.complete 66699,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jokomuupat
.goto 2024,46.34,38.15
.skipgossip
.complete 66699,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Custodian Cynegos
.goto 2024,46.01,38.31
.turnin 66488 >>Turn in WANTED: Frigellus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arch Enchanter Celeste
.goto 2024,45.99,38.41
.accept 66489 >>接任务: |cRXP_WARN_布置防线|r
step
>>在瞄准|cff00ff00Azure Defender |r时使用|T135477:0|t[拱门教官的魔杖]
.use 192471
.goto 2024,46.17,38.98
.complete 66489,1 
step
.goto 2024,46.00,38.42
>>返回拱门魔法师塞莱斯特
.turnin 66489 >>Turn in Setting the Defense
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk
.goto 2024,45.73,38.84
.skipgossip 190225,1
.complete 66699,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk
.goto 2024,45.73,38.84
.turnin 66699 >>Turn in Ask the Locals
.accept 65864 >>接任务: |cRXP_WARN_追赶车队|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caddy Scattershot
.goto 2024,45.69,39.79
.accept 66671 >>接任务: |cRXP_WARN_偏僻之途|r
step
#completewith next
.goto 2024,35.25,36.98,20 >>使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,35.25,36.98
.skipgossip 186224,1
.timer 19,Roleplay Duration
.complete 65864,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Elder Poa
.turnin 65864 >>Turn in Catch the Caravan
.goto 2024,35.25,36.97
.accept 65868 >>接任务: |cRXP_WARN_胡嚼蛮缠|r
.goto 2024,35.36,36.94
.accept 65867 >>接任务: |cRXP_WARN_大树丘豺嚎|r
.accept 65866 >>接任务: |cRXP_WARN_破陷行动|r
.goto 2024,35.28,36.94
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>杀死该区域的|cff00ecffGnolls|r。掠夺他们作为祭品
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>与地面陷阱互动
.complete 65866,1 
step
>>杀死|cff00ecffHyenamaster Durgun|r
.goto 2024,35.66,34.73
.complete 65867,1 
step
#completewith next
.goto 2024,34.95,32.59,10 >>进入洞穴
step
>>杀死|cff00ecff陷阱层Kerwal|r
.goto 2024,34.99,32.18
.complete 65867,2 
step
#completewith next
.goto 2024,34.95,32.59,10 >>离开洞穴
step
#label TheAzureSpanHowlingtheBigTreeHills
>>杀死|cff00ecffBakra the Bully|r
.goto 2024,33.96,33.18
.complete 65867,3 
step
#completewith next
>>与地面陷阱互动
.goto 2024,35.34,33.07,0,0
.complete 65866,1 
step
>>杀死该区域的|cff00ecffGnolls|r。掠夺他们作为祭品
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
>>与地面陷阱互动
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.complete 65866,1 
step
#requires TheAzureSpanThoseArentForChewing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.goto 2024,34.26,31.30
.turnin 65868 >>Turn in Those Aren't for Chewing
.turnin 65867 >>Turn in Howling in the Big Tree Hills
.turnin 65866 >>Turn in Snap the Traps
.timer 17,Roleplay Duration
step
#completewith next
+等待简短的角色扮演
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.07
.accept 65871 >>接任务: |cRXP_WARN_豺狼当道|r
.accept 65872 >>接任务: |cRXP_WARN_豺狼人的恶意|r
.accept 65873 >>接任务: |cRXP_WARN_影足头豺|r
.accept 65870 >>接任务: |cRXP_WARN_补给！|r
step
#completewith next
.goto 2024,33.95,30.64,12 >>进入洞穴
step
#completewith TheAzureSpanLeaderoftheShadepawPack
>>在洞穴中杀死|cff00ecffGnolls|r
.goto 2132,45.88,50.78,0,0
.complete 65872,1 
step
>>Pick up the basket
.goto 2132,36.31,93.16
.complete 65870,3 
step
>>Pick up the barrel
.goto 2132,29.17,75.42
.complete 65870,1 
step
#title Tuskarr 1
>>Open the cage
.goto 2132,30.36,59.53
.complete 65871,1,1 
step
>>调查Norukks的尸体
.goto 2132,41.42,63.83
.complete 65871,2 
step
#title Tuskarr 2
>>Open the cage
.goto 2132,46.26,40.92
.complete 65871,1,2 
step
>>Pick up the barrel
.goto 2132,51.40,36.86
.complete 65870,2 
step
#title Tuskarr 3
>>Open the cage
.goto 2132,38.10,32.11
.complete 65871,1 
step
#label TheAzureSpanLeaderoftheShadepawPack
>>杀死胎儿卡普。掠夺他作为图腾。
.goto 2132,42.27,14.47
.complete 65873,1 
step
>>在洞穴中杀死|cff00ecffGnolls|r
.goto 2132,37.06,36.14,20,0
.goto 2132,44.64,36.89,20,0
.goto 2132,48.99,26.78,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,64.62,21.19,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,43.73,42.03,20,0
#loop
.line 2132,36.65,34.61,28.82,48.53,29.37,60.34,38.45,52.88,47.14,55.14,46.56,36.26,61.09,39.17,65.72,24.58
.goto 2132,36.65,34.61,20,0
.goto 2132,28.82,48.53,20,0
.goto 2132,29.37,60.34,20,0
.goto 2132,38.45,52.88,20,0
.goto 2132,47.14,55.14,20,0
.goto 2132,46.56,36.26,20,0
.goto 2132,61.09,39.17,20,0
.goto 2132,65.72,24.58,20,0
.complete 65872,1 
step
#completewith next
.goto 2024,34.92,30.03,10 >>离开洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.06
.turnin 65870 >>Turn in Supplies!
.turnin 65872 >>Turn in Ill Gnolls with Ill Intent
.turnin 65873 >>Turn in Leader of the Shadepaw Pack
.turnin 65871 >>Turn in Gnoll Way Out
.accept 66239 >>接任务: |cRXP_WARN_腐朽蔓延|r
step
#completewith next
+使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,28.69,34.82
.turnin 66239 >>Turn in Spreading Decay
.accept 65869 >>接任务: |cRXP_WARN_伏击再现|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akiun
.goto 2024,28.68,34.75
.skipgossip
.complete 65869,1 
step
#title Body 1
>>安装时与身体互动
.goto 2024,29.25,33.57
.skipgossip
.complete 65869,2,1 
step
#title Body 2
>>安装时与身体互动
.goto 2024,29.17,32.56
.skipgossip
.complete 65869,2,2 
step
#title Body 3
>>安装时与身体互动
.goto 2024,28.20,31.86
.skipgossip
.complete 65869,2,3 
step
#title Body 4
>>安装时与身体互动
.goto 2024,27.97,32.83
.skipgossip
.complete 65869,2 
step
.goto 2024,28.78,34.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.turnin 65869 >>Turn in Another Ambush
.accept 66026 >>接任务: |cRXP_WARN_需要紧急措施|r
step
.goto 2024,28.47,35.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Unkimi
.accept 71233 >>接任务: |cRXP_WARN_飞瀑直下|r
step
.goto 2024,22.72,41.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.accept 66262 >>接任务: |cRXP_WARN_废水清洁|r
step
>>点击腐烂的桩并杀死正在繁殖的Muck Elemental
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
#loop
.line 2024,22.45,41.96,22.04,41.66,22.27,41.20,22.83,41.18,23.22,41.16,23.60,41.40,22.81,42.15
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
.complete 66262,1 
step
.goto 2024,22.72,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66262 >>Turn in Waste Water Cleanup
.accept 66263 >>接任务: |cRXP_WARN_精准除害|r
.accept 66264 >>接任务: |cRXP_WARN_嚣张都靠武器|r
step
#completewith next
>>杀死|cff00ecffGnawbone武器|r。为武器而掠夺它们
.complete 66264,1 
step
#completewith next
.goto 2024,24.40,39.56,20 >>进入洞穴
step
#label TheAzureSpanAPrecisionApproach
>>杀死|cff00ecffFlayfist|r
.goto 2024,24.80,39.03
.complete 66263,1 
step
>>杀死|cff00ecffGnawbone武器|r。为武器而掠夺它们
.goto 2024,24.40,39.56,25,0
.goto 2024,23.33,39.87,25,0
.goto 2024,22.47,39.95,25,0
.goto 2024,22.09,40.67,25,0
.goto 2024,23.85,40.50,35,0
#loop
.line 2024,24.40,39.56,23.33,39.87,22.47,39.95,22.09,40.67,23.85,40.50
.goto 2024,24.40,39.56,35,0
.goto 2024,23.33,39.87,35,0
.goto 2024,22.47,39.95,35,0
.goto 2024,22.09,40.67,35,0
.goto 2024,23.85,40.50,35,0
.complete 66264,1 
step
.goto 2024,22.74,41.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66263 >>Turn in A Precision Approach
.turnin 66264 >>Turn in Disarmed and Docile
.accept 66265 >>接任务: |cRXP_WARN_下一个|r
.accept 66266 >>接任务: |cRXP_WARN_污秽杂种|r
step
.goto 2024,23.48,41.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Illusory Mage
.accept 66267 >>接任务: |cRXP_WARN_仁法会|r
step
#completewith TheAzureSpanMETA
>>杀死侧面的|cff00ecffMongrels|r和|cff0ecffMatriarchs|r
.complete 66266,2 
.complete 66266,1 
step
>>杀死小洞穴内的|cff00ecffCracktooth|r
.goto 2024,24.20,41.81
.complete 66265,1 
step
#label TheAzureSpanMETA
>>杀死该区域的|cff00ecffGnolls|r。偷他们的钥匙。你也可以从帐篷里取钥匙
.goto 2024,23.50,42.43,25,0
.goto 2024,23.73,43.25,25,0
.goto 2024,24.32,42.91,25,0
.goto 2024,23.94,42.02,25,0
#loop
.line 2024,23.50,42.43,23.73,43.25,24.32,42.91,23.94,42.02
.goto 2024,23.50,42.43,30,0
.goto 2024,23.73,43.25,30,0
.goto 2024,24.32,42.91,30,0
.goto 2024,23.94,42.02,30,0
.collect 191736,6,66267,0x1,-1
.complete 66267,1 
step
>>完成击杀|cff00ecffMongrels|r和|cff0ecffMatriarchs|r
.goto 2024,23.50,42.43,25,0
.goto 2024,23.73,43.25,25,0
.goto 2024,24.32,42.91,25,0
.goto 2024,23.94,42.02,25,0
#loop
.line 2024,23.50,42.43,23.73,43.25,24.32,42.91,23.94,42.02
.goto 2024,23.50,42.43,30,0
.goto 2024,23.73,43.25,30,0
.goto 2024,24.32,42.91,30,0
.goto 2024,23.94,42.02,30,0
.complete 66266,2 
.complete 66266,1 
step
.goto 2024,22.70,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66266 >>Turn in Filthy Mongrels
.turnin 66265 >>Turn in Who's Next?
.turnin 66267 >>Turn in M.E.T.A.
.accept 66268 >>接任务: |cRXP_WARN_失不过三|r
.accept 66269 >>接任务: |cRXP_WARN_除恶务尽|r
step
#completewith TheAzureSpanThirdTrystheCharm
>>杀死|cff00ecffStormfang元素主义者|r
.complete 66269,1 
step
#completewith next
.goto 2024,22.16,43.51,10 >>进入洞穴
step
#label TheAzureSpanThirdTrystheCharm
>>杀死|cff00ecff血爪|r
.goto 2024,22.27,43.20
.complete 66268,1 
step
#completewith TheAzureSpanThirdTrystheCharm
>>杀死|cff00ecffStormfang元素主义者|r
.goto 2024,22.27,42.50,25,0
.goto 2024,23.17,42.67,25,0
.goto 2024,23.32,43.28,25,0
.goto 2024,23.22,44.28,25,0
.goto 2024,22.52,43.54,25,0
#loop
.line 2024,22.27,42.50,23.17,42.67,23.32,43.28,23.22,44.28,22.52,43.54
.goto 2024,22.27,42.50,30,0
.goto 2024,23.17,42.67,30,0
.goto 2024,23.32,43.28,30,0
.goto 2024,23.22,44.28,30,0
.goto 2024,22.52,43.54,30,0
.complete 66269,1 
step
.goto 2024,22.74,41.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66269 >>Turn in Just To Be Sure
.turnin 66268 >>Turn in Third Try's the Charm
step
>>杀死|cff00ecffCascade|r
.goto 2024,23.33,33.60
.accept 72358 >>接任务: |cRXP_WARN_涌流|r
.complete 72358,1 
step
#completewith next
+使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,20.59,35.67
.turnin 66026 >>Turn in Urgent Action Required
.timer 24,Roleplay Duration
step
.goto 2024,18.73,24.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 71233 >>Turn in Falling Water
.accept 66837 >>接任务: |cRXP_WARN_饥一顿|r
.accept 66838 >>接任务: |cRXP_WARN_高处不胜寒|r
step
.goto 2024,19.04,23.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.accept 66844 >>接任务: |cRXP_WARN_巨狐修卡利|r
step
#completewith next
.goto 2024,19.16,23.77
.fp >>获取三瀑布了望飞行路线
step
.goto 2024,18.98,23.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Modurun Sixtoes
.accept 66839 >>接任务: |cRXP_WARN_酿酒时间！|r
step
#completewith next
>>杀死该区域的|cff00ecffbears|r。掠夺他们的毛皮
.complete 66838,1 
step
>>专注于拾取龙箔和血浆果
.goto 2024,20.46,25.93,25,0
.goto 2024,21.16,25.65,25,0
.goto 2024,21.70,25.54,25,0
.goto 2024,22.23,26.04,25,0
.goto 2024,22.76,26.05,25,0
.goto 2024,22.87,26.70,25,0
.goto 2024,23.23,26.82,25,0
.goto 2024,22.42,27.73,25,0
.goto 2024,21.91,27.83,25,0
.goto 2024,20.85,27.94,25,0
#loop
.line 2024,20.46,25.93,21.16,25.65,21.70,25.54,22.23,26.04,22.76,26.05,22.87,26.70,23.23,26.82,22.42,27.73,21.91,27.83,20.85,27.94
.goto 2024,20.46,25.93,30,0
.goto 2024,21.16,25.65,30,0
.goto 2024,21.70,25.54,30,0
.goto 2024,22.23,26.04,30,0
.goto 2024,22.76,26.05,30,0
.goto 2024,22.87,26.70,30,0
.goto 2024,23.23,26.82,30,0
.goto 2024,22.42,27.73,30,0
.goto 2024,21.91,27.83,30,0
.goto 2024,20.85,27.94,30,0
.complete 66839,1 
step
>>杀死该区域的|cff00ecffbears|r。掠夺他们的毛皮
.goto 2024,20.85,27.94,25,0
.goto 2024,21.91,27.83,25,0
#loop
.line 2024,20.46,25.93,21.16,25.65,21.70,25.54,22.23,26.04,22.76,26.05,22.87,26.70,23.23,26.82,22.42,27.73,21.91,27.83,20.85,27.94
.goto 2024,20.46,25.93,30,0
.goto 2024,21.16,25.65,30,0
.goto 2024,21.70,25.54,30,0
.goto 2024,22.23,26.04,30,0
.goto 2024,22.76,26.05,30,0
.goto 2024,22.87,26.70,30,0
.goto 2024,23.23,26.82,30,0
.goto 2024,22.42,27.73,30,0
.goto 2024,21.91,27.83,30,0
.goto 2024,20.85,27.94,30,0
.complete 66838,1 
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.accept 66843 >>接任务: |cRXP_WARN_无路克走|r
step
#completewith next
>>杀死|cff00ecffVorquins|r和|cff0ecffBruffalons|r。掠夺他们的侧翼和肉
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.complete 66837,2 
.complete 66837,1 
step
>>在洞穴内杀死|cff00ecffGloomfur Sasquatch|r
.goto 2024,16.01,27.25
.complete 66843,1 
step
>>杀死|cff00ecffVorquins|r和|cff0ecffBruffalons|r。掠夺他们的侧翼和肉
#loop
.line 2024,18.30,26.71,17.52,26.92,16.95,27.55,16.13,27.81,15.98,26.06,17.39,25.96
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.goto 2024,15.98,26.06,30,0
.goto 2024,17.39,25.96,30,0
.complete 66837,2 
.complete 66837,1 
step
>>杀死|cff00ecffSky Vixen Shokhari|r
.goto 2024,13.27,26.50
.complete 66844,1 
step
.goto 2024,18.75,24.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 66837 >>Turn in Nothing for Breakfast
.turnin 66838 >>Turn in It's Cold Up Here
step
.goto 2024,19.03,23.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.turnin 66844 >>Turn in The Great Shokhari
step
.goto 2024,18.98,23.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Modurun Sixtoes
.turnin 66839 >>Turn in It's Brew Time!
step
.goto 2024,18.54,23.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Manny Read
.accept 66840 >>接任务: |cRXP_WARN_[Water Safety]|r
step
#title Sample collected 1/3
>>在航路点位置使用|T134864:0|t[试水烧瓶]
.use 193569
.goto 2024,19.38,23.95
.complete 66840,1,1 
step
.goto 2024,19.16,24.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gannar Fullpack
.accept 66841 >>接任务: |cRXP_WARN_往昔的碎片|r
step
#title Sample collected 2/3
>>在航路点位置使用|T134864:0|t[试水烧瓶]
.use 193569
.goto 2024,20.01,24.18
.complete 66840,1,2 
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.turnin 66843 >>Turn in Out of Lukh
step
>>降落在岩石上，捡起古代文物
.goto 2024,17.61,28.23
.complete 66841,1 
step
#title Sample collected 3/3
>>在航路点位置使用|T134864:0|t[试水烧瓶]
.use 193569
.goto 2024,17.30,23.20
.complete 66840,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Manny Read and Thanessa Silverbloom
.turnin 66840 >>Turn in Water Safety
.goto 2024,18.54,23.67
.turnin 66841 >>Turn in A Shard of the Past
.goto 2024,18.65,23.67
step
.goto 2024,18.74,24.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guo-Hee Calmwater
.accept 66845 >>接任务: |cRXP_WARN_[Legendary Foil]|r
step
>>击败神秘幻影
.goto 2024,17.26,26.21
.complete 66845,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t郭与神秘幻影对话
.turnin 66845 >>Turn in Legendary Foil
.goto 2024,18.74,24.42
.accept 66846 >>接任务: |cRXP_WARN_[The Heart of the Deck]|r
.goto 2024,18.77,24.43
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Mysterious Apparition and wait for the roleplay
.goto 2024,18.77,24.43
.skipgossip 191741,1
.timer 35,Roleplay Duration
.complete 66846,1 
step
.goto 2024,18.77,24.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mysterious Apparition
.turnin 66846 >>Turn in The Heart of the Deck
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos after a short roleplay
.goto 2024,20.53,35.69
.accept 65838 >>接任务: |cRXP_WARN_突破蕨皮|r
step
#completewith TheAzureSpanLeyLitter
>>杀死|cff00ecffBrackenhides|r并摧毁他们的图腾（奖励目标）
.complete 65841,1 
step
>>与腐烂的根相互作用
.goto 2024,18.89,36.99
.skipgossip
.complete 65838,2 
step
>>与腐烂的根相互作用
.goto 2024,18.38,34.74
.skipgossip
.complete 65838,1 
step
>>与腐烂的根相互作用
.goto 2024,17.59,36.99
.skipgossip
.complete 65838,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.goto 2024,16.75,37.26
.turnin 65838 >>Turn in Breaching the Brackenhide
.accept 65846 >>接任务: |cRXP_WARN_魔网零落|r
.accept 65844 >>接任务: |cRXP_WARN_割除腐溃|r
.accept 65845 >>接任务: |cRXP_WARN_陨落者的回响|r
step
#completewith TheAzureSpanLeyLitter
>>|cfff78300小心叛国者，因为他们很少见|r
.goto 2024,17.69,37.74,0,0
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#completewith TheAzureSpanEchoesoftheFallen
.complete 65846,1 
step
#title Spirit 1
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]
.use 191928
.goto 2024,17.47,37.07
.complete 65845,1,1 
step
#title Spirit 2
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]
.use 191928
.goto 2024,18.52,37.26
.complete 65845,1,2 
step
#title Spirit 3
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]
.use 191928
.goto 2024,18.13,37.67
.complete 65845,1,3 
step
#title Spirit 4
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]
.use 191928
.goto 2024,17.54,37.93
.complete 65845,1,4 
step
#label TheAzureSpanEchoesoftheFallen
#title Spirit 5
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]
.use 191928
.goto 2024,17.41,38.65
.complete 65845,1 
step
#label TheAzureSpanLeyLitter
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
#loop
.line 2024,17.81,38.52,18.42,38.32,18.69,36.99,17.25,36.85,17.45,38.42
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
.complete 65846,1 
step
#sticky
#label TheAzureSpanStoptheSpread
>>杀死|cff00ecffBrackenhides|r并摧毁他们的图腾
.goto 2024,18.53,35.78
.complete 65841,1 
step
>>|cfff78300地图上标出了可能的trean位置|r
.goto 2024,17.2,37.0,0
.goto 2024,17.4,37.8,0
.goto 2024,17.4,39.2,0
.goto 2024,17.6,37.2,0
.goto 2024,17.8,38.8,0
.goto 2024,18.4,38.0,0
.goto 2024,18.6,38.0,0
.goto 2024,18.6,38.6,0
.goto 2024,18.8,36.6,0
.goto 2024,17.2,37.0,0
.goto 2024,17.2,37.40,0
.goto 2024,17.6,37.40,0
.goto 2024,18.8,36.40,0
.goto 2024,17.69,37.74
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#requires TheAzureSpanStoptheSpread
.goto 2024,16.74,37.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.turnin 65846 >>Turn in Ley Litter
.turnin 65844 >>Turn in Cut Out the Rot
.turnin 65845 >>Turn in Echoes of the Fallen
.accept 65848 >>接任务: |cRXP_WARN_魔典束缚|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and wait for the roleplay
.goto 2024,16.74,37.32
.skipgossip 187873,1
.timer 21,Roleplay Duration
.complete 65848,1 
step
>>魔咒之丘
.goto 2024,16.71,37.30
.complete 65848,2 
step
>>垃圾邮件|T134917:0:0|t部分收费（1）以加快移动速度
>>使用|T135753:0:0|tArcane Blast（2）杀死|cff00ecff净化器|r
.goto 2024,16.02,38.49
.complete 65848,3,1 
step
>>垃圾邮件|T134917:0:0|t部分收费（1）以加快移动速度
>>使用|T135753:0:0|tArcane Blast（2）杀死|cff00ecff净化器|r
.goto 2024,15.64,37.42
.complete 65848,3,2
step
>>垃圾邮件|T134917:0:0|t部分收费（1）以加快移动速度
>>使用|T135753:0:0|tArcane Blast（2）杀死|cff00ecff净化器|r
.goto 2024,15.22,37.95
.complete 65848,3,3 
step
>>使用|T429383:0:0|tArcane灵光（1）杀死|cff00ecffTwisted Ancient|r
.goto 2024,15.40,37.73
.complete 65848,4 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,15.30,39.43
.turnin 65848 >>Turn in Tome-ward Bound
.accept 65847 >>接任务: |cRXP_WARN_重新排列|r
step
>>与Ley Crystal互动
.goto 2024,15.35,39.50
.complete 65847,1 
step
#title Infection 1
>>Destroy the infection
.goto 2024,15.51,39.31
.complete 65847,2,1 
step
#title Infection 2
>>Destroy the infection
.goto 2024,15.30,39.12
.complete 65847,2,2 
step
#title Infection 3
>>Destroy the infection
.goto 2024,15.07,39.52
.complete 65847,2 
step
#completewith next
.goto 2024,14.97,38.77,15 >>离开洞穴
step
#completewith next
+使用你的龙骑坐骑飞往卡莱戈斯
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Brena
.turnin 65847 >>Turn in Realignment
.goto 2024,16.11,41.40
.accept 65849 >>接任务: |cRXP_WARN_前往伊斯卡拉|r
.goto 2024,16.08,41.45
step
>>杀死最强Tuskar|r
.goto 2024,17.23,41.46
.accept 69872 >>接任务: |cRXP_WARN_瓦克里尔，最强的海象人|r
.complete 69872,1 
step
#completewith next
+使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,13.24,49.56
.turnin 65849 >>Turn in To Iskaara
.accept 66210 >>接任务: |cRXP_WARN_聚集家庭|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Roki
.goto 2024,13.14,49.26
.accept 72435 >>接任务: |cRXP_WARN_导引入门：伊斯卡拉|r
step
#completewith next
.goto 2024,12.78,49.34,8 >>进入客栈
step
#title |T134450:0:0|tOffering 1
>>拿起石雕
.goto 2024,12.49,49.45
.complete 66210,1,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.accept 66213 >>接任务: |cRXP_WARN_编造故事|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Poa
.goto 2024,12.41,49.34
.skipgossip 1
.complete 66213,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.turnin 66213 >>Turn in The Weave of a Tale
step
#completewith next
.goto 2024,12.78,49.34,8 >>Leave the inn
step
#title |T134989:0:0|tOffering 2
>>拿起装饰盾牌
.goto 2024,12.46,50.31
.complete 66210,1,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rokkutuk
.goto 2024,13.91,50.08
.complete 72435,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lukoturukk
.goto 2024,14.07,49.45
.accept 71234 >>接任务: |cRXP_WARN_海角新闻|r
step
#title |T1126431:0:0|tOffering 3
>>拿起手工制作的小船
.goto 2024,13.87,49.48
.complete 66210,1,3 
step
#title |T132803:0:0|tOffering 4
>>拿起装饰茶壶
.goto 2024,13.48,48.57
.complete 66210,1 
step
#sticky
#label TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arvik
.goto 2024,13.17,48.53
.complete 72435,1 
step
>>与殡仪船互动
.goto 2024,13.14,48.57
.complete 66210,2 
step
#requires TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Norukk
.goto 2024,12.96,48.64
.complete 72435,4 
step
.goto 2024,12.89,48.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.accept 66218 >>接任务: |cRXP_WARN_蹦跳顽童|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tatto
.goto 2024,13.18,48.82
.complete 72435,3 
step
.goto 2024,13.20,48.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.accept 66217 >>接任务: |cRXP_WARN_通缉：克洛杰克，海滨巡游者|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Murik
.goto 2024,13.14,49.26
.turnin 72435 >>Turn in Orientation: Iskaara
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Kalecgos
.turnin 66210 >>Turn in Gather the Family
.goto 2024,13.24,49.56
.accept 65850 >>接任务: |cRXP_WARN_海洋轮回|r
.goto 2024,13.26,49.53
step
#completewith next
.goto 2024,13.24,49.55
.gossipoption 55314 >>Talk to Brena
.timer 72,Roleplay Duration
step
>>与殡仪船互动
.goto 2024,13.18,49.20,8,0
.goto 2024,13.06,49.52,10,0
.goto 2024,13.16,50.20
.complete 65850,1 
.complete 65850,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,12.94,50.39
.turnin 65850 >>Turn in Gather the Familiy
.accept 65911 >>接任务: |cRXP_WARN_碧蓝盟会|r
step
.isOnQuest 66217
>>杀死海岸掠夺者克罗耶克。你可以跳过这个任务。这是一个非常强硬的精英|r
.unitscan Krojek The Shoreprowler
.goto 2024,10.45,53.66
.complete 66217,1 
step
.isQuestComplete 66217
.goto 2024,12.51,49.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.turnin 66217 >>Turn in WANTED: Krojek the Shoreprowler
step
.abandon 66217 >>放弃通缉犯：海岸掠夺者克罗耶克
step
.isOnQuest 66218
.goto 2024,10.59,46.87
.gossipoption 55003 >>Talk to Neelo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wayun
.goto 2024,7.45,44.28
.turnin 71234 >>Turn in Nook News
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.accept 66781 >>接任务: |cRXP_WARN_口感问题|r
step
>>捡起地上的大石头
.goto 2024,7.24,45.12
.complete 66781,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.turnin 66781 >>Turn in A Matter of Taste
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog, Examiner Rowe and Aelnara
.accept 66164 >>接任务: |cRXP_WARN_浑水摸鱼|r
.goto 2024,7.65,44.32
.accept 66154 >>接任务: |cRXP_WARN_催涎采样|r
.goto 2024,7.67,44.26
.accept 66147 >>接任务: |cRXP_WARN_水晶水中浸|r
.goto 2024,7.64,44.23
step
#completewith TheAzureSpanCrystalsintheWater
>>捡起地上被盗的零件
.complete 66164,1 
step
#completewith TheAzureSpanCrystalsintheWater
>>杀死|cff00ecffBringtooths|r.为唾液掠夺它们
.complete 66154,1 
step
#title Crystal Mined 1/4
.goto 2024,9.86,43.36
.complete 66147,1,1 
step
#title Crystal Mined 2/4
.goto 2024,10.36,43.33
.complete 66147,1,2 
step
#title Crystal Mined 3/4
.goto 2024,10.68,42.73
.complete 66147,1,3 
step
#label TheAzureSpanCrystalsintheWater
#title Crystal Mined 4/4
.goto 2024,10.18,42.29
.complete 66147,1 
step
#completewith next
>>捡起地上被盗的零件
.complete 66164,1 
step
>>杀死|cff00ecffBringtooths|r.为唾液掠夺它们
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,25,0
.goto 2024,9.77,43.71,25,0
.goto 2024,10.31,43.44,25,0
.goto 2024,10.95,43.44,25,0
.goto 2024,10.28,42.36,25,0
.complete 66154,1 
step
>>捡起地上被盗的零件
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,25,0
.goto 2024,9.77,43.71,25,0
.goto 2024,10.31,43.44,25,0
.goto 2024,10.95,43.44,25,0
.goto 2024,10.28,42.36,25,0
.complete 66164,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Rowe, Aelnara and LOU-C Fitzcog
.turnin 66154 >>Turn in Salivatory Samples
.goto 2024,7.67,44.26
.turnin 66147 >>Turn in Crystals in the Water
.goto 2024,7.64,44.23
.turnin 66164 >>Turn in Fishy Fingers
.accept 66175 >>接任务: |cRXP_WARN_[Field Experiment]|r
.goto 2024,7.65,44.32
step
>>Click on the Geoscanner
.goto 2024,7.64,44.33
.complete 66175,1 
.timer 33,Roleplay Duration
step
.goto 2024,10.59,46.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Neelo
.turnin 66218 >>Turn in Scampering Scamps
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog
.goto 2024,7.64,44.33
.turnin 66175 >>Turn in Field Experiment
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog and Wayun
*|cffffff00You can skip these quests if you have bad gear. It's less efficient with low damage|r
.accept 66177 >>接任务: |cRXP_WARN_[No Dwarf Left Behind]|r
.goto 2024,7.65,44.35
.accept 66232 >>接任务: |cRXP_WARN_咸盐攻势|r
.goto 2024,7.46,44.28
step
.isOnQuest 66232
#completewith TheAzureSpanNoDwarfLeftBehind
>>杀死该区域的|cff00ecffBrinetoths|r。掠夺它们以获取水晶薄片
.complete 66232,1 
step
.isOnQuest 66177
>>拿起Mordigan的现场笔记
.goto 2024,9.38,42.53
.complete 66177,1 
step
.isOnQuest 66177
>>拿起Mordigan的现场笔记
.goto 2024,10.02,41.30
.complete 66177,2 
step
.isOnQuest 66177
>>拿起莫迪根的靴子
.goto 2024,9.93,39.68
.complete 66177,3 
step
.isOnQuest 66177
>>拿起莫迪根的裤子
.goto 2024,10.61,41.25
.complete 66177,4 
step
.isOnQuest 66232
>>杀死该区域的|cff00ecffBrinetoths|r。掠夺它们以获取水晶薄片
.goto 2024,10.22,41.79,30,0
.goto 2024,9.34,42.87,30,0
.goto 2024,9.72,40.64,30,0
.goto 2024,10.47,41.14,30,0
#loop
.line 2024,10.22,41.79,9.34,42.87,9.72,40.64,10.47,41.14,
.goto 2024,10.22,41.79,30,0
.goto 2024,9.34,42.87,30,0
.goto 2024,9.72,40.64,30,0
.goto 2024,10.47,41.14,30,0
.complete 66232,1 
step
.goto 2024,10.77,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.turnin -66177 >>Turn in No Dwarf Left Behind
step
.isQuestTurnedIn 66177
.goto 2024,10.77,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.accept 66187 >>接任务: |cRXP_WARN_[Mad Mordigan &amp; The Crystal King]|r
step
.isOnQuest 66232
>>在洞穴内击败|cff00ecffMordigan|r
.goto 2024,11.19,41.10
.complete 66187,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.goto 2024,10.77,41.18
.turnin -66187 >>Turn in Mad Mordigan & The Crystal King
step
.isQuestTurnedIn 66187
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.goto 2024,10.77,41.18
.accept 66559 >>接任务: |cRXP_WARN_[Back To Camp]|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Rowe
.turnin -66559 >>Turn in Back To Camp
.goto 2024,7.67,44.27
.turnin -66232 >>Turn in Afront 'Till A Salt
.goto 2024,7.46,44.28
step
#completewith next
.hs >>糖果旅馆之心
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.48,63.02
.turnin 65911 >>Turn in Azure Alignment
.accept 66027 >>接任务: |cRXP_WARN_呼叫蓝龙|r
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.48,63.02
.skipgossip 186280,1
.complete 66027,1 
step
.goto 2024,39.48,63.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.turnin 66027 >>Turn in Calling the Blue Dragons
.accept 65886 >>接任务: |cRXP_WARN_前往罗宁之盾|r
step
#completewith next
+|cfff78300在此点之后Azure跨度中的路径可能会发生一些变化|r
step
>>按照箭头并使用|cffffff00[ExtraActionButton]|r
.goto 2024,41.19,62.27,-1
.goto 2024,39.56,60.26,-1
.goto 2024,38.26,61.50,-1
.complete 65886,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren, Maddy Scattershot and Garz
.accept 66391 >>接任务: |cRXP_WARN_废墟里见！|r
.goto 2024,63.42,58.03
.turnin 66671 >>Turn in Path to Nowhere
.goto 2024,63.22,58.41
.accept 66141 >>接任务: |cRXP_WARN_礼崩乐坏|r
.goto 2024,63.20,58.61
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.02,58.61
.turnin 66391 >>Turn in To the Ruins!
.accept 66353 >>接任务: |cRXP_WARN_R.A.D.装置异常|r
.accept 66352 >>接任务: |cRXP_WARN_窥敌先机|r
step
#completewith TheAzureSpanRADAnomalies
>>杀死|cff00ecffTarasek战士|r和|cff0ecffArcane操纵器|r。掠夺他们获得命令
.complete 66352,1 
step
#title Record 1/3
>>在异常旁使用|T134519:0|t[R.A.D]
.use 191909
.goto 2024,65.52,58.82
.complete 66353,1,1 
step
#title Record 2/3
>>在异常旁使用|T134519:0|t[R.A.D]
.use 191909
.goto 2024,66.31,59.37
.complete 66353,1,2 
step
#label TheAzureSpanRADAnomalies
#title Record 3/3
>>在异常旁使用|T134519:0|t[R.A.D]
.use 191909
.goto 2024,66.39,59.72
.complete 66353,1 
step
>>杀死|cff00ecffTarasek战士|r和|cff0ecffArcane操纵器|r。掠夺他们获得命令
.goto 2024,65.09,59.54,20,0
.goto 2024,66.35,59.56,20,0
.goto 2024,65.54,59.28
.complete 66352,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.03,58.67
.turnin 66353 >>Turn in R.A.D. Anomalies
.turnin 66352 >>Turn in What the Enemy Knows
.accept 66422 >>接任务: |cRXP_WARN_[The Expedition Continues!]|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往Dragon控制台。与Lathos Sunband交谈
.goto 2024,65.64,60.78
.turnin 66422 >>Turn in The Expedition Continues!
.accept 66423 >>接任务: |cRXP_WARN_担忧与证实|r
step
#title Clue Found 1
>>与平板电脑交互
.goto 2024,65.32,60.80
.complete 66423,1,1 
step
#title Clue Found 2
>>与平板电脑交互
.goto 2024,65.86,60.55
.complete 66423,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband and Rannan Korren
.turnin 66423 >>Turn in Worries and Validations
.goto 2024,65.64,60.79
.accept 66425 >>接任务: |cRXP_WARN_奥术超载|r
.goto 2024,65.63,60.76
step
#title Bubble Dispelled 1
>>使用|T134519:0|t[R.A.D.D.E.R]消除障碍
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.28,61.31
.complete 66425,1,1 
step
#title Bubble Dispelled 2
>>使用|T134519:0|t[R.A.D.D.E.R]消除障碍
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.10,61.54
.complete 66425,1,2 
step
#title Bubble Dispelled 3
>>使用|T134519:0|t[R.A.D.D.E.R]驱散二层障碍物
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.18,60.95,10,0
.goto 2024,65.00,61.24,10,0
.goto 2024,65.06,61.14
.complete 66425,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.turnin 66425 >>Turn in Arcane Overload
.goto 2024,65.63,60.76
.accept 66426 >>接任务: |cRXP_WARN_时不我待|r
.goto 2024,65.64,60.80
step
#title Dragon Glyph: Ruins of Karnthar
.goto 2024,68.65,60.42
.achievement 16577,3 >>在塔顶拾取龙雕
step
>>按照箭头，等待角色扮演
.goto 2024,68.46,60.50
.complete 66426,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.goto 2024,68.46,60.50
.turnin 66426 >>Turn in Running Out of Time
.accept 66427 >>接任务: |cRXP_WARN_威胁突现|r
step
>>杀死|cff00ecff奥术操纵器塔隆|r
.goto 2024,68.07,61.59
.complete 66427,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband and Rannan Korren
.turnin 66427 >>Turn in A Looming Menace
.goto 2024,68.46,60.50
.accept 66428 >>接任务: |cRXP_WARN_谊所应当|r
.goto 2024,68.48,60.43
step
>>使用控制台旁边的|T134519:0|t[R.A.D.D.E.R.E.R]
.use 192475
.goto 2024,68.61,60.39
.complete 66428,1 
step
>>Wait for the roleplay
.goto 2024,68.50,60.47
.complete 66428,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,68.50,60.47
.turnin 66428 >>Turn in Friendship For Granted
.accept 66429 >>接任务: |cRXP_WARN_铭记于心|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Narn
.goto 2024,65.62,54.84
.skipgossip
.complete 66141,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.goto 2024,63.51,52.97
.turnin 66141 >>Turn in Broken Traditions, Broken Bodies
.accept 66150 >>接任务: |cRXP_WARN_营救拉兹达|r
.accept 66149 >>接任务: |cRXP_WARN_元素影响|r
.accept 66148 >>接任务: |cRXP_WARN_熊弟阋墙|r
step
#completewith next
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.complete 66148,1 
step
#title Destroy Totem 1
>>Destroy the Totem
.goto 2024,62.74,51.82
.complete 66149,1,1 
step
#title Kill Furbolgs + Elementals
#completewith next
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.goto 2024,62.71,51.28,15,0
.complete 66148,1 
step
#title Destroy Totem 2
>>Destroy the Totem
.goto 2024,62.29,51.28
.complete 66149,1,2 
step
#title Kill Furbolgs + Elementals
#completewith next
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.goto 2024,62.21,50.66,15,0
.complete 66148,1 
step
#title Destroy Totem 3
>>Destroy the Totem
.goto 2024,62.02,51.75
.complete 66149,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
*Defeat the incoming waves of mobs
.goto 2024,60.94,51.46
.skipgossip
.complete 66150,1 
.complete 66150,2 
step
#title Kill Furbolgs + Elementals
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.goto 2024,61.51,52.07,15,0
.goto 2024,61.47,52.93,15,0
.goto 2024,61.58,54.22,25,0
.goto 2024,61.51,52.07
.complete 66148,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到Narn和Radza Thunderclaw（你可能要等他）
.goto 2024,60.92,50.54
.turnin 66148 >>Turn in Former Furbolg Family
.turnin 66149 >>Turn in Elemental Influence
.turnin 66150 >>Turn in Rescuing Radza
.accept 66151 >>接任务: |cRXP_WARN_铁石心肠|r
step
>>杀死|cff00ecffStoneheart|r。在他的能力“地球洪流”期间远离他
*You can skip this if you deal low damage
.goto 2024,60.47,49.43
.complete 66151,1 
step
.isQuestComplete 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
.turnin 66151 >>Turn in His Stone Heart
.goto 2024,60.91,50.50
step
.isQuestTurnedIn 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.accept 66152 >>接任务: |cRXP_WARN_敢问家在何方|r
.goto 2024,60.99,50.56
step
.isOnQuest 66152
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t无处返回营地。与Garz交谈
.goto 2024,63.20,58.67
.turnin 66152 >>Turn in Nowhere to Go
step
#completewith next
.goto 2024,63.45,58.66
.fp >>无处可去的营地飞行路线
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,63.68,58.91
.turnin 66429 >>Turn in I Will Remember
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kattigat and To'tik
.accept 67111 >>接任务: |cRXP_WARN_病弱的学徒|r
.goto 2024,67.22,44.41
.accept 67724 >>接任务: |cRXP_WARN_火光庇护|r
.accept 70856 >>接任务: |cRXP_WARN_烈火焚尽|r
.goto 2024,67.34,44.35
step
#completewith TheAzureSpanTheFendingFlames
>>使用|T135433:0|t[火焰喷射器火炬]在地上焚烧掠夺者的尸体
>>你可以用ESC取消火焰喷射器
.use 199928
.complete 70856,1 
step
#completewith TheAzureSpanTheFendingFlames
>>杀死|cff00ecffShiverweb爬行者|r。掠夺它们的毒液腺
.complete 67111,1 
step
#title Silk 1/4
>>偷走蜘蛛丝茧
.goto 2024,68.07,43.04
.complete 67724,1,1 
step
#title Silk 2/4
>>偷走蜘蛛丝茧
.goto 2024,68.50,43.61
.complete 67724,1,2 
step
#title Silk 3/4
>>偷走蜘蛛丝茧
.goto 2024,68.74,45.39
.complete 67724,1,3 
step
#label TheAzureSpanTheFendingFlames
#title Silk 4/4
>>偷走蜘蛛丝茧
.goto 2024,68.48,45.97
.complete 67724,1 
step
>>杀死|cff00ecffShiverweb爬行者|r。掠夺它们的毒液腺
.goto 2024,68.86,45.36
.complete 67111,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to To'tik and Kattigat
.turnin 67724 >>Turn in The Fending Flames
.turnin 70856 >>Turn in Kill it with Fire
.goto 2024,67.34,44.35
.turnin 67111 >>Turn in The Ailing Apprentice
.accept 70858 >>接任务: |cRXP_WARN_[Back into the Action]|r
.goto 2024,67.22,44.41
step
>>点击地面上的Alia Sunsor
.goto 2024,67.23,44.38
.complete 70858,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alia Sunsor
.goto 2024,67.30,44.34
.turnin 70858 >>Turn in Back into the Action
.accept 70859 >>接任务: |cRXP_WARN_[What the Guardian Beholds]|r
step
>>Kill |cff00ecffEdavix|r
.goto 2024,69.53,43.18
.complete 70859,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alia Sunsor
.goto 2024,67.30,44.34
.turnin 70859 >>Turn in What the Guardian Beholds
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.accept 66709 >>接任务: |cRXP_WARN_战地医师入门|r
step
>>从老格里姆图斯克身上取下长矛
.goto 2024,59.26,39.73
.complete 66709,1 
step
>>Pick up the wood
.goto 2024,59.20,39.79
.complete 66709,2 
step
>>Place the Campfire
.goto 2024,59.25,39.77
.complete 66709,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.skipgossip 189963,1
.complete 66709,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.turnin 66709 >>Turn in Field Medic 101
.accept 66715 >>接任务: |cRXP_WARN_大撤离|r
step
#completewith TheAzureSpanFrostbiteCausesandSymptoms
>>杀死|cff00ecffGnolls|r并摧毁他们的防御
.accept 66718 >>接任务: |cRXP_WARN_豺狼人必须死|r
.complete 66718,1 
step
>>Follow the arrow
.goto 2024,58.34,41.83
.complete 66715,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66715 >>Turn in The Extraction
.accept 66703 >>接任务: |cRXP_WARN_雪球效应|r
step
#completewith next
>>杀死|cff00ecffSnowdhide萨满|r。掠夺他们的图腾
.goto 2024,58.34,42.60,15,0
.complete 66703,1 
step
>>杀死|cff00ecffSnoll the Icebreaker|r
.goto 2024,57.90,44.82
.complete 66718,2 
step
>>杀死|cff00ecffSnowdhide萨满|r。掠夺他们的图腾
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
#loop
.line 2024,58.34,42.64,56.89,42.33,57.64,41.53,58.34,42.64,56.89,42.33,57.64,41.53
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.complete 66703,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66703 >>Turn in Snowball Effect
.accept 67050 >>接任务: |cRXP_WARN_霜齿：表里症结|r
step
#label TheAzureSpanFrostbiteCausesandSymptoms
>>Place the totems
.goto 2024,58.24,41.95
.complete 67050,1 
step
>>杀死|cff00ecffGnolls|r并摧毁他们的防御
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,57.70,42.22
.complete 66718,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.complete 67050,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.turnin 67050 >>Turn in Frostbite: Causes and Symptoms
.accept 66730 >>接任务: |cRXP_WARN_真正的幸存者|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往格里姆图斯克的藏身处，与老格里姆图斯交谈
.goto 2024,58.79,34.91
.turnin 66730 >>Turn in True Survivors
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.87
.accept 68639 >>接任务: |cRXP_WARN_极地徘徊猎手|r
.accept 68641 >>接任务: |cRXP_WARN_青苔入药|r
step
#completewith TheAzureSpanMossingtheMark
>>杀死|cff00ecff感染的寒皮|r
.complete 68639,1 
step
#title Drakmoss Clump 1
>>Pick up the Drakmoss
.goto 2024,63.68,30.66
.complete 68641,1,1 
step
#title Drakmoss Clump 2
>>Pick up the Drakmoss
.goto 2024,63.57,30.96
.complete 68641,1,2 
step
#title Drakmoss Clump 3
>>Pick up the Drakmoss
.goto 2024,63.53,31.18
.complete 68641,1,3 
step
#title Drakmoss Clump 4
>>Pick up the Drakmoss
.goto 2024,63.41,31.34
.complete 68641,1,4 
step
#label TheAzureSpanMossingtheMark
#title Drakmoss Clump 5
>>Pick up the Drakmoss
.goto 2024,63.22,31.35
.complete 68641,1 
step
>>杀死|cff00ecff感染的寒皮|r
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03,25,0
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03
.complete 68639,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.86
.turnin 68639 >>Turn in Prowling Polar Predators
.turnin 68641 >>Turn in Mossing the Mark
step
>>Dragonride到航路点位置
.goto 2024,65.81,25.33
.complete 65886,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.33
.turnin 65886 >>Turn in To Rhonin's Shield
.accept 65887 >>接任务: |cRXP_WARN_进入山区|r
.accept 67299 >>接任务: |cRXP_WARN_净除幼龙|r
step
#completewith next
.goto 2024,65.71,25.56,10,0
.goto 2024,65.85,26.75,10,0
.goto 2024,66.03,25.60,10,0
.vehicle 192872 >>进入Arcane Blaster
step
>>使用|T429383:0|tArcane Blast（1）杀死飞龙
>>你可以用（2）来减缓它们
.goto 2024,65.71,25.56
.complete 67299,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.32
.turnin 67299 >>Turn in Drakes be Gone
step
#completewith next
+使用你的龙骑坐骑飞向被召唤的驱逐舰
step
.goto 2024,70.12,33.26
.accept 69895 >>接任务: |cRXP_WARN_召唤的毁灭者|r
.complete 69895,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Khadgar
.turnin 65887 >>Turn in To the Mountain
.accept 65943 >>接任务: |cRXP_WARN_拜荒攻势|r
.goto 2024,70.01,35.23
.accept 65944 >>接任务: |cRXP_WARN_熔岩爆裂|r
.accept 66647 >>接任务: |cRXP_WARN_元素不器|r
.goto 2024,70.02,35.34
step
#sticky
#label TheAzureSpanPrimalOffensive
>>在你的小地图上显示的区域搜索暴徒
.goto 2024,72.44,37.27,0,0
.complete 65943,1 
step
#title Lava Orb 1
.goto 2024,71.23,35.69,30,0
.goto 2024,72.26,37.26
.complete 65944,1,1 
step
>>杀死|cff00ecffRuvin Stonegrinder|r。掠夺她获得元素焦点
.goto 2024,72.51,38.11,30,0
.goto 2024,72.90,38.71
.complete 66647,1 
step
#title Lava Orb 2
.goto 2024,73.11,37.77
.complete 65944,1,2 
step
#title Lava Orb 3
.goto 2024,73.77,38.31
.complete 65944,1 
step
#requires TheAzureSpanPrimalOffensive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar and Kalecgos
.goto 2024,74.46,37.84
.turnin 66647 >>Turn in Elemental Unfocus
.turnin 65944 >>Turn in Lava Burst
.turnin 65943 >>Turn in Primal Offensive
step
.goto 2024,65.39,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.accept 66553 >>接任务: |cRXP_WARN_谷地寻踪|r
.accept 66554 >>接任务: |cRXP_WARN_防卫过当|r
step
.goto 2024,65.56,16.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tyrnokos Sunstrike
.accept 66622 >>接任务: |cRXP_WARN_任性的工具|r
step
>>单击Wayward Tools（Wayward Tools）（您可以在安装时执行此操作）
.target Wayward Tool
.goto 2024,65.96,16.51,25,0
.goto 2024,65.82,17.41,25,0
.goto 2024,65.25,17.23,25,0
.goto 2024,64.82,17.31,25,0
.goto 2024,64.71,16.83,25,0
.complete 66622,1 
step
#completewith TheAzureSpanHollowUp
>>击败|cff00ecffFurbolgs|r
.complete 66554,1 
step
#title Clue 1/6
>>点击触电冬皮
.goto 2024,66.48,13.27
.complete 66553,1,1 
step
#title Clue 2/6
>>点击触电冬皮
.goto 2024,66.56,12.67
.complete 66553,1,2 
step
#title Clue 3/6
>>点击触电冬皮
.goto 2024,66.81,12.51
.complete 66553,1,3 
step
#title Clue 4/6
>>点击触电冬皮
.goto 2024,66.53,12.18
.complete 66553,1,4 
step
#title Clue 5/6
>>点击触电冬皮
.goto 2024,66.29,12.25
.complete 66553,1,5 
step
#label TheAzureSpanHollowUp
#title Clue 6/6
>>点击触电冬皮
.goto 2024,66.11,13.22
.complete 66553,1 
step
>>击败|cff00ecffFurbolgs|r
.goto 2024,65.85,12.78,25,0
.goto 2024,66.82,13.47,25,0
.goto 2024,66.96,11.89,25,0
.goto 2024,65.85,12.78
.complete 66554,1 
step
.goto 2024,65.38,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.turnin 66553 >>Turn in Hollow Up
.turnin 66554 >>Turn in Aggressive Self-Defence
.accept 66555 >>接任务: |cRXP_WARN_容我一言|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.goto 2024,65.38,15.95
.skipgossip 189401,1
.complete 66555,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden and Tyrnokos Sunstrike
.turnin 66555 >>Turn in Bear With Me
.goto 2024,65.38,15.95
.turnin 66622 >>Turn in Wayward Tools
.goto 2024,65.57,16.17
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup 首次演练（战役）60-70
#displayname Chapter 1 - The Waking Shores Campaign
#name 1） 唤醒海岸运动
#next 2） 奥恩阿兰平原战役



step << Horde !Dracthyr
>>这应该会自动出现在你的任务日志中
.accept 65435 >>接任务: |cRXP_WARN_巨龙群岛在等待|r
step << Horde !Dracthyr
#completewith MasterRiding
.goto 85,51.19,63.09,15,0
.goto 85,50.53,61.63,15 >>乘电梯到Orgrimmar的上部
.skill riding,225,1
step << Horde !Dracthyr
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>培训专家和驾驭大师
.target Maztha
.skill riding,225,1
step << Horde !Dracthyr
#label MasterRiding
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>Train Master Riding
.target Maztha
step << Horde !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
>>按键盘上的“Escape”可跳过电影
.goto 84,44.08,37.99
.turnin 65435 >>Turn in The Dragon Isles Await
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
.accept 65437 >>接任务: |cRXP_WARN_守护巨龙之邀|r
.complete 65437,1 
.turnin 65437 >>Turn in Aspectral Invitation
.goto 85,44.06,37.97
.skipgossip 190239,1
.target Ebyssian
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleida and Cindrethresh
.accept 65443 >>接任务: |cRXP_WARN_探险协同|r
.goto 85,44.19,37.79
.accept 72256 >>接任务: |cRXP_WARN_暗爪营|r
.goto 85,44.04,38.25
.target Naleidea Rivergleam
.target Scalecommander Cindrethresh
step << Horde
.goto 85,38.59,56.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tacha
.complete 65443,2 
.skipgossip
.target Pathfinder Tacha
step << Horde
.goto 85,57.09,54.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Magor
.complete 65443,1 
.skipgossip
.target Boss Magor
step << Horde
.goto 85,70.36,49.01,10,0
.goto 85,71.44,50.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coralie upstairs in The Wyvern's Tail
.complete 65443,3 
.skipgossip
.target Cataloger Coralie
step << Horde
.goto 85,55.08,89.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kodethi on top of the Wall of Orgrimmar
.complete 72256,1 
.target Kodethi
.skipgossip
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea and Khadgar
>>按键盘上的“Escape”可跳过电影
.turnin 65443 >>Turn in Expeditionary Coordination
.turnin 72256 >>Turn in The Dark Talons
.goto 1,55.81,12.66
.accept 65439 >>接任务: |cRXP_WARN_风中耳语|r
.complete 65439,1 
.goto 1,55.92,12.61
.timer 3,Khadgar Appearance
.skipgossip 193450,1
.target Naleidea Rivergleam
.target Archmage Khadgar
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian and Naleidea
.turnin -65439 >>交任务: |cRXP_FRIENDLY_风之细语|rs
.turnin -70198 >>交任务: |cRXP_FRIENDLY_群岛的召唤|r
.goto 1,55.85,12.74
.accept 65444 >>接任务: |cRXP_WARN_出发！巨龙群岛！|r
.goto 1,55.81,12.66
.target Ebyssian
.target Naleidea Rivergleam
step << Horde
#completewith next
+您可以在Skarukaru上方看到到达时间。如果你看不见，就和她谈谈。
step << Horde
.goto 1,55.96,13.18
>>等待齐柏林飞船的到来。如果你想知道需要多长时间才能到达，请与Sharukaru联系
.complete 65444,1 
.skipgossip
.target Sharukaru
step << Horde
.zoneskip 2022
.isOnQuest 65444
.goto 1,55.99,13.33
.zone 1978 >>齐柏林飞船到达时，请乘坐齐柏林飞船。在航路点位置等待
step << Horde
#completewith next
.zone 2022 >>跳下齐柏林飞船。你会被移到前面（如果不是游到船上点击它）|cffffff00当你的加载屏幕长到约15秒时，不要跳过|r。
step << Horde
#label HordeArrivingInDragonIsles
.goto 2022,80.83,27.80
.complete 65444,2 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam, Scalecommander Cindrethresh and Boss Magor
.turnin 65444 >>Turn in To the Dragon Isles!
.accept 65452 >>接任务: |cRXP_WARN_探险者遇险|r
.goto 2022,80.62,27.60
.accept 65453 >>接任务: |cRXP_WARN_原始龙害|r
.accept 65451 >>接任务: |cRXP_WARN_练手材料|r
.goto 2022,80.63,27.63
step << Horde
#completewith WakingShoresExplorersInPeril
>>杀死|cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
#completewith WakingShoresExplorersInPeril
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
.complete 65451,1 
step << Horde
>>摧毁原龙肋笼
.goto 2022,79.80,28.20,25,0
.goto 2022,80.37,26.34
.complete 65452,1 
step << Horde
>>营救档案管理员Spearbloom
*Look above you!
.goto 2022,78.71,24.52
.complete 65452,2 
step << Horde
#label WakingShoresExplorersInPeril
>>帮助懒人挂在链子上
.goto 2022,77.37,29.77
.complete 65452,3 
step << Horde
#completewith next
>>杀死|cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
.goto 2022,77.95,28.09,10,0
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65451,1 
step << Horde
>>杀死|cff00ecffBig Proto Drakes|r
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65453,1 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam
.goto 2022,76.61,33.60
.turnin 65452 >>Turn in Explorers in Peril
.accept 69910 >>接任务: |cRXP_WARN_拉希奥呢？|r



step << Alliance !Dracthyr
>>这应该会自动出现在你的任务日志中
.accept 65436 >>接任务: |cRXP_WARN_巨龙群岛在等待|r
step << Alliance !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion in Stormwind
.goto 84,79.81,27.04
.turnin 65436 >>Turn in The Dragon Isles Await
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.accept 66577 >>接任务: |cRXP_WARN_守护巨龙之邀|r
.goto 84,79.81,27.04
.skipgossip 189569,1
.complete 66577,1 
.turnin 66577 >>Turn in Aspectral Invitation
.target Wrathion
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel and Toddy Whiskers
.accept 72240 >>接任务: |cRXP_WARN_黑卫营|r
.goto 84,79.95,26.95
.target Scalecommander Azurathel
.accept 66589 >>接任务: |cRXP_WARN_探险协同|r
.goto 84,79.73,27.35
.target Toddy Whiskers
step << Alliance
>>稍微往外走一点，这样你就可以爬上去了
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin
.goto 84,79.45,26.89,3,0
.goto 84,64.12,37.21
.skipgossip 1
.complete 66589,1 
.target Thaelin Darkanvil
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd
.goto 84,63.36,69.91
.skipgossip
.complete 66589,3 
.target Cataloger Wulferd
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
.goto 84,50.91,67.36
.skipgossip
.complete 72240,1 
.target Dervishian
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Pathfinder Jeb
.goto 84,38.26,45.52
.skipgossip
.complete 66589,2 
.target Pathfinder Jeb
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.goto 84,22.70,55.66
.turnin 66589 >>Turn in Expeditionary Coordination
.turnin 72240 >>Turn in The Obsidian Warders
.target Toddy Whiskers
step << Alliance
.goto 84,22.94,56.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.accept 66596 >>接任务: |cRXP_WARN_风中耳语|r
.skipgossip
.complete 66596,1 
.target Archmage Khadgar
step << Alliance
.goto 84,22.92,56.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66596 >>交任务: |cRXP_FRIENDLY_风之细语|rs
.target Wrathion
step << Alliance
.goto 84,22.73,55.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin -70197 >>交任务: |cRXP_FRIENDLY_群岛的召唤|r
.accept 67700 >>接任务: |cRXP_WARN_出发！巨龙群岛！|r
.target Toddy Whiskers
step << Alliance
>>等待船只抵达
.goto 84,22.36,55.98
.complete 67700,1 
step << Alliance
.isOnQuest 67700
.goto 84,20.82,53.83
.zone 1978 >>在大木板上走到船的前面
step << Alliance
#completewith next
.zone 2022 >>跳船。你会被移到前面（如果不是游到船上点击它）|cffffff00当你的加载屏幕长到约15秒时，不要跳过|r。
step << Alliance
.goto 2022,82.13,31.88
.complete 67700,2 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers, Thaelin Darkanvil and Scalecommander Azurathel
.turnin 67700 >>Turn in To the Dragon Isles!
.accept 70122 >>接任务: |cRXP_WARN_探险者遇险|r
.goto 2022,82.13,31.88
.accept 70124 >>接任务: |cRXP_WARN_练手材料|r
.goto 2022,82.09,31.89
.accept 70123 >>接任务: |cRXP_WARN_原始龙害|r
.goto 2022,82.16,31.86
.target Toddy Whiskers
.target Thaelin Darkanvil
.target Scalecommander Azurathel
step << Alliance
#completewith WakingShoresExplorersInPerilCogcatcher
.goto 2022,82.47,32.10,10,0
.goto 2022,82.91,32.54,10 >>顺着箭头上山
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>杀死|cff00ecffthe Big Proto Drakes|r
.complete 70123,1 
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
.complete 70124,1 
step << Alliance
#label WakingShoresExplorersInPerilCogcatcher
>>营救Cogcatcher教授
.goto 2022,83.55,33.59
.complete 70122,1 
.target Professor Cogcatcher
step << Alliance
>>营救在空中的档案管理员Rellid
.goto 2022,83.01,36.30
.complete 70122,2 
.target Archivist Rellid
step << Alliance
#label WakingShoresExplorersInPerilAlliance
>>营救Spelunker Lockeye
.goto 2022,79.54,35.35
.complete 70122,3 
.target Spelunker Lockeye
step << Alliance
#completewith next
>>杀死|cff00ecffthe Big Proto Drakes|r
.complete 70123,1 
step << Alliance
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70124,1 
step << Alliance
>>杀死|cff00ecffthe Big Proto Drakes|r
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70123,1 
step << Alliance
.goto 2022,76.63,33.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin 70122 >>Turn in Explorers in Peril
.accept 70125 >>接任务: |cRXP_WARN_拉希奥呢？|r
.target Toddy Whiskers



step
#completewith point1
+我们只在角色扮演期间接受此区域的任务。严格遵循箭头以获得最大效率
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55636 >>Talk to Sendrax 
.timer 17,Roleplay Duration
.target Sendrax
step << Horde
#completewith WakingShorePractiveMaterialsHorde
>>完成其他步骤
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
#completewith WakingShorePractiveMaterialsAlliance
>>完成其他步骤
.goto 2022,76.58,33.66,0,0
.complete 70125,1 << Alliance 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh and Warlord Breka Grimaxe
.accept 66110 >>接任务: |cRXP_WARN_[Give Peace a Chance]|r
.goto 2022,76.36,33.09
.turnin 65453 >>Turn in Primal Pests
.goto 2022,76.28,33.02
step << Horde
#label WakingShorePractiveMaterialsHorde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Boss Magor
.goto 2022,75.94,33.25
.turnin 65451 >>Turn in Practice Materials
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.goto 2022,75.84,33.49
.accept 66101 >>接任务: |cRXP_WARN_上九天揽月|r
step << Horde
#label WakingShoreInquireMissingDragonsHorde
>>Wait for the roleplay
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
.goto 2022,76.49,34.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin Darkanvil
.turnin 70124 >>Turn in Practice Materials
.target Thaelin Darkanvil
step << Dracthyr Alliance
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>接任务: |cRXP_WARN_迷途浪人|r
.target Haephesta
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 192563,1
.complete 70148,1 
.target Kholmar Sunrunner
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 192558,1
.complete 70148,2 
.target Toninaar
step << Alliance
.goto 2022,76.73,34.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.accept 67053 >>接任务: |cRXP_WARN_[Give Peace a Chance]|r
.target Captain Garrick
step << Alliance
.goto 2022,76.75,34.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel
.turnin 70123 >>Turn in Primal Pests
.target Scalecommander Azurathel
step
#label point1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 70125 >>Turn in Where is Wrathion? << Alliance
.turnin 69910 >>Turn in Where is Wrathion? << Horde
.accept 69911 >>接任务: |cRXP_WARN_杂乱不堪，请别见怪|r
.target Sendrax
step << Dracthyr Horde
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>接任务: |cRXP_WARN_迷途浪人|r
.target Haephesta
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 1
.complete 70148,1 
.target Kholmar Sunrunner
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Fastrasz
.goto 2022,76.33,35.62
.skipgossip 193393,2
.complete 69911,1 
.target Ambassador Fastrasz
step
>>Interact with the book
.goto 2022,76.28,35.62
.skipgossip 1
.complete 69911,2 
step
>>与大石头互动
.goto 2022,75.61,34.17
.complete 69911,3 
step
>>与火盆互动
.goto 2022,78.43,31.80
.complete 69911,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 69911 >>Turn in Excuse the Mess
.accept 69912 >>接任务: |cRXP_WARN_首次紧急情况！|r
.target Sendrax
step
#completewith next
+|cfff78300在角色扮演过程中，上交并完成指定的任务。
step
#completewith WakingShoreFromSuchGreatHeights
>>Wait for the roleplay
.complete 69912,1 
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55637 >>Talk to Sendrax
.timer 33,Roleplay Duration
.target Sendrax
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.goto 2022,75.84,33.49
.accept 66101 >>接任务: |cRXP_WARN_上九天揽月|r
.target Aster Cloudgaze
step
>>Mount the disc
.goto 2022,75.9,33.58
.complete 66101,1 
step
>>使用第一个功能（1），然后按Esc键取消过场。
.goto 2022,76.42,33.72
.complete 66101,2 
step
>>使用第二种能力（2），然后按Esc键取消过场。
.goto 2022,75.70,33.45
.complete 66101,3 
step
>>使用第三种能力（3），然后按Esc键取消过场。
.goto 2022,75.87,33.35
.complete 66101,4 
step
#completewith next
+|cfff78300立即离开车辆|r
step
#label WakingShoreFromSuchGreatHeights
.goto 2022,75.84,33.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.turnin 66101 >>Turn in From Such Great Heights
.target Aster Cloudgaze
step << Alliance
.goto 2022,76.36,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 67053 >>Turn in Give Peace a Chance
.accept 70135 >>接任务: |cRXP_WARN_侵蚀元素|r
.target Warlord Breka Grimaxe
step
#completewith next
.goto 2022,76.31,34.33,10 >>按照航路点触发下一个角色扮演（基于接近度）
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.goto 2022,76.73,34.55
.turnin 66110 >>Turn in Give Peace a Chance
.accept 66111 >>接任务: |cRXP_WARN_侵蚀元素|r
.target Captain Garrick
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 192558,1
.complete 70148,2 
.target Toninaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.goto 2022,76.35,34.64
.accept 66112 >>接任务: |cRXP_WARN_可劲造|r
.target Grun Ashbeard
step
#completewith WakingShorePrimalEarthenCore
>>杀死大部分的小火元素。地球元素要强硬得多。
.goto 2022,73.89,33.74,0,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step
#completewith next
.goto 2022,75.52,36.34,15,0
.goto 2022,75.78,37.01,10 >>进入洞穴
step
#label WakingShorePrimalEarthenCore
>>进入洞穴并杀死|cff00ecffBaron Cruscore|r。掠夺他的核心
.goto 2022,74.88,39.31
.complete 66112,2 
step
#completewith next
.goto 2022,75.78,37.01,20 >>离开洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Majordomo Selistra
.turnin 69912 >>Turn in My First Real Emergency!
.goto 2022,76.18,34.50
.accept 69914 >>接任务: |cRXP_WARN_贾拉丁苏醒|r
.goto 2022,76.22,34.53
.target Wrathion
.target Majordomo Selistra
step
#completewith WakingShorePrimalEarthenCore
>>Wait for the roleplay
.skipgossip 193372,1
.complete 69914,1 
step
#completewith next
.goto 2022,76.22,34.53
.gossipoption 55872 >>Talk to Majordomo Selistra
.timer 50,Roleplay Duration
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.goto 2022,76.41,34.45
.accept 69965 >>接任务: |cRXP_WARN_质量保证|r
.target Haephesta
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster
.goto 2022,75.85,33.50
.skipgossip 187257,1
.complete 70148,3 
.target Aster Cloudgaze
step
#completewith WakingShoresQualityAssurance
>>专注于杀死|cff00ecff小火元素|r
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>与墙上的笔记互动
.goto 2022,75.05,33.52
.complete 70148,4 
step
#title Geodes Excavated 1
>>点击火山大地测量仪
.goto 2022,74.57,33.51
.complete 69965,1,1 
step
#title Geodes Excavated 2
>>点击火山大地测量仪
.goto 2022,73.93,33.23
.complete 69965,1,2 
step
#title Geodes Excavated 3
>>点击火山大地测量仪
.goto 2022,73.56,32.21
.complete 69965,1,3 
step
#label WakingShorePrimalMoltenCore
>>杀死|cff00ecffBaron Ashflow |r。掠夺他的核心
.goto 2022,72.91,32.97
.complete 66112,1 
step
#title Geodes Excavated 4
>>点击火山大地测量仪
.goto 2022,72.88,33.73
.complete 69965,1,4 
step
#title Geodes Excavated 5
>>点击火山大地测量仪
.goto 2022,72.94,34.12
.complete 69965,1,5 
step
#label WakingShoresQualityAssurance
#title Geodes Excavated 6
>>点击火山大地测量仪
.goto 2022,73.63,33.89
.complete 69965,1 
step << Dracthyr
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip 194289,1
.complete 70148,5 
.target Talon Ethrethi
step
>>杀死大部分|cff00ecff小火元素|r
.goto 2022,74.65,35.28,10,0
#loop
.line 2022,73.62,33.39,74.65,35.28
.goto 2022,73.62,33.39,25,0
.goto 2022,74.65,35.28,25,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip 194289,1
.complete 70148,5 
.target Talon Ethrethi
step
>>Wait for the roleplay
.goto 2022,76.22,34.53
.complete 69914,1 
step
#requires WakingShoresEncroachingElementals
.goto 2022,76.26,34.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.turnin 69914 >>Turn in The Djaradin Have Awoken
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax then immediately turn in the next Quests
.accept 65760 >>接任务: |cRXP_WARN_报到|r
.goto 2022,76.26,34.40
.target Sendrax
step
.goto 2022,76.35,34.64
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.turnin 66112 >>Turn in Always Be Crafting
.target Grun Ashbeard
step
.goto 2022,76.41,34.45
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.turnin 69965 >>Turn in Quality Assurance
.turnin 70148 >>Turn in Without Purpose << Dracthyr
.target Haephesta
step << Alliance
.goto 2022,76.37,33.09
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 70135 >>Turn in Encroaching Elementals
.target Warlord Breka Grimaxe
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
*Immediately go there.
.goto 2022,76.73,34.56
.turnin 66111 >>Turn in Encroaching Elementals
.target Captain Garrick
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.27,34.41
.skipgossip 193363,3
.complete 65760,1 
.target Sendrax
step
>>|cfff78300跟随并靠近Sendrax，否则任务将无法完成|r
.goto 2022,75.28,36.20,20,0
.goto 2022,73.20,35.96,20,0
.goto 2022,72.29,36.65,20,0
.goto 2022,71.25,40.67
.complete 65760,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65760 >>Turn in Reporting for Duty
.accept 65990 >>接任务: |cRXP_WARN_挽龙崽于毒手|r
.accept 65989 >>接任务: |cRXP_WARN_贾拉丁进犯|r
.target Commander Lethanak
step
#sticky
#label WakingShoreInvaderDjaradin
*Focus on killing |cff00ecffQalashi Scavengers|r. They have the least amount of HP
.goto 2022,70.38,44.91,0,0
.complete 65989,1 
step
>>保存|cff00ff2Whipering Whelpling|r
.goto 2022,71.36,44.65
.complete 65990,1,1 
.target Whimpering Whelping
step
>>保存|cff00ff2Whipering Whelpling|r
.goto 2022,70.97,46.21,10,0
.goto 2022,70.87,46.77,10,0
.goto 2022,71.12,46.98,10,0
.goto 2022,70.97,46.63
.complete 65990,1,2 
.target Whimpering Whelpling
step
>>保存|cff00ff2Whipering Whelpling|r
.goto 2022,69.86,45.3
.complete 65990,1,3 
.target Whimpering Whelpling
step
>>保存|cff00ff2Whipering Whelpling|r
.goto 2022,69.38,43.26
.complete 65990,1 
.target Whimpering Whelpling
step
#requires WakingShoreInvaderDjaradin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65989 >>Turn in Invader Djaradin
.turnin 65990 >>Turn in Deliver Whelps From Evil
.accept 65991 >>接任务: |cRXP_WARN_清算已至|r
.target Commander Lethanak
step
#completewith WakingShoresKilljoyBlacktalinObsidian
>>杀死营地周围的Djaradin敌人。你也可以多次杀死龙虎伊戈尔丹
.goto 2022,62.76,34.50,0,0
.accept 65994 >>接任务: |cRXP_WARN_制裁贾拉丁|r
.complete 65994,1 
step
.itemcount 132516,1
#completewith WakingShoreTimeForReckoning
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
#completewith next
.goto 2022,70.59,38.56,10,0
.goto 2022,70.24,38.79,10 >>顺着这条路上山
step
#label WakingShoreTimeForReckoning
>>爬上塔，等着瑞森，和他说话
.goto 2022,68.12,36.87,20,0
.goto 2022,66.59,34.58
.complete 65991,1 
step
.goto 2022,66.36,35.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 65991 >>Turn in Time for a Reckoning
.accept 65993 >>接任务: |cRXP_WARN_败兴而归|r
.accept 65992 >>接任务: |cRXP_WARN_黑爪谍报|r
.target Wrathion
step
.itemcount 109076,1
#completewith WakingShoreDragonHunderIgordan
.cast 126389 >>Use a Goblin Glider Kit
step
.itemcount 109076,<1
#completewith WakingShoreDragonHunderIgordan
.goto 2022,65.65,35.16,20 >>往下跳
step
#label WakingShoreDragonHunderIgordan
.goto 2022,64.26,33.05
.accept 66956 >>接任务: |cRXP_WARN_猎龙者伊戈尔丹|r
.complete 66956,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Right
.goto 2022,65.09,29.35
.skipgossip 1
.complete 65992,3 
.target Right
step
#completewith next
>>杀死肉馅卷饼手索托克。为夸拉希计划掠夺他。在你的包里点击它
.complete 65993,1 
.collect 193874,1
.accept 65995 >>接任务: |cRXP_WARN_黑曜堡垒|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Left
.goto 2022,64.11,30.33,30,0
.goto 2022,63.43,28.87
.skipgossip 1
.complete 65992,2 
.target Left
step
>>杀死肉馅卷饼手索托克。为夸拉希计划掠夺他。在你的包里点击它
.goto 2022,62.96,29.43
.complete 65993,1 
.collect 193874,1,65995,1
.accept 65995 >>接任务: |cRXP_WARN_黑曜堡垒|r
.unitscan Meatgrinder Sotok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia
.goto 2022,64.58,30.57,30,0
.goto 2022,64.41,33.29,30,0
.goto 2022,63.03,33.34
.skipgossip
.complete 65992,1 
.target Talonstalker Kavia
step
#label WakingShoresKilljoyBlacktalinObsidian
>>爬上楼梯，和Wrathion说话
.goto 2022,62.62,32.67,24,0
.goto 2022,62.65,33.17
.turnin 65993 >>Turn in Killjoy
.turnin 65992 >>Turn in Blacktalon Intel
.turnin 65995 >>Turn in The Obsidian Citadel
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,62.76,33.11
.accept 65996 >>接任务: |cRXP_WARN_老兵援军|r
step
>>杀死营地周围的Djaradin敌人。你也可以多次杀死龙虎伊戈尔丹
.goto 2022,62.17,34.69,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,66.00,36.88,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,62.17,34.69
.accept 65994 >>接任务: |cRXP_WARN_制裁贾拉丁|r
.complete 65994,1 
.unitscan Dragonhunter Igordan
step
#requires WakingShoreDjaradinDjustice
#completewith next
+|cfff78300提醒：您可以对“活动项目”进行键绑定|r
+|cfff78300如何键绑定：|r Escape->Options->Keybindings->RestedXP Guides->Select and Bind Active Button 1,2,3 and 4
step
#requires WakingShoreDjaradinDjustice
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*Use a heal spell instead if possible
.use 193917
.goto 2022,60.99,35.63
.complete 65996,1,1 
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*Use a heal spell instead if possible
.use 193917
.goto 2022,61.11,36.77
.complete 65996,1,2 
step
.xp >61,1
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>接任务: |cRXP_WARN_制火靠……水|r
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*Use a heal spell instead if possible
.use 193917
.goto 2022,59.04,34.84
.complete 65996,1,3 
step
.xp >61,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>接任务: |cRXP_WARN_制火靠……水|r
.target Caretaker Ventraz
step
.isOnQuest 66998
#label WakingShoreFightingFirewithWater
>>杀死洞穴内的火敌
.goto 2022,59.30,33.30
.complete 66998,1 
step
.isQuestComplete 66998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.10,34.84
.turnin 66998 >>Turn in Fighting Fire with... Water
.target Caretaker Ventraz
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*Use a heal spell instead if possible
.use 193917
.goto 2022,56.64,34.77
.complete 65996,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Azkra
.goto 2022,54.99,30.76
.turnin 65996 >>Turn in Veteran Reinforcements
.accept 65997 >>接任务: |cRXP_WARN_追逐森德拉克斯|r
.target Caretaker Azkra
step
.goto 2022,54.99,30.77
.complete 65996,2 
.target Sendrax
step
.itemcount 132516,1
#completewith WakingShoreChasingSendrax
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
#completewith next
+您可以跳过下一个过场（Esc->“是”）。
step
#label WakingShoreChasingSendrax
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,55.18,24.95
.skipgossip 187406,1
.complete 65997,1 
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,55.18,24.95
.turnin 65997 >>Turn in Chasing Sendrax
.accept 65999 >>接任务: |cRXP_WARN_齿爪尽红|r
.accept 65998 >>接任务: |cRXP_WARN_军团的未来|r
.target Sendrax
step
>>Interact with the book
.goto 2022,55.26,24.69
.accept 66000 >>接任务: |cRXP_WARN_阿莱克丝塔萨的藏书馆|r
step
#sticky
#label WakingShoreRedInToothAndClaw
>>在执行其他目标时杀死|cff00ecffPrimalists/Revenants/Taraseks|r
.goto 2022,56.37,22.32,0,0
.complete 65999,1 
step
#completewith WakingShoreFutureoftheFlight
>>当你看到Rekindler|r时杀死她（在该地区巡逻）
.goto 2022,56.97,25.28,0,0
.complete 70648,1 
step
>>Interact with the book
.goto 2022,53.36,22.39
.complete 66000,1,1 
step
>>Interact with the book
.goto 2022,53.47,21.99
.complete 66000,1,2 
step
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.12,22.01
.complete 65998,1 
.complete 65998,2,3 
step
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.71
.complete 65998,2,6 
step
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.89,21.36
.complete 65998,2 
step
>>Interact with the book
*Inside the tower
.goto 2022,54.62,20.36
.complete 66000,1,3 
step
>>Interact with the book
*Inside the tower on the second floor
.goto 2022,55.08,20.77,10,0
.goto 2022,55.04,20.3,5,0
.goto 2022,54.6,20.62
.complete 66000,1,4 
step
#label WakingShoreFutureoftheFlight
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.73
.complete 65998,2 
step
>>当你看到Rekindler|r时杀死她（在该地区巡逻）
.goto 2022,56.97,25.28
.accept 70648 >>接任务: |cRXP_WARN_重燃者菲拉瓦|r
.complete 70648,1 
step
#requires WakingShoreRedInToothAndClaw
#label WakingShoreDontTurnIn1
#completewith WakingShoreRedInToothAndClawLibraryofAlexstrasza
.goto 2022,56.24,22.14,10 >>|cfff78300在到达航路点位置之前，不要进入队列|r
step
#requires WakingShoreRedInToothAndClaw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65998 >>Turn in Library of Alexstrasza
step
#label WakingShoreRedInToothAndClawLibraryofAlexstrasza
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65999 >>Turn in Red in Tooth and Claw
.turnin 66000 >>Turn in Library of Alexstrasza
.accept 66001 >>接任务: |cRXP_WARN_最后的希望|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,56.24,22.06
.skipgossip
.timer 16,Roleplay Duration
.complete 66001,1 
step
>>Wait for the Roleplay
.goto 2022,56.92,21.62
.complete 65998,1 
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>在点击蛋之前使用|T1405809:0|t[Gunshoes]|cfff78300右键|r
step
>>Interact with the egg
.goto 2022,56.92,21.61
.complete 66001,2 
step
>>使用任何能力都会失败
.goto 2022,55.21,26.27,30,0
.goto 2022,54.99,30.77
.complete 66001,3 
.timer 18,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,55.10,31.04
.skipgossip 1
.turnin 66001 >>Turn in A Last Hope
.accept 66114 >>接任务: |cRXP_WARN_为了女王的福祉|r
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,55.10,31.03
.skipgossip 1
.timer 67,Ride to the Ruby Lifeshrine
.complete 66114,1 
step
#completewith next
+你可以跳过下一部电影。
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstraza
.goto 2022,62.34,73.02
.skipgossip 187290,1
.complete 66114,2 
.target Alexstraza the Life-Binder
step
.goto 2022,62.34,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.turnin 66114 >>Turn in For the Benefit of the Queen
.accept 68795 >>接任务: |cRXP_WARN_驭龙术|r
.accept 66115 >>接任务: |cRXP_WARN_红龙信条|r
.target Alexstraza the Life-Binder
step
#completewith WakingShoreMandateOfRed1
.goto 2022,61.90,73.82
.home >>将你的炉石设置为红宝石生命神殿
.target Lifecaller Tzadrak
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]|cfff78300激活NPC旁边的RP步行，以便更容易与他们交谈|r
step
#label WakingShoreMandateOfRed1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xius
.goto 2022,60.70,74.06
.skipgossip 1
.complete 66115,1 
.target Xius
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akxall
.goto 2022,59.36,72.41
.skipgossip 1
.complete 66115,2 
.target Akxali
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,59.92,69.98,40,0
.goto 2022,58.37,67.12
.skipgossip 193287,1
.timer 26,Roleplay Duration
.complete 68795,1 
.target Lord Andestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.accept 70132 >>接任务: |cRXP_WARN_英雄留步|r
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t使用|cffffff00[ExtraActionButton]|r并再次与Veritistrasz对话
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,1 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,2 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.turnin 70132 >>Turn in Stay a While
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.turnin 68795 >>Turn in Dragonriding
.accept 65118 >>接任务: |cRXP_WARN_驭滑翔术|r
.target Lord Andestrasz
step
#completewith WakingShoreHowtoUseMomentumwithYourDragon
+任务失败时可以使用|T134376:0|t[青铜计时器]
.use 188139
step
>>使用|T4622499:0:0|t[更新的原始德雷克]学习你的第一个龙之坐骑并登上。
.use 194034
.goto 2022,57.66,66.89
.complete 65118,1 
step
>>向前走，滑过黄环。
.goto 2022,57.42,60.00
.complete 65118,2 
.complete 65118,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.10
.turnin 65118 >>Turn in How To Dive with Your Dragon
.target Celormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.88
.accept 65120 >>接任务: |cRXP_WARN_驭龙俯冲术|r
.target Lord Andestrasz
step
>>向前走，向下瞄准，沿着黄环走。
.goto 2022,57.47,59.09
.complete 65120,1 
.complete 65120,2 
.complete 65120,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.09
.turnin 65120 >>Turn in How to Use Momentum with Your Dragon
.target Celormu
step
.goto 2022,57.66,66.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 77345 >>接任务: |cRXP_WARN_极品飞龙|r
.target Lord Andestrasz
step
>>使用您的|cRXP_WARN_Dragonrideing Mount|r
.complete 77345,1 
step
>>遵循黄色的环。在每一个之后使用|T4640490:0|t[向前浪涌]。不要过度使用。
.goto 2022,56.97,62.83
.complete 77345,2 
step
>>Land on the rock
.goto 2022,57.37,59.01
.complete 77345,3 
step
.goto 2022,57.47,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 77345 >>Turn in The Need For Higher Velocities
.target Celormu
step
.goto 2022,57.66,66.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 68796 >>接任务: |cRXP_WARN_天顶观察站|r
.target Lord Andestrasz
step
.goto 2022,57.65,66.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.accept 65133 >>接任务: |cRXP_WARN_天顶观察站|r
.target Lord Andestrasz
step
>>向前走，向下瞄准，沿着黄环走。
.goto 2022,57.47,59.09
.complete 65133,1 
.complete 65133,2 
.complete 65133,3 
step
#label WakingShoreHowtoUseMomentumwithYourDragon
.goto 2022,57.48,59.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.turnin 65133 >>Turn in How to Use Momentum with Your Dragon
.target Celorumu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.accept 68796 >>接任务: |cRXP_WARN_天顶观察站|r
.target Lord Andestrasz
step
#completewith next
.goto 2022,57.81,68.11
.fp >>获取Ruby Lifesherine飞行路线
.target Vaknai
step
#sticky
.goto 2022,57.93,68.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 67564 >>接任务: |cRXP_WARN_工匠邮差|r
.target Haephesta
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.72,66.72
.skipgossip 1
.timer 12,Roleplay Duration
.complete 68796,1 
.target Celormu
step
#completewith next
+你可以打开你的拼写书，点击龙之术，如果你想阅读龙之术的内容，可以将鼠标悬停在龙之术基础技能上。
step
>>确保飞越每一个环
.complete 68796,2 
step
.goto 2022,75.18,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68796 >>Turn in The Skytop Observatory
.accept 68797 >>接任务: |cRXP_WARN_新生犄角|r
.target Lord Andestrasz
step
#title Dragon Glyph: Skytop Observatory Rostrum
.goto 2022,74.33,57.56
.achievement 16575,2 >>拿起空中的龙雕
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glensera
.goto 2022,74.11,57.93
.complete 68797,1 
.target Glensera
step
>>与变形花名册（地面上的五边形）互动。立即取消
.goto 2022,74.03,58.16
.complete 68797,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,75.18,54.97
.turnin 68797 >>Turn in A New Set of Horns
.accept 68798 >>接任务: |cRXP_WARN_巨龙魔符与你|r
.target Lord Andestrasz
step
>>使用你的龙骑并在空中飞行通过字形
.goto 2022,74.35,57.76
.complete 68798,1 
step
#completewith WakingShoreDragpnGlyphandYou
.gossipoption 107095
.gossipoption 107099 >>Talk to Lithragosa to enable your passenger seat
.goto 2022,74.57,56.97
.target Lithragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lithragosa and learn the first skill named 'Drake and Rider Training'
.goto 2022,74.57,56.97
.skipgossip 2
.complete 68798,2 
.complete 68798,3 
.complete 68798,4 
.target Lithragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu. |cffffff00Hold one vigor charge so you can get back faster|r
.goto 2022,73.25,52.06
.complete 68798,5 
.target Celormu
step
#label WakingShoreDragpnGlyphandYou
.goto 2022,75.17,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68798 >>Turn in Dragon Glyphs and You
.accept 68799 >>接任务: |cRXP_WARN_返回红玉新生圣地|r
.target Lord Andestrasz
step
>>Mount Relastrasza
.goto 2022,75.01,55.58
.complete 68799,1 
.target Relastrasza
step
#title Dragon Glyph: Skytop Observatory Tower
.goto 2022,75.24,57.09
.achievement 16575,1 >>在塔上方捡起你上方的龙雕
step
#completewith next
.hs >>向Ruby Lifesherine致敬
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2022,62.34,73.02
.turnin 68799 >>Turn in Return to the Ruby Lifeshrine
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mother Elion
.goto 2022,61.6,68.71
.skipgossip 1
.complete 66115,3 
.target Mother Elion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana
.goto 2022,62.78,70.43
.skipgossip 189260,1
.complete 66115,4 
.target Zahkrana
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana again
.goto 2022,62.78,70.43
.turnin 66115 >>Turn in The Mandate of the Red
.target Zahkrana
step
.goto 2022,62.18,70.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Amella
.accept 70061 >>接任务: |cRXP_WARN_羽翼训练|r
.target Amella
step
#completewith next
+带着你的Dragonriding坐骑滑翔到Ruby Whelpling
step
>>安装Ruby Whelpling
.goto 2022,61.09,71.46
.skipgossip 1
.complete 70061,1 
.target Ruby Whelpling
step
#completewith next
+垃圾邮件|T135808:0|t燃烧树皮（1）用来杀死敌人，它的目标是你正在寻找的地方。使用飞行速度（2）加速。
step
>>杀死该地区的敌人
.complete 70061,4 
.complete 70061,3 
.complete 70061,2 
step
#completewith next
+|cfff78300离开车辆|r
step
#completewith next
+使用您的龙骑坐骑飞往Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 70061 >>Turn in Training Wings
.goto 2022,62.32,72.90
.accept 66931 >>接任务: |cRXP_WARN_谁人作乱？|r
.goto 2022,62.34,73.02
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thomas Bright
.goto 2022,60.23,72.18
.turnin 67564 >>Turn in Artisan's Courier
.target Thomas Bright
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>Follow the arrow
.goto 2022,59.46,72.72
.complete 66931,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,59.49,72.61
.turnin 66931 >>Turn in Who Brought the Ruckus?
.accept 66116 >>接任务: |cRXP_WARN_首要威胁|r
.target Majordomo Selistra
step
>>滑翔至下方冰霜区的指挥官Lethanak处
.goto 2022,59.44,75.87
.complete 66116,1 
.complete 66116,2 
.target Commander Lethanak
step
.goto 2022,59.41,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.turnin 66116 >>Turn in The Primary Threat
.accept 66118 >>接任务: |cRXP_WARN_磐石来袭|r
.accept 66117 >>接任务: |cRXP_WARN_肃清战场|r
.target Commander Lethanak
step
#completewith WakingShoreCutOfftheHead
>>在执行其他目标的同时杀死该区域的敌人|cfff78300现在不要试图完成它。你可以稍后完成|r

.complete 66117,1 
step
.pve
>>杀死航路点周围愤怒的悬崖
.goto 2022,60.93,77.56,25,0
.goto 2022,61.27,79.08,25,0
.goto 2022,60.73,78.72,0,0
.complete 66118,1,1 
.target Enraged Cliff
step
.pve
#completewith next
+登上飞机，飞往航路点位置
step
.pve
#label WakingShoreTerillodtheDevout
>>杀死|cff00ecffTerillo|r。小心不要被击倒
.goto 2022,60.64,83.01
.accept 70751 >>接任务: |cRXP_WARN_虔心者泰利罗德|r
.complete 70751,1 
step
>>杀死大石头元素
.goto 2022,61.27,79.10,25,0
.goto 2022,59.71,78.62,25,0
.goto 2022,57.82,76.81,25,0
.goto 2022,60.65,78.43
.complete 66118,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak and Majordomo Selistra
.turnin 66118 >>Turn in Basalt Assault
.accept 66122 >>接任务: |cRXP_WARN_始祖战术|r
.goto 2022,59.41,75.88
.accept 66121 >>接任务: |cRXP_WARN_抢救龙蛋|r
.goto 2022,59.49,76.16
.target Commander Lethanak
.target Majordomo Selistra
step
#completewith WakingShoreEggEvac
>>对Galestack Proto Dragons使用|T135133:0:0|t[红宝石长矛]来削弱它们
.use 192436
.complete 66122,2 
step
>>右键单击青铜蛋
.goto 2022,56.13,81.29
.complete 66121,1 
step
>>右键单击Azure Egg
.goto 2022,57.32,80.64,65,0
.goto 2022,57.35,83.28
.complete 66121,2 
step
>>右键单击翡翠蛋
.goto 2022,55.32,83.31
.complete 66121,3 
step
#completewith next
>>Kill Klozicc
.goto 2022,54.77,82.22,15,0
.accept 66960 >>接任务: |cRXP_WARN_升腾者克罗基克|r
.complete 66960,1 
step
#label WakingShoreEggEvac
>>右键单击Ruby Egg
.goto 2022,54.99,80.95
.complete 66121,4 
step
>>Kill Klozicc
.goto 2022,54.77,82.22
.accept 66960 >>接任务: |cRXP_WARN_升腾者克罗基克|r
.complete 66960,1 
step
>>用|T135133:0:0|t[Ruby Spear]对你上方的Galestack Proto Dragons进行削弱
.use 192436
.goto 2022,55.03,82.08,35,0
.goto 2022,56.37,80.47,35,0
#loop
.line 2022,55.03,82.08,56.37,55.15,82.96,57.24,82.82,80.47,55.03,82.08,56.37,80.47,55.03,82.08
.goto 2022,55.03,82.08,35,0
.goto 2022,56.37,55.15,35,0
.goto 2022,82.96,57.24,35,0
.goto 2022,82.82,80.47,35,0
.goto 2022,55.03,82.08,35,0
.goto 2022,56.37,80.47,35,0
.goto 2022,55.03,82.08,35,0
.complete 66122,2 
step
.goto 2022,53.68,80.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.turnin 66122 >>Turn in Proto-Fight
.turnin 66121 >>Turn in Egg Evac
.accept 66123 >>接任务: |cRXP_WARN_擒贼先擒王|r
.target Majordomo Selistra
step
>>使用|T135133:0:0|t[Ruby Spear]对Jadzigesh进行削弱
.use 192436
.goto 2022,53.68,83.04
.complete 66123,1 
.unitscan Jadzigeth
step
#label WakingShoreCutOfftheHead
.goto 2022,53.67,80.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与塞利斯特拉少校交谈
.turnin 66123 >>Turn in Cut Off the Head
.accept 66124 >>接任务: |cRXP_WARN_胜利转进|r
.target Majordomo Selistra
step
>>在执行其他目标的同时杀死该区域的敌人
#loop
.line 2022,55.03,82.08,56.37,55.15,82.96,57.24,82.82,80.47,55.03,82.08,56.37,80.47,55.03,82.08
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,55.15,20,0
.goto 2022,82.96,57.24,20,0
.goto 2022,82.82,80.47,20,0
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,80.47,20,0
.goto 2022,55.03,82.08,20,0
.complete 66117,1 
step
#requires WakingShoreCleartheBattlefield
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,46.14,78.54
.skipgossip 187278,1
.complete 66124,1 
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 66124 >>Turn in Exeunt, Triumphant
.goto 2022,45.45,73.04,30,0
.goto 2022,46.14,78.51
.accept 66079 >>接任务: |cRXP_WARN_拉希奥在等待|r
.goto 2022,46.09,78.29
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>|cfff78300仅当您没有剩余的VIGOR电荷时|r使用|T1405809:0|t[枪鞋]
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Scalecommander Emberthal
.turnin 66079 >>Turn in Wrathion Awaits
.goto 2022,42.47,66.84
.accept 72241 >>接任务: |cRXP_WARN_过往的教训|r
.goto 2022,42.47,66.78
.target Wrathion
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Scalecommander. You can skip the cutscene.
.goto 2022,42.47,66.79
.skipgossip 192795,1
.complete 72241,1 
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal and Wrathion
.turnin 72241 >>Turn in Lessons from Our Past
.accept 66048 >>接任务: |cRXP_WARN_最佳计划与打算|r
.goto 2022,42.47,66.78
.accept 66078 >>接任务: |cRXP_WARN_刀锋训练|r
.goto 2022,42.47,66.84
.target Scaleecommander Emberthal
.target Wrathion
step
#completewith next
.gossipoption 55311 >>Talk to Fao the Relentless then interact with the plan in the tent
.goto 2022,42.41,66.18
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fao the Relentless then interact with the plan in the tent
.goto 2022,42.41,66.06
.skipgossip 1
.complete 66048,1 
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Forgemaster Bazentus
.goto 2022,42.82,66.86
.skipgossip
.complete 66048,4 
.target Forgemaster Bazentus
step
#completewith WakingShoresBestPlansandIntentionsEdres
.gossipoption 55307 >>Talk to Archivist Edress. Do other steps while she talks.
.goto 2022,43.76,67.28
.complete 66048,2 
.target Archivist Edres
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them. You can aggro multiple at once.
.goto 2022,42.56,67.51,20,0
.skipgossip
.complete 66078,1 
step
#label WakingShoresBestPlansandIntentionsEdres
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia then Click on the Binoculars
.goto 2022,42.30,69.29
.complete 66048,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them
.goto 2022,42.56,67.51
.skipgossip
.complete 66078,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the NPCs at the waypoint locations
.complete 66048,1 
.goto 2022,42.41,66.06
.complete 66048,4 
.goto 2022,42.82,66.86
.complete 66048,2 
.goto 2022,43.76,67.28
.complete 66048,3 
.goto 2022,42.23,69.33
.skipgossip
.target Talonstalker Kavia
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66048 >>Turn in Best Plans and Intentions
.turnin 66078 >>Turn in Sharp Practice
.timer 24,Roleplay Duration
.target Wrathion
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Do-Yeon
.goto 2022,42.26,66.25
.fp >>获取黑石堡垒飞行路线
.target Do-Yeon Shadowrider
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tong the Fixer, repair and sell if you need
.goto 2022,43.12,66.56
.home >>将你的炉石设置为黑石堡垒
.target Tong the Fixer
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.accept 65957 >>接任务: |cRXP_WARN_既生贾拉丁……|r
.accept 65956 >>接任务: |cRXP_WARN_利爪打击|r
step
#title Dragon Glyph: Obsidian Bulwark
.goto 2022,40.96,71.89
.achievement 16575,6 >>在山顶拾起龙雕
step
.pve
.xp 62.7,1
.goto 2022,37.45,71.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.accept 66003 >>接任务: |cRXP_WARN_环驭众火|r
.target Earthcaller Yevaa
step
.pve
.isOnQuest 66003
>>杀死|cff00ecffBlazing Manifessions|r。然后抢劫捆绑环
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
#loop
.line 2022,,37.99,71.58,38.15,73.04,37.31,73.68,,36.75,72.98,37.12,71.84,38.05,69.42
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.31,73.68,22,0
.goto 2022,36.75,72.98,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
.complete 66003,1 
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.turnin -66003 >>Turn in Rings To Bind Them
.target Earthcaller Yevaa
step
.pve
.isQuestTurnedIn 66003
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.accept 66369 >>接任务: |cRXP_WARN_大地结界|r
.target Earthcaller Yevaa
step
.pve
.isOnQuest 66369
>>点击地球守卫
.goto 2022,37.54,71.23
.complete 66369,1 
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.turnin -66369 >>Turn in The Earthen Ward
.target Earthcaller Yevaa
step
.pve
.isQuestTurnedIn 66369
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.accept 66368 >>接任务: |cRXP_WARN_风暴中的岛屿|r
.target Earthcaller Yevaa
step
.pve
.isOnQuest 66368
#completewith next
>>杀死|cff00ecffBlazing宣言|r
.complete 66368,1 
step
.pve
.isOnQuest 66368
.goto 2022,37.62,75.10
.complete 66368,2 
.unitscan Melter Igneous
step
.pve
.isOnQuest 66368
>>杀死|cff00ecffBlazing宣言|r
.goto 2022,37.98,76.02,20,0
.goto 2022,39.58,74.41,20,0
.goto 2022,39.14,73.14,20,0
.goto 2022,38.01,71.79,20,0
.goto 2022,36.55,71.79,20,0
.goto 2022,36.95,73.62,20,0
#loop
.line 2022,37.98,76.02,39.58,74.41,39.14,73.14,38.01,71.79,36.55,71.79,36.95,73.62
.goto 2022,37.98,76.02,25,0
.goto 2022,39.58,74.41,25,0
.goto 2022,39.14,73.14,25,0
.goto 2022,38.01,71.79,25,0
.goto 2022,36.55,71.79,25,0
.goto 2022,36.95,73.62,25,0
.complete 66368,1 
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.78
.turnin -66368 >>Turn in Island In A Storm
.target Earthcaller Yevaa
step
#completewith WakingShoreNoTimeForTalonStrike
+使用|cffffff00[ExtraActionButton|r造成额外伤害
step
#completewith WakingShoreNoTimeForHeroes
>>|cfff78300避免杀害精英|r。专注于摧毁东西和杀害非精英
.goto 2022,36.43,69.68,20,0
.goto 2022,34.86,61.66,0,0
.complete 65956,1 
step
>>爬上那座塔。杀死|cff00ecffPiercer Gigra|r
.goto 2022,35.53,68.47
.complete 65957,1 
.unitscan Piercer Gigra
step
>>杀死|cff00ecffOlphis|r
.goto 2022,34.79,66.86
.complete 65957,3 
.unitscan Olphis the Molten
step
#title Progress the Bonus Objective
#completewith next
.goto 2022,37.36,63.09,30,0
.goto 2022,36.75,60.09,50 >>杀死你周围的一切
step
#label WakingShoreNoTimeForHeroes
>>爬上那座塔。杀死|cff00ecffModak火焰喷射|r
.goto 2022,35.67,60.73
.complete 65957,2 
.unitscan Modak Flamespit
step
#completewith next
+在地图上的标记区域寻找更多暴徒
step
>>|cfff78300避免杀害精英|r。专注于摧毁东西和杀害非精英
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.complete 65956,1 
step
#label WakingShoreNoTimeForTalonStrike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,33.99,61.29
.turnin 65957 >>Turn in No Time For Heroes
.turnin 65956 >>Turn in Talon Strike
.accept 65939 >>接任务: |cRXP_WARN_决意与勇气|r
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,33.99,61.29
.skipgossip 1
.complete 65939,1 
.target Wrathion
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>沿着箭头从桥的前面开始。
.goto 2022,33.54,61.86,50,0
.goto 2022,30.51,60.88
.complete 65939,2 
step
#completewith WakingShoreAShatteredPast
>>杀死侧面的|cff00ecffQalashi部队|r。不要试图完成此任务
.complete 65939,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,29.14,58.82
.accept 66044 >>接任务: |cRXP_WARN_雄踞高墙|r
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,29.14,58.82
.skipgossip 186933,1
.complete 66044,1 
.target Wrathion
step
#completewith WakingShoreTakingTheWalls
+使用你的龙骑坐骑飞到下一门大炮（或者注意Wrathion）
step
>>Destroy the cannon
.goto 2022,26.81,59.99
.complete 66044,2 
step
>>Destroy the cannon
.goto 2022,29.51,60.99
.complete 66044,3 
step
#label WakingShoreTakingTheWalls
>>Destroy the cannon
.goto 2022,27.79,56.66
.complete 66044,4 
step
>>在该地区周围巡逻
.goto 2022,26.94,57.07
.complete 66044,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,26.42,58.75
.turnin 66044 >>Turn in Taking the Walls
.accept 66049 >>接任务: |cRXP_WARN_黑曜誓言石|r
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,27.30,62.58
.skipgossip 187045,1
.complete 66049,1 
.target Wrathion
step
>>与誓言互动
.goto 2022,27.62,63.34
.complete 66049,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Forgemaster Bazentus after a short roleplay
.turnin 66049 >>Turn in Obsidian Oathstone
.goto 2022,27.30,62.59
.accept 66055 >>接任务: |cRXP_WARN_崩解的过去|r
.goto 2022,27.26,62.80
.target Wrathion
.target Forgemaster Bazentus
step
#label test3
.goto 2022,27.06,60.88
.complete 66055,1 
step
#label WakingShoreAShatteredPast
>>顺着箭头走，捡起地上的物体
.goto 2022,27.11,60.51,15,0
.goto 2022,26.02,59.29,15,0
.goto 2022,25.60,59.49,15,0
.goto 2022,23.46,59.87,15,0
.goto 2022,22.76,59.88,15,0
.goto 2022,22.90,58.85,15,0
.goto 2022,23.21,58.94,15,0
.goto 2022,24.28,57.92,15,0
.goto 2022,24.96,58.16,15,0
.goto 2022,25.16,57.05,15,0
.goto 2022,25.01,55.77
.complete 66055,2 
step
#completewith WakingShoreTheCourageofOnesConvictionTurnin
.goto 2022,27.15,60.86,10 >>Leave the vault
step
>>杀死侧面的卡拉希部队
.goto 2022,27.58,61.18,20,0
.goto 2022,27.93,59.07,20,0
.goto 2022,29.38,58.42,20,0
.goto 2022,30.09,60.41
.complete 65939,3 
step
#label WakingShoreTheCourageofOnesConvictionTurnin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Forgemaster Bazentus
.turnin 65939 >>Turn in The Courage of One's Convictions
.goto 2022,27.30,62.58
.turnin 66055 >>Turn in A Shattered Past
.accept 66056 >>接任务: |cRXP_WARN_铸成新未来|r
.goto 2022,27.25,62.81
step
>>Interact with the Forge
.goto 2022,24.62,60.91
.complete 66056,1 
step
>>捡起地上的煤或杀死|cff00ecff动画Cindershards|r并掠夺他们的煤
.goto 2022,24.48,61.51,10,0
.goto 2022,24.90,61.86,15,0
.goto 2022,25.05,61.43,10,0
.goto 2022,24.79,60.29,10,0
.goto 2022,24.63,59.69,10,0
.goto 2022,25.43,60.57,20,0
.goto 2022,24.48,61.51,10,0
.goto 2022,24.90,61.86,15,0
.goto 2022,24.87,60.80
.complete 66056,2 
step
.goto 2022,24.68,61.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Forgemaster Bazentus
.turnin 66056 >>Turn in Forging A New Future
.accept 66354 >>接任务: |cRXP_WARN_火花|r
.target Forgemaster Bazentus
step
>>与锻造场上的碎片互动
.goto 2022,24.60,60.97
.complete 66354,1 
.timer 17,Roleplay Duration
step
>>Wait for the roleplay
.goto 2022,24.60,60.97
.complete 66354,2 
step
>>捡起锻造厂上的碎片
.goto 2022,24.60,60.97
.complete 66354,3 
step
.goto 2022,24.68,61.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Forgemaster Bazentus
.turnin 66354 >>Turn in The Spark
.accept 66057 >>接任务: |cRXP_WARN_修复信仰|r
.target Forgemaster Bazentus
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,27.30,62.59
.skipgossip
.complete 66057,1 
.target Wrathion
step
#completewith WakingShoreRestoringFaith
+|cfff78300着陆后不要使用移动能力，因为你的任务进度可能会被窃听。
step
>>Mount Wrathion
.goto 2022,27.09,62.22
.complete 66057,2 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
#label WakingShoreRestoringFaith
>>Follow the arrow
.goto 2022,24.47,55.66
.complete 66057,3 
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Sabellian
.turnin 66057 >>Turn in Restoring the Faith
.accept 66780 >>接任务: |cRXP_WARN_王位宣称者|r
.goto 2022,24.42,55.49
.accept 66779 >>接任务: |cRXP_WARN_顺位继承人|r
.goto 2022,24.25,55.87
.target Wrathion
.target Sabellian
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用枪鞋。激活NPC旁边的RP Walk，与他们交谈
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bazentus
.goto 2022,24.38,57.85
.skipgossip 1
.complete 66779,2 
.target Bazentus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Baskilan
.goto 2022,24.32,58.91
.skipgossip 1
.complete 66779,1 
.target Baskilan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archivist Edress twice
.goto 2022,25.11,56.23
.skipgossip 193456,1
.complete 66779,3 
.complete 66780,3 
.target Archivist Edress
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia (patrolling a little)
.goto 2022,26.40,54.61
.skipgossip 1
.complete 66780,1 
.target Talonstalker Kavia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t向左或向右通话
.goto 2022,25.02,55.19
.skipgossip 1
.complete 66780,2 
.target Left
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Sabellian
.turnin 66780 >>Turn in Claimant to the Throne
.goto 2022,24.42,55.47
.turnin 66779 >>Turn in Heir Apparent
.accept 65793 >>接任务: |cRXP_WARN_黑车军团|r
.goto 2022,24.24,55.87
.target Wrathion
.target Sabellian
step
#completewith next
.goto 2022,24.24,55.87
.cooldown item,6948,>0,1
.hs >>黑石壁垒之心
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sabellian
.goto 2022,43.84,66.44
.skipgossip 1
.complete 65793,1 
.complete 65793,2 
.target Sabellion
step
>>这是一个护送任务，所以|cfff78300呆在马车附近|r并尽快杀死产卵的暴民
.goto 2022,47.97,67.18,20,0
.goto 2022,48.64,65.56,20,0
.goto 2022,49.86,65.60,20,0
.goto 2022,52.35,66.82
.complete 65793,3 
step
#completewith next
.vehicle 187292 >>|cfff78300如果你不想带着你的龙骑坐骑飞起来，请使用底部的渡轮（在地图上用步骤号标记）|r
.goto 2022,56.87,66.52,0
step
.goto 2022,57.96,67.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sabellian
.turnin 65793 >>Turn in Black Wagon Flight
.accept 66785 >>接任务: |cRXP_WARN_最后的护卵者|r
.target Sabellian
step
.goto 2022,61.60,68.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mother Elion
.turnin 66785 >>Turn in The Last Eggtender
.accept 66788 >>接任务: |cRXP_WARN_期盼未来|r
.target Mother Elion
step
>>与树叶和杂草互动
*|cfff78300After interacting with the weeds move away to pull them out|r
.goto 2022,61.51,68.68
.complete 66788,1 
.complete 66788,2 
step
>>与Ruby Shringeguard互动
.goto 2022,61.44,69.03
.complete 66788,3 
step
.goto 2022,61.60,68.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mother Elion
.turnin 66788 >>Turn in Egg-cited for the Future
.accept 65791 >>接任务: |cRXP_WARN_生命缚誓者的义务|r
.target Mother Elion
step
.goto 2022,62.34,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.turnin 65791 >>Turn in Life-Binder on Duty
.accept 65794 >>接任务: |cRXP_WARN_照护之责|r
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstraza
.goto 2022,62.34,73.02
.skipgossip 1
.complete 65794,1 
.target Alexstrasza the Life-Binder
step
.goto 2022,61.57,68.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.turnin 65794 >>Turn in A Charge of Care
.accept 65795 >>接任务: |cRXP_WARN_平原下一站|r
.target Alexstrasza the Life-Binder
step
#title Dragon Glyph: Flashfrost Enclave
.goto 2022,58.13,78.64
.achievement 16575,3 >>在空中的洞穴上方捡起你上方的龙雕
step
#title Dragon Glyph: Rubyscale Outpost
.goto 2022,48.82,86.73
.achievement 16576,11 >>拿起空中的龙雕
step
.goto 2022,48.28,88.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Taurasza
.turnin 65795 >>Turn in Next Steppes
.accept 65779 >>Accept Into the Plains
.target Ambassador Taurasza
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup Threads of Fate 60-70
#displayname Chapter 1 - The Waking Shores ToF
#name A1The Waking Shores ToF
#next B2Ohn'ahran Plains ToF



step << Horde !Dracthyr
>>这应该会自动出现在你的任务日志中
.accept 65435 >>接任务: |cRXP_WARN_巨龙群岛在等待|r
step << Horde !Dracthyr
#completewith MasterRiding
.goto 85,51.19,63.09,15,0
.goto 85,50.53,61.63,15 >>乘电梯到Orgrimmar的上部
.skill riding,225,1
step << Horde !Dracthyr
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>培训专家和驾驭大师
.target Maztha
.skill riding,225,1
step << Horde !Dracthyr
#label MasterRiding
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>Train Master Riding
.target Maztha
step << Horde !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
>>按键盘上的“Escape”可跳过电影
.goto 84,44.08,37.99
.turnin 65435 >>Turn in The Dragon Isles Await
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
.accept 65437 >>接任务: |cRXP_WARN_守护巨龙之邀|r
.complete 65437,1 
.turnin 65437 >>Turn in Aspectral Invitation
.goto 85,44.06,37.97
.skipgossip 190239,1
.target Ebyssian
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleida and Cindrethresh
.accept 65443 >>接任务: |cRXP_WARN_探险协同|r
.goto 85,44.19,37.79
.accept 72256 >>接任务: |cRXP_WARN_暗爪营|r
.goto 85,44.04,38.25
.target Naleidea Rivergleam
.target Scalecommander Cindrethresh
step << Horde
.goto 85,38.59,56.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tacha
.complete 65443,2 
.skipgossip
.target Pathfinder Tacha
step << Horde
.goto 85,57.09,54.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Magor
.complete 65443,1 
.skipgossip
.target Boss Magor
step << Horde
.goto 85,70.36,49.01,10,0
.goto 85,71.44,50.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coralie upstairs in The Wyvern's Tail
.complete 65443,3 
.skipgossip
.target Cataloger Coralie
step << Horde
.goto 85,55.08,89.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kodethi on top of the Wall of Orgrimmar
.complete 72256,1 
.target Kodethi
.skipgossip
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea and Khadgar
>>按键盘上的“Escape”可跳过电影
.turnin 65443 >>Turn in Expeditionary Coordination
.turnin 72256 >>Turn in The Dark Talons
.goto 1,55.81,12.66
.accept 65439 >>接任务: |cRXP_WARN_风中耳语|r
.complete 65439,1 
.goto 1,55.92,12.61
.timer 3,Khadgar Appearance
.skipgossip 193450,1
.target Naleidea Rivergleam
.target Archmage Khadgar
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian and Naleidea
.turnin -65439 >>交任务: |cRXP_FRIENDLY_风之细语|rs
.turnin -70198 >>交任务: |cRXP_FRIENDLY_群岛的召唤|r
.goto 1,55.85,12.74
.accept 65444 >>接任务: |cRXP_WARN_出发！巨龙群岛！|r
.goto 1,55.81,12.66
.target Ebyssian
.target Naleidea Rivergleam
step << Horde
#completewith next
+您可以在Skarukaru上方看到到达时间。如果你看不见，就和她谈谈。
step << Horde
.goto 1,55.96,13.18
>>等待齐柏林飞船的到来。如果你想知道需要多长时间才能到达，请与Sharukaru联系
.complete 65444,1 
step << Horde
#completewith HordeArrivingInDragonIsles
+|cffffff00命运的一般线索注释：|r
*- Make sure to spend all your |cff00ecffDragon Glyphs|r in the Dragonriding tree (minimap button)
*- Loot |cff00ecffDjaradin Caches|r, |cff00ecffDecay Covered Chests|r, or |cff00ecffClan Chests|r (they reward xp)
*- Dragonriding races give experience the first time you do them but they're only worth doing in combination with a world quest
*- Most of the good world quests are included in the guide
step << Horde
.zoneskip 2022
.isOnQuest 65444
.goto 1,55.99,13.33
.zone 1978 >>齐柏林飞船到达时，请乘坐齐柏林飞船。在航路点位置等待
step << Horde
#completewith next
.zone 2022 >>齐柏林飞船的跳跃。你会被移到前面（如果不是游到船上点击它）|cffffff00当你的加载屏幕长到约15秒时，不要跳过|r。
step << Horde
#label HordeArrivingInDragonIsles
.goto 2022,80.83,27.80
.complete 65444,2 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam, Scalecommander Cindrethresh and Boss Magor
.turnin 65444 >>Turn in To the Dragon Isles!
.accept 65452 >>接任务: |cRXP_WARN_探险者遇险|r
.goto 2022,80.62,27.60
.accept 65453 >>接任务: |cRXP_WARN_原始龙害|r
.accept 65451 >>接任务: |cRXP_WARN_练手材料|r
.goto 2022,80.63,27.63
step << Horde
#completewith WakingShoresExplorersInPeril
>>杀死|cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
#completewith WakingShoresExplorersInPeril
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
.complete 65451,1 
step << Horde
>>摧毁原龙肋笼
.goto 2022,79.80,28.20,25,0
.goto 2022,80.37,26.34
.complete 65452,1 
step << Horde
>>营救档案管理员Spearbloom
*Look above you!
.goto 2022,78.71,24.52
.complete 65452,2 
step << Horde
.accept 66076 >>接任务: |cRXP_WARN_[Ancient Hornswog]|r
.goto 2022,78.17,23.22
.complete 66076,1 
.goto 2022,77.29,22.04
step << Horde
#label WakingShoresExplorersInPeril
>>帮助懒人挂在链子上
.goto 2022,77.37,29.77
.complete 65452,3 
step << Horde
#completewith next
>>杀死|cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
.goto 2022,77.95,28.09,10,0
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65451,1 
step << Horde
>>杀死|cff00ecffBig Proto Drakes|r
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65453,1 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam
.goto 2022,76.61,33.60
.turnin 65452 >>Turn in Explorers in Peril
.accept 69910 >>接任务: |cRXP_WARN_拉希奥呢？|r



step << Alliance !Dracthyr
>>这应该会自动出现在你的任务日志中
.accept 65436 >>接任务: |cRXP_WARN_巨龙群岛在等待|r
step << Alliance !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion in Stormwind
.goto 84,79.81,27.04
.turnin 65436 >>Turn in The Dragon Isles Await
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.accept 66577 >>接任务: |cRXP_WARN_守护巨龙之邀|r
.goto 84,79.81,27.04
.skipgossip 189569,1
.complete 66577,1 
.turnin 66577 >>Turn in Aspectral Invitation
.target Wrathion
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel and Toddy Whiskers
.accept 72240 >>接任务: |cRXP_WARN_黑卫营|r
.goto 84,79.95,26.95
.target Scalecommander Azurathel
.accept 66589 >>接任务: |cRXP_WARN_探险协同|r
.goto 84,79.73,27.35
.target Toddy Whiskers
step << Alliance
>>稍微往外走一点，这样你就可以爬上去了
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin
.goto 84,79.45,26.89,3,0
.goto 84,64.12,37.21
.skipgossip 1
.complete 66589,1 
.target Thaelin Darkanvil
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd
.goto 84,63.36,69.91
.skipgossip
.complete 66589,3 
.target Cataloger Wulferd
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
.goto 84,50.91,67.36
.skipgossip
.complete 72240,1 
.target Dervishian
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Pathfinder Jeb
.goto 84,38.26,45.52
.skipgossip
.complete 66589,2 
.target Pathfinder Jeb
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.goto 84,22.70,55.66
.turnin 66589 >>Turn in Expeditionary Coordination
.turnin 72240 >>Turn in The Obsidian Warders
.target Toddy Whiskers
step << Alliance
.goto 84,22.94,56.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.accept 66596 >>接任务: |cRXP_WARN_风中耳语|r
.skipgossip
.complete 66596,1 
.target Archmage Khadgar
step << Alliance
.goto 84,22.92,56.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66596 >>交任务: |cRXP_FRIENDLY_风之细语|rs
.target Wrathion
step << Alliance
>>等待船只抵达
.goto 84,22.36,55.98
.complete 67700,1 
step << Alliance
.goto 84,22.73,55.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin -70197 >>交任务: |cRXP_FRIENDLY_群岛的召唤|r
.accept 67700 >>接任务: |cRXP_WARN_出发！巨龙群岛！|r
.target Toddy Whiskers
step << Alliance
#completewith AllianceArrivingDragonIsles
+|cffffff00命运的一般线索注释：|r
*- Make sure to spend all your |cff00ecffDragon Glyphs|r in the Dragonriding tree (minimap button)
*- Loot |cff00ecffDjaradin Caches|r, |cff00ecffDecay Covered Chests|r, or |cff00ecffClan Chests|r (they reward xp)
*- Dragonriding races give experience the first time you do them but only do them in combination with a world quest
*- Most of the good world quests are included in the guide
step << Alliance
.isOnQuest 67700
.goto 84,20.82,53.83
.zone 1978 >>在大木板上走到船的前面
step << Alliance
#completewith next
.zone 2022 >>跳船。你会被移到前面（如果不是游到船上点击它）|cffffff00当你的加载屏幕长到约15秒时，不要跳过|r。
step << Alliance
#label AllianceArrivingDragonIsles
.goto 2022,82.13,31.88
.complete 67700,2 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers, Thaelin Darkanvil and Scalecommander Azurathel
.turnin 67700 >>Turn in To the Dragon Isles!
.accept 70122 >>接任务: |cRXP_WARN_探险者遇险|r
.goto 2022,82.13,31.88
.accept 70124 >>接任务: |cRXP_WARN_练手材料|r
.goto 2022,82.09,31.89
.accept 70123 >>接任务: |cRXP_WARN_原始龙害|r
.goto 2022,82.16,31.86
.target Toddy Whiskers
.target Thaelin Darkanvil
.target Scalecommander Azurathel
step << Alliance
#completewith WakingShoresExplorersInPerilCogcatcher
.goto 2022,82.47,32.10,10,0
.goto 2022,82.91,32.54,10 >>顺着箭头上山
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>杀死|cff00ecffthe Big Proto Drakes|r
.complete 70123,1 
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
.complete 70124,1 
step << Alliance
#label WakingShoresExplorersInPerilCogcatcher
>>营救Cogcatcher教授
.goto 2022,83.55,33.59
.complete 70122,1 
.target Professor Cogcatcher
step << Alliance
>>营救在空中的档案管理员Rellid
.goto 2022,83.01,36.30
.complete 70122,2 
.target Archivist Rellid
step << Alliance
>>进入桥上的洞穴。杀死|cff00ecff原始斯基泰德女王|r
.goto 2022,81.17,37.88
.complete 66074,1 
.unitscan Primal Scythid Queen
step << Alliance
#completewith next
.goto 2022,81.88,36.88,20 >>离开洞穴
step << Alliance
#label WakingShoresExplorersInPerilAlliance
>>营救Spelunker Lockeye
.goto 2022,79.54,35.35
.complete 70122,3 
.target Spelunker Lockeye
step << Alliance
#completewith next
>>杀死|cff00ecffthe Big Proto Drakes|r
.complete 70123,1 
step << Alliance
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70124,1 
step << Alliance
>>杀死|cff00ecffthe Big Proto Drakes|r
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70123,1 
step << Alliance
.goto 2022,76.63,33.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin 70122 >>Turn in Explorers in Peril
.accept 70125 >>接任务: |cRXP_WARN_拉希奥呢？|r
.target Toddy Whiskers



step
#completewith point1
+我们只在角色扮演期间接受此区域的任务。严格遵循箭头以获得最大效率
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55636 >>Talk to Sendrax 
.timer 17,Roleplay Duration
.target Sendrax
step << Horde
#completewith WakingShorePractiveMaterialsHorde
>>完成其他步骤
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
#completewith WakingShorePractiveMaterialsAlliance
>>完成其他步骤
.goto 2022,76.58,33.66,0,0
.complete 70125,1 << Alliance 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh and Warlord Breka Grimaxe
.accept 66110 >>接任务: |cRXP_WARN_[Give Peace a Chance]|r
.goto 2022,76.36,33.09
.turnin 65453 >>Turn in Primal Pests
.goto 2022,76.28,33.02
step << Horde
#label WakingShorePractiveMaterialsHorde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Boss Magor
.goto 2022,75.94,33.25
.turnin 65451 >>Turn in Practice Materials
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.goto 2022,75.84,33.49
.accept 66101 >>接任务: |cRXP_WARN_上九天揽月|r
step << Horde
#label WakingShoreInquireMissingDragonsHorde
>>Wait for the roleplay
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
.goto 2022,76.51,34.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kerazal
.daily 70750,72375,72374,72068,72373 >>接任务: |cRXP_WARN_援助联军|r
step << Alliance
.goto 2022,76.49,34.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin Darkanvil
.turnin 70124 >>Turn in Practice Materials
.target Thaelin Darkanvil
step << Dracthyr Alliance
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>接任务: |cRXP_WARN_迷途浪人|r
.target Haephesta
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 1
.complete 70148,1 
.target Kholmar Sunrunner
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 1
.complete 70148,2 
.target Toninaar
step << Alliance
.goto 2022,76.73,34.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.accept 67053 >>接任务: |cRXP_WARN_[Give Peace a Chance]|r
.target Captain Garrick
step << Alliance
.goto 2022,76.75,34.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel
.turnin 70123 >>Turn in Primal Pests
.target Scalecommander Azurathel
step
#label point1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 70125 >>Turn in Where is Wrathion? << Alliance
.turnin 69910 >>Turn in Where is Wrathion? << Horde
.accept 72293 >>接任务: |cRXP_WARN_巨龙群岛探险|r
.target Sendrax
step
>>点击侦察地图并接受Waking Shores任务
.goto 2022,76.51,34.24
.accept 72266 >>接任务: |cRXP_WARN_觉醒海岸|r
.complete 72293,1 
step << Horde
.goto 2022,76.51,34.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kerazal
.daily 70750,72375,72374,72068,72373 >>接任务: |cRXP_WARN_援助联军|r
step
>>在你的任务日志中点击你的小地图下的任务（如果你不能打开它，请重新加载）
.goto 2022,76.58,33.66
.turnin 72293 >>Turn in Adventuring in the Dragon Isles
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 72266 >>Turn in The Waking Shores
.accept 69911 >>接任务: |cRXP_WARN_杂乱不堪，请别见怪|r
step << Dracthyr Horde
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>接任务: |cRXP_WARN_迷途浪人|r
.target Haephesta
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 1
.complete 70148,1 
.target Kholmar Sunrunner
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Fastrasz
.goto 2022,76.33,35.62
.skipgossip 193393,2
.complete 69911,1 
.target Ambassador Fastrasz
step
>>Interact with the book
.goto 2022,76.28,35.62
.skipgossip 1
.complete 69911,2 
step
>>与大石头互动
.goto 2022,75.61,34.17
.complete 69911,3 
step
>>与火盆互动
.goto 2022,78.43,31.80
.complete 69911,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 69911 >>Turn in Excuse the Mess
.accept 69912 >>接任务: |cRXP_WARN_首次紧急情况！|r
.target Sendrax
step
#completewith next
+|cfff78300在角色扮演过程中，上交并完成指定的任务。
step
#completewith WakingShoreFromSuchGreatHeights
>>Wait for the roleplay
.complete 69912,1 
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55637 >>Talk to Sendrax
.timer 33,Roleplay Duration
.target Sendrax
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.goto 2022,75.84,33.49
.accept 66101 >>接任务: |cRXP_WARN_上九天揽月|r
.target Aster Cloudgaze
step
>>Mount the disc
.goto 2022,75.9,33.58
.complete 66101,1 
step
>>使用第一个功能（1），然后按Esc键取消过场。
.goto 2022,76.42,33.72
.complete 66101,2 
step
>>使用第二种能力（2），然后按Esc键取消过场。
.goto 2022,75.70,33.45
.complete 66101,3 
step
>>使用第三种能力（3），然后按Esc键取消过场。
.goto 2022,75.87,33.35
.complete 66101,4 
step
#completewith next
+|cfff78300立即离开车辆|r
step
#label WakingShoreFromSuchGreatHeights
.goto 2022,75.84,33.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.turnin 66101 >>Turn in From Such Great Heights
.target Aster Cloudgaze
step << Alliance
.goto 2022,76.36,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 67053 >>Turn in Give Peace a Chance
.accept 70135 >>接任务: |cRXP_WARN_侵蚀元素|r
.target Warlord Breka Grimaxe
step
#completewith next
.goto 2022,76.31,34.33,10 >>按照航路点触发下一个角色扮演（基于接近度）
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.goto 2022,76.73,34.55
.turnin 66110 >>Turn in Give Peace a Chance
.accept 66111 >>接任务: |cRXP_WARN_侵蚀元素|r
.target Captain Garrick
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 1
.complete 70148,2 
.target Toninaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.goto 2022,76.35,34.64
.accept 66112 >>接任务: |cRXP_WARN_可劲造|r
.target Grun Ashbeard
step
#completewith WakingShorePrimalEarthenCore
>>杀死大部分的小火元素。地球元素要强硬得多。
.goto 2022,73.89,33.74,0,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step
#title Dragon Glyph: Wingrest Embassy
.goto 2022,74.91,37.44
.achievement 16575,5 >>捡起小塔上方的龙雕
step
#completewith next
.goto 2022,75.52,36.34,15,0
.goto 2022,75.78,37.01,10 >>进入洞穴
step
#label WakingShorePrimalEarthenCore
>>进入洞穴并杀死|cff00ecffBaron Cruscore|r。掠夺他的核心
.goto 2022,74.88,39.31
.complete 66112,2 
step
#completewith next
.goto 2022,75.78,37.01,20 >>离开洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Majordomo Selistra
.turnin 69912 >>Turn in My First Real Emergency!
.goto 2022,76.18,34.50
.accept 69914 >>接任务: |cRXP_WARN_贾拉丁苏醒|r
.goto 2022,76.22,34.53
.target Wrathion
.target Majordomo Selistra
step
#completewith WakingShorePrimalEarthenCore
>>Wait for the roleplay
.skipgossip 193372,1
.complete 69914,1 
step
#completewith next
.goto 2022,76.22,34.53
.gossipoption 55872 >>Talk to Majordomo Selistra
.timer 50,Roleplay Duration
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.goto 2022,76.41,34.45
.accept 69965 >>接任务: |cRXP_WARN_质量保证|r
.target Haephesta
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster
.goto 2022,75.85,33.50
.skipgossip 1
.complete 70148,3 
.target Aster Cloudgaze
step
#completewith WakingShoresQualityAssurance
>>专注于杀死|cff00ecff小火元素|r
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>与墙上的笔记互动
.goto 2022,75.05,33.52
.complete 70148,4 
step
#title Geodes Excavated 1
>>点击火山大地测量仪
.goto 2022,74.57,33.51
.complete 69965,1,1 
step
#title Geodes Excavated 2
>>点击火山大地测量仪
.goto 2022,73.93,33.23
.complete 69965,1,2 
step
#title Geodes Excavated 3
>>点击火山大地测量仪
.goto 2022,73.56,32.21
.complete 69965,1,3 
step
#label WakingShorePrimalMoltenCore
>>杀死|cff00ecffBaron Ashflow |r。掠夺他的核心
.goto 2022,72.91,32.97
.complete 66112,1 
step
#title Geodes Excavated 4
>>点击火山大地测量仪
.goto 2022,72.88,33.73
.complete 69965,1,4 
step
#title Geodes Excavated 5
>>点击火山大地测量仪
.goto 2022,72.94,34.12
.complete 69965,1,5 
step
#label WakingShoresQualityAssurance
#title Geodes Excavated 6
>>点击火山大地测量仪
.goto 2022,73.63,33.89
.complete 69965,1 
step << Dracthyr
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip
.complete 70148,5 
.target Talon Ethrethi
step
>>杀死大部分|cff00ecff小火元素|r
.goto 2022,74.65,35.28,10,0
#loop
.line 2022,73.62,33.39,74.65,35.28
.goto 2022,73.62,33.39,25,0
.goto 2022,74.65,35.28,25,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip
.complete 70148,5 
.target Talon Ethrethi
step
>>Wait for the roleplay
.goto 2022,76.22,34.53
.complete 69914,1 
step
#requires WakingShoresEncroachingElementals
.goto 2022,76.26,34.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.turnin 69914 >>Turn in The Djaradin Have Awoken
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax then immediately turn in the next Quests
.accept 65760 >>接任务: |cRXP_WARN_报到|r
.goto 2022,76.26,34.40
.target Sendrax
step
.goto 2022,76.35,34.64
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.turnin 66112 >>Turn in Always Be Crafting
.target Grun Ashbeard
step
.goto 2022,76.41,34.45
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.turnin 69965 >>Turn in Quality Assurance
.turnin 70148 >>Turn in Without Purpose << Dracthyr
.target Haephesta
step << Alliance
.goto 2022,76.37,33.09
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 70135 >>Turn in Encroaching Elementals
.target Warlord Breka Grimaxe
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
*Immediately go there.
.goto 2022,76.73,34.56
.turnin 66111 >>Turn in Encroaching Elementals
.target Captain Garrick
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.27,34.41
.skipgossip 193363,3
.complete 65760,1 
.target Sendrax
step
>>|cfff78300关注并靠近Sendrax|r
.goto 2022,75.28,36.20,20,0
.goto 2022,73.20,35.96,20,0
.goto 2022,72.29,36.65,20,0
.goto 2022,71.25,40.67
.complete 65760,2 
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65760 >>Turn in Reporting for Duty
.accept 65990 >>接任务: |cRXP_WARN_挽龙崽于毒手|r
.accept 65989 >>接任务: |cRXP_WARN_贾拉丁进犯|r
.target Commander Lethanak
step
#sticky
#label WakingShoreInvaderDjaradin
*Focus on killing |cff00ecffQalashi Scavengers|r. They have the least amount of HP
.goto 2022,70.38,44.91,0,0
.complete 65989,1 
step
>>保存|cff00ff2Whipering Whelpling|r
.goto 2022,71.36,44.65
.complete 65990,1,1 
step
>>保存|cff00ff2Whipering Whelpling|r
.goto 2022,70.97,46.21,10,0
.goto 2022,70.87,46.77,10,0
.goto 2022,71.12,46.98,10,0
.goto 2022,70.97,46.63
.complete 65990,1,2 
step
>>保存|cff00ff2Whipering Whelpling|r
.goto 2022,69.86,45.3
.complete 65990,1,3 
step
>>保存|cff00ff2Whipering Whelpling|r
.goto 2022,69.38,43.26
.complete 65990,1 
step
#requires WakingShoreInvaderDjaradin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65989 >>Turn in Invader Djaradin
.turnin 65990 >>Turn in Deliver Whelps From Evil
.accept 65991 >>接任务: |cRXP_WARN_清算已至|r
.target Commander Lethanak
step
#completewith WakingShoresKilljoyBlacktalinObsidian
>>杀死营地周围的Djaradin敌人。你也可以多次杀死龙虎伊戈尔丹
.goto 2022,62.76,34.50,0,0
.accept 65994 >>接任务: |cRXP_WARN_制裁贾拉丁|r
.complete 65994,1 
.unitscan Dragonhunter Igordan
step
.itemcount 132516,1
#completewith WakingShoreTimeForReckoning
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
#label WakingShoreTimeForReckoning
>>爬上塔，等待雷硫磷。和他谈谈
.goto 2022,68.12,36.87,20,0
.goto 2022,66.59,34.58
.complete 65991,1 
.target Wrathion
step
.goto 2022,66.36,35.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 65991 >>Turn in Time for a Reckoning
.accept 65993 >>接任务: |cRXP_WARN_败兴而归|r
.accept 65992 >>接任务: |cRXP_WARN_黑爪谍报|r
.target Wrathion
step
#label WakingShoreDragonHunderIgordan
>>杀死|cff00ecffDragonhunter Igordan|r。如果他不起来，就杀死你周围的一些暴徒，直到他重生
.goto 2022,64.26,33.05
.accept 66956 >>接任务: |cRXP_WARN_猎龙者伊戈尔丹|r
.complete 66956,1 
.unitscan Dragonhunter Igordan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Right
.goto 2022,65.09,29.35
.skipgossip 1
.complete 65992,3 
step
#completewith next
>>杀死肉馅卷饼手索托克。为夸拉希计划掠夺他。在你的包里点击它
.complete 65993,1 
.collect 193874,1
.accept 65995 >>接任务: |cRXP_WARN_黑曜堡垒|r
.unitscan Meatgrinder Sotok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Left
.goto 2022,64.11,30.33,30,0
.goto 2022,63.43,28.87
.skipgossip 1
.complete 65992,2 
.target Left
step
>>杀死肉馅卷饼手索托克。为夸拉希计划掠夺他。在你的包里点击它
.goto 2022,62.96,29.43
.complete 65993,1 
.collect 193874,1,65995,1
.accept 65995 >>接任务: |cRXP_WARN_黑曜堡垒|r
.unitscan Meatgrinder Sotok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia
.goto 2022,64.58,30.57,30,0
.goto 2022,64.41,33.29,30,0
.goto 2022,63.03,33.34
.skipgossip
.complete 65992,1 
.target Talonstalker Kavia
step
#label WakingShoresKilljoyBlacktalinObsidian
>>爬上楼梯，和Wrathion说话
.goto 2022,62.62,32.67,24,0
.goto 2022,62.65,33.17
.turnin 65993 >>Turn in Killjoy
.turnin 65992 >>Turn in Blacktalon Intel
.turnin 65995 >>Turn in The Obsidian Citadel
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,62.76,33.11
.accept 65996 >>接任务: |cRXP_WARN_老兵援军|r
.target Majordomo Selistra
step
>>杀死营地周围的Djaradin敌人。你也可以多次杀死龙虎伊戈尔丹
.goto 2022,62.17,34.69,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,66.00,36.88,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,62.17,34.69
.accept 65994 >>接任务: |cRXP_WARN_制裁贾拉丁|r
.complete 65994,1 
.unitscan Dragonhunter Igordan
step
#completewith next
+|cfff78300提醒：您可以对“活动项目”进行键绑定|r
+|cfff78300如何键绑定：|r Escape->Options->Keybindings->RestedXP Guides->Select and Bind Active Button 1,2,3 and 4
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*Use a heal spell instead if possible
.use 193917
.goto 2022,60.99,35.63
.complete 65996,1,1 
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*|cffffff00Use a heal spell instead if possible|r
.use 193917
.goto 2022,61.11,36.77
.complete 65996,1,2 
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>接任务: |cRXP_WARN_制火靠……水|r
.target Caretaker Ventraz
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*Use a heal spell instead if possible
.use 193917
.goto 2022,59.04,34.84
.complete 65996,1,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>接任务: |cRXP_WARN_制火靠……水|r
.target Caretaker Ventraz
step
#label WakingShoreFightingFirewithWater
>>杀死洞穴内的火敌
.goto 2022,59.30,33.30
.complete 66998,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.10,34.84
.turnin 66998 >>Turn in Fighting Fire with... Water
.target Caretaker Ventraz
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*Use a heal spell instead if possible
.use 193917
.goto 2022,56.64,34.77
.complete 65996,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Azkra
.goto 2022,54.99,30.76
.turnin 65996 >>Turn in Veteran Reinforcements
.accept 65997 >>接任务: |cRXP_WARN_追逐森德拉克斯|r
.target Caretaker Azkra
step
.goto 2022,54.99,30.77
.complete 65996,2 
step
.itemcount 132516,1
#completewith WakingShoreChasingSendrax
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
#completewith next
+您可以跳过下一个过场（Esc->“是”）。
step
#label WakingShoreChasingSendrax
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,55.18,24.95
.skipgossip 187406,1
.complete 65997,1 
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,55.18,24.95
.turnin 65997 >>Turn in Chasing Sendrax
.accept 65999 >>接任务: |cRXP_WARN_齿爪尽红|r
.accept 65998 >>接任务: |cRXP_WARN_军团的未来|r
.target Sendrax
step
>>Interact with the book
.goto 2022,55.26,24.69
.accept 66000 >>接任务: |cRXP_WARN_阿莱克丝塔萨的藏书馆|r
step
#sticky
#label WakingShoreRedInToothAndClaw
>>在执行其他目标时杀死|cff00ecffPrimalists/Revenants/Taraseks|r
.goto 2022,56.37,22.32,0,0
.complete 65999,1 
step
#completewith WakingShoreFutureoftheFlight
>>当你看到Rekindler|r时杀死她（在该地区巡逻）
.goto 2022,56.97,25.28,0,0
.complete 70648,1 
.unitscan Firava the Rekindler
step
>>Interact with the book
.goto 2022,53.36,22.39
.complete 66000,1,1 
step
>>Interact with the book
.goto 2022,53.47,21.99
.complete 66000,1,2 
step
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.12,22.01
.complete 65998,1 
.complete 65998,2,3 
step
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.71
.complete 65998,2,6 
step
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.89,21.36
.complete 65998,2 
step
>>在建筑内与书籍互动|cffffff00 |r
.goto 2022,54.62,20.36
.complete 66000,1,3 
step
>>在二楼建筑内与书籍互动|cffffff00 |r
.goto 2022,55.08,20.77,10,0
.goto 2022,55.04,20.3,5,0
.goto 2022,54.6,20.62
.complete 66000,1,4 
step
#label WakingShoreFutureoftheFlight
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.73
.complete 65998,2 
step
.isWorldQuestAvailable 2022,69931
>>穿过吊环内的补给品
.goto 2022,52.16,20.52
.complete 69931,1 
step
>>当你看到Rekindler|r时杀死她（在该地区巡逻）
.goto 2022,56.97,25.28
.accept 70648 >>接任务: |cRXP_WARN_重燃者菲拉瓦|r
.complete 70648,1 
.unitscan Firava the Rekindler
step
#requires WakingShoreRedInToothAndClaw
#label WakingShoreDontTurnIn1
#completewith WakingShoreRedInToothAndClawLibraryofAlexstrasza
.goto 2022,56.24,22.14,10 >>|cfff78300在到达航路点位置之前，不要进入队列|r
step
#requires WakingShoreRedInToothAndClaw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65998 >>Turn in Library of Alexstrasza
.target Sendrax
step
#label WakingShoreRedInToothAndClawLibraryofAlexstrasza
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65999 >>Turn in Red in Tooth and Claw
.turnin 66000 >>Turn in Library of Alexstrasza
.accept 66001 >>接任务: |cRXP_WARN_最后的希望|r
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,56.24,22.06
.skipgossip
.timer 16,Roleplay Duration
.complete 66001,1 
step
>>Wait for the Roleplay
.goto 2022,56.92,21.62
.complete 65998,1 
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>在点击蛋之前使用|T1405809:0|t[Gunshoes]|cfff78300右键|r
step
>>Interact with the egg
.goto 2022,56.92,21.61
.complete 66001,2 
step
>>使用任何能力都会失败
.goto 2022,55.21,26.27,30,0
.goto 2022,54.99,30.77
.complete 66001,3 
.timer 18,Roleplay Duration
step
.goto 2022,54.42,30.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Caretaker Zefren
.accept 70179 >>接任务: |cRXP_WARN_一石两用|r
.target Apprentice Caretaker Zefren
step
>>杀死该区域的|cff00ecffEarth元素|r。掠夺他们的材料
.goto 2022,52.79,31.06,20,0
.goto 2022,51.71,31.55,20,0
.goto 2022,50.42,30.99,20,0
.goto 2022,52.79,31.06
.complete 70179,1 
step
.goto 2022,54.44,30.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Caretaker Zefren
.turnin 70179 >>Turn in A Two for One Deal
.target Apprentice Caretaker Zefren
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,55.10,31.04
.skipgossip 1
.turnin 66001 >>Turn in A Last Hope
.accept 66114 >>接任务: |cRXP_WARN_为了女王的福祉|r
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,55.10,31.03
.skipgossip 1
.timer 67,Ride to the Ruby Lifeshrine
.complete 66114,1 
.target Majordomo Selistra
step
#completewith next
+你可以跳过下一部电影。
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstraza
.goto 2022,62.34,73.02
.skipgossip 187290,1
.complete 66114,2 
step
.goto 2022,62.34,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.turnin 66114 >>Turn in For the Benefit of the Queen
.accept 68795 >>接任务: |cRXP_WARN_驭龙术|r
.accept 66115 >>接任务: |cRXP_WARN_红龙信条|r
.target Alexstrasza the Life-Binder
step
#completewith WakingShoreMandateOfRed1
.goto 2022,61.90,73.82
.home >>将你的炉石设置为红宝石生命神殿
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]|cfff78300激活NPC旁边的RP步行，以便更容易与他们交谈|r
step
#label WakingShoreMandateOfRed1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xius
.goto 2022,60.70,74.06
.skipgossip 1
.complete 66115,1 
.target Xius
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akxall
.goto 2022,59.36,72.41
.skipgossip 1
.complete 66115,2 
.target Akxall
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,58.37,67.12
.skipgossip 193287,1
.timer 26,Roleplay Duration
.complete 68795,1 
.target Lord Andestrasz
step
#completewith next
.goto 2022,57.81,68.11
.fp >>获取Ruby Lifesherine飞行路线
step
.goto 2022,57.93,68.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 67564 >>接任务: |cRXP_WARN_工匠邮差|r
.target Haephesta
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thomas Bright
.goto 2022,60.23,72.18
.turnin 67564 >>Turn in Artisan's Courier
.accept 67100 >>接任务: |cRXP_WARN_赠予米格尔|r
.skipgossip 192574,1
.target Thomas Bright
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再次与Thomas Bright交谈
.goto 2022,60.23,72.18
.skipgossip 192574,1
.complete 67100,1 
.target Thomas Bright
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.turnin 68795 >>Turn in Dragonriding
.accept 65118 >>接任务: |cRXP_WARN_驭滑翔术|r
.target Lord Andestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cfff78300暂时忽略任务|r。飞下来与科尔加火焰卫士交谈
.goto 2022,57.12,66.20,25,0
.goto 2022,58.67,67.78
.accept 70239 >>接任务: |cRXP_WARN_难言之隐|r
.target Kolgar Flameguard
step
.isOnQuest 70239
.use 188134
.cast 361475 >>使用青铜计时器
step
#completewith WakingShoreHowtoUseMomentumwithYourDragon
+任务失败时可以使用|T134376:0|t[青铜计时器]
.use 188139
step
>>使用|T4622499:0:0|t[更新的原始德雷克]学习你的第一个龙之坐骑并登上。
.use 194034
.goto 2022,57.66,66.89
.complete 65118,1 
step
>>向前走，用你的龙骑坐骑滑过黄色的圆环。
.goto 2022,57.42,60.00
.complete 65118,2 
.complete 65118,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.10
.turnin 65118 >>Turn in How To Dive with Your Dragon
.target Celormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.88
.accept 65120 >>接任务: |cRXP_WARN_驭龙俯冲术|r
.target Lord Andestrasz
step
>>向前走，向下瞄准，沿着黄环走。
.goto 2022,57.47,59.09
.complete 65120,1 
.complete 65120,2 
.complete 65120,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.09
.turnin 65120 >>Turn in How to Use Momentum with Your Dragon
.target Celormu
step
.goto 2022,57.65,66.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.accept 65133 >>接任务: |cRXP_WARN_驭龙俯冲术|r
.target Lord Andestrasz
step
.goto 2022,57.36,65.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bathoras
.turnin 70239 >>Turn in Untold Regrets
.skipgossip 194805,1
.target Bathoras
step
.isQuestTurnedIn 70239
.use 188169
.cast 361748 >>使用青铜计时器
step
>>向前走，向下瞄准，沿着黄环走
.goto 2022,57.47,59.09
.complete 65133,1 
.complete 65133,2 
.complete 65133,3 
step
#label WakingShoreHowtoUseMomentumwithYourDragon
.goto 2022,57.48,59.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.turnin 65133 >>Turn in How to Use Momentum with Your Dragon
.target Celormu
step
.goto 2022,57.66,66.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 77345 >>接任务: |cRXP_WARN_极品飞龙|r
.target Lord Andestrasz
step
>>使用您的|cRXP_WARN_Dragonrideing Mount|r
.complete 77345,1 
step
>>遵循黄色的环。在每一个之后使用|T4640490:0|t[向前浪涌]。不要过度使用。
.goto 2022,56.97,62.83
.complete 77345,2 
step
>>Land on the rock
.goto 2022,57.37,59.01
.complete 77345,3 
step
.goto 2022,57.47,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 77345 >>Turn in The Need For Higher Velocities
.target Celormu
step
.goto 2022,57.66,66.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 68796 >>接任务: |cRXP_WARN_天顶观察站|r
.target Lord Andestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.accept 68796 >>接任务: |cRXP_WARN_天顶观察站|r
.target Lord Andestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.accept 70132 >>接任务: |cRXP_WARN_英雄留步|r
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t使用|cffffff00[ExtraActionButton]|r并再次与Veritistrasz对话
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,1 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,2 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.turnin 70132 >>Turn in Stay a While
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.72,66.72
.skipgossip 1
.timer 12,Roleplay Duration
.complete 68796,1 
.target Celormu
step
#completewith next
+你可以打开你的拼写书，点击“龙之纹章”技能，并将鼠标悬停在“龙之基础”技能上，如果你想阅读“龙之纹”的内容。
step
>>确保飞越每一个环
.complete 68796,2 
step
.goto 2022,75.18,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68796 >>Turn in The Skytop Observatory
.accept 68797 >>接任务: |cRXP_WARN_新生犄角|r
.target Lord Andestrasz
step
#title Dragon Glyph: Skytop Observatory Rostrum
.goto 2022,74.33,57.56
.achievement 16575,2 >>拿起空中的龙雕
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glensera
.goto 2022,74.11,57.93
.complete 68797,1 
.target Glensera
step
>>与变形花名册（地面上的五边形）互动。立即取消
.goto 2022,74.03,58.16
.complete 68797,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,75.18,54.97
.turnin 68797 >>Turn in A New Set of Horns
.accept 68798 >>接任务: |cRXP_WARN_巨龙魔符与你|r
.target Lord Andestrasz
step
>>使用你的龙骑并在空中飞行通过字形
.goto 2022,74.35,57.76
.complete 68798,1 
step
#completewith WakingShoreDragpnGlyphandYou
.gossipoption 107095
.gossipoption 107099 >>Talk to Lithragosa to enable your passenger seat
.goto 2022,74.57,56.97
.target Lithragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lithragosa and learn the first skill named 'Drake and Rider Training'
.goto 2022,74.57,56.97
.skipgossip 2
.complete 68798,2 
.complete 68798,3 
.complete 68798,4 
.target Lithragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,73.25,52.06
.complete 68798,5 
.target Celormu
step
#label WakingShoreDragpnGlyphandYou
.goto 2022,75.17,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68798 >>Turn in Dragon Glyphs and You
.accept 68799 >>接任务: |cRXP_WARN_返回红玉新生圣地|r
.target Lord Andestrasz
step
>>Mount Relastrasza
.goto 2022,75.01,55.58
.complete 68799,1 
.target Relastrasza
step
#title Dragon Glyph: Skytop Observatory Tower
.goto 2022,75.24,57.09
.achievement 16575,1 >>在塔上方捡起你上方的龙雕
step
#completewith next
+跟随箭头与你的龙骑坐骑。瞄准下方
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.06,58.13
.accept 66435 >>接任务: |cRXP_WARN_现场回收|r
.accept 66436 >>接任务: |cRXP_WARN_捣蛋鬼入土|r
.target Elementalist Taiyang
step
#completewith WakingShoreAKeyElement
.isWorldQuestAvailable 2022,67113
>>捡起地上的龙神器并杀死|cff00ecffEarth Elements|r
.goto 2022,66.06,58.13,0,0
.complete 67113,1 
.complete 67113,2 
step
#completewith WakingShoreAKeyElement
>>杀死|cff00ecffEarth元素|r
.goto 2022,66.06,58.13,0,0
.complete 66436,1 
step
#completewith next
>>杀死|cff00ecffEarth Elements|r.Loot Orb of Primal Stone。在你的包里点击它
.collect 191904,1,66437,1
.accept 66437 >>接任务: |cRXP_WARN_关键元素|r
step
#title Spam talk to the explorer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cfff78300与Beleaguered Explorer进行垃圾邮件对话|r
.goto 2022,67.16,58.32,10,0
.goto 2022,67.53,57.97,10,0
.goto 2022,67.87,57.90,10,0
.goto 2022,67.81,57.37,10,0
.goto 2022,67.60,56.51
.skipgossip
.complete 66435,1 
step
#label WakingShoreAKeyElement
>>杀死|cff00ecffEarth Elements|r.Loot Orb of Primal Stone。在你的包里点击它
.collect 191904,1,66437,1
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.accept 66437 >>接任务: |cRXP_WARN_关键元素|r
step
>>杀死|cff00ecffEarth元素|r
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.goto 2022,67.89,54.73,20,0
.goto 2022,66.06,58.13
.complete 66436,1 
step
.isWorldQuestAvailable 2022,67113
>>捡起地上的龙神器并杀死|cff00ecffEarth Elements|r
.goto 2022,66.06,58.13,0,0
.complete 67113,1 
.complete 67113,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66436 >>Turn in Unearthed Troublemakers
.turnin 66435 >>Turn in Site Salvage
.turnin 66437 >>Turn in A Key Element
.target Elementalist Taiyang
step
.goto 2022,66.59,56.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Tae'shara Bloodwatcher, Elementalist Taiyang, and Acadia Chistlestone
.accept 66438 >>接任务: |cRXP_WARN_目标远大|r
.accept 66441 >>接任务: |cRXP_WARN_蒸馏法|r
.accept 66439 >>接任务: |cRXP_WARN_火急火燎|r
.target Examiner Tae'shara Bloodwatcher
.target Elementalist Taiyang
.target Acadia Chistlestone
step
.goto 2022,70.49,56.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.accept 70994 >>接任务: |cRXP_WARN_排水系统解决方案|r
.target Zikkori
step
#completewith next
>>把|T3610505:0|t[Zikkori的吸水装置]扔到闪闪发光的溪流下
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
>>杀死|cff00ecffAcequian|r。为球体掠夺它
.goto 2022,72.17,56.71
.complete 66441,1 
.unitscan Acequian
step
>>把|T3610505:0|t[Zikkori的吸水装置]扔到闪闪发光的溪流下
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.goto 2022,70.50,56.84
.turnin 70994 >>Turn in Drainage Solutions
.target Zikkori
step
#completewith next
>>杀死该区域的|cff00ecff首要部队|r。为火精灵掠夺它们
.complete 67100,2 
step
>>杀死该区域的|cff00ecff首要部队|r。为火焰而掠夺碎片
.goto 2022,68.40,63.15,30,0
.goto 2022,69.35,64.39,30,0
.goto 2022,68.26,64.59,30,0
.goto 2022,69.90,64.44,30,0
.goto 2022,69.84,65.71,30,0
#loop
.line 2022,68.40,63.15,69.35,64.39,68.26,64.59,69.90,64.44,69.84,65.71
.goto 2022,68.40,63.15,30,0
.goto 2022,69.35,64.39,30,0
.goto 2022,68.26,64.59,30,0
.goto 2022,69.90,64.44,30,0
.goto 2022,69.84,65.71,30,0
.complete 66439,1 
step
>>杀死该区域的|cff00ecff首要部队|r。为火精灵掠夺它们
.goto 2022,68.13,64.19
.complete 67100,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Ri'tal
.goto 2022,70.64,63.13
.skipgossip
.complete 66438,1 
.target Scout Ri'tal
step
>>|cfff78300拥抱右侧墙壁|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Francisco
.goto 2022,70.14,61.53
.skipgossip
.complete 66438,2 
.target Scout Francisco
step
>>|cfff78300抓住左墙，然后顺着箭头走。躲避旋风|r
.goto 2022,69.39,61.86,10,0
.goto 2022,69.08,61.66,8,0
.goto 2022,68.27,61.54
.complete 66438,3 
step
>>使用|T135821:0|t[原始火焰碎片]
.use 192545
.goto 2022,66.59,56.08
.complete 66439,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66438 >>Turn in Lofty Goals
.turnin 66439 >>Turn in Rapid Fire Plans
.turnin 66441 >>Turn in Distilled Effort
.accept 66442 >>接任务: |cRXP_WARN_理论依据|r
.target Elementalist Taiyang
step
>>在航路点等待，直到您可以使用|cffffff00[ExtraActionButton]|r并使用它
.goto 2022,66.56,56.06
.skipgossip
.complete 66442,1 
.complete 66442,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.51,55.96
.turnin 66442 >>Turn in Let's Get Theoretical
.accept 66447 >>接任务: |cRXP_WARN_跨越屏障|r
.target Elementalist Taiyang
step
>>杀死|cff00ecffDiscrodant Watcher|r
.goto 2022,66.09,55.36
.complete 66447,1 
.unitscan Discordant Watcher
step
>>Click on the rune stone
.goto 2022,66.08,55.03
.complete 66447,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,65.88,57.47
.turnin 66447 >>Turn in Beyond the Barrier
.target Elementalist Taiyang
step
#completewith next
.hs >>向Ruby Lifesherine致敬
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2022,62.34,73.02
.turnin 68799 >>Turn in Return to the Ruby Lifeshrine
.target Alexstrasza the Life-Binder
step
.isWorldQuestAvailable 2022,70410
>>Talk to X and complete the race
.goto 2022,62.80,74.00
.complete 70410,1 
step
.isWorldQuestAvailable 2022,70382
>>Talk to X and complete the race
.goto 2022,63.20,70.80
.complete 70382,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mother Elion
.goto 2022,61.6,68.71
.skipgossip 1
.complete 66115,3 
.target Mother Elion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana
.goto 2022,62.78,70.43
.skipgossip 189260,1
.complete 66115,4 
.target Zahkrana
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana again
.goto 2022,62.78,70.43
.turnin 66115 >>Turn in The Mandate of the Red
.target Zahkrana
step
.goto 2022,62.18,70.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Amella
.accept 70061 >>接任务: |cRXP_WARN_羽翼训练|r
.target Amella
step
#completewith next
+带着你的Dragonriding坐骑滑翔到Ruby Whelpling
step
>>安装Ruby Whelpling
.goto 2022,61.09,71.46
.skipgossip 1
.complete 70061,1 
step
#completewith next
+垃圾邮件|T135808:0|t燃烧树皮（1）在射程内杀死敌人
+当敌人在射程内时使用|T136045:0|t生命之球（3）
step
>>杀死该地区的敌人
.complete 70061,4 
.complete 70061,3 
.complete 70061,2 
step
#completewith next
+|cfff78300离开车辆|r
step
#completewith next
+使用您的龙骑坐骑飞往Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 70061 >>Turn in Training Wings
.goto 2022,62.32,72.90
.accept 66931 >>接任务: |cRXP_WARN_谁人作乱？|r
.goto 2022,62.34,73.02
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞到Thomas Bright那里和他谈谈
.goto 2022,60.22,72.18
.turnin 67100 >>Turn in A Gift for Miguel
.target Thomas Bright
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>Follow the arrow
.goto 2022,59.46,72.72
.complete 66931,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,59.49,72.61
.turnin 66931 >>Turn in Who Brought the Ruckus?
.accept 66116 >>接任务: |cRXP_WARN_首要威胁|r
.target Majordomo Selistra
step
>>滑翔至下方冰霜区的指挥官Lethanak处
.goto 2022,59.44,75.87
.complete 66116,1 
.complete 66116,2 
.target Commander Lethanak
step
.goto 2022,59.41,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.turnin 66116 >>Turn in The Primary Threat
.accept 66118 >>接任务: |cRXP_WARN_磐石来袭|r
.accept 66117 >>接任务: |cRXP_WARN_肃清战场|r
.target Commander Lethanak
step
#completewith WakingShoreCutOfftheHead
>>在执行其他目标的同时杀死该区域的敌人

.complete 66117,1 
step
.pve
>>杀死航路点周围愤怒的悬崖
.goto 2022,60.93,77.56,25,0
.goto 2022,61.27,79.08,25,0
.goto 2022,60.73,78.72,0,0
.complete 66118,1,1 
step
.pve
#completewith next
+登上飞机，飞往航路点位置
step
.pve
#label WakingShoreTerillodtheDevout
>>杀死|cff00ecffTerillo|r。小心不要被击倒
.goto 2022,60.64,83.01
.accept 70751 >>接任务: |cRXP_WARN_虔心者泰利罗德|r
.complete 70751,1 
.unitscan Terillod
step
>>杀死大石头元素
.goto 2022,61.27,79.10,25,0
.goto 2022,59.71,78.62,25,0
.goto 2022,57.82,76.81,25,0
.goto 2022,60.65,78.43
.complete 66118,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak and Majordomo Selistra
.turnin 66118 >>Turn in Basalt Assault
.accept 66122 >>接任务: |cRXP_WARN_始祖战术|r
.goto 2022,59.41,75.88
.accept 66121 >>接任务: |cRXP_WARN_抢救龙蛋|r
.goto 2022,59.49,76.16
.target Commander Lethanak
.target Majordomo Selistra
step
#completewith WakingShoreEggEvac
>>对Galestack Proto Dragons使用|T135133:0:0|t[红宝石长矛]来削弱它们
.use 192436
.complete 66122,2 
step
>>右键单击青铜蛋
.goto 2022,56.13,81.29
.complete 66121,1 
step
>>右键单击Azure Egg
.goto 2022,57.35,83.28
.complete 66121,2 
step
>>右键单击翡翠蛋
.goto 2022,55.32,83.31
.complete 66121,3 
step
#completewith next
>>Kill Klozicc
.goto 2022,54.77,82.22,15,0
.accept 66960 >>接任务: |cRXP_WARN_升腾者克罗基克|r
.complete 66960,1 
.unitscan Klozicc the Ascended
step
#label WakingShoreEggEvac
>>右键单击Ruby Egg
.goto 2022,54.99,80.95
.complete 66121,4 
step
>>Kill Klozicc
.goto 2022,54.77,82.22
.accept 66960 >>接任务: |cRXP_WARN_升腾者克罗基克|r
.complete 66960,1 
.unitscan Klozicc the Ascended
step
>>用|T135133:0:0|t[Ruby Spear]对你上方的Galestack Proto Dragons进行削弱
.use 192436
.goto 2022,55.03,82.08,35,0
.goto 2022,56.37,80.47,35,0
#loop
.line 2022,55.03,82.08,55.15,82.96,57.24,82.82,55.32,79.65
.goto 2022,55.03,82.08,35,0
.goto 2022,55.15,82.96,35,0
.goto 2022,57.24,82.82,35,0
.goto 2022,55.32,79.65,35,0
.complete 66122,2 
step
.goto 2022,53.68,80.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.turnin 66122 >>Turn in Proto-Fight
.turnin 66121 >>Turn in Egg Evac
.accept 66123 >>接任务: |cRXP_WARN_擒贼先擒王|r
.target Majordomo Selistra
step
>>使用|T135133:0:0|t[Ruby Spear]对Jadzigesh进行削弱
.use 192436
.goto 2022,53.68,83.04
.complete 66123,1 
.unitscan Jadzigeth
step
#label WakingShoreCutOfftheHead
.goto 2022,53.67,80.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.turnin 66123 >>Turn in Cut Off the Head
.accept 66124 >>接任务: |cRXP_WARN_胜利转进|r
.target Majordomo Selistra
step
>>在执行其他目标的同时杀死该区域的敌人
#loop
.line 2022,55.03,82.08,56.37,55.15,82.96,57.24,82.82,80.47,55.03,82.08,56.37,80.47,55.03,82.08
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,55.15,20,0
.goto 2022,82.96,57.24,20,0
.goto 2022,82.82,80.47,20,0
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,80.47,20,0
.goto 2022,55.03,82.08,20,0
.complete 66117,1 
step
#requires WakingShoreCleartheBattlefield
.goto 2022,48.48,78.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hauler Bennet
.accept 66963 >>接任务: |cRXP_WARN_正在派件|r
.target Hauler Bennet
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,46.14,78.54
.skipgossip 187278,1
.complete 66124,1 
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 66124 >>Turn in Exeunt, Triumphant
.goto 2022,46.14,78.51
.accept 66079 >>接任务: |cRXP_WARN_拉希奥在等待|r
.goto 2022,46.09,78.29
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Scalecommander Emberthal
.turnin 66079 >>Turn in Wrathion Awaits
.goto 2022,42.47,66.84
.accept 72241 >>接任务: |cRXP_WARN_过往的教训|r
.goto 2022,42.47,66.78
.target Wrathion
.target Scalecommander Emberthal
step
#completewith next
+您可以跳过下一个过场。
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Scalecommander
.goto 2022,42.47,66.79
.skipgossip 192795,1
.complete 72241,1 
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal and Wrathion
.turnin 72241 >>Turn in Lessons from Our Past
.accept 66048 >>接任务: |cRXP_WARN_最佳计划与打算|r
.goto 2022,42.47,66.78
.accept 66078 >>接任务: |cRXP_WARN_刀锋训练|r
.goto 2022,42.47,66.84
.target Wrathion
.target Scalecommander Emberthal
step
#completewith next
.gossipoption 55311 >>Talk to Fao the Relentless
.goto 2022,42.41,66.18
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fao the Relentless then interact with the plan in the tent
.goto 2022,42.41,66.06
.skipgossip 1
.complete 66048,1 
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Forgemaster Bazentus
.goto 2022,42.82,66.86
.skipgossip
.complete 66048,4 
.target Forgemaster Bazentus
step
#completewith WakingShoresBestPlansandIntentionsEdres
.gossipoption 55307 >>Talk to Archivist Edress
.goto 2022,43.76,67.28
.complete 66048,2 
.target Archivist Edres
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them
.goto 2022,42.56,67.51,20,0
.skipgossip
.complete 66078,1 
step
#label WakingShoresBestPlansandIntentionsEdres
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia then click on the Binoculars
.gossipoption 54996
.goto 2022,42.30,69.29
.complete 66048,3 
.goto 2022,42.23,69.33
.target Talonstalker Kavia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them
.goto 2022,42.56,67.51
.skipgossip
.complete 66078,1 
step

>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the NPCs at the waypoint locations
.complete 66048,1 
.goto 2022,42.41,66.06
.complete 66048,4 
.goto 2022,42.82,66.86
.complete 66048,2 
.goto 2022,43.76,67.28
.complete 66048,3 
.goto 2022,42.23,69.33
.skipgossip
.target Fao the Relentless
.target Forgemaster Bazentus
.target Archivist Edres
.target Talonstalker Kavia
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66048 >>Turn in Best Plans and Intentions
.turnin 66078 >>Turn in Sharp Practice
.target Wrathion
step
.isWorldQuestAvailable 2022,70413
>>Talk to X and complete the race
.goto 2022,42.00,67.20
.complete 70413,1 
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.accept 65957 >>接任务: |cRXP_WARN_既生贾拉丁……|r
.accept 65956 >>接任务: |cRXP_WARN_利爪打击|r
step
.goto 2022,37.45,71.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.accept 66003 >>接任务: |cRXP_WARN_环驭众火|r
.target Earthcaller Yevaa
step
>>杀死|cff00ecffBlazing Manifessions|r。然后抢劫捆绑环
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
#loop
.line 2022,,37.99,71.58,38.15,73.04,37.31,73.68,,36.75,72.98,37.12,71.84,38.05,69.42
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.31,73.68,22,0
.goto 2022,36.75,72.98,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
.complete 66003,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.turnin 66003 >>Turn in Rings To Bind Them
.accept 66369 >>接任务: |cRXP_WARN_大地结界|r
.target Earthcaller Yevaa
step
>>点击地球守卫
.goto 2022,37.54,71.23
.complete 66369,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.turnin 66369 >>Turn in The Earthen Ward
.accept 66368 >>接任务: |cRXP_WARN_风暴中的岛屿|r
.target Earthcaller Yevaa
step
#completewith next
>>杀死|cff00ecffBlazing宣言|r
.complete 66368,1 
step
.goto 2022,37.62,75.10
.complete 66368,2 
.unitscan Melter Igneous
step
>>杀死|cff00ecffBlazing宣言|r
.goto 2022,37.98,76.02,20,0
.goto 2022,39.58,74.41,20,0
.goto 2022,39.14,73.14,20,0
.goto 2022,38.01,71.79,20,0
.goto 2022,36.55,71.79,20,0
.goto 2022,36.95,73.62,20,0
#loop
.line 2022,37.98,76.02,39.58,74.41,39.14,73.14,38.01,71.79,36.55,71.79,36.95,73.62
.goto 2022,37.98,76.02,25,0
.goto 2022,39.58,74.41,25,0
.goto 2022,39.14,73.14,25,0
.goto 2022,38.01,71.79,25,0
.goto 2022,36.55,71.79,25,0
.goto 2022,36.95,73.62,25,0
.complete 66368,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.78
.turnin 66368 >>Turn in Island In A Storm
.target Earthcaller Yevaa
step
#completewith WakingShoreNoTimeForTalonStrike
+使用|cffffff00[ExtraActionButton|r造成额外伤害
step
#completewith WakingShoreNoTimeForHeroes
>>|cfff78300避免杀害精英|r。专注于摧毁东西和杀害非精英
.goto 2022,36.43,69.68,20,0
.goto 2022,34.86,61.66,0,0
.complete 65956,1 
step
>>爬上那座塔。杀死|cff00ecffPiercer Gigra|r
.goto 2022,35.53,68.47
.complete 65957,1 
.unitscan Piercer Gigra
step
>>杀死|cff00ecffOlphis|r
.goto 2022,34.79,66.86
.complete 65957,3 
.unitscan Olphis the Molten
step
.isOnQuest 65956
#title Progress the Bonus Objective
#completewith next
.goto 2022,37.36,63.09,30,0
.goto 2022,36.75,60.09,50 >>杀死你周围的一切
step
#label WakingShoreNoTimeForHeroes
>>爬上那座塔。杀死|cff00ecffModak火焰喷射|r
.goto 2022,35.67,60.73
.complete 65957,2 
.unitscan Modak Flamespit
step
.goto 2022,37.11,55.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthmender Govrum
.accept 70414 >>接任务: |cRXP_WARN_摇摆之地|r
step
>>对熔岩中被困的洞穴石使用|T136108:0|t[破碎图腾]
.use 198980
.goto 2022,36.61,55.90
.complete 70414,1 
step
.goto 2022,37.11,55.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthmender Govrum
.turnin 70414 >>Turn in Shaky Grounds
step
.goto 2022,39.43,48.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ingot
.accept 65687 >>接任务: |cRXP_WARN_[Punching Up]|r
.accept 65690 >>接任务: |cRXP_WARN_[A Cultist's Misgivings]|r
step
>>Follow the arrow
.goto 2022,37.45,46.70
.complete 65690,1 
step
.goto 2022,37.43,46.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.turnin 65690 >>Turn in A Cultist's Misgivings
.accept 65782 >>接任务: |cRXP_WARN_牢狱之灾|r
step
#completewith next
>>杀死|cff00ecffWorldbreaker Guards|r。抢走他们的钥匙
.complete 65782,1 
step
>>杀死区域内的|cff00ecffDragonkins|r
.goto 2022,38.28,47.37,25,0
.goto 2022,38.16,48.63,25,0
.goto 2022,36.16,48.01,25,0
.goto 2022,34.45,48.72,25,0
#loop
.line 2022,38.28,47.37,38.16,48.63,36.16,48.01,34.45,48.72
.goto 2022,38.28,47.37,35,0
.goto 2022,38.16,48.63,35,0
.goto 2022,36.16,48.01,35,0
.goto 2022,34.45,48.72,35,0
.complete 65687,1 
step
#completewith next
>>杀死|cff00ecffWorldbreaker Guards|r。抢走他们的钥匙
.goto 2022,36.16,48.01,25,0
.goto 2022,34.45,48.72,25,0
.goto 2022,38.16,48.63,25,0
.goto 2022,38.28,47.37,25,0
#loop
.line 2022,38.28,47.37,38.16,48.63,36.16,48.01,34.45,48.72
.goto 2022,38.28,47.37,35,0
.goto 2022,38.16,48.63,35,0
.goto 2022,36.16,48.01,35,0
.goto 2022,34.45,48.72,35,0
.complete 65782,1 
step
>>Open the cage
.goto 2022,37.43,46.66
.complete 65782,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ingot and Ayasanth after a short roleplay
.turnin 65687 >>Turn in Punching Up
.goto 2022,37.33,46.65
.turnin 65782 >>Turn in Under Lock and Key
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.accept 65691 >>接任务: |cRXP_WARN_翼影蔽日|r
.goto 2022,37.35,46.62
step
.pve
#completewith next
.goto 2022,35.63,47.95,20 >>进入洞穴
step
.pve
>>等待角色扮演并杀死|cff00ecffCygenoth the Corrupted|r
.goto 2022,35.04,45.47
.complete 65691,1 
.complete 65691,2 
step
.pve
.goto 2022,39.56,48.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.turnin 65691 >>Turn in The Shadow of His Wings
step
#completewith next
+在地图上的标记区域寻找更多暴徒
step
>>|cfff78300避免杀害精英|r。专注于摧毁东西和杀害非精英
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.complete 65956,1 
step
#label WakingShoreNoTimeForTalonStrike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,33.99,61.29
.turnin 65957 >>Turn in No Time For Heroes
.turnin 65956 >>Turn in Talon Strike
.accept 65939 >>接任务: |cRXP_WARN_决意与勇气|r
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,33.99,61.29
.skipgossip 1
.complete 65939,1 
.target Wrathion
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>沿着箭头从桥的前面开始。
.goto 2022,33.54,61.86,50,0
.goto 2022,30.51,60.88
.complete 65939,2 
step
#completewith WakingShoresTakingtheWalls
>>杀死侧面的|cff00ecffQalashi部队|r。不要试图完成此任务
.complete 65939,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,29.14,58.82
.accept 66044 >>接任务: |cRXP_WARN_雄踞高墙|r
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,29.14,58.82
.skipgossip 186933,1
.complete 66044,1 
.target Wrathion
step
#completewith WakingShoreTakingTheWalls
+使用你的龙骑坐骑飞到下一门大炮（或者注意Wrathion）
step
>>Destroy the cannon
.goto 2022,26.81,59.99
.complete 66044,2 
step
>>Destroy the cannon
.goto 2022,29.51,60.99
.complete 66044,3 
step
#label WakingShoreTakingTheWalls
>>Destroy the cannon
.goto 2022,27.79,56.66
.complete 66044,4 
step
#label WakingShoresTakingtheWalls
>>在该地区周围巡逻
.goto 2022,26.94,57.07
.complete 66044,5 
step
>>杀死侧面的|cff00ecffQalashi部队|r。不要试图完成此任务

.goto 2022,27.46,61.25,30,0
.goto 2022,26.42,58.75
.complete 65939,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,26.42,58.75
.turnin 66044 >>Turn in Taking the Walls
.turnin 65939 >>Turn in The Courage of One's Convictions
step
.goto 2022,48.48,82.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd
.turnin 66963 >>Turn in Out For Delivery
.accept 66524 >>接任务: |cRXP_WARN_业余摄影|r
.target Cataloger Wulferd
step
.goto 2022,45.93,81.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Iyali
.accept 69897 >>接任务: |cRXP_WARN_行为分析“作业”|r
step
>>使用|T1109100:0|t[Wulferd's Award Winning Camera]，然后在饥饿的Proto Drake|cffffff00位于航路点位置正前方时使用Catalog（1）
.target Hungry Proto-Drake
.use 192465
.goto 2022,43.80,78.35
.complete 66524,3 
step
>>使用|T1109100:0|t[Wulferd's Award Winning Camera]，然后使用Catalog（1）当乐观的Whelp开始飞行时看着他
.target Optimistic Whelp
.use 192465
.goto 2022,44.86,78.05
.complete 66524,2 
step
#title Sleeping Whelp 1/3
>>点击睡鼠
.goto 2022,42.55,79.36
.complete 69897,1,1 
step
#title Sleeping Whelp 2/3
>>点击睡鼠
.goto 2022,42.40,82.57
.complete 69897,1,2 
step
>>使用|T1109100:0|t[Wulferd's Award Winning Camera]，然后在观看Proto Dragon Egg时使用Catalog（1）
.use 192465
.goto 2022,45.41,82.14
.complete 66524,1 
step
#title Sleeping Whelp 3/3
>>点击睡鼠
.goto 2022,43.53,84.96
.complete 69897,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd and Dervishian
.turnin 66524 >>Turn in Amateur Protography
.accept 66525 >>接任务: |cRXP_WARN_摄影竞赛|r
.goto 2022,39.03,83.25
.accept 66526 >>接任务: |cRXP_WARN_保护荒野|r
.goto 2022,39.08,83.27
.target Cataloger Wulferd
.target Dervishian
step
#completewith next
>>杀死该区域的|cff00ecffPrimalists|r
.complete 66526,1 
step
>>使用|T1109100:0|t[Wulferd's Award Winning Camera]，然后使用Catalog（1）同时查看注入的Proto Dragon Egg
.use 192465
.goto 2022,38.32,80.76
.complete 66525,1 
step
>>使用|T1109100:0|t[Wulferd's Award Winning Camera]，查找并使用Catalog（1），同时查看Infused Proto Drake
>>如果不起作用，试着靠近
.unitscan Infused Proto-Drake
.use 192465
.goto 2022,38.60,81.24
.complete 66525,2 
step
>>杀死该区域的|cff00ecffPrimalists|r
.goto 2022,38.32,80.76
.complete 66526,1 
step
.goto 2022,39.01,83.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd and Dervishian
.turnin 66525 >>Turn in Competitive Protography
.turnin 66526 >>Turn in Preserving the Wilds
.accept 66527 >>接任务: |cRXP_WARN_专业摄影|r
.target Cataloger Wulferd
.target Dervishian
step
>>Go onto the spring
.goto 2022,38.95,83.39
.complete 66527,1 
step
>>跟随聚光灯，然后使用|T1109100:0|t[Wulferd's Award Winning Camera]，然后使用Catalog（1）
.use 192465
.goto 2022,38.77,84.04
.complete 66527,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd and Dervishian
.goto 2022,39.03,83.26
.turnin 66527 >>Turn in Professional Protography
.accept 66528 >>接任务: |cRXP_WARN_无冕之王|r
.target Cataloger Wulferd
.target Dervishian
step
>>点击烧焦的前爪
.goto 2022,38.84,83.51
.complete 66528,2 
step
>>点击断开的脊椎
.goto 2022,39.13,83.94
.complete 66528,1 
step
>>点击破裂的肋骨
.goto 2022,39.39,84.03
.complete 66528,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
.goto 2022,39.08,83.28
.turnin 66528 >>Turn in King Without a Crown
.accept 66529 >>接任务: |cRXP_WARN_千言万语|r
.target Dervishian
step
>>使用|T1109100:0|t[Wulferd's Award Winning Camera]并在观看Dervishian时使用目录（1）
.goto 2022,38.92,83.52
.use 192465
.complete 66529,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
.goto 2022,38.72,83.69
.turnin 66529 >>Turn in A Thousand Words
.target Dervishian
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Iyali
.goto 2022,45.90,81.44
.skipgossip 193500,1
.complete 69897,2 
.target Iyali
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Iyali
.goto 2022,45.90,81.44
.turnin 69897 >>Turn in Behavior Analysis "Homework"
.target Iyali
step
.isWorldQuestAvailable 2022,70412
>>Talk to X and complete the race
.goto 2022,47.00,85.60
.complete 70412,1 
step
.isWorldQuestAvailable 2022,70418
>>Talk to X and complete the race
.goto 2022,42.60,94.40
.complete 70418,1 
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup 命运之线Multibox 60-70
#name B2Ohn'ahran Plains Multibox
#displayname Chapter 2 - Ohn'ahran Plains Multibox
#next C3Azure Span Multibox
step
#completewith Ohn'ahran Plains Campaign
+欢迎使用RestedXP的Ohn'ahran平原指南。
step
.goto 2022,48.27,88.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Taurasza
.accept 65779 >>Accept Into the Plains
step
#label Ohn'ahran Plains Campaign
.goto 2023,77.73,23.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65779 >>交任务: |cRXP_FRIENDLY_深入平原|r
.accept 65780 >>接任务: |cRXP_WARN_证明自我|r
step
>>杀死|cff00ecffBlazing Proto Dragon|r
.goto 2023,78.50,27.21
.complete 65780,1 
step
.goto 2023,78.63,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65780 >>Turn in Proving Oneself
.accept 65783 >>接任务: |cRXP_WARN_营火欢迎你|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,85.31,25.41
.turnin 65783 >>Turn in Welcome at Our Fire
.accept 70174 >>接任务: |cRXP_WARN_席卡尔|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,85.74,25.32
.skipgossip 181217,1
.complete 70174,1 
step
.goto 2023,85.73,25.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.turnin 70174 >>Turn in The Shikaar
.accept 65802 >>接任务: |cRXP_WARN_旅途供给|r
.accept 65801 >>接任务: |cRXP_WARN_自报家门|r
step
#title Supply 1
>>提取provions |cffffff00（未共享）|r
.goto 2023,86.17,25.32
.complete 65802,2,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru or Belika |cffffff00(not shared)|r
.goto 2023,85.76,26.59
.skipgossip
.complete 65801,2 
step
#title Pod 1
>>拿起吊舱|cffffff00（未共享）|r
.goto 2023,85.51,26.88
.complete 65802,1,1 
step
#title Pod 2
>>拿起吊舱|cffffff00（未共享）|r
.goto 2023,84.98,26.63
.complete 65802,1,2 
step
#title Pod 3
>>拿起吊舱|cffffff00（未共享）|r
.goto 2023,84.59,27.08
.complete 65802,1,3 
step
#title Supply 2
>>提取provions |cffffff00（未共享）|r
.goto 2023,84.31,27.19
.complete 65802,2,2 
step
#title Pod 4
>>拿起吊舱|cffffff00（未共享）|r
.goto 2023,84.29,25.77
.complete 65802,1,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Nuqut |cffffff00(not shared)|r
.goto 2023,83.93,25.88
.skipgossip 1
.complete 65801,3 
step
#title Pod 5
>>拿起吊舱|cffffff00（未共享）|r
.goto 2023,83.76,25.09
.complete 65802,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Ehri and Farrier Roscha
.accept 65950 >>接任务: |cRXP_WARN_鳄鱼人窃贼|r
.goto 2023,84.40,25.01
.accept 65951 >>接任务: |cRXP_WARN_独行供货商|r
.goto 2023,84.34,25.00
step
#completewith next
+|cfff78300尽可能避免杀死萨满|r
step
>>杀死该区域的|cff00ecffMudfines|r。掠夺物资|cffffff00（未共享）|r
.goto 2023,82.30,28.97,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.22,29.92,25,0
.goto 2023,81.60,30.82,25,0
.goto 2023,81.18,31.98,25,0
.goto 2023,81.60,30.82
.complete 65950,1 
step
>>Follow the arrow
.goto 2023,80.65,30.87
.complete 65951,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,80.56,30.74
.turnin 65951 >>Turn in Sole Supplier
.turnin 65950 >>Turn in Thieving Gorlocs
.accept 65953 >>接任务: |cRXP_WARN_神谕之陨|r
.accept 65954 >>接任务: |cRXP_WARN_释放猎犬|r
.accept 65955 >>接任务: |cRXP_WARN_半人马最好的朋友|r
step
>>Open the cage
.goto 2023,80.56,30.74
.complete 65955,1 
step
#completewith OhnahranPlainsReleaseTheHounds4
>>杀死|cff00ecffMudfin萨满|r。掠夺他们的图腾。
.complete 65953,1 
step
#title Bakar Collar 1
>>拿起衣领|cffffff00（不共享）|r
.goto 2023,80.63,30.69
.complete 65954,2,1 
step
#title Bakar Freed 1
>>Open the cage
.goto 2023,81.16,29.77
.complete 65954,1,1 
step
#title Bakar Freed 2
>>Open the cage
.goto 2023,81.43,29.69
.complete 65954,1,2 
step
#title Bakar Freed 3
>>Open the cage
.goto 2023,82.22,30.27
.complete 65954,1,3 
step
#title Bakar Collar 2
>>拿起衣领|cffffff00（不共享）|r
.goto 2023,82.22,30.43
.complete 65954,2 
step
#label OhnahranPlainsReleaseTheHounds4
#title Bakar Freed 4
>>Open the cage
.goto 2023,82.36,30.56
.complete 65954,1,4 
step
#sticky
#label OhnahranPlainsTheOracull
#title Kill Mudfin Shamans
>>杀死|cff00ecffMudfin萨满|r。掠夺他们的图腾|cffffff00（未共享）|r
.goto 2023,81.74,31.64,15,0
.goto 2023,81.99,32.17,15,0
.goto 2023,82.36,32.58,15,0
.goto 2023,81.73,30.81,15,0
#loop
.line 2023,81.74,31.64,81.99,32.17,82.36,32.58,81.73,30.81
.goto 2023,81.74,31.64,18,0
.goto 2023,81.99,32.17,18,0
.goto 2023,82.36,32.58,18,0
.goto 2023,81.73,30.81,18,0
.complete 65953,1 
step
#title Bakar Freed 5
>>Open the cage
.goto 2023,81.25,31.70
.complete 65954,1 
step
#requires OhnahranPlainsTheOracull
#completewith next
.goto 2023,83.08,32.06,10 >>进入洞穴
step
#requires OhnahranPlainsTheOracull
>>打开笼子等待卡萨尔
.goto 2023,83.38,32.40
.complete 65955,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.43,32.33
.turnin 65955 >>Turn in A Centaur's Best Friend
.turnin 65953 >>Turn in The Ora-cull
.turnin 65954 >>Turn in Release the Hounds
.accept 65952 >>接任务: |cRXP_WARN_[A Chief of Legends]|r
step
#completewith next
.goto 2023,83.08,32.06,10 >>离开洞穴
step
#sticky
#label OhnahranPlainsChiefofLegends
>>杀死|cff00ecff首领Grrlgllmesh|r
.goto 2023,82.10,31.44
.complete 65952,1 
step
>>掠夺Grrlgllmesh首领的奖章并使用它|cffffff00（不共享）|r
.collect 191127,1,66005,1
.goto 2023,82.05,31.45
.accept 66005 >>接任务: |cRXP_WARN_失落友人勋章|r
step
#requires OhnahranPlainsChiefofLegends
#completewith next
.goto 2023,83.08,32.06,10 >>进入洞穴
step
#requires OhnahranPlainsChiefofLegends
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khasar
.goto 2023,83.44,32.33
.turnin 65952 >>Turn in A Chief of Legends
.turnin 66005 >>Turn in Medallion of a Fallen Friend
.accept 65949 >>接任务: |cRXP_WARN_独身修理匠|r
.accept 66006 >>接任务: |cRXP_WARN_返回罗莎身边|r
step
>>Pick up the supplies
.goto 2023,83.51,32.14
.complete 66006,1 
step
#completewith next
.goto 2023,83.08,32.06,10 >>离开洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回Timberstep前哨。与Farrier Roscha交谈
.goto 2023,84.42,25.03
.turnin 65949 >>Turn in The Sole Mender
.turnin 66006 >>Turn in Return to Roscha
step
#title Supply 3
>>提取provions |cffffff00（未共享）|r
.goto 2023,84.34,24.91
.complete 65802,2,3 
step
#title Supply 4
>>提取provions |cffffff00（未共享）|r
.goto 2023,84.37,23.12
.complete 65802,2 
step
.goto 2023,85.63,20.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng |cffffff00(not shared)|r
.skipgossip 1
.complete 65801,1 
step
.goto 2023,84.69,22.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul inside the hut
.turnin 65801 >>Turn in Supplies for the Journey
.turnin 65802 >>Turn in Supplies for the Journey
.accept 65803 >>接任务: |cRXP_WARN_前往城市|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,83.17,23.77
.skipgossip
.complete 65803,1 
step
>>你可以和他一起骑行，听他的故事，或者直接飞到第一站。
.goto 2023,75.57,31.84
.complete 65803,3 
step
.goto 2023,75.70,31.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 65803 >>Turn in Toward the City
.accept 65804 >>接任务: |cRXP_WARN_觅食即竞争|r
step
>>与神秘爪印互动
.goto 2023,76.73,31.89
.accept 70185 >>接任务: |cRXP_WARN_神奇野兽在哪里|r
step
#completewith OhnahranPlainsMysteriousBeast
>>杀死该区域的|cff00ecffbeas|r。掠夺他们的肉
*The best source of meat are Mammoths and Stomphoofs.
.complete 65804,1 
step
#completewith next
.goto 2023,77.78,35.39,10 >>进入洞穴
step
#label OhnahranPlainsMysteriousBeast
>>杀死|cff00ecffKonkhular |r。掠夺他的毛皮|cffffff00（不共享）|r
.goto 2023,78.22,35.24
.complete 70185,1 
step
#completewith next
.goto 2023,77.78,35.39,10 >>离开洞穴
step
>>杀死该区域的|cff00ecffbeas|r。掠夺他们的肉|cffffff00（不共享）|r
*The best source of meat is Mammoths.
.goto 2023,79.22,30.63,40,0
.goto 2023,77.89,29.57,40,0
.goto 2023,74.62,29.06,40,0
.goto 2023,76.08,34.27,40,0
.goto 2023,77.47,32.21,40,0
.goto 40,2023,79.22,30.63,77.89,29.57,74.62,29.06,76.08,34.27,77.47,32.21
.complete 65804,1 
step
#requires OhnahranPlainsForFoodandRivalry
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.goto 2023,75.67,31.68
.turnin 65804 >>Turn in For Food and Rivalry
.turnin 70185 >>Turn in Mysterious Beast
.accept 65940 >>接任务: |cRXP_WARN_一路颠簸|r
step
>>你可以和他一起骑行，听他的故事，或者直接飞到第二站。
.goto 2023,70.07,37.84
.complete 65940,2 
step
.goto 2023,69.97,37.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65940 >>Turn in By Broken Road
.accept 65805 >>接任务: |cRXP_WARN_与欧恩哈拉沟通|r
step
#completewith OhnahranPlainsConnectiontoRiverReeds
+遵循循环。不要完成此步骤
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
#completewith OhnahranPlainsConnectiontoRiverReeds
>>杀死|cff00ecffMudwalker Salamanthers|r。偷走他们的心
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
#completewith next
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
>>单击|cff00ecffJadethroat Mallard|r
.goto 2023,69.94,37.66,0,0
.complete 65805,2 
step
#label OhnahranPlainsConnectiontoRiverReeds
>>Pick up the River Reeds
.goto 2023,69.87,36.23,0
.goto 2023,70.19,36.96,0
.goto 2023,70.54,37.66,0
.goto 2023,70.43,39.69,0
.goto 2023,70.09,39.11,0
.goto 2023,68.79,39.48,0
.goto 2023,68.53,41.12,0
.goto 2023,70.13,41.56,0
.goto 2023,69.94,37.66,0,0
.complete 65805,1 
step
#completewith next
+遵循循环。不要完成此步骤
#loop
.line 2023,70.63,34.65,69.22,34.33,68.49,40.13,70.69,39.24,70.00,41.64
.goto 2023,70.63,34.65,30,0
.goto 2023,69.22,34.33,30,0
.goto 2023,68.49,40.13,30,0
.goto 2023,70.69,39.24,30,0
.goto 2023,70.00,41.64,30,0
step
>>杀死|cff00ecffMudwalker Salamanthers|r。偷走他们的心
*REALLY LOW DROP CHANCE!
.goto 2023,69.94,37.66,0,0
.complete 65805,3 
step
.goto 2023,69.96,37.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.turnin 65805 >>Turn in Connection to Ohn'ahra
.accept 66848 >>接任务: |cRXP_WARN_风之征兆|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,69.96,37.96
.skipgossip 184595,2
.complete 66848,1 
step
>>Place the totems
.goto 2023,69.93,37.62
.complete 66848,2 
step

>>Wait
.goto 2023,69.93,37.62
.complete 66848,3 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng and Sansok Khan
.turnin 66848 >>Turn in Omens on the Wind
.goto 2023,69.96,37.94
.accept 65806 >>接任务: |cRXP_WARN_马鲁凯|r
.goto 2023,70.02,38.01
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞到远程癌症医生Aerilyn那里和她说话
.goto 2023,65.97,25.09
.accept 65890 >>接任务: |cRXP_WARN_奈萨扎恩废墟|r
step
#completewith OhnahranPlainsToolsoftheTirade
>>Kill mobs in the area
.accept 65892 >>接任务: |cRXP_WARN_碎焰崩毁|r
.complete 65892,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.00,18.29
.turnin 65890 >>Turn in The Nelthazan Ruins
.accept 65893 >>接任务: |cRXP_WARN_圣物查探|r
.accept 65891 >>接任务: |cRXP_WARN_建言工具|r
step
#completewith OhnahranPlainsToolsoftheTirade
>>杀死|cff00ecffTaraseks|r和|cff0ecffSundered暴徒|r。掠夺他们的碎片|cffffff00（不共享）|r
.goto 2023,63.03,17.67,0,0
.complete 65893,1 
step
#title Tool Deployed 1
>>与Waygate碎石互动
.goto 2023,63.56,17.18
.complete 65891,1,1 
step
#title Tool Deployed 2
>>与Waygate碎石互动
.goto 2023,63.43,16.73
.complete 65891,1,2 
step
#title Tool Deployed 3
>>与Waygate碎石互动
.goto 2023,63.50,15.10
.complete 65891,1,3 
step
#title Tool Deployed 4
>>与Waygate碎石互动
.goto 2023,63.05,14.78
.complete 65891,1,4 
step
#label OhnahranPlainsToolsoftheTirade
#title Tool Deployed 5
>>与Waygate碎石互动
.goto 2023,62.79,15.68
.complete 65891,1 
step
#completewith next
>>Kill mobs in the area
.goto 2023,63.57,15.34,0,0
.accept 65892 >>接任务: |cRXP_WARN_碎焰崩毁|r
.complete 65892,1 
step
>>杀死|cff00ecffTaraseks|r和|cff0ecffSundered暴徒|r。掠夺他们的碎片|cffffff00（不共享）|r
.goto 2023,62.28,17.53,20,0
.goto 2023,62.90,17.90,20,0
.goto 2023,63.77,16.47,20,0
.goto 2023,63.57,15.34
.complete 65893,1 
step
>>Kill mobs in the area
#loop
.line 2023,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68,63.57,15.34,62.90,17.90,62.28,17.53,62.79,15.68
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.goto 2023,63.57,15.34,25,0
.goto 2023,62.90,17.90,25,0
.goto 2023,62.28,17.53,25,0
.goto 2023,62.79,15.68,25,0
.accept 65892 >>接任务: |cRXP_WARN_碎焰崩毁|r
.complete 65892,1 
step
#requires OhnahranPlainsTheSunderedAsunder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skyscribe Adenedal
.goto 2023,64.01,18.26
.turnin 65891 >>Turn in Tools of the Tirade
.turnin 65893 >>Turn in The Relic Inquiry
step
>>你可以乘坐Stout Riding Bakar，听故事，或者直接飞往Marrukal。
.goto 2023,61.84,39.83
.complete 65806,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 65806 >>Turn in Maruukai
.accept 66018 >>接任务: |cRXP_WARN_诺库德氏族|r
.accept 66017 >>接任务: |cRXP_WARN_欧恩伊尔氏族|r
.accept 66016 >>接任务: |cRXP_WARN_提莱氏族|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66017 >>Turn in Clan Ohn'ir
.accept 66020 >>接任务: |cRXP_WARN_兆示焚香|r
step
#completewith next
.goto 2023,62.84,34.34,10 >>Leave the building
step
#title Sweetsuckle Bloom 1
>>从地上捡起|cffffff00（不共享）|r
.collect 191160,1,66020,1
.goto 2023,63.42,33.82
step
#title Sweetsuckle Bloom 2
>>从地上捡起|cffffff00（不共享）|r
.collect 191160,2,66020,1
.goto 2023,63.77,34.42
step
#title Sweetsuckle Bloom 3
>>从地上捡起|cffffff00（不共享）|r
.collect 191160,3,66020,1
.goto 2023,63.57,34.73
step
#title Sweetsuckle Bloom 4+5
>>从地上捡起|cffffff00（不共享）|r
.collect 191160,5,66020,1
.goto 2023,63.39,34.88
step
>>使用您包中的|T458235:0|t[Sweetsuckle Bloom]|cffffff00（不共享）|r
.use 191160
.goto 2023,62.82,33.69
.complete 66020,1 
step
>>与香炉互动|cffffff00（未共享）|r
.goto 2023,62.82,33.69
.complete 66020,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ohn Seshteng
.goto 2023,62.99,33.66
.turnin 66020 >>Turn in Omens and Incense
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66016 >>Turn in Clan Teerai
.accept 66019 >>接任务: |cRXP_WARN_光耀先祖|r
step
>>拿起生野味
.goto 2023,59.39,37.82
.complete 66019,1 
step
>>Interact with the shade
.goto 2023,59.13,37.57
.complete 66019,2 
step
>>拿起香料罐
.goto 2023,59.31,37.29
.complete 66019,3 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.61
.complete 66019,4 
step
>>拿起一篮香料
.goto 2023,59.39,37.37
.complete 66019,5 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,59.16,37.57
.complete 66019,6 
step
>>拿起一锅香料
.goto 2023,59.05,37.88
.complete 66019,7 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,59.14,37.58
.complete 66019,8 
step
>>Pick up the Game Meat
.goto 2023,59.14,37.58
.complete 66019,9 
step
>>使用|cffffff00[ExtraActionButton]|r
.goto 2023,58.90,37.26
.complete 66019,10 
step
>>Interact with the shade
.goto 2023,59.16,37.10
.complete 66019,11 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Qariin Dotur
.goto 2023,59.16,37.61
.turnin 66019 >>Turn in Honoring Our Ancestors
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul and Guard Bahir
.turnin 66018 >>Turn in Clan Nokhud
.goto 2023,60.38,40.69
.accept 66021 >>接任务: |cRXP_WARN_讨厌的外来者|r
.goto 2023,60.31,40.75
step
>>杀死|cff00ecffNokhud战斗机|r
.goto 2023,58.67,42.21,35,0
.goto 2023,59.83,42.96,35,0
.goto 2023,59.60,41.79
.complete 66021,1 
step
.goto 2023,63.12,34.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Windsage Ordven
.accept 65906 >>接任务: |cRXP_WARN_苦闷的新兵|r
step
.goto 2023,61.98,41.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Beastmaster Tirren
.accept 65837 >>接任务: |cRXP_WARN_松木的困局|r
step
.goto 2023,62.43,41.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.turnin 66021 >>Turn in Unwelcome Outsider
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aru who is following you
.goto 2023,62.43,41.71
.accept 66969 >>接任务: |cRXP_WARN_平原氏族|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan |cffffff00(not shared)|r
.goto 2023,61.44,39.52
.complete 66969,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan |cffffff00(not shared)|r
.gossipoption 56528 
.gossipoption 56515 
.gossipoption 56537 
.gossipoption 56549 
.gossipoption 56554 
.goto 2023,61.43,39.52
.complete 66969,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sansok Khan
.goto 2023,61.44,39.52
.turnin 66969 >>Turn in Clans of the Plains
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等着吉米萨，和他说话
.goto 2023,61.03,40.43
.accept 66948 >>接任务: |cRXP_WARN_使者驾到|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath |cffffff00(not shared)|r
.goto 2023,61.03,40.44
.skipgossip 194927,4
.complete 66948,1 
step
.goto 2023,61.03,40.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gemisath
.turnin 66948 >>交任务: |cRXP_FRIENDLY_使者|r's Arrival
.accept 66022 >>接任务: |cRXP_WARN_尊可汗|r
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato |cffffff00(not shared)|r
.goto 2023,60.29,37.89
.skipgossip 186942,1
.complete 66022,1 
step
.goto 2023,60.35,38.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato
.turnin 66022 >>Turn in The Khanam Matra
.accept 66023 >>接任务: |cRXP_WARN_破约弃盟|r
step
.goto 2023,59.52,38.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Tomul
.accept 66024 >>接任务: |cRXP_WARN_绝命断后|r
step
#completewith next
>>杀死|cff00ecffNokhud背叛者|r
.complete 66023,1 
step
>>杀死|cff00ecffGuard Bahir|r
.goto 2023,58.06,39.37
.complete 66024,1 
step
>>杀死|cff00ecffNokhud背叛者|r
.goto 2023,58.85,39.09,30,0
.goto 2023,60.12,37.66,30,0
.goto 2023,62.02,39.35,30,0
.goto 2023,60.60,40.48,30,0
.goto 2023,60.12,37.66
.complete 66023,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Akato and Khanam Matra Sarest |cfff78300on top of the tower|r
.goto 2023,60.36,38.05
.turnin 66023 >>Turn in Trucebreakers
.turnin 66024 >>Turn in Covering Their Tails
.accept 66025 >>接任务: |cRXP_WARN_诺库德威胁|r
.timer 19,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khanam Matra Sarest after a short roleplay
.goto 2023,60.00,37.48
.turnin 66025 >>Turn in The Nokhud Threat
.accept 66201 >>接任务: |cRXP_WARN_战争之蹄|r
.target Khanam Matra Sarest
step
.goto 2023,63.47,48.63,10,0
.goto 2023,63.03,48.54
>>在小瀑布下的洞穴中杀死|cff00ecffSunscale Behemoth|r
.accept 69837 >>接任务: |cRXP_WARN_赤鳞巨兽|r
.complete 69837,1 
step
.isWorldQuestAvailable 2023,70549
>>杀死蜜蜂或李子，或使用|cffffff00[ExtraActionButton]|r|cffff00（不共享）|r
.goto 2023,63.41,56.67
.complete 70549,2 
step
#completewith next
+使用你的龙骑坐骑飞往Jebotai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.goto 2023,41.62,56.75
.accept 66688 >>接任务: |cRXP_WARN_风之迹印|r
.accept 66687 >>接任务: |cRXP_WARN_猛兽之地|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Jebotai
.goto 2023,41.89,61.80
.turnin 66201 >>Turn in Hooves of War
.accept 66222 >>接任务: |cRXP_WARN_风暴前的宁静|r
.target Khansguard Jebotai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quartermaster Gensai
.goto 2023,40.72,56.35
.skipgossip
.complete 66222,2 
.target Quartermaster Gensai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击通缉板
.goto 2023,39.56,56.43
.accept 71027 >>接任务: |cRXP_WARN_通缉：雷鸣者玛拉纳尔|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Khansguard Hojin
.goto 2023,39.44,55.32
.skipgossip
.complete 66222,3 
.target Khansguard Hojin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Herbalist Agura
.goto 2023,38.49,57.41
.skipgossip
.complete 66222,1 
.target Herbalist Agura
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Khenyug
.goto 2023,37.57,59.45
.skipgossip
.complete 66222,4 
.target Scout Khenyug
step
>>飞往霹雳马拉那。杀了他。抢他的盘子|cffffff00（不共享）|r
.goto 2023,42.26,47.13
.complete 71027,1 
step
>>杀死|cff00ecffNimblewing Slyvern|r。掠夺他们的爪子|cffffff00（不共享）|r
.goto 2023,43.28,46.82,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,41.70,44.86,30,0
.goto 2023,41.38,46.80,30,0
#loop
.line 2023,41.70,44.86,42.87,44.07,43.28,46.82,41.38,46.80
.goto 2023,41.70,44.86,30,0
.goto 2023,42.87,44.07,30,0
.goto 2023,43.28,46.82,30,0
.goto 2023,41.38,46.80,30,0
.complete 66687,2 
step
#completewith next
.goto 2023,43.53,47.95,20 >>进入洞穴
step
>>杀死洞穴里的蜘蛛和蛋。把它们偷到网上|cffffff00（不共享，确保你的其他角色都用过Slyvern Talons）|r
.goto 2023,44.04,48.47,20,0
.goto 2023,43.96,49.31,20,0
.goto 2023,43.65,50.35
.complete 66687,1 
step
#completewith next
.goto 2023,43.53,47.95,20 >>离开洞穴|cffffff00（不共享，请确保您的其他角色已使用着色器微调器的Web）|r
step
#completewith next
.goto 2023,45.19,48.66,10 >>飞起来，进入斯卡拉的洞穴
step
.goto 2023,44.91,49.21
.complete 70783,1 
step
>>捡起地上的蕨类孢子、羽毛和空心芦苇|cffffff00（不共享）|r
.goto 2023,44.32,54.34,25,0
.goto 2023,45.56,52.79,25,0
.goto 2023,46.34,53.01,25,0
.goto 2023,46.94,51.43,25,0
.goto 2023,49.15,52.45
.complete 66688,1 
step
.goto 2023,49.34,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与提供船只互动
.turnin 66688 >>Turn in Signs of the Wind
.accept 70374 >>接任务: |cRXP_WARN_蒙福的希米亚|r
step
#completewith next
.gossipoption 56476 >>Talk to Himia, The Blessed
.goto 2023,49.34,49.41
step
>>杀死产卵|cff00ecffElements|r
.goto 2023,49.34,49.41
.complete 70374,1 
step
>>杀死雷暴。掠夺它们的鳞片
.goto 2023,50.57,50.14,30,0
.goto 2023,51.33,48.78,30,0
.goto 2023,51.08,47.44,30,0
.goto 2023,50.57,50.14
.complete 66687,3 
step
.pvp
.isWorldQuestAvailable 2023,70209
>>杀死该区域的鸭子（或玩家）
.goto 2023,42.87,36.02,35,0
.goto 2023,42.55,34.09,35,0
.goto 2023,46.31,33.35,35,0
#loop
.line 2023,42.87,36.02,42.55,34.09,46.31,33.35,
.goto 2023,42.87,36.02,35,0
.goto 2023,42.55,34.09,35,0
.goto 2023,46.31,33.35,35,0
.complete 70209,1 
step
.goto 2023,41.63,56.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.turnin 66687 >>Turn in Land of the Apex
.turnin 70374 >>Turn in Himia, the Blessed
.accept 66834 >>接任务: |cRXP_WARN_博学者雷伦|r
step
>>Click on the basket
.goto 2023,40.11,57.86
.complete 66834,1 
step
>>拿起手电筒并使用|cffffff00[ExtraActionButton]|r
.goto 2023,40.21,57.89
.complete 66834,2 
.complete 66834,3 
step
>>拿起长矛并使用|cffffff00[ExtraActionButton]|r
.goto 2023,40.06,57.77
.complete 66834,4 
.complete 66834,5 
step
>>拿起弓，使用|cffffff00[ExtraActionButton]|r
.goto 2023,40.05,57.73
.complete 66834,6 
.complete 66834,7 
step
.goto 2023,41.64,56.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nazuun
.turnin 66834 >>Turn in Rellen, the Learned
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞往Khansguard Jebotai并与他交谈
.goto 2023,41.89,61.80
.turnin 66222 >>Turn in The Calm Before the Storm
.turnin 71027 >>Turn in WANTED: Mara'nar the Thunderous
.accept 70229 >>接任务: |cRXP_WARN_秘术师博库|r
.target Khansguard Jebotai
step
.goto 2023,36.81,57.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 70229 >>Turn in Boku the Mystic
.accept 66254 >>接任务: |cRXP_WARN_悲观的秘术师|r
.target Initiate Boku
step
#title Totem 1
>>放置图腾|cffffff00（不共享）|r
.goto 2023,36.71,57.12
.complete 66254,1,1 
step
#title Totem 2
>>放置图腾|cffffff00（不共享）|r
.goto 2023,36.66,57.72
.complete 66254,1,2 
step
#title Totem 3
>>放置图腾|cffffff00（不共享）|r
.goto 2023,37.11,57.85
.complete 66254,1,3 
step
#title Totem 4
>>放置图腾|cffffff00（不共享）|r
.goto 2023,37.20,57.26
.complete 66254,1 
step
.goto 2023,36.81,57.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66254 >>Turn in Pessimistic Mystic
.accept 66224 >>接任务: |cRXP_WARN_秘术师的奥秘|r
.target Initiate Boku
step
.goto 2023,40.95,61.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Yuvari
.accept 66651 >>接任务: |cRXP_WARN_诺库缺德|r
step
.goto 2023,39.04,66.01
>>返回启动Zorig
.turnin 66651 >>Turn in Up to No-khud
.accept 66652 >>接任务: |cRXP_WARN_归于疗愈者|r
step
>>杀死|cff00ecffTombcaller Ganzaya
.goto 2023,37.07,65.70
.complete 66652,1 
step
>>拿起长矛|cffffff00（不共享）|r
.goto 2023,37.03,65.47
.complete 66652,2 
step
.goto 2023,39.05,66.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Zorig
.turnin 66652 >>Turn in Return to Mender
step
>>按照箭头|cffffff00（不共享）|r
.goto 2023,44.33,61.78
.complete 66224,1 
step
>>与博库的物品互动|cffffff00（未共享）|r
.goto 2023,44.55,61.94
.skipgossip
.complete 66224,2 
step
>>按照箭头|cffffff00（不共享）|r
.goto 2023,46.35,63.15
.complete 66224,3 
step
>>与不明半人马座互动|cffffff00（未共享）|r
.goto 2023,46.52,63.26
.skipgossip
.complete 66224,4 
step
>>按照箭头|cffffff00（不共享）|r
.goto 2023,49.09,63.44
.complete 66224,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku and Tigari Khan
.turnin 66224 >>Turn in Mystic Mystery
.goto 2023,49.31,63.22
.accept 70195 >>接任务: |cRXP_WARN_闪电强夺|r
.accept 66225 >>接任务: |cRXP_WARN_囤积图腾|r
.goto 2023,49.36,63.14
.target Initiate Boku
.target Tigari Khan
step
#completewith next
>>杀死|cff00ecffNokhud神秘猎人|r和|cff0ecffNoKhud掠夺者|r。掠夺他们的图腾|cfffff00（不共享）|r
.complete 66225,1 
step
>>杀死|cff00ecffShela the Windbinder|r。掠夺她获得订单|cffffff00（不共享）|r
.goto 2023,48.90,69.03
.complete 70195,1 
.complete 70195,2 
.unitscan Shela the Windbinder
step
>>杀死|cff00ecffNokhud神秘猎人|r和|cff0ecffNoKhud掠夺者|r。掠夺他们的图腾
#loop
.line 2023,50.20,68.72,50.86,67.94,51.60,67.66,48.90,66.86,48.90,66.86
.goto 2023,50.20,68.72,20,0
.goto 2023,50.86,67.94,20,0
.goto 2023,51.60,67.66,20,0
.goto 2023,48.90,66.86,20,0
.goto 2023,48.90,66.86,20,0
.complete 66225,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tigari Khan
.goto 2023,49.36,63.14
.turnin 66225 >>Turn in Taken By Storm
.turnin 70195 >>Turn in Taken By Storm
.accept 66236 >>接任务: |cRXP_WARN_捕风捉雷|r
.target Tigari Khan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.goto 2023,58.11,68.97
.turnin 66236 >>Turn in Catching Wind
.accept 66257 >>接任务: |cRXP_WARN_武禽戏法|r
.accept 66256 >>接任务: |cRXP_WARN_隼派主义|r
.accept 66242 >>接任务: |cRXP_WARN_气象控制|r
.target Initiate Boku
step
#completewith OhnahranPlainsChildWagons
>>杀死|cff00ecffPrimalists|r、|cff0ecffEssences|r和|cff00 ecffInitiates|r
.goto 2023,59.95,66.08,0,0
.complete 66256,2 
.complete 66242,1 
.complete 66242,2 
step
#title Child 1 + Wagon 1
>>摧毁捆绑图腾，放置风图腾
.goto 2023,58.06,67.43
.complete 66256,1,1 
.complete 66257,1,1 
step
#title Wagon 2
>>Place a wind totem
.goto 2023,59.21,65.51
.complete 66257,1,2 
step
#title Child 2
>>摧毁捆绑图腾
.goto 2023,59.38,64.94
.complete 66256,1,2 
step
#completewith OhnahranPlainsChildWagons
>>见到她就杀了她
.goto 2023,59.90,67.02,10,0
.goto 2023,59.90,67.02,0,0
.accept 69968 >>接任务: |cRXP_WARN_普罗泽拉·风击|r
.complete 69968,1 
step
#title Child 3
>>摧毁捆绑图腾
.goto 2023,60.78,66.94
.complete 66256,1,3 
step
#title Child 4
>>摧毁捆绑图腾
.goto 2023,61.76,67.17
.complete 66256,1,4 
step
#title Wagon 3
>>Place a wind totem
.goto 2023,61.76,66.65
.complete 66257,1,3 
step
#title Child 5
.goto 2023,59.64,64.03
.complete 66256,1,5 
step
#label OhnahranPlainsChildWagons
#title Child 6 + Wagon 4
>>摧毁捆绑图腾，放置风图腾
.goto 2023,58.82,61.76
.complete 66256,1 
.complete 66257,1 
step
#sticky
#label OhnahranPlainsEagleWeatherControl
.goto 2023,58.24,64.34,25,0
.goto 2023,58.62,68.30,25,0
.goto 2023,59.95,66.08,25,0
.goto 2023,61.46,65.40,25,0
.goto 2023,59.95,66.08,0,0
.complete 66256,2 
.complete 66242,1 
.complete 66242,2 
step
>>见到她就杀了她
.goto 2023,59.90,67.02
.accept 69968 >>接任务: |cRXP_WARN_普罗泽拉·风击|r
.complete 69968,1 
.unitscan Prozela Galeshott
step
#title Dragon Glyph: Windsong Rise
.goto 2023,61.49,64.33
.achievement 16576,10 >>拿起空中的龙雕
step
#requires OhnahranPlainsEagleWeatherControl
.goto 2023,60.66,63.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66242 >>Turn in Eagle-itarian
.turnin 66256 >>Turn in Eagle-itarian
.turnin 66257 >>Turn in Fowl Sorcery
.accept 66258 >>接任务: |cRXP_WARN_不，欧恩哈拉！|r
.target Initiate Boku
step
>>杀死奥哈拉（大鸟）周围的所有暴徒。最简单的（也不是慢很多）是在航路点位置等待大型暴徒产卵
*You can skip the next cutscene
.goto 2023,61.04,64.88
.complete 66258,1 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>Wait for the roleplay
.complete 66258,2 
step
.goto 2023,61.42,62.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Boku
.turnin 66258 >>Turn in Oh No, Ohn'ahra!
step
.goto 2023,56.26,75.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.turnin -65906 >>Turn in A Disgruntled Initiate
.accept 65901 >>接任务: |cRXP_WARN_偷溜出门|r
step
#title Totem 1/3
>>Place the totem
.goto 2023,56.67,76.29
.complete 65901,1,1 
step
#title Totem 2/3
>>Place the totem
.goto 2023,57.36,76.33
.complete 65901,1,2 
step
#title Totem 3/3
>>Place the totem
.goto 2023,57.00,75.47
.complete 65901,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.goto 2023,56.25,75.95
.skipgossip 190014,3
.complete 65901,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t顺着箭头往北走，与Radiya发起人交谈
.goto 2023,54.78,66.41
.turnin 65901 >>Turn in Sneaking Out
.accept 65907 >>接任务: |cRXP_WARN_酷爱水果|r
step
>>从地上的灌木丛中捡起野生丛林果实|cffffff00（你可以把你的其他角色留在任务给予者那里）|r
.goto 2023,54.02,70.80
.complete 65907,1 
step
>>在Mudstormers上使用|T134001:0|t[野生布什果实]
.goto 2023,54.61,67.59
.use 192743
.complete 65907,2 
step
.goto 2023,54.78,66.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Initiate Radiya
.turnin 65907 >>Turn in Favorite Fruit
.accept 65770 >>接任务: |cRXP_WARN_保证就是承诺|r
step
.goto 2023,54.78,66.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再次与发起Radiya对话
.skipgossip
.complete 65770,1 
step
>>Follow the arrow
.goto 2023,52.98,63.88
.complete 65770,2 
step
.goto 2023,52.02,63.24
>>Return to Godoloto
.turnin 65770 >>Turn in A Promise Is A Promise
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sentinel Olekk and Scout Watu
.goto 2023,81.03,58.91
.turnin -65837 >>Turn in Trouble In The Pines
.accept 66681 >>接任务: |cRXP_WARN_风暴附体|r
.accept 66680 >>接任务: |cRXP_WARN_数绒羊|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo and buy 1 Diced Meat
.goto 2023,80.64,58.76
.buy 193890,1
.complete 66680,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wish
.goto 2023,81.03,59.53
.skipgossip
.complete 66680,2 
step
#completewith OhnahranPlainsCountingSheep
>>主要杀死|cff00ecffStags|r、|cff0ecffDos|r和|cff00 ecffVultures|r。避开熊
.complete 66681,1 
step
#completewith OhnahranPlainsCountingSheep
>>杀死一只|cff00ecff风暴之兽|r。为风暴之碎片掠夺它。在您的库存中单击它|cffffff00（未共享）|r
.collect 194031,1,66689,1
.accept 66689 >>接任务: |cRXP_WARN_不只是石头|r
step
#title Argali Saved 1
>>在Lost Argali上使用|T135158:0|t[Wish's Wistle]|cffffff00（未共享）|r
.goto 2023,80.49,63.11
.use 193892
.complete 66680,3,1 
step
#title Argali Saved 2
>>在Lost Argali上使用|T135158:0|t[Wish's Wistle]|cffffff00（未共享）|r
.goto 2023,80.60,65.37
.use 193892
.complete 66680,3,2 
step
#title Argali Saved 3
>>在Lost Argali上使用|T135158:0|t[Wish's Wistle]|cffffff00（未共享）|r
.goto 2023,81.21,65.83
.use 193892
.complete 66680,3,3 
step
#title Argali Saved 4
>>在Lost Argali上使用|T135158:0|t[Wish's Wistle]|cffffff00（未共享）|r
.goto 2023,81.83,66.19
.use 193892
.complete 66680,3,4 
step
#label OhnahranPlainsCountingSheep
#title Argali Saved 5
>>在Lost Argali上使用|T135158:0|t[Wish's Wistle]|cffffff00（未共享）|r
.goto 2023,82.45,64.41
.use 193892
.complete 66680,3 
step
>>主要杀死|cff00ecffStags|r、|cff0ecffDos|r和|cff00 ecffVultures|r。避开熊
.goto 2023,82.39,64.69,25,0
#loop
.line 2023,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93,81.76,64.72,82.30,63.21,84.10,64.88,83.20,65.93
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.goto 2023,81.76,64.72,25,0
.goto 2023,82.30,63.21,25,0
.goto 2023,84.10,64.88,25,0
.goto 2023,83.20,65.93,25,0
.complete 66681,1 
step
>>杀死一只|cff00ecff风暴之兽|r。为风暴之碎片掠夺它。在您的库存中单击它|cffffff00（未共享）|r
.collect 194031,1,66689,1
.goto 2023,82.34,64.59
.accept 66689 >>接任务: |cRXP_WARN_不只是石头|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66680 >>Turn in More Than A Rock
.turnin 66681 >>Turn in Tempests Abound
.turnin 66689 >>Turn in More Than A Rock
.accept 66683 >>接任务: |cRXP_WARN_最后分析法|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Basan
.goto 2023,80.96,59.52
.skipgossip 1
.complete 66683,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sondo
.goto 2023,80.64,58.76
.skipgossip 2
.complete 66683,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nakeena
.goto 2023,80.44,57.89
.skipgossip 2
.complete 66683,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,81.03,58.97
.turnin 66683 >>Turn in Last Resort Analysis
.accept 65836 >>接任务: |cRXP_WARN_风暴显露|r
step
>>Follow the arrow
.goto 2023,83.62,60.66
.complete 65836,1 
step
>>杀死|cff00ecffStormed Blackpaw|r
.goto 2023,83.99,60.79
.complete 65836,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,83.98,60.73
.turnin 65836 >>Turn in Show of Storm
.accept 66684 >>接任务: |cRXP_WARN_追逐风暴|r
step
#completewith next
>>杀死|cff00ecffPrimalist部队|r
.goto 2023,84.89,62.83,0,0
.complete 66684,1 
step
>>点击风暴塔
.goto 2023,85.03,64.14
.complete 66684,2 
step
#completewith next
>>杀死|cff00ecffPrimalist部队|r
.goto 2023,84.89,62.83
.complete 66684,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Watu
.goto 2023,80.85,58.96
.turnin 66684 >>Turn in Storm Chasing
step
.isWorldQuestAvailable 2023,70146
>>Kill mobs in the area
.goto 2023,83.27,55.61,25,0
.goto 2023,83.71,53.87,25,0
.goto 2023,84.92,53.38,25,0
.goto 2023,85.88,54.09,25,0
.goto 2023,84.53,55.87,25,0
#loop
.line 2023,83.27,55.61,83.71,53.87,84.92,53.38,85.88,54.09,84.53,55.87
.goto 2023,83.27,55.61,25,0
.goto 2023,83.71,53.87,25,0
.goto 2023,84.92,53.38,25,0
.goto 2023,85.88,54.09,25,0
.goto 2023,84.53,55.87,25,0
.accept 70146 >>接任务: |cRXP_WARN_高地斥驳|r
.complete 70146,1 
step
.isWorldQuestAvailable 2023,70638
>>杀死|cff00ecffUnleashed Storm|r和|cff0ecffWinddevils|r
.goto 2023,74.09,71.38
.complete 70638,1 
.complete 70638,2 
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup 命运之线Multibox 60-70
#name D4Thaldraszus Multibox
#displayname Chapter 4 - Thaldraszus Multibox (End)
step
.xp 70,1
#completewith next
+欢迎使用RestedXP的Thaldraszus ToF指南。

step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.accept 66134 >>接任务: |cRXP_WARN_艾泽拉斯虫害控制|r
step
.xp 70,1
>>杀死|cff00ecff搅拌过的幼苗|r
.goto 2025,38.34,74.99,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
#loop
.line 2025,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66,38.34,74.99,18,38.33,75.60,37.69,76.04,37.23,76.66
.goto 2025,38.34,74.99,18,0
.goto 2025,18.00,38.33,18,0
.goto 2025,75.60,37.69,18,0
.goto 2025,76.04,37.23,18,0
.goto 2025,76.66,38.34,18,0
.goto 2025,74.99,18.00,18,0
.goto 2025,38.33,75.60,18,0
.goto 2025,37.69,76.04,18,0
.goto 2025,37.23,76.66,18,0
.complete 66134,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66134 >>Turn in Azeroth Pest Control
.accept 66135 >>接任务: |cRXP_WARN_园丁的学徒|r
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击地面上的青铜秒表|cffffff00（未共享）|r
.goto 2025,38.91,74.25
.accept 66278 >>接任务: |cRXP_WARN_彼之垃圾|r
step
.xp 70,1
>>点击储物箱、毁坏的桶、花园垃圾和废木材来清理房间
.goto 2025,38.94,74.18
.complete 66135,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66135 >>Turn in The Gardener's Apprentice
.turnin 66278 >>Turn in One Drakonid's Junk
.accept 66136 >>接任务: |cRXP_WARN_元素提炼|r
.accept 66137 >>接任务: |cRXP_WARN_鞭笞一击|r
.accept 66279 >>接任务: |cRXP_WARN_准点新徒|r
step
.xp 70,1
>>点击地面上的巴兹尔顿勋爵
.goto 2025,37.88,75.44
.complete 66279,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.complete 66279,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66279 >>Turn in New Kid on the Clock
.accept 66138 >>接任务: |cRXP_WARN_流沙过隙|r
step
.xp 70,1
#title Pile of Sand 1/8
>>捡起地上的沙子
.goto 2025,35.52,72.78
.complete 66138,1,1 
step
.xp 70,1
#title Pile of Sand 2/8
>>捡起地上的沙子
.goto 2025,35.69,72.60
.complete 66138,1,2 
step
.xp 70,1
#title Pile of Sand 2/8
>>捡起地上的沙子
.goto 2025,35.69,72.60
.complete 66138,1,2 
step
.xp 70,1
#title Pile of Sand 4/8
>>捡起地上的沙子
.goto 2025,35.83,72.77,-1
.goto 2025,35.81,72.48,-1
.complete 66138,1,4 
step
.xp 70,1
#title Pile of Sand 5/8
>>捡起地上的沙子
.goto 2025,36.02,72.57
.complete 66138,1,5 
step
.xp 70,1
#title Pile of Sand 6/8
>>捡起地上的沙子
.goto 2025,36.22,72.42
.complete 66138,1,6 
step
.xp 70,1
#title Pile of Sand 7/8
>>捡起地上的沙子
.goto 2025,36.47,72.43
.complete 66138,1,7 
step
.xp 70,1
#title Pile of Sand 8/8
>>捡起地上的沙子
.goto 2025,36.61,72.69
.complete 66138,1 
step
.xp 70,1
>>杀死|cff00ecffLiskron the Dazzling |r。如果你造成低伤害，请跳过
.goto 2025,36.24,72.50
.accept 72116 >>接任务: |cRXP_WARN_炫目的里斯克隆|r
.complete 72116,1 
step
.xp 70,1
>>杀死|cff00ecffChurning飞溅|r和|cff0ecffHulking Waves |r。掠夺它们的本质|cffffff00（未共享）|r
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,18,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
#loop
.line 2025,37.51,71.73,37.40,70.99,37.32,69.70,36.88,70.49,36.88,71.21
.goto 2025,37.51,71.73,20,0
.goto 2025,37.40,70.99,20,0
.goto 2025,37.32,69.70,20,0
.goto 2025,36.88,70.49,20,0
.goto 2025,36.88,71.21,20,0
.complete 66136,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Orizmu
.goto 2025,35.24,72.64
.turnin 66138 >>Turn in Like Sands Through the Hourglass
step
.xp 70,1
>>杀死该地区的|cff00ecffLashers|r
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71,67,20,0
#loop
.line 2025,34.73,72.95,33.89,72.63,34.16,71.85,34.60,71,67,34.79,72.37
.goto 2025,34.73,72.95,20,0
.goto 2025,33.89,72.63,20,0
.goto 2025,34.16,71.85,20,0
.goto 2025,34.60,71.00,20,0
.goto 2025,67.00,34.79,20,0
.complete 66137,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66136 >>Turn in Elemental Extract
.turnin 66137 >>Turn in Lashing Out
.accept 66139 >>接任务: |cRXP_WARN_[Flame at Last]|r
step
.xp 70,1
>>在|cff00ecffBlazing Inferno|r上使用|T236213:0|t【浓缩水精华】并杀死它
.goto 2025,35.58,75.16
.complete 66139,1 
.complete 66139,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.46
.turnin 66139 >>Turn in Flame at Last
.accept 66412 >>接任务: |cRXP_WARN_继续前行，巴希尔顿|r
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Basilton
.goto 2025,37.88,75.44
.complete 66412,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryrmpech
.goto 2025,37.86,75.47
.turnin 66412 >>Turn in Carry On, Basilton

step
.xp 70,1
.goto 2112,48.09,59.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hot Springs Spa Promoter
.accept 72067 >>接任务: |cRXP_WARN_休闲时间！|r


step
.xp 70,1
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.goto 2112,58.15,34.90
.accept 66159 >>接任务: |cRXP_WARN_凶恶之讯|r
.skipgossip 187678,1
.complete 66159,1 
.target Alexstrasza the Life-Binder
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder and Captain Drine
.turnin 66159 >>Turn in A Message Most Dire
.goto 2112,58.15,34.90
.accept 66166 >>接任务: |cRXP_WARN_耳聪目明|r
.accept 66163 >>接任务: |cRXP_WARN_无处可藏|r
.goto 2112,59.39,34.83
.target Alexstrasza the Life-Binder
.target Captain Drine
step
.xp 70,1
#title Dragon Glyph: Valdrakken
.goto 2112,59.52,38.27
.achievement 16578,4 >>在塔上方捡起龙雕文|cffffff00
step
.xp 70,1
#sticky
#label ThaldraszusNowheretoHide
>>使用|T317244:0:0|t在每个角色上显示龙眼|cffffff00 |r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cff00ff00Valdrakken Citizens|r marked on your (mini)map
.use 198859
.goto 2112,54.72,61.41,0
.goto 2112,51.12,62.54,0
.goto 2112,48.43,58.09,0
.goto 2112,50.54,50.77,0
.goto 2112,48.85,47.73,0
.goto 2112,35.85,56.65,0
.goto 2112,36.17,64.03,0
.goto 2112,41.60,65.28,0
.goto 2112,39.93,71.38,0
.goto 2112,37.98,71.29,0
.goto 2112,49.17,76.43,0
.goto 2112,52.35,76.87,0
.goto 2112,54.31,70.02,0
.goto 2112,40.11,51.80,0
.goto 2112,27.45,60.38,0
.goto 2112,25.16,64.89,0
.goto 2112,32.18,68.50,0
.goto 2112,31.40,62.95,0
.skipgossip
.complete 66163,1 
.complete 66163,2 
step
.xp 70,1
#completewith next
.goto 2112,55.50,57.34,15 >>用你的龙骑座滑翔下来，进入岸边
step
.xp 70,1
>>与储物箱互动
.goto 2112,59.18,54.69
.complete 66166,2 
step
.xp 70,1
#completewith next
.goto 2112,48.43,49.90,8 >>进入客栈
step
.xp 70,1
>>与酒杯互动
.goto 2112,46.94,47.74
.complete 66166,3 
step
.xp 70,1
#completewith next
.goto 2112,47.45,46.22
.home >>将你的炉石设定为烤公羊
step
.xp 70,1
#completewith next
.goto 2112,48.43,49.90,8 >>Leave the inn
step
.xp 70,1
>>与联盟分类账进行交互|cffffff00（您可以在演员阵容中搜索其他角色的渗透者）|r
.goto 2112,34.66,61.30
.complete 66166,1 
step
.xp 70,1
#requires ThaldraszusNowheretoHide
.goto 2112,54.72,47.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66163 >>Turn in Nowhere to Hide
.turnin 66166 >>Turn in Eyes and Ears
.accept 66167 >>接任务: |cRXP_WARN_南侧遇袭|r
.target Captain Drine
step
.xp 70,1
>>Follow the arrow
.goto 2025,35.80,82.12
.complete 66167,1 
step
.xp 70,1
>>与守护者Velomir互动
.goto 2025,35.85,82.56
.complete 66167,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,35.85,82.56
.turnin 66167 >>Turn in Southern Exposure
.accept 66169 >>接任务: |cRXP_WARN_现世报|r
.accept 66246 >>接任务: |cRXP_WARN_战争迷雾|r
.target Guardian Velomir
step
.xp 70,1
#completewith ThaldraszusLookoutMordren
>>杀死|cff00ecffMagmaswear灵长类动物|r
.goto 2025,36.65,84.36,0,0
.complete 66169,1 
step
.xp 70,1
>>与|cff00ff00Mangled Corpse|r|cffffff00（未共享）|r交互
#title Unit Found 1
.goto 2025,36.25,83.73
.skipgossip
.complete 66246,1,1 
step
.xp 70,1
#completewith next
+带着你的龙骑坐骑飞起来
step
.xp 70,1
>>与|cff00ff00Mangled Corpse|r|cffffff00（未共享）|r交互
#title Unit Found 2
.goto 2025,35.76,84.19
.skipgossip
.complete 66246,1,2 
step
.xp 70,1
>>与|cff00ff00Mangled Corpse|r|cffffff00（未共享）|r交互
#title Unit Found 3
.goto 2025,36.46,85.39
.skipgossip
.complete 66246,1,3 
step
.xp 70,1
#label ThaldraszusLookoutMordren
>>飞上塔并杀死|cff00ecffLookout Mordren|r。如果你造成低伤害，请跳过
.goto 2025,36.80,85.59
.accept 69967 >>接任务: |cRXP_WARN_哨兵莫德伦|r
.complete 69967,1 
step
.xp 70,1
>>杀死|cff00ecffMagmaswear灵长类动物|r
.goto 2025,36.67,83.38,20,0
.goto 2025,36.65,84.36,20,0
.goto 2025,36.08,84.59,20,0
.goto 2025,36.67,83.38
.complete 66169,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir.
.goto 2025,37.62,83.08
.turnin 66169 >>Turn in Vengeance, Served Hot
.turnin 66246 >>Turn in The Fog of Battle
.accept 66245 >>接任务: |cRXP_WARN_追思牺牲者|r
.target Guardian Velomir
step
.xp 70,1
>>与戴着面具的长矛互动
.goto 2025,37.85,83.26
.accept 66247 >>接任务: |cRXP_WARN_九点五成新|r
step
.xp 70,1
>>滑下来和二等兵希查谈谈。在路上到处找他。造成低伤害时跳过
.goto 2025,37.54,86.05,100,0
.goto 2025,37.44,82.26,100,0
.goto 2025,37.54,86.05,100,0
.goto 2025,37.44,82.26
.skipgossip
.accept 70986 >>接任务: |cRXP_WARN_列兵西克扎尔|r
.complete 70986,1 
step
.xp 70,1
.goto 2025,38.56,83.41
>>与重型绳索的线圈相互作用
.accept 66248 >>接任务: |cRXP_WARN_绑扎系固|r
step
.xp 70,1
#completewith ThaldraszusRemembertheThingsTogether
>>杀死|cff00ecffMagmaswear Rockcleaver|r。掠夺他们的长矛|cffffff00（未共享）|r
.goto 2025,38.70,84.41,0,0
.complete 66247,1 
step
.xp 70,1
#title |T1408443:0:0|tSignet 1
>>与地面上的尸体互动|cffffff00（未共享）|r
.goto 2025,38.89,84.05
.complete 66245,1,1 
step
.xp 70,1
#title |T1119938:0:0|tRope 1
>>松开绳索|cffffff00（不共享）|r
.goto 2025,39.14,84.03
.complete 66248,1,1 
step
.xp 70,1
#title |T1408443:0:0|tSignet 2
>>与地面上的尸体互动|cffffff00（未共享）|r
.goto 2025,39.37,83.93
.complete 66245,1,2 
step
.xp 70,1
#title |T1119938:0:0|tRope 2
>>松开绳索|cffffff00（不共享）|r
.goto 2025,39.47,83.83
.complete 66248,1,2 
step
.xp 70,1
#title |T1408443:0:0|tSignet 3
>>与地面上的尸体互动|cffffff00（未共享）|r
.goto 2025,39.22,83.63
.complete 66245,1,3 
step
.xp 70,1
#title |T1408443:0:0|tSignet 4
>>与地面上的尸体互动|cffffff00（未共享）|r
.goto 2025,39.21,83.18
.complete 66245,1,4 
step
.xp 70,1
#title |T1119938:0:0|tRope 3
>>松开绳索|cffffff00（不共享）|r
.goto 2025,39.45,82.52
.complete 66248,1,3 
step
.xp 70,1
#title |T1408443:0:0|tSignet 5
>>与地面上的尸体互动|cffffff00（未共享）|r
.goto 2025,39.69,82.10
.complete 66245,1,5 
step
.xp 70,1
#title |T1408443:0:0|tSignet 6
>>与地面上的尸体互动|cffffff00（未共享）|r
.goto 2025,39.47,81.77
.complete 66245,1,6 
step
.xp 70,1
#title |T1408443:0:0|tSignet 7
>>与地面上的尸体互动|cffffff00（未共享）|r
.goto 2025,39.00,81.90
.complete 66245,1,7 
step
.xp 70,1
#title |T1408443:0:0|tSignet 7 + |T1119938:0:0|tRope 4
>>与地面上的尸体互动|cffffff00（未共享）|r
.goto 2025,39.09,82.54
.complete 66245,1,7 
.complete 66248,1,4 
step
.xp 70,1
#title |T1119938:0:0|tRope 5
>>松开绳索|cffffff00（不共享）|r
.goto 2025,38.74,82.18
.complete 66248,1 
step
.xp 70,1
#label ThaldraszusRemembertheThingsTogether
#title |T1408443:0:0|tSignet 8
>>与地面上的尸体互动|cffffff00（未共享）|r
.goto 2025,39.00,81.90
.complete 66245,1 
step
.xp 70,1
>>杀死|cff00ecffMagmaswear Rockcleaver|r。掠夺他们的长矛|cffffff00（未共享）|r
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
#loop
.line 2025,39.24,83.73,39.05,86.20,39.46,82.15,38.47,83.06,39.09,83.09,38.56,84.65
.goto 2025,39.24,83.73,20,0
.goto 2025,39.05,86.20,20,0
.goto 2025,39.46,82.15,20,0
.goto 2025,38.47,83.06,20,0
.goto 2025,39.09,83.09,20,0
.goto 2025,38.56,84.65,20,0
.complete 66247,1 
step
.xp 70,1
.goto 2025,37.63,83.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.turnin 66245 >>Turn in Remember the Fallen
.turnin 66247 >>Turn in Slightly Used Weapons
.turnin 66248 >>Turn in Tying Things Together
.accept 66249 >>接任务: |cRXP_WARN_净空行动|r
.target Guardian Velomir
step
.xp 70,1
>>登上围攻蝎子|cffffff00（不共享，与每个角色一起进入围攻蝎子，杀戮是共享的）|r
.goto 2025,40.88,83.88
.complete 66249,1 
step
.xp 70,1
>>环顾四周并发送垃圾邮件|T1412205:0:0|t围攻螺栓（1）以杀死|cff00ecffMagmaswear Trueborn|r
.goto 2025,40.88,83.88
.complete 66249,2 
step
.xp 70,1
#completewith next
+您可以跳过下一个过场（Esc->是）
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.56,85.48
.turnin 66249 >>Turn in Clear the Sky
.accept 66250 >>接任务: |cRXP_WARN_长官何在？|r
.target Guardian Velomir
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
*You can skip the next cinematic
.goto 2025,40.19,85.16
.skipgossip
.complete 66250,1 
.target Guardian Velomir
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.13
.turnin 66250 >>Turn in Where's The Chief?
.accept 66251 >>接任务: |cRXP_WARN_火焰斗士|r
.target Guardian Velomir
step
.xp 70,1
>>使用射程能力将其击倒
.goto 2025,40.12,86.61
.complete 66251,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Guardian Velomir
.goto 2025,40.15,85.14
.turnin 66251 >>Turn in Fire Fighter
.accept 66252 >>接任务: |cRXP_WARN_战况报告|r
.target Guardian Velomir
step
.xp 70,1
#completewith next
.cooldown item,6489,>0,1
.hs >>Hearth to Valdrakken
step
.xp 70,1
#completewith next
.goto 2112,61.95,32.10
.cast 387905 >>Use the teleporter
step
.xp 70,1
.goto 2112,55.94,39.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Drine
.turnin 66252 >>Turn in Reporting In
.target Captain Drine
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2112,61.56,39.13
.accept 66320 >>接任务: |cRXP_WARN_光阴流转|r
.target Nozdormu


step
.xp 70,1
.goto 2025,40.42,49.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Spa Concierge
.turnin -72067 >>Turn in Relaxation Time!
.accept 72246 >>接任务: |cRXP_WARN_宁静美梦|r
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 72246 >>Turn in Serene Dreams
.accept 70738 >>接任务: |cRXP_WARN_俞加课|r
.goto 2025,40.49,48.93
.accept 70740 >>接任务: |cRXP_WARN_蒸汽清洁|r
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith ThaldraszusTheYougaClass
>>杀死|cff00ecffElements|r
.complete 70740,1 
step
.xp 70,1
.goto 2025,41.47,47.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与放置不当的行李互动
.accept 70741 >>接任务: |cRXP_WARN_他人所爱|r
step
.xp 70,1
>>营救尤加教官|cffffff00（未共享）|r
.goto 2025,41.17,47.49
.complete 70738,2 
step
.xp 70,1
#title Belongings Found 2/6
>>捡起地上的书|cffffff00（不共享）|r
.goto 2025,41.16,47.43
.complete 70741,1,2 
step
.xp 70,1
#title Student Rescued 1/6
>>营救学生|cffffff00（未共享）|r
.goto 2025,41.45,47.04
.complete 70738,1,1 
step
.xp 70,1
#title Student Rescued 2/6
>>营救学生|cffffff00（未共享）|r
.goto 2025,41.06,46.81
.complete 70738,1,2 
step
.xp 70,1
#title Belongings Found 3/6
>>拿起丢失的S.E.L.F.I.E相机|cffffff00（未共享）|r
.goto 2025,40.72,47.31
.complete 70741,1,3 
step
.xp 70,1
#title Student Rescued 3/6
>>营救学生|cffffff00（未共享）|r
.goto 2025,40.51,47.31
.complete 70738,1,3 
step
.xp 70,1
#title Student Rescued 4/6
>>营救学生|cffffff00（未共享）|r
.goto 2025,40.18,46.94
.complete 70738,1,4 
step
.xp 70,1
#title Belongings Found 4/6
>>拿起时尚雨伞|cffffff00（不共享）|r
.goto 2025,40.10,46.61
.complete 70741,1,4 
step
.xp 70,1
#title Belongings Found 5/6
>>捡起翻过来的沙滩椅
.goto 2025,40.27,46.16
.complete 70741,1,5 
step
.xp 70,1
#title Student Rescued 5/6
>>营救学生|cffffff00（未共享）|r
.goto 2025,40.03,45.98
.complete 70738,1,5 
step
.xp 70,1
#title Student Rescued 6/6
>>营救学生|cffffff00（未共享）|r
.goto 2025,40.81,46.09
.complete 70738,1 
step
.xp 70,1
#label ThaldraszusTheYougaClass
#title Belongings Found 6/6
>>拿起Soggy You ga枕头|cffffff00（未共享）|r
.goto 2025,41.01,45.96
.complete 70741,1 
step
.xp 70,1
>>杀死|cff00ecffElements|r
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
#loop
.line 2025,39.99,45.69,39.46,47.37,40.46,48.00,41.48,47.33,40.98,45.52
.goto 2025,39.99,45.69,30,0
.goto 2025,39.46,47.37,30,0
.goto 2025,40.46,48.00,30,0
.goto 2025,41.48,47.33,30,0
.goto 2025,40.98,45.52,30,0
.complete 70740,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xijan Thornpaw and Quillius
.turnin 70738 >>Turn in The You-ga Class
.turnin 70741 >>Turn in Some Favorite Things
.goto 2025,40.49,48.92
.turnin 70740 >>Turn in Steam Cleaning
.goto 2025,40.46,48.88
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara
.goto 2025,40.49,48.97
.accept 70743 >>接任务: |cRXP_WARN_宝贝宝宝|r
step
.xp 70,1
>>Follow the arrow
.goto 2025,38.90,45.22
.complete 70743,1 
step
.xp 70,1
>>等待角色扮演并点击小狗|cffffff00（未共享）|r
.goto 2025,38.90,45.22
.complete 70743,2 
step
.xp 70,1
.goto 2025,38.89,45.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与恐怖的混乱互动
.accept 70744 >>接任务: |cRXP_WARN_看呐！骨头！|r
step
.xp 70,1
#title Cleaned Mess 2/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.92,45.22
.complete 70744,1,2 
step
.xp 70,1
#title Cleaned Mess 3/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.52,45.73
.complete 70744,1,3 
step
.xp 70,1
#title Cleaned Mess 4/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.65,46.19
.complete 70744,1,4 
step
.xp 70,1
#title Cleaned Mess 5/10
>>从地面上捡起更多可怕的混乱
.goto 2025,37.91,46.22
.complete 70744,1,5 
step
.xp 70,1
#title Cleaned Mess 6/10
>>从地面上捡起更多可怕的混乱
.goto 2025,37.79,46.29
.complete 70744,1,6 
step
.xp 70,1
#title Cleaned Mess 7/10
>>从地面上捡起更多可怕的混乱
.goto 2025,38.03,47.10
.complete 70744,1,7 
step
.xp 70,1
#title Cleaned Mess 8/10
>>从地面上捡起更多可怕的混乱
.goto 2025,39.18,47.34
.complete 70744,1,8 
step
.xp 70,1
#title Cleaned Mess 9/10
>>从地面上捡起更多可怕的混乱
.goto 2025,39.56,47.21
.complete 70744,1,9 
step
.xp 70,1
#title Cleaned Mess 10/10
>>从地面上捡起更多可怕的混乱
.goto 2025,39.70,47.88
.complete 70744,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elzara and Quillius
.turnin 70743 >>Turn in Precious Baby
.turnin 70744 >>Turn in Look at the Bones!
.goto 2025,40.49,48.97
.accept 70745 >>接任务: |cRXP_WARN_强制休闲|r
.goto 2025,40.46,48.88
step
.xp 70,1
#completewith next
.goto 2025,39.69,47.45,20,0
.goto 2025,39.89,48.45,15 >>进入洞穴 below
step
.xp 70,1
>>杀死|cff00ecffVadme Blackheart|r。离开火和水的虚空区域
.goto 2025,40.04,49.05
.complete 70745,1 
step
.xp 70,1
.goto 2025,40.46,48.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quilius
.turnin 70745 >>Turn in Enforced Relaxation


step
.xp 70,1
.goto 2025,54.68,69.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.accept 66100 >>接任务: |cRXP_WARN_补给重担|r
.accept 66230 >>接任务: |cRXP_WARN_糊图请求|r
step
.xp 70,1
#completewith ThaldraszusSupplyinginWeight
>>杀死|cff00ecffEmebertoths|r。抢走他们的钥匙
.complete 66230,1 
step
.xp 70,1
#title Supplies 1/6
>>提取Waywatcher耗材|cffffff00（不共享）|r
.goto 2025,55.07,68.67
.complete 66100,1,1 
step
.xp 70,1
#title Supplies 2/6
>>提取Waywatcher耗材|cffffff00（不共享）|r
.goto 2025,55.18,68.11
.complete 66100,1,2 
step
.xp 70,1
#title Supplies 3/6
>>提取Waywatcher耗材|cffffff00（不共享）|r
.goto 2025,55.51,68.43
.complete 66100,1,3 
step
.xp 70,1
#title Supplies 4/6
>>提取Waywatcher耗材|cffffff00（不共享）|r
.goto 2025,55.73,68.11
.complete 66100,1,4 
step
.xp 70,1
#label ThaldraszusSupplyinginWeight
#title Supplies 5/6
>>提取Waywatcher耗材|cffffff00（不共享）|r
.goto 2025,55.54,69.35
.complete 66100,1,5 
step
.xp 70,1
>>杀死|cff00ecffEmebertoths|r。掠夺它们以获取密钥|cffffff00（未共享）|r
.goto 2025,55.51,69.03
.complete 66230,1 
step
.xp 70,1
>>打开Tarasek密码箱|cffffff00（未共享）|r
.goto 2025,55.53,69.37
.complete 66230,2 
step
.xp 70,1
#title Supplies 6/6
>>提取Waywatcher耗材|cffffff00（不共享）|r
.goto 2025,55.93,68.61
.complete 66100,1 
step
.xp 70,1
.goto 2025,56.95,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.turnin 66100 >>Turn in Supplying in Weight
.turnin 66230 >>Turn in A Sketchy Request
.accept 66456 >>接任务: |cRXP_WARN_剧毒调和|r
.accept 66457 >>接任务: |cRXP_WARN_终结蓝色|r
step
.xp 70,1
#completewith ThaldraszusEndingtheBluePeriod
>>杀死|cff00ecffEmbertoth长矛猎人|r。掠夺他们的长矛
.complete 66456,1 
step
.xp 70,1
#completewith next
.goto 2025,55.78,71.02,15 >>进入洞穴
step
.xp 70,1
#label ThaldraszusEndingtheBluePeriod
>>杀死|cff00ecffBluescale|r
.complete 66457,1 
step
.xp 70,1
>>杀死|cff00ecffEmbertoth长矛猎人|r。掠夺他们的长矛
.goto 2025,55.31,71.58,25,0
.goto 2025,55.27,70.46,25,0
.goto 2025,56.22,69.87,25,0
.goto 2025,56.37,70.42,25,0
.goto 2025,55.75,70.94,25,0
#loop
.line 2025,55.31,71.58,55.27,70.46,56.22,69.87,56.37,70.42,55.75,70.94
.goto 2025,55.31,71.58,30,0
.goto 2025,55.27,70.46,30,0
.goto 2025,56.22,69.87,30,0
.goto 2025,56.37,70.42,30,0
.goto 2025,55.75,70.94,30,0
.complete 66456,1 
step
.xp 70,1
.goto 2025,56.94,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.turnin 66456 >>Turn in A Poisonous Palette
.turnin 66457 >>Turn in Ending the Blue Period
step
.xp 70,1
.goto 2025,56.94,67.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Waywatcher Alvi
.accept 66465 >>接任务: |cRXP_WARN_摧毁长矛贮藏|r
.accept 66467 >>接任务: |cRXP_WARN_艺术源于生活|r
step
.xp 70,1
#title Cache Destroyed 1/8
.goto 2025,56.90,66.44
>>Destroy the Spear Cache
.complete 66465,1,1 
step
.xp 70,1
#title Cache Destroyed 2/8
.goto 2025,57.27,66.15
>>Destroy the Spear Cache
.complete 66465,1,2 
step
.xp 70,1
#title Cache Destroyed 3/8
.goto 2025,57.45,66.89
>>Destroy the Spear Cache
.complete 66465,1,3 
step
.xp 70,1
#title Cache Destroyed 4/8
.goto 2025,57.83,66.38
>>Destroy the Spear Cache
.complete 66465,1,4 
step
.xp 70,1
#title Cache Destroyed 5/8
.goto 2025,58.15,66.11
>>Destroy the Spear Cache
.complete 66465,1,5 
step
.xp 70,1
#title Cache Destroyed 6/8
.goto 2025,58.33,66.32
>>Destroy the Spear Cache
.complete 66465,1,6 
step
.xp 70,1
#title Cache Destroyed 7/8
.goto 2025,58.30,66.40
>>Destroy the Spear Cache
.complete 66465,1,7 
step
.xp 70,1
#title Cache Destroyed 8/8
.goto 2025,58.17,66.77
>>Destroy the Spear Cache
.complete 66465,1 
step
.xp 70,1
>>杀死|cff00ecffGreater Venomsprout|r
.goto 2025,58.30,67.16
.complete 66467,1 
step
.xp 70,1
.goto 2025,54.65,69.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开洞穴，与Waywatcher Alvi交谈
.turnin 66465 >>Turn in Cache and Release
.turnin 66467 >>Turn in Art Imitates Life


step
.xp 70,1
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie and wait for the roleplay |cffffff00(not shared)|r
>>|cffffff00在等待角色扮演时使用龙雕文|r
.skipgossip 187100,1
.timer 44,Roleplay Duration
.complete 66320,1 
.target Chromie
step
.xp 70,1
.goto 2025,57.46,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 66320 >>Turn in The Flow of Time
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.goto 2025,57.53,78.79
.accept 66080 >>接任务: |cRXP_WARN_临时困扰|r
.target Andantenormu
step
.xp 70,1
>>小心别被撞倒
.goto 2025,55.60,77.33
.accept 69873 >>接任务: |cRXP_WARN_赫恩拉尔|r
.complete 69873,1 
step
.xp 70,1
>>Follow the arrow
.goto 2025,54.99,75.64
.complete 66080,1 
step
.xp 70,1
.goto 2025,54.96,75.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66080 >>Turn in Temporal Difficulties
.accept 70136 >>接任务: |cRXP_WARN_无暇思痛|r
.target Siaszerathel
step
.xp 70,1
#sticky
#label ThaldraszusHaventGotTimeForStaff
>>接员工|cffffff00（不共享）|r
.goto 2025,52.72,76.86,0,0
.complete 70136,1 
step
.xp 70,1
>>杀死|cff00ecffCrazed Alpha |r
.goto 2025,52.69,76.81
.complete 70136,3 
step
.xp 70,1
#requires ThaldraszusHaventGotTimeForStaff
>>拿起笔记|cffffff00（不共享）|r
.goto 2025,53.18,77.39
.complete 70136,2 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,54.96,75.65
.turnin 70136 >>Turn in Haven't Got Time For the Pain
.accept 66082 >>接任务: |cRXP_WARN_瓶装时间|r
.accept 66081 >>接任务: |cRXP_WARN_时光飞逝|r
.target Siaszerathel
step
.xp 70,1
#sticky
#label ThaldraszusTimeinaBottle
.goto 2025,54.25,76.62,0,0
>>杀死该区域的暴民并穿过时间蛾（发光的球体）
*Sadly others can steal your orbs :(
.complete 66082,1 
step
.xp 70,1
#title Collector 1
>>拾取收集器|cffffff00（未共享）|r
.goto 2025,55.07,76.76
.complete 66081,1,1 
step
.xp 70,1
#title Collector 2
>>拾取收集器|cffffff00（未共享）|r
.goto 2025,55.57,76.80
.complete 66081,1,2 
step
.xp 70,1
#title Collector 3
>>拾取收集器|cffffff00（未共享）|r
.goto 2025,56.48,78.08
.complete 66081,1,3 
step
.xp 70,1
#title Collector 4
>>拾取收集器|cffffff00（未共享）|r
.goto 2025,55.60,78.95
.complete 66081,1,4 
step
.xp 70,1
#title Collector 5
>>拾取收集器|cffffff00（未共享）|r
.goto 2025,55.02,78.81
.complete 66081,1,5 
step
.xp 70,1
#title Collector 6
>>拾取收集器|cffffff00（未共享）|r
.goto 2025,55.20,77.85
.complete 66081,1,6 
step
.xp 70,1
#title Collector 7
>>拾取收集器|cffffff00（未共享）|r
.goto 2025,54.34,77.86
.complete 66081,1,7 
step
.xp 70,1
#title Collector 8
>>拾取收集器|cffffff00（未共享）|r
.goto 2025,54.25,76.62
.complete 66081,1 
step
.xp 70,1
#requires ThaldraszusTimeinaBottle
.goto 2025,57.45,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.turnin 66082 >>Turn in Time in a Bottle
.turnin 66081 >>Turn in Time is Running Out
.timer 10,Roleplay Duration
.target Siaszerathel
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu after a short roleplay
.goto 2025,57.52,78.79
.accept 66083 >>接任务: |cRXP_WARN_宛如初见|r
.timer 20,Roleplay Duration
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待Andantenormu并与他交谈|cffffff00（未共享）|r
.goto 2025,57.58,78.37
.skipgossip
.complete 66083,1 
.target Andantenormu
step
.xp 70,1
>>与临时收集器交互|cffffff00（不共享）|r
.goto 2025,57.68,78.33
.complete 66083,2 
step
.xp 70,1
>>与Crystal Focus交互|cffffff00（未共享）|r
.goto 2025,57.66,78.39
.complete 66083,3 
step
.xp 70,1
#completewith next
+您可以跳过下一个过场（Esc->是）
step
.xp 70,1
>>与时间损失工件交互|cffffff00（未共享）|r
.goto 2025,57.64,78.46
.complete 66083,4 
.timer 90,Roleplay Duration
step
.xp 70,1
>>等Andantenormu把你带回来。您也可以访问时间门户|cffffff00（不共享）|r
.complete 66083,5 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等着Andantenomu和他说话
.goto 2025,57.52,78.79
.turnin 66083 >>Turn in Feels Like the First Time
.accept 66084 >>接任务: |cRXP_WARN_时势如此|r
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel
.goto 2025,57.45,78.92
.accept 66085 >>接任务: |cRXP_WARN_倘若光阴倒转|r
.target Siaszerathel
step
.xp 70,1
#completewith next
.goto 2025,57.62,79.02
.fp >>获取流沙飞行路径
step
.xp 70,1
#completewith ThaldraszusIfWeCouldTurnBackTime
>>杀死该区域的大部分|cff00ecffmurlocs|r。掠夺它们以获取剩余|cffffff00（未共享）|r
.complete 66084,1 
step
.xp 70,1
>>与时间裂缝互动
.goto 2025,58.59,78.21
.complete 66085,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel |cffffff00(not shared)|r
.goto 2025,59.80,79.31
.skipgossip
.timer 5,Roleplay Duration
.complete 66085,2 
.target Siaszerathel
step
.xp 70,1
>>与时间裂缝互动
.goto 2025,60.00,79.28
.complete 66085,3 
step
.xp 70,1
>>与时间裂缝互动
.goto 2025,59.98,77.20
.complete 66085,4 
step
.xp 70,1
#label ThaldraszusIfWeCouldTurnBackTime
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu |cffffff00(not shared)|r
.goto 2025,59.95,77.23
.skipgossip
.complete 66085,5 
.target Aeonormu
step
.xp 70,1
>>杀死该区域的大部分|cff00ecffmurlocs|r。掠夺它们以获取剩余|cffffff00（未共享）|r
.goto 2025,59.81,78.84,25,0
.goto 2025,58.58,77.11,25,0
.goto 2025,58.30,78.80,25,0
.goto 2025,59.96,79.27,25,0
.goto 2025,59.43,78.17
.complete 66084,1 
step
.xp 70,1
#requires ThaldraszusTimesLikeThese
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Siaszerathel
.turnin 66084 >>Turn in Times Like These
.goto 2025,57.52,78.79
.turnin 66085 >>Turn in If We Could Turn Back Time
.goto 2025,57.45,78.92
.target Andantenormu
.target Siaszerathel
step
.xp 70,1
>>使用|cffffff00[ExtractActionButton]|r专注于关闭时间步枪和buff|cff00ff00Bronze Warders|r
*You can also kill mobs
.goto 2025,57.17,81.02,20,0
.goto 2025,57.74,81.17,20,0
.goto 2025,56.84,82.16,20,0
.goto 2025,56.95,84.29,20,0
.goto 2025,57.68,84.86,20,0
.goto 2025,57.88,83.81,20,0
.goto 2025,57.88,84.55
.complete 66087,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aeonormu and Andantenormu
.turnin 66087 >>Turn in Closing Time
.goto 2025,57.55,78.87
.accept 65935 >>接任务: |cRXP_WARN_追赶克罗米|r
.goto 2025,57.52,78.80
.target Andantenormu
.target Aeonormu
step
.xp 70,1
>>Fly to Chromie
.goto 2025,59.64,81.51
.complete 65935,1 
.target Chromie
step
.xp 70,1
.goto 2025,59.57,81.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.turnin 65935 >>Turn in Catching Up to Chromie
.accept 65948 >>接任务: |cRXP_WARN_时光碎块|r
.accept 65947 >>接任务: |cRXP_WARN_凝时旅行者|r
.target Chromie
step
.xp 70,1
.goto 2025,59.56,82.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu
.accept 66646 >>接任务: |cRXP_WARN_伤亡控制|r
.target Andantenormu
step
.xp 70,1
#completewith ThaldraszusCracksInTime
>>杀死|cff00ecffTimelings|r和|cff0ecffTimeless因果关系|r
.complete 66646,1 
step
.xp 70,1
#title Timewalker 1
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,59.01,82.77
.complete 65947,1,1 
step
.xp 70,1
#title Timewalker 2
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,58.72,82.44
.complete 65947,1,2 
step
.xp 70,1
#title Timewalker 3
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,58.38,82.14
.complete 65947,1,3 
step
.xp 70,1
#title Timewalker 4
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,58.15,82.86
.complete 65947,1,4 
step
.xp 70,1
>>使用|cffffff00[ExtraActionButton]|r并离开水晶|cffff00（未共享）|r
.goto 2025,58.46,83.10
.complete 65948,1 
step
.xp 70,1
>>与地面上的时间晶体相互作用以收集50个能量。|cffffff00（不共享）|r
.goto 2025,58.41,82.98
.complete 65948,3,50 
step
.xp 70,1
#title Timewalker 5
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.31,81.39
.complete 65947,1,5 
step
.xp 70,1
>>使用|cffffff00[ExtraActionButton]|r并离开水晶|cffff00（未共享）|r
.goto 2025,60.76,80.48
.complete 65948,2 
step
.xp 70,1
#completewith ThaldraszusTimeLockedTimewalkers
>>与地面上的时间晶体相互作用以收集丢失的50能量。|cffffff00（未共享）|r
.goto 2025,60.68,80.37,0,0
.complete 65948,3 
step
.xp 70,1
#title Timewalker 6
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.87,80.02
.complete 65947,1,6 
step
.xp 70,1
#title Timewalker 7
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.46,79.74
.complete 65947,1,7 
step
.xp 70,1
#label ThaldraszusTimeLockedTimewalkers
#title Timewalker 8
>>使用|cffffff00[ExtraActionButton]|r
.goto 2025,60.27,80.40
.complete 65947,1 
step
.xp 70,1
#label ThaldraszusCracksInTime
>>与地面上的时间水晶相互作用以收集丢失的50能量。
.goto 2025,60.68,80.37
.complete 65948,3 
step
.xp 70,1
>>杀死|cff00ecffTimelings|r和|cff0ecffTimeless因果关系|r
.goto 2025,58.46,83.10,30,0
.goto 2025,60.25,80.16,30,0
.goto 2025,60.76,80.48
.complete 66646,1 
step
.xp 70,1
#requires ThaldraszusQuellingCausalities
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Chromie
.turnin 66646 >>Turn in Quelling Causalities
.goto 2025,59.56,82.67
.turnin 65947 >>Turn in Time-Locked Timewalkers
.turnin 65948 >>Turn in Cracks in Time
.accept 65938 >>接任务: |cRXP_WARN_永恒之伍|r
.goto 2025,59.58,81.75
.target Andantenormu
.target Chromie
step
.xp 70,1
>>使用|cffffff00[ExtraActionButton]|r，然后走下坡道
*Make sure to dismount
.goto 2025,60.49,83.26
.complete 65938,1 
step
.xp 70,1
>>杀死|cff00ecff巨人时间元素|r
.goto 2025,60.68,83.58
.complete 65938,2 
step
.xp 70,1
#completewith next
+您可以跳过下一个过场（Esc->是）
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie
.goto 2025,59.58,81.71
.turnin 65938 >>Turn in The Once and Future Team
.accept 65962 >>接任务: |cRXP_WARN_无尽倒计时|r
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chromie |cffffff00(not shared)|r
.goto 2025,59.58,81.71
.skipgossip 6
.complete 65962,1 
.target Chromie
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.goto 2025,60.05,82.45
.turnin 65962 >>Turn in The Never-Final Countdown
.accept 70040 >>接任务: |cRXP_WARN_坠越时间|r
.target Nozdormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi |cffffff00(not shared)|r
.goto 2025,59.52,82.51
.skipgossip
.complete 70040,1 
.target Soridormi
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Siaszerathel |cffffff00(not shared)|r
.goto 2025,59.30,82.16
.skipgossip
.complete 70040,3 
.target Siaszerathel
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu |cffffff00(not shared)|r
.goto 2025,60.19,81.77
.skipgossip
.complete 70040,2 
.target Andantenormu
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu and wait for the roleplay |cffffff00(not shared)|r
.goto 2025,60.06,82.44
.skipgossip 186931,1
.timer 24,Roleplay Duration
.complete 70040,4 
.target Nozdormu
step
.xp 70,1
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 70040 >>Turn in Tumbling Through Time
.accept 66029 >>接任务: |cRXP_WARN_临时调整|r
.accept 66028 >>接任务: |cRXP_WARN_走向未来！|r
.target Nozdormu
step
.xp 70,1
>>与门户网站交互，以实现首要列表的未来|cffffff00（不共享）|r
.goto 2025,59.83,82.24
.complete 66028,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi and Possible Future You
.turnin 66028 >>Turn in To the Future!
.accept 66030 >>接任务: |cRXP_WARN_抵抗并非徒劳|r
.goto 2085,61.10,50.82
.accept 66031 >>接任务: |cRXP_WARN_争分夺秒|r
.goto 2085,61.45,50.20
.target Soridormi
.target Possible Future You
step
.xp 70,1
>>在Chromie和Eternus附近使用|T133240:0|t[Chrono Crystal]|cffffff00（不共享）|r
.goto 2085,46.92,41.15
.use 192749
.complete 66029,1 
step
.xp 70,1
#completewith ThaldraszusResistanceIsntFutile
+如果您需要战斗帮助，请使用|cffffff00[ExtraActionButton]|r
step
.xp 70,1
#completewith ThaldraszusResistanceIsntFutile
>>杀死|cff00ecffHoary Icicles|r或|cff0ecffRestless Icicless|r。掠夺它们以获取精华|cffff00（不共享）|r
*Avoid killing elites
.complete 66031,1 
step
.xp 70,1
#title Fighter Healed 1
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,44.72,43.63
.complete 66030,1,1 
step
.xp 70,1
#title Fighter Healed 2
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,43.49,41.13
.complete 66030,1,2 
step
.xp 70,1
#title Fighter Healed 3
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,44.32,38.42
.complete 66030,1,3 
step
.xp 70,1
#title Fighter Healed 4
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,46.97,36.33
.complete 66030,1,4 
step
.xp 70,1
#title Fighter Healed 5
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,46.04,32.44
.complete 66030,1,5 
step
.xp 70,1
#title Fighter Healed 6
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,50.64,30.28
.complete 66030,1,6 
step
.xp 70,1
#title Fighter Healed 7
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,52.77,30.22
.complete 66030,1,7 
step
.xp 70,1
#title Fighter Healed 8
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,54.49,28.54
.complete 66030,1,8 
step
.xp 70,1
#title Fighter Healed 9
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,52.47,24.21
.complete 66030,1,9 
step
.xp 70,1
#label ThaldraszusResistanceIsntFutile
#title Fighter Healed 10
>>使用|T133675:0|t[绷带]或治疗法术治疗|cff00ff00受伤的抵抗战士|r
.use 192467
.goto 2085,62.04,28.40
.complete 66030,1,10 
step
.xp 70,1
>>杀死并释放|cff00ecffHoary Icicles|r或|cff0ecffRestless Icicless|r
*Avoid killing elites
.goto 2085,57.87,25.26,20,0
.goto 2085,52.36,24.46,20,0
.goto 2085,56.61,28.14
.complete 66031,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Possible Future You and Soridormi
.turnin 66031 >>Turn in Making Time
.goto 2085,61.47,50.22
.turnin 66030 >>Turn in Resistance Isn't Futile
.goto 2085,61.08,50.83
step
.xp 70,1
.goto 2085,61.09,50.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Soridormi
.accept 66032 >>接任务: |cRXP_WARN_返回现世|r
.target Soridormi
step
.xp 70,1
#completewith next
.goto 2085,61.01,50.55
.zone 2025 >>Use the portal back
step
.xp 70,1
.goto 2025,60.05,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66029 >>Turn in Temporal Tuning
.turnin 66032 >>Turn in Return to the Present
.accept 72519 >>接任务: |cRXP_WARN_陨时二度|r
.accept 66033 >>接任务: |cRXP_WARN_走向……过去？|r
.target Nozdormu
step
.xp 70,1
>>使用传送门到Azmerloth
.goto 2025,59.97,82.08
.complete 66033,1 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66033 >>Turn in To the... Past?
.accept 66035 >>接任务: |cRXP_WARN_鱼人微粒|r
.goto 2092,59.83,66.15
.accept 66036 >>接任务: |cRXP_WARN_Mugurlglrlgl！|r << Alliance
.accept 66704 >>接任务: |cRXP_WARN_Mugurlglrlgl！|r << Horde
.goto 2092,59.97,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
.xp 70,1
#completewith next
+你只能在这里使用普通的地面支架！
step
.xp 70,1
#completewith ThaldraszusMurlocMotes
>>杀死|cff00ecff死亡驱逐舰|r和|cff0ecff死亡人数|r
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
.xp 70,1
#title Mote 1
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.05,68.69
.complete 66035,1,1 
step
.xp 70,1
#title Mote 2
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.62,68.39
.complete 66035,1,2 
step
.xp 70,1
#title Mote 3
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.71,66.76
.complete 66035,1,3 
step
.xp 70,1
#title Mote 4
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.27,67.05
.complete 66035,1,4 
step
.xp 70,1
#title Mote 5
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.61,65.98
.complete 66035,1,5 
step
.xp 70,1
#title Mote 6
>>穿过Motes。你可能不得不跳下去
.goto 2092,62.54,66.16
.complete 66035,1,6 
step
.xp 70,1
#title Mote 7
>>穿过Motes。你可能不得不跳下去
.goto 2092,62.72,65.11
.complete 66035,1,7 
step
.xp 70,1
#title Mote 8
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.85,63.81
.complete 66035,1,8 
step
.xp 70,1
>>在Chromie和Eternus附近使用|T133240:0|t[Chrono Crystal]|cffffff00（不共享）|r
.goto 2092,61.49,61.76
.use 192749
.complete 72519,1 
step
.xp 70,1
#title Mote 9
>>穿过Motes。你可能不得不跳下去
.goto 2092,61.22,63.50
.complete 66035,1,9 
step
.xp 70,1
#title Mote 10
>>穿过Motes。你可能不得不跳下去
.goto 2092,60.28,63.88
.complete 66035,1,10 
step
.xp 70,1
#title Mote 11
>>穿过Motes。你可能不得不跳下去
.goto 2092,59.25,63.30
.complete 66035,1,11 
step
.xp 70,1
#label ThaldraszusMurlocMotes
#title Mote 12
>>穿过Motes。你可能不得不跳下去
.goto 2092,58.53,64.12
.complete 66035,1 
step
.xp 70,1
>>杀死|cff00ecff死亡驱逐舰|r和|cff0ecff死亡人数|r
.goto 2092,58.57,64.94,25,0
.goto 2092,59.25,67.50,25,0
.goto 2092,60.77,67.83,25,0
.goto 2092,61.69,64.23
.complete 66036,2 << Alliance 
.complete 66036,1 << Alliance 
.complete 66704,2 << Horde 
.complete 66704,1 << Horde 
step
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Varian Wryngrrlgulgll <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Andantenormu and Thrallgrulgulgul <<Horde
.turnin 66035 >>Turn in Murloc Motes
.goto 2092,59.84,66.14
.turnin 66036 >>Turn in Mugurlglrlgl! << Alliance
.turnin 66704 >>Turn in Mugurlglrlgl! << Horde
.accept 70373 >>接任务: |cRXP_WARN_死亡之伊鲁古勒！|r << Alliance
.accept 70371 >>接任务: |cRXP_WARN_死亡之伊鲁古勒！|r << Horde
.timer 5,Roleplay Duration
.goto 2092,59.98,65.98
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
.target Thrallgrulgulgul << Horde
step
.xp 70,1
>>在短暂的角色扮演后安装料斗|cffffff00（未共享）|r
.goto 2092,59.81,65.71
.complete 70373,1 <<Alliance 
.complete 70371,1 <<Horde 
step
.xp 70,1
>>垃圾邮件|T651086:0|t螺栓（1）。冷却时使用（2）和（3）。
*Make sure to target Deathwingurlugull.
.complete 70373,2 <<Alliance 
.complete 70371,2 <<Horde 
step
.xp 70,1
#completewith next
+|cfff78300提前离开车辆|r
step <<Alliance
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Varian Wryngrrlgulgll and Andantenormu
.turnin 70373 >>Turn in Deathwingurlugull!
.goto 2092,59.91,65.99
.accept 66037 >>接任务: |cRXP_WARN_回到现实|r
.goto 2092,59.83,66.14
.target Andantenormu
.target Varian Wryngrrlgulgll << Alliance
step <<Horde
.xp 70,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thrallgrulgulgul and Andantenormu
.turnin 70371 >>Turn in Deathwingurlugull!
.goto 2092,59.97,65.99
.accept 66037 >>接任务: |cRXP_WARN_回到现实|r
.goto 2092,59.83,66.14
.target Andantenormu
.target Thrallgrulgulgul << Horde
step
.xp 70,1
#completewith next
.goto 2092,59.72,66.11
.zone 2025 >>使用门户进行时间冲突
step
.xp 70,1
.goto 2025,60.06,82.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nozdormu
.turnin 66037 >>Turn in Back to Reality
.turnin 72519 >>Turn in Temporal Two-ning

step
+Done!
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup 命运之线Multibox 60-70
#name C3Azure Span Multibox
#displayname Chapter 3 - The Azure Span Multibox
#next D4Thaldraszus Multibox
step
#completewith TheAzureSpanTotheAzureSpan
+欢迎使用RestedXP的Azure跨度指南。
step
.goto 2023,71.65,80.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Masud the Wise
.accept 65686 >>接任务: |cRXP_WARN_前往碧蓝林海|r
.target Masud the Wise
step
#title Dragon Glyph: Forkriver Crossing
.goto 2023,70.06,86.98
.achievement 16577,11 >>拿起空中的龙雕
step
>>杀死三个|cff00ecffShadepaw盗贼|r，然后|cff0ecffSharpfang |r
.accept 67173 >>接任务: |cRXP_WARN_扒窃豺狼人|r
.complete 67173,1 
.goto 2024,36.77,32.50
step << !Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones
.goto 2024,41.44,35.62
.turnin 65686 >>Turn in To the Azure Span
.accept 66228 >>接任务: |cRXP_WARN_安东尼达斯营地|r
.target Glania of the Blessed Ones
step << Dracthyr
#label TheAzureSpanTotheAzureSpan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glania of the Blessed Ones and Scalecommander Emberthal
.turnin 65686 >>Turn in To the Azure Span
.goto 2024,41.44,35.62
.accept 70746 >>接任务: |cRXP_WARN_蓝色阴霾|r
.target Glania of the Blessed Ones
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.23,35.88
.accept 67174 >>接任务: |cRXP_WARN_奥术检测|r
.target Miva Star-Eye
step
>>与未发放的烧瓶互动
.goto 2024,41.39,35.70
.complete 67174,1 
step
>>与Dusty茶壶互动
.goto 2024,41.41,35.84
.complete 67174,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.accept 67177 >>接任务: |cRXP_WARN_通缉：吞食者|r
.target Shala
step
>>与Toolky的玩具船互动
.goto 2024,41.23,36.37
.complete 67174,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.22,35.89
.turnin 67174 >>Turn in Arcane Detection
.accept 67175 >>接任务: |cRXP_WARN_玩具爆炸船拆解指南|r
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Julk
.goto 2024,41.21,35.86
.skipgossip
.timer 15,Roleplay Duration
.complete 67175,1 
.target Julk
step
>>在短暂的角色扮演后与魔杖互动
.goto 2024,41.19,35.91
.complete 67175,2 
step
>>Click on the toy boat
.goto 2024,40.59,36.55
.complete 67175,3 
step
>>杀死|cff00ecffGorger|r。抢夺他的角
.goto 2024,39.66,37.24
.complete 67177,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Miva Star-Eye
.goto 2024,41.21,35.87
.turnin 67175 >>Turn in How To Stop An Exploding Toy Boat
.target Miva Star-Eye
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shala
.goto 2024,41.42,36.42
.turnin 67177 >>Turn in WANTED: Gorger
.target Shala
step << Dracthyr
>>跟随箭头到达Emberthal

.goto 2024,45.00,41.00
.complete 70746,1 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal
.goto 2024,45.00,41.00
.turnin 70746 >>Turn in Shades of Blue
.target Scalecommander Emberthal
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Telash Greywing

.goto 2024,45.65,41.20
.accept 70747 >>接任务: |cRXP_WARN_碧蓝巫师|r
.target Telash Greywing
step << Dracthyr
#completwith next
+您可以跳过下一个过场（Esc->是）
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.skipgossip 192091,1
.complete 70747,1 
.target Archmage Khadgar
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.goto 2024,46.63,40.19
.turnin 70747 >>Turn in The Azure Wizard
.target Archmage Khadgar
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+使用你的龙骑坐骑飞往Noriko
step << !Dracthyr
#completewith TheAzureSpanCampAntonidas
+您可以跳过下一个过场（Esc->是）
step << !Dracthyr
#label TheAzureSpanCampAntonidas
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 66228 >>Turn in Camp Antonidas
.target Noriko the All-Remembering
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.accept 67033 >>接任务: |cRXP_WARN_组装工事|r
.accept 67035 >>接任务: |cRXP_WARN_保存知识|r
step
#completewith next
.goto 2024,46.71,39.57
.fp >>获取安东尼达斯营飞行路线
step
#title |T1499566:0:0|tTome 1 + |T1041232:0:0|tDevice 1
>>拿起刀和地面上的设备|cffffff00（不共享）|r
.goto 2024,46.13,39.27
.complete 67035,1,1 
.complete 67033,1,1 
step
#title |T1499566:0:0|tTome 2
>>拿起书|cffffff00（未共享）|r
.goto 2024,45.73,39.29
.complete 67035,1,2 
step
#title |T1499566:0:0|tTome 3
>>拿起书|cffffff00（未共享）|r
.goto 2024,46.03,39.82
.complete 67035,1,3 
step
#title |T1041232:0:0|tDevice 2
>>拿起设备|cffffff00（未共享）|r
.goto 2024,45.86,40.18
.complete 67033,1,2 
step
#title |T1499566:0:0|tTome 4 + |T1041232:0:0|tDevice 3
>>拿起刀和地面上的设备|cffffff00（不共享）|r
.goto 2024,46.07,40.86
.complete 67035,1 
.complete 67033,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering and Althanus
.goto 2024,46.69,39.77
.turnin 67033 >>Turn in Assemble the Defenses
.turnin 67035 >>Turn in Preservation of Knowledge
.accept 67036 >>接任务: |cRXP_WARN_肯瑞托之怒|r
step
#completewith next
.goto 2024,46.29,38.86
.vehicle 192331 >>进入Arcane Blaster
step
>>使用|T429383:0:0|tArcane Blast（1）杀死飞龙|cfff78300不要手动离开奥术爆炸机|r|cffffff00（不共享，但这是值得的，因为它解锁了一个想要的任务，下面的战役任务很好）|r
.goto 2024,46.29,38.86
.complete 67036,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.turnin 67036 >>Turn in Wrath of the Kirin Tor
.goto 2024,46.64,40.16
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待卡德加大法师并与他交谈|cffffff00（可能必须与其他角色一起下马）|r
.accept 65688 >>接任务: |cRXP_WARN_与卡雷苟斯会合|r
.goto 2024,46.63,40.19
step
#completewith next
.goto 2024,45.99,38.79
.gossipoption 55328 >>与供应门户互动
.timer 8,Roleplay Duration
step
>>等待袋子并将其捡起来|cffffff00（未共享）|r
.goto 2024,45.95,38.90
.complete 65688,1 
.complete 65688,2 
step
>>与通缉令小册子互动
.goto 2024,46.13,39.61
.accept 66488 >>接任务: |cRXP_WARN_通缉：弗里基鲁斯|r
step
#completewith next
+使用你的龙骑坐骑飞往卡莱戈斯
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,40.92,55.00
.turnin 65688 >>Turn in Meeting Kalecgos
.accept 65689 >>接任务: |cRXP_WARN_卡雷众影|r
step
>>飞起来。无需与挂架互动
.goto 2024,41.17,57.81
.complete 65689,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to both Mirror Images of Kalecgos
.goto 2024,40.74,59.04
.turnin 65689 >>Turn in The Many Images of Kalecgos
.accept 65702 >>接任务: |cRXP_WARN_驱役成狂|r
.accept 65709 >>接任务: |cRXP_WARN_奥术修补|r
step
>>使用|T133622:0:0|t[帮助物品袋]或使用|cffffff00[ExtraActionButton]|t|cffff00（不共享）|r
.goto 2024,40.72,59.10
.use 191953
.complete 65709,1 
step
#completewith TheAzureSpanArcanePruning1
>>杀死该区域的|cff00ecffElements|r。为不稳定的阿卡纳掠夺它们|cffffff00（未共享）|r
.complete 65702,1 
step
#completewith next
+权杖的射程很高，所以你可以在至少30码外使用它
step
#label TheAzureSpanArcanePruning1
>>在奥术场附近使用|T1379242:0:0|t[Ley权杖]|cffffff00（不共享，当你的主角杀死暴徒时，开始与其他角色通灵）|r
.use 191952
.complete 65709,2 
.goto 2024,39.57,60.27
step
#completewith next
.goto 2024,38.56,59.75,30 >>Fly up
step
.accept 69864 >>接任务: |cRXP_WARN_被遗忘的造物|r
.goto 2024,38.56,59.75
.complete 69864,1 
.goto 2024,38.18,59.03
step
#completewith TheAzureSpanArcanePruning2
>>杀死该区域的|cff00ecffElements|r。为不稳定的阿卡纳掠夺它们|cffffff00（未共享）|r
.complete 65702,1 
step
#completewith next
+权杖的射程很高，所以你可以在至少30码外使用它
step
#label TheAzureSpanArcanePruning2
>>在奥术场附近使用|T1379242:0:0|t[Ley权杖]|cffffff00（不共享，当你的主角杀死暴徒时，开始与其他角色通灵）|r
.use 191952
.complete 65709,3 
.goto 2024,41.18,62.26
step
>>杀死并LOOT区域|cffff00（未共享）|r中的|cff00ecffElementals|r
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,41.71,61.36,25,0
.goto 2024,40.42,60.51,25,0
.goto 2024,39.34,61.07,25,0
.goto 2024,40.06,63.33,25,0
.goto 2024,40.42,60.51
.complete 65702,1 
step
.goto 2024,40.69,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t谈谈卡莱戈斯的镜像
.turnin 65709 >>Turn in Arcane Pruning
.turnin 65702 >>Turn in Driven Mad
.accept 65852 >>接任务: |cRXP_WARN_直达尖峰|r
step
>>使用奥术字段旁边的|T133622:0:0|t[有用物品袋]|cffffff00（未共享）|r
.goto 2024,39.57,60.25
.use 191978
.complete 65852,1 
step
>>使用|cffffff00[ExtraActionButton]|r|cffff00（未共享）|r
.goto 2024,39.57,60.25
.complete 65852,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.96,61.46
.turnin 65852 >>Turn in Straight to the Top
.accept 65751 >>接任务: |cRXP_WARN_平台整修|r
.accept 65752 >>接任务: |cRXP_WARN_奥术纷扰|r
step
#completewith next
+您也可以单击Y形三通以使用该项目
step
#sticky
#label TheAzureSpanArcaneAnnoyances
>>使用|T1373906:0:0|t[奥术钩]向下拉动Y形臂
.use 194891
.goto 2024,39.91,61.66,0,0
.complete 65752,1 
step
#title Energy 1
>>破坏能量（安装时可行）|cffffff00（不共享，您的其他角色应该离开乘客座椅）|r
.goto 2024,40.23,62.03
.complete 65751,1,1 
step
#title Energy 2
>>破坏能量（安装时可行）|cffffff00（不共享，您的其他角色应该离开乘客座椅）|r
.goto 2024,39.58,62.72
.complete 65751,1,2 
step
#title Energy 3
>>破坏能量（安装时可行）|cffffff00（不共享，您的其他角色应该离开乘客座椅）|r
.goto 2024,39.51,61.52
.complete 65751,1,3 
step
#requires TheAzureSpanArcaneAnnoyances
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.97,61.46
.turnin 65751 >>Turn in Platform Adjustments
.turnin 65752 >>Turn in Arcane Annoyances
.accept 65854 >>接任务: |cRXP_WARN_收复誓言石|r
step
>>飞下来与Kalecgos|cffffff00（未共享）|r交谈
.goto 2024,39.44,63.18
.skipgossip
.complete 65854,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sindragosa
.goto 2024,39.48,63.07
.turnin 65854 >>Turn in Reclaiming the Oathstone
.accept 65855 >>接任务: |cRXP_WARN_援助碧蓝林海|r
step
#completewith next
.goto 2024,37.84,62.00,15 >>进入客栈
step
#completewith TheAzureSpanAidingAzureSpan
.goto 2024,37.36,62.43
.home >>将你的炉石设置为魔法饼干旅馆
step
#completewith next
.goto 2024,37.07,60.82
.fp >>获取Azure档案飞行路径
step
#label TheAzureSpanAidingAzureSpan
.goto 2024,37.07,60.82
.complete 65855,1 
step
#completewith next
+使用飞行大师飞往安东尼达斯营或使用你的龙骑坐骑（更快）
step
#label TheAzureSpanAidingAzureSpan2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Noriko the All-Remembering
.goto 2024,46.64,40.16
.turnin 65855 >>Turn in Aiding Azure Span
.accept 66699 >>接任务: |cRXP_WARN_当地包打听|r
step
>>杀死|cff00ecffFrigellus|r
.goto 2024,47.95,38.09
.complete 66488,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Korrikunit |cffffff00(not shared)|r
.goto 2024,46.76,38.59
.skipgossip
.complete 66699,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jokomuupat |cffffff00(not shared)|r
.goto 2024,46.34,38.15
.skipgossip
.complete 66699,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Custodian Cynegos
.goto 2024,46.01,38.31
.turnin 66488 >>Turn in WANTED: Frigellus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arch Enchanter Celeste
.goto 2024,45.99,38.41
.accept 66489 >>接任务: |cRXP_WARN_布置防线|r
step
>>在瞄准|cff00ff00Azure Defender |r|cffffff00（未共享）|r时使用|T135477:0|t[拱形教练魔杖]
.use 192471
.goto 2024,46.17,38.98
.complete 66489,1 
step
.goto 2024,46.00,38.42
>>返回拱门魔法师塞莱斯特
.turnin 66489 >>Turn in Setting the Defense
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk |cffffff00(not shared)|r
.goto 2024,45.73,38.84
.skipgossip 190225,1
.complete 66699,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Babunituk
.goto 2024,45.73,38.84
.turnin 66699 >>Turn in Ask the Locals
.accept 65864 >>接任务: |cRXP_WARN_追赶车队|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caddy Scattershot
.goto 2024,45.69,39.79
.accept 66671 >>接任务: |cRXP_WARN_偏僻之途|r
step
#completewith next
.goto 2024,35.25,36.98,20 >>使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,35.25,36.98
.skipgossip 186224,1
.timer 19,Roleplay Duration
.complete 65864,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Elder Poa
.turnin 65864 >>Turn in Catch the Caravan
.goto 2024,35.25,36.97
.accept 65868 >>接任务: |cRXP_WARN_胡嚼蛮缠|r
.goto 2024,35.36,36.94
.accept 65867 >>接任务: |cRXP_WARN_大树丘豺嚎|r
.accept 65866 >>接任务: |cRXP_WARN_破陷行动|r
.goto 2024,35.28,36.94
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>杀死该区域的|cff00ecffGnolls|r。掠夺他们的产品|cffffff00（未共享）|r
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
#completewith TheAzureSpanHowlingtheBigTreeHills
>>与地面陷阱互动
.complete 65866,1 
step
>>杀死|cff00ecffHyenamaster Durgun|r
.goto 2024,35.66,34.73
.complete 65867,1 
step
#completewith next
.goto 2024,34.95,32.59,10 >>进入洞穴
step
>>杀死|cff00ecff陷阱层Kerwal|r
.goto 2024,34.99,32.18
.complete 65867,2 
step
#completewith next
.goto 2024,34.95,32.59,10 >>离开洞穴
step
#label TheAzureSpanHowlingtheBigTreeHills
>>杀死|cff00ecffBakra the Bully|r
.goto 2024,33.96,33.18
.complete 65867,3 
step
#completewith next
>>与地面陷阱互动
.goto 2024,35.34,33.07,0,0
.complete 65866,1 
step
>>杀死该区域的|cff00ecffGnolls|r。掠夺他们的产品|cffffff00（未共享）|r
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.goto 2024,35.34,33.07,0,0
.complete 65868,1 
step
>>与地面陷阱互动
#loop
.line 2024,33.78,34.66,34.37,35.38,35.11,35.23,35.74,35.29,35.79,33.37,34.96,33.88
.goto 2024,33.78,34.66,20,0
.goto 2024,34.37,35.38,20,0
.goto 2024,35.11,35.23,20,0
.goto 2024,35.74,35.29,20,0
.goto 2024,35.79,33.37,20,0
.goto 2024,34.96,33.88,20,0
.complete 65866,1 
step
#requires TheAzureSpanThoseArentForChewing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.goto 2024,34.26,31.30
.turnin 65868 >>Turn in Those Aren't for Chewing
.turnin 65867 >>Turn in Howling in the Big Tree Hills
.turnin 65866 >>Turn in Snap the Traps
.timer 17,Roleplay Duration
step
#completewith next
+等待简短的角色扮演
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.07
.accept 65871 >>接任务: |cRXP_WARN_豺狼当道|r
.accept 65872 >>接任务: |cRXP_WARN_豺狼人的恶意|r
.accept 65873 >>接任务: |cRXP_WARN_影足头豺|r
.accept 65870 >>接任务: |cRXP_WARN_补给！|r
step
#completewith next
.goto 2024,33.95,30.64,12 >>进入洞穴
step
#completewith TheAzureSpanLeaderoftheShadepawPack
>>在洞穴中杀死|cff00ecffGnolls|r
.goto 2132,45.88,50.78,0,0
.complete 65872,1 
step
>>拿起篮子|cffffff00（不共享）|r
.goto 2132,36.31,93.16
.complete 65870,3 
step
>>拿起桶|cffffff00（不共享）|r
.goto 2132,29.17,75.42
.complete 65870,1 
step
#title Tuskarr 1
>>Open the cage
.goto 2132,30.36,59.53
.complete 65871,1,1 
step
>>调查挪威人的尸体|cffffff00（未共享）|r
.goto 2132,41.42,63.83
.complete 65871,2 
step
#title Tuskarr 2
>>Open the cage
.goto 2132,46.26,40.92
.complete 65871,1,2 
step
>>拿起桶|cffffff00（不共享）|r
.goto 2132,51.40,36.86
.complete 65870,2 
step
#title Tuskarr 3
>>Open the cage
.goto 2132,38.10,32.11
.complete 65871,1 
step
#label TheAzureSpanLeaderoftheShadepawPack
>>杀死胎儿卡普。掠夺他作为图腾|cffffff00（未共享）|r
.goto 2132,42.27,14.47
.complete 65873,1 
step
>>在洞穴中杀死|cff00ecffGnolls|r
.goto 2132,37.06,36.14,20,0
.goto 2132,44.64,36.89,20,0
.goto 2132,48.99,26.78,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,64.62,21.19,20,0
.goto 2132,61.47,40.78,20,0
.goto 2132,43.73,42.03,20,0
#loop
.line 2132,36.65,34.61,28.82,48.53,29.37,60.34,38.45,52.88,47.14,55.14,46.56,36.26,61.09,39.17,65.72,24.58
.goto 2132,36.65,34.61,20,0
.goto 2132,28.82,48.53,20,0
.goto 2132,29.37,60.34,20,0
.goto 2132,38.45,52.88,20,0
.goto 2132,47.14,55.14,20,0
.goto 2132,46.56,36.26,20,0
.goto 2132,61.09,39.17,20,0
.goto 2132,65.72,24.58,20,0
.complete 65872,1 
step
#completewith next
.goto 2024,34.92,30.03,10 >>离开洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu, Brena and Elder Poa
.goto 2024,34.38,31.06
.turnin 65870 >>Turn in Supplies!
.turnin 65872 >>Turn in Ill Gnolls with Ill Intent
.turnin 65873 >>Turn in Leader of the Shadepaw Pack
.turnin 65871 >>Turn in Gnoll Way Out
.accept 66239 >>接任务: |cRXP_WARN_腐朽蔓延|r
step
#completewith next
+使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,28.69,34.82
.turnin 66239 >>Turn in Spreading Decay
.accept 65869 >>接任务: |cRXP_WARN_伏击再现|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akiun |cffffff00(not shared)|r
.goto 2024,28.68,34.75
.skipgossip
.complete 65869,1 
step
#title Body 1
>>安装时与身体互动
.goto 2024,29.25,33.57
.skipgossip
.complete 65869,2,1 
step
#title Body 2
>>安装时与身体互动
.goto 2024,29.17,32.56
.skipgossip
.complete 65869,2,2 
step
#title Body 3
>>安装时与身体互动
.goto 2024,28.20,31.86
.skipgossip
.complete 65869,2,3 
step
#title Body 4
>>安装时与身体互动
.goto 2024,27.97,32.83
.skipgossip
.complete 65869,2 
step
.goto 2024,28.78,34.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.turnin 65869 >>Turn in Another Ambush
.accept 66026 >>接任务: |cRXP_WARN_需要紧急措施|r
step
.goto 2024,28.47,35.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Unkimi
.accept 71233 >>接任务: |cRXP_WARN_飞瀑直下|r
step
.goto 2024,22.72,41.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.accept 66262 >>接任务: |cRXP_WARN_废水清洁|r
step
>>点击腐烂的桩并杀死正在繁殖的Muck Elemental
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
#loop
.line 2024,22.45,41.96,22.04,41.66,22.27,41.20,22.83,41.18,23.22,41.16,23.60,41.40,22.81,42.15
.goto 2024,22.45,41.96,30,0
.goto 2024,22.04,41.66,30,0
.goto 2024,22.27,41.20,30,0
.goto 2024,22.83,41.18,30,0
.goto 2024,23.22,41.16,30,0
.goto 2024,23.60,41.40,30,0
.goto 2024,22.81,42.15,30,0
.complete 66262,1 
step
.goto 2024,22.72,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66262 >>Turn in Waste Water Cleanup
.accept 66263 >>接任务: |cRXP_WARN_精准除害|r
.accept 66264 >>接任务: |cRXP_WARN_嚣张都靠武器|r
step
#completewith TheAzureSpanAPrecisionApproach
>>杀死|cff00ecffGnawbone武器|r。将其用于武器|cffffff00（不共享）|r
.complete 66264,1 
step
#completewith next
.goto 2024,24.40,39.56,20 >>进入洞穴
step
#label TheAzureSpanAPrecisionApproach
>>杀死|cff00ecffFlayfist|r
.goto 2024,24.80,39.03
.complete 66263,1 
step
>>杀死|cff00ecffGnawbone武器|r。将其用于武器|cffffff00（不共享）|r
.goto 2024,24.40,39.56,25,0
.goto 2024,23.33,39.87,25,0
.goto 2024,22.47,39.95,25,0
.goto 2024,22.09,40.67,25,0
.goto 2024,23.85,40.50,35,0
#loop
.line 2024,24.40,39.56,23.33,39.87,22.47,39.95,22.09,40.67,23.85,40.50
.goto 2024,24.40,39.56,35,0
.goto 2024,23.33,39.87,35,0
.goto 2024,22.47,39.95,35,0
.goto 2024,22.09,40.67,35,0
.goto 2024,23.85,40.50,35,0
.complete 66264,1 
step
.goto 2024,22.74,41.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66263 >>Turn in A Precision Approach
.turnin 66264 >>Turn in Disarmed and Docile
.accept 66265 >>接任务: |cRXP_WARN_下一个|r
.accept 66266 >>接任务: |cRXP_WARN_污秽杂种|r
step
.goto 2024,23.48,41.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Illusory Mage
.accept 66267 >>接任务: |cRXP_WARN_仁法会|r
step
#completewith TheAzureSpanMETA
>>杀死侧面的|cff00ecffMongrels|r和|cff0ecffMatriarchs|r
.complete 66266,2 
.complete 66266,1 
step
>>杀死小洞穴内的|cff00ecffCracktooth|r
.goto 2024,24.20,41.81
.complete 66265,1 
step
>>完成击杀|cff00ecffMongrels|r和|cff0ecffMatriarchs|r
.goto 2024,23.50,42.43,25,0
.goto 2024,23.73,43.25,25,0
.goto 2024,24.32,42.91,25,0
.goto 2024,23.94,42.02,25,0
#loop
.line 2024,23.50,42.43,23.73,43.25,24.32,42.91,23.94,42.02
.goto 2024,23.50,42.43,30,0
.goto 2024,23.73,43.25,30,0
.goto 2024,24.32,42.91,30,0
.goto 2024,23.94,42.02,30,0
.complete 66266,2 
.complete 66266,1 
step
.goto 2024,22.70,41.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Detry Hornswald
.turnin 66266 >>Turn in Filthy Mongrels
.turnin 66265 >>Turn in Who's Next?
step
>>杀死|cff00ecffCascade|r
.goto 2024,23.33,33.60
.accept 72358 >>接任务: |cRXP_WARN_涌流|r
.complete 72358,1 
step
#completewith next
+使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,20.59,35.67
.turnin 66026 >>Turn in Urgent Action Required
.timer 24,Roleplay Duration
step
.goto 2024,18.73,24.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 71233 >>Turn in Falling Water
.accept 66837 >>接任务: |cRXP_WARN_饥一顿|r
step
.goto 2024,19.04,23.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.accept 66844 >>接任务: |cRXP_WARN_巨狐修卡利|r
step
#completewith next
.goto 2024,19.16,23.77
.fp >>获取三瀑布了望飞行路线
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.accept 66843 >>接任务: |cRXP_WARN_无路克走|r
step
#completewith next
>>杀死|cff00ecffVorquins|r和|cff0ecffBruffalons|r。掠夺它们的侧翼和肉|cffffff00（不共享）|r
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.complete 66837,2 
.complete 66837,1 
step
>>在洞穴内杀死|cff00ecffGloomfur Sasquatch|r
.goto 2024,16.01,27.25
.complete 66843,1 
step
>>杀死|cff00ecffVorquins|r和|cff0ecffBruffalons|r。掠夺它们的侧翼和肉|cffffff00（不共享）|r
#loop
.line 2024,18.30,26.71,17.52,26.92,16.95,27.55,16.13,27.81,15.98,26.06,17.39,25.96
.goto 2024,18.30,26.71,30,0
.goto 2024,17.52,26.92,30,0
.goto 2024,16.95,27.55,30,0
.goto 2024,16.13,27.81,30,0
.goto 2024,15.98,26.06,30,0
.goto 2024,17.39,25.96,30,0
.complete 66837,2 
.complete 66837,1 
step
>>杀死|cff00ecffSky Vixen Shokhari|r
.goto 2024,13.27,26.50
.complete 66844,1 
step
.goto 2024,18.75,24.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Willa Stronghinge
.turnin 66837 >>Turn in Nothing for Breakfast
step
.goto 2024,19.03,23.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zon'Wogi
.turnin 66844 >>Turn in The Great Shokhari
step
.goto 2024,19.24,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Branor Broadbraw
.turnin 66843 >>Turn in Out of Lukh
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos after a short roleplay
.goto 2024,20.53,35.69
.accept 65838 >>接任务: |cRXP_WARN_突破蕨皮|r
step
#completewith TheAzureSpanLeyLitter
>>杀死|cff00ecffBrackenhides|r并摧毁他们的图腾（奖励目标）
.complete 65841,1 
step
>>与腐烂的根相互作用
.goto 2024,18.89,36.99
.skipgossip
.complete 65838,2 
step
>>与腐烂的根相互作用
.goto 2024,18.38,34.74
.skipgossip
.complete 65838,1 
step
>>与腐烂的根相互作用
.goto 2024,17.59,36.99
.skipgossip
.complete 65838,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.goto 2024,16.75,37.26
.turnin 65838 >>Turn in Breaching the Brackenhide
.accept 65846 >>接任务: |cRXP_WARN_魔网零落|r
.accept 65844 >>接任务: |cRXP_WARN_割除腐溃|r
.accept 65845 >>接任务: |cRXP_WARN_陨落者的回响|r
step
#completewith TheAzureSpanLeyLitter
>>|cfff78300小心叛国者，因为他们很少见|r
.goto 2024,17.69,37.74,0,0
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#completewith TheAzureSpanEchoesoftheFallen
>>收集Ley水晶|cffffff00（不共享）|r
.complete 65846,1 
step
#title Spirit 1
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]|cffffff00（不共享）|r
.use 191928
.goto 2024,17.47,37.07
.complete 65845,1,1 
step
#title Spirit 2
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]|cffffff00（不共享）|r
.use 191928
.goto 2024,18.13,37.67
.complete 65845,1,2 
step
#title Spirit 3
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]|cffffff00（不共享）|r
.use 191928
.goto 2024,18.52,37.26
.complete 65845,1,3 
step
#title Spirit 4
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]|cffffff00（不共享）|r
.use 191928
.goto 2024,17.54,37.93
.complete 65845,1,4 
step
#label TheAzureSpanEchoesoftheFallen
#title Spirit 5
>>在尸体旁边使用|T971076:0:0|t[Brena图腾]|cffffff00（不共享）|r
.use 191928
.goto 2024,17.41,38.65
.complete 65845,1 
step
#label TheAzureSpanLeyLitter
>>收集Ley水晶|cffffff00（不共享）|r
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
#loop
.line 2024,17.81,38.52,18.42,38.32,18.69,36.99,17.25,36.85,17.45,38.42
.goto 2024,17.81,38.52,20,0
.goto 2024,18.42,38.32,20,0
.goto 2024,18.69,36.99,20,0
.goto 2024,17.25,36.85,20,0
.goto 2024,17.45,38.42,20,0
.complete 65846,1 
step
#sticky
#label TheAzureSpanStoptheSpread
>>杀死|cff00ecffBrackenhides|r并摧毁他们的图腾
.goto 2024,18.53,35.78
.complete 65841,1 
step
>>|cfff78300地图上标出了可能的trean位置|r
.goto 2024,17.2,37.0,0
.goto 2024,17.4,37.8,0
.goto 2024,17.4,39.2,0
.goto 2024,17.6,37.2,0
.goto 2024,17.8,38.8,0
.goto 2024,18.4,38.0,0
.goto 2024,18.6,38.0,0
.goto 2024,18.6,38.6,0
.goto 2024,18.8,36.6,0
.goto 2024,17.2,37.0,0
.goto 2024,17.2,37.40,0
.goto 2024,17.6,37.40,0
.goto 2024,18.8,36.40,0
.goto 2024,17.69,37.74
.unitscan Rotting Treant
.complete 65844,2 
.complete 65844,1 
step
#requires TheAzureSpanStoptheSpread
.goto 2024,16.74,37.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos, Norukk and Brena
.turnin 65846 >>Turn in Ley Litter
.turnin 65844 >>Turn in Cut Out the Rot
.turnin 65845 >>Turn in Echoes of the Fallen
.accept 65848 >>接任务: |cRXP_WARN_魔典束缚|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and wait for the roleplay |cffffff00(not shared)|r
.goto 2024,16.74,37.32
.skipgossip 187873,1
.timer 21,Roleplay Duration
.complete 65848,1 
step
>>魔咒之丘
.goto 2024,16.71,37.30
.complete 65848,2 
step
>>垃圾邮件|T134917:0:0|t部分收费（1）以加快移动速度
>>使用|T135753:0:0|tArcane Blast（2）杀死|cff00ecffPurifiers|r|cffffff00（不共享，在每个角色上都这样做，直到你必须杀死扭曲的古代人，然后交换）|r
.goto 2024,16.02,38.49
.complete 65848,3,1 
step
>>垃圾邮件|T134917:0:0|t部分收费（1）以加快移动速度
>>使用|T135753:0:0|tArcane Blast（2）杀死|cff00ecffPurifiers|r|cffffff00（不共享，在每个角色上都这样做，直到你必须杀死扭曲的古代人，然后交换）|r
.goto 2024,15.64,37.42
.complete 65848,3,2
step
>>垃圾邮件|T134917:0:0|t部分收费（1）以加快移动速度
>>使用|T135753:0:0|tArcane Blast（2）杀死|cff00ecffPurifiers|r|cffffff00（不共享，在每个角色上都这样做，直到你必须杀死扭曲的古代人，然后交换）|r
.goto 2024,15.22,37.95
.complete 65848,3,3 
step
>>使用|T429383:0:0|tArcane灵光（1）杀死|cff00ecff扭曲的古代|r|cffffff00（未共享）|r
.goto 2024,15.40,37.73
.complete 65848,4 
.timer 10,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,15.30,39.43
.turnin 65848 >>Turn in Tome-ward Bound
.accept 65847 >>接任务: |cRXP_WARN_重新排列|r
step
>>与Ley Crystal交互|cffffff00（未共享）|r
.goto 2024,15.35,39.50
.complete 65847,1 
step
#title Infection 1
>>Destroy the infection
.goto 2024,15.51,39.31
.complete 65847,2,1 
step
#title Infection 2
>>Destroy the infection
.goto 2024,15.30,39.12
.complete 65847,2,2 
step
#title Infection 3
>>Destroy the infection
.goto 2024,15.07,39.52
.complete 65847,2 
step
#completewith next
.goto 2024,14.97,38.77,15 >>离开洞穴
step
#completewith next
+使用你的龙骑坐骑飞往卡莱戈斯
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Brena
.turnin 65847 >>Turn in Realignment
.goto 2024,16.11,41.40
.accept 65849 >>接任务: |cRXP_WARN_前往伊斯卡拉|r
.goto 2024,16.08,41.45
step
>>杀死最强Tuskar|r
.goto 2024,17.23,41.46
.accept 69872 >>接任务: |cRXP_WARN_瓦克里尔，最强的海象人|r
.complete 69872,1 
step
#completewith next
+使用你的龙骑坐骑飞往布雷纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena
.goto 2024,13.24,49.56
.turnin 65849 >>Turn in To Iskaara
.accept 66210 >>接任务: |cRXP_WARN_聚集家庭|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Roki
.goto 2024,13.14,49.26
.accept 72435 >>接任务: |cRXP_WARN_导引入门：伊斯卡拉|r
step
#completewith next
.goto 2024,12.78,49.34,8 >>进入客栈
step
#title |T134450:0:0|tOffering 1
>>拿起石雕|cffffff00（未分享）|r
.goto 2024,12.49,49.45
.complete 66210,1,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.accept 66213 >>接任务: |cRXP_WARN_编造故事|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Poa |cffffff00(not shared)|r
.goto 2024,12.41,49.34
.skipgossip 1
.complete 66213,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elder Nappa
.goto 2024,12.40,49.41
.turnin 66213 >>Turn in The Weave of a Tale
step
#completewith next
.goto 2024,12.78,49.34,8 >>Leave the inn
step
#title |T134989:0:0|tOffering 2
>>拿起装饰盾牌|cffffff00（不共享）|r
.goto 2024,12.46,50.31
.complete 66210,1,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rokkutuk
.goto 2024,13.91,50.08
.complete 72435,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lukoturukk
.goto 2024,14.07,49.45
.accept 71234 >>接任务: |cRXP_WARN_海角新闻|r
step
#title |T1126431:0:0|tOffering 3
>>拿起手工制作的小船|cffffff00（不共享）|r
.goto 2024,13.87,49.48
.complete 66210,1,3 
step
#title |T132803:0:0|tOffering 4
>>拿起装饰茶壶|cffffff00（不共享）|r
.goto 2024,13.48,48.57
.complete 66210,1 
step
#sticky
#label TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Arvik
.goto 2024,13.17,48.53
.complete 72435,1 
step
>>与殡仪船互动|cffffff00（未共享）|r
.goto 2024,13.14,48.57
.complete 66210,2 
step
#requires TheAzureSpanOrientationIskaarEquipment
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Norukk
.goto 2024,12.96,48.64
.complete 72435,4 
step
.goto 2024,12.89,48.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hanu
.accept 66218 >>接任务: |cRXP_WARN_蹦跳顽童|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tatto
.goto 2024,13.18,48.82
.complete 72435,3 
step
.goto 2024,13.20,48.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.accept 66217 >>接任务: |cRXP_WARN_通缉：克洛杰克，海滨巡游者|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Murik
.goto 2024,13.14,49.26
.turnin 72435 >>Turn in Orientation: Iskaara
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brena and Kalecgos
.turnin 66210 >>Turn in Gather the Family
.goto 2024,13.24,49.56
.accept 65850 >>接任务: |cRXP_WARN_海洋轮回|r
.goto 2024,13.26,49.53
step
#completewith next
.goto 2024,13.24,49.55
.gossipoption 55314 >>Talk to Brena
.timer 72,Roleplay Duration
step
>>与殡仪船互动|cffffff00（未共享）|r
.goto 2024,13.18,49.20,8,0
.goto 2024,13.06,49.52,10,0
.goto 2024,13.16,50.20
.complete 65850,1 
.complete 65850,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,12.94,50.39
.turnin 65850 >>Turn in Gather the Familiy
.accept 65911 >>接任务: |cRXP_WARN_碧蓝盟会|r
step
>>杀死海岸掠夺者克罗耶克。你可以跳过这个任务。这是一个非常强硬的精英|r
.unitscan Krojek The Shoreprowler
.goto 2024,10.45,53.66
.complete 66217,1 
step
.isQuestComplete 66217
.goto 2024,12.51,49.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bukarakikk
.turnin 66217 >>Turn in WANTED: Krojek the Shoreprowler
step
.abandon 66217 >>放弃通缉犯：海岸掠夺者克罗耶克
step
.isOnQuest 66218
.goto 2024,10.59,46.87
.gossipoption 55003 >>Talk to Neelo |cffffff00(not shared)|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wayun
.goto 2024,7.45,44.28
.turnin 71234 >>Turn in Nook News
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.accept 66781 >>接任务: |cRXP_WARN_口感问题|r
step
>>捡起地上的大石头|cffffff00（不共享）|r
.goto 2024,7.24,45.12
.complete 66781,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mordigan Ironjaw
.goto 2024,7.62,44.34
.turnin 66781 >>Turn in A Matter of Taste
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog, Examiner Rowe and Aelnara
.accept 66164 >>接任务: |cRXP_WARN_浑水摸鱼|r
.goto 2024,7.65,44.32
.accept 66154 >>接任务: |cRXP_WARN_催涎采样|r
.goto 2024,7.67,44.26
.accept 66147 >>接任务: |cRXP_WARN_水晶水中浸|r
.goto 2024,7.64,44.23
step
#completewith TheAzureSpanCrystalsintheWater
>>拾取地上被盗的零件|cffffff00（不共享，但您可以拾取相同的零件）|r
.complete 66164,1 
step
#completewith TheAzureSpanCrystalsintheWater
>>杀死|cff00ecffBrinthoths|r。为唾液掠夺它们|cffffff00（不共享）|r
.complete 66154,1 
step
#title Crystal Mined 1/4
>>挖掘水晶|cffffff00（未共享）|r
.goto 2024,9.86,43.36
.complete 66147,1,1 
step
#title Crystal Mined 2/4
>>挖掘水晶|cffffff00（未共享）|r
.goto 2024,10.36,43.33
.complete 66147,1,2 
step
#title Crystal Mined 3/4
>>挖掘水晶|cffffff00（未共享）|r
.goto 2024,10.68,42.73
.complete 66147,1,3 
step
#label TheAzureSpanCrystalsintheWater
#title Crystal Mined 4/4
>>挖掘水晶|cffffff00（未共享）|r
.goto 2024,10.18,42.29
.complete 66147,1 
step
#completewith next
>>拾取地上被盗的零件|cffffff00（不共享，但您可以拾取相同的零件）|r
.complete 66164,1 
step
>>杀死|cff00ecffBrinthoths|r。为唾液掠夺它们|cffffff00（不共享）|r
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,25,0
.goto 2024,9.77,43.71,25,0
.goto 2024,10.31,43.44,25,0
.goto 2024,10.95,43.44,25,0
.goto 2024,10.28,42.36,25,0
.complete 66154,1 
step
>>捡起地上被盗的零件
#loop
.line 2024,9.76,42.96,9.77,43.71,10.31,43.44,10.95,43.44,10.28,42.36
.goto 2024,9.76,42.96,25,0
.goto 2024,9.77,43.71,25,0
.goto 2024,10.31,43.44,25,0
.goto 2024,10.95,43.44,25,0
.goto 2024,10.28,42.36,25,0
.complete 66164,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Rowe, Aelnara and LOU-C Fitzcog
.turnin 66154 >>Turn in Salivatory Samples
.goto 2024,7.67,44.26
.turnin 66147 >>Turn in Crystals in the Water
.goto 2024,7.64,44.23
.turnin 66164 >>Turn in Fishy Fingers
.accept 66175 >>接任务: |cRXP_WARN_[Field Experiment]|r
.goto 2024,7.65,44.32
step
>>Click on the Geoscanner
.goto 2024,7.64,44.33
.complete 66175,1 
.timer 33,Roleplay Duration
step
.goto 2024,10.59,46.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Neelo
.turnin 66218 >>Turn in Scampering Scamps
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog
.goto 2024,7.64,44.33
.turnin 66175 >>Turn in Field Experiment
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to LOU-C Fitzcog and Wayun
.accept 66177 >>接任务: |cRXP_WARN_[No Dwarf Left Behind]|r
.goto 2024,7.65,44.35
.accept 66232 >>接任务: |cRXP_WARN_咸盐攻势|r
.goto 2024,7.46,44.28
step
.isOnQuest 66232
#completewith TheAzureSpanNoDwarfLeftBehind
>>杀死该区域的|cff00ecffBrinetoths|r。为水晶薄片掠夺它们|cffffff00（未共享）|r
.complete 66232,1 
step
.isOnQuest 66177
>>拿起Mordigan的现场笔记
.goto 2024,9.38,42.53
.complete 66177,1 
step
.isOnQuest 66177
>>拿起Mordigan的现场笔记
.goto 2024,10.02,41.30
.complete 66177,2 
step
.isOnQuest 66177
>>拿起莫迪根的靴子
.goto 2024,9.93,39.68
.complete 66177,3 
step
.isOnQuest 66177
>>拿起莫迪根的裤子
.goto 2024,10.61,41.25
.complete 66177,4 
step
.isOnQuest 66232
>>杀死该区域的|cff00ecffBrinetoths|r。掠夺它们以获取水晶薄片
.goto 2024,10.22,41.79,30,0
.goto 2024,9.34,42.87,30,0
.goto 2024,9.72,40.64,30,0
.goto 2024,10.47,41.14,30,0
#loop
.line 2024,10.22,41.79,9.34,42.87,9.72,40.64,10.47,41.14,
.goto 2024,10.22,41.79,30,0
.goto 2024,9.34,42.87,30,0
.goto 2024,9.72,40.64,30,0
.goto 2024,10.47,41.14,30,0
.complete 66232,1 
step
.goto 2024,10.77,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.turnin -66177 >>Turn in No Dwarf Left Behind
step
.isQuestTurnedIn 66177
.goto 2024,10.77,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara
.accept 66187 >>接任务: |cRXP_WARN_[Mad Mordigan &amp; The Crystal King]|r
step
.isOnQuest 66232
>>在洞穴内击败|cff00ecffMordigan|r
.goto 2024,11.19,41.10
.complete 66187,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aelnara |cffffff00(to turn them as a passenger the driver has to go onto the waypoint location and look at Aelnara)|r
.goto 2024,10.75,41.22
.turnin 66187 >>Turn in Mad Mordigan & The Crystal King
.accept 66559 >>接任务: |cRXP_WARN_[Back To Camp]|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Rowe
.turnin -66559 >>Turn in Back To Camp
.goto 2024,7.67,44.27
.turnin -66232 >>Turn in Afront 'Till A Salt
.goto 2024,7.46,44.28
step
#completewith next
.hs >>糖果旅馆之心
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.goto 2024,39.48,63.02
.turnin 65911 >>Turn in Azure Alignment
.accept 66027 >>接任务: |cRXP_WARN_呼叫蓝龙|r
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos |cffffff00(not shared)|r
.goto 2024,39.48,63.02
.skipgossip 186280,1
.complete 66027,1 
step
.goto 2024,39.48,63.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos
.turnin 66027 >>Turn in Calling the Blue Dragons
.accept 65886 >>接任务: |cRXP_WARN_前往罗宁之盾|r
step
>>按照箭头并使用|cffffff00[ExtraActionButton]|r
.goto 2024,41.19,62.27,-1
.goto 2024,39.56,60.26,-1
.goto 2024,38.26,61.50,-1
.complete 65886,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren, Maddy Scattershot and Garz
.accept 66391 >>接任务: |cRXP_WARN_废墟里见！|r
.goto 2024,63.42,58.03
.turnin 66671 >>Turn in Path to Nowhere
.goto 2024,63.22,58.41
.accept 66141 >>接任务: |cRXP_WARN_礼崩乐坏|r
.goto 2024,63.20,58.61
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.02,58.61
.turnin 66391 >>Turn in To the Ruins!
.accept 66353 >>接任务: |cRXP_WARN_R.A.D.装置异常|r
.accept 66352 >>接任务: |cRXP_WARN_窥敌先机|r
step
#completewith TheAzureSpanRADAnomalies
>>杀死|cff00ecffTarasek勇士|r和|cff0ecffArcane操纵器|r。掠夺他们获得订单|cffffff00（不共享）|r
.complete 66352,1 
step
#title Record 1/3
>>在异常旁使用|T134519:0|t[R.A.D]
.use 191909
.goto 2024,65.52,58.82
.complete 66353,1,1 
step
#title Record 2/3
>>在异常旁使用|T134519:0|t[R.A.D]
.use 191909
.goto 2024,66.31,59.37
.complete 66353,1,2 
step
#label TheAzureSpanRADAnomalies
#title Record 3/3
>>在异常旁使用|T134519:0|t[R.A.D]
.use 191909
.goto 2024,66.39,59.72
.complete 66353,1 
step
>>杀死|cff00ecffTarasek勇士|r和|cff0ecffArcane操纵器|r。掠夺他们获得订单|cffffff00（不共享）|r
.goto 2024,65.09,59.54,20,0
.goto 2024,66.35,59.56,20,0
.goto 2024,65.54,59.28
.complete 66352,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.goto 2024,65.03,58.67
.turnin 66353 >>Turn in R.A.D. Anomalies
.turnin 66352 >>Turn in What the Enemy Knows
.accept 66422 >>接任务: |cRXP_WARN_[The Expedition Continues!]|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往Dragon控制台。与Lathos Sunband交谈
.goto 2024,65.64,60.78
.turnin 66422 >>Turn in The Expedition Continues!
.accept 66423 >>接任务: |cRXP_WARN_担忧与证实|r
step
#title Clue Found 1
>>与平板电脑交互
.goto 2024,65.32,60.80
.complete 66423,1,1 
step
#title Clue Found 2
>>与平板电脑交互
.goto 2024,65.86,60.55
.complete 66423,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband and Rannan Korren |cffffff00(just leave your characters at the quest giver)|r
.turnin 66423 >>Turn in Worries and Validations
.goto 2024,65.64,60.79
.accept 66425 >>接任务: |cRXP_WARN_奥术超载|r
.goto 2024,65.63,60.76
step
#title Bubble Dispelled 1
>>使用|T134519:0|t[R.A.D.D.E.R]消除障碍
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.28,61.31
.complete 66425,1,1 
step
#title Bubble Dispelled 2
>>使用|T134519:0|t[R.A.D.D.E.R]消除障碍
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.10,61.54
.complete 66425,1,2 
step
#title Bubble Dispelled 3
>>使用|T134519:0|t[R.A.D.D.E.R]驱散二层障碍物
*Cancel Ghost Wolf as a Shaman <<Shaman
.use 192110
.goto 2024,65.18,60.95,10,0
.goto 2024,65.00,61.24,10,0
.goto 2024,65.06,61.14
.complete 66425,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren and Lathos Sunband
.turnin 66425 >>Turn in Arcane Overload
.goto 2024,65.63,60.76
.accept 66426 >>接任务: |cRXP_WARN_时不我待|r
.goto 2024,65.64,60.80
step
#title Dragon Glyph: Ruins of Karnthar
.goto 2024,68.65,60.42
.achievement 16577,3 >>在塔顶拾取龙雕
step
>>按照箭头，等待角色扮演
.goto 2024,68.46,60.50
.complete 66426,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband
.goto 2024,68.46,60.50
.turnin 66426 >>Turn in Running Out of Time
.accept 66427 >>接任务: |cRXP_WARN_威胁突现|r
step
>>杀死|cff00ecff奥术操纵器塔隆|r
.goto 2024,68.07,61.59
.complete 66427,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lathos Sunband and Rannan Korren
.turnin 66427 >>Turn in A Looming Menace
.goto 2024,68.46,60.50
.accept 66428 >>接任务: |cRXP_WARN_谊所应当|r
.goto 2024,68.48,60.43
step
>>使用控制台旁边的|T134519:0|t[R.A.D.D.E.R.E.R]
.use 192475
.goto 2024,68.61,60.39
.complete 66428,1 
step
>>Wait for the roleplay
.goto 2024,68.50,60.47
.complete 66428,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,68.50,60.47
.turnin 66428 >>Turn in Friendship For Granted
.accept 66429 >>接任务: |cRXP_WARN_铭记于心|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Narn |cffffff00(not shared)|r
.goto 2024,65.62,54.84
.skipgossip
.complete 66141,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.goto 2024,63.51,52.97
.turnin 66141 >>Turn in Broken Traditions, Broken Bodies
.accept 66150 >>接任务: |cRXP_WARN_营救拉兹达|r
.accept 66149 >>接任务: |cRXP_WARN_元素影响|r
.accept 66148 >>接任务: |cRXP_WARN_熊弟阋墙|r
step
#completewith next
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.complete 66148,1 
step
#title Destroy Totem 1
>>Destroy the Totem
.goto 2024,62.74,51.82
.complete 66149,1,1 
step
#title Kill Furbolgs + Elementals
#completewith next
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.goto 2024,62.71,51.28,15,0
.complete 66148,1 
step
#title Destroy Totem 2
>>Destroy the Totem
.goto 2024,62.29,51.28
.complete 66149,1,2 
step
#title Kill Furbolgs + Elementals
#completewith next
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.goto 2024,62.21,50.66,15,0
.complete 66148,1 
step
#title Destroy Totem 3
>>Destroy the Totem
.goto 2024,62.02,51.75
.complete 66149,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
*Defeat the incoming waves of mobs
.goto 2024,60.94,51.46
.skipgossip
.complete 66150,1 
.complete 66150,2 
step
#title Kill Furbolgs + Elementals
>>杀死|cff00ecffFurbolgs|r和|cff0ecffElements|r
.goto 2024,61.51,52.07,15,0
.goto 2024,61.47,52.93,15,0
.goto 2024,61.58,54.22,25,0
.goto 2024,61.51,52.07
.complete 66148,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到Narn和Radza Thunderclaw（你可能要等他）
.goto 2024,60.92,50.54
.turnin 66148 >>Turn in Former Furbolg Family
.turnin 66149 >>Turn in Elemental Influence
.turnin 66150 >>Turn in Rescuing Radza
.accept 66151 >>接任务: |cRXP_WARN_铁石心肠|r
step
>>杀死|cff00ecffStoneheart|r。在他的能力“地球洪流”期间远离他
*You can skip this if you deal low damage
.goto 2024,60.47,49.43
.complete 66151,1 
step
.isQuestComplete 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Radza Thunderclaw
.turnin 66151 >>Turn in His Stone Heart
.goto 2024,60.91,50.50
step
.isQuestTurnedIn 66151
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Garz
.accept 66152 >>接任务: |cRXP_WARN_敢问家在何方|r
.goto 2024,60.99,50.56
step
.isOnQuest 66152
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t无处返回营地。与Garz交谈
.goto 2024,63.20,58.67
.turnin 66152 >>Turn in Nowhere to Go
step
#completewith next
.goto 2024,63.45,58.66
.fp >>无处可去的营地飞行路线
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rannan Korren
.goto 2024,63.68,58.91
.turnin 66429 >>Turn in I Will Remember
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kattigat and To'tik
.accept 67111 >>接任务: |cRXP_WARN_病弱的学徒|r
.goto 2024,67.22,44.41
.accept 67724 >>接任务: |cRXP_WARN_火光庇护|r
.accept 70856 >>接任务: |cRXP_WARN_烈火焚尽|r
.goto 2024,67.34,44.35
step
#completewith TheAzureSpanTheFendingFlames
>>使用|T135433:0|t[火焰喷射器火炬]焚烧地面上的掠夺者尸体|cffffff00（不共享）|r
>>你可以用ESC取消火焰喷射器
.use 199928
.complete 70856,1 
step
#completewith TheAzureSpanTheFendingFlames
>>杀死|cff00ecffShiverweb爬行器|r。掠夺它们的毒液腺|cffffff00（不共享）|r
.complete 67111,1 
step
#title Silk 1/4
>>掠夺蜘蛛丝茧|cffffff00（未共享）|r
.goto 2024,68.07,43.04
.complete 67724,1,1 
step
#title Silk 2/4
>>掠夺蜘蛛丝茧|cffffff00（未共享）|r
.goto 2024,68.50,43.61
.complete 67724,1,2 
step
#title Silk 3/4
>>掠夺蜘蛛丝茧|cffffff00（未共享）|r
.goto 2024,68.74,45.39
.complete 67724,1,3 
step
#label TheAzureSpanTheFendingFlames
#title Silk 4/4
>>掠夺蜘蛛丝茧|cffffff00（未共享）|r
.goto 2024,68.48,45.97
.complete 67724,1 
step
>>杀死|cff00ecffShiverweb爬行器|r。掠夺它们的毒液腺|cffffff00（不共享）|r
.goto 2024,68.86,45.36
.complete 67111,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to To'tik and Kattigat
.turnin 67724 >>Turn in The Fending Flames
.turnin 70856 >>Turn in Kill it with Fire
.goto 2024,67.34,44.35
.turnin 67111 >>Turn in The Ailing Apprentice
.accept 70858 >>接任务: |cRXP_WARN_[Back into the Action]|r
.goto 2024,67.22,44.41
step
>>点击地面上的Alia Sunsor
.goto 2024,67.23,44.38
.complete 70858,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alia Sunsor
.goto 2024,67.30,44.34
.turnin 70858 >>Turn in Back into the Action
.accept 70859 >>接任务: |cRXP_WARN_[What the Guardian Beholds]|r
step
>>Kill |cff00ecffEdavix|r
.goto 2024,69.53,43.18
.complete 70859,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alia Sunsor
.goto 2024,67.30,44.34
.turnin 70859 >>Turn in What the Guardian Beholds
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.accept 66709 >>接任务: |cRXP_WARN_战地医师入门|r
step
>>从老格里姆图斯克身上取下长矛
.goto 2024,59.26,39.73
.complete 66709,1 
step
>>拾木|cffffff00（不共享）|r
.goto 2024,59.20,39.79
.complete 66709,2 
step
>>Place the Campfire
.goto 2024,59.25,39.77
.complete 66709,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk |cffffff00(not shared)|r
.goto 2024,59.26,39.74
.skipgossip 189963,1
.complete 66709,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,59.26,39.74
.turnin 66709 >>Turn in Field Medic 101
.accept 66715 >>接任务: |cRXP_WARN_大撤离|r
step
#completewith TheAzureSpanFrostbiteCausesandSymptoms
>>杀死|cff00ecffGnolls|r并摧毁他们的防御
.accept 66718 >>接任务: |cRXP_WARN_豺狼人必须死|r
.complete 66718,1 
step
>>Follow the arrow
.goto 2024,58.34,41.83
.complete 66715,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66715 >>Turn in The Extraction
.accept 66703 >>接任务: |cRXP_WARN_雪球效应|r
step
#completewith next
>>杀死|cff00ecffSnowdhide萨满|r。掠夺他们的图腾|cffffff00（不共享）|r
.goto 2024,58.34,42.60,15,0
.complete 66703,1 
step
>>杀死|cff00ecffSnoll the Icebreaker|r
.goto 2024,57.90,44.82
.complete 66718,2 
step
>>杀死|cff00ecffSnowdhide萨满|r。掠夺他们的图腾|cffffff00（不共享）|r
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
.goto 2024,56.91,42.35,15,0
.goto 2024,57.62,41.53,15,0
.goto 2024,58.34,42.60,15,0
#loop
.line 2024,58.34,42.64,56.89,42.33,57.64,41.53,58.34,42.64,56.89,42.33,57.64,41.53
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.goto 2024,58.34,42.64,20,0
.goto 2024,56.89,42.33,20,0
.goto 2024,57.64,41.53,20,0
.complete 66703,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Frostbite
.goto 2024,58.42,41.98
.turnin 66703 >>Turn in Snowball Effect
.accept 67050 >>接任务: |cRXP_WARN_霜齿：表里症结|r
step
#label TheAzureSpanFrostbiteCausesandSymptoms
>>Place the totems
.goto 2024,58.24,41.95
.complete 67050,1 
step
>>杀死|cff00ecffGnolls|r并摧毁他们的防御
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,58.11,43.08,20,0
.goto 2024,57.51,44.10,20,0
.goto 2024,57.21,42.10,20,0
.goto 2024,57.72,41.50,20,0
.goto 2024,58.37,41.56,20,0
.goto 2024,58.37,42.66,20,0
.goto 2024,57.70,42.22
.complete 66718,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.complete 67050,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old Grimtusk
.goto 2024,58.46,40.55
.turnin 67050 >>Turn in Frostbite: Causes and Symptoms
.accept 66730 >>接任务: |cRXP_WARN_真正的幸存者|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往格里姆图斯克的藏身处，与老格里姆图斯交谈
.goto 2024,58.79,34.91
.turnin 66730 >>Turn in True Survivors
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.87
.accept 68639 >>接任务: |cRXP_WARN_极地徘徊猎手|r
.accept 68641 >>接任务: |cRXP_WARN_青苔入药|r
step
#completewith TheAzureSpanMossingtheMark
>>杀死|cff00ecff感染的寒皮|r
.complete 68639,1 
step
#title Drakmoss Clump 1
>>Pick up the Drakmoss
.goto 2024,63.68,30.66
.complete 68641,1,1 
step
#title Drakmoss Clump 2
>>Pick up the Drakmoss
.goto 2024,63.57,30.96
.complete 68641,1,2 
step
#title Drakmoss Clump 3
>>Pick up the Drakmoss
.goto 2024,63.53,31.18
.complete 68641,1,3 
step
#title Drakmoss Clump 4
>>Pick up the Drakmoss
.goto 2024,63.41,31.34
.complete 68641,1,4 
step
#label TheAzureSpanMossingtheMark
#title Drakmoss Clump 5
>>Pick up the Drakmoss
.goto 2024,63.22,31.35
.complete 68641,1 
step
>>杀死|cff00ecff感染的寒皮|r
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03,25,0
.goto 2024,62.89,31.76,25,0
.goto 2024,62.51,30.50,25,0
.goto 2024,63.85,29.84,25,0
.goto 2024,63.79,31.03
.complete 68639,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Callisto Windsor and Steria Duskgrove
.goto 2024,63.60,28.86
.turnin 68639 >>Turn in Prowling Polar Predators
.turnin 68641 >>Turn in Mossing the Mark
step
>>Dragonride到航路点位置
.goto 2024,65.81,25.33
.complete 65886,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.33
.turnin 65886 >>Turn in To Rhonin's Shield
.accept 65887 >>接任务: |cRXP_WARN_进入山区|r
.accept 67299 >>接任务: |cRXP_WARN_净除幼龙|r
step
#completewith next
.goto 2024,65.71,25.56,10,0
.goto 2024,65.85,26.75,10,0
.goto 2024,66.03,25.60,10,0
.vehicle 192872 >>进入Arcane Blaster
step
>>使用|T429383:0|tArcane Blast（1）杀死飞龙|cffff00（不共享）|r
>>你可以用（2）来减缓它们
.goto 2024,65.71,25.56
.complete 67299,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drok Scrollstabber
.goto 2024,65.81,25.32
.turnin 67299 >>Turn in Drakes be Gone
step
#completewith next
+使用你的龙骑坐骑飞向被召唤的驱逐舰
step
.goto 2024,70.12,33.26
.accept 69895 >>接任务: |cRXP_WARN_召唤的毁灭者|r
.complete 69895,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kalecgos and Khadgar
.turnin 65887 >>Turn in To the Mountain
.accept 65943 >>接任务: |cRXP_WARN_拜荒攻势|r
.goto 2024,70.01,35.23
.accept 65944 >>接任务: |cRXP_WARN_熔岩爆裂|r
.accept 66647 >>接任务: |cRXP_WARN_元素不器|r
.goto 2024,70.02,35.34
step
#sticky
#label TheAzureSpanPrimalOffensive
>>在你的小地图上显示的区域搜索暴徒
.goto 2024,72.44,37.27,0,0
.complete 65943,1 
step
#title Lava Orb 1
>>销毁球体|cffffff00（未共享）|r
.goto 2024,71.23,35.69,30,0
.goto 2024,72.26,37.26
.complete 65944,1,1 
step
>>杀死|cff00ecffRuvin Stonegrinder|r。掠夺她获得元素焦点|cffffff00（未共享）|r
.goto 2024,72.51,38.11,30,0
.goto 2024,72.90,38.71
.complete 66647,1 
step
#title Lava Orb 2
>>销毁球体|cffffff00（未共享）|r
.goto 2024,73.11,37.77
.complete 65944,1,2 
step
#title Lava Orb 3
>>销毁球体|cffffff00（未共享）|r
.goto 2024,73.77,38.31
.complete 65944,1 
step
#requires TheAzureSpanPrimalOffensive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar and Kalecgos
.goto 2024,74.46,37.84
.turnin 66647 >>Turn in Elemental Unfocus
.turnin 65944 >>Turn in Lava Burst
.turnin 65943 >>Turn in Primal Offensive
step
.goto 2024,65.39,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.accept 66553 >>接任务: |cRXP_WARN_谷地寻踪|r
.accept 66554 >>接任务: |cRXP_WARN_防卫过当|r
step
.goto 2024,65.56,16.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tyrnokos Sunstrike
.accept 66622 >>接任务: |cRXP_WARN_任性的工具|r
step
>>单击Wayward Tools（Wayward Tools）（您可以在安装时执行此操作）
.target Wayward Tool
.goto 2024,65.96,16.51,25,0
.goto 2024,65.82,17.41,25,0
.goto 2024,65.25,17.23,25,0
.goto 2024,64.82,17.31,25,0
.goto 2024,64.71,16.83,25,0
.complete 66622,1 
step
#completewith TheAzureSpanHollowUp
>>击败|cff00ecffFurbolgs|r
.complete 66554,1 
step
#title Clue 1/6
>>点击触电的冬季毛皮|cffffff00（未共享）|r
.goto 2024,66.48,13.27
.complete 66553,1,1 
step
#title Clue 2/6
>>点击触电的冬季毛皮|cffffff00（未共享）|r
.goto 2024,66.56,12.67
.complete 66553,1,2 
step
#title Clue 3/6
>>点击触电的冬季毛皮|cffffff00（未共享）|r
.goto 2024,66.81,12.51
.complete 66553,1,3 
step
#title Clue 4/6
>>点击触电的冬季毛皮|cffffff00（未共享）|r
.goto 2024,66.53,12.18
.complete 66553,1,4 
step
#title Clue 5/6
>>点击触电的冬季毛皮|cffffff00（未共享）|r
.goto 2024,66.29,12.25
.complete 66553,1,5 
step
#label TheAzureSpanHollowUp
#title Clue 6/6
>>点击触电的冬季毛皮|cffffff00（未共享）|r
.goto 2024,66.11,13.22
.complete 66553,1 
step
>>击败|cff00ecffFurbolgs|r
.goto 2024,65.85,12.78,25,0
.goto 2024,66.82,13.47,25,0
.goto 2024,66.96,11.89,25,0
.goto 2024,65.85,12.78
.complete 66554,1 
step
.goto 2024,65.38,15.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden
.turnin 66553 >>Turn in Hollow Up
.turnin 66554 >>Turn in Aggressive Self-Defence
.accept 66555 >>接任务: |cRXP_WARN_容我一言|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden |cffffff00(not shared)|r
.goto 2024,65.38,15.95
.skipgossip 189401,1
.complete 66555,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sonova Snowden and Tyrnokos Sunstrike
.turnin 66555 >>Turn in Bear With Me
.goto 2024,65.38,15.95
.turnin 66622 >>Turn in Wayward Tools
.goto 2024,65.57,16.17
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Dragonflight
#subgroup 命运之线Multibox 60-70
#displayname Chapter 1 - The Waking Shores Multibox
#name A1唤醒海岸多功能箱
#next B2Ohn'ahran Plains Multibox



step << Horde !Dracthyr
>>这应该会自动出现在你的任务日志中
.accept 65435 >>接任务: |cRXP_WARN_巨龙群岛在等待|r
step << Horde !Dracthyr
#completewith MasterRiding
.goto 85,51.19,63.09,15,0
.goto 85,50.53,61.63,15 >>乘电梯到Orgrimmar的上部
.skill riding,225,1
step << Horde !Dracthyr
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>培训专家和驾驭大师
.target Maztha
.skill riding,225,1
step << Horde !Dracthyr
#label MasterRiding
.goto 85,48.91,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Maztha
.skill riding,300 >>Train Master Riding
.target Maztha
step << Horde !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
>>按键盘上的“Escape”可跳过电影
.goto 84,44.08,37.99
.turnin 65435 >>Turn in The Dragon Isles Await
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian
.accept 65437 >>接任务: |cRXP_WARN_守护巨龙之邀|r
.complete 65437,1 
.turnin 65437 >>Turn in Aspectral Invitation
.goto 85,44.06,37.97
.skipgossip 190239,1
.target Ebyssian
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleida and Cindrethresh
.accept 65443 >>接任务: |cRXP_WARN_探险协同|r
.goto 85,44.19,37.79
.accept 72256 >>接任务: |cRXP_WARN_暗爪营|r
.goto 85,44.04,38.25
.target Naleidea Rivergleam
.target Scalecommander Cindrethresh
step << Horde
.goto 85,38.59,56.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tacha
.complete 65443,2 
.skipgossip
.target Pathfinder Tacha
step << Horde
.goto 85,57.09,54.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Magor
.complete 65443,1 
.skipgossip
.target Boss Magor
step << Horde
.goto 85,70.36,49.01,10,0
.goto 85,71.44,50.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Coralie upstairs in The Wyvern's Tail
.complete 65443,3 
.skipgossip
.target Cataloger Coralie
step << Horde
.goto 85,55.08,89.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kodethi on top of the Wall of Orgrimmar
.complete 72256,1 
.target Kodethi
.skipgossip
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea and Khadgar
>>按键盘上的“Escape”可跳过电影
.turnin 65443 >>Turn in Expeditionary Coordination
.turnin 72256 >>Turn in The Dark Talons
.goto 1,55.81,12.66
.accept 65439 >>接任务: |cRXP_WARN_风中耳语|r
.complete 65439,1 
.goto 1,55.92,12.61
.timer 3,Khadgar Appearance
.skipgossip 193450,1
.target Naleidea Rivergleam
.target Archmage Khadgar
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ebyssian and Naleidea
.turnin -65439 >>交任务: |cRXP_FRIENDLY_风之细语|rs
.turnin -70198 >>交任务: |cRXP_FRIENDLY_群岛的召唤|r
.goto 1,55.85,12.74
.accept 65444 >>接任务: |cRXP_WARN_出发！巨龙群岛！|r
.goto 1,55.81,12.66
.target Ebyssian
.target Naleidea Rivergleam
step << Horde
#completewith next
+您可以在Skarukaru上方看到到达时间。如果你看不见，就和她谈谈。
step << Horde
.goto 1,55.96,13.18
>>等待齐柏林飞船的到来。如果你想知道需要多长时间才能到达，请与Sharukaru联系
.complete 65444,1 
step << Horde
#completewith HordeArrivingInDragonIsles
+|cffffff00命运的一般线索注释：|r
*- Make sure to spend all your |cff00ecffDragon Glyphs|r in the Dragonriding tree (minimap button)
*- Loot |cff00ecffDjaradin Caches|r, |cff00ecffDecay Covered Chests|r, or |cff00ecffClan Chests|r (they reward xp)
*- Dragonriding races give experience the first time you do them but they're only worth doing in combination with a world quest
*- Most of the good world quests are included in the guide
step << Horde
#completewith HordeArrivingInDragonIsles
+|cffffff00常规多重装箱说明：|r
*- Make sure to enable the "Automatic quest sharing" option
*- There is only one passenger seat on a Dragonriding mount
*- You have to loot mobs on each character
*- Quests where you have to interact with things are marked with '|cffffff00(not shared)|r' if you have to do them on each of you characters
step << Horde
.zoneskip 2022
.isOnQuest 65444
.goto 1,55.99,13.33
.zone 1978 >>齐柏林飞船到达时，请乘坐齐柏林飞船。在航路点位置等待
step << Horde
#completewith next
.zone 2022 >>齐柏林飞船的跳跃。你会被移到前面（如果不是游到船上点击它）|cffffff00当你的加载屏幕长到约15秒时，不要跳过|r。
step << Horde
#label HordeArrivingInDragonIsles
.goto 2022,80.83,27.80
.complete 65444,2 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam, Scalecommander Cindrethresh and Boss Magor
.turnin 65444 >>Turn in To the Dragon Isles!
.accept 65452 >>接任务: |cRXP_WARN_探险者遇险|r
.goto 2022,80.62,27.60
.accept 65453 >>接任务: |cRXP_WARN_原始龙害|r
.accept 65451 >>接任务: |cRXP_WARN_练手材料|r
.goto 2022,80.63,27.63
step << Horde
#completewith WakingShoresExplorersInPeril
>>杀死|cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
#completewith WakingShoresExplorersInPeril
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
.complete 65451,1 
step << Horde
>>摧毁原龙肋笼（|cffffff00not shared|r）
.goto 2022,79.80,28.20,25,0
.goto 2022,80.37,26.34
.complete 65452,1 
step << Horde
>>营救档案管理员Spearbloom（|cffffff00未共享|r）
*Look above you!
.goto 2022,78.71,24.52
.complete 65452,2 
step << Horde
.accept 66076 >>接任务: |cRXP_WARN_[Ancient Hornswog]|r
.goto 2022,78.17,23.22
.complete 66076,1 
.goto 2022,77.29,22.04
step << Horde
#label WakingShoresExplorersInPeril
>>帮助挂在链上的懒人（|cffffff00not shared|r）
.goto 2022,77.37,29.77
.complete 65452,3 
step << Horde
#completewith next
>>杀死|cff00ecffBig Proto Drakes|r
.goto 2022,79.24,25.84,0,0
.complete 65453,1 
step << Horde
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
.goto 2022,77.95,28.09,10,0
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65451,1 
step << Horde
>>杀死|cff00ecffBig Proto Drakes|r
#loop
.line 2022,78.56,28.70,79.20,28.94,79.69,27.85,79.53,27.06,78.62,26.52,77.47,26.72
.goto 2022,78.56,28.70,20,0
.goto 2022,79.20,28.94,20,0
.goto 2022,79.69,27.85,20,0
.goto 2022,79.53,27.06,20,0
.goto 2022,78.62,26.52,20,0
.goto 2022,77.47,26.72,20,0
.complete 65453,1 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Naleidea Rivergleam
.goto 2022,76.61,33.60
.turnin 65452 >>Turn in Explorers in Peril
.accept 69910 >>接任务: |cRXP_WARN_拉希奥呢？|r



step << Alliance !Dracthyr
>>这应该会自动出现在你的任务日志中
.accept 65436 >>接任务: |cRXP_WARN_巨龙群岛在等待|r
step << Alliance !Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion in Stormwind
.goto 84,79.81,27.04
.turnin 65436 >>Turn in The Dragon Isles Await
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.accept 66577 >>接任务: |cRXP_WARN_守护巨龙之邀|r
.goto 84,79.81,27.04
.skipgossip 189569,1
.complete 66577,1 
.turnin 66577 >>Turn in Aspectral Invitation
.target Wrathion
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel and Toddy Whiskers
.accept 72240 >>接任务: |cRXP_WARN_黑卫营|r
.goto 84,79.95,26.95
.target Scalecommander Azurathel
.accept 66589 >>接任务: |cRXP_WARN_探险协同|r
.goto 84,79.73,27.35
.target Toddy Whiskers
step << Alliance
>>稍微往外走一点，这样你就可以爬上去了
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin
.goto 84,79.45,26.89,3,0
.goto 84,64.12,37.21
.skipgossip 1
.complete 66589,1 
.target Thaelin Darkanvil
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cataloger Wulferd
.goto 84,63.36,69.91
.skipgossip
.complete 66589,3 
.target Cataloger Wulferd
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dervishian
.goto 84,50.91,67.36
.skipgossip
.complete 72240,1 
.target Dervishian
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Pathfinder Jeb
.goto 84,38.26,45.52
.skipgossip
.complete 66589,2 
.target Pathfinder Jeb
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.goto 84,22.70,55.66
.turnin 66589 >>Turn in Expeditionary Coordination
.turnin 72240 >>Turn in The Obsidian Warders
.target Toddy Whiskers
step << Alliance
.goto 84,22.94,56.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Archmage Khadgar
.accept 66596 >>接任务: |cRXP_WARN_风中耳语|r
.skipgossip
.complete 66596,1 
.target Archmage Khadgar
step << Alliance
.goto 84,22.92,56.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66596 >>交任务: |cRXP_FRIENDLY_风之细语|rs
.target Wrathion
step << Alliance
.goto 84,22.73,55.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin -70197 >>交任务: |cRXP_FRIENDLY_群岛的召唤|r
.accept 67700 >>接任务: |cRXP_WARN_出发！巨龙群岛！|r
.target Toddy Whiskers
step << Alliance
>>等待船只抵达
.goto 84,22.36,55.98
.complete 67700,1 
step << Alliance
#completewith AllianceArrivingDragonIsles
+|cffffff00命运的一般线索注释：|r
*- Make sure to spend all your |cff00ecffDragon Glyphs|r in the Dragonriding tree (minimap button)
*- Loot |cff00ecffDjaradin Caches|r, |cff00ecffDecay Covered Chests|r, or |cff00ecffClan Chests|r (they reward xp)
*- Dragonriding races give experience the first time you do them but only do them in combination with a world quest
*- Most of the good world quests are included in the guide
step << Alliance
#completewith AllianceArrivingDragonIsles
+|cffffff00常规多重装箱说明：|r
*- Make sure to enable the "Automatic quest sharing" option
*- There is only one passenger seat on a Dragonriding mount
*- You have to loot mobs on each character
*- Quests where you have to interact with things are marked with '|cffffff00(not shared)|r' if you have to do them on each of you characters
step << Alliance
.isOnQuest 67700
.goto 84,20.82,53.83
.zone 1978 >>在大木板上走到船的前面
step << Alliance
#completewith next
.zone 2022 >>跳船。你会被移到前面（如果不是游到船上点击它）|cffffff00当你的加载屏幕长到约15秒时，不要跳过|r。
step << Alliance
#label AllianceArrivingDragonIsles
.goto 2022,82.13,31.88
.complete 67700,2 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers, Thaelin Darkanvil and Scalecommander Azurathel
.turnin 67700 >>Turn in To the Dragon Isles!
.accept 70122 >>接任务: |cRXP_WARN_探险者遇险|r
.goto 2022,82.13,31.88
.accept 70124 >>接任务: |cRXP_WARN_练手材料|r
.goto 2022,82.09,31.89
.accept 70123 >>接任务: |cRXP_WARN_原始龙害|r
.goto 2022,82.16,31.86
.target Toddy Whiskers
.target Thaelin Darkanvil
.target Scalecommander Azurathel
step << Alliance
#completewith WakingShoresExplorersInPerilCogcatcher
.goto 2022,82.47,32.10,10,0
.goto 2022,82.91,32.54,10 >>顺着箭头上山
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>杀死|cff00ecffthe Big Proto Drakes|r
.complete 70123,1 
step << Alliance
#completewith WakingShoresExplorersInPerilAlliance
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
.complete 70124,1 
step << Alliance
#label WakingShoresExplorersInPerilCogcatcher
>>营救Cogcatcher教授（|cffffff00未共享|r）
.goto 2022,83.55,33.59
.complete 70122,1 
.target Professor Cogcatcher
step << Alliance
>>营救在空中的档案管理员Rellid（|cffffff00not shared|r）
.goto 2022,83.01,36.30
.complete 70122,2 
.target Archivist Rellid
step << Alliance
>>进入桥上的洞穴。杀死|cff00ecff原始斯基泰德女王|r
.goto 2022,81.17,37.88
.complete 66074,1 
.unitscan Primal Scythid Queen
step << Alliance
#completewith next
.goto 2022,81.88,36.88,20 >>离开洞穴
step << Alliance
#label WakingShoresExplorersInPerilAlliance
>>营救Spelunker Lockeye（|cffffff00未共享|r）
.goto 2022,79.54,35.35
.complete 70122,3 
.target Spelunker Lockeye
step << Alliance
#completewith next
>>杀死|cff00ecffthe Big Proto Drakes|r
.complete 70123,1 
step << Alliance
>>杀死|cff00ecffPrimal Proto Whelps|r。掠夺它们的鳞片
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70124,1 
step << Alliance
>>杀死|cff00ecffthe Big Proto Drakes|r
#loop
.line 2022,79.90,33.73,79.54,32.98,79.90,32.16,81.00,33.19,81.74,32.97,82.47,33.52,83.31,33.70,84.07,33.98,84.29,34.94,83.79,35.66,82.84,35.93,82.28,34.61
.goto 2022,79.90,33.73,25,0
.goto 2022,79.54,32.98,25,0
.goto 2022,79.90,32.16,25,0
.goto 2022,81.00,33.19,25,0
.goto 2022,81.74,32.97,25,0
.goto 2022,82.47,33.52,25,0
.goto 2022,83.31,33.70,25,0
.goto 2022,84.07,33.98,25,0
.goto 2022,84.29,34.94,25,0
.goto 2022,83.79,35.66,25,0
.goto 2022,82.84,35.93,25,0
.goto 2022,82.28,34.61,25,0
.complete 70123,1 
step << Alliance
.goto 2022,76.63,33.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toddy Whiskers
.turnin 70122 >>Turn in Explorers in Peril
.accept 70125 >>接任务: |cRXP_WARN_拉希奥呢？|r
.target Toddy Whiskers



step
#completewith point1
+我们只在角色扮演期间接受此区域的任务。严格遵循箭头以获得最大效率
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55636 >>Talk to Sendrax 
.timer 17,Roleplay Duration
.target Sendrax
step << Horde
#completewith WakingShorePractiveMaterialsHorde
>>完成其他步骤
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
#completewith WakingShorePractiveMaterialsAlliance
>>完成其他步骤
.goto 2022,76.58,33.66,0,0
.complete 70125,1 << Alliance 
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Cindrethresh and Warlord Breka Grimaxe
.accept 66110 >>接任务: |cRXP_WARN_[Give Peace a Chance]|r
.goto 2022,76.36,33.09
.turnin 65453 >>Turn in Primal Pests
.goto 2022,76.28,33.02
step << Horde
#label WakingShorePractiveMaterialsHorde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Boss Magor
.goto 2022,75.94,33.25
.turnin 65451 >>Turn in Practice Materials
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster Cloudgaze
.goto 2022,75.84,33.49
.accept 66101 >>接任务: |cRXP_WARN_上九天揽月|r
step << Horde
#label WakingShoreInquireMissingDragonsHorde
>>Wait for the roleplay
.goto 2022,76.58,33.66,0,0
.complete 69910,1 << Horde 
step << Alliance
.goto 2022,76.51,34.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kerazal
.daily 70750,72375,72374,72068,72373 >>接任务: |cRXP_WARN_援助联军|r
step << Alliance
.goto 2022,76.49,34.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thaelin Darkanvil
.turnin 70124 >>Turn in Practice Materials
.target Thaelin Darkanvil
step << Dracthyr Alliance
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>接任务: |cRXP_WARN_迷途浪人|r
.target Haephesta
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 1
.complete 70148,1 
.target Kholmar Sunrunner
step << Dracthyr Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 1
.complete 70148,2 
.target Toninaar
step << Alliance
.goto 2022,76.73,34.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.accept 67053 >>接任务: |cRXP_WARN_[Give Peace a Chance]|r
.target Captain Garrick
step << Alliance
.goto 2022,76.75,34.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Azurathel
.turnin 70123 >>Turn in Primal Pests
.target Scalecommander Azurathel
step
#label point1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 70125 >>Turn in Where is Wrathion? << Alliance
.turnin 69910 >>Turn in Where is Wrathion? << Horde
.accept 72293 >>接任务: |cRXP_WARN_巨龙群岛探险|r
.target Sendrax
step
>>点击侦察地图并接受Waking Shores任务
.goto 2022,76.51,34.24
.accept 72266 >>接任务: |cRXP_WARN_觉醒海岸|r
.complete 72293,1 
step << Horde
.goto 2022,76.51,34.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kerazal
.daily 70750,72375,72374,72068,72373 >>接任务: |cRXP_WARN_援助联军|r
step
>>在你的任务日志中点击你的小地图下的任务（如果你不能打开它，请重新加载）
.goto 2022,76.58,33.66
.turnin 72293 >>Turn in Adventuring in the Dragon Isles
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 72266 >>Turn in The Waking Shores
.accept 69911 >>接任务: |cRXP_WARN_杂乱不堪，请别见怪|r
step << Dracthyr Horde
.goto 2022,76.40,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 70148 >>接任务: |cRXP_WARN_迷途浪人|r
.target Haephesta
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kholmar
.goto 2022,76.44,34.42
.gossipoption 56060
.skipgossip 1
.complete 70148,1 
.target Kholmar Sunrunner
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ambassador Fastrasz
.goto 2022,76.33,35.62
.skipgossip 193393,2
.complete 69911,1 
.target Ambassador Fastrasz
step
>>Interact with the book
.goto 2022,76.28,35.62
.skipgossip 1
.complete 69911,2 
step
>>与大石头互动
.goto 2022,75.61,34.17
.complete 69911,3 
step
>>与火盆互动
.goto 2022,78.43,31.80
.complete 69911,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.58,33.66
.turnin 69911 >>Turn in Excuse the Mess
.accept 69912 >>接任务: |cRXP_WARN_首次紧急情况！|r
.target Sendrax
step
#completewith next
+|cfff78300在角色扮演过程中，上交并完成指定的任务。
step
#completewith WakingShoreFromSuchGreatHeights
>>Wait for the roleplay
.complete 69912,1 
step
#completewith next
.goto 2022,76.58,33.66
.gossipoption 55637 >>Talk to Sendrax
.timer 33,Roleplay Duration
.target Sendrax
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
.goto 2022,76.73,34.55
.turnin 66110 >>Turn in Give Peace a Chance
.accept 66111 >>接任务: |cRXP_WARN_侵蚀元素|r
.target Captain Garrick
step << Alliance
.goto 2022,76.36,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 67053 >>Turn in Give Peace a Chance
.accept 70135 >>接任务: |cRXP_WARN_侵蚀元素|r
.target Warlord Breka Grimaxe
step
#completewith WakingShoreDragpnGlyphandYou
.gossipoption 107095
.gossipoption 107099 >>飞往利特拉戈萨，启用您的乘客座位。每个坐骑只能带一个人。和你所有的角色一起飞到那里，因为当你的能量在一个角色上耗尽时，你可以交换坐骑
.goto 2022,74.57,56.97
.target Lithragosa
step
#completewith next
.goto 2022,76.31,34.33,10 >>按照航路点触发下一个角色扮演（基于接近度）
step << Dracthyr Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Toninaar
.goto 2022,76.69,34.78
.gossipoption 56063
.skipgossip 1
.complete 70148,2 
.target Toninaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.goto 2022,76.35,34.64
.accept 66112 >>接任务: |cRXP_WARN_可劲造|r
.target Grun Ashbeard
step
#completewith WakingShorePrimalEarthenCore
>>杀死大部分的小火元素。地球元素要强硬得多。
.goto 2022,73.89,33.74,0,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step
#title Dragon Glyph: Wingrest Embassy
.goto 2022,74.91,37.44
.achievement 16575,5 >>捡起小塔上方的龙雕
step
#completewith next
.goto 2022,75.52,36.34,15,0
.goto 2022,75.78,37.01,10 >>进入洞穴
step
#label WakingShorePrimalEarthenCore
>>进入洞穴并杀死|cff00ecffBaron地壳核心|r。掠夺他的核心|cffffff00（未共享）|r
.goto 2022,74.88,39.31
.complete 66112,2 
step
#completewith next
.goto 2022,75.78,37.01,20 >>离开洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Majordomo Selistra
.turnin 69912 >>Turn in My First Real Emergency!
.goto 2022,76.18,34.50
.accept 69914 >>接任务: |cRXP_WARN_贾拉丁苏醒|r
.goto 2022,76.22,34.53
.target Wrathion
.target Majordomo Selistra
step
#completewith WakingShorePrimalEarthenCore
>>Wait for the roleplay
.complete 69914,1 
step
#completewith next
.goto 2022,76.22,34.53
.gossipoption 55872 >>Talk to Majordomo Selistra
.timer 50,Roleplay Duration
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.goto 2022,76.41,34.45
.accept 69965 >>接任务: |cRXP_WARN_质量保证|r
.target Haephesta
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Aster
.goto 2022,75.85,33.50
.skipgossip 1
.complete 70148,3 
.target Aster Cloudgaze
step
#completewith WakingShoresQualityAssurance
>>专注于杀死|cff00ecff小火元素|r
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>与墙上的笔记互动
.goto 2022,75.05,33.52
.complete 70148,4 
step
#title Geodes Excavated 1
>>点击火山大地测量仪
.goto 2022,74.57,33.51
.complete 69965,1,1 
step
#title Geodes Excavated 2
>>点击火山大地测量仪
.goto 2022,73.93,33.23
.complete 69965,1,2 
step
#title Geodes Excavated 3
>>点击火山大地测量仪
.goto 2022,73.56,32.21
.complete 69965,1,3 
step
#label WakingShorePrimalMoltenCore
>>杀死|cff00ecffBaron Ashflow |r。掠夺他的核心|cffffff00（不共享）|r
.goto 2022,72.91,32.97
.complete 66112,1 
step
#title Geodes Excavated 4
>>点击火山大地测量仪
.goto 2022,72.88,33.73
.complete 69965,1,4 
step
#title Geodes Excavated 5
>>点击火山大地测量仪
.goto 2022,72.94,34.12
.complete 69965,1,5 
step
#label WakingShoresQualityAssurance
#title Geodes Excavated 6
>>点击火山大地测量仪
.goto 2022,73.63,33.89
.complete 69965,1 
step << Dracthyr
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip
.complete 70148,5 
.target Talon Ethrethi
step
>>杀死大部分|cff00ecff小火元素|r
.goto 2022,74.65,35.28,10,0
#loop
.line 2022,73.62,33.39,74.65,35.28
.goto 2022,73.62,33.39,25,0
.goto 2022,74.65,35.28,25,0
.complete 70135,1 << Alliance 
.complete 66111,1 << Horde 
step << Dracthyr
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talon Ethrethi
.goto 2022,74.93,34.98
.skipgossip
.complete 70148,5 
.target Talon Ethrethi
step
>>Wait for the roleplay
.goto 2022,76.22,34.53
.complete 69914,1 
step
#requires WakingShoresEncroachingElementals
.goto 2022,76.26,34.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.turnin 69914 >>Turn in The Djaradin Have Awoken
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax then immediately turn in the next Quests
.accept 65760 >>接任务: |cRXP_WARN_报到|r
.goto 2022,76.26,34.40
.target Sendrax
step
.goto 2022,76.35,34.64
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grun Ashbeard
.turnin 66112 >>Turn in Always Be Crafting
.target Grun Ashbeard
step
.goto 2022,76.41,34.45
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.turnin 69965 >>Turn in Quality Assurance
.turnin 70148 >>Turn in Without Purpose << Dracthyr
.target Haephesta
step << Alliance
.goto 2022,76.37,33.09
>>Immediately go there
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Warlord Breka Grimaxe
.turnin 70135 >>Turn in Encroaching Elementals
.target Warlord Breka Grimaxe
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Garrick
*Immediately go there.
.goto 2022,76.73,34.56
.turnin 66111 >>Turn in Encroaching Elementals
.target Captain Garrick
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,76.27,34.41
.skipgossip 193363,3
.complete 65760,1 
.target Sendrax
step
>>|cfff78300关注并靠近Sendrax|r
>>|cffffff00多框提示：|r与每个角色的Sendrax对话，并将它们放在一起。等待Sendrax停止移动每个字符。然后，当其他角色跟随时，您可以安全地与一个角色一起行走
.goto 2022,75.28,36.20,20,0
.goto 2022,73.20,35.96,20,0
.goto 2022,72.29,36.65,20,0
.goto 2022,71.25,40.67
.complete 65760,2 
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65760 >>Turn in Reporting for Duty
.accept 65990 >>接任务: |cRXP_WARN_挽龙崽于毒手|r
.accept 65989 >>接任务: |cRXP_WARN_贾拉丁进犯|r
.target Commander Lethanak
step
#sticky
#label WakingShoreInvaderDjaradin
*Focus on killing |cff00ecffQalashi Scavengers|r. They have the least amount of HP
.goto 2022,70.38,44.91,0,0
.complete 65989,1 
step
>>保存|cff00ff2Whipering Whelpling|r|cffffff00（未共享）|r
.goto 2022,71.36,44.65
.complete 65990,1,1 
step
>>保存|cff00ff2Whipering Whelpling|r|cffffff00（未共享）|r
.goto 2022,70.97,46.21,10,0
.goto 2022,70.87,46.77,10,0
.goto 2022,71.12,46.98,10,0
.goto 2022,70.97,46.63
.complete 65990,1,2 
step
>>保存|cff00ff2Whipering Whelpling|r|cffffff00（未共享）|r
.goto 2022,69.86,45.3
.complete 65990,1,3 
step
>>保存|cff00ff2Whipering Whelpling|r|cffffff00（未共享）|r
.goto 2022,69.38,43.26
.complete 65990,1 
step
#requires WakingShoreInvaderDjaradin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.goto 2022,71.20,40.77
.turnin 65989 >>Turn in Invader Djaradin
.turnin 65990 >>Turn in Deliver Whelps From Evil
.accept 65991 >>接任务: |cRXP_WARN_清算已至|r
.target Commander Lethanak
step
.goto 2022,71.27,40.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mender Eskros
.accept 72122 >>接任务: |cRXP_WARN_从前的生态学者|r
.target Mender Eskros
step
.goto 2022,74.43,42.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ecologist Tharu and Ecologist Iskha
.turnin 72122 >>Turn in Erstwhile Ecologists
.accept 66105 >>接任务: |cRXP_WARN_轻剂疗法|r
.accept 66107 >>接任务: |cRXP_WARN_荒野救生|r
.target Ecologist Tharu
.target Ecologist Iskha
step
#completewith next
>>杀死|cff00ecffRamapging水|r和|cff0ecffRamappeging风|r
.complete 66105,1 
.complete 66105,2 
step
>>点击被困动物|cffffff00跟随arrrow，关注畏缩的螃蟹和无助的水禽|r
.goto 2022,76.13,42.62,25,0
.goto 2022,76.74,43.78,25,0
.goto 2022,76.21,45.68,25,0
.goto 2022,78.03,45.84,25,0
.goto 2022,78.72,47.83,25,0
.goto 2022,79.16,49.12,25,0
.goto 2022,80.19,47.91,25,0
.goto 2022,79.03,46.29,25,0
.complete 66107,1 
step
>>杀死|cff00ecffRamapging水|r和|cff0ecffRamappeging风|r
.goto 2022,76.13,42.62,35,0
.goto 2022,75.52,48.00,35,0
.goto 2022,77.22,49.11,35,0
.goto 2022,79.14,48.93,35,0
.goto 2022,79.72,51.29,35,0
#loop
.line 2022,76.13,42.62,75.52,48.00,77.22,49.11,79.14,48.93,79.72,51.29
.goto 2022,76.13,42.62,40,0
.goto 2022,75.52,48.00,40,0
.goto 2022,77.22,49.11,40,0
.goto 2022,79.14,48.93,40,0
.goto 2022,79.72,51.29,40,0
.complete 66105,1 
.complete 66105,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ecologist Tharu and Ecologist Iskha
.turnin 66107 >>Turn in Wildlife Rescue
.goto 2022,74.51,42.18
.turnin 66105 >>Turn in A Scalpel of a Solution
.accept 66104 >>接任务: |cRXP_WARN_法医生态学|r
.goto 2022,74.42,42.14
.target Ecologist Tharu
.target Ecologist Iskha
step
>>点击桌子上的尸体
.goto 2022,74.46,42.20
.complete 66104,1 
.complete 66104,2 
step
>>检查桌子上的贝壳
.goto 2022,74.46,42.20
.complete 66104,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ecologist Iskha
.turnin 66104 >>Turn in Forensic Ecology
.accept 66108 >>接任务: |cRXP_WARN_猛药重拳|r
.goto 2022,74.43,42.14
.target Ecologist Iskha
step
>>杀死|cff00ecffWhirglurgl|r
.goto 2022,79.77,39.80
.complete 66108,2 
step
>>杀死|cff00ecffSogglmogl|r
.goto 2022,80.08,44.10
.complete 66108,1 
step
.goto 2022,80.13,42.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bubbled Duckling
.accept 66196 >>接任务: |cRXP_WARN_嘎嘎坠地|r
.target Bubbled Duckling
step
>>顺着箭头走。你可能得等一段时间才能看到这只小鸭子
.goto 2022,74.54,42.09
.complete 66196,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t谈生态学家塔鲁与法医生态学
.turnin 66196 >>Turn in A Quack For Help
.goto 2022,74.51,42.17
.turnin 66108 >>Turn in A Sledgehammer of a Solution
.goto 2022,74.42,42.14
.target Ecologist Tharu
.target Ecologist Iskha
step
.abandon 66106 >>放弃不要那么Shellfish
step
#completewith WakingShoresKilljoyBlacktalinObsidian
>>杀死营地周围的Djaradin敌人。你也可以多次杀死龙虎伊戈尔丹
.goto 2022,62.76,34.50,0,0
.accept 65994 >>接任务: |cRXP_WARN_制裁贾拉丁|r
.complete 65994,1 
.unitscan Dragonhunter Igordan
step
#label WakingShoreTimeForReckoning
>>爬上塔，等待雷硫磷。和他谈谈
.goto 2022,68.12,36.87,20,0
.goto 2022,66.59,34.58
.complete 65991,1 
.target Wrathion
step
.goto 2022,66.36,35.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 65991 >>Turn in Time for a Reckoning
.accept 65993 >>接任务: |cRXP_WARN_败兴而归|r
.accept 65992 >>接任务: |cRXP_WARN_黑爪谍报|r
.target Wrathion
step
#label WakingShoreDragonHunderIgordan
>>杀死|cff00ecffDragonhunter Igordan|r。如果他不起来，就杀死你周围的一些暴徒，直到他重生
.goto 2022,64.26,33.05
.accept 66956 >>接任务: |cRXP_WARN_猎龙者伊戈尔丹|r
.complete 66956,1 
.unitscan Dragonhunter Igordan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t向右通话|cffffff00（未共享）|r
.goto 2022,65.09,29.35
.skipgossip 1
.complete 65992,3 
step
#completewith next
>>杀死肉馅卷饼手索托克。为夸拉希计划掠夺他。在你的包里点击它
.complete 65993,1 
.collect 193874,1
.accept 65995 >>接任务: |cRXP_WARN_黑曜堡垒|r
.unitscan Meatgrinder Sotok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t向左通话|cffffff00（不共享）|r
.goto 2022,64.11,30.33,30,0
.goto 2022,63.43,28.87
.skipgossip 1
.complete 65992,2 
.target Left
step
>>杀死肉馅卷饼手索托克。为夸拉希计划掠夺他。在你的包里点击它|cffffff00（未共享）|r
.goto 2022,62.96,29.43
.complete 65993,1 
.collect 193874,1,65995,1
.accept 65995 >>接任务: |cRXP_WARN_黑曜堡垒|r
.unitscan Meatgrinder Sotok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia |cffffff00(not shared)|r
.goto 2022,64.58,30.57,30,0
.goto 2022,64.41,33.29,30,0
.goto 2022,63.03,33.34
.skipgossip
.complete 65992,1 
.target Talonstalker Kavia
step
#label WakingShoresKilljoyBlacktalinObsidian
>>爬上楼梯，和Wrathion说话
.goto 2022,62.62,32.67,24,0
.goto 2022,62.65,33.17
.turnin 65993 >>Turn in Killjoy
.turnin 65992 >>Turn in Blacktalon Intel
.turnin 65995 >>Turn in The Obsidian Citadel
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,62.76,33.11
.accept 65996 >>接任务: |cRXP_WARN_老兵援军|r
.target Majordomo Selistra
step
>>杀死营地周围的Djaradin敌人。你也可以多次杀死龙虎伊戈尔丹
.goto 2022,62.17,34.69,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,66.00,36.88,30,0
.goto 2022,64.25,33.15,30,0
.goto 2022,62.17,34.69
.accept 65994 >>接任务: |cRXP_WARN_制裁贾拉丁|r
.complete 65994,1 
.unitscan Dragonhunter Igordan
step
#completewith next
+|cfff78300提醒：您可以对“活动项目”进行键绑定|r
+|cfff78300如何键绑定：|r Escape->Options->Keybindings->RestedXP Guides->Select and Bind Active Button 1,2,3 and 4
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*Use a heal spell instead if possible
.use 193917
.goto 2022,60.99,35.63
.complete 65996,1,1 
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*|cffffff00Use a heal spell instead if possible|r
.use 193917
.goto 2022,61.11,36.77
.complete 65996,1,2 
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>接任务: |cRXP_WARN_制火靠……水|r
.target Caretaker Ventraz
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*Use a heal spell instead if possible
.use 193917
.goto 2022,59.04,34.84
.complete 65996,1,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.11,34.86
.accept 66998 >>接任务: |cRXP_WARN_制火靠……水|r
.target Caretaker Ventraz
step
#label WakingShoreFightingFirewithWater
>>杀死洞穴内的火敌
.goto 2022,59.30,33.30
.complete 66998,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Ventraz
.goto 2022,59.10,34.84
.turnin 66998 >>Turn in Fighting Fire with... Water
.target Caretaker Ventraz
step
>>在|cff00ff2e受伤的Drakonids|r上使用|T967530:0:0|t[回春草]
*Use a heal spell instead if possible
.use 193917
.goto 2022,56.64,34.77
.complete 65996,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Azkra
.goto 2022,54.99,30.76
.turnin 65996 >>Turn in Veteran Reinforcements
.accept 65997 >>接任务: |cRXP_WARN_追逐森德拉克斯|r
.target Caretaker Azkra
step
.goto 2022,54.99,30.77
.complete 65996,2 
step
.itemcount 132516,1
#completewith WakingShoreChasingSendrax
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
#completewith next
+您可以跳过下一个过场（Esc->“是”）。
step
#label WakingShoreChasingSendrax
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax |cffffff00(not shared)|r
.goto 2022,55.18,24.95
.skipgossip 187406,1
.complete 65997,1 
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,55.18,24.95
.turnin 65997 >>Turn in Chasing Sendrax
.accept 65999 >>接任务: |cRXP_WARN_齿爪尽红|r
.accept 65998 >>接任务: |cRXP_WARN_军团的未来|r
.target Sendrax
step
>>Interact with the book
.goto 2022,55.26,24.69
.accept 66000 >>接任务: |cRXP_WARN_阿莱克丝塔萨的藏书馆|r
step
#sticky
#label WakingShoreRedInToothAndClaw
>>在执行其他目标时杀死|cff00ecffPrimalists/Revenants/Taraseks|r
.goto 2022,56.37,22.32,0,0
.complete 65999,1 
step
#completewith WakingShoreFutureoftheFlight
>>当你看到Rekindler|r时杀死她（在该地区巡逻）
.goto 2022,56.97,25.28,0,0
.complete 70648,1 
.unitscan Firava the Rekindler
step
>>与书籍交互|cffffff00（未共享）|r
.goto 2022,53.36,22.39
.complete 66000,1,1 
step
>>与书籍交互|cffffff00（未共享）|r
.goto 2022,53.47,21.99
.complete 66000,1,2 
step
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.12,22.01
.complete 65998,1 
.complete 65998,2,3 
step
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.71
.complete 65998,2,6 
step
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,54.89,21.36
.complete 65998,2 
step
>>与建筑内的书籍互动|cffffff00 |r|cffff00（未共享）|r
.goto 2022,54.62,20.36
.complete 66000,1,3 
step
>>与书籍互动|cffffff00在二楼的建筑内|r|cffff00（不共享）|r
.goto 2022,55.08,20.77,10,0
.goto 2022,55.04,20.3,5,0
.goto 2022,54.6,20.62
.complete 66000,1,4 
step
#label WakingShoreFutureoftheFlight
>>打碎鸡蛋，杀死|cff00ecffInfused Ruby Whelplings|r
.goto 2022,55.16,22.73
.complete 65998,2 
step
.isWorldQuestAvailable 2022,69931
>>穿过吊环内的补给品
.goto 2022,52.16,20.52
.complete 69931,1 
step
>>当你看到Rekindler|r时杀死她（在该地区巡逻）
.goto 2022,56.97,25.28
.accept 70648 >>接任务: |cRXP_WARN_重燃者菲拉瓦|r
.complete 70648,1 
.unitscan Firava the Rekindler
step
#requires WakingShoreRedInToothAndClaw
#label WakingShoreDontTurnIn1
#completewith WakingShoreRedInToothAndClawLibraryofAlexstrasza
.goto 2022,56.24,22.14,10 >>|cfff78300在到达航路点位置之前，不要进入队列|r
step
#requires WakingShoreRedInToothAndClaw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65998 >>Turn in Library of Alexstrasza
.target Sendrax
step
#label WakingShoreRedInToothAndClawLibraryofAlexstrasza
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax next to you
.goto 2022,56.24,22.14
.turnin 65999 >>Turn in Red in Tooth and Claw
.turnin 66000 >>Turn in Library of Alexstrasza
.accept 66001 >>接任务: |cRXP_WARN_最后的希望|r
.target Sendrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sendrax
.goto 2022,56.24,22.06
.skipgossip
.timer 16,Roleplay Duration
.complete 66001,1 
step
>>Wait for the Roleplay
.goto 2022,56.92,21.62
.complete 65998,1 
step
>>与蛋互动|cffffff00（不共享）|r。只需跟随一个角色和其他角色。每个角色都需要拿着鸡蛋
.goto 2022,56.92,21.61
.complete 66001,2 
step
>>使用任何能力都会失败
.goto 2022,55.21,26.27,30,0
.goto 2022,54.99,30.77
.complete 66001,3 
.timer 18,Roleplay Duration
step
.goto 2022,54.42,30.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Caretaker Zefren
.accept 70179 >>接任务: |cRXP_WARN_一石两用|r
.target Apprentice Caretaker Zefren
step
>>杀死该区域的|cff00ecffEarth元素|r。掠夺他们的材料
.goto 2022,52.79,31.06,20,0
.goto 2022,51.71,31.55,20,0
.goto 2022,50.42,30.99,20,0
.goto 2022,52.79,31.06
.complete 70179,1 
step
.goto 2022,54.44,30.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Caretaker Zefren. Dismount so the other characters can turn it in
.turnin 70179 >>Turn in A Two for One Deal
.target Apprentice Caretaker Zefren
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,55.10,31.04
.skipgossip 1
.turnin 66001 >>Turn in A Last Hope
.accept 66114 >>接任务: |cRXP_WARN_为了女王的福祉|r
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra |cffffff00(not shared)|r
.goto 2022,55.10,31.03
.skipgossip 1
.timer 67,Ride to the Ruby Lifeshrine
.complete 66114,1 
.target Majordomo Selistra
step
#completewith next
+你可以跳过下一部电影。
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstraza
.goto 2022,62.34,73.02
.skipgossip 187290,1
.complete 66114,2 
step
.goto 2022,62.34,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder
.turnin 66114 >>Turn in For the Benefit of the Queen
.accept 68795 >>接任务: |cRXP_WARN_驭龙术|r
.accept 66115 >>接任务: |cRXP_WARN_红龙信条|r
.target Alexstrasza the Life-Binder
step
#completewith WakingShoreMandateOfRed1
.goto 2022,61.90,73.82
.home >>将你的炉石设置为红宝石生命神殿
step
#label WakingShoreMandateOfRed1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xius
.goto 2022,60.70,74.06
.skipgossip 1
.complete 66115,1 
.target Xius
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Akxall
.goto 2022,59.36,72.41
.skipgossip 1
.complete 66115,2 
.target Akxall
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,58.37,67.12
.skipgossip 193287,1
.timer 26,Roleplay Duration
.complete 68795,1 
.target Lord Andestrasz
step
#completewith next
.goto 2022,57.81,68.11
.fp >>获取Ruby Lifesherine飞行路线
step
.goto 2022,57.93,68.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Haephesta
.accept 67564 >>接任务: |cRXP_WARN_工匠邮差|r
.target Haephesta
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Thomas Bright
.goto 2022,60.23,72.18
.turnin 67564 >>Turn in Artisan's Courier
.accept 67100 >>接任务: |cRXP_WARN_赠予米格尔|r
.skipgossip 192574,1
.target Thomas Bright
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再次与Thomas Bright交谈
.goto 2022,60.23,72.18
.skipgossip 192574,1
.complete 67100,1 
.target Thomas Bright
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.turnin 68795 >>Turn in Dragonriding
.accept 65118 >>接任务: |cRXP_WARN_驭滑翔术|r
.target Lord Andestrasz
step
#completewith WakingShoreHowtoUseMomentumwithYourDragon
+任务失败时可以使用|T134376:0|t[青铜计时器]
.use 188139
step
>>使用|T4622499:0:0|t[更新的Proto Drake]
.use 194034
.goto 2022,57.66,66.89
.complete 65118,1 
step
>>向前走，用你的龙骑坐骑滑过黄色的圆环。确保小龙（乘客）也穿过吊环
.goto 2022,57.42,60.00
.complete 65118,2 
.complete 65118,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.10
.turnin 65118 >>Turn in How To Dive with Your Dragon
.target Celormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.88
.accept 65120 >>接任务: |cRXP_WARN_驭龙俯冲术|r
.target Lord Andestrasz
step
>>向前走，向下瞄准，沿着黄环走。确保小龙（乘客）也穿过吊环
.goto 2022,57.47,59.09
.complete 65120,1 
.complete 65120,2 
.complete 65120,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,57.48,59.09
.turnin 65120 >>Turn in How to Use Momentum with Your Dragon
.target Celormu
step
.goto 2022,57.65,66.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.accept 65133 >>接任务: |cRXP_WARN_驭龙俯冲术|r
.target Lord Andestrasz
step
.isQuestTurnedIn 70239
.use 188169
.cast 361748 >>使用青铜计时器
step
>>向前走，向下瞄准，沿着黄环走。确保小龙（乘客）也穿过吊环
.goto 2022,57.47,59.09
.complete 65133,1 
.complete 65133,2 
.complete 65133,3 
step
#label WakingShoreHowtoUseMomentumwithYourDragon
.goto 2022,57.48,59.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.turnin 65133 >>Turn in How to Use Momentum with Your Dragon
.target Celormu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,57.66,66.89
.accept 68796 >>接任务: |cRXP_WARN_天顶观察站|r
.target Lord Andestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.accept 70132 >>接任务: |cRXP_WARN_英雄留步|r
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t使用|cffffff00[ExtraActionButton]|r并再次与Veritistrasz对话
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,1 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.skipgossip 194076,2
.complete 70132,2 
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veritistrasz
.goto 2022,57.85,66.80
.turnin 70132 >>Turn in Stay a While
.target Veritistrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu |cffffff00(not shared)|r
>>|cffffff00多框提示|r：与每个角色上的人交谈。等到比赛停止后再正常飞行
.goto 2022,57.72,66.72
.skipgossip 1
.timer 12,Roleplay Duration
.complete 68796,1 
.target Celormu
step
#completewith next
+你可以打开你的拼写书，点击“龙之纹章”技能，并将鼠标悬停在“龙之基础”技能上，如果你想阅读“龙之纹”的内容。
step
>>确保飞越每一个环
.complete 68796,2 
step
.goto 2022,75.18,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68796 >>Turn in The Skytop Observatory
.accept 68797 >>接任务: |cRXP_WARN_新生犄角|r
.target Lord Andestrasz
step
#title Dragon Glyph: Skytop Observatory Rostrum
.goto 2022,74.33,57.56
.achievement 16575,2 >>拿起空中的龙雕
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Glensera
.goto 2022,74.11,57.93
.complete 68797,1 
.target Glensera
step
>>与变形花名册（地面上的五边形）互动。立即取消|cffffff00（不共享）|r
.goto 2022,74.03,58.16
.complete 68797,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.goto 2022,75.18,54.97
.turnin 68797 >>Turn in A New Set of Horns
.accept 68798 >>接任务: |cRXP_WARN_巨龙魔符与你|r
.target Lord Andestrasz
step
>>使用你的龙骑并在空中飞行通过字形
.goto 2022,74.35,57.76
.complete 68798,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lithragosa and learn the first skill named 'Drake and Rider Training' |cffffff00(not shared)|r
.goto 2022,74.57,56.97
.skipgossip 2
.complete 68798,2 
.complete 68798,3 
.complete 68798,4 
.target Lithragosa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celormu
.goto 2022,73.25,52.06
.complete 68798,5 
.target Celormu
step
#label WakingShoreDragpnGlyphandYou
.goto 2022,75.17,54.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Andestrasz
.turnin 68798 >>Turn in Dragon Glyphs and You
.accept 68799 >>接任务: |cRXP_WARN_返回红玉新生圣地|r
.target Lord Andestrasz
step
>>Mount Relastrasza
.goto 2022,75.01,55.58
.complete 68799,1 
.target Relastrasza
step
#title Dragon Glyph: Skytop Observatory Tower
.goto 2022,75.24,57.09
.achievement 16575,1 >>在塔上方捡起你上方的龙雕
step
#completewith next
+跟随箭头与你的龙骑坐骑。瞄准下方
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.06,58.13
.accept 66435 >>接任务: |cRXP_WARN_现场回收|r
.accept 66436 >>接任务: |cRXP_WARN_捣蛋鬼入土|r
.target Elementalist Taiyang
step
#completewith WakingShoreAKeyElement
.isWorldQuestAvailable 2022,67113
>>捡起地上的龙神器并杀死|cff00ecffEarth Elements|r
.goto 2022,66.06,58.13,0,0
.complete 67113,1 
.complete 67113,2 
step
#completewith WakingShoreAKeyElement
>>杀死|cff00ecffEarth元素|r
.goto 2022,66.06,58.13,0,0
.complete 66436,1 
step
#completewith WakingShoreSiteSalvage
>>杀死|cff00ecffEarth Elements|r.Loot Orb of Primal Stone。在你的包里点击它|cffffff00（未共享）|r
.collect 191904,1,66437,1
.accept 66437 >>接任务: |cRXP_WARN_关键元素|r
step
#title Spam talk to the explorer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cfff78300与Beleaguered Explorer进行垃圾邮件对话|r
.goto 2022,67.16,58.32,10,0
.goto 2022,67.53,57.97,10,0
.goto 2022,67.87,57.90,10,0
.goto 2022,67.81,57.37,10,0
.goto 2022,67.60,56.51
.skipgossip
.complete 66435,1 
step
#label WakingShoreAKeyElement
>>杀死|cff00ecffEarth Elements|r.Loot Orb of Primal Stone。在你的包里点击它|cffffff00（未共享）|r
.collect 191904,1,66437,1
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.accept 66437 >>接任务: |cRXP_WARN_关键元素|r
step
>>杀死|cff00ecffEarth元素|r
.goto 2022,67.56,55.45,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.46,58.75,20,0
.goto 2022,67.89,54.73,20,0
.goto 2022,66.06,58.13
.complete 66436,1 
step
>>杀死|cff00ecffEarth Elements|r.Loot Orb of Primal Stone。在你的包里点击它
.collect 191904,1,66437,1
.goto 2022,67.89,54.73,20,0
.goto 2022,67.46,58.75,20,0
.goto 2022,66.44,57.45,20,0
.goto 2022,67.56,55.45,20,0
.goto 2022,66.06,58.13
.accept 66437 >>接任务: |cRXP_WARN_关键元素|r
step
.isWorldQuestAvailable 2022,67113
>>捡起地上的龙神器并杀死|cff00ecffEarth Elements|r
.goto 2022,66.06,58.13,0,0
.complete 67113,1 
.complete 67113,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66436 >>Turn in Unearthed Troublemakers
.turnin 66435 >>Turn in Site Salvage
.turnin 66437 >>Turn in A Key Element
.target Elementalist Taiyang
step
.goto 2022,66.59,56.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Examiner Tae'shara Bloodwatcher, Elementalist Taiyang, and Acadia Chistlestone
.accept 66438 >>接任务: |cRXP_WARN_目标远大|r
.accept 66441 >>接任务: |cRXP_WARN_蒸馏法|r
.accept 66439 >>接任务: |cRXP_WARN_火急火燎|r
.target Examiner Tae'shara Bloodwatcher
.target Elementalist Taiyang
.target Acadia Chistlestone
step
.goto 2022,70.49,56.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.accept 70994 >>接任务: |cRXP_WARN_排水系统解决方案|r
.target Zikkori
step
#completewith next
>>把|T3610505:0|t[Zikkori的吸水装置]扔到闪闪发光的溪流下
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
>>杀死|cff00ecffAcequian|r。为球体掠夺它|cffffff00（未共享）|r
.goto 2022,72.17,56.71
.complete 66441,1 
.unitscan Acequian
step
>>把|T3610505:0|t[Zikkori的吸水装置]扔到闪闪发光的溪流下
.use 200747
.goto 2022,71.94,56.48,0,0
.complete 70994,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zikkori
.goto 2022,70.50,56.84
.turnin 70994 >>Turn in Drainage Solutions
.target Zikkori
step
#completewith next
>>杀死该区域的|cff00ecff首要部队|r。为火精灵掠夺它们
.complete 67100,2 
step
>>杀死该区域的|cff00ecff首要部队|r。为火焰掠夺碎片|cffffff00（不共享）|r
.goto 2022,68.40,63.15,30,0
.goto 2022,69.35,64.39,30,0
.goto 2022,68.26,64.59,30,0
.goto 2022,69.90,64.44,30,0
.goto 2022,69.84,65.71,30,0
#loop
.line 2022,68.40,63.15,69.35,64.39,68.26,64.59,69.90,64.44,69.84,65.71
.goto 2022,68.40,63.15,30,0
.goto 2022,69.35,64.39,30,0
.goto 2022,68.26,64.59,30,0
.goto 2022,69.90,64.44,30,0
.goto 2022,69.84,65.71,30,0
.complete 66439,1 
step
>>杀死该区域的|cff00ecff首要部队|r。为火焰精灵掠夺它们|cffffff00（未共享）|r
.goto 2022,68.13,64.19
.complete 67100,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Ri'tal
.goto 2022,70.64,63.13
.skipgossip
.complete 66438,1 
.target Scout Ri'tal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scout Francisco
>>|cffffff00拥抱右侧墙壁|r
>>|cffffff00多框提示|r：先对一个字符进行操作。然后安装在多座底座上，骑着其他角色穿过
.goto 2022,70.14,61.53
.skipgossip
.complete 66438,2 
.target Scout Francisco
step
>>|cfff78300抓住左墙，然后顺着箭头走。躲避旋风|r
.goto 2022,69.39,61.86,10,0
.goto 2022,69.08,61.66,8,0
.goto 2022,68.27,61.54
.complete 66438,3 
step
>>使用|T135821:0|t[原始火焰碎片]
.use 192545
.goto 2022,66.59,56.08
.complete 66439,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.59,56.08
.turnin 66438 >>Turn in Lofty Goals
.turnin 66439 >>Turn in Rapid Fire Plans
.turnin 66441 >>Turn in Distilled Effort
.accept 66442 >>接任务: |cRXP_WARN_理论依据|r
.target Elementalist Taiyang
step
>>在航路点等待，直到您可以使用|cffffff00[ExtraActionButton]|r并使用它|cffff00（不共享）|r
.goto 2022,66.56,56.06
.skipgossip
.complete 66442,1 
.complete 66442,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,66.51,55.96
.turnin 66442 >>Turn in Let's Get Theoretical
.accept 66447 >>接任务: |cRXP_WARN_跨越屏障|r
.target Elementalist Taiyang
step
>>杀死|cff00ecffDiscrodant Watcher|r
.goto 2022,66.09,55.36
.complete 66447,1 
.unitscan Discordant Watcher
step
>>点击符石|cffffff00（未共享）|r
.goto 2022,66.08,55.03
.complete 66447,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Elementalist Taiyang
.goto 2022,65.88,57.47
.turnin 66447 >>Turn in Beyond the Barrier
.target Elementalist Taiyang
step
#completewith next
.hs >>向Ruby Lifesherine致敬
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alexstrasza the Life-Binder. Passengers can turn in the quest if you stand exactly on the waypoint
.goto 2022,62.36,73.02
.turnin 68799 >>Turn in Return to the Ruby Lifeshrine
.target Alexstrasza the Life-Binder
step
.isWorldQuestAvailable 2022,70410
>>Talk to X and complete the race
.goto 2022,62.80,74.00
.complete 70410,1 
step
.isWorldQuestAvailable 2022,70382
>>Talk to X and complete the race
.goto 2022,63.20,70.80
.complete 70382,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mother Elion
.goto 2022,61.6,68.71
.skipgossip 1
.complete 66115,3 
.target Mother Elion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana
.goto 2022,62.78,70.43
.skipgossip 189260,1
.complete 66115,4 
.target Zahkrana
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zahkrana again
.goto 2022,62.78,70.43
.turnin 66115 >>Turn in The Mandate of the Red
.target Zahkrana
step
.goto 2022,62.18,70.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Amella
.accept 70061 >>接任务: |cRXP_WARN_羽翼训练|r
.target Amella
step
#completewith next
+带着你的Dragonriding坐骑滑翔到Ruby Whelpling
step
>>装载Ruby Whelpling |cffffff00（未共享）|r
.goto 2022,61.09,71.46
.skipgossip 1
.complete 70061,1 
step
#completewith next
+垃圾邮件|T135808:0|t燃烧树皮（1）在射程内杀死敌人
+当敌人在射程内时使用|T136045:0|t生命之球（3）
step
>>杀死该地区的敌人
>>|cffffff00多框提示|r：在杀死任何暴民之前，确保与其他角色一起进入洞穴
.complete 70061,4 
.complete 70061,3 
.complete 70061,2 
step
#completewith next
+|cfff78300离开车辆|r
step
#completewith next
+使用您的龙骑坐骑飞往Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 70061 >>Turn in Training Wings
.goto 2022,62.32,72.90
.accept 66931 >>接任务: |cRXP_WARN_谁人作乱？|r
.goto 2022,62.34,73.02
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞到Thomas Bright那里和他谈谈
.goto 2022,60.22,72.18
.turnin 67100 >>Turn in A Gift for Miguel
.target Thomas Bright
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>Follow the arrow
.goto 2022,59.46,72.72
.complete 66931,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,59.49,72.61
.turnin 66931 >>Turn in Who Brought the Ruckus?
.accept 66116 >>接任务: |cRXP_WARN_首要威胁|r
.target Majordomo Selistra
step
>>滑翔至下方冰霜区的指挥官Lethanak处
.goto 2022,59.44,75.87
.complete 66116,1 
.complete 66116,2 
.target Commander Lethanak
step
.goto 2022,59.41,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak
.turnin 66116 >>Turn in The Primary Threat
.accept 66118 >>接任务: |cRXP_WARN_磐石来袭|r
.accept 66117 >>接任务: |cRXP_WARN_肃清战场|r
.target Commander Lethanak
step
#completewith WakingShoreCutOfftheHead
>>在执行其他目标的同时杀死该区域的敌人

.complete 66117,1 
step
.pve
>>杀死航路点周围愤怒的悬崖
.goto 2022,60.93,77.56,25,0
.goto 2022,61.27,79.08,25,0
.goto 2022,60.73,78.72,0,0
.complete 66118,1,1 
step
.pve
#completewith next
+登上飞机，飞往航路点位置
step
#label WakingShoreTerillodtheDevout
>>杀死|cff00ecffTerillo|r。小心不要被击倒
.goto 2022,60.64,83.01
.accept 70751 >>接任务: |cRXP_WARN_虔心者泰利罗德|r
.complete 70751,1 
.unitscan Terillod
step
>>杀死大石头元素
.goto 2022,61.27,79.10,25,0
.goto 2022,59.71,78.62,25,0
.goto 2022,57.82,76.81,25,0
.goto 2022,60.65,78.43
.complete 66118,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Commander Lethanak and Majordomo Selistra
.turnin 66118 >>Turn in Basalt Assault
.accept 66122 >>接任务: |cRXP_WARN_始祖战术|r
.goto 2022,59.41,75.88
.accept 66121 >>接任务: |cRXP_WARN_抢救龙蛋|r
.goto 2022,59.49,76.16
.target Commander Lethanak
.target Majordomo Selistra
step
#completewith WakingShoreEggEvac
>>对Galestack Proto Dragons使用|T135133:0:0|t[红宝石长矛]来削弱它们
.use 192436
.complete 66122,2 
step
>>右键单击青铜蛋|cffffff00（未共享）|r
.goto 2022,56.13,81.29
.complete 66121,1 
step
>>右键单击Azure Egg|cffffff00（未共享）|r
.goto 2022,57.35,83.28
.complete 66121,2 
step
>>右键单击翡翠蛋|cffffff00（未共享）|r
.goto 2022,55.32,83.31
.complete 66121,3 
step
#completewith next
>>Kill Klozicc
.goto 2022,54.77,82.22,15,0
.accept 66960 >>接任务: |cRXP_WARN_升腾者克罗基克|r
.complete 66960,1 
.unitscan Klozicc the Ascended
step
#label WakingShoreEggEvac
>>右键单击Ruby Egg|cffffff00（未共享）|r
.goto 2022,54.99,80.95
.complete 66121,4 
step
>>Kill Klozicc
.goto 2022,54.77,82.22
.accept 66960 >>接任务: |cRXP_WARN_升腾者克罗基克|r
.complete 66960,1 
.unitscan Klozicc the Ascended
step
>>用|T135133:0:0|t[Ruby Spear]对你上方的Galestack Proto Dragons进行削弱
.use 192436
.goto 2022,55.03,82.08,35,0
.goto 2022,56.37,80.47,35,0
#loop
.line 2022,55.03,82.08,55.15,82.96,57.24,82.82,55.32,79.65
.goto 2022,55.03,82.08,35,0
.goto 2022,55.15,82.96,35,0
.goto 2022,57.24,82.82,35,0
.goto 2022,55.32,79.65,35,0
.complete 66122,2 
step
.goto 2022,53.68,80.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.turnin 66122 >>Turn in Proto-Fight
.turnin 66121 >>Turn in Egg Evac
.accept 66123 >>接任务: |cRXP_WARN_擒贼先擒王|r
.target Majordomo Selistra
step
>>使用|T135133:0:0|t[Ruby Spear]对Jadzigesh进行削弱
.use 192436
.goto 2022,53.68,83.04
.complete 66123,1 
.unitscan Jadzigeth
step
#label WakingShoreCutOfftheHead
.goto 2022,53.67,80.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.turnin 66123 >>Turn in Cut Off the Head
.accept 66124 >>接任务: |cRXP_WARN_胜利转进|r
.target Majordomo Selistra
step
>>在执行其他目标的同时杀死该区域的敌人
#loop
.line 2022,55.03,82.08,56.37,55.15,82.96,57.24,82.82,80.47,55.03,82.08,56.37,80.47,55.03,82.08
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,55.15,20,0
.goto 2022,82.96,57.24,20,0
.goto 2022,82.82,80.47,20,0
.goto 2022,55.03,82.08,20,0
.goto 2022,56.37,80.47,20,0
.goto 2022,55.03,82.08,20,0
.complete 66117,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra
.goto 2022,46.14,78.54
.skipgossip 187278,1
.complete 66124,1 
.target Majordomo Selistra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Majordomo Selistra and Alexstrasza the Life-Binder
.turnin 66124 >>Turn in Exeunt, Triumphant
.goto 2022,46.14,78.51
.accept 66079 >>接任务: |cRXP_WARN_拉希奥在等待|r
.goto 2022,46.09,78.29
.target Majordomo Selistra
.target Alexstrasza the Life-Binder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion and Scalecommander Emberthal
.turnin 66079 >>Turn in Wrathion Awaits
.goto 2022,42.47,66.84
.accept 72241 >>接任务: |cRXP_WARN_过往的教训|r
.goto 2022,42.47,66.78
.target Wrathion
.target Scalecommander Emberthal
step
#completewith next
+您可以跳过下一个过场。
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Scalecommander
.goto 2022,42.47,66.79
.skipgossip 192795,1
.complete 72241,1 
.target Scalecommander Emberthal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Scalecommander Emberthal and Wrathion. You probably have to dismount with your other characters
.turnin 72241 >>Turn in Lessons from Our Past
.accept 66048 >>接任务: |cRXP_WARN_最佳计划与打算|r
.goto 2022,42.47,66.78
.accept 66078 >>接任务: |cRXP_WARN_刀锋训练|r
.goto 2022,42.47,66.84
.target Wrathion
.target Scalecommander Emberthal
step
#completewith next
.gossipoption 55311 >>Talk to Fao the Relentless
.goto 2022,42.41,66.18
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fao the Relentless then interact with the plan in the tent |cffffff00(not shared)|r
.goto 2022,42.41,66.06
.skipgossip 1
.complete 66048,1 
.target Fao the Relentless
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Forgemaster Bazentus |cffffff00(not shared)|r
.goto 2022,42.82,66.86
.skipgossip
.complete 66048,4 
.target Forgemaster Bazentus
step
#completewith WakingShoresBestPlansandIntentionsEdres |cffffff00(not shared)|r
.gossipoption 55307 >>Talk to Archivist Edress
.goto 2022,43.76,67.28
.complete 66048,2 
.target Archivist Edres
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them
.goto 2022,42.56,67.51,20,0
.skipgossip
.complete 66078,1 
step
#label WakingShoresBestPlansandIntentionsEdres
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Talonstalker Kavia then click on the Binoculars |cffffff00(not shared)|r
.gossipoption 54996
.goto 2022,42.30,69.29
.complete 66048,3 
.goto 2022,42.23,69.33
.target Talonstalker Kavia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Blacktalon Assassins and defeat them
.goto 2022,42.56,67.51
.skipgossip
.complete 66078,1 
step

>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the NPCs at the waypoint locations |cffffff00(not shared)|r
.complete 66048,1 
.goto 2022,42.41,66.06
.complete 66048,4 
.goto 2022,42.82,66.86
.complete 66048,2 
.goto 2022,43.76,67.28
.complete 66048,3 
.goto 2022,42.23,69.33
.skipgossip
.target Fao the Relentless
.target Forgemaster Bazentus
.target Archivist Edres
.target Talonstalker Kavia
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.turnin 66048 >>Turn in Best Plans and Intentions
.turnin 66078 >>Turn in Sharp Practice
.timer 24,Roleplay Duration
.target Wrathion
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Do-Yeon
.goto 2022,42.26,66.25
.fp >>获取黑石堡垒飞行路线
.target Do-Yeon Shadowrider
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tong the Fixer, repair and sell if you need
.goto 2022,43.12,66.56
.home >>将你的炉石设置为黑石堡垒
.target Tong the Fixer
step
.isWorldQuestAvailable 2022,70413
>>Talk to X and complete the race
.goto 2022,42.00,67.20
.complete 70413,1 
step
.goto 2022,42.47,66.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion. You probably have to dismount with your other characters
.accept 65957 >>接任务: |cRXP_WARN_既生贾拉丁……|r
.accept 65956 >>接任务: |cRXP_WARN_利爪打击|r
step
.goto 2022,37.45,71.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.accept 66003 >>接任务: |cRXP_WARN_环驭众火|r
.target Earthcaller Yevaa
step
>>杀死|cff00ecffBlazing Manifessions|r。然后掠夺绑定环|cffffff00（不共享）|r
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
#loop
.line 2022,,37.99,71.58,38.15,73.04,37.31,73.68,,36.75,72.98,37.12,71.84,38.05,69.42
.goto 2022,37.99,71.58,22,0
.goto 2022,38.15,73.04,22,0
.goto 2022,37.31,73.68,22,0
.goto 2022,36.75,72.98,22,0
.goto 2022,37.12,71.84,22,0
.goto 2022,38.05,69.42,22,0
.complete 66003,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.77
.turnin 66003 >>Turn in Rings To Bind Them
.accept 66369 >>接任务: |cRXP_WARN_大地结界|r
.target Earthcaller Yevaa
step
>>点击地球守卫|cffffff00（未共享）|r
.goto 2022,37.54,71.23
.complete 66369,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.45,71.77
.turnin 66369 >>Turn in The Earthen Ward
.accept 66368 >>接任务: |cRXP_WARN_风暴中的岛屿|r
.target Earthcaller Yevaa
step
#completewith next
>>杀死|cff00ecffBlazing宣言|r
.complete 66368,1 
step
.goto 2022,37.62,75.10
.complete 66368,2 
.unitscan Melter Igneous
step
>>杀死|cff00ecffBlazing宣言|r
.goto 2022,37.98,76.02,20,0
.goto 2022,39.58,74.41,20,0
.goto 2022,39.14,73.14,20,0
.goto 2022,38.01,71.79,20,0
.goto 2022,36.55,71.79,20,0
.goto 2022,36.95,73.62,20,0
#loop
.line 2022,37.98,76.02,39.58,74.41,39.14,73.14,38.01,71.79,36.55,71.79,36.95,73.62
.goto 2022,37.98,76.02,25,0
.goto 2022,39.58,74.41,25,0
.goto 2022,39.14,73.14,25,0
.goto 2022,38.01,71.79,25,0
.goto 2022,36.55,71.79,25,0
.goto 2022,36.95,73.62,25,0
.complete 66368,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthcaller Yevaa
.goto 2022,37.46,71.78
.turnin 66368 >>Turn in Island In A Storm
.target Earthcaller Yevaa
step
#completewith WakingShoreNoTimeForTalonStrike
+使用|cffffff00[ExtraActionButton|r造成额外伤害
step
#completewith WakingShoreNoTimeForHeroes
>>|cfff78300避免杀害精英|r。专注于摧毁东西和杀害非精英
.goto 2022,36.43,69.68,20,0
.goto 2022,34.86,61.66,0,0
.complete 65956,1 
step
>>爬上那座塔。杀死|cff00ecffPiercer Gigra|r
.goto 2022,35.53,68.47
.complete 65957,1 
.unitscan Piercer Gigra
step
>>杀死|cff00ecffOlphis|r
.goto 2022,34.79,66.86
.complete 65957,3 
.unitscan Olphis the Molten
step
.isOnQuest 65956
#title Progress the Bonus Objective
#completewith next
.goto 2022,37.36,63.09,30,0
.goto 2022,36.75,60.09,50 >>杀死你周围的一切
step
#label WakingShoreNoTimeForHeroes
>>爬上那座塔。杀死|cff00ecffModak火焰喷射|r
.goto 2022,35.67,60.73
.complete 65957,2 
.unitscan Modak Flamespit
step
.goto 2022,37.11,55.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthmender Govrum
.accept 70414 >>接任务: |cRXP_WARN_摇摆之地|r
step
>>对熔岩中被困的洞穴石使用|T136108:0|t[破碎图腾]|cffffff00（不共享）|r
.use 198980
.goto 2022,36.61,55.90
.complete 70414,1 
step
.goto 2022,37.11,55.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Earthmender Govrum
.turnin 70414 >>Turn in Shaky Grounds
step
.goto 2022,39.43,48.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ingot
.accept 65687 >>接任务: |cRXP_WARN_[Punching Up]|r
.accept 65690 >>接任务: |cRXP_WARN_[A Cultist's Misgivings]|r
step
>>Follow the arrow
.goto 2022,37.45,46.70
.complete 65690,1 
step
.goto 2022,37.43,46.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.turnin 65690 >>Turn in A Cultist's Misgivings
.accept 65782 >>接任务: |cRXP_WARN_牢狱之灾|r
step
#completewith next
>>杀死|cff00ecffWorldbreaker Guards|r。掠夺它们以获取密钥|cffffff00（未共享）|r
.complete 65782,1 
step
>>杀死区域内的|cff00ecffDragonkins|r
.goto 2022,38.28,47.37,25,0
.goto 2022,38.16,48.63,25,0
.goto 2022,36.16,48.01,25,0
.goto 2022,34.45,48.72,25,0
#loop
.line 2022,38.28,47.37,38.16,48.63,36.16,48.01,34.45,48.72
.goto 2022,38.28,47.37,35,0
.goto 2022,38.16,48.63,35,0
.goto 2022,36.16,48.01,35,0
.goto 2022,34.45,48.72,35,0
.complete 65687,1 
step
#completewith next
>>杀死|cff00ecffWorldbreaker Guards|r。掠夺它们以获取密钥|cffffff00（未共享）|r
.goto 2022,36.16,48.01,25,0
.goto 2022,34.45,48.72,25,0
.goto 2022,38.16,48.63,25,0
.goto 2022,38.28,47.37,25,0
#loop
.line 2022,38.28,47.37,38.16,48.63,36.16,48.01,34.45,48.72
.goto 2022,38.28,47.37,35,0
.goto 2022,38.16,48.63,35,0
.goto 2022,36.16,48.01,35,0
.goto 2022,34.45,48.72,35,0
.complete 65782,1 
step
>>Open the cage
.goto 2022,37.43,46.66
.complete 65782,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ingot and Ayasanth after a short roleplay
.turnin 65687 >>Turn in Punching Up
.goto 2022,37.33,46.65
.turnin 65782 >>Turn in Under Lock and Key
step
.pve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.accept 65691 >>接任务: |cRXP_WARN_翼影蔽日|r
.goto 2022,37.35,46.62
step
.pve
#completewith next
.goto 2022,35.63,47.95,20 >>进入洞穴
step
.pve
>>等待角色扮演并杀死|cff00ecffCygenoth the Corrupted|r
.goto 2022,35.04,45.47
.complete 65691,1 
.complete 65691,2 
step
.pve
.goto 2022,39.56,48.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ayasanth
.turnin 65691 >>Turn in The Shadow of His Wings
step
#completewith next
+在地图上的标记区域寻找更多暴徒
step
>>|cfff78300避免杀害精英|r。专注于摧毁东西和杀害非精英
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,37.36,63.09,30,0
.goto 2022,34.86,61.66,30,0
.goto 2022,37.36,63.09,30,0
.complete 65956,1 
step
#label WakingShoreNoTimeForTalonStrike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,33.99,61.29
.turnin 65957 >>Turn in No Time For Heroes
.turnin 65956 >>Turn in Talon Strike
.accept 65939 >>接任务: |cRXP_WARN_决意与勇气|r
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion |cffffff00(not shared)|r
.goto 2022,33.99,61.29
.skipgossip 1
.complete 65939,1 
.target Wrathion
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>沿着箭头从桥的前面开始|cffffff00（未共享）|r
.goto 2022,33.54,61.86,50,0
.goto 2022,30.51,60.88
.complete 65939,2 
step
#completewith WakingShoresTakingtheWalls
>>杀死侧面的|cff00ecffQalashi部队|r。不要试图完成此任务
.complete 65939,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,29.14,58.82
.accept 66044 >>接任务: |cRXP_WARN_雄踞高墙|r
.target Wrathion
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion |cffffff00(not shared)|r
.goto 2022,29.14,58.82
.skipgossip 186933,1
.complete 66044,1 
.target Wrathion
step
#completewith WakingShoreTakingTheWalls
+使用你的龙骑坐骑飞到下一门大炮（或者注意Wrathion）
step
>>Destroy the cannon
.goto 2022,26.81,59.99
.complete 66044,2 
step
>>Destroy the cannon
.goto 2022,29.51,60.99
.complete 66044,3 
step
#label WakingShoreTakingTheWalls
>>Destroy the cannon
.goto 2022,27.79,56.66
.complete 66044,4 
step
#label WakingShoresTakingtheWalls
>>在该地区周围巡逻
.goto 2022,26.94,57.07
.complete 66044,5 
step
>>杀死侧面的|cff00ecffQalashi部队|r。不要试图完成此任务

.goto 2022,27.46,61.25,30,0
.goto 2022,26.42,58.75
.complete 65939,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wrathion
.goto 2022,26.42,58.75
.turnin 66044 >>Turn in Taking the Walls
.turnin 65939 >>Turn in The Courage of One's Convictions
step
.isWorldQuestAvailable 2022,70412
>>Talk to X and complete the race
.goto 2022,47.00,85.60
.complete 70412,1 
step
.isWorldQuestAvailable 2022,70418
>>Talk to X and complete the race
.goto 2022,42.60,94.40
.complete 70418,1 
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#groupweight 1
#group RestedXP调平准备
#subgroup Leveling Tips
#subgroupweight 2
#name General Leveling Tips
#displayname General Leveling Tips
step
+|cffff00f3本指南应为您提供通用和快速调平技巧的组合|r
step
+在魔兽世界的蜻蜓中有比魔兽经典更多的经验来源！除草、采矿甚至宠物大战都会奖励经验
*This makes Herbing,Mining and Pet Battles a good source of EXP especially during Unavoidable Roleplay
step
+如果你必须在任务期间或之前等待npc对话，最好找到一种有效的方式来等待，这可以包括以下内容和更多内容；
*1.Inventory Clean-Up
*2.Selling,Buying or Repairing Items
*3.Setup of Addons and other Settings
*4.The Completion of other Quests or Quest Objectives during the waiting period
*5.Herbing/Mining or a Pet Battle
step
+它是为你的角色提供至少5k黄金、好袋子、消耗品、10%经验灵药和魔法传家宝的理想选择
*more about this in the Consumables Guide
step
+强烈建议当你在暴风（联盟）或奥格里玛（部落）中达到20级时开启暖模式，这会使对方对你产生敌意，但会使你的经验增益增加10-30%，此外，你还可以解锁有趣的暖模式天赋，这会对你的调平速度产生巨大影响
step
+如果你是魔兽世界Dragonflight 8级的新手，Aoe Looting将解锁。
step
+There is more to come!
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP调平准备
#subgroup Leveling Tips
#subgroupweight 2
#name Horde 50-60 FAQ
<< Horde
step
+|cffff00f350-60的测试指南组合|r
step
+Best Combinations
>>1a）Draenor场景+Bfa简介（跳过场景）+Zuldazar
>>1b）Draenor场景+Hillsbrad
step
+Second Best
>>2） 德拉诺场景+银松（因为一开始的rp）
step
+Third Best
>>3a）Draenor场景+Draenor Garrison简介+Gorgrond
>>3b）德拉诺场景+德拉诺驻军简介+阿拉克之峰
>>3c）希尔斯堡（直到部落英雄）+银松
step
+其他组合都更差（但仍然相对较快）
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP调平准备
#subgroup Leveling Tips
#subgroupweight 2
#name Alliance 50-60 FAQ
<< Alliance
step
+|cffff00f350-60的测试指南组合|r
step
+Best Combinations
>>1a）蒂拉加德+Drustvar
step
+Second Best
>>2） 雷德里奇山脉和黄昏1
step
+其他组合都更差（但仍然相对较快）
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP调平准备
#subgroup Consumable Checklist
#subgroupweight 1
#name C1-60 Consumables Check
#displayname 1-60 Enchant/Consumable Check
step
#title Recommended General
+|cffff00f3一般项目：|r
.collect 166751,10,0,0,1 
.collect 171285,20,0,0,1 
.collect 152813,3,0,0,1 
.collect 158202,10,0,0,1 
.collect 158204,10,0,0,1 
.collect 158201,10,0,0,1 
.collect 154168,20,0,0,1 << Alliance 
.collect 153512,2,0,0,1 << Alliance 
step
#title Recommended Speed Items
+|cffff00f3速度项目：|r
.collect 132516,80,0,0,1 
.collect 109076,40,0,0,1 
.collect 2459,10,0,0,1 
.collect 152497,20,0,0,1 
.collect 153123,1,0,0,1 
.collect 89770,1,0,0,1 
.collect 89682,1,0,0,1 
step
#title Recommended Bags
+|cffff00f3Bags:|r
.collect 184479,4,0,0,1 
step
#title Mount Equipment
+|cffff00f3单机设备|r
.collect 168417,1,0,0,1 
.collect 168419,1,0,0,1 
.collect 168412,1,0,0,1 
.collect 168427,1,0,0,1 
step
#title Heirloom Enchants
+|cffff00f3最重要的传家宝魔法|r
>>您可能必须转到较低级别的角色才能应用这些
.collect 128553,1,0,0,1 
.collect 172410,1,0,0,1 
.collect 74708,1,0,0,1 
.collect 168447,2,0,0,1 
step
#title Intellect Heirloom Enchants
+|cffff00f3完整的传家宝魔法|r
>>德鲁伊/法师/术士/牧师
.collect 54450,1,0,0,1 
.collect 74725,1,0,0,1 
step
#title Strength Heirloom Enchants
+|cffff00f3高强传家宝符|r
>>战士/圣骑士/死亡骑士
.collect 83765,1,0,0,1 
.collect 38873,1,0,0,1 
step
#title Agility Heirloom Enchants
+|cffff00f3镀金传家宝符|r
>>德鲁伊/盗贼/僧侣/猎人/恶魔猎人
.collect 83764,1,0,0,1 
.collect 59595,1,0,0,1 
.collect 74725,2,0,0,1 
step
+|cffff00f3其他项目：|r
.collect 118711,20,0,0,1 
.collect 6372,20,0,0,1 
.collect 136606,20,0,0,1 
.collect 151239,5,0,0,1 
.collect 58487,20,0,0,1 
.collect 76096,20,0,0,1 
.collect 116266,20,0,0,1 
.collect 190953,20,0,0,1 
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP调平准备
#subgroup Consumable Checklist
#subgroupweight 1
#name D60-70耗材检查
#displayname 60-70 Enchant/Consumable Check
step
#title Recommended General
+|cffff00f3一般项目：|r
.collect 171276,10,0,0,1 
.collect 181468,10,0,0,1 
.collect 172063,10,0,0,1 
.collect 187802,40,0,0,1 
.collect 140192,1,0,0,1 
.collect 64402,1,0,0,1 << Horde 
.collect 64399,1,0,0,1 << Alliance 
.collect 64401,1,0,0,1 << Horde 
.collect 64398,1,0,0,1 << Alliance 
step
#title Recommended Speed Items
+|cffff00f3速度项目：|r
.collect 132516,80,0,0,1 
.collect 109076,40,0,0,1 
.collect 153123,1,0,0,1 
.collect 89770,1,0,0,1 
.collect 89682,1,0,0,1 
step
#title Recommended Gear
+|cffff00f3道具/宝石/装备：|r
.collect 172410,1,0,0,1 
.collect 173126,1,0,0,1 
.collect 153715,1,0,0,1 
]])
