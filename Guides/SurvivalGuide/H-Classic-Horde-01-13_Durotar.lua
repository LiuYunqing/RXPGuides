local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 1-6 Orc/Troll
#version 1
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 1-20
#defaultfor Troll/Orc
#next 6-13 Orc/Troll

step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_您选择了一个为兽人和巨魔准备的指南。你应该选择与你开始时相同的起始区域|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔图克|r
    .accept 4641 >>接任务: |cRXP_WARN_起点|r
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_杀死|cRXP_ENEMY_Mottled Boars|r。掠夺它们，直到你拥有价值35铜的供应商物品（包括你的盔甲）|r << Warlock
    +|cRXP_WARN_杀死|cRXP_ENEMY_Mottled Boars|r。掠夺它们，直到你拥有价值10铜的供应商物品（包括你的盔甲）|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,30,0 << Warlock
    .goto Durotar,44.19,65.34,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁赞|r
    .accept 1485 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,42.59,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 4641 >>交任务: |cRXP_FRIENDLY_起点|r
    .accept 788 >>接任务: |cRXP_LOOT_小试身手|r
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.4 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r << Shaman
    .train 6673 >>火车|T132333:0|t[战斗呐喊] << Warrior
    .train 8017 >>火车|T136086:0|t[火箭武器] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>向|cRXP_FRIENDLY_Hraug|r行进
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    .vendor >>供应商垃圾箱
    .target Hraug
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 348 >>火车|T135817:0|t[献祭]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r << !Hunter
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[粗箭头]|cRXP_Buy_|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,25,0
    >>在前往燃烧之刃湾的途中杀死|cRXP_ENEMY_Mottled Boars|r
    >>|cRXP_WARN_试着在到达2级之前到达那里|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >>前往燃烧之刃湾
    .isOnQuest 1485
step << Warlock
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.3,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,25,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.30,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    >>杀死|cRXP_ENEMY_Vile Familiars|r。掠夺它们以获得|cRXD_Loot_Vile Familiars头|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
    >>杀死|cRXP_ENEMY_斑点野猪|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳祖|r
    .accept 790 >>接任务: |cRXP_LOOT_萨科斯|r
    .target Hana'zua
step
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>杀死|cRXP_ENEMY_Sarkoth |r。掠夺他|cRXD_Loot_Sarkoth的芒爪|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳祖|r
    .turnin 790 >>交任务: |cRXP_FRIENDLY_萨科斯|r
    .accept 804 >>接任务: |cRXP_LOOT_萨科斯|r
    .target Hana'zua
step
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.7,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,25,0
	.goto Durotar,41.92,64.74,25,0
	.goto Durotar,42.66,64.92,25,0
	.goto Durotar,43.31,65.02,25,0
	.goto Durotar,43.90,65.96,25,0
	.goto Durotar,44.54,65.96,25,0
	.goto Durotar,45.16,65.70,25,0
	.goto Durotar,45.72,65.93,25,0
	.goto Durotar,45.72,65.04,25,0
	.goto Durotar,45.21,63.95,25,0
	.goto Durotar,45.83,63.01,25,0
	.goto Durotar,45.81,62.17,25,0
	.goto Durotar,45.78,61.14,25,0
	.goto Durotar,45.15,60.20,25,0
	.goto Durotar,44.50,59.45,25,0
	.goto Durotar,43.86,60.43,25,0
	.goto Durotar,43.07,60.24,25,0
	.goto Durotar,42.58,60.09,25,0
	.goto Durotar,42.02,61.19,25,0
	.goto Durotar,42.02,62.15,25,0
	.goto Durotar,42.00,62.92,25,0
	.goto Durotar,41.99,64.03,25,0
	.goto Durotar,41.30,65.03,25,0
    >>杀死|cRXP_ENEMY_斑点野猪|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << !Warlock !Rogue !Mage
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.7,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.70,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 3+1120 >>升级到1120+/1400xp
    .mob Mottled Boar
step << Warlock
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.7,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,25,0
	.goto Durotar,41.92,64.74,25,0
	.goto Durotar,42.66,64.92,25,0
	.goto Durotar,43.31,65.02,25,0
	.goto Durotar,43.90,65.96,25,0
	.goto Durotar,44.54,65.96,25,0
	.goto Durotar,45.16,65.70,25,0
	.goto Durotar,45.72,65.93,25,0
	.goto Durotar,45.72,65.04,25,0
	.goto Durotar,45.21,63.95,25,0
	.goto Durotar,45.83,63.01,25,0
	.goto Durotar,45.81,62.17,25,0
	.goto Durotar,45.78,61.14,25,0
	.goto Durotar,45.15,60.20,25,0
	.goto Durotar,44.50,59.45,25,0
	.goto Durotar,43.86,60.43,25,0
	.goto Durotar,43.07,60.24,25,0
	.goto Durotar,42.58,60.09,25,0
	.goto Durotar,42.02,61.19,25,0
	.goto Durotar,42.02,62.15,25,0
	.goto Durotar,42.00,62.92,25,0
	.goto Durotar,41.99,64.03,25,0
	.goto Durotar,41.30,65.03,25,0
    .xp 3+760 >>升级到760+/1400xp
    .mob Mottled Boar
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_升级|cRXP_ENEMY_Mottled Boars|r。掠夺它们，直到你有价值1白银的供应商物品|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #completewith Ruzan2
	>>|cRXP_WARN_升级|cRXP_ENEMY_Mottled Boars|r。掠夺它们，直到你有价值2白银的供应商物品|r << Warrior
	>>|cRXP_WARN_升级|cRXP_ENEMY_Mottled Boars|r。将它们洗劫一空，直到您拥有价值1银75铜的供应商物品|r << Warlock
	>>|cRXP_WARN_升级|cRXP_ENEMY_Mottled Boars|r。将它们洗劫一空，直到您拥有价值1银10铜的供应商物品|r << Hunter
	>>|cRXP_WARN_升级|cRXP_ENEMY_Mottled Boars|r。掠夺它们，直到你有价值1白银的供应商物品|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾箱
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁赞|r
    .turnin 1485 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 1499 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Cast|r|T136218:0|t[召唤冲击]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 1499 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 794 >>接任务: |cRXP_WARN_火刃奖章|r
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 788,2 >>交任务: |cRXP_FRIENDLY_小试身手|r << Shaman
    .turnin 788 >>交任务: |cRXP_FRIENDLY_小试身手|r << !Shaman
    .accept 789 >>接任务: |cRXP_WARN_工蝎的尾巴|r
    .accept 2383 >>接任务: |cRXP_WARN_简易羊皮纸|r << Orc Warrior
    .accept 3065 >>接任务: |cRXP_LOOT_普通石板|r << Troll Warrior
    .accept 3082 >>接任务: |cRXP_LOOT_风蚀石板|r << Troll Hunter
    .accept 3083 >>接任务: |cRXP_WARN_密文石板|r << Troll Rogue
    .accept 3084 >>接任务: |cRXP_WARN_符文石板|r << Troll Shaman
    .accept 3085 >>接任务: |cRXP_WARN_神圣石板|r << Troll Priest
    .accept 3086 >>接任务: |cRXP_LOOT_雕文石板|r << Troll Mage
    .accept 3087 >>接任务: |cRXP_WARN_风蚀羊皮纸|r << Orc Hunter
    .accept 3088 >>接任务: |cRXP_WARN_密文羊皮纸|r << Orc Rogue
    .accept 3089 >>接任务: |cRXP_WARN_符文羊皮纸|r << Orc Shaman
    .accept 3090 >>接任务: |cRXP_LOOT_被污染的羊皮纸|r << Orc Warlock
    .turnin 804,1 >>交任务: |cRXP_FRIENDLY_萨科斯|r << Shaman
    .turnin 804 >>交任务: |cRXP_FRIENDLY_萨科斯|r << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>向|cRXP_FRIENDLY_Rwag|r行驶
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .train 53 >>列车|T132090:0|t[后标签]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往|cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>向|cRXP_FRIENDLY_Hraug|r行进
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    .vendor >>供应商垃圾箱
    .target Hraug
    .money >0.01
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .turnin 3090 >>交任务: |cRXP_FRIENDLY_被污染的羊皮纸|r
    .train 172 >>列车|T136118:0|t[腐败]
    .target Nartok
step
    #sticky
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .accept 4402 >>接任务: |cRXP_WARN_戈加尔的清凉果|r
    .target Galgar
step << !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r << !Warrior !Hunter
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[粗箭头]|cRXP_Buy_|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.1 << Warrior
    .itemcount 159,<15 << !Warrior !Hunter
step << Shaman
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 3084 >>交任务: |cRXP_FRIENDLY_符文石板|r << Troll
    .turnin 3089 >>交任务: |cRXP_FRIENDLY_符文羊皮纸|r << Orc
    .train 8042 >>列车|T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <4,1
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .turnin 3084 >>交任务: |cRXP_FRIENDLY_符文石板|r << Troll
    .turnin 3089 >>交任务: |cRXP_FRIENDLY_符文羊皮纸|r << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .turnin 3086 >>交任务: |cRXP_FRIENDLY_雕文石板|r << Troll
    .train 1459 >>列车|T135932:0|t[奥秘智力]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .accept 792 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Zureetha Fargaze
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .train 1978 >>列车|T132204:0|t[蛇刺]
    .target Jen'shan
    .xp <4,1
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Frang
    .money <0.02
    .xp <4,1
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .train 772 >>列车|T132155:0|t[伦德]
    .target Frang
    .xp <4,1
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .accept 5441 >>接任务: |cRXP_LOOT_懒惰的苦工|r
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>在仙人掌附近偷走|cRXP_Loot_Cactus Apples|r
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>睡觉时使用|T133486:0|t[工头二十一点]|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>杀死|cRXP_ENEMY_Scorpid Workers |r。为|cRXD_Loot_Scored Worker Tails|r掠夺他们
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.3,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,25,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.30,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    >>杀死|cRXP_ENEMY_邪恶家族|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
#loop
	.line Durotar,43.26,58.2,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.2,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.2
	.goto Durotar,43.26,58.20,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.20,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.20,25,0
    >>杀死|cRXP_ENEMY_Scorpid Workers |r。为|cRXD_Loot_Scored Worker Tails|r掠夺他们
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
#loop
	.line Durotar,44.98,69.13,45.64,65.70,47.37,65.67,46.74,60.66,47.09,57.90,43.90,57.79,42.70,57.25,41.27,58.95,40.91,60.41,38.83,61.84,44.98,69.13
	.goto Durotar,44.98,69.13,25,0
	.goto Durotar,45.64,65.70,25,0
	.goto Durotar,47.37,65.67,25,0
	.goto Durotar,46.74,60.66,25,0
	.goto Durotar,47.09,57.90,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto Durotar,41.27,58.95,25,0
	.goto Durotar,40.91,60.41,25,0
	.goto Durotar,38.83,61.84,25,0
	.goto Durotar,44.98,69.13,25,0
    >>睡觉时使用|T133486:0|t[工头二十一点]|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.7,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,25,0
	.goto Durotar,41.92,64.74,25,0
	.goto Durotar,42.66,64.92,25,0
	.goto Durotar,43.31,65.02,25,0
	.goto Durotar,43.90,65.96,25,0
	.goto Durotar,44.54,65.96,25,0
	.goto Durotar,45.16,65.70,25,0
	.goto Durotar,45.72,65.93,25,0
	.goto Durotar,45.72,65.04,25,0
	.goto Durotar,45.21,63.95,25,0
	.goto Durotar,45.83,63.01,25,0
	.goto Durotar,45.81,62.17,25,0
	.goto Durotar,45.78,61.14,25,0
	.goto Durotar,45.15,60.20,25,0
	.goto Durotar,44.50,59.45,25,0
	.goto Durotar,43.86,60.43,25,0
	.goto Durotar,43.07,60.24,25,0
	.goto Durotar,42.58,60.09,25,0
	.goto Durotar,42.02,61.19,25,0
	.goto Durotar,42.02,62.15,25,0
	.goto Durotar,42.00,62.92,25,0
	.goto Durotar,41.99,64.03,25,0
	.goto Durotar,41.30,65.03,25,0
    .xp 4 >>升级到4级
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>交任务: |cRXP_FRIENDLY_戈加尔的清凉果|r
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里购买|r|T132794:0|t[清泉水]|cRXP_Buy_|r << !Rogue !Warrior !Hunter
    >>|cRXP_BUY_从她那里购买|r|T132382:0|t[粗箭头]|cRXP_Buy_|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 789,2 >>交任务: |cRXP_FRIENDLY_[Sting of the Scorpid]|r << Shaman
    .turnin 789 >>交任务: |cRXP_FRIENDLY_[Sting of the Scorpid]|r << !Shaman
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 8042 >>列车|T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .train 116,1 >>列车|T135846:0|t[霜冻螺栓]
    .target Mai'ah
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练你的职业技能
    .money <0.021
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 1243 >>火车|T135987:0|t[强力词：坚韧]
    .train 589 >>火车|T136207:0|t[阴影词：痛苦]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589,1 >>火车|T136207:0|t[阴影词：痛苦]
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 792 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 794 >>接任务: |cRXP_WARN_火刃奖章|r
    .target Zureetha Fargaze
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 1978,1 >>列车|T132204:0|t[蛇刺]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 772 >>列车|T132155:0|t[伦德]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>列车|T132337:0|t[收费]
    .target Frang
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 5441 >>交任务: |cRXP_FRIENDLY_懒惰的苦工|r
    .accept 6394 >>接任务: |cRXP_LOOT_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #completewith next
    .xp 4+1720 >>升级到1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    .goto Durotar,44.67,64.92,25,0
    .goto Durotar,43.45,62.96,25,0
    .goto Durotar,43.8,62.72,25,0
    .goto Durotar,44.85,61.54,25,0
    .goto Durotar,44.88,59.66,25,0
    .goto Durotar,44.61,58.20,25,0
    .goto Durotar,45.46,58.49,25,0
    .goto Durotar,45.93,60.62,25,0
    .goto Durotar,46.87,60.36,25,0
    .goto Durotar,47.28,62.80,25,0
    .goto Durotar,46.08,62.98,25,0
