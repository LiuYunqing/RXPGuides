RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 13-15 Silverpine Forest
#version 1
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 1-20
#next 15-19 The Barrens

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
    >>|cRXP_WARN_在开始这个任务之前，请确保你的生命值/魔法值已满！|r
    .accept 435 >>接任务: |cRXP_WARN_护送埃兰德|r
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
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Worgs|r|cRXP_WARN_can在彼此之上产卵，只要你能吃就喝|r
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
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >>Travel to The Sepulcher
step
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
    >>|cRXP_WARN_小心！清除谷仓的整个前部区域，并将|r|cRXP_ENEMY_Ravenclaw Slaves |r|cRXP_WARN_outside逐一拉出。|r
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
    >>|cRXP_WARN_小心，如果|r|cRXP_ENEMY_Kreis Shadowspinner|r|cRXP_WARN_i出现，她会杀了你！她有一个冷却15秒的130点伤害的护盾和110点伤害的瞬间冲击能力|r
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
    >>|cRXP_WARN_小心，如果|r|cRXP_ENEMY_Kreis Shadowspinner|r|cRXP_WARN_i出现，她会杀了你！她有一个冷却15秒的130点伤害的护盾和110点伤害的瞬间冲击能力|r
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
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >>回到坟墓
step
    #label ArugalTurnin
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >>交任务: |cRXP_FRIENDLY_阿鲁高的愚行|r
    .accept 423 >>接任务: |cRXP_LOOT_阿鲁高的愚行|r
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
    .collect 1179,20,421,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrea|r
    .vendor >>从她那里购买|T132491:0|t[|cRXP_FRIENDLY_Wise男士腰带|r]（如果有）
    .target Andrea Boynton
    .money <0.1400
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳迪亚·沃农|r
    >>如果价格上涨，从她那里买一个|T135490:0|t[|cRXP_FRIENDLY_Fine Longbow|r]
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
step << Hunter/Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚历山德勒·雷夫瑞|r
    .vendor >>从她那里购买|T132539:0|t[|cRXP_FRIENDLY_Agile Boots|r]（如果有）
    .target Alexandre Lefevre
    .money <0.2633
step << Shaman/Warrior/Druid
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚历山德勒·雷夫瑞|r
    .vendor >>从她那里购买|T132539:0|t[|cRXP_FRIENDLY_Agile Boots|r]或|T132537:0|t[|cRXP-FRIENDLY_Stable Boots|r]（如果其中一个已经用完）
    .target Alexandre Lefevre
    .money <0.2000
step << Warlock/Mage/Priest
    #completewith Shackles
    +装备|T132491:0|t[|cRXP_FRIENDLY_Wise男子腰带|r] 
    .use 4786
    .itemcount 4786,1
    .xp <15,1
step << Hunter
    #completewith Shackles
    +装备|T135490:0|t[|cRXP_FRIENDLY_Fine Longbow|r] 
    .use 11304
    .itemcount 11304,1
    .xp <14,1
