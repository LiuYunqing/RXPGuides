local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
#era/som--h
<< Horde
#name 1-6 Tauren
#version 1
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 1-20
#defaultfor Tauren
#next 6-13 Tauren

step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +|cRXP_WARN_您选择了一个针对牛头人的指南。这个区域对你来说不太合适，因为缺少了一个只为牛头人设置的主要任务线。建议您选择与开始时相同的起始区域|r
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .accept 747 >>接任务: |cRXP_WARN_开始狩猎|r
    .target Grull Hawkwind
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长|r
    .accept 752 >>接任务: |cRXP_LOOT_一件琐事|r
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_杀死|cRXP_ENEMY_Plainstriders|r。掠夺它们，直到你拥有价值10铜的供应商物品（包括你的盔甲）|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡文尼·柔风|r
    .vendor >>供应商垃圾箱
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 6673 >>火车|T132333:0|t[战斗呐喊]
    .target Harutt Thunderhorn
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .train 8017 >>火车|T136086:0|t[火箭武器]
    .target Meela Dawnstrider
step
    #completewith next
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXP_Loot_Meat|r和|cRXP-Loot_Features|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长的母亲|r
    .turnin 752 >>交任务: |cRXP_FRIENDLY_一件琐事|r
    .accept 753 >>接任务: |cRXP_LOOT_一件琐事|r
    .target Greatmother Hawkwind
step
    .goto Mulgore,50.22,81.37
    >>在|cRXP_FRIENDLY_Hawkwind|r后面的井上抢劫|cRXP_Loot_Water Pitcher|r
    .complete 753,1 --Water Pitcher (1)
step
    .goto Mulgore,50.23,79.38,50,0
    .goto Mulgore,51.02,78.68,50,0
    .goto Mulgore,50.85,75.68,50,0
    .goto Mulgore,48.43,77.18,50,0
    .goto Mulgore,47.10,76.54,50,0
    .goto Mulgore,45.77,80.39,50,0
    .goto Mulgore,45.56,82.39,50,0
    .goto Mulgore,47.36,83.05
    >>杀死|cRXP_ENEMY_Plainstriders|r。掠夺他们的|cRXP_Loot_Meat|r和|cRXP-Loot_Features|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>交任务: |cRXP_FRIENDLY_开始狩猎|r << Druid
    .turnin 747 >>交任务: |cRXP_FRIENDLY_开始狩猎|r << !Druid
    .accept 3091 >>接任务: |cRXP_LOOT_简易便笺|r << Warrior
    .accept 3092 >>接任务: |cRXP_LOOT_风化便笺|r << Hunter
    .accept 3093 >>接任务: |cRXP_WARN_符文便笺|r << Shaman
    .accept 3094 >>接任务: |cRXP_LOOT_绿色便笺|r << Druid
    .accept 750 >>接任务: |cRXP_WARN_继续狩猎|r
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡文尼·柔风|r
    >>|cRXP_BUY_从她那里购买|r|T132384:0|t[Light Shots]|cRXP_Buy_|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >>供应商垃圾箱
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长|r
    .turnin 753 >>交任务: |cRXP_FRIENDLY_一件琐事|r
    .accept 755 >>接任务: |cRXP_WARN_大地之母仪祭|r
    .target Chief Hawkwind
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Marjak|r|cRXP_BUY_交谈。向他购买|r|T135139:0|t[短棍]|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak
step << Rogue
    #completewith RitesoftheEarthmother
    +装备短棍
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>杀死|cRXP_ENEMY_Mountain Cougars|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_灰舌先知|r
    >>|cRXP_WARN_Grind mobs on the way|r
    .turnin 755 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
    .accept 757 >>接任务: |cRXP_WARN_力量仪祭|r
    .target Seer Graytongue
step
    .goto Mulgore,43.21,89.26,50,0
    .goto Mulgore,44.64,91.58,50,0
    .goto Mulgore,45.82,90.52,50,0
    .goto Mulgore,46.35,91.45,50,0
    .goto Mulgore,48.05,91.83,50,0
    .goto Mulgore,49.25,90.69,50,0
    .goto Mulgore,50.98,90.37,50,0
    .goto Mulgore,49.10,89.50,50,0
    .goto Mulgore,47.06,88.64,50,0
    .goto Mulgore,45.06,89.89,50,0
    .goto Mulgore,44.60,90.86
    >>杀死|cRXP_ENEMY_Mountain Cougars|r。掠夺它们的|cRXX_Loot_Pelt|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
#loop
	.line Mulgore,45.56,87.95,46.92,87.84,48.67,86.83,50.65,85.87,51.01,83.71,52.06,81.53,51.87,79.58,51.67,77.39,51.95,75.16,50.32,76.33,48.85,75.82,47.41,75.30,46.80,78.21,45.84,80.41,45.03,82.15,44.09,83.89,43.90,86.08,45.56,87.95
	.goto Mulgore,45.56,87.95,25,0
	.goto Mulgore,46.92,87.84,25,0
	.goto Mulgore,48.67,86.83,25,0
	.goto Mulgore,50.65,85.87,25,0
	.goto Mulgore,51.01,83.71,25,0
	.goto Mulgore,52.06,81.53,25,0
	.goto Mulgore,51.87,79.58,25,0
	.goto Mulgore,51.67,77.39,25,0
	.goto Mulgore,51.95,75.16,25,0
	.goto Mulgore,50.32,76.33,25,0
	.goto Mulgore,48.85,75.82,25,0
	.goto Mulgore,47.41,75.30,25,0
	.goto Mulgore,46.80,78.21,25,0
	.goto Mulgore,45.84,80.41,25,0
	.goto Mulgore,45.03,82.15,25,0
	.goto Mulgore,44.09,83.89,25,0
	.goto Mulgore,43.90,86.08,25,0
	.goto Mulgore,45.56,87.95,25,0
    .xp 3+1150 >>升级到1150+/1400xp
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_升级|cRXP_ENEMY_Plainstriders|r。掠夺它们，直到你有价值2白银的供应商物品|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_升级|cRXP_ENEMY_Plainstriders|r。掠夺它们，直到你有价值1白银的供应商物品|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>交任务: |cRXP_FRIENDLY_继续狩猎|r
    .accept 780 >>接任务: |cRXP_WARN_斗猪|r
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡文尼·柔风|r
    .vendor >>供应商垃圾箱
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>接任务: |cRXP_WARN_刺鬃酋长|r
    .target Brave Windfeather
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
    .train 100 >>列车|T132337:0|t[收费]
    .train 772 >>列车|T132155:0|t[伦德]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
    .train 772 >>列车|T132155:0|t[伦德]
    .target Harutt Thunderhorn
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .turnin 3092 >>交任务: |cRXP_FRIENDLY_风化便笺|r
    .train 1978 >>列车|T132204:0|t[蛇刺]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>交任务: |cRXP_FRIENDLY_绿色便笺|r
    .train 8921 >>列车|T136096:0|t[月火]
    .target Gart Mistrunner
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鸦羽先知|r
    .accept 1519 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .turnin 3093 >>交任务: |cRXP_FRIENDLY_符文便笺|r
    .train 8042 >>列车|T136026:0|t[地震]
    .target Meela Dawnstrider