#loop
	.line Durotar,44.67,64.92,43.45,62.96,43.8,62.72,44.85,61.54,44.88,59.66,44.61,58.20,45.46,58.49,45.93,60.62,46.87,60.36,47.28,62.80,46.08,62.98,44.67,64.92
	.goto Durotar,44.67,64.92,25,0
	.goto Durotar,43.45,62.96,25,0
	.goto Durotar,43.80,62.72,25,0
	.goto Durotar,44.85,61.54,25,0
	.goto Durotar,44.88,59.66,25,0
	.goto Durotar,44.61,58.20,25,0
	.goto Durotar,45.46,58.49,25,0
	.goto Durotar,45.93,60.62,25,0
	.goto Durotar,46.87,60.36,25,0
	.goto Durotar,47.28,62.80,25,0
	.goto Durotar,46.08,62.98,25,0
	.goto Durotar,44.67,64.92,25,0
    >>在仙人掌附近偷走|cRXP_Loot_Cactus Apples|r
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.3,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,25,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.30,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 4+1720 >>升级到1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.3,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,25,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.30,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 5 >>升级到5级
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>进入洞穴
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>杀死|cRXP_ENEMY_Felstalker|r。为|cRXD_Loot_Felstalker Hooves|r掠夺它们
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>将|cRXP_PICK_Thazz'ril的拾取|r靠在墙上
    .complete 6394,1 --Thazz'ril's Pick (1)
step
	#completewith next
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,44.77,53.3,15,0
    .goto Durotar,43.88,52.71,15,0
    .goto Durotar,43.39,52.07,15,0
    .goto Durotar,42.90,52.34,15,0
    .goto Durotar,42.70,52.99,35 >>前往|cRXP_ENEMY_Yarrog Baneshadow|r
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>杀死|cRXP_ENEMY_Yarrog Baneshadow|r。掠夺他获得|cRXX_Loot_燃烧之刃勋章|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.3,54.22,42.53,53.48,43.27,53.8,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.30,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.80,25,0
	.goto Durotar,42.70,52.99,25,0
    >>杀死|cRXP_ENEMY_Felstalker|r。为|cRXD_Loot_Felstalker Hooves|r掠夺它们
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.3,54.22,42.53,53.48,43.27,53.8,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.30,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.80,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 6 >>升级到6级 << !Shaman
    .xp 5+1810 >>升级到1810+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.3,54.22,42.53,53.48,43.27,53.8,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.30,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.80,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 6 >>升级到6级 << !Shaman
    .xp 5+1430 >>升级到1430+/2800xp << Shaman
    .isQuestComplete 4402
step
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_将你的角色定位在岩石边缘，直到看起来像是漂浮的，然后注销并返回，执行注销跳过|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >>|cRXP_WARN_单击此处查看示例|r
step
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_你可以在外面或地堡顶上和他说话|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加索克|r
    .accept 784 >>接任务: |cRXP_WARN_背信弃义的人类|r
    .target Gar'thok
step << Hunter
    #completewith next
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞姆塔克|r
    .vendor >>供应商垃圾箱
    .target Grimtak
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>向塔行进
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>沿着塔向Furl行进
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>接任务: |cRXP_WARN_新的背包|r
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >>列车|T136248:0|t[采矿]。这将允许您从节点中找到|T135232:0|t|cRXP_LOOT_[粗糙的石头]|r，以便制作|T135248:0|t[磨石]（+2武器伤害30分钟）
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_him购买|r|T134708:0|t[挖掘拾取]|cRXP_Buy_|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜克|r
    .train 2018 >>列车|T136241:0|t[铁匠铺]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith next
    .hs >>审判谷之心
    .use 6948
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 794 >>交任务: |cRXP_FRIENDLY_火刃奖章|r
    .accept 805 >>接任务: |cRXP_WARN_去森金村报到|r
    .target Zureetha Fargaze
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>交任务: |cRXP_FRIENDLY_戈加尔的清凉果|r
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾箱
    .target Duokna
    .money >0.03
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
	.accept 5649 >>接任务: |cRXP_WARN_部族的传统|r << Troll Priest
	.train 591 >>列车|T135924:0|t[Smite]
    .train 17 >>列车|T135940:0|t[电源字：屏蔽]
    .target Ken'jai
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .train 143 >>列车|T135812:0|t[火球]
    .train 2136 >>列车|T135807:0|t[火灾爆炸]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 332 >>列车|T136052:0|t[治疗波]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1517 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 1516 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1517 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 1130 >>火车|T132212:0|t[猎人标记]
    .train 3044 >>火车|T132218:0|t[奥术射击]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 3044 >>火车|T132218:0|t[奥术射击]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 3127 >>列车|T132269:0|t[Parry]
    .train 6343 >>火车|T136105:0|t[霹雳]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 3127 >>列车|T132269:0|t[Parry]
    .target Frang
step << Rogue
    #completewith Rwag2
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>向|cRXP_FRIENDLY_Rwag|r行驶
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>火车|T136189:0|t[邪恶的打击]
    .train 1776 >>列车|T132155:0|t[Gouge]
    .target Rwag
    .money <0.02
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>火车|T136189:0|t[邪恶的打击]
    .target Rwag
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>向|cRXP_FRIENDLY_Hraug|r行进
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    >>|cRXP_BUY_从他那里购买|r|T133738:0|t[Grimoire of Blood Pact]|cRXP_Buy_|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>供应商垃圾箱
    .target Hraug
    .money <0.03
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>列车|T136197:0|t[影子螺栓]
    .train 1454 >>列车|T136126:0|t[生命抽头]
    .target Nartok
    .money <0.02
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>列车|T136197:0|t[影子螺栓]
    .target Nartok
step << Warlock
    #completewith Leave
    .train 20397 >>使用| T133738:0 | t[血之约定书]
    .itemcount 16321,1
    .use 16321
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>前往|cRXP_PICK_萨满神殿|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>使用|T134743:0|t[地球莎普塔]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1518 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .train 332 >>列车|T136052:0|t[治疗波]
    .target Shikrik
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 6394 >>交任务: |cRXP_FRIENDLY_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #label Leave
    #completewith next
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>退出审判谷
    .isOnQuest 805
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌克尔|r
    .accept 2161 >>接任务: |cRXP_LOOT_苦工的重担|r
    .target Ukor
    ]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 6-13 Orc/Troll
#version 1
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 1-20
#defaultfor Troll/Orc
#next 13-15 Silverpine Forest