step << Hunter/Rogue
    #completewith Shackles
    +装备|T132539:0|t[|cRXP_FRIENDLY_Agile Boots|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
step << Shaman/Warrior/Druid
    #completewith Shackles
    +装备|T132539:0|t[|cRXP_FRIENDLY_Agile Boots|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
step << Shaman/Warrior/Druid
    #completewith Shackles
    +装备|T132537:0|t[|cRXP_FRIENDLY_Stable Boots|r]
    .use 4789
    .itemcount 4789,1
step
    #completewith Shackles
    .goto Silverpine Forest,44.20,38.17,15,0
    .goto Silverpine Forest,44.46,36.65,15,0
    .goto Silverpine Forest,44.91,33.14,30 >>Travel down the hill
step
    #completewith DecrepitFerry
    +|cRXP_WARN_小心！该区域中可能存在|r|cRXP_ENEMY_Arugal之子|r|cRXP_WARN_in！这是25级精英，避开他！|r
    .unitscan Son of Arugal
step
    #label Shackles
#loop
	.line Silverpine Forest,44.22,31.55,43.51,32.38,42.61,31.12,41.28,30.25,39.70,30.24,38.96,29.15,38.28,27.10,37.60,24.16,38.07,23.13,38.56,21.93,39.73,23.26,41.49,23.51,41.14,25.50,41.17,28.26,42.01,29.27,43.83,31.00
	.goto Silverpine Forest,44.22,31.55,25,0
	.goto Silverpine Forest,43.51,32.38,25,0
	.goto Silverpine Forest,42.61,31.12,25,0
	.goto Silverpine Forest,41.28,30.25,25,0
	.goto Silverpine Forest,39.70,30.24,25,0
	.goto Silverpine Forest,38.96,29.15,25,0
	.goto Silverpine Forest,38.28,27.10,25,0
	.goto Silverpine Forest,37.60,24.16,25,0
	.goto Silverpine Forest,38.07,23.13,25,0
	.goto Silverpine Forest,38.56,21.93,25,0
	.goto Silverpine Forest,39.73,23.26,25,0
	.goto Silverpine Forest,41.49,23.51,25,0
	.goto Silverpine Forest,41.14,25.50,25,0
	.goto Silverpine Forest,41.17,28.26,25,0
	.goto Silverpine Forest,42.01,29.27,25,0
	.goto Silverpine Forest,43.83,31.00,25,0
    >>杀死|cRXP_ENEMY_Moonrage Gluttons|r和|cRXX_ENEMY_Moonrage Darksouth|r，掠夺他们的|cRXD_Loot_枷锁|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Moonrage黑暗灵魂|r|cRXP_WARN_enrage当它们低于25%的生命值时。当他们情绪低落时迅速杀死他们|r
    .complete 423,1 --Glutton Shackle (6)
    .complete 423,2 --Darksoul Shackle (3)
    .mob Moonrage Glutton
    .mob Moonrage Darksoul
    .unitscan Son of Arugal
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>单击码头一侧的|cRXP_PICK_Boat|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Ravenclaw之手|r|cRXP_WARN_达到16级，并具有5秒近战范围眩晕能力|r
    .turnin 438 >>交任务: |cRXP_FRIENDLY_破旧渡口|r
    .accept 439 >>接任务: |cRXP_WARN_线索|r
step
    .goto Silverpine Forest,49.89,60.33
    >>单击营地中的|cRXP_PICK_Crate|r
    >>|cRXP_WARN_小心！这些暴民施放|r|T135846:0|t[Frostbolt]|cRXP_WARN_并以低生命值逃离。把它们拉回来，一个接一个地杀死它们，直到你可以安全地点击板条箱|r
    .turnin 477 >>交任务: |cRXP_FRIENDLY_越境|r
    .accept 478 >>接任务: |cRXP_LOOT_地图与符记|r
    .mob Dalaran Apprentice
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >>回到坟墓
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r and |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>交任务: |cRXP_FRIENDLY_地图与符记|r
    .accept 481 >>接任务: |cRXP_LOOT_达拉尔的推理|r
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>交任务: |cRXP_FRIENDLY_阿鲁高的愚行|r
    .turnin 481 >>交任务: |cRXP_FRIENDLY_达拉尔的推理|r
    .accept 482 >>接任务: |cRXP_WARN_达拉然的意图|r
    .accept 424 >>接任务: |cRXP_LOOT_阿鲁高的愚行|r
    .goto Silverpine Forest,44.20,39.73
    .target Shadow Priest Allister
    .target Dalar Dawnweaver
    .group
step
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
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>交任务: |cRXP_FRIENDLY_达拉然的意图|r
    .target Shadow Priest Allister
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r
    .accept 479 >>接任务: |cRXP_LOOT_调查安伯米尔|r
    .target Shadow Priest Allister
    .group
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
    .accept 440 >>接任务: |cRXP_LOOT_黛丽娅的戒指|r
    .target High Executor Hadrec
step
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>交任务: |cRXP_FRIENDLY_瑟伯切尔的补给|r << Undead
    .accept 6323 >>接任务: |cRXP_WARN_飞往幽暗城|r << Undead
    .fp Sepulcher >>获取墓穴飞行路线 << !Undead
    .fly Undercity >>Fly to the Undercity
    .target Karos Razok
step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >>交任务: |cRXP_FRIENDLY_飞往幽暗城|r
    .accept 6322 >>接任务: |cRXP_LOOT_迈克尔·加勒特|r
    .target Gordon Wendham
step << Troll Warrior/Undead Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Louis|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith PyrewoodAmbush
    +装备|T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Louis|r|cRXP_BUY_交谈。从他那里买一把|r|T132394:0|t[胡子斧]|r
    .collect 2025,1,479,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith PyrewoodAmbush
    +装备|T132394:0|t[带胡子的斧头]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Louis|r|cRXP_BUY_交谈。从他那里买一个|r|T133046:0|t[石锤]|r
    .collect 2026,1,479,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #completewith PyrewoodAmbush
    +当你达到16级时，装备|T133046:0|t[石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Louis|r|cRXP_BUY_交谈。从他那里购买|r|T135147:0|t[Gnarled Staff]|r
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #completewith PyrewoodAmbush
    +装备|T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Louis|r|cRXP_BUY_交谈。从他那里买一把|r|T135343:0|t[弯刀]|r
    .collect 2027,1,479,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #completewith PyrewoodAmbush
    +装备|T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r, |cRXP_FRIENDLY_药剂师金格|r
    .turnin 447 >>交任务: |cRXP_FRIENDLY_致命的配方|r
    .goto Undercity,48.84,69.25
    .turnin 1359 >>交任务: |cRXP_FRIENDLY_给金格的货物|r
    .goto Undercity,50.16,67.97
    .accept 1358 >>接任务: |cRXP_LOOT_给赫布瑞姆的样本|r
    .target Master Apothecary Faranell
    .target Apothecary Zinge
    .solo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r, |cRXP_FRIENDLY_药剂师金格|r
    .turnin 447 >>交任务: |cRXP_FRIENDLY_致命的配方|r
    .accept 450 >>接任务: |cRXP_WARN_致命的配方|r
    .goto Undercity,48.84,69.25
    .turnin 1359 >>交任务: |cRXP_FRIENDLY_给金格的货物|r
    .goto Undercity,50.16,67.97
    .accept 1358 >>接任务: |cRXP_LOOT_给赫布瑞姆的样本|r
    .target Master Apothecary Faranell
    .target Apothecary Zinge
    .group
step << Mage
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .train 2137 >>训练你的职业技能
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
step << Mage
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .train 2120 >>训练你的职业技能
    .target Anastasia Hartwell
    .xp <16,1
step << Rogue
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
    .train 1758 >>训练你的职业技能
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
 step << Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
    .train 6761 >>训练你的职业技能
    .target Carolyn Ward
    .xp <16,1
step << Warlock
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
    .train 6222 >>训练你的职业技能
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
    .group
step << Warlock
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
    .train 1455 >>训练你的职业技能
    .target Richard Kerwin
    .xp <16,1
    .group
step << Priest/Mage/Warlock
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zane|r|cRXP_BUY_交谈。从他那里买一个|r|T133718:0|t[Smoldering Wand]|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
 step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1886 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .accept 1898 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestTurnedIn 1886
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
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1899 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .accept 1978 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
    .turnin 1978 >>交任务: |cRXP_FRIENDLY_亡灵哨兵|r
    .target Varimathras
    .isQuestTurnedIn 1886
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Mary通话|r
    .train 3276 >>火车|T133688:0|t[粗布绷带]
    .target Mary Edras
    .skill firstaid,<40,1
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Mary通话|r
    .train 3274 >>列车乘务员急救
    .target Mary Edras
    .skill firstaid,<50,1
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
    .train 1160 >>训练你的职业技能
    .target Angela Curthas
    .xp <14,1
    .xp >16,1
step << Warrior
    #optional
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
    .train 285 >>训练你的职业技能
    .target Angela Curthas
    .xp <16,1
step << Priest
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
	.train 6074 >>训练你的职业技能
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .group
step << Priest
    #optional
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
	.train 8102 >>训练你的职业技能
    .target Father Lazarus
    .xp <16,1
    .group
step << Undead Rogue
    #optional
    #completewith GrimsonthePale
    >>放弃死亡追踪者，没有机会了
    .abandon 1886 >>抛弃死亡追踪者
    .isOnQuest 1886
step
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
    .accept 5725 >>接任务: |cRXP_WARN_毁灭之力|r
    .target Varimathras
    .dungeon RFC
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .turnin 6322 >>交任务: |cRXP_FRIENDLY_迈克尔·加勒特|r
    .accept 6324 >>接任务: |cRXP_LOOT_向博迪瑞格回报|r
    .fly The Supulcher >>飞向坟墓
    .target Michael Garrett
step << !Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fly The Supulcher >>飞向坟墓
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .group
step << Undead
    .goto Silverpine Forest,43.43,41.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵博迪瑞格|r
    .turnin 6324 >>交任务: |cRXP_FRIENDLY_向博迪瑞格回报|r
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格乌恩·法隆|r
    .vendor >>|cRXP_BUY_从他那里购买|r|T134830:0|t[小治疗药剂]|cRXP_Buy_如果它们用完了|r
    .target Edwin Harly
    .group
step
    #completewith next
    .goto Silverpine Forest,56.48,45.94,10 >>Enter the Mine
    .group
step
    #label GrimsonthePale
    .goto Silverpine Forest,58.56,44.85
    >>杀死|cRXP_ENEMY_Grimson the Pale|r。掠夺他的|cRXX_Loot_Head|r
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
    .group 2
step
    .goto Silverpine Forest,58.12,45.50
    .goto Silverpine Forest,44.29,41.09,30 >>|cRXP_WARN_跳上木轮。通过注销并重新登录来执行注销跳过。如果你无法做到这一点，请跑回The Sepulcher|r
    .link https://www.youtube.com/watch?v=uD2CUb3rdQ0&ab >>|cRXP_WARN_单击此处查看示例|r
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .turnin 424 >>交任务: |cRXP_FRIENDLY_阿鲁高的愚行|r
    .accept 99 >>接任务: |cRXP_WARN_阿鲁高的愚行|r
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .group
step
    #completewith next
    .goto Silverpine Forest,57.90,63.10,120 >>Travel toward Ambermill
    .group
step
#loop
	.line Silverpine Forest,57.91,62.48,59.10,61.88,59.79,63.08,60.79,62.55,61.98,62.56,61.00,64.89,60.10,65.93,59.02,67.10,57.56,67.57,57.62,65.17,57.12,63.39
	.goto Silverpine Forest,57.91,62.48,25,0
	.goto Silverpine Forest,59.10,61.88,25,0
	.goto Silverpine Forest,59.79,63.08,25,0
	.goto Silverpine Forest,60.79,62.55,25,0
	.goto Silverpine Forest,61.98,62.56,25,0
	.goto Silverpine Forest,61.00,64.89,25,0
	.goto Silverpine Forest,60.10,65.93,25,0
	.goto Silverpine Forest,59.02,67.10,25,0
	.goto Silverpine Forest,57.56,67.57,25,0
	.goto Silverpine Forest,57.62,65.17,25,0
	.goto Silverpine Forest,57.12,63.39,25,0
    >>杀死|cRXP_ENEMY_Dalaran保护者|r和|cRXD_ENEMY_ Dalaran法师|r。掠夺他们的|cRXP_Loot_吊坠|r
    .complete 479,1 --Dalaran Pendant (8)
    .mob Dalaran Mage
    .mob Dalaran Protector
    .group 2
step
    #completewith BerardsJournal
    .goto Silverpine Forest,48.20,71.94,50 >>前往Pyrewood村
    .isOnQuest 99
    .group
step
    #completewith PyrewoodAmbush
    >>杀死|cRXP_ENEMY_Pyrewood |r暴徒。掠夺他们的|cRXP_Loot_枷锁|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith BerardsJournal
    .goto Silverpine Forest,43.97,73.23,10 >>进入客栈，上二楼
    .isOnQuest 450
    .group
step
    #label BerardsJournal
    .goto Silverpine Forest,42.98,73.22
    >>杀死|cRXP_ENEMY_药剂师Berard|r。偷走他书架上的|cRXX_Loot_Book|r
    .complete 450,1 --Berard's Journal (1)
    .mob Apothecary Berard
    .isOnQuest 450
    .group 4
step
    #completewith next
    .goto Silverpine Forest,45.89,74.17,10 >>Enter the Chapel
    .isOnQuest 99
    .group
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵费雷亚|r
    .accept 452 >>接任务: |cRXP_WARN_焚木村中的伏击|r
    .mob Deathstalker Faerleia
    .isOnQuest 99
    .group 4
step
    #label PyrewoodAmbush
    .goto Silverpine Forest,46.48,74.10
    >>杀死出现的|cRXP_ENEMY_议员|r和|cRXX_ENEMY_Morrison市长|r
    .complete 452,1 --Aid Faerleia in killing the Pyrewood Council
    .mob Councilman Smithers
    .mob Councilman Hendricks
    .mob Councilman Thatcher
    .mob Councilman Wilhelm
    .mob Councilman Hartin
    .mob Councilman Higarth
    .mob Councilman Brunswick
    .mob Councilman Cooper
    .mob Lord Mayor Morrison
    .isOnQuest 452
    .group 4
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵费雷亚|r
    .turnin 452 >>交任务: |cRXP_FRIENDLY_焚木村中的伏击|r
    .mob Deathstalker Faerleia
    .isQuestComplete 452
    .group
step
    .goto Silverpine Forest,45.66,74.90,40,0
    .goto Silverpine Forest,44.11,73.50,40,0
    .goto Silverpine Forest,45.41,72.42,40,0
    .goto Silverpine Forest,46.61,73.00,40,0
    .goto Silverpine Forest,45.48,73.43
    >>完成杀死|cRXP_ENEMY_Pyrewood |r暴徒。掠夺他们的|cRXP_Loot_枷锁|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith AmbermillTurnin
    .goto Silverpine Forest,45.51,41.26,100 >>回到坟墓
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
    .turnin 99 >>交任务: |cRXP_FRIENDLY_阿鲁高的愚行|r
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .isQuestComplete 99
    .group
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r
    .turnin 450 >>交任务: |cRXP_FRIENDLY_致命的配方|r
    .target Apothecary Renferrel
    .isQuestComplete 450
    .group
step
    #label AmbermillTurnin
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allister|r
    .turnin 479 >>交任务: |cRXP_FRIENDLY_调查安伯米尔|r
    .target Shadow Priest Allister
    .isQuestComplete 479
    .group
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳迪亚·沃农|r
    >>如果价格上涨，从她那里买一个|T135490:0|t[|cRXP_FRIENDLY_Fine Longbow|r]
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .group
step << Druid
    #completewith next
    .cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
step
    #optional
    .abandon 424 >>Abandon 接任务: |cRXP_WARN_阿鲁高的愚行|r
    .isOnQuest 424
step
    #optional
    .abandon 479 >>放弃Ambermill调查
    .isOnQuest 479
step
    #optional
    .abandon 99 >>Abandon 接任务: |cRXP_WARN_阿鲁高的愚行|r
    .isOnQuest 99
step
    #optional
    .abandon 450 >>放弃死亡食谱
    .isOnQuest 450
step
    #optional
    .abandon 452 >>Abandon Pyrewood Ambush
    .isOnQuest 452
step << Tauren
    .hs >>十字路口之心
    .use 6948
    .zoneskip The Barrens
step << Shaman/Hunter
    .hs >>十字路口之心
    .use 6948
    .zoneskip The Barrens
step << !Tauren !Shaman !Hunter
    .hs >>炉底到剃须山
    .use 6948
    .zoneskip Durotar

    ]])