step
    .goto Mulgore,52.70,79.32,50,0
    .goto Mulgore,54.19,79.83,50,0
    .goto Mulgore,55.73,80.28,50,0
    .goto Mulgore,56.48,81.67,50,0
    .goto Mulgore,55.63,83.86,50,0
    .goto Mulgore,56.03,85.53,50,0
    .goto Mulgore,55.80,87.71,50,0
    .goto Mulgore,56.72,89.27,50,0
    .goto Mulgore,57.92,89.27,50,0
    .goto Mulgore,57.69,86.77,50,0
    .goto Mulgore,57.31,85.39,50,0
    .goto Mulgore,55.99,85.46
    >>杀死|cRXP_ENEMY_Battleboars|r。掠夺它们的|cRXP_Loot_Franks |r和|cRXP-Loot_Snouts|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith next
    .goto Mulgore,59.67,83.33,30 >>Travel through the cave
step
    #completewith DirtyMap
    >>杀死|cRXP_ENEMY_Bristleback Quilboars|r。掠夺它们的|cRXX_Loot_Barret|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>杀死|cRXP_ENEMY_Bristleback萨满|r。掠夺他们的|cRXX_Loot_Salve|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>在大小屋内杀死|cRXP_ENEMY_首领Sharptus Thornmant|r。抢劫他的|cRXP_Loot_Head|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>进入洞穴。在地面上掠夺|T134269:0|t[|cRXP_PICK_Dirt-tained Map|r]并使用它开始任务
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>接任务: |cRXP_WARN_纳拉其营地的危机|r
    .use 4851
step << Shaman
    #completewith next
    >>杀死|cRXP_ENEMY_Bristleback萨满|r。掠夺他们的|cRXX_Loot_Salve|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34
    >>杀死|cRXP_ENEMY_Bristleback Quilboars|r。掠夺它们的|cRXX_Loot_Barret|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14
    >>杀死|cRXP_ENEMY_Bristleback萨满|r。掠夺他们的|cRXX_Loot_Salve|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto Mulgore,63.98,80.08,40,0
    .goto Mulgore,64.31,78.29,40,0
    .goto Mulgore,63.67,76.18,40,0
    .goto Mulgore,62.67,76.10,40,0
    .goto Mulgore,61.34,77.13,40,0
    .goto Mulgore,61.72,78.98,40,0
    .goto Mulgore,62.29,81.53,40,0
    .goto Mulgore,60.82,80.81,40,0
    .goto Mulgore,60.08,81.93,40,0
    .goto Mulgore,61.03,82.32,40,0
    .goto Mulgore,62.27,82.03
    .xp 5+880 >>升级到880+/2800xp << !Shaman
    .xp 5 >>升级到5级 << Shaman
step
    #completewith next
    .hs >>赫斯前往纳拉奇营地
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r and |cRXP_FRIENDLY_Hawkwind|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r, |cRXP_FRIENDLY_Seer|r and |cRXP_FRIENDLY_Hawkwind|r << Shaman
    .turnin 780 >>交任务: |cRXP_FRIENDLY_斗猪|r
    .goto Mulgore,44.92,77.12
    .turnin 3376 >>交任务: |cRXP_FRIENDLY_刺鬃酋长|r
    .goto Mulgore,44.67,76.68
    .turnin 1519 >>交任务: |cRXP_FRIENDLY_大地的召唤|r << Shaman
    .accept 1520 >>接任务: |cRXP_LOOT_大地的召唤|r << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 >>交任务: |cRXP_FRIENDLY_纳拉其营地的危机|r
    .turnin 757 >>交任务: |cRXP_FRIENDLY_力量仪祭|r
    .accept 763 >>接任务: |cRXP_WARN_大地之母仪祭|r
    .goto Mulgore,44.18,76.07
    .target Grull Hawkwind
    .target Brave Windfeather
    .target Seer Ravenfeather << Shaman
    .target Chief Hawkwind
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >>Travel toward the rock
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>使用|T134743:0|t[地球莎普塔]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1520 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1521 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Minor Manifestation of Earth
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 1521 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .train 332 >>列车|T136052:0|t[治疗波]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .train 1130 >>火车|T132212:0|t[猎人标记]
    .train 3044 >>火车|T132218:0|t[奥术射击]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .train 3044 >>火车|T132218:0|t[奥术射击]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 467 >>列车|T136104:0|t[荆棘]
    .train 5177 >>列车|T136006:0|t[愤怒]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 5177 >>列车|T136006:0|t[愤怒]
    .target Gart Mistrunner
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>列车|T132269:0|t[Parry]
    .train 6343 >>火车|T136105:0|t[霹雳]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>列车|T132269:0|t[Parry]
    .target Harutt Thunderhorn
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安图尔·荒野|r
    .accept 1656 >>接任务: |cRXP_WARN_未完的任务|r
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#era/som--h
<< Horde
#name 6-13 Tauren
#version 1
#group RestedXP生存指南（H）
#subgroup RXP Survival Guide 1-20
#defaultfor Tauren
#next 13-15 Silverpine Forest


step
	#completewith next
    .goto Mulgore,47.35,60.70,120 >>跑到血蹄村
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Baine|r
    .accept 743 >>接任务: |cRXP_WARN_风怒鹰身人|r
    .goto Mulgore,47.36,62.01
    .turnin 763 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
    .accept 745 >>接任务: |cRXP_WARN_土地之争|r
    .accept 767 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .accept 746 >>接任务: |cRXP_LOOT_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .target Ruul Eagletalon
    .target Baine Bloodhoof
step
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    .turnin 1656 >>交任务: |cRXP_FRIENDLY_未完的任务|r
    .home >>把你的炉石放在血蹄村
    .target Innkeeper Kauth
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一根|T135145:0|t[手杖]（5s 04c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里买一根|r|T135145:0|t[Walking Stick]|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T133053:0|t[木制Mallet]（7s1c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里买一个|r|T133053:0|t[Wooden Mallet]|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135611:0|t[Ornate Blunderbuss]（4s 14c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kennah|r|cRXP_BUY_交谈。从他那里购买|r|T135611:0|t[Ornate Blunderbuss]|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kennah交谈|r
    >>|cRXP_BUY_从他那里购买|r|T132384:0|t[Light Shots]|cRXP_Buy_|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target Kennah Hawkseye