step
    .goto Durotar,54.3,73.3,25,0
    .goto Durotar,54.5,75.0,25,0
    .goto Durotar,54.1,76.6,25,0
    .goto Durotar,54.1,76.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .accept 786 >>接任务: |cRXP_WARN_科卡尔半人马的进攻|r
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔林·长牙|r, |cRXP_FRIENDLY_沃纳尔大师|r, |cRXP_FRIENDLY_加德林大师|r
    .accept 817 >>接任务: |cRXP_LOOT_生活所需的虎皮|r
    .goto Durotar,55.95,73.93
    .accept 818 >>接任务: |cRXP_WARN_沃纳尔大师|r
    .goto Durotar,55.94,74.40
    .turnin 805 >>交任务: |cRXP_FRIENDLY_去森金村报到|r
    .accept 808 >>接任务: |cRXP_LOOT_明希纳的颅骨|r
    .accept 826 >>接任务: |cRXP_LOOT_扎拉赞恩|r
    .accept 823 >>接任务: |cRXP_LOOT_向奥戈尼尔报告|r
    .goto Durotar,55.94,74.72
    .target Master Vornal
    .target Master Gadrin
    .target Vel'rin Fang
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>Enter the big hut
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_K'waii|r|cRXP_BUY_交谈。从她那里购买|r|T135421:0|t[加权飞斧]|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_BUY|r|T132794:0|t[清泉水]|cRXP_BUY_from her |r--清泉水（20）
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_BUY|r|T132794:0|t[清泉水]|cRXP_BUY_from|r--清泉水（10）
    .collect 159,10,786,1
    .target K'waii
    .money >0.001
    .money <0.005
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一根|T135145:0|t[手杖]（5s 04c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里买一根|r|T135145:0|t[Walking Stick]|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T132401:0|t[大斧头]（4s 84c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里买一把|r|T132401:0|t[大斧头]|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T135421:0|t[战斧]（5s 40c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里买一个|r|T135421:0|t[Tomahawk]|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T135499:0|t[Hornwood递归弓]（2s 83c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r|T135499:0|t[Hornwood递归弓]|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #completewith Bonfire
    +装备|T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith Bonfire
    +装备|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith Bonfire
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Bonfire
    +装备|T132401:0|t[大斧头]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Bonfire
    +装备|T135421:0|t[战斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith Bonfire
    +装备|T135499:0|t[Hornwood递归弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安苏瓦|r
    .train 143 >>列车|T135812:0|t[火球]
    .train 2136 >>列车|T135807:0|t[火灾爆炸]
    .target Un'Thuwa
step << Warrior/Rogue
    #completewith TravelToTiragarde
    +|cRXP_WARN_铸造|r|T136025:0|t[寻找矿物]|cRXP_WARN_并开采您找到的任何铜矿脉|r|T135232:0|t|cRXP-LOOT_[粗石]|r|cRXP_WARN_。制作|r|T135248:0|t[磨石]|cRXP_WARN_|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >>沿着海滩往下跑。杀死|cRXP_ENEMY_Crawler|r和|cRXX_ENEMY_Makruras|r。掠夺它们的|cRXP_Loot_Mucus|r和| cRXP_Loot_Eyes |r。您不必在此处完成此步骤。
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,52.20,83.00,75 >>到达海滩尽头
    .isOnQuest 818
step
    .goto Durotar,50.9,79.2,40 >>进入科尔卡基地
    .isOnQuest 786
step << Priest/Warlock
    #sticky
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_开始收集3堆|r|T132889:0|t[Linen Cloth]|cRXP_WARN_a作为你在整个杜罗塔的任务。这将用于以后制作魔杖|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_如果|r|cRXP_ENEMY_Kolkanis|r|cRXP_WARN_i上升，则要小心，他是9级稀有。您可能需要使用|r|T134829:0|t[小治疗药剂]|cRXP_WARN_i（如果您有）|r
    .unitscan Warlord Kolkanis
step
    >>在帐篷内、地面上焚烧|cRXP_PICK_Attack Plan |r
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>在地面上烧毁|cRXP_PICK_Attack Plan |r
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>在地面上烧毁|cRXP_PICK_Attack Plan |r
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Leave the Kolkar base
    .isQuestComplete 786
step
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786,1 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r << Shaman
    .turnin 786 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r << !Shaman
    .target Lar Prowltusk
step
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃纳尔大师|r
    .turnin 818 >>交任务: |cRXP_FRIENDLY_沃纳尔大师|r
    .target Master Vornal
    .isQuestComplete 818
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_BUY|r|T132794:0|t[清泉水]|cRXP_BUY_from her |r--清泉水（20）
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_BUY|r|T132794:0|t[清泉水]|cRXP_BUY_from|r--清泉水（10）
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海赞|r
    >>|cRXP_BUY_从他那里购买|r|T133974:0|t[Haunch of Meat]|cRXP_Buy_|r
    .vendor >>供应商垃圾
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一根|T135145:0|t[手杖]（5s 04c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里买一根|r|T135145:0|t[Walking Stick]|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T132401:0|t[大斧头]（4s 84c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里买一把|r|T132401:0|t[大斧头]|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T135421:0|t[战斧]（5s 40c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里买一个|r|T135421:0|t[Tomahawk]|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T135499:0|t[Hornwood递归弓]（2s 83c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r|T135499:0|t[Hornwood递归弓]|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #completewith TravelToTiragarde
    +装备|T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith TravelToTiragarde
    +装备|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith TravelToTiragarde
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith TravelToTiragarde
    +装备|T132401:0|t[大斧头]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith TravelToTiragarde
    +装备|T135421:0|t[战斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith TravelToTiragarde
    +装备|T135499:0|t[Hornwood递归弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #label TravelToTiragarde
    .goto Durotar,54.42,62.64,60,0
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >>前往Tiragarde Keep。路上碾过暴徒
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_如果|r|cRXP_ENEMY_Watch Commander Zalaphil|r|cRXP_WARN_i上升，请小心，因为他是9级稀有。您可能需要使用|r|T134829:0|t[小治疗药剂]|cRXP_WARN_i（如果您有）|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>向仓库的二楼移动
step
    #completewith AgedEnvelope
    >>杀死|cRXP_ENEMY_Kul Tiras水手|r和|cRXX_ENEMY_Kul Tiras海军陆战队|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>杀死|cRXP_ENEMY_Benedict中尉|r。抢走他的|cRXP_Loot_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>搬到楼上，掠夺|cRXP_PICK_Benedict的箱子|r获得一个|T133471:0|t[|cRXP-loot_Aged Envelope|r]并接受物品的请求
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>接任务: |cRXP_WARN_将军的命令|r
    .use 4881
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死|cRXP_ENEMY_Kul Tiras水手|r和|cRXX_ENEMY_Kul Tiras海军陆战队|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死|cRXP_ENEMY_Kul Tiras水手|r和|cRXD_ENEMY_Kul Tiras海军陆战队|r，并掠夺他们的|cRXP_Loot_Raps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest !Mage
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+2180 >>升级到2200+/4500xp
step << Priest
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+1730 >>升级到1750+/4500xp
step
    #completewith next
    .goto Durotar,52.38,43.77,120 >>前往剃须山
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_RIENDLY_Orgnil|r、|cRXP_RIENDLY_Gar'TOK|r和|cRXT_RIENDLY_Torka|r交谈
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
    .accept 806 >>接任务: |cRXP_LOOT_黑暗风暴|r
    .goto Durotar,52.24,43.15
    .turnin 784 >>交任务: |cRXP_FRIENDLY_背信弃义的人类|r
    .turnin 830 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .accept 825 >>接任务: |cRXP_WARN_海底沉船|r
    .accept 831 >>接任务: |cRXP_WARN_将军的命令|r
    .accept 837 >>接任务: |cRXP_LOOT_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .accept 815 >>接任务: |cRXP_WARN_恐龙蛋大餐|r
    .goto Durotar,51.09,42.49
    .target Orgnil Soulscar
    .target Gar'Thok
    .target Cook Torka
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥戈尼尔·魂痕|r, |cRXP_FRIENDLY_加索克|r, |cRXP_FRIENDLY_厨师托尔卡|r
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
    .goto Durotar,52.24,43.15
    .turnin 784 >>交任务: |cRXP_FRIENDLY_背信弃义的人类|r
    .turnin 830 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .accept 825 >>接任务: |cRXP_WARN_海底沉船|r
    .accept 831 >>接任务: |cRXP_WARN_将军的命令|r
    .accept 837 >>接任务: |cRXP_LOOT_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .accept 815 >>接任务: |cRXP_WARN_恐龙蛋大餐|r
    .goto Durotar,51.09,42.49
    .target Orgnil Soulscar
    .target Gar'Thok
    .target Cook Torka
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>向塔行进
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>沿着塔向Furl行进
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>交任务: |cRXP_FRIENDLY_新的背包|r
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁恩|r
    .train 2575,1 >>列车|T136248:0|t[采矿]。这将允许您从节点中找到|T135232:0|t|cRXP_LOOT_[粗糙的石头]|r，以便制作|T135248:0|t[磨石]（+2武器伤害30分钟）
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_Wuark购买|r|T134708:0|t[挖掘拾取]|cRXP_Buy_|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜克|r
    .train 2018 >>列车|T136241:0|t[铁匠铺]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一根|T135145:0|t[手杖]（5s 04c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里买一根|r|T135145:0|t[Walking Stick]|r
    .collect 2495,1,818,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135641:0|t[Stiletto]（4s 01c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里购买|r|T135641:0|t[Stiletto]|r
    .collect 2494,1,818,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T132401:0|t[大斧头]（4s 84c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里买一把|r|T132401:0|t[大斧头]|r
    .collect 2491,1,818,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T135421:0|t[战斧]（5s 40c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里买一个|r|T135421:0|t[Tomahawk]|r
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith Toolboxes
    +装备|T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith Toolboxes
    +装备|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith Toolboxes
    +配备|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Toolboxes
    +装备|T132401:0|t[大斧头]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Toolboxes
    +装备|T135421:0|t[战斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳特|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T135499:0|t[Hornwood递归弓]（2s 83c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_交谈。从他那里购买|r|T135499:0|t[Hornwood递归弓]|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #completewith Toolboxes
    +装备|T135499:0|t[Hornwood递归弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ghrawt交谈。从他那里购买|r|T132382:0|t[粗箭头]|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    >>|cRXP_BUY_从他那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_从他那里购买|r|T133974:0|t[Haunch of Meat]|cRXP_Buy_|r << Rogue/Warrior
    .vendor >>供应商垃圾箱
    .home >>把你的炉石放在剃刀山
    .turnin 2161 >>交任务: |cRXP_FRIENDLY_苦工的重担|r
    .collect 1179,10,818,1 << Warlock/Priest/Shaman --Ice Cold Milk (10)
    .collect 1179,20,818,1 << Mage --Ice Cold Milk (20)
    .collect 2287,10,818,1 << Rogue/Warrior --Haunch of Meat (10)
    .target Innkeeper Grosk
    .money <0.065 << Rogue/Warrior/Shaman/Warlock --to ensure user still has 4 silver left for class spells
    .money <0.045 << Priest --to ensure user still has 2 silver left for class spells
    .money <0.050 << Mage --Mage not getting class training here
step
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .home >>把你的炉石放在剃刀山
    .turnin 2161 >>交任务: |cRXP_FRIENDLY_苦工的重担|r
    .money >0.065 << Rogue/Warrior/Shaman/Warlock
    .money >0.045 << Priest
    .money >0.050 << Mage
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 284 >>训练你的职业技能
    .target Tarshaw Jaggedscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8044 >>训练你的职业技能
    .target Swart
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基萨|r
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #completewith Tools
    .train 20270 >>使用|T133738:0|t[火枪手等级2]
    .use 16302
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    .train 5116 >>训练你的职业技能
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 6760 >>训练你的职业技能
    .target Kaplak
step << Troll Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .turnin 5649 >>接任务: |cRXP_WARN_部族的传统|r
    .accept 5648 >>接任务: |cRXP_WARN_灵魂之衣|r
    .target Tai'jin
step << Troll Priest
    .goto Durotar,53.10,46.46
    >>在|cRXP_FRIENDLY_Kor'ja|r上施法|T135929:0|t[小治疗]和|T135987:0|t[力量文字：坚韧]
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .turnin 5648 >>交任务: |cRXP_FRIENDLY_灵魂之衣|r << Troll Priest
    .trainer >>训练你的职业技能
    .target Tai'jin
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉乌克|r
    .train 3273 >>列车|T135966:0|t[急救]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加尔克|r
    >>|cRXP_BUY_购买|r|T133634:0|t[棕色小袋子]|cRXP_Buy_from|r|cRXP-FRIENDLY_him|r
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>杀死|cRXP_ENEMY_Crawler|r和|cRXP_ENEMY_Makruras|r。掠夺它们的|cRXP_Loot_Mucus|r和| cRXP_Loot_Eyes |r。现在不需要完成
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #label Tools
    >>掠夺船内和周围的|cRXP_PICK_Gnomish工具箱|r
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >>游到岛上
step
    #completewith MinshinasSkull
    >>杀死|cRXP_ENEMY_Tigers|r。掠夺他们的|cRXP-Loot_Fur|r。现在不需要完成
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>杀死|cRXP_ENEMY_Crawler|r和|cRXX_ENEMY_Makruras|r。掠夺它们的|cRXP_Loot_Mucus|r和| cRXP_Loot_Eyes |r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #label TaillasherEggs
#loop
	.line Durotar,67.74,69.86,67.04,71.40,67.66,73.86,68.67,74.47,69.76,74.69,70.29,73.31,70.23,70.84,69.69,70.35,69.21,69.69,67.74,69.86
	.goto Durotar,67.74,69.86,25,0
	.goto Durotar,67.04,71.40,25,0
	.goto Durotar,67.66,73.86,25,0
	.goto Durotar,68.67,74.47,25,0
	.goto Durotar,69.76,74.69,25,0
	.goto Durotar,70.29,73.31,25,0
	.goto Durotar,70.23,70.84,25,0
	.goto Durotar,69.69,70.35,25,0
	.goto Durotar,69.21,69.69,25,0
	.goto Durotar,67.74,69.86,25,0
    >>将|cRXP_PICK_Tailasher蛋|r掠夺到地上。它们通常由|cRXP_ENEMY_Bloodtalon Tailasher|r守卫
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>杀死|cRXP_ENEMY_Crawler|r和|cRXX_ENEMY_Makruras|r。掠夺它们的|cRXP_Loot_Mucus|r和| cRXP_Loot_Eyes |r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >>Swim to the main island
step
    #completewith MinshinasSkull
    >>杀死|cRXP_ENEMY_Hexed巨魔|r和|cRXX_ENEMY_Voodoo巨魔|r。
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Voodoo巨魔|r|cRXP_WARN_can cast|r|T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >>杀死|cRXP_ENEMY_Zalazane|r。掠夺他的|cRXX_Loot_Head|r
    >>|cRXP_WARN_Save your |r|T136026:0|t[地震动]|cRXP_WARN_forwhen他施放|r|T136052:0|t[治疗波] << Shaman
    >>|cRXP_WARN_Save your |r|T132155:0|t[Gouge]|cRXP_WARN_for when he cast|r|T136052:0|t[治疗波] << Rogue
    >>|cRXP_WARN_小心。他可以施放|r|T136052:0|t[治疗波]|cRXP_WARN_。如果需要，使用您的|r|T134829:0|t[药剂]|cRXP_WARN_i|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>在地面上抢劫一个|cRXP_Loot_Sulls|r
    .complete 808,1 --Minshina's Skull (1)
step
    .goto Durotar,67.4,87.8
    >>杀死|cRXP_ENEMY_Zalazane|r。掠夺他的|cRXX_Loot_Head|r
    >>|cRXP_WARN_Save your |r|T136026:0|t[地震动]|cRXP_WARN_forwhen他施放|r|T136052:0|t[治疗波] << Shaman
    >>|cRXP_WARN_Save your |r|T132155:0|t[Gouge]|cRXP_WARN_for when he cast|r|T136052:0|t[治疗波] << Rogue
    >>|cRXP_WARN_小心。他可以施放|r|T136052:0|t[治疗波]|cRXP_WARN_。如果需要，使用您的|r|T134829:0|t[药剂]|cRXP_WARN_i|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>杀死|cRXP_ENEMY_Tigers|r。掠夺它们的|cRXX_Loot_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>杀死|cRXP_ENEMY_Hexed巨魔|r和|cRXX_ENEMY_Voodoo巨魔|r。
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Voodoo巨魔|r|cRXP_WARN_can cast|r|T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >>杀死|cRXP_ENEMY_Crawler|r和|cRXX_ENEMY_Makruras|r。掠夺它们的|cRXP_Loot_Mucus|r和| cRXP_Loot_Eyes |r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44
    >>杀死|cRXP_ENEMY_Tigers|r。掠夺它们的|cRXX_Loot_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    .goto Durotar,59.64,73.84
    >>杀死|cRXP_ENEMY_Crawler|r和|cRXX_ENEMY_Makruras|r。掠夺它们的|cRXP_Loot_Mucus|r和| cRXP_Loot_Eyes |r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>前往森津村
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾处理和维修。你可以在小屋外面和他说话
    .target Trayexir
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安苏瓦|r
    .train 118 >>训练你的职业技能
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加德林大师|r, |cRXP_FRIENDLY_沃纳尔大师|r, |cRXP_FRIENDLY_维尔林·长牙|r
    .turnin 808 >>交任务: |cRXP_FRIENDLY_明希纳的颅骨|r
    .turnin 826,2 >>交任务: |cRXP_FRIENDLY_扎拉赞恩|r << Shaman
    .turnin 826 >>交任务: |cRXP_FRIENDLY_扎拉赞恩|r << !Shaman
    .goto Durotar,55.95,74.73
    .turnin 818 >>交任务: |cRXP_FRIENDLY_沃纳尔大师|r
    .goto Durotar,55.95,74.39
    .turnin 817 >>交任务: |cRXP_FRIENDLY_生活所需的虎皮|r
    .goto Durotar,55.95,73.93
    .target Master Gadrin
    .target Master Vornal
    .target Vel'rin Fang
step
    #completewith Stolensupplies
    +|cRXP_WARN_绑上你的|r|T133728:0|t[微弱发光的头骨]|cRXP_WARN_and|r|T134712:0|t[真粘的胶水]|cRXP_WARN_。保存它们以备不时之需|r
step
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>杀死|cRXP_ENEMY_Razormane Quilboars|r和|cRXX_ENEMY_拉佐曼侦察兵|r
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
    .mob Razormane Quilboar
    .mob Razormane Scout
step << Shaman/Hunter
#loop
	.line Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
	.goto Durotar,44.45,39.74,25,0
	.goto Durotar,44.49,37.47,25,0
	.goto Durotar,43.30,37.32,25,0
	.goto Durotar,41.70,37.09,25,0
	.goto Durotar,41.64,38.27,25,0
	.goto Durotar,41.94,40.46,25,0
	.goto Durotar,43.30,40.40,25,0
	.goto Durotar,44.45,39.74,25,0
    >>杀死|cRXP_ENEMY_Razormane Dustrunner|r和|cRXX_ENEMY_Razormane Battleguard|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Dustrunners|r|cRXP_WARN_cast回春（治疗）和|r|cRXP_ENEMY_Battleguards|r|r| cRXP_WARN_are tanky|r
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
    .mob Razormane Dustrunner
    .mob Razormane Battleguard
step << Shaman/Hunter
#loop
	.line Durotar,47.52,48.67,46.12,45.47,43.65,43.91,41.68,44.69,41.00,46.13,42.47,48.50,44.21,49.68,47.17,49.44,47.52,48.67
	.goto Durotar,47.52,48.67,25,0
	.goto Durotar,46.12,45.47,25,0
	.goto Durotar,43.65,43.91,25,0
	.goto Durotar,41.68,44.69,25,0
	.goto Durotar,41.00,46.13,25,0
	.goto Durotar,42.47,48.50,25,0
	.goto Durotar,44.21,49.68,25,0
	.goto Durotar,47.17,49.44,25,0
	.goto Durotar,47.52,48.67,25,0
    .xp 9+4470 >>升级到4470+/6500xp
step
    #completewith next
    .goto Durotar,51.12,42.46,150 >>跑向Razor Hill
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Torka|r和|cRXP_FRIENDLY_Gar'Ok|r交谈
    .turnin 815 >>交任务: |cRXP_FRIENDLY_恐龙蛋大餐|r
    .goto Durotar,51.12,42.46
    .turnin 825 >>交任务: |cRXP_FRIENDLY_海底沉船|r
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Gar'Thok
step << !Shaman !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Torka|r和|cRXP_FRIENDLY_Gar'Ok|r交谈
    .turnin 815 >>交任务: |cRXP_FRIENDLY_恐龙蛋大餐|r
    .goto Durotar,51.12,42.46
    .turnin 825 >>交任务: |cRXP_FRIENDLY_海底沉船|r
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Gar'Thok
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    .accept 6062 >>接任务: |cRXP_WARN_驯服野兽|r
    .trainer >>训练你的职业技能
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ghrawt交谈|r
    .collect 2515,1200,837,1 << Hunter --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 << Hunter
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉乌克|r
    .train 3273 >>列车|T135966:0|t[急救]
    .target Rawrk
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 6546 >>训练你的职业技能
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业技能
    .accept 2983 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业技能
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1120 >>训练你的职业技能
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基萨|r
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    .train 20270 >>使用|T133738:0|t[火枪手等级2]
    .use 16302
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 674 >>训练你的职业技能
    .target Kaplak
    .xp <10,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .accept 5654 >>接任务: |cRXP_WARN_虚弱妖术|r << Troll
    .accept 5660 >>接任务: |cRXP_WARN_虚弱之触|r << Undead
    .trainer >>训练你的职业技能
    .target Tai'jin
    .xp <10,1
step << Hunter
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .goto Durotar,51.65,56.51
    .use 15917 >>|cRXP_WARN_使用您的|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Dire Mottled Boar|r|cRXP_WARN_at最大射程|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    .turnin 6062 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6083 >>接任务: |cRXP_WARN_驯服野兽|r
    .target Thotar
step << Hunter
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38
    >>|cRXP_WARN_不要杀死你看到的|r|cRXP_ENEMY_Armored Scorpids|r|cRXP_WARN_。你以后需要它们|r
    .use 15919 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Surf Crawler|r|cRXP_WARN_at最大范围|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    .turnin 6083 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6082 >>接任务: |cRXP_WARN_驯服野兽|r
    .target Thotar
step << Hunter
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .goto Durotar,54.84,36.94
    .use 15920 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on |r|cRXP_ENEMY_Armored Scorpid|r|cRXP_WARN_at最大射程|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    .turnin 6082 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6081 >>接任务: |cRXP_WARN_训练野兽|r
    .target Thotar
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞姆塔克|r
    >>|cRXP_BUY_从他那里购买|r|T133972:0|t[Tough Jerky]|cRXP_Buy_。|cRXP-Buy_你以后会用它来喂你的宠物|r
    .vendor >>供应商垃圾箱
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
step
    #optional
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_WARN_部落的新兵|r
    .target Takrin Pathseeker
    .xp <10,1
step
#loop
	.line Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
	.goto Durotar,44.45,39.74,25,0
	.goto Durotar,44.49,37.47,25,0
	.goto Durotar,43.30,37.32,25,0
	.goto Durotar,41.70,37.09,25,0
	.goto Durotar,41.64,38.27,25,0
	.goto Durotar,41.94,40.46,25,0
	.goto Durotar,43.30,40.40,25,0
	.goto Durotar,44.45,39.74,25,0
    >>杀死|cRXP_ENEMY_Razormane Dustrunner|r和|cRXX_ENEMY_Razormane Battleguard|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Dustrunners|r|cRXP_WARN_cast回春（治疗）和|r|cRXP_ENEMY_Battleguards|r|r| cRXP_WARN_are tanky|r
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
    .mob Razormane Dustrunner
    .mob Razormane Battleguard
step << Shaman
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .zoneskip The Barrens
step << Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_WARN_十字路口征兵|r
    .target Kargal Battlescar
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2983 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1524 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Kranal Fiss
step << Shaman
    #completewith CallofFire2
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step << Shaman
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
    .goto Durotar,39.16,58.56,10 >>沿着小路上山到达|cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_小心别从山上掉下来，小路很窄。如果你摔倒了，你可能会死|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1524 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1525 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >>沿着小路下山
    >>|cRXP_WARN_小心别从山上掉下来，小路很窄。如果你摔倒了，你可能会死|r
step << Shaman
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .zoneskip The Barrens
step << Shaman
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>杀死一个|cRXP_ENEMY_Razormane找水器|r或|cRXX_ENEMY_拉佐曼Thornweaver |r。掠夺它们以获得|cRXD_Loot_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step << Shaman
    #completewith next
    .goto The Barrens,52.34,29.27,150 >>前往十字路口
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_索克|r, |cRXP_FRIENDLY_加兹罗格|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
    .goto The Barrens,52.62,29.84
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
    .accept 844 >>接任务: |cRXP_WARN_平原陆行鸟的威胁|r
    .goto The Barrens,52.23,31.00
    .accept 871 >>接任务: |cRXP_WARN_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_WARN_十字路口的补给品|r
    .goto The Barrens,51.50,30.87
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
    .goto The Barrens,51.93,30.32
    .target Zargh
    .target Sergra Darkthorn
    .target Thork
    .target Gazrog
step << Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
    .accept 6384 >>接任务: |cRXP_WARN_飞往奥格瑞玛|r
    .target Devrak
step << Shaman
    #completewith NeedforaCureAccept
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Devrak
step << Shaman
    #completewith Gryhskaturnin1
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Orgrimmar
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r|cRXP_BUY_。从他那里购买|r|T135154:0|t[季度员工]|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #completewith NeedforaCureAccept
    +当你达到11级时，装备|T135154:0|t[四分之一法杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Gryshka|r交谈
    .turnin 6384 >>交任务: |cRXP_FRIENDLY_飞往奥格瑞玛|r
    .accept 6385 >>接任务: |cRXP_WARN_双足飞龙管理员多拉斯|r
    .target Innkeeper Gryshka
step << Shaman
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r
    .accept 6386 >>接任务: |cRXP_WARN_返回十字路口|r
    .target Doras
step << Shaman
    #label LeaveOrg
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step << Shaman
    #label NeedforaCureAccept
    .goto Durotar,41.54,18.59
    >>|cRXP_WARN_这将为任务启动一个45分钟的计时器。在接下来的10分钟内不要AFK或注销|r
    >>对话: |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接任务: |cRXP_LOOT_救命如救火|r
    .target Rhinag
step << Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莎|r
    .accept 816 >>接任务: |cRXP_WARN_丢失的孩子|r
    .target Misha Tor'kren
step
    #label Stolensupplies
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
    .goto Durotar,47.92,33.10
    >>从地面上抢走|cRXP_PICK_被盗的补给袋|r
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step << !Hunter
    #completewith next
    .goto Durotar,46.37,22.94,50 >>Travel to Rezlak
step << !Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接任务: |cRXP_WARN_沙漠之风|r
    .target Rezlak
step << !Hunter
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    .goto Durotar,49.70,21.90
    >>从地面上抢走|cRXP_PICK_被盗的补给袋|r
    .complete 834,1 --Sack of Supplies (5)
step << !Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务: |cRXP_FRIENDLY_沙漠之风|r
    .accept 835 >>接任务: |cRXP_WARN_保卫商路|r
    .target Rezlak
step << Hunter
    .goto Durotar,41.54,18.59
    >>|cRXP_WARN_这将为任务启动一个45分钟的计时器。在接下来的5分钟内不要AFK或注销|r
    >>对话: |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接任务: |cRXP_LOOT_救命如救火|r
    .target Rhinag
step << Hunter
    #completewith BeastTraining
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Orgrimmar
step << Hunter
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .target Nazgrel
step << Hunter
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Kor'ghan|r交谈
    .accept 813 >>接任务: |cRXP_WARN_寻找解毒剂|r
    .target Kor'ghan
    .isOnQuest 812
step << Hunter
    #completewith BeastTraining
    >>|cRXP_WARN_放弃治疗需求。这将删除任务中的计时器，但你仍然可以这样做|r
    .abandon 812 >>放弃治疗需求
    .isOnQuest 812
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>前往荣誉谷
step << Hunter
    #label BeastTraining
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
    .turnin 6081 >>交任务: |cRXP_FRIENDLY_训练野兽|r
    .target Ormak Grimshot
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
    .train 24547 >>训练你的宠物法术
    .target Xao'tsu
step << Hunter
    #completewith Rezlak
    +|cRXP_WARN_拖动|r|T132162:0|t[野兽训练]|cRXP_WARN_到动作栏中。向您的宠物传授技能|r
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r|cRXP_BUY_。从他那里买一个|r|T135499:0|t[叠层递归弓]|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #completewith Rezlak
    +当你达到11级时装备|T135499:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #label HuntLeaveOrg
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step << Hunter
    #completewith Rezlak
    .goto Durotar,43.8,17.20,40,0
    .goto Durotar,43.53,18.35,40,0
    .goto Durotar,42.19,19.70,40,0
    .goto Durotar,41.08,20.42,40,0
    .goto Durotar,42.76,21.08,40,0
    .goto Durotar,40.44,17.51,40,0
    +驯服宠物。|cRXP_ENEMY_Scorpid|r或|cRXX_ENEMY_Raptor|r将具有最高dps
    .mob Venomtail Scorpid
    .mob Bloodtalon Scythemaw
step << Hunter
    #completewith next
    .goto Durotar,46.37,22.94,50 >>Travel to Rezlak
step << Hunter
    #label Rezlak
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接任务: |cRXP_WARN_沙漠之风|r
    .target Rezlak
step << Hunter
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    .goto Durotar,49.70,21.90
    >>从地面上抢走|cRXP_PICK_被盗的补给袋|r
    .complete 834,1 --Sack of Supplies (5)
step << Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务: |cRXP_FRIENDLY_沙漠之风|r
    .accept 835 >>接任务: |cRXP_WARN_保卫商路|r
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >>Travel through the cave
    .solo
step
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>杀死|cRXP_ENEMY_Dustwind野蛮人|r和|cRXX_ENEMY_ Dustwind风暴女巫|r
    >>|cRXP_WARN_这些暴徒逃走了。小心不要双重拉动|r
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .solo
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_选择|r|T135158:0|t[Blemished Wooden Staff]|cRXP_WARN_a作为您的任务奖励并保存。您将在Orgrimmar接受员工培训|r
    .solo
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 >>交任务: |cRXP_FRIENDLY_保卫商路|r
    .target Rezlak
    .solo
step << Shaman
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莎|r
    .accept 816 >>接任务: |cRXP_WARN_丢失的孩子|r
    .target Misha Tor'kren
step
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>跳进雷霆岭 << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_施法|r|T136095:0|t[解散宠物]|cRXP_WARN_然后跳进雷脊|r << Hunter
    >>|cRXP_WARN_解散你的小淘气，然后跳进雷岭|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>杀死|cRXP_ENEMY_Fizzle Darkstorm|r，并掠夺他的|cRXX_loot_爪|r
    >>|cRXP_WARN_要非常小心。杀死巡逻的|r|cRXP_ENEMY_燃烧之刃狂热者|r|cRXP_WARN_an和后面的|r| cRXP__ENEMY_闪电隐藏物|r|d|r
    >>|cRXP_WARN_将他向后拉向你刚刚杀死的|r|cRXP_ENEMY_Lightning Hides |r|cRXP_WARN_。否则，你可能会拉额外的燃烧之刃暴徒|r
    >>|cRXP_WARN_先杀死imp。当他施放时使用|r|T132155:0|t[Gouge]|cRXP_WARN_ << Rogue
    >>|cRXP_WARN_先杀死imp。当他施放时使用|r|T136026:0|t[地震]|cRXP_WARN_ << Shaman
    >>|cRXP_WARN_您可以施放|r|T136071:0|t[变形]|cRXP_WARN_on|r|cRXP-ENEMY_Fizzle|r|cRXP_WARN_an并杀死|r|r|c-变形|r << Mage
    >>|cRXP_WARN_Kill the imp first.|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_使用|r|T134829:0|t[小治疗药剂]|cRXP_WARN_if你有，如果需要，使用|r| T133728:0|t[Faithly Glowing Skull]|cRXP_WARN_if needed|r << !Warlock
    >>|cRXP_WARN_使用|r|T134829:0|t[次要治疗药剂]，|T133728:0|t[Minor Healthstone]|cRXP_WARN_if you have and your|r|T133728:0 |t[微弱发光的头骨]|cRX P_WARN_if needed|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step
    .hs >>炉底到剃须山
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .group
step << Shaman
    .hs >>炉底到剃须山
    .use 6948
    .subzoneskip 362
    .solo
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >>供应商垃圾箱
    >>|cRXP_BUY_从他那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_从他那里购买|r|T133974:0|t[Haunch of Meat]|cRXP_Buy_|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
    .group
step << Shaman
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >>供应商垃圾箱
    >>|cRXP_BUY_从他那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_从他那里购买|r|T133974:0|t[Haunch of Meat]|cRXP_Buy_|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .turnin 806 >>交任务: |cRXP_FRIENDLY_黑暗风暴|r
    .accept 828 >>接任务: |cRXP_LOOT_玛高兹|r
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .accept 828 >>接任务: |cRXP_LOOT_玛高兹|r
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加索克|r
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .target Gar'Thok
    .group
step << Shaman
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加索克|r
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .target Gar'Thok
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 6546,1 >>训练你的职业技能
    .target Tarshaw Jaggedscar
    .group
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050,1 >>训练你的职业技能
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1120,1 >>训练你的职业技能
    .target Dhugru Gorelust
    .group
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    .train 13549,1 >>训练你的职业技能
    .target Thotar
    .group
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 674,1 >>训练你的职业技能
    .target Kaplak
    .group
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .train 8092,1 >>训练你的职业技能
    .target Tai'jin
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳特|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T135489:0|t[叠层递归弓]（17s 51c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_交谈。从他那里买一个|r|T135499:0|t[叠层递归弓]|r
    .collect 2507,1,828,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ghrawt交谈|r
    .collect 2515,1200,828,1 << Hunter --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 << Hunter
    .group
step << Hunter
    #completewith MargozTurnIn
    +装备|T135499:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >>前往|cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛高兹|r
    .turnin 828 >>交任务: |cRXP_FRIENDLY_玛高兹|r
    .accept 827 >>接任务: |cRXP_LOOT_骷髅石|r
    .target Margoz
    .isQuestTurnedIn 806
    .group
step << Shaman
    #completewith Collars1
    .goto Durotar,53.18,29.15,50 >>前往Dustwind洞穴
    .solo
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >>前往Dustwind洞穴
    .isQuestTurnedIn 806
    .group
step
    #label Collars1
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>杀死|cRXP_ENEMY_燃烧之刃暴徒|r、|cRXD_ENEMY_Neophytes |r和|cRXP_ENEMY_Cultist|r。掠夺他们的|cRXP_Loot_COlars|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>杀死|cRXP_ENEMY_Thugs|r和|cRXX_ENEMY_Neophytes|r。掠夺他们的|cRXP_Loot_COlars|r
    >>杀死|cRXP_ENEMY_Cultist|r。掠夺他们获得|cRXP_Loot_Agent Pouch|r
    .complete 827,1 --Searing Collar (6)
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
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
    .solo
step << Shaman
    .goto Durotar,53.03,26.82
    .goto Durotar,47.31,17.89,30 >>|cRXP_WARN_跳到岩石上。通过定位你的角色直到看起来像是漂浮的，然后注销并重新登录，来执行注销跳过|r
    .link https://www.youtube.com/watch?v=9A6LHcLZeTU&ab >>|cRXP_WARN_单击此处查看示例|r
    .solo
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >>前往|cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛高兹|r
    .turnin 827 >>交任务: |cRXP_FRIENDLY_骷髅石|r
    .accept 829 >>接任务: |cRXP_LOOT_尼尔鲁·火刃|r
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >>Travel through the cave
    .group
step
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>杀死|cRXP_ENEMY_Dustwind野蛮人|r和|cRXX_ENEMY_ Dustwind风暴女巫|r
    >>|cRXP_WARN_这些暴徒逃走了。小心不要双重拉动|r
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .group
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_选择|r|T135158:0|t[Blemished Wooden Staff]|cRXP_WARN_a作为您的任务奖励并保存。您将在Orgrimmar接受员工培训|r
    .group
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 >>交任务: |cRXP_FRIENDLY_保卫商路|r
    .target Rezlak
    .group
step
--    .loop
    .xp 10 >>升级到10级
    --VV Enter loop coords
step << Hunter
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Orgrimmar
    .isOnQuest 829
    .group
step << !Hunter
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Orgrimmar
step << !Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Trak'gen|r交谈
    .vendor >>提供垃圾
    .target K'waii
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_交谈。向他购买|r|T135419:0|t[锐飞斧]|r
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .vendor >>提供垃圾
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #completewith ZeptoUC1
    +11级装备|T135421:0|t【尖刀飞斧】
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Shaman
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r
    .accept 6386 >>接任务: |cRXP_WARN_返回十字路口|r
    .target Doras
    .isOnQuest 6385
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .turnin 5654 >>交任务: |cRXP_FRIENDLY_虚弱妖术|r
    .trainer >>训练你的职业技能
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
    .turnin 5652 >>交任务: |cRXP_FRIENDLY_虚弱妖术|r
    .trainer >>训练你的职业技能
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮菲瑞多|r
    .train 122 >>训练你的职业技能
    .target Pephredo
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .target Nazgrel
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟祖克|r
	.accept 1963 >>接任务: |cRXP_WARN_碎手氏族|r << Orc Rogue/Troll Rogue
    .trainer >>训练你的职业技能
    .target Therzok
step << Shaman
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Kor'ghan|r交谈
    .accept 813 >>接任务: |cRXP_WARN_寻找解毒剂|r
    .target Kor'ghan
    .isOnQuest 812
step << Shaman
    #completewith CallofFire3
    >>|cRXP_WARN_放弃治疗需求。这将删除任务中的计时器，但你仍然可以这样做|r
    .abandon 812 >>放弃治疗需求
    .isOnQuest 812
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 829 >>交任务: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .accept 809 >>接任务: |cRXP_LOOT_雅克塞罗斯|r
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
    .train 1120 >>训练你的职业技能
    .target Mirket
step << Troll Warrior/Undead Warrior
    #completewith StaveTraining1
    .goto Orgrimmar,68.02,38.69,30 >>前往荣誉谷
step << Warrior
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 6546 >>训练你的职业技能
    .target Grezz Ragefist
step << Troll Warrior/Undead Warrior
    #label StaveTraining1
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 227 >>火车杆
    .target Hanashi
step << Troll Warrior/Undead Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r|cRXP_BUY_。从他那里购买|r|T135154:0|t[季度员工]|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Troll Warrior/Undead Warrior
    #completewith ZeptoUC1
    +当你达到11级时，装备|T135154:0|t[四分之一法杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌萨罗|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T132395:0|t[Tabar]（22秒14c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_交谈。从他那里购买|r|T132395:0|t[Tabar]|r
    .collect 1196,1,398,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    #completewith ZeptoUC1
    +装备|T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_交谈。从他那里购买|r|T135154:0|t[季度员工]|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #completewith ZeptoUC1
    +当你达到11级时，装备|T135154:0|t[四分之一法杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << !Hunter !Shaman
    #label LeaveOrg2
    #completewith ZeptoUC1
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step << Hunter
    #completewith HunterCrossRoadsVisit1
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
    .group
step << Shaman/Hunter
    #label VenomPoisonSacs
    .goto Durotar,42.47,19.99,50,0
    .goto Durotar,41.07,19.85,50,0
    .goto Durotar,40.21,17.21,50,0
    .goto Durotar,38.89,16.91,50,0
    .goto Durotar,38.13,19.90,50,0
    .goto Durotar,38.67,22.13,50,0
    .goto Durotar,36.91,25.63,50,0
    .goto Durotar,36.64,28.18,50,0
    .goto Durotar,36.40,30.95,50,0
    .goto Durotar,38.89,16.91
    >>杀死|cRXP_ENEMY_Venomtail Scorpids|r。掠夺他们的|cRXX_Loot_毒袋|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .isOnQuest 813
step << Hunter
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>沿河向南行驶，前往远观哨所
    >>在途中杀死|cRXP_ENEMY_Dreadmaw Crocolis|r。为|cRXP_Loot_Kron的护身符|r掠夺它们
    >>|cRXP_WARN_跳过并放弃这个任务，如果它不会下降|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith CallofFire3
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.51,51.48,50,0
    .goto Durotar,35.16,56.43,50,0
    >>沿着河往南走。在途中杀死|cRXP_ENEMY_Dreadmaw Crocolis|r。为|cRXP_Loot_Kron的护身符|r掠夺它们
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
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
    >>|cRXP_WARN_小心别从山上掉下来，小路很窄。如果你摔倒了，你可能会死|r
step << Shaman
    #label CallofFire3
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
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >>沿着小路下山
    >>|cRXP_WARN_小心别从山上掉下来，小路很窄。如果你摔倒了，你可能会死|r
step << Shaman
    .goto Durotar,34.92,54.87,50,0
    .goto Durotar,34.58,51.64,50,0
    .goto Durotar,34.33,48.97,50,0
    .goto Durotar,34.31,44.24
    >>杀死|cRXP_ENEMY_Dreadmaw鳄鱼|r。掠夺它们以获得|cRXX_Loot_Kron的护身符|r。
    >>|cRXP_WARN_跳过并放弃这个任务，如果它不会下降|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman/Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莎|r
    .turnin 816 >>交任务: |cRXP_FRIENDLY_丢失的孩子|r
    .target Misha Tor'kren
    .isQuestComplete 816
step << Shaman/Hunter
    #Label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >>前往远观哨所
    .zoneskip The Barrens
step << Shaman/Hunter
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_WARN_十字路口征兵|r
    .target Kargal Battlescar
step << Shaman/Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 809 >>交任务: |cRXP_FRIENDLY_雅克塞罗斯|r
    .accept 924 >>接任务: |cRXP_LOOT_恶魔之种|r
    .target Ak'Zeloth
    .isQuestTurnedIn 829
    .group
step << Shaman/Hunter
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_掠夺|r|T134095:0|t[有缺陷的力量石]|cRXP_WARN_下一个|r|cRXP-FRIENDLY_Ak'Zeloth|r|cRXP_WARN_。这个项目有一个30分钟的计时器，所以一定要快|r
    .turnin 926 >>交任务: |cRXP_FRIENDLY_有瑕疵的能量石|r
    .isOnQuest 924
    .group
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 1527 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .target Kranal Fiss
step << Hunter
    #completewith next
    .goto The Barrens,52.34,29.27,150 >>前往十字路口
step << Hunter
    #label HunterCrossRoadsVisit1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_索克|r, |cRXP_FRIENDLY_加兹罗格|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
    .goto The Barrens,52.62,29.84
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
    .accept 844 >>接任务: |cRXP_WARN_平原陆行鸟的威胁|r
    .goto The Barrens,52.23,31.00
    .accept 871 >>接任务: |cRXP_WARN_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_WARN_十字路口的补给品|r
    .goto The Barrens,51.50,30.87
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
    .goto The Barrens,51.93,30.32
    .target Zargh
    .target Sergra Darkthorn
    .target Thork
    .target Gazrog
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里买一个|r|T135499:0|t[叠层递归弓]|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Hunter
    #completewith DisruptTheAttacks
    +装备|T135499:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step << Shaman/Hunter
    #completewith DemonSeed
    >>杀死|cRXP_ENEMY_Plainstrider|r。掠夺他们的|cRXX_Loot_Beak|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Shaman/Hunter
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >>前往山顶
    .isOnQuest 924
step << Shaman/Hunter
    #completewith next
    +|cRXP_WARN_如果|r|cRXP_ENEMY_Rathorian|r|cRXP_WARN_i上升，他是15级稀有，请小心。准备好使用您的|r|T133728:0|t[微弱发光的头骨]|cRXP_WARN_and|r|T134712:0|t[真粘的胶水]|cRX P_WARN_if needed|r
    .unitscan Rathorian
step << Shaman/Hunter
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>右键单击祭坛。确保你身上有一块|T134095:0|t[有缺陷的力量石]
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman/Hunter
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,40 >>沿着你来的山往下走
    .isOnQuest 924
step << Shaman/Hunter
    #completewith DisruptTheAttacks
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXX_Loot_喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Hunter
    #completewith next
    >>杀死|cRXP_ENEMY_Water Seekers|r、|cRXD_ENEMY_Thornweavers|r和|cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,3 --Razormane Hunter (3)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
    .mob Razormane Hunter
step << Hunter
    .goto The Barrens,55.70,27.30
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step << Shaman/Hunter
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
step << Shaman/Hunter
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
step << Hunter
#loop
	.line The Barrens,53.12,28.72,53.97,28.10,54.64,27.09,55.47,26.94,55.44,25.70,55.51,24.54,54.75,23.51,53.74,23.66,53.35,25.16,52.99,26.88,53.12,28.72
	.goto The Barrens,53.12,28.72,25,0
	.goto The Barrens,53.97,28.10,25,0
	.goto The Barrens,54.64,27.09,25,0
	.goto The Barrens,55.47,26.94,25,0
	.goto The Barrens,55.44,25.70,25,0
	.goto The Barrens,55.51,24.54,25,0
	.goto The Barrens,54.75,23.51,25,0
	.goto The Barrens,53.74,23.66,25,0
	.goto The Barrens,53.35,25.16,25,0
	.goto The Barrens,52.99,26.88,25,0
	.goto The Barrens,53.12,28.72,25,0
    .xp 11+ >>升级到6980/8800xp
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_索克|r
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
    .goto The Barrens,51.50,30.87
    .turnin 844 >>交任务: |cRXP_FRIENDLY_平原陆行鸟的威胁|r
    .accept 845 >>接任务: |cRXP_LOOT_斑马的威胁|r
    .goto The Barrens,52.23,31.00
    .turnin 871 >>交任务: |cRXP_FRIENDLY_野猪人的头目|r
    .accept 872 >>接任务: |cRXP_WARN_野猪人的袭击|r
    .goto The Barrens,51.50,30.87
    .target Zargh
    .target Sergra Darkthorn
    .target Thork
    .isOnQuest 6386
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_索克|r
    .turnin 844 >>交任务: |cRXP_FRIENDLY_平原陆行鸟的威胁|r
    .accept 845 >>接任务: |cRXP_LOOT_斑马的威胁|r
    .goto The Barrens,52.23,31.00
    .turnin 871 >>交任务: |cRXP_FRIENDLY_野猪人的头目|r
    .accept 872 >>接任务: |cRXP_WARN_野猪人的袭击|r
    .goto The Barrens,51.50,30.87
    .target Sergra Darkthorn
    .target Thork
step << Shaman/Hunter
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    .collect 2515,1200,398,1 << Hunter --Sharp Arrow (1200)
    .target Barg
    .itemcount 2515,<800 << Hunter
step << Hunter
    #completewith ZeptoUC1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
    .accept 6384 >>接任务: |cRXP_WARN_飞往奥格瑞玛|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Devrak
    .zoneskip Orgrimmar
step << Shaman
    #completewith ZeptoUC1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Devrak
    .zoneskip Orgrimmar
step << Hunter
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Gryshka|r交谈
    .turnin 6384 >>交任务: |cRXP_FRIENDLY_飞往奥格瑞玛|r
    .accept 6385 >>接任务: |cRXP_WARN_双足飞龙管理员多拉斯|r
    .target Innkeeper Gryshka
step << Hunter
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r
    .accept 6386 >>接任务: |cRXP_WARN_返回十字路口|r
    .target Doras
step << Shaman/Hunter
    #label FindingAntidoteTurnin
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Kor'ghan|r交谈
    .turnin 813 >>交任务: |cRXP_FRIENDLY_寻找解毒剂|r
    .target Kor'ghan
    .isQuestComplete 813
step << Shaman
    #label Shaman12training
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 547 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <12,1
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌萨罗|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一把|T135154:0|t[四分之一法棍]（30s22c），就把它卖掉。如果你还不够的话，你稍后会拿到的
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_交谈。从他那里购买|r|T135154:0|t[季度员工]|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #completewith ZeptoUC1
    +装备|T135154:0|t[季度员工]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>前往荣誉谷
step << Hunter
    .goto Orgrimmar,66.06,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormakl|r
    .train 14281 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
    .train 24556 >>训练你的宠物法术
    .target Xao'tsu
    .xp <12,1
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r|cRXP_BUY_。从他那里买一个|r|T135499:0|t[叠层递归弓]|r
    .collect 2507,1,398,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #completewith ZeptoUC1
    +装备|T135499:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Shaman/Hunter
    #label Leaveorg2
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step << Shaman/Hunter
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接任务: |cRXP_LOOT_救命如救火|r
    .turnin 812 >>交任务: |cRXP_FRIENDLY_救命如救火|r
    .target Rhinag
step
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>上齐柏林塔
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    >>等待时饮用水 << Mage
    .zoneskip Tirisfal Glades
step << Orc Rogue/Troll Rogue
    #optional
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    .goto Undercity,63.25,48.56
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在战区与|r|cRXP_FRIENDLY_Archibald|r交谈
    .train 201 >>训练1h剑
    .target Archibald
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与盗贼区的|r|cRXP_FRIENDLY_Charles|r|cRXP_BUY_交谈。从他那里买一个|r|T135346:0|t[Cutlass]|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Orc Rogue/Troll Rogue
    #optional
    #completewith KillDevlin
    +装备|T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
	.collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六件|r|T134339:0|t[变色虫心]|cRXP_Buy_|r
	.target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #optional
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_在魔法区执行注销跳跃，将角色定位在最低楼梯的最高部分，直到看起来像是漂浮的，然后注销并返回|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>|cRXP_WARN_单击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
    .zoneskip Tirisfal Glades
step
    #completewith next
    .goto Tirisfal Glades,61.52,53.20,80 >>Travel to Brill
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r, Gretchen
    >>|cRXP_FRIENDLY_Gretchen|r|cRXP_WARN_i在二楼|r
    .accept 354 >>接任务: |cRXP_WARN_阿加曼德家族|r
    .accept 362 >>接任务: |cRXP_WARN_闹鬼的磨坊|r
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>接任务: |cRXP_WARN_死亡之寒|r
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .maxlevel 12
step << Warrior
    #completewith next
    .abandon 1505 >>Abandon Veteran Uzzek
    .isOnQuest 1505
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .accept 1818 >>接任务: |cRXP_WARN_迪林格尔|r
    .target Austil de Mon
    .xp <10,1
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃格隆·卡加尔|r
    .accept 1478 >>接任务: |cRXP_LOOT_哈加尔的召唤|r
    .target Ageron Kargal
    .xp <10,1
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r inside the inn
    .accept 1885 >>接任务: |cRXP_LOOT_米奈特·卡加德|r
    .target Marion Call
    .xp <10,1
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r inside the inn
    .accept 1881 >>接任务: |cRXP_WARN_安娜斯塔西娅|r
    .target Cain Firesong
    .xp <10,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Priest/Shaman
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r <<Warrior/Rogue
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[冰牛奶]|cRXP_Buy_和|r|T134532:0|t[红色斑点蘑菇]|cRX|r << Warlock
    .vendor >>供应商垃圾箱
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温特斯夫人|r
    >>|cRXP_BUY_购买一个或多个|r|T133634:0|t[棕色小袋子]|cRXP_Buy_from|r|cRXP-FRIENDLY_her|r
    .collect 4496,1,398,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #optional
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .accept 427 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .target Executor Zygand
    .maxlevel 11
step
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wanted Poster|r
    .accept 398 >>接任务: |cRXP_WARN_悬赏：蛆眼|r
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .accept 358 >>接任务: |cRXP_LOOT_盗墓贼|r
    .target Magistrate Sevren
    .maxlevel 12
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .accept 367 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .accept 404 >>接任务: |cRXP_LOOT_腐烂的爪子|r
    .target Deathguard Dillinger
    .maxlevel 11
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1818 >>交任务: |cRXP_FRIENDLY_迪林格尔|r
    .accept 1819 >>接任务: |cRXP_LOOT_切割者奥拉格|r
    .target Deathguard Dillinger
    .isOnQuest 1818
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_单击地面上的|r|cRXP_WARN_烟雾触发器|r|cRXP_WARN_。这将调用|r|cRXP_ENEMY_Ulag|r|cRXP_WARN_杀了他|r
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
step
    #completewith Pumpkins
    >>杀死你看到的任何|cRXP_ENEMY_Darkhound|r。掠夺他们的|cRXP_Loot_Blood|r
    >>|cRXP_WARN_您将从本任务的后续任务中收到|r|T133849:0|t[坍落的沙子]|cRXP_WARN_|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step
    #optional
    #label Claws
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98
    >>杀死|cRXP_ENEMY_Rotting Dead|r和|cRXD_ENEMY_Ravaged Corses|r。掠夺它们的|cRXP_Loot_爪|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
    .isOnQuest 404
step
    #optional
    #completewith Pumpkins
    >>杀死您看到的任何|cRXP_ENEMY_Duskbat|r。掠夺他们的|cRXP_Loot_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Pumpkins
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_西米尔|r
    .accept 365 >>接任务: |cRXP_WARN_悲伤之地|r
    .target Deathguard Simmer
    .maxlevel 11
step
    #optional
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>掠夺在田地里找到的|cRXP_Loot_Pumpkins|r。
    .complete 365,1 --Tirisfal Pumpkin (10)
    .isOnQuest 365
step
    #optional
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
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step
    #completewith next
    >>杀死您看到的任何|cRXP_ENEMY_Duskbat|r。掠夺他们的|cRXP_Loot_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #label Darkhounds1
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51
    >>杀死你看到的任何|cRXP_ENEMY_Darkhound|r。掠夺他们的|cRXP_Loot_Blood|r
    >>|cRXP_WARN_您将从本任务的后续任务中收到|r|T133849:0|t[坍落的沙子]|cRXP_WARN_|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step
    #completewith Brillturnins2
    .goto Tirisfal Glades,58.20,51.43,120 >>Travel back to Brill
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
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
    .accept 374 >>接任务: |cRXP_WARN_死亡证明|r
    .goto Tirisfal Glades,60.93,52.01
    .target Deathguard Dillinger
    .target Executor Zygand
    .target Apothecary Johaan
    .target Deathguard Burgess
    .isQuestComplete 365
    .isQuestComplete 427
    .isQuestComplete 404
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 404 >>交任务: |cRXP_FRIENDLY_腐烂的爪子|r
    .accept 426 >>接任务: |cRXP_WARN_磨坊告急|r
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 370 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .goto Tirisfal Glades,60.58,51.77
    .accept 374 >>接任务: |cRXP_WARN_死亡证明|r
    .goto Tirisfal Glades,60.93,52.01
    .target Deathguard Dillinger
    .target Executor Zygand
    .target Apothecary Johaan
    .target Deathguard Burgess
    .isQuestComplete 427
    .isQuestComplete 404
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 404 >>交任务: |cRXP_FRIENDLY_腐烂的爪子|r
    .accept 426 >>接任务: |cRXP_WARN_磨坊告急|r
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .turnin 365 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 407 >>接任务: |cRXP_WARN_悲伤之地|r
    .goto Tirisfal Glades,59.45,52.40
    .target Deathguard Dillinger
    .target Apothecary Johaan
    .isQuestComplete 404
    .isQuestComplete 365
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .turnin 365 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 407 >>接任务: |cRXP_WARN_悲伤之地|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 370 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .goto Tirisfal Glades,60.58,51.77
    .accept 374 >>接任务: |cRXP_WARN_死亡证明|r
    .goto Tirisfal Glades,60.93,52.01
    .target Executor Zygand
    .target Apothecary Johaan
    .target Deathguard Burgess
    .isQuestComplete 427
    .isQuestComplete 365
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 370 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .goto Tirisfal Glades,60.58,51.77
    .accept 374 >>接任务: |cRXP_WARN_死亡证明|r
    .goto Tirisfal Glades,60.93,52.01
    .target Executor Zygand
    .target Apothecary Johaan
    .target Deathguard Burgess
    .isQuestComplete 427
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 404 >>交任务: |cRXP_FRIENDLY_腐烂的爪子|r
    .accept 426 >>接任务: |cRXP_WARN_磨坊告急|r
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .goto Tirisfal Glades,59.45,52.40
    .target Deathguard Dillinger
    .target Apothecary Johaan
    .isQuestComplete 404
step
    #label Brillturnins2
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaan
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .accept 1818 >>接任务: |cRXP_WARN_迪林格尔|r
    .target Austil de Mon
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1818 >>交任务: |cRXP_FRIENDLY_迪林格尔|r
    .accept 1819 >>接任务: |cRXP_LOOT_切割者奥拉格|r
    .target Deathguard Dillinger
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_单击地面上的|r|cRXP_WARN_烟雾触发器|r|cRXP_WARN_。这将调用|r|cRXP_ENEMY_Ulag|r|cRXP_WARN_杀了他|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1819 >>交任务: |cRXP_FRIENDLY_切割者奥拉格|r
    .accept 1820 >>接任务: |cRXP_WARN_库勒曼|r
    .target Deathguard Dillinger
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃格隆·卡加尔|r
    .accept 1478 >>接任务: |cRXP_LOOT_哈加尔的召唤|r
    .target Ageron Kargal
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r inside the inn
    .accept 1885 >>接任务: |cRXP_LOOT_米奈特·卡加德|r
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r inside the inn
    .accept 1881 >>接任务: |cRXP_WARN_安娜斯塔西娅|r
    .target Cain Firesong
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step << Warlock/Mage
    #label UCflightpath1
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
step << Warlock/Mage
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    .collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六件|r|T134339:0|t[变色虫心]|cRXP_Buy_|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1478 >>交任务: |cRXP_FRIENDLY_哈加尔的召唤|r
    .accept 1473 >>接任务: |cRXP_WARN_虚空中的生物|r
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
step << Undead Priest
    #completewith TouchofWeakness
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << Undead Priest
    #completewith TouchofWeakness
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step << Undead Priest
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    .collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六件|r|T134339:0|t[变色虫心]|cRXP_Buy_|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Undead Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
    .turnin 5660 >>交任务: |cRXP_FRIENDLY_虚弱之触|r
    .target Aelthalyste
    .isOnQuest 5660
step << Undead Priest
    #label TouchofWeakness
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
    .accept 5658 >>接任务: |cRXP_WARN_虚弱之触|r
    .turnin 5658 >>交任务: |cRXP_FRIENDLY_虚弱之触|r
    .target Aelthalyste
step << Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .goto Undercity,63.25,48.56
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    #optional
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1885 >>交任务: |cRXP_FRIENDLY_米奈特·卡加德|r
    .accept 1886 >>接任务: |cRXP_WARN_亡灵哨兵|r
    .target Mennet Carkad
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在战区与|r|cRXP_FRIENDLY_Archibald|r交谈
    .train 201 >>训练1h剑
    .target Archibald
    .money <0.3023
step << Rogue
    #optional
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与盗贼区的|r|cRXP_FRIENDLY_Charles|r|cRXP_BUY_交谈。从他那里买一个|r|T135346:0|t[Cutlass]|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith KillDevlin
    +装备|T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    .collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六件|r|T134339:0|t[变色虫心]|cRXP_Buy_|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock/Mage/Rogue
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
step << Undead Priest
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
step
    #optional
    #completewith ScarletCrusade1
    >>收集|cRXP_OOT_Scarlet徽章戒指|r。您现在不必完成此步骤
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step << Warlock
    #optional
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>抢劫|cRXP_PICK_Perrine的胸脯|r for |T133733:0|t[Egalin的格里莫瓦]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #optional
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
    >>杀死|cRXP_ENEMY_Captain Perrine|r、|cRXD_ENEMY_Zealouts|r和|cRXP_ENEMY_Missionaries|r。
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
    .mob Captain Perrine
    .mob Scarlet Zealot
    .mob Scarlet Missionary
    .isOnQuest 370
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>掠夺|cRXP_PICK_Perrine的胸部|r在地上|T133733:0|t[Egalin的格里莫瓦]
    .complete 1473,1 --Egalin's Grimoire (1)
step << Warlock
    #completewith next
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1473 >>交任务: |cRXP_FRIENDLY_虚空中的生物|r
    .accept 1471 >>接任务: |cRXP_LOOT_誓缚|r
    .target Carendin Halgar
step << Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>在召唤圈使用|T134416:0|t[召唤符文]
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
step << Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_执行注销跳过，将角色定位在最低楼梯的最高部分，直到看起来像是漂浮的，然后注销并返回|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>|cRXP_WARN_单击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith next
    >>杀死您看到的任何|cRXP_ENEMY_Duskbat|r。掠夺他们的|cRXP_Loot_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,47.60,44.03,150 >>向西北方向行驶，前往Agamand Mills
    .isOnQuest 362
step
    #optional
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_OOT_Thurman's Letter|r]|cRXP-WARN_may drop from these mobs T134939,0|t[| cRXP_LOOT_Therman’s Letter |r]| cRXP-WAR_may drop。如果任务完成，请接受它|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_WARN_未寄出的信件|r
    .use 2839
    .isOnQuest 362
step
    #optional
    #sticky
    #label MillsOverun
    >>杀死|cRXP_ENEMY_Soldier|r和|cRXD_ENEMY_Bonecasters|r。掠夺他们的|cRXP_Loot_Ribs|r和| cRXP_Loot_Sulls|r
    .complete 426,1 --Notched Rib (5)
    .complete 426,2 --Blackened Skull (3)
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .isOnQuest 426
step
    #optional
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>杀死|cRXP_ENEMY_Devlin|r。掠夺他的|cRXX_Loot_Eremains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    #optional
    .goto Tirisfal Glades,49.34,36.02
    >>杀死|cRXP_ENEMY_Nissa|r。为她抢劫她|cRXX_Loot_LUENTS|r。她可以在大楼里
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
    .isOnQuest 354
step
    #optional
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
    .isOnQuest 354
step
    #optional
    #requires MillsOverun
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >>Travel down the hills.
    >>|cRXP_WARN_小心。不要承受太多的坠落伤害。为了安全起见，请遵循航路点|r
    .isQuestComplete 354
step
    #optional
    #requires MillsOverun
    #completewith next
    >>杀死|cRXP_ENEMY_Gnolls|r和|cRXP_ENEMY_Mongrels|r。掠夺它们的|cRXP_Loot_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
    .isOnQuest 358
step
    #optional
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>杀死|cRXP_ENEMY_Maggot Eye|r。掠夺他的|cRXX_Loot_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>杀死|cRXP_ENEMY_Murlocs|r。掠夺他们的|cRXX_Loot_Scales|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step
    #optional
    #completewith RotHideGnolls
    >>杀死您看到的任何|cRXP_ENEMY_Duskbat|r。掠夺他们的|cRXP_Loot_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label RotHideGnolls
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>杀死|cRXP_ENEMY_Mongrels|r和|cRXX_ENEMY_Gravebragers|r。掠夺他们的|cRXD_Loot_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .isOnQuest 358
step
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 426 >>交任务: |cRXP_FRIENDLY_磨坊告急|r
    .target Deathguard Dillinger
    .isQuestComplete 426
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 368 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 369 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 369 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 398 >>交任务: |cRXP_FRIENDLY_悬赏：蛆眼|r
    .turnin 370 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 371 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .target Executor Zygand
    .isQuestComplete 370
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 398 >>交任务: |cRXP_FRIENDLY_悬赏：蛆眼|r
    .target Executor Zygand
    .isQuestComplete 398
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .accept 371 >>接任务: |cRXP_WARN_与血色十字军的战争|r
    .target Executor Zygand
    .isQuestTurnedIn 370
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 358 >>交任务: |cRXP_FRIENDLY_盗墓贼|r
    .accept 359 >>接任务: |cRXP_LOOT_亡灵卫兵的职责|r
    .target Magistrate Sevren
    .isQuestComplete 358
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r
    .accept 359 >>接任务: |cRXP_LOOT_亡灵卫兵的职责|r
    .target Magistrate Sevren
    .isQuestTurnedIn 358
step
    #completewith HorrorsandSpirits
    +|cRXP_WARN_绑定|r|T133849:0|t[坍落沙]|cRXP_WARN_。保存以备不时之需|r
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_her购买|r|T132891:0|t[粗线程]|cRXP-Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r, Gretchen
    >>|cRXP_FRIENDLY_Gretchen|r|cRXP_WARN_i在二楼|r
    .turnin 361 >>交任务: |cRXP_FRIENDLY_未寄出的信件|r
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .accept 1821 >>接任务: |cRXP_WARN_阿加曼德家传武器|r << Warrior
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .goto Tirisfal Glades,61.89,52.73
    .target Yvette Farthing
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r, Gretchen
    >>|cRXP_FRIENDLY_Gretchen|r|cRXP_WARN_i在二楼|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .accept 1821 >>接任务: |cRXP_WARN_阿加曼德家传武器|r << Warrior
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r
    >>|cRXP_FRIENDLY_Gretchen|r|cRXP_WARN_i在二楼|r
    .turnin 361 >>交任务: |cRXP_FRIENDLY_未寄出的信件|r
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .accept 1821 >>接任务: |cRXP_WARN_阿加曼德家传武器|r << Warrior
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.72,52.29
    .target Yvette Farthing
    .target Coleman Farthing
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .accept 1821 >>接任务: |cRXP_WARN_阿加曼德家传武器|r << Warrior
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .group
    .isQuestComplete 354
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r, Gretchen
    >>|cRXP_FRIENDLY_Gretchen|r|cRXP_WARN_i在二楼|r
    .turnin 361 >>交任务: |cRXP_FRIENDLY_未寄出的信件|r
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .goto Tirisfal Glades,61.89,52.73
    .target Yvette Farthing
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r, Gretchen
    >>|cRXP_FRIENDLY_Gretchen|r|cRXP_WARN_i在二楼|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r
    >>|cRXP_FRIENDLY_Gretchen|r|cRXP_WARN_i在二楼|r
    .turnin 361 >>交任务: |cRXP_FRIENDLY_未寄出的信件|r
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.72,52.29
    .target Yvette Farthing
    .target Coleman Farthing
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .accept 355 >>接任务: |cRXP_WARN_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .isQuestComplete 354
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1766 >>列车|T132219:0|t[踢]
    .target Rwag
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >>列车|T136168:0|t[健康漏斗]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Mage/Priest/Shaman
    >>|cRXP_BUY_从她那里购买|r|T134532:0|t[红色斑点蘑菇]|cRXP_Buy_|r <<Warrior/Rogue
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[冰牛奶]|cRXP_Buy_和|r|T134532:0|t[红点蘑菇]|cRX|r << Warlock/Hunter
    .vendor >>供应商垃圾箱
    .collect 1179,20,359,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,359,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,359,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,359,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 359 >>交任务: |cRXP_FRIENDLY_亡灵卫兵的职责|r
    .accept 360 >>接任务: |cRXP_WARN_向塞弗伦回报|r
    .accept 356 >>接任务: |cRXP_WARN_巡查后方|r
    .target Deathguard Linnea
    .isQuestTurnedIn 358
    .maxlevel 13
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .accept 356 >>接任务: |cRXP_WARN_巡查后方|r
    .target Deathguard Linnea
    .maxlevel 13
step
    #optional
    #completewith HorrorsandSpirits
    >>杀死您看到的任何|cRXP_ENEMY_Duskbat|r。掠夺他们的|cRXP_Loot_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
#optional
    #completewith next
    >>杀死|cRXP_ENEMY_流血恐怖|r和|cRXX_ENEMY_流浪灵魂|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
    .isOnQuest 356
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>掠夺地面上的任何植物以获得|cRXP_PICK_Balnir Snapdragon |r
    .complete 1882,1 --Balnir Snapdragons (1)
step
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
    .isOnQuest 356
step << Priest/Warlock
    #optional
    #completewith Scarletrings
    >>|cRXP_WARN_收集3叠|r|T132889:0|t[亚麻布]|cRXP_WARN_form作为你的小魔杖。这是在银松森林之前获得足够食物的最后机会|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 371
step
    #optional
    #completewith next
    >>收集|cRXP_OOT_Scarlet徽章戒指|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
    #optional
    .goto Tirisfal Glades,78.82,56.14,20,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>杀死|cRXP_ENEMY_瓦琼上尉|r和|cRXX_ENEMY_Scarlet修士|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Scarlet修士|r|cRXP_WARN_can cast|r|T135929:0|t[小治疗]
    .complete 371,1 --Captain Vachon (1)
    .complete 371,2 --Scarlet Friar (5)
    .mob Captain Vachon
    .mob Scarlet Friar
    .isOnQuest 371
step
    #optional
    #label ScarletRings
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>收集|cRXP_OOT_Scarlet徽章戒指|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest/Warlock
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>|cRXP_WARN_收集3叠|r|T132889:0|t[亚麻布]|cRXP_WARN_form作为你的小魔杖。这是在银松森林之前获得足够食物的最后机会|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>杀死您看到的任何|cRXP_ENEMY_Duskbat|r。掠夺他们的|cRXP_Loot_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #loop
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
    .isOnQuest 369
step
    #optional
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >>Travel back to Linnea
    .isQuestComplete 356
step
    #optional
    #completewith next
    >>完成杀戮|cRXP_ENEMY_Duskbats|r。掠夺他们的|cRXX_Loot_Pelt|r
    >>|cRXP_WARN_如果你的rng表现不好，你可以跳过这个任务|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 356 >>交任务: |cRXP_FRIENDLY_巡查后方|r
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_her购买|r|T132891:0|t[粗线程]|cRXP-Buy_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r, |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 374 >>交任务: |cRXP_FRIENDLY_死亡证明|r
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>交任务: |cRXP_FRIENDLY_向塞弗伦回报|r
    .turnin 355 >>交任务: |cRXP_FRIENDLY_与塞弗伦交谈|r
    .accept 408 >>接任务: |cRXP_WARN_家族墓穴|r
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 492 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .goto Tirisfal Glades,59.45,52.39
    .target Deathguard Burgess
    .target Executor Zygand
    .target Magistrate Sevren
    .target Apothecary Johaan
    .isQuestComplete 371
    .isQuestComplete 374
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r, |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 374 >>交任务: |cRXP_FRIENDLY_死亡证明|r
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>交任务: |cRXP_FRIENDLY_向塞弗伦回报|r
    .turnin 355 >>交任务: |cRXP_FRIENDLY_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 492 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .goto Tirisfal Glades,59.45,52.39
    .target Deathguard Burgess
    .target Executor Zygand
    .target Magistrate Sevren
    .target Apothecary Johaan
    .isQuestComplete 371
    .isQuestComplete 374
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r, |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 360 >>交任务: |cRXP_FRIENDLY_向塞弗伦回报|r
    .turnin 355 >>交任务: |cRXP_FRIENDLY_与塞弗伦交谈|r
    .accept 408 >>接任务: |cRXP_WARN_家族墓穴|r
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 492 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .goto Tirisfal Glades,59.45,52.39
    .target Magistrate Sevren
    .target Apothecary Johaan
    .isOnQuest 360
    .isQuestComplete 369
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r, |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 360 >>交任务: |cRXP_FRIENDLY_向塞弗伦回报|r
    .turnin 355 >>交任务: |cRXP_FRIENDLY_与塞弗伦交谈|r
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 492 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .goto Tirisfal Glades,59.45,52.39
    .target Magistrate Sevren
    .target Apothecary Johaan
    .isOnQuest 360
    .isQuestComplete 369
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 369 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 492 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r upstairs
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588,1 >>列车|T135926:0|t[内火]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145,1 >>火车|T135812:0|t[火球等级3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384,1 >>列车|T132223:0|t[超功率]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1766,1 >>列车|T132219:0|t[踢]
    .target Rwag
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >>列车|T136168:0|t[健康漏斗]
    .target Rupert Boch
    .xp <12,1
step
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >>前往Agamand Mills的地下室
    .isOnQuest 408
    .group
step << Warrior
    #completewith CaptainDargol
    >>掠夺地面上的|cRXP_PICK_Agamand武器架|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #completewith next
    >>杀死|cRXP_ENEMY_Wailing Ancestors|r和|cRXP_ENEMY_Rotting Ancestors |r
    >>|cRXP_WARN_小心！这个地下室里的暴民动态重生！|r
    .complete 408,1 --Wailing Ancestor (8)
    .complete 408,2 --Rotting Ancestor (8)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .isOnQuest 408
    .group 2
step
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>杀死|cRXP_ENEMY_Dargol|r上尉。为他的|cRXP-Loot_Skull|r抢劫他。他在地下室的底部
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
    .group 2
step << Warrior
    #completewith next
    >>掠夺地面上的|cRXP_PICK_Agamand武器架|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
#loop
	.line Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>杀死|cRXP_ENEMY_Wailing Ancestors|r和|cRXP_ENEMY_Rotting Ancestors |r
    >>|cRXP_WARN_小心！这个地下室里的暴民动态重生！|r
    .complete 408,1 --Wailing Ancestor (8)
    .complete 408,2 --Rotting Ancestor (8)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .isOnQuest 408
    .group 2
step << Warrior
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87
    >>掠夺地面上的|cRXP_PICK_Agamand武器架|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_跳到其中一个武器架上。通过注销并重新登录来执行注销跳过|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >>|cRXP_WARN_单击此处查看示例|r
    .isQuestComplete 408
    .group
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 408 >>交任务: |cRXP_FRIENDLY_家族墓穴|r
    .target Magistrate Sevren
    .isQuestComplete 408
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 1821 >>交任务: |cRXP_FRIENDLY_阿加曼德家传武器|r
    .target Coleman Farthing
    .isQuestComplete 1821
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 1822 >>交任务: |cRXP_FRIENDLY_祖传武器|r
    .target Coleman Farthing
    .isQuestTurnedIn 1821
    .group
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的血色狂热者|r
    .turnin 407 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .target Captured Scarlet Zealot
    .isOnQuest 407
step
    #optional
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的巡山人|r
    .turnin 492 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .target Captured Mountaineer
    .isOnQuest 492
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588,1 >>列车|T135926:0|t[内火]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 6074 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145,1 >>火车|T135812:0|t[火球等级3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 2137 >>训练你的职业技能
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384,1 >>列车|T132223:0|t[超功率]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 1160 >>训练你的职业技能
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1766,1 >>列车|T132219:0|t[踢]
    .target Rwag
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1758 >>训练你的职业技能
    .target Rwag
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >>列车|T136168:0|t[健康漏斗]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 6222 >>训练你的职业技能
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .turnin 1882 >>交任务: |cRXP_FRIENDLY_巴尼尔农场|r
    .target Anastasia Hartwell
step << Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead
    #completewith UCflightpath3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << !Undead
    #completewith UCflightpath3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step << !Undead
    #label UCflightpath3
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    >>|cRXP_WARN_如果您已经选择了飞行路线，请跳过此步骤！|r
    .target Michael Garrett
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_在战区与|r|cRXP_FRIENDLY_Archibald|r交谈
    .train 201 >>训练1h剑
    .target Archibald
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与盗贼区的|r|cRXP_FRIENDLY_Charles|r|cRXP_BUY_交谈。从他那里买一个|r|T135346:0|t[Cutlass]|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #completewith Entersilverpine
    +装备|T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Undead Warrior
    #completewith Entersilverpine
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Benijah|r|cRXP_BUY_交谈。从他那里购买|r|T135154:0|t[季度员工]|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #completewith Entersilverpine
    +装备|T135154:0|t[季度员工]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    .collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六件|r|T134339:0|t[变色虫心]|cRXP_Buy_|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Priest
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉文尼亚·克洛文|r
    .train 7411 >>火车|T136244:0|t[迷人]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克多|r
    .train 3908 >>列车|T136249:0|t[剪裁]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Turn all your |r|T132889:0|t[亚麻布]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克多|r
    .train 7623 >>火车|T132662:0|t[棕色亚麻长袍]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_从她那里购买|r|T132891:0|t[粗牙螺纹]|cRXP_Buy_|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_尽可能多地创建|r|T132662:0|t[棕色亚麻长袍]|cRXP_WARN_a|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_交谈。从他那里买一个|r|T133942:0|t[铜棒]|cRXP_Buy_和|r|T135435:0|t[Simple Wood]|r
    >>|cRXP_WARN_取消您制作的所有|r|T132662:0|t[棕色亚麻长袍]|cRXP_WARN_并创建|r|T135225:0|t[Runed Copper Rod]
    >>|cRXP_WARN_如果您没有得到|r|T132867:0|t[小魔法精华]|cRXP_WARN_然后从|r|cRXP-FRIENDLY_Thaddeus|r|cRXP_WARN_购买一个（如果有）。否则，请稍后完成此步骤|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛考布·维恩|r
    .train 14293 >>火车|T135139:0|t[小魔杖]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_创建一个|r|T135139:0|t[小魔杖]
    >>|cRXP_WARN_如果您没有得到|r|T132867:0|t[小魔法精华]|cRXP_WARN_然后从|r|cRXP-FRIENDLY_Thaddeus|r|cRXP_WARN_购买一个（如果有）。否则，请稍后完成此步骤|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    #completewith Entersilverpine
    +装备|T135139:0|t[小魔杖]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #optional
    .abandon 806 >>放弃黑暗风暴
    .isOnQuest 806
step
    #optional
    .abandon 408 >>放弃家庭地穴
    .isOnQuest 408
step << Warrior
    #optional
    .abandon 1821 >>放弃阿甘传家室
    .isOnQuest 1821
step
    #label LeaveUndercity3
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
step
    #label Entersilverpine
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .zoneskip Silverpine Forest
]])