step << Shaman/Druid
    #completewith Well
    +装备|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith Well
    +配备|T133053:0|t[木制马槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith Well
    +装备|T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Maur, |cRXP_FRIENDLY_扎尔曼·双月|r, |cRXP_FRIENDLY_哈肯·风之图腾|r, Mull
    .accept 766 >>接任务: |cRXP_LOOT_马兹拉纳其|r
    .goto Mulgore,46.97,57.07
    .turnin 767 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 771 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .goto Mulgore,47.76,57.53
    .accept 761 >>接任务: |cRXP_LOOT_猎捕猛鹫|r
    .goto Mulgore,48.71,59.32
    .accept 748 >>接任务: |cRXP_LOOT_毒水|r
    .goto Mulgore,48.53,60.40
    .target Maur Raincaller
    .target Zarlman Two-Moons
    .target Harken Windtotem
    .target Mull Thunderhorn
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_在整个区域寻找时，为Mazzranache获取物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith next
    >>杀死|cRXP_ENEMY_草原狼|r和|cRXX_ENEMY_Adult Plainstrider|r。掠夺它们的|cRXD_Loot_Paws|r和| cRXP_Loot_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49
    >>收集|cRXP_PICK_Ambercorns|r。它们可以在地面的树下找到
    .complete 771,2 --Ambercorn (2)
step
#loop
	.line Mulgore,50.82,66.66,51.06,63.63,52.79,62.06,53.98,61.68,55.67,62.77,56.46,64.93,56.02,67.78,55.02,69.65,52.33,70.07,50.40,70.24,48.60,69.43,45.98,69.70,48.58,67.37
	.goto Mulgore,50.82,66.66,25,0
	.goto Mulgore,51.06,63.63,25,0
	.goto Mulgore,52.79,62.06,25,0
	.goto Mulgore,53.98,61.68,25,0
	.goto Mulgore,55.67,62.77,25,0
	.goto Mulgore,56.46,64.93,25,0
	.goto Mulgore,56.02,67.78,25,0
	.goto Mulgore,55.02,69.65,25,0
	.goto Mulgore,52.33,70.07,25,0
	.goto Mulgore,50.40,70.24,25,0
	.goto Mulgore,48.60,69.43,25,0
	.goto Mulgore,45.98,69.70,25,0
	.goto Mulgore,48.58,67.37,25,0
    >>杀死|cRXP_ENEMY_草原狼|r和|cRXX_ENEMY_Adult Plainstrider|r。掠夺它们的|cRXD_Loot_Paws|r和| cRXP_Loot_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>交任务: |cRXP_FRIENDLY_毒水|r
    .accept 754 >>接任务: |cRXP_WARN_净化冰蹄之井|r
    .target Mull Thunderhorn
step
    #completewith next
    >>收集井周围的|cRXP_PICK_Well Stones |r
    .complete 771,1 --Well Stone (2)
step
    #label Well
    .goto Mulgore,53.68,66.28
    >>|cRXP_WARN_使用|r|T135139:0|t[冬蹄清洁图腾]|cRXP_WARN_at the Well|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40
    >>收集井周围的|cRXP_PICK_Well Stones |r
    .complete 771,1 --Well Stone (2)
step
    #completewith next
    >>|cRXP_WARN_在整个区域寻找时，为Mazzranache获取物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #label Gnolls
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>在两个营地之间来回走动。杀死|cRXP_ENEMY_Palemane Tanners|r、|cRXD_ENEMY_Palemane Skinners|r和|cRXP_ENEMY_ Palemane Poachers|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Snagglespear|r|cRXP_WARN_（9级稀有）。他太难杀了。|r
    .complete 745,1 --Palemane Tanner (10)
    .complete 745,2 --Palemane Skinner (8)
    .complete 745,3 --Palemane Poacher (5)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhwana|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Shaman/Druid
    >>|cRXP_BUY_从她那里购买|r|T133968:0|t[新鲜面包]|cRXP_Buy_|r << Warrior
    .vendor >>供应商垃圾
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r and |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>交任务: |cRXP_FRIENDLY_净化冰蹄之井|r
    .accept 756 >>接任务: |cRXP_WARN_雷角图腾|r
    .goto Mulgore,48.53,60.40
    .turnin 745 >>交任务: |cRXP_FRIENDLY_土地之争|r
    .goto Mulgore,47.51,60.16
    .target Mull Thunderhorn
    .target Baine Bloodhoof
step
    .goto Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔拉·幼蹄|r
    .train 3273 >>列车|T135966:0|t[急救]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一根|T135145:0|t[手杖]（5s 04c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里买一根|r|T135145:0|t[Walking Stick]|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T133053:0|t[木制Mallet]（7s1c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里买一个|r|T133053:0|t[Wooden Mallet]|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135611:0|t[Ornate Blunderbuss]（4s 14c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kennah|r|cRXP_BUY_交谈。从他那里购买|r|T135611:0|t[Ornate Blunderbuss]|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #completewith Clawsx
    +装备|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith Clawsx
    +配备|T133053:0|t[木制马槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith Clawsx
    +装备|T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔曼·双月|r
    >>|cRXP_WARN_不要追随生狼|r
    .turnin 771 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .target Zarlman Two-Moons
    .accept 772 >>接任务: |cRXP_LOOT_幻象仪祭|r
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >>训练你的职业技能
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 5186 >>训练你的职业技能
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 284 >>训练你的职业技能
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >>训练你的职业技能
    .target Narm Skychaser
    .xp <8,1
step
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东路巡逻|r
    .accept 749 >>接任务: |cRXP_WARN_被破坏的货车|r
	.unitscan Morin Cloudstalker
step
    #completewith Clawsx
    >>|cRXP_WARN_在整个区域寻找时，为Mazzranache获取物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith next
    >>杀死|cRXP_ENEMY_Stalkers|r和|cRXX_ENEMY_Cougars|r。掠夺他们的|cRXD_Loot_Caws|r
    .complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
    .mob Prairie Wolf
    .mob Prairie Wolf Alpha
    .mob Flatland Cougar
step
    .goto Mulgore,53.74,48.17
    >>单击|cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>交任务: |cRXP_FRIENDLY_被破坏的货车|r
    .accept 751 >>接任务: |cRXP_WARN_被破坏的货车|r
step
	#completewith Clawsx
	>>杀死整个穆戈尔的|cRXP_ENEMY_Swoops|r。掠夺他们的|cRXP_Loot_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
	#label Clawsx
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    .goto Mulgore,58.1,48.6
    >>杀死|cRXP_ENEMY_Stalkers|r和|cRXX_ENEMY_Cougars|r。掠夺他们的|cRXD_Loot_Caws|r
    .complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
    .mob Prairie Wolf
    .mob Prairie Wolf Alpha
    .mob Flatland Cougar
step
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >>返回血蹄村
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >>训练你的职业技能
    .target Yaw Sharpmane
    .xp <8,1
step
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一根|T135145:0|t[手杖]（5s 04c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里买一根|r|T135145:0|t[Walking Stick]|r
    .collect 2495,1,758,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T133053:0|t[木制Mallet]（7s1c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里买一个|r|T133053:0|t[Wooden Mallet]|r
    .collect 2493,1,758,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >>供应商垃圾。如果你的武器能给你足够的钱买一个|T135611:0|t[Ornate Blunderbuss]（4s 14c），就把它卖掉。如果你还不够的话，你稍后会回来的
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kennah|r|cRXP_BUY_交谈。从他那里购买|r|T135611:0|t[Ornate Blunderbuss]|r
    .collect 2509,1,758,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Loorat交谈|r
    .collect 2516,1000,818,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #completewith ThunderhornCleanse
    +装备|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith ThunderhornCleanse
    +配备|T133053:0|t[木制马槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith ThunderhornCleanse
    +装备|T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #completewith next
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈兰特·铁枝|r
    .vendor >>供应商垃圾和维修
    .target Harant Ironbrace
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Mull, |cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 756 >>交任务: |cRXP_FRIENDLY_雷角图腾|r
    .accept 758 >>接任务: |cRXP_WARN_净化雷角之井|r
    .goto Mulgore,48.53,60.40
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
    .goto Mulgore,48.71,59.32
    .target Mull Thunderhorn
    .target Harken Windtotem
    .isQuestComplete 761
step
    #label Thunderhorn
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>交任务: |cRXP_FRIENDLY_雷角图腾|r
    .accept 758 >>接任务: |cRXP_WARN_净化雷角之井|r
    .target Mull Thunderhorn
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >>训练你的职业技能
    .target Narm Skychaser
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 5186 >>训练你的职业技能
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 284 >>训练你的职业技能
    .target Krang Stonehoof
    .xp <8,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >>训练你的职业技能
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    >>|cRXP_BUY_从他那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Shaman/Druid
    >>|cRXP_BUY_从他那里购买|r|T133968:0|t[新鲜面包]|cRXP_Buy_|r << Warrior
    .vendor >>供应商垃圾箱
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_完成为Mazzranache获取物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>杀死整个穆戈尔的|cRXP_ENEMY_Swoops|r。掠夺他们的|cRXP_Loot_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_使用|r|T135139:0|t[Thunderhorn净化图腾]|cRXP_WARN_at the Well|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    .goto Mulgore,31.27,49.87
    >>杀死|cRXP_ENEMY_Bael'dun挖掘者|r和|cRXX_ENEMY_Bael'dun评估者|r。掠夺他们的|cRXD_Loot_浏览者的选择|r
    .use 4702 >>在锻造厂粉碎|T134707:0|t[拾取]
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step
#loop
	.line Mulgore,34.08,43.71,32.98,42.96,31.72,43.08,31.08,42.09,31.12,40.87,31.74,40.31,32.44,41.17,33.57,41.30,33.82,40.26,34.48,41.21,34.50,42.29
	.goto Mulgore,34.08,43.71,25,0
	.goto Mulgore,32.98,42.96,25,0
	.goto Mulgore,31.72,43.08,25,0
	.goto Mulgore,31.08,42.09,25,0
	.goto Mulgore,31.12,40.87,25,0
	.goto Mulgore,31.74,40.31,25,0
	.goto Mulgore,32.44,41.17,25,0
	.goto Mulgore,33.57,41.30,25,0
	.goto Mulgore,33.82,40.26,25,0
	.goto Mulgore,34.48,41.21,25,0
	.goto Mulgore,34.50,42.29,25,0
    >>杀死|cRXP_ENEMY_Windfury Wind Witches|r和|cRXX_ENEMY_Windfury Harpies|r。掠夺它们的|cRXD_Loot_Talons|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>进入Windfury Harpies北边的洞穴
step
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 773 >>接任务: |cRXP_LOOT_智慧仪祭|r
    .target Seer Wiserunner
step
    #completewith SacredBurial
    .destroy 4823 >>摧毁: |cRXP_ENEMY_先知之水|r
step
    #completewith SacredBurial
    >>|cRXP_WARN_完成为Mazzranache获取物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith next
	>>杀死整个穆戈尔的|cRXP_ENEMY_Swoops|r。掠夺他们的|cRXP_Loot_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .accept 833 >>接任务: |cRXP_LOOT_神圣的墓地|r
    .target Lorekeeper Raintotem
step
    #completewith next
    >>杀死|cRXP_ENEMY_Bristleback Interopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先祖之魂|r
    .turnin 773 >>交任务: |cRXP_FRIENDLY_智慧仪祭|r
    .accept 775 >>接任务: |cRXP_WARN_雷霆崖之旅|r
    .target Ancestral Spirit
step
#loop
	.line Mulgore,59.85,25.62,61.14,22.93,61.77,22.49,62.18,22.05,62.32,20.89,61.62,19.50,60.44,19.50,60.16,21.06,60.41,21.96,61.12,22.88
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>杀死|cRXP_ENEMY_Bristleback Interopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .turnin 833 >>交任务: |cRXP_FRIENDLY_神圣的墓地|r
    .target Lorekeeper Raintotem
step
    #completewith next
    >>|cRXP_WARN_完成为Mazzranache获取物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
	>>杀死|cRXP_ENEMY_Swoops|r。掠夺他们的|cRXX_Loot_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    >>|cRXP_WARN_完成为Mazzranache获取物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+4400 >>升级到3020+/6500xp
    .isQuestComplete 761
    .isQuestComplete 766
step
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+4400 >>升级到3720+/6500xp
    .isQuestComplete 761
step
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+4400 >>升级到3700+/6500xp
    .isQuestComplete 766
step
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+4400 >>升级到4400+/6500xp
step << !Druid
    #completewith Bloodhooffinalturnins
    .hs >>Hearth to Bloodhoof村
    .use 6948
step << Druid
    #completewith Bloodhooffinalturnins
    .goto Mulgore,47.33,57.17,120 >>返回血蹄村
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    .vendor >>供应商垃圾
    .target Innkeeper Kauth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Baine, Ruul, Mull, |cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务: |cRXP_FRIENDLY_净化雷角之井|r
    .goto Mulgore,48.54,60.38
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
    .goto Mulgore,48.71,59.32
    .target Baine Bloodhoof
    .target Ruul Eagletalon
    .target Mull Thunderhorn
    .target Harken Windtotem
    .isQuestComplete 761
step
    #label Bloodhooffinalturnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务: |cRXP_FRIENDLY_净化雷角之井|r
    .goto Mulgore,48.54,60.38
    .target Baine Bloodhoof
    .target Ruul Eagletalon
    .target Mull Thunderhorn
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kennah交谈|r
    >>|cRXP_BUY_从他那里购买|r|T132384:0|t[Heavy Shots]|cRXP_Buy_|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 6546 >>训练你的职业技能
    .target Krang Stonehoof
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .trainer >>训练你的职业技能
    .target Narm Skychaser
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .accept 6061 >>接任务: |cRXP_WARN_驯服野兽|r
    .trainer >>训练你的职业技能
    .target Yaw Sharpmane
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .trainer >>训练你的职业技能
    .accept 5928 >>接任务: |cRXP_WARN_响应召唤|r
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 8924 >>训练你的职业技能
    .target Gennia Runetotem
step << Hunter
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43
    .use 15914 >>|cRXP_WARN_使用您的|r|T132164:0|t[驯服棒]|cRXP_WARN_on an|r|cRXP-ENEMY_Adult Plainstrider|r|cRXP_WARN_at最大范围|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6061 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6087 >>接任务: |cRXP_WARN_驯服野兽|r
    .target Yaw Sharpmane
step << Hunter
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27
    .use 15915 >>|cRXP_WARN_使用您的|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Prairie Stalker|r|cRXP_WARN_at最大范围|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6087 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6088 >>接任务: |cRXP_WARN_驯服野兽|r
    .target Yaw Sharpmane
step << Hunter
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .goto Mulgore,47.25,41.33
    .use 15916 >>|cRXP_WARN_使用你的|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Swoop|r|cRXP_WARN_at最大射程，如果他们击倒你，立即重新施放|r
    >>|cRXP_WARN_如果你失败了，驯服棒冲锋用完了，放弃任务，然后重新开始并回来|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6088 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6089 >>接任务: |cRXP_WARN_训练野兽|r
    .target Yaw Sharpmane
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhwana|r
    >>|cRXP_BUY_从她那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Shaman/Druid
    >>|cRXP_BUY_从她那里购买|r|T133968:0|t[新鲜面包]|cRXP_Buy_|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东路巡逻|r
    .turnin 751 >>交任务: |cRXP_FRIENDLY_被破坏的货车|r
    .accept 764 >>接任务: |cRXP_WARN_风险投资公司|r
    .accept 765 >>接任务: |cRXP_WARN_菲兹普罗克主管|r
	.unitscan Morin Cloudstalker
    .group
step
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东路巡逻|r
    .turnin 751 >>交任务: |cRXP_FRIENDLY_被破坏的货车|r
	.unitscan Morin Cloudstalker
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Travel to 接任务: |cRXP_WARN_风险投资公司|r. Mine
    .group
step
    #completewith next
    >>杀死|cRXP_ENEMY_Venture Co.的工人|r和|cRXX_ENEMY_Venture Co.的主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .group 2
step
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Run into the mine and hug the right/east side. Kill |cRXP_ENEMY_接任务: |cRXP_WARN_菲兹普罗克主管|r|r. Loot him for his |cRXP_LOOT_Clipboard|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 接任务: |cRXP_WARN_菲兹普罗克主管|r
    .group 2
step
#loop
	.line Mulgore,61.35,47.55,60.10,47.84,59.50,48.21,59.68,48.85,60.14,49.14,62.01,48.74,61.89,47.84,61.35,47.55
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
	.goto Mulgore,61.35,47.55,25,0
    >>杀死|cRXP_ENEMY_Venture Co.的工人|r和|cRXX_ENEMY_Venture Co.的主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .group 2
step
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东路巡逻|r
    .turnin 764 >>交任务: |cRXP_FRIENDLY_风险投资公司|r
    .turnin 765 >>交任务: |cRXP_FRIENDLY_菲兹普罗克主管|r
	.unitscan Morin Cloudstalker
    .group
step << Hunter
    #completewith next
    +驯服a|cRXP_ENEMY_草原狼阿尔法|r
step
    #completewith next
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>获得Taurajo营地飞行路线
    .target Omusa Thunderhorn
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔格·锐角|r
    .accept 854 >>接任务: |cRXP_WARN_十字路口之旅|r
    .target Kirge Sternhorn
step
    .goto The Barrens,52.07,31.96,120 >>向北行驶至十字路口
    >>|cRXP_WARN_确保你在路上。否则，你可能会攻击高级暴徒|r
 step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Tonga, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_加兹罗格|r, |cRXP_FRIENDLY_索克|r, |cRXP_FRIENDLY_加翰·鹰翼|r
    .accept 870 >>接任务: |cRXP_WARN_遗忘之池|r
    .goto The Barrens,52.26,31.93
    .accept 844 >>接任务: |cRXP_WARN_平原陆行鸟的威胁|r
    .goto The Barrens,52.24,31.00
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
    .goto The Barrens,51.93,30.32
    .turnin 854 >>交任务: |cRXP_FRIENDLY_十字路口之旅|r << Tauren
    .accept 871 >>接任务: |cRXP_WARN_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_WARN_十字路口的补给品|r
    .goto The Barrens,51.50,30.87
    .accept 6361 >>接任务: |cRXP_WARN_一捆兽皮|r
    .goto The Barrens,51.21,29.05
    .target Tonga Runetotem
    .target Sergra Darkthorn
    .target Gazrog
    .target Thork
    .target Jahan Hawkwing
step << !Hunter !Druid
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6361 >>交任务: |cRXP_FRIENDLY_一捆兽皮|r
    .accept 6362 >>接任务: |cRXP_WARN_飞往雷霆崖|r
    .target Devrak
step << Hunter/Druid
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6361 >>交任务: |cRXP_FRIENDLY_一捆兽皮|r
    .accept 6362 >>接任务: |cRXP_WARN_飞往雷霆崖|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Devrak
step << Hunter/Druid
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安哈努|r
    .turnin 6362 >>交任务: |cRXP_FRIENDLY_飞往雷霆崖|r
    .accept 6363 >>接任务: |cRXP_WARN_双足飞龙管理员塔尔|r
    .target Ahanu
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将您的炉石设置为雷霆崖
    .target Innkeeper Pala
step << Hunter/Druid
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>交任务: |cRXP_FRIENDLY_雷霆崖之旅|r
    .target Cairne Bloodhoof
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_浩特·雷角|r
	.turnin 6089 >>交任务: |cRXP_FRIENDLY_训练野兽|r
    .target Holt Thunderhorn
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
    .train 24547 >>训练你的宠物法术
    .target Hesuwa Thunderhorn
step << Hunter
    #completewith ReturntoJahan
    +|cRXP_WARN_拖动|r|T132162:0|t[野兽训练]|cRXP_WARN_到动作栏中。向您的宠物传授技能|r
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>交任务: |cRXP_FRIENDLY_响应召唤|r
    .accept 5922 >>接任务: |cRXP_LOOT_月光林地|r
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .accept 5922 >>接任务: |cRXP_LOOT_月光林地|r
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5922 >>交任务: |cRXP_FRIENDLY_月光林地|r
    .accept 5930 >>接任务: |cRXP_WARN_巨熊之灵|r
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨熊之灵|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5930 >>交任务: |cRXP_FRIENDLY_巨熊之灵|r
    .accept 5932 >>接任务: |cRXP_WARN_返回雷霆崖|r
    .target Dendrite Starblaze
step << Druid
    #completewith DruidBearForm
    .hs >>火炉到雷霆崖
    .cooldown item,6948,>0
    .use 6948
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑟恩·草风|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 5932 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
    .accept 6002 >>接任务: |cRXP_LOOT_身心之力|r
    .target Turak Runetotem
step << Druid/Hunter
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .turnin 6363 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员塔尔|r
    .accept 6364 >>接任务: |cRXP_LOOT_向加翰回复|r
    .target Tal
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫兰塔|r
    >>|cRXP_WARN_这将解锁一个简单的任务。如果你已经有两种职业，跳过这一步|r
    .train 8613 >>列车|T134366:0|t[剥皮]
    .target Mooranta
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔伦·陆行者|r
    .accept 768 >>接任务: |cRXP_WARN_收集皮革|r
    .target Veren Tallstrider
    .skill skinning,1,1
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
    .collect 2318,12,768,1 >>|cRXP_BUY_从拍卖行购买Twelve |r|T134252:0|t[浅色皮革]|cRXP_Buy_|r
    .target Auctioneer Stampi
    .skill skinning,1,1
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔伦·陆行者|r
    .turnin 768 >>交任务: |cRXP_FRIENDLY_收集皮革|r
    .target Veren Tallstrider
    .skill skinning,1,1
step << Hunter
    #completewith ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >>飞到十字路口
    .target Tal
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Tal
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710  >>跑到Moonkin Stone并使用|T132857:0|t[Cenarion Lunardust]。杀死|cRXP_ENEMY_Lunaclaw|r
    >>|cRXP_WARN_避开区域中的|r|cRXP_ENEMY_Thunderheads|r|cRXP_WARN_in|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .use 15710
    .mob Lunaclaw
step << Druid
    #completewith next
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Omusa Thunderhorn
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 6002 >>交任务: |cRXP_FRIENDLY_身心之力|r
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >>飞到十字路口
    .target Tal
step << Hunter/Druid
    #label ReturntoJahan
    .goto The Barrens,51.2,29.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加翰·鹰翼|r
    .turnin 6364 >>交任务: |cRXP_FRIENDLY_向加翰回复|r
    .target Jahan Hawkwing
step << Shaman/Druid
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nargal|r|cRXP_BUY_交谈。从他那里购买|r|T135154:0|t[季度员工]|r
    .collect 854,1,784,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Nargal Deatheye
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #completewith FurlScornbrow
    +当你达到11级时，装备|T135154:0|t[四分之一法杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Warrior
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nargal|r|cRXP_BUY_交谈。从他那里买一个|r|T133477:0|t[Giant Mace]|r
    .collect 1197,1,784,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Nargal Deatheye
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #completewith FurlScornbrow
    +装备|T133477:0|t[巨无霸]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Uthrok交谈|r
    >>|cRXP_BUY_从他那里买很多|r|T132384:0|t[Heavy Shots]|cRXP_Buy_。你暂时买不到更多的了！|r << Hunter
    .collect 2519,1600,6061,1 << Hunter --Heavy Shot (1600)
    .vendor >>供应商垃圾
    .target Uthrok
    --Tauren Hunter gun not worth? Making them train bows in Org
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2984 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
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
    #completewith FurlScornbrow
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step << !Shaman
    #completewith FurlScornbrow
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step
    #optional
    .abandon 764 >>Abandon 接任务: |cRXP_WARN_风险投资公司|r.
    .abandon 765 >>Abandon 接任务: |cRXP_WARN_菲兹普罗克主管|r
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
    #label FurlScornbrow
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>接任务: |cRXP_WARN_新的背包|r
    .target Furl Scornbrow
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >>供应商垃圾箱
    .home >>把你的炉石放在剃刀山
    .group
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师托尔卡|r
    .accept 815 >>接任务: |cRXP_WARN_恐龙蛋大餐|r
    .target Cook Torka
step
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_你可以在外面或地堡顶上和他说话|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加索克|r
    .accept 784 >>接任务: |cRXP_WARN_背信弃义的人类|r
    .accept 837 >>接任务: |cRXP_LOOT_野猪人的进犯|r
    .target Gar'thok
step
    #completewith Benedict
    .goto Durotar,58.08,57.13,120 >>前往Tiragarde Keep
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
step
    #completewith next
    .goto Durotar,52.06,68.30,50 >>前往森津村
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌克尔|r
    .accept 2161 >>接任务: |cRXP_LOOT_苦工的重担|r
    .target Ukor
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔林·长牙|r, |cRXP_FRIENDLY_沃纳尔大师|r, |cRXP_FRIENDLY_加德林大师|r
    .accept 817 >>接任务: |cRXP_LOOT_生活所需的虎皮|r
    .goto Durotar,55.95,73.93
    .accept 818 >>接任务: |cRXP_WARN_沃纳尔大师|r
    .goto Durotar,55.94,74.40
    .accept 808 >>接任务: |cRXP_LOOT_明希纳的颅骨|r
    .accept 826 >>接任务: |cRXP_LOOT_扎拉赞恩|r
    .accept 823 >>接任务: |cRXP_LOOT_向奥戈尼尔报告|r
    .goto Durotar,55.94,74.72
    .target Master Vornal
    .target Master Gadrin
    .target Vel'rin Fang
step
    #completewith TaillasherEggs
    >>杀死你看到的每一个|cRXP_ENEMY_Crawler|r和|cRXX_ENEMY_Makrura|r。掠夺他们的|cRXP_Loot_Mucus|r和|cRXP _Loot_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #completewith next
    >>杀死|cRXP_ENEMY_Tigers|r。掠夺他们的|cRXP-Loot_Fur|r。现在不必完成
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    .goto Durotar,60.28,80.02,60,0
    .goto Durotar,60.28,82.74,60,0
    .goto Durotar,59.62,84.76,60,0
    .goto Durotar,60.02,87.94,60,0
    .goto Durotar,59.06,90.71,60,0
    .goto Durotar,61.50,91.55,60,0
    .goto Durotar,61.88,95.43,60,0
    .goto Durotar,62.69,97.21,60,0
    .goto Durotar,63.00,94.40,60,0
    .goto Durotar,59.85,89.56,60,0
    .goto Durotar,59.49,83.77
    #label TaillasherEggs
    >>将|cRXP_PICK_Tailasher蛋|r掠夺到地上。它们通常由|cRXP_ENEMY_Bloodtalon Tailasher|r守卫
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith MinshinasSkull
    .goto Durotar,67.06,87.21,120 >>Swim to the main island
step
    #completewith MinshinasSkull
    >>杀死|cRXP_ENEMY_Crawler|r和|cRXX_ENEMY_Makruras|r。掠夺它们的|cRXP_Loot_Mucus|r和| cRXP_Loot_Eyes |r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
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
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88.76
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.76,25,0
    >>杀死|cRXP_ENEMY_Hexed巨魔|r和|cRXX_ENEMY_Voodoo巨魔|r。
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Voodoo巨魔|r|cRXP_WARN_can cast|r|T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >>杀死|cRXP_ENEMY_Crawler|r和|cRXX_ENEMY_Makruras|r。掠夺它们的|cRXP_Loot_Mucus|r和| cRXP_Loot_Eyes |r
    >>|cRXP_WARN_如果你现在还没有完成这项任务，那就去南部岛屿吧。在那里可以找到许多|r|cRXP_ENEMY_Crawler|r|cRXP_WARN_an和|r| cRXP__ENEMY_Makruras|r|C RXP_WARN_c|r
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
    #completewith next
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾处理和维修。你可以在小屋外面和他说话
    .target Trayexir
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
    .goto Durotar,54.1,76.6
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
step
    #label Encroachment
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
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
    .mob Razormane Dustrunner
    .mob Razormane Battleguard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Torka|r、|cRXP_RIENDLY_Orgnil|r和|cRXP_RIENDLY_Gar'通话|r
    .turnin 815 >>交任务: |cRXP_FRIENDLY_恐龙蛋大餐|r
    .goto Durotar,51.12,42.46
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
    .accept 806 >>接任务: |cRXP_LOOT_黑暗风暴|r
    .goto Durotar,52.25,43.18
    .turnin 784 >>交任务: |cRXP_FRIENDLY_背信弃义的人类|r
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .turnin 830 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .accept 831 >>接任务: |cRXP_WARN_将军的命令|r
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Orgnil Soulscar
    .target Gar'Thok
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Torka|r、|cRXP_RIENDLY_Orgnil|r和|cRXP_RIENDLY_Gar'通话|r
    .turnin 815 >>交任务: |cRXP_FRIENDLY_恐龙蛋大餐|r
    .goto Durotar,51.12,42.46
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
    .goto Durotar,52.25,43.18
    .turnin 784 >>交任务: |cRXP_FRIENDLY_背信弃义的人类|r
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .turnin 830 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .accept 831 >>接任务: |cRXP_WARN_将军的命令|r
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Orgnil Soulscar
    .target Gar'Thok
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Inkeepr Grosk|r交谈
    .turnin 2161 >>交任务: |cRXP_FRIENDLY_苦工的重担|r
    .target Innkeeper Grosk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加尔克|r
    >>|cRXP_BUY_购买一个或多个|r|T133634:0|t[棕色小袋子]|cRXP_Buy_from|r|cRXP-FRIENDLY_him|r
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 7384 >>训练你的职业技能
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 1535 >>训练你的职业技能
    .target Swart
    .xp <12,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_WARN_部落的新兵|r
    .target Takrin Pathseeker
    .xp <10,1
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
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莎|r
    .accept 816 >>接任务: |cRXP_WARN_丢失的孩子|r
    .target Misha Tor'kren
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >>Travel to Rezlak
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接任务: |cRXP_WARN_沙漠之风|r
    .target Rezlak
step
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
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务: |cRXP_FRIENDLY_沙漠之风|r
    .accept 835 >>接任务: |cRXP_WARN_保卫商路|r
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >>Travel through the cave
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
step << Tauren Hunter
    #completewith next
    +|cFFFCDC拾取|r|T135493:0|t[Hickory Shortbow]|cFFFCDCas您的任务奖励并保存。您将在Orgrimmar|r接受弓训练
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 >>交任务: |cRXP_FRIENDLY_保卫商路|r
    .target Rezlak
step
    .goto Durotar,41.54,18.59
    >>|cRXP_WARN_这将为任务启动一个45分钟的计时器。在接下来的15分钟内不要AFK或注销|r
    >>对话: |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接任务: |cRXP_LOOT_救命如救火|r
    .target Rhinag
step
    #completewith next
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
step << Druid
    #completewith next
    .cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
    .xp <12,1
    .isQuestComplete 806
    .group
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 8050 >>训练你的职业技能
    .target Loganaar
    .xp <12,1
    .isQuestComplete 806
    .group
step
    #completewith next
    .hs >>炉底到剃须山
    .cooldown item,6948,>0
    .isQuestComplete 806
    .use 6948
    .group
step << Shaman
    #completewith next
    .hs >>炉底到剃须山
    .cooldown item,6948,>0
    .use 6948
    .solo
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >>供应商垃圾箱
    >>|cRXP_BUY_从他那里购买|r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r << Shaman/Druid
    >>|cRXP_BUY_从他那里购买|r|T133974:0|t[Haunch of Meat]|cRXP_Buy_|r << Warrior
    .collect 1179,20,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (20)
    .collect 2287,20,818,1 << Rogue/Warrior --Haunch of Meat (20)
    .target Innkeeper Grosk
    .money <0.05
    .group
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
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    .train 14281 >>训练你的职业技能
    .target Thotar
    .xp <12,1
    .group
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 7384 >>训练你的职业技能
    .target Tarshaw Jaggedscar
    .xp <12,1
    .group
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 1535 >>训练你的职业技能
    .target Swart
    .xp <12,1
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >>Travel to Margoz
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
    .goto Durotar,53.18,29.15,50 >>Travel to Dustwind Cave
    .solo
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >>Travel to Dustwind Cave
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
    .goto Durotar,56.41,20.04,50 >>Travel to Margoz
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
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50 >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Orgrimmar
step
    .goto Orgrimmar,45.13,63.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    .fp Orgrimmar >>获取Orgrimmar飞行路线
    .target Doras
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .target Nazgrel
step << Shaman
    #label Shaman12training
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 547 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <12,1
step
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Kor'ghan|r交谈
    .accept 813 >>接任务: |cRXP_WARN_寻找解毒剂|r
    .target Kor'ghan
    .isOnQuest 812
step
    #completewith FindingAntitode
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
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>前往荣誉谷
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
    .train 24556 >>训练你的宠物法术
    .target Xao'tsu
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.06,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormakl|r
    .train 14281 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 227 >>火车弓
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r|cRXP_BUY_。从他那里买一个|r|T135499:0|t[叠层递归弓]|r
    .collect 2507,1,813,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r
    .collect 2515,1600,828,1 << Hunter --Sharp Arrow (1600)
    .collect 5439,1,813,1 << Hunter --Small Quiver (1)
    .target Ghrawt
step << Hunter
    #completewith FindingAntitode
    +装备|T135499:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_交谈。从他那里买一个|r|T133477:0|t[Giant Mace]|r
    .collect 1197,1,813,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Warrior
    #completewith FindingAntitode
    +装备|T133477:0|t[巨无霸]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman/Druid
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_交谈。从他那里购买|r|T135154:0|t[季度员工]|r
    .collect 854,1,813,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #completewith FindingAntitode
    +装备|T135154:0|t[季度员工]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #label LeaveOrg2
    #completewith Conscript
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step
    #label FindingAntitode
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
step << !Shaman
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
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莎|r
    .turnin 816 >>交任务: |cRXP_FRIENDLY_丢失的孩子|r
    .target Misha Tor'kren
    .isQuestComplete 816
step
    #Label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >>前往远观哨所
step
    #label Conscript
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_WARN_十字路口征兵|r
    .target Kargal Battlescar
step
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 809 >>交任务: |cRXP_FRIENDLY_雅克塞罗斯|r
    .accept 924 >>接任务: |cRXP_LOOT_恶魔之种|r
    .isOnQuest 809
    .target Ak'Zeloth
    .group
step
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
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >>从地面上掠夺|cRXP_PICK_Chen的空罐子并开始任务. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step
    #completewith DemonSeed
    >>杀死|cRXP_ENEMY_Plainstrider|r。掠夺他们的|cRXX_Loot_Beak|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >>前往山顶
    .isOnQuest 924
step
    #completewith next
    +|cRXP_WARN_如果|r|cRXP_ENEMY_Rathorian|r|cRXP_WARN_i上升，他是15级稀有，请小心。准备好使用您的|r|T133728:0|t[微弱发光的头骨]|cRXP_WARN_and|r|T134712:0|t[真粘的胶水]|cRX P_WARN_if needed|r
    .unitscan Rathorian
step
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>右键单击祭坛。确保你身上有一块|T134095:0|t[有缺陷的力量石]
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,40 >>沿着你来的山往下走
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
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_索克|r
    .turnin 844 >>交任务: |cRXP_FRIENDLY_平原陆行鸟的威胁|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
    .accept 845 >>接任务: |cRXP_LOOT_斑马的威胁|r
    .goto The Barrens,52.23,31.00
    .turnin 871 >>交任务: |cRXP_FRIENDLY_野猪人的头目|r
    .accept 872 >>接任务: |cRXP_WARN_野猪人的袭击|r
    .goto The Barrens,51.50,30.87
    .target Sergra Darkthorn
    .target Thork
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将您的炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
step << Druid
    #completewith next
    .cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
    .xp <12,1
    .cooldown item,6948,>0
    .solo
step << Druid
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 8050 >>训练你的职业技能
    .target Loganaar
    .xp <12,1
    .cooldown item,6948,>0
    .solo
step << Druid
    #completewith FlytoOrg
    .hs >>十字路口之心
    .cooldown item,6948,>0
    .xp <12,1
    .use 6948
    .solo
    .zoneskip The Barrens
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Barg交谈|r
    .collect 2515,1200,398,1 << Hunter --Sharp Arrow (1200)
    .target Barg
    .itemcount 2515,<800 << Hunter
step << Shaman/Warrior
    #completewith next
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
step << Shaman/Warrior
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安哈努|r
    .turnin 6362 >>交任务: |cRXP_FRIENDLY_飞往雷霆崖|r
    .accept 6363 >>接任务: |cRXP_WARN_双足飞龙管理员塔尔|r
    .target Ahanu
step << Shaman/Warrior
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>交任务: |cRXP_FRIENDLY_雷霆崖之旅|r
    .target Cairne Bloodhoof
step << Shaman/Warrior
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .turnin 6363 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员塔尔|r
    .accept 6364 >>接任务: |cRXP_LOOT_向加翰回复|r
    .target Tal
step << Shaman/Warrior
    #completewith ReturntoJahan2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >>飞向十字路口
    .target Tal
    .cooldown item,6948,<0
step << Shaman/Warrior
    #completewith next
    .hs >>十字路口之心
    .use 6948
    .cooldown item,6948,>0
step << Shaman/Warrior
    #label ReturntoJahan2
    .goto The Barrens,51.2,29.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加翰·鹰翼|r
    .turnin 6364 >>交任务: |cRXP_FRIENDLY_向加翰回复|r
    .target Jahan Hawkwing
step
    #label FlytoOrg
    #completewith SlumberSandPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Devrak
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8045 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <14,1
step
    #label FindingAntidoteTurnin
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Kor'ghan|r交谈
    .turnin 813 >>交任务: |cRXP_FRIENDLY_寻找解毒剂|r
    .target Kor'ghan
    .isQuestComplete 813
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zendo'jian交谈|r|cRXP_BUY_。从他那里买一个|r|T135499:0|t[叠层递归弓]|r
    .collect 2507,1,398,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #completewith SlumberSandPickup
    +装备|T135499:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_交谈。从他那里买一个|r|T133477:0|t[Giant Mace]|r
    .collect 1197,1,398,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Warrior
    #completewith SlumberSandPickup
    +装备|T133477:0|t[巨无霸]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman/Druid
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_交谈。从他那里购买|r|T135154:0|t[季度员工]|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #completewith SlumberSandPickup
    +装备|T135154:0|t[季度员工]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #completewith SlumberSandPickup
    #label LeaveOrg3
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step << Shaman/Hunter
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接任务: |cRXP_LOOT_救命如救火|r
    .turnin 812 >>交任务: |cRXP_FRIENDLY_救命如救火|r
    .target Rhinag
step
    .goto Durotar,50.8,13.8,40 >>上齐柏林塔
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .accept 1818 >>接任务: |cRXP_WARN_迪林格尔|r
    .target Austil de Mon
step
    #label SlumberSandPickup
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 367 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 445 >>接任务: |cRXP_WARN_给银松森林送信|r
    .target Apothecary Johaan
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
step
    .goto Tirisfal Glades,56.77,59.83,60,0
    .goto Tirisfal Glades,57.41,61.92,60,0
    .goto Tirisfal Glades,55.03,63.17,60,0
    .goto Tirisfal Glades,54.24,65.34,60,0
    .goto Tirisfal Glades,50.74,62.38,60,0
    .goto Tirisfal Glades,49.92,61.17,60,0
    .goto Tirisfal Glades,47.92,60.42,60,0
    .goto Tirisfal Glades,46.61,59.75,60,0
    .goto Tirisfal Glades,44.02,60.11,60,0
    .goto Tirisfal Glades,43.58,61.39
    >>杀死|cRXP_ENEMY_Darkhounds|r。掠夺他们的|cRXX_Loot_Blood|r
    >>|cRXP_WARN_您将从本任务的后续任务中收到|r|T133849:0|t[Slumber Sand]|cRXP_WARN_，如果您愿意，可以跳过它|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
step
    .goto Tirisfal Glades,60.59,51.77
    >>|TInterface/GossipFrame/HealerGossipIcon:0|t单击|cRXP_PICK_Wanted海报|r
    .accept 398 >>接任务: |cRXP_WARN_悬赏：蛆眼|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .goto Tirisfal Glades,59.45,52.40
    .target Apothecary Johaan
    .isQuestComplete 367
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .goto Tirisfal Glades,59.45,52.40
    .target Apothecary Johaan
    .isQuestTurnedIn 367
step
    #completewith next
    .goto Tirisfal Glades,58.66,30.77
    >>在去海滩的路上杀死|cRXP_ENEMY_Maggot Eye|r。抢劫他的|cRXP_Loot_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 368
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
    >>在海滩杀死|cRXP_ENEMY_Murlocs|r。掠夺他们的|cRXP_Loot_Scales|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    .goto Tirisfal Glades,58.66,30.77
    >>杀死|cRXP_ENEMY_Maggot Eye|r。掠夺他的|cRXX_Loot_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 368
step
    #completewith MaggetEyeTurnIn
    .goto Tirisfal Glades,59.88,51.58,150 >>Travel back to Brill
    .subzoneskip 159
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 368 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #label MaggetEyeTurnIn
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 398 >>交任务: |cRXP_FRIENDLY_悬赏：蛆眼|r
    .target Executor Zygand
step
    #completewith UCflightpath2
    +|cRXP_WARN_绑定|r|T133849:0|t[坍落沙]|cRXP_WARN_。保存以备不时之需|r
    .isQuestComplete 368
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r
    .target Coleman Farthing
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 1160 >>训练你的职业技能
    .target Austil de Mon
    .xp <14,1
step
    #completewith UCflightpath2
    .goto Tirisfal Glades,61.80,65.06,20 >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
    .zoneskip Undercity
step
    #completewith UCflightpath2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step
    #label UCflightpath2
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    >>|cRXP_WARN_如果您已经选择了飞行路线，请跳过此步骤！|r
    .target Michael Garrett
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    .collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六件|r|T134339:0|t[变色虫心]|cRXP_Buy_|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
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
    #completewith EscortErland
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50 >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .zoneskip Silverpine Forest


    ]])

