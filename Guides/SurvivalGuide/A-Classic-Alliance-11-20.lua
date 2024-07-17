local faction = UnitFactionGroup("player")
if faction == "Horde" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 13-15 西部荒野
#version 1
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 1-20
#defaultfor Human/Gnome/Dwarf/NightElf
#next 15-18 Darkshore

step
    #sticky
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step
    .goto Westfall,59.95,19.35
    .target Farmer Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r
    .accept 64 >>接任务: |cRXP_WARN_遗失的怀表|r
    .accept 109 >>接任务: |cRXP_WARN_向格里安·斯托曼报到|r
step
    .goto Westfall,59.92,19.42
    .target Verna Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .accept 151 >>接任务: |cRXP_WARN_老马布兰契|r
step
    #completewith SalmaS
    .goto Westfall,56.04,31.23,65 >>前往Saldean农场
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫萨丁|r
    .accept 9 >>接任务: |cRXP_WARN_清理荒野|r
step
    #label SalmaS
    .goto Westfall,56.40,30.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
    .turnin 36 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .target Salma Saldean
    .accept 38 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .accept 22 >>接任务: |cRXP_WARN_猪肝馅饼|r
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军需官刘易斯|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >>交任务: |cRXP_FRIENDLY_返回西部荒野|r
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 109 >>交任务: |cRXP_FRIENDLY_向格里安·斯托曼报到|r
    .isOnQuest 109
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 12 >>接任务: |cRXP_WARN_西部荒野人民军|r
step
    #era
    .goto Westfall,56.42,47.62
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹努文队长|r
    .accept 102 >>接任务: |cRXP_WARN_西部荒野的豺狼人|r
step << Human
    #requires Lewis
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵加里安|r
    .target Scout Galiaan
    .accept 153 >>接任务: |cRXP_WARN_红色皮质面罩|r
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵加里安|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >>接任务: |cRXP_WARN_红色皮质面罩|r
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
	>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
    .vendor >>|T133918:0|t[长颌式泥浆抓斗]|cRXP_WARN_i很便宜|r
	.target Innkeeper Heather
step
	#completewith bennytime
    >>打开地上的|cRXP_PICK_燕麦袋|r。为|cRXP_Loot_Handful of Oat|r而掠夺它们
    >>|cRXP_WARN_你通常可以在农场围栏或建筑物附近找到它们|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith HarvestW
    >>杀死|cRXP_ENEMY_Young Goretusks|r和|cRXP_ENEMY_ Young Fleshrippers|r。掠夺它们的|cRXD_Loot_Vature Meat|r、|cRXP_Loot_Snouts|r以及|cRXX_Loot_LLivers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob Young Goretusk
    .mob Goretusk
    .mob Young Fleshripper
    .mob Fleshripper
step
    >>杀死|cRXP_ENEMY_Defias Trappers|r和|cRXX_ENEMY_Defias走私者|r。掠夺他们的|cRXD_Loot_红色皮革绷带|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75
    .complete 12,1 -- Defias Trapper slain (15)
    .complete 12,2 -- Defias Smuggler slain (15)
    .complete 153,1 -- Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>打开|cRXP_PICK_Furlbrow的衣橱|r。偷走它|cRXP_Loot_Furlbrow的怀表|r
    >>|cRXP_WARN_如果你的相机角度正确，你可以从外面掠夺|cRXP_PICK_Furlbrow的衣橱|r|r
	>>|cRXP_WARN_注意|cRXP_ENEMY_Benny Blanco|r。他打得很重|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
	#completewith next
    >>打开地上的|cRXP_PICK_燕麦袋|r。为|cRXP_Loot_Handful of Oat|r而掠夺它们
	>>|cRXP_WARN_你通常可以在农场围栏或建筑物附近找到它们|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    >>杀死|cRXP_ENEMY_Riverpaw Gnolls|r和|cRXX_ENEMY_River paw侦察兵|r。掠夺他们的|cRXD_Loot_Gnol Paw|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40
    >>杀死|cRXP_ENEMY_Murloc突袭者|r和|cRXP_ENEMY_ Murloc海岸车|r。掠夺他们的|cRXD_Loot_Eyes |r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>打开地上的|cRXP_PICK_燕麦袋|r。为|cRXP_Loot_Handful of Oat|r而掠夺它们
	>>|cRXP_WARN_你通常可以在农场围栏或建筑物附近找到它们|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, |cRXP_FRIENDLY_弗娜·法布隆|r
    .turnin 64 >>交任务: |cRXP_FRIENDLY_遗失的怀表|r
    .goto Westfall,59.95,19.35
    .turnin 151 >>交任务: |cRXP_FRIENDLY_老马布兰契|r
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, |cRXP_FRIENDLY_弗娜·法布隆|r
    .turnin 64 >>交任务: |cRXP_FRIENDLY_遗失的怀表|r
    .goto Westfall,59.95,19.35
    .turnin 151 >>交任务: |cRXP_FRIENDLY_老马布兰契|r
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
    .goto Westfall,56.40,30.50
    .turnin 22 >>交任务: |cRXP_FRIENDLY_猪肝馅饼|r
    .isQuestComplete 22
    .target Salma Saldean
step
    #completewith next
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫萨丁|r
    .vendor
    >>|cRXP_WARN_请勿出售|T133884:0|t[鼠眼]、|T135997:0|t[Goretusk鼻涕]、|T134341:0|t[TGoretusk肝脏]或|T133972:0|t|r
	.target Farmer Saldean
step
    #label HarvestW
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>杀死|cRXP_ENEMY_Harvest守望者|r。掠夺他们的|cRXP_Loot_油瓶|r和|cRXP-Loot_俄克拉|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1
    .mob Harvest Watcher
step
    .goto Westfall,52.49,42.11,75,0
    .goto Westfall,53.67,46.07,75,0
    .goto Westfall,61.60,45.55,75,0
    .goto Westfall,60.36,27.38,75,0
    .goto Westfall,54.63,19.20,75,0
    .goto Westfall,49.09,26.92,75,0
    .goto Westfall,47.89,42.94,75,0
    .goto Westfall,54.42,40.38
    >>杀死|cRXP_ENEMY_Young Goretusks|r和|cRXP_ENEMY_ Young Fleshrippers|r。掠夺它们的|cRXD_Loot_Vature Meat|r、|cRXP_Loot_Snouts|r以及|cRXX_Loot_LLivers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob Young Goretusk
    .mob Goretusk
    .mob Young Fleshripper
    .mob Fleshripper
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫萨丁|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >>交任务: |cRXP_FRIENDLY_清理荒野|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .turnin 22 >>交任务: |cRXP_FRIENDLY_猪肝馅饼|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >>交任务: |cRXP_FRIENDLY_西部荒野人民军|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹努文队长|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >>交任务: |cRXP_FRIENDLY_西部荒野的豺狼人|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵加里安|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >>交任务: |cRXP_FRIENDLY_红色皮质面罩|r
step << Druid
    .goto Westfall,32.6,22.6,30,0
    .goto Westfall,38.8,18.2,30,0
    .goto Westfall,41.0,12.0,30,0
    .goto Westfall,47.6,9.0,30,0
    .goto Westfall,51.8,9.4,30,0
    .goto Westfall,32.6,22.6
    .goto Westfall,38.8,18.2,0
    .goto Westfall,41.0,12.0,0
    .goto Westfall,47.6,9.0,0
    .goto Westfall,51.8,9.4,0
    .xp 16 >>将Westfall的螃蟹升级到16级
step << Dwarf !Paladin/Gnome
    #label end
    .hs >>希斯玛之炉
step << Dwarf !Paladin/Gnome
    #hardcore
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
step << Human/Dwarf Paladin
    #label end
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Ironforge >>飞往铁炉堡
    .target Thor
step << !NightElf
    .goto Ironforge,55.093,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·火石|r
    >>提高急救水平
    .train 3274 >>列车乘务员急救
    .target Nissa Firestone
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比克斯|r
    .train 2567 >>火车抛锚
    .target Bixi Wobblebonk
step << Dwarf Paladin
    .goto Ironforge,24.55,4.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔杜克·凝眉|r
    .trainer >>训练你的职业技能
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >>向楼上|cRXP_FRIENDLY_Muiredon|r行进
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆里顿·热炉|r
    .turnin 1784 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1785 >>接任务: |cRXP_WARN_圣洁之书|r
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 1785 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .target Tiza Battleforge
step
    .goto Ironforge,39.553,57.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_参议员巴林·红石|r
    .turnin 291 >>交任务: |cRXP_FRIENDLY_森内尔的报告|r
    .target Senator Barin Redstone
    .isOnQuest 291
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>很快在Darkshore购买以下物品以获得即时登录。如果您不想购买，请跳过此步骤
    >>|T133972:0|t[条纹肉]
    >>|T133912:0|t[暗岸石斑鱼]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Ironforge,1
step << !NightElf
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>前往: |cRXP_PICK_丹莫罗|r
step << !NightElf
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>前往Dun Morogh->湿地跳跃点
step << !NightElf
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>|cRXP_WARN_观看视频指南，了解如何先跳过！|r
    >>|cRXP_WARN_邓莫罗不死->湿地跳过|r
    >>|cRXP_WARN_过水时应避开|cRXP_ENEMY_Wetlands Crocolis|r和|cRXX_ENEMY_Murlocs|r|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>|cRXP_WARN_单击此处查看视频指南|r
    .goto Wetlands,12.1,60.3,80 >>前往: |cRXP_PICK_湿地|r
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << !NightElf
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Neal Allen|r没有，请跳过此步骤|r
	.target Neal Allen
    .bronzetube
step << !NightElf
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r, 他在楼上
    .vendor >>|cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_Buy_|r
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Samor Festivus|r没有，请跳过此步骤|r
    .target Samor Festivus
step << !NightElf
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
    .fp Wetlands>>获取湿地飞行路径
    .target Shellei Brondir
step << Hunter !NightElf
	.goto Wetlands,11.334,59.554
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆恩达·德斯|r
    >>|cRXP_WARN_Buy a|r|T135612:0|t[大口径Blunderbuss]
    >>如果您负担不起，请跳过此步骤
	.collect 3023,1 -- Large Bore Blunderbuss
    .target Murndan Derth
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德温·晨光|r
    .vendor >>|cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_Buy_|r
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Dwin Shimmerdawn|r没有，请跳过此步骤|r
    .target Dewin Shimmerdawn
step << !NightElf
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>前往Menethil港码头。等船到黑暗海岸
step << !NightElf
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    >>|cRXP_WARN_调平|r|T135966:0|t[急救]|cRXP_WARN_and|r|T133971:0|t[烹饪]|cRXP_WARN_while waiting the boat to Darkshore|r
    >>|cRXP_WARN_使用您之前养殖的|r|T133970:0|t|cRXP_WARN_（猪肉块）|r|cRXP_WARN_。理想情况下将其调平至10|r
step << NightElf !Druid
    .goto Westfall,56.556,52.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fp Westfall >>获取Westfall飞行路线
    .fly Stormwind >>飞到暴风城
    .target Thor
step << Druid
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
    .skipgossip 1
    .fly Teldrassil >>飞往Rut'theran村
    .target Silva Fil'naveth
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .accept 6121 >>接任务: |cRXP_LOOT_新的课程|r
    .accept 26 >>接任务: |cRXP_WARN_必修的课程|r
    .trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r, 他在楼上
    .turnin 6121 >>交任务: |cRXP_FRIENDLY_新的课程|r
    .accept 6122 >>接任务: |cRXP_WARN_毒水之源|r
    .turnin 26 >>交任务: |cRXP_FRIENDLY_必修的课程|r
    .accept 29 >>接任务: |cRXP_WARN_湖中试炼|r
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.6,51.6
    >>游入Elune'Ara湖
    >>打开一个|cRXP_PICK_Bauble容器|r。将其抢劫成|T134125:0|t[Srine Bauble]
    >>|cRXP_WARN_它可能在水下的不同位置产卵|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #completewith next
    .cast 18960 >>铸造Teleport:Moonglade
    >>|cRXP_WARN_这样游会更快，所以你不需要游更长的时间|r
step << Druid
    .goto Moonglade,36.026,41.374
    .use 15877 >>|cRXP_WARN_使用|r|T134125:0|t[Srine Bauble]|cRXP_WARN_at Shrine of Remulos树|r
    .complete 29,1 --Complete the Trial of the Lake.
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔加里|r
    .turnin 29 >>交任务: |cRXP_FRIENDLY_湖中试炼|r
    .target Tajarri
    .accept 272 >>接任务: |cRXP_WARN_海狮试炼|r
step << NightElf Priest
    .goto StormwindClassic,38.550,26.853
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
    .trainer >>训练你的职业技能
    .target Brother Joshua
step << NightElf Warrior
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    .vendor >>|cRXP_BUY_购买|r|T133046:0|[石锤]|cRXP_Buy_如果你买得起的话|r
    .target Gunther Weller
step << NightElf Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    .vendor >>|cRXP_BUY_买|r|T133052:0|[Hammer]|cRXP_Buy_如果你买得起的话|r
    .target Gunther Weller
step << NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吴平|r
    .target Woo Ping
    .goto StormwindClassic,57.130,57.704
    .train 201 >>训练1h剑
step << NightElf Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗德瑞克·斯图瓦|r
    >>|cRXP_BUY_BUY a|r|T135490:0|t[加固弓]
    >>|cRXP_BUY_库存|r|T132382:0|t[尖箭头]
    .collect 3026,1
    .target Frederick Stover
step << NightElf
    .goto StormwindClassic,43.065,26.156
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊娜·弗勒|r
    >>提高急救水平
    .train 3274 >>列车乘务员急救
    .target Shaina Fuller
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target Wu Shen
    .target Ilsa Corbin
step << NightElf Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
step << NightElf Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >>训练你的职业技能
    .target Einris Brightspear
step << NightElf
    .hs >>奥伯丁之炉
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 15-18 Darkshore
#version 1
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 1-20
--#defaultfor !NightElf
#next 18-19 Loch Modan

step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .accept 3524 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
step << !NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
	.target Caylais Moonfeather
    .goto Darkshore,36.336,45.574
    .fp Auberdine >>获取奥伯丁飞行路线
step << !NightElf
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板莎希因|r
    .home >>将您的炉石设置为Auberdine
    .target Innkeeper Shaussiy
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >>上楼前往|cRXP_FRIENDLY_Wizbang曲柄开关|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹班恩·曲针|r
    .accept 983 >>接任务: |cRXP_LOOT_传声盒827号|r
    .target Wizbang Cranktoggle
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2118 >>接任务: |cRXP_LOOT_瘟疫蔓延|r
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .accept 984 >>接任务: |cRXP_WARN_熊怪的威胁|r
    .target Terenthis
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >>接任务: |cRXP_WARN_钓鱼世家|r
    .turnin 1141 >>交任务: |cRXP_FRIENDLY_钓鱼世家|r
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >>杀死|cRXP_ENEMY_Pygmy潮汐爬行器|r和|cRXP_ENEMY_Young Reef爬行器|r.掠夺它们的|cRXD_Loot_Legs|r
    >>|cRXP_WARN_你可能需要为他们下水|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>为|cRXP_Loot_海洋生物骨骼|r掠夺|cRXP _PICK_Beached海洋生物|r
    .complete 3524,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>探索Furbolg营地
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cRXP_WARN_使用|r|T134335:0|t[Tarnariun的希望]|cRXP_WARN_on a|r|cRXP_ENEMY_Rabid Thistle Bear|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >>杀死|cRXP_ENEMY_Pygmy潮汐爬行器|r和|cRXP_ENEMY_Young Reef爬行器|r.掠夺它们的|cRXD_Loot_Legs|r
    >>|cRXP_WARN_你可能需要为他们下水|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>单击地面上的|cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>交任务: |cRXP_FRIENDLY_传声盒827号|r
step
#map Darkshore
	#era/som
	.goto Felwood,19.13,21.39
    >>单击地面上的|cRXP_PICK_Buzzbox 827|r
    .accept 1001 >>接任务: |cRXP_LOOT_传声盒411号|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    .turnin 3524 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
    .accept 4681 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >>前往码头上的|cRXP_FRIENDLY_Cerellean Whiteclaw|r
step
#map Darkshore
    .goto Felwood,18.10,18.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .accept 963 >>接任务: |cRXP_WARN_永志不渝|r
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >>行驶到码头尽头，然后跳入水中
step
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>杀死|cRXP_ENEMY_Darkshore Thresholds|r。掠夺它们的|cRXX_Loot_Eyes |r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>掠夺|cRXP_PICK_Skeletal Sea Turtle|r以获取|cRXP_OOT_Sea Turtle Remains|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4681 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >>接任务: |cRXP_LOOT_洞中的蘑菇|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .accept 4811 >>接任务: |cRXP_WARN_红色水晶|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2118 >>交任务: |cRXP_FRIENDLY_瘟疫蔓延|r
    .accept 2138 >>接任务: |cRXP_WARN_清除疫病|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 984 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
    .accept 985 >>接任务: |cRXP_WARN_熊怪的威胁|r
    .accept 4761 >>接任务: |cRXP_WARN_桑迪斯·织风|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .accept 982 >>接任务: |cRXP_WARN_深不可测的海洋|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4761 >>交任务: |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 4762 >>接任务: |cRXP_WARN_壁泉河|r
    .accept 958 >>接任务: |cRXP_WARN_上层精灵的工具|r
    .accept 954 >>接任务: |cRXP_LOOT_巴莎兰|r
step
	#era/som
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >>杀死|cRXP_ENEMY_Darkshore Thresholds|r。掠夺它们的|cRXX_Loot_Eyes |r
    .complete 1001,1
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,38.95,29.36,30 >>游向失事的银色曙光号
step
#map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >>|cRXP_WARN_从船底破碎的船体进入失事的“银色曙光号”。在潜水进入之前，确保你有一个充分的呼吸酒吧|r
    >>将|cRXP_Loot_Silver Dawning的锁箱|r洗劫一空
    .complete 982,1
step
    #completewith next
    .goto Darkshore,40.30,27.56,30 >>游向失事的薄雾面纱船
step
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.63,27.45
    >>|cRXP_WARN_从底部破碎的船体进入失事的薄雾面纱船。在潜水进入之前，确保你有一个充分的呼吸酒吧|r
    >>将|cRXP_Loot_Misst面纱的锁箱|r洗劫一空
    .complete 982,2
step
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83
    >>杀死|cRXP_ENEMY_Darkshore Thresholds|r。掠夺它们的|cRXX_Loot_Eyes |r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
	#era/som
    .goto Felwood,25.19,1.29
    >>单击地面上的|cRXP_PICK_Buzzbox 411|r
    .turnin 1001 >>交任务: |cRXP_FRIENDLY_传声盒411号|r
    .accept 1002 >>接任务: |cRXP_LOOT_传声盒323号|r
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step << Druid
    #completewith cure1
    >>收集5|T134187:0|t[Earthroot]
    .collect 2449,5,6123,1
step
    #completewith Ameth
    >>杀死|cRXP_ENEMY_Foreststrider |r和|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXD_Loot_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #era/som
    #completewith Ameth
    >>杀死|cRXP_ENEMY_Moonstrackers|r和|cRXP_ENEMY_moonstracker符文|r。掠夺他们的|cRXD_Loot_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith bears1
    >>杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,44.18,20.60
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4725 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_在克利夫斯普林河底部使用|r|T134865:0|t[空采样管]|cRXP_WARN_|r
    .complete 4762,1
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >>Travel to Bashal'Aran
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    >>|cRXP_WARN_避免在途中杀死|cRXP_ENEMY_Wild Grells|r和|cRXX_ENEMY_Vile Sprites|r|r
    .turnin 954 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 955 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>杀死|cRXP_ENEMY_Wild Grells|r和|cRXD_ENEMY_Vile Sprites|r。偷走它们的|cRXP_Loot_Errings |r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 955 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 956 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>杀死|cRXP_ENEMY_Deth'ryl Satyr|r。掠夺它们以获得|cRXX_Loot_Moonstone封印|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 956 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 957 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step << !NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t[|cRXP-Loot_Smal Egg|r]
    >>|cRXP_WARN_您稍后将使用|r|T132832:0|t[|cRXP_OOT_Small Eggs|r]将|r|T133971:0|t[烹饪]|cRXP-WARN_to 10升级
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
    >>前往|cRXP_PICK_红水晶|r
    .complete 4811,1
step << NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>前往|cRXP_PICK_红水晶|r
    .complete 4811,1
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t[|cRXP-Loot_Smal Egg|r]
    .collect 6889,10,2178,1,0x20,cooking -- Small Egg
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    #completewith next
    .goto Darkshore,40.30,59.70,70 >>向南行驶至Ameth'Aran的|cRXP_FRIENDLY_大陆Tysha Moonblade|r
step
    #label Ameth
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >>接任务: |cRXP_WARN_亚米萨兰的毁灭|r
step
    #completewith TheLay
    >>杀死|cRXP_ENEMY_Anaya Dawnrunner |r。为她掠夺她|cRXX_Loot_Pendint|r
    >>|cRXP_ENEMY_Anaya Dawnrunner |r|cRXP_WARN_trols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >>杀死|cRXP_ENEMY_诅咒的高出生者|r，|cRXD_ENEMY_Writing Highbornes |r和|cRXP_ENEMY_Wailing Highbornes | r。掠夺他们的|cRXP_Loot_ERCURES |r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>单击|cRXP_PICK_the Fall of Ameth'Aran |r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>单击|cRXP_PICK_Ancient Flame|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>单击|cRXP_PICK_the Lay of Ameth'Aran |r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >>杀死|cRXP_ENEMY_Anaya Dawnrunner |r。为她掠夺她|cRXX_Loot_Pendint|r
    >>|cRXP_ENEMY_Anaya Dawnrunner |r|cRXP_WARN_trols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>杀死|cRXP_ENEMY_诅咒的高出生者|r，|cRXD_ENEMY_Writing Highbornes |r和|cRXP_ENEMY_Wailing Highbornes | r。掠夺他们的|cRXP_Loot_ERCURES |r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>杀死|cRXP_ENEMY_Anaya Dawnrunner |r。为她掠夺她|cRXX_Loot_Pendint|r
    >>|cRXP_ENEMY_Anaya Dawnrunner |r|cRXP_WARN_trols Ameth'Aran。她有很长的重生时间，如果她现在不起床，你可以跳过这一步|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .turnin 953 >>交任务: |cRXP_FRIENDLY_亚米萨兰的毁灭|r
step
    #era/som
    #completewith ReturnAuber
    >>杀死|cRXP_ENEMY_Moonstrackers|r和|cRXP_ENEMY_moonstracker符文|r。掠夺他们的|cRXD_Loot_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith BearComplete
    >>杀死|cRXP_ENEMY_Foreststrider |r和|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXD_Loot_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #completewith Beached4728
    >>杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    >>杀死|cRXP_ENEMY_Blackwood探路者|r和|cRXX_ENEMY_Blackwood风语者|r
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    .complete 985,1 -- Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 16 >>升级到16级

step
#map Darkshore
    .goto Felwood,19.64,39.52
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
#map Darkshore
    #label Beached4728
    .goto Felwood,18.41,49.43
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step
    #label BearComplete
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>杀死|cRXP_ENEMY_Foreststrider |r和|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXD_Loot_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
#map Darkshore
    #label ReturnAuber
    #completewith ManyBeached
    .goto Felwood,18.50,19.87,100 >>Travel to Auberdine
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .accept 1138 >>接任务: |cRXP_WARN_海中的水果|r
step
#map Darkshore
    #label ManyBeached
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4723 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4728 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4722 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4725 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >>前往码头上的|cRXP_FRIENDLY_Cerellean Whiteclaw|r
step
#map Darkshore
	.isQuestComplete 963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
	.target Cerellean Whiteclaw
    .goto Felwood,18.10,18.48
    .turnin 963 >>交任务: |cRXP_FRIENDLY_永志不渝|r
step << !NightElf !Mage !Paladin !Warlock
    .goto Darkshore,33.17,40.17,40,0
    .goto Darkshore,33.17,40.17,0
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
    .zoneskip Darnassus
step << !NightElf !Mage !Paladin !Warlock
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
    .trainer >>训练你的职业技能
    .target Jocaste
step << !NightElf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
    .goto Darnassus,37.901,82.742
    .trainer >>训练你的职业技能
    .target Jandria
step << !NightElf Warrior
    .goto Darnassus,58.945,35.336
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达纳斯·刃歌|r
    .trainer >>训练你的职业技能
    .target Darnath Bladesinger
step << !NightElf Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
    .trainer >>训练你的职业技能
    .target Syurna
step << !NightElf Hunter/!NightElf Warrior
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 264 >>火车弓
    .train 227 >>火车杆
    .target Ilyenia Moonfire
step << !NightElf !Mage !Paladin !Warlock
    .goto Darnassus,30.7,41.3,15 >>前往: |cRXP_PICK_泰达希尔|r
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << !NightElf !Mage !Paladin !Warlock
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞到黑海岸
    .target Vesprystus
step
    #completewith next
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    +购买|T134059:0|t[淡香料]
    >>|cRXP_WARN_使用|r|T134059:0|t[温和的香料]|cRXP_WARN_和|r|T132832:0|t[小鸡蛋]|cRXP_WARN__制作香草烤鸡蛋。这样做直到你的烹饪达到10级|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    #completewith ezstrider
    +|cRXP_WARN_使用您的|r|T133971:0|t[烹饪]|cRXP_WARN_profession制作香草烤鸡蛋。执行此操作，直到|r|T133971:0|t[烹饪]|cRXP_WARN_has达到10级|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .turnin 982 >>交任务: |cRXP_FRIENDLY_深不可测的海洋|r
step
    #label ezstrider
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >>接任务: |cRXP_WARN_炖陆行鸟|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 958 >>交任务: |cRXP_FRIENDLY_上层精灵的工具|r
    .turnin 4762 >>交任务: |cRXP_FRIENDLY_壁泉河|r
    .accept 4763 >>接任务: |cRXP_WARN_黑木熊怪的堕落|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .turnin 4811 >>交任务: |cRXP_FRIENDLY_红色水晶|r
    .accept 4812 >>接任务: |cRXP_WARN_清洗水晶|r
step
#sticky
#label tube1
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_在Auberdine Moonwell使用|r|T134865:0|t[空水管]|cRXP_WARN_|r
    .complete 4812,1
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_在Auberdine Moonwell使用|r|T133748:0|t[空的清洁碗]|cRXP_WARN_at|r
    .collect 12347,1,4763,1
step
#requires tube1
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2138 >>交任务: |cRXP_FRIENDLY_清除疫病|r
    .accept 2139 >>接任务: |cRXP_LOOT_萨纳瑞恩的希望|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 985 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .accept 986 >>接任务: |cRXP_LOOT_丢失的主人|r
    .group
step
#map Darkshore
    .goto Darkshore,39.26,43.04,5,0
    .goto Felwood,21.86,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵艾莉萨·星风|r, 他在楼上
    .accept 965 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Sentinel Elissa Starbreeze
step
    #era/som
    #completewith CliffCave
    >>杀死|cRXP_ENEMY_Moonstrackers|r和|cRXP_ENEMY_moonstracker符文|r。掠夺他们的|cRXD_Loot_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
    #completewith next
    .goto Felwood,31.29,24.14,15 >>再次前往红水晶
step
#map Darkshore
    .goto Felwood,31.29,24.14
    >>单击|cRXP_PICK_红色水晶|r
    .turnin 4812 >>交任务: |cRXP_FRIENDLY_清洗水晶|r
    .accept 4813 >>接任务: |cRXP_WARN_水晶中的碎骨|r
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,70 >>前往Bashal'Aran的|cRXP_FRIENDLY_Asterion|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
	.target Asterion
    .goto Felwood,27.70,10.03
    .turnin 957 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
step << Paladin
    .goto Darkshore,50.74,34.68
	>>杀死|cRXP_ENEMY_Blackwood战士|r和|cRXX_ENEMY_Blackwood图腾|r。掠夺他们的|T132889:0|t[亚麻布]
    >>|cRXP_WARN_您需要稍后为您的|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_class任务保存10|r|T132889:0|t[Linen Cloth]|cRXP-WARN_form|r
	.collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
.group
    .goto Darkshore,50.66,34.94
    >>打开|cRXP_PICK_Blackwood Grain Stores|r。为|cRXP_Loot_Blacwood Grain Sample|r进行掠夺
    >>|cRXP_WARN_掠夺它会产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它会向你发起攻击。准备好对抗它们或重置它们|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
.group
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>杀死|cRXP_ENEMY_Den母亲|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Thistle Cubs|r，它可以让你眩晕2秒|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
.group
    .goto Darkshore,51.83,33.50
    >>打开|cRXP_PICK_Blackwood Nut Stores|r。为|cRXP_Loot_Blacwood Nut Sample|r进行掠夺
    >>|cRXP_WARN_掠夺它会产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它会向你发起攻击。准备好对抗它们或重置它们|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
.group
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>打开|cRXP_PICK_Blackwood水果店|r。将其洗劫一空，以获取|cRXP _Loot_Blackwood水果样品|r
    >>|cRXP_WARN_掠夺它会产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它会向你发起攻击。准备好对抗它们或重置它们|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
.group
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_使用|r|T134712:0|t[填充的清洁碗]|cRXP_WARN_at |cRX_PICK_Bonfire|r来召唤|r|cRXP_ENEMY_Xabraxxis|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
.group
    .goto Darkshore,52.38,33.39
    >>杀死|cRXP_ENEMY_Xabraxxis|r。打开他掉在地上的|cRX_PICK_Xabraxxis的恶魔袋|r。为|cRXP_Loot_腐败魔符|r掠夺它
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
.group << !Druid
#map Darkshore
    #label CliffCave
    #completewith next
    .goto Darkshore,54.99,32.04,30,0
    .goto Darkshore,54.99,33.41,15 >>前往悬崖泉河洞穴
step << Druid
    >>|cRXP_WARN_在悬崖泉河洞穴入口处的水中使用|r|T134776:0|t[空悬崖泉瀑布采样器]|cRXP_WARN_in|r
    .goto Darkshore,54.99,33.41
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
.group
    .goto Darkshore,55.66,34.89
    >>掠夺地面上的|cRXP_Loot_Scarber Stalks|r和|cRXX_Loot_Sdeath Cap|r
    >>|cRXP_WARN_保持上半部分。如果|cRXP_LOOT_Death Cap|r不在顶面的末端，请向下下拉并从下面获取一个|r
    >>|cRXP_WARN_不要背朝中央|cRXP_ENEMY_Stormscale波浪骑士的|r可以把你击退！|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
.group
    .isQuestComplete 947
    .goto Darkshore,54.81,32.92,30 >>退出悬崖泉河洞穴
step
    #completewith next
    >>杀死|cRXP_ENEMY_Moonstrackers|r和|cRXP_ENEMY_moonstracker符文|r。掠夺他们的|cRXD_Loot_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴苏尔·影击|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 965 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 966 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
step << !Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>杀死|cRXP_ENEMY_Dark Strand Fanatics|r。掠夺他们的|cRXD_Loot_Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>杀死|cRXP_ENEMY_Dark Strand Fanatics|r。掠夺他们的|cRXD_Loot_Parchments|r和|T132889:0|t[亚麻布]
    >>|cRXP_WARN_您需要稍后为您的|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_class任务保存10|r|T132889:0|t[Linen Cloth]|cRXP-WARN_form|r
    .complete 966,1 --Worn Parchment (4)
    .collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Dark Strand Fanatic
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴苏尔·影击|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 966 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 967 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
step
.group 3
#map Darkshore
    #completewith next
    .goto Winterspring,6.37,16.66,50 >>Travel to Mist's Edge
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .accept 2098 >>接任务: |cRXP_WARN_基尔卡克的钥匙|r
    .target Gelkak Gyromast
step
.group 3
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>杀死|cRXP_ENEMY_Raging Reef Crawlers |r和|cRXP_ENEMY_Encrusted Tide Crawlers | r。掠夺它们以获取|cRXD_Loot_盖尔卡钥匙底部|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Raging Reef Crawlers |r|T132152:0|t[Srash]能力。你可以从他们的近战命中中立即受到200点伤害|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    .goto Darkshore,54.93,12.19
    >>杀死|cRXP_ENEMY_Greymist Oracles|r和|cRXX_ENEMY_Graymist Tidehunter|r。为Gelkak的密钥的|cRXD_Loot_中间|r掠夺它们
    >>|cRXP_WARN_注意|cRXP_ENEMY_Greymist Oracles|r|T136048:0|t[闪电]伤害，它们也可以使用|T136052:0|t][治疗波]进行治疗|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
.group 3
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>杀死|cRXP_ENEMY_Raging Reef Crawlers |r和|cRXP_ENEMY_Encrusted Tide Crawlers | r。掠夺它们以获取|cRXD_Loot_盖尔卡钥匙底部|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Raging Reef Crawlers |r|T132152:0|t[Srash]能力。你可以从他们的近战命中中立即受到200点伤害|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>杀死|cRXP_ENEMY_Giant Foreststridger|r。掠夺它们以获取|cRXP-Loot_Gelkak钥匙顶部|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
.group
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>杀死|cRXP_ENEMY_Moonstracker Sires|r和|cRXX_ENEMY_moonstracker Matriarchs|r。掠夺他们的|cRXD_Loot_Pelts|r和| cRXP_Loot_Fangs|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Moonstracker矩阵|r。他们总是在身边用|cRXX_ENEMY_moonstracker符文|r进行攻击|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
    .isOnQuest 986,1002
step
.group 3
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2098 >>交任务: |cRXP_FRIENDLY_基尔卡克的钥匙|r
    .accept 2078 >>接任务: |cRXP_WARN_基尔卡克的报复|r
    .target Gelkak Gyromast
step
.group 3
#map Darkshore
    .goto Winterspring,5.59,21.09,10,0
    .goto Winterspring,6.37,16.66
    >>对话: |cRXP_FRIENDLY_机械打手4100型|r
    >>护送|cRXP_FRIENDLY_脱粒机4100|r至|cRXP_FRIENDLY_Gelkak陀螺仪|r
    >>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
    >>|cRXP_WARN_这个任务非常困难|r
    .skipgossip
    .complete 2078,1
    .link https://clips.twitch.tv/VainAmorphousMacaroniPRChase-iGvhTnz0ked6LO0A >>|cRXP_WARN_单击此处查看视频指南|r
    .mob The Threshwackonator 4100
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    .target Gelkak Gyromast
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2078 >>交任务: |cRXP_FRIENDLY_基尔卡克的报复|r
    .isQuestComplete 2078
step
.group
    #sticky
    .destroy 7442 >>摧毁: |cRXP_ENEMY_基尔卡克的钥匙|r
step
#map Darkshore
    .goto Winterspring,3.10,20.90
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >>接任务: |cRXP_WARN_搁浅的海龟|r
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Swim out in the water|r
    >>打开|cRXP_PICK_Strange锁箱|r。为|cRXP_Loot_水生敏捷半挂件|r将其打开
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    #completewith next
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Crab Chunks|r
    >>|cRXP_WARN_如果|cRXP_ENEMY_Encrusted Tide Crawler|r太强，只关注|r|cRXX_ENEMY_Reef Crawlers|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
#map Darkshore
    .goto Winterspring,1.42,26.89
    >>单击地面上的|cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>交任务: |cRXP_FRIENDLY_传声盒323号|r
    .accept 1003 >>接任务: |cRXP_LOOT_传声盒525号|r
step
    .goto Darkshore,51.50,22.26,50,0
    .goto Darkshore,49.66,21.39
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Crab Chunks|r
    >>|cRXP_WARN_如果|cRXP_ENEMY_Encrusted Tide Crawler|r太强，只关注|r|cRXX_ENEMY_Reef Crawlers|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,50.74,34.68
	.xp 18-2750 >>升级直到距离18级2750 xp
    >>杀死|cRXP_ENEMY_Blackwood勇士|r和|cRXX_ENEMY_Blackwood图腾|r。
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
    #completewith next
    .hs >>奥伯丁之炉
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4727 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .turnin 1138 >>交任务: |cRXP_FRIENDLY_海中的水果|r
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >>交任务: |cRXP_FRIENDLY_洞中的蘑菇|r
    .accept 948 >>接任务: |cRXP_LOOT_安努|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
	.target Sentinel Glynda Nal'Shea
    .goto Darkshore,37.70,43.39
    .turnin 4813 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >>交任务: |cRXP_FRIENDLY_萨纳瑞恩的希望|r
step
.group
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 986 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
    .accept 993 >>接任务: |cRXP_LOOT_丢失的主人|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >>接任务: |cRXP_WARN_炖陆行鸟|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >>交任务: |cRXP_FRIENDLY_黑木熊怪的堕落|r
step << Druid
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 6122 >>交任务: |cRXP_FRIENDLY_毒水之源|r
    .target Alanndarian Nightsong
    .accept 6123 >>接任务: |cRXP_WARN_收集解药|r
step << Druid
#label cure1
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t[|cRXP-Loot_Smal Egg|r]
    >>你稍后需要烹饪50道菜才能完成任务
    .collect 6889,40,90,1,0x21,cooking
    >>在整个洞穴的地面上掠夺|cRXP_Loot_月球真菌|r
    .complete 6123,2
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t[|cRXP-Loot_Smal Egg|r]
    >>你稍后需要烹饪50道菜才能完成任务
    .collect 6889,40,90,1,0x20,cooking
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step << Druid
    >>收完5|T134187:0|t[土根]
    >>你可以沿着东边的山把它们收集起来
    .collect 2449,5,6123,1
step << Druid
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 6123 >>交任务: |cRXP_FRIENDLY_收集解药|r
    .accept 6124 >>接任务: |cRXP_WARN_消除疾病|r
    .target Alanndarian Nightsong
step << Druid
    .goto Darkshore,41.0,79.6
    >>|cRXP_WARN_向南行驶，同时使用|r|T132801:0|t[治疗性动物救助]|cRXP_WARN_on|r|cRXP-ENEMY_Sickly Deer|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .unitscan Sickly Deer
step << Druid
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.2,30.4
    >>前往Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 6124 >>交任务: |cRXP_FRIENDLY_消除疾病|r
    .accept 6125 >>接任务: |cRXP_WARN_解毒之术|r
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
step << Druid
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
    .skipgossip 1
    .fly Teldrassil >>飞往Rut'theran村
    .target Silva Fil'naveth
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r, 他在楼上
    .turnin 6125 >>交任务: |cRXP_FRIENDLY_解毒之术|r
step << Druid
    .goto Darnassus,30.7,41.3 >>前往: |cRXP_PICK_泰达希尔|r
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞到黑海岸
    .target Vesprystus
step
    #completewith next
    .goto 1439,32.432,43.744,15 >>前往Auberdine码头。等待Menethil港的船
step
    .goto Darkshore,32.44,43.71
    >>|cRXP_WARN_调平|r|T135966:0|t[急救]|cRXP_WARN_and|r|T133971:0|t[烹饪]|cRXP_WARN_while waiting the Menethil Harbor boat|r
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 20-21 黑海岸/灰谷
#version 1
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 1-20
#next 21-23 Stonetalon/Ashenvale

step << Druid
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
	>>前往Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
step
    #completewith TheryluneE
    .hs >>奥伯丁之炉
    .zoneskip Darkshore
    .zoneskip Ashenvale
step
    .goto Darkshore,37.21,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t单击|cRXP_FRIENDLY_The Wanted Poster|r
    .accept 4740 >>接任务: |cRXP_LOOT_通缉：莫克迪普！|r
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >>接任务: |cRXP_LOOT_洞中的蘑菇|r
step
    .goto Darkshore,37.44,41.83
    .target Archaeologist Hollee
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接任务: |cRXP_WARN_健忘的勘察员|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .accept 4763 >>接任务: |cRXP_WARN_黑木熊怪的堕落|r
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_在Auberdine Moonwell中使用|r|T133748:0|t[清空清洁碗]|cRXP_WARN_in|r
    .collect 12347,1,4763,1
step
    .goto Darkshore,38.326,43.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 3765 >>交任务: |cRXP_FRIENDLY_遥远的旅途|r
    .target Gershala Nightwhisper
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .accept 2139 >>接任务: |cRXP_LOOT_萨纳瑞恩的希望|r
step
    .goto Darkshore,50.66,34.94
    >>打开|cRXP_PICK_Blackwood Grain Stores|r。为|cRXP_Loot_Blacwood Grain Sample|r进行掠夺
    >>|cRXP_WARN_掠夺它会产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它会向你发起攻击。准备好对抗它们或重置它们|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>杀死|cRXP_ENEMY_Den母亲|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Thistle Cubs|r，它可以让你眩晕2秒|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
    .goto Darkshore,51.83,33.50
    >>打开|cRXP_PICK_Blackwood Nut Stores|r。为|cRXP_Loot_Blacwood Nut Sample|r进行掠夺
    >>|cRXP_WARN_掠夺它会产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它会向你发起攻击。准备好对抗它们或重置它们|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>打开|cRXP_PICK_Blackwood水果店|r。将其洗劫一空，以获取|cRXP _Loot_Blackwood水果样品|r
    >>|cRXP_WARN_掠夺它会产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它会向你发起攻击。准备好对抗它们或重置它们|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_使用|r|T134712:0|t[填充的清洁碗]|cRXP_WARN_at |cRX_PICK_Bonfire|r来召唤|r|cRXP_ENEMY_Xabraxxis|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
    .goto Darkshore,52.38,33.39
    >>杀死|cRXP_ENEMY_Xabraxxis|r。打开他掉在地上的|cRX_PICK_Xabraxxis的恶魔袋|r。为|cRXP_Loot_腐败魔符|r掠夺它
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,55.66,34.89
    >>掠夺地面上的|cRXP_Loot_Scarber Stalks|r和|cRXX_Loot_Sdeath Cap|r
    >>|cRXP_WARN_保持上半部分。如果|cRXP_LOOT_Death Cap|r不在顶面的末端，请向下下拉并从下面获取一个|r
    >>|cRXP_WARN_不要背朝中央|cRXP_ENEMY_Stormscale波浪骑士的|r可以把你击退！|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
--TODO: Add logout skip video
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >>交任务: |cRXP_FRIENDLY_黑木熊怪的堕落|r
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >>交任务: |cRXP_FRIENDLY_洞中的蘑菇|r
    .accept 948 >>接任务: |cRXP_LOOT_安努|r
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >>交任务: |cRXP_FRIENDLY_萨纳瑞恩的希望|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .accept 986 >>接任务: |cRXP_LOOT_丢失的主人|r
step
    #completewith moonstalkers
    >>杀死|cRXP_ENEMY_Moonstracker Sires|r和|cRXX_ENEMY_moonstracker Matriarchs|r。掠夺他们的|cRXD_Loot_Pelts|r和| cRXP_Loot_Fangs|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Moonstracker矩阵|r。他们总是在身边用|cRXX_ENEMY_moonstracker符文|r进行攻击|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
	#era/som
    #completewith Murkdeep
    .goto Darkshore,40.23,81.28,0
    >>杀死|cRXP_ENEMY_Grizzled Thistle Bears|r。掠夺它们的|cRXX_Loot_Scapps|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
#map Darkshore
    #completewith OnuGrove
    .goto Felwood,27.00,55.59,80 >>古树林之旅
step
#map Darkshore
    #label OnuGrove
    .goto Felwood,27.00,55.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 952 >>交任务: |cRXP_FRIENDLY_古树之林|r << NightElf
    .turnin 948 >>交任务: |cRXP_FRIENDLY_安努|r
    .accept 944 >>接任务: |cRXP_WARN_主宰之剑|r
    .target Onu
step
    #completewith next
    #label MasterG
    .goto Darkshore,38.54,86.05,60 >>大师魅力之旅
step
#label moonstalkers
    .goto Darkshore,38.54,86.05
    >>发现大师的魅力
    >>|cRXP_ENEMY_暮光之城暴徒|r|cRXP_WARN_can|r|T132343:0|t[解除防护]|cRXP-WARN_you持续6秒|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight规程|r|cRXP_WARN_cast|r|T135953:0|t[更新]|cRXP-WARN_anda 3 seconds|r|T135915:0|t[治愈]
    .complete 944,1
step
    #completewith next
    .cast 5809 >>|cRXP_WARN_使用|r|T134715:0|t[干燥系数]|cRXP_WARN_并将其放在地面上|r
    .use 5251
step
    .goto Darkshore,38.54,86.05
    .use 5251 >>单击|cRXP_PICK_Scrying Bowl|r
    .turnin 944 >>交任务: |cRXP_FRIENDLY_主宰之剑|r
    .accept 949 >>接任务: |cRXP_LOOT_暮光之锤的营地|r
    >>|cRXP_ENEMY_暮光之城暴徒|r|cRXP_WARN_can|r|T132343:0|t[解除防护]|cRXP-WARN_you持续6秒|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight规程|r|cRXP_WARN_cast|r|T135953:0|t[更新]|cRXP-WARN_anda 3 seconds|r|T135915:0|t[治愈]
step
    .goto Ashenvale,22.24,2.52
    >>单击|cRXP_PICK_Twilight Tome|r
    .turnin 949 >>交任务: |cRXP_FRIENDLY_暮光之锤的营地|r
    .accept 950 >>接任务: |cRXP_LOOT_向安努回复|r
    >>|cRXP_ENEMY_暮光之城暴徒|r|cRXP_WARN_can|r|T132343:0|t[解除防护]|cRXP-WARN_you持续6秒|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight规程|r|cRXP_WARN_cast|r|T135953:0|t[更新]|cRXP-WARN_anda 3 seconds|r|T135915:0|t[治愈]
step
    .goto Ashenvale,22.36,3.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟瑞露尼|r
    >>|cRXP_WARN_如果她不在，跳过这一步|r
    >>|cRXP_ENEMY_暮光之城暴徒|r|cRXP_WARN_can|r|T132343:0|t[解除防护]|cRXP-WARN_you持续6秒|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight规程|r|cRXP_WARN_cast|r|T135953:0|t[更新]|cRXP-WARN_anda 3 seconds|r|T135915:0|t[治愈]
    .accept 945 >>接任务: |cRXP_WARN_护送瑟瑞露尼|r
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Therylune|r离开大师之光|r
    >>|cRXP_ENEMY_暮光之城暴徒|r|cRXP_WARN_can|r|T132343:0|t[解除防护]|cRXP-WARN_you持续6秒|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight规程|r|cRXP_WARN_cast|r|T135953:0|t[更新]|cRXP-WARN_anda 3 seconds|r|T135915:0|t[治愈]
    .complete 945,1 -- 护送Therylune
    .isOnQuest 945
step
    .destroy 5251 >>摧毁: |cRXP_ENEMY_占卜之水|r
step
    .goto Darkshore,39.3,91.8,60,0
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
	.goto Darkshore,39.3,91.8
    >>杀死|cRXP_ENEMY_Moonstracker Sires|r和|cRXX_ENEMY_moonstracker Matriarchs|r。掠夺他们的|cRXD_Loot_Pelts|r和| cRXP_Loot_Fangs|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Moonstracker矩阵|r。他们总是在身边用|cRXX_ENEMY_moonstracker符文|r进行攻击|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
#map Darkshore
    #sticky
    #label prospector
    .goto Felwood,18.08,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    .turnin 729 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    >>这将开始护送
    .accept 731,1 >>接任务: |cRXP_WARN_健忘的勘察员|r
    >>|cRXP_WARN_这个任务非常困难。如果你找不到团体或单人，请跳过此步骤|r
    .link https://www.twitch.tv/videos/1182180918 >>|cRXP_WARN_单击此处查看视频指南|r
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Prospector Remtravel|r通过挖掘|r
    >>|cRXP_WARN_这个任务非常困难。如果你找不到团体或单人，请跳过此步骤|r
    .link https://www.twitch.tv/videos/1182180918 >>|cRXP_WARN_单击此处查看视频指南|r
    .complete 731,1
    .isOnQuest 731
step
    .goto Ashenvale,13.97,4.10
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
    >>|cRXP_WARN_这个任务可能非常困难。使用|cRXP_ENEMY_Murlocs|r 1乘1，否则您可能同时农用多个|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >>|cRXP_WARN_单击此处查看视频指南|r
step
    .goto Ashenvale,13.93,2.01
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step
    #label Murkdeep
    .goto Darkshore,36.64,76.53
    >>在营地杀死|cRXP_ENEMY_Greymist Warriors|r和|cRXX_ENEMY_Graymist Hunter|r
    >>|cRXP_WARN_移动到营地中心的篝火处，召唤|r|cRXP_ENEMY_Murkdeep|r
    >>杀死|cRXP_ENEMY_Murkdeep|r。他会从水里跑出来的
    .complete 4740,1
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
	#era/som
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>杀死|cRXP_ENEMY_Grizzled Thistle Bears|r。掠夺它们的|cRXX_Loot_Scapps|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #era/som
    .goto Darkshore,41.389,80.565
    >>单击地面上的|cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>交任务: |cRXP_FRIENDLY_传声盒525号|r
    .isOnQuest 1003
step
.group
    #completewith next
    .goto Darkshore,45.00,85.30,30 >>前往洞穴中的|cRXP_FRIENDLY_Volcor|r
step
.group
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃科尔|r
    .turnin 993 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
    .accept 995 >>接任务: |cRXP_WARN_偷偷溜走|r
    .timer 20,Escape Through Stealth RP
    .target Volcor
    .isQuestTurnedIn 986
step
.group
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_等待RP|r
    .complete 995,1
    .isQuestTurnedIn 986
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 951 >>交任务: |cRXP_FRIENDLY_玛塞斯特拉遗物|r
    .isQuestComplete 951
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务: |cRXP_FRIENDLY_向安努回复|r
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    >>|cRXP_WARN_如果他不在，跳过这一步。他可能需要25分钟才能重生|r
	.target Kerlonian Evershade
    .accept 5321 >>接任务: |cRXP_WARN_昏昏欲睡|r
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>打开|cRXP_PICK_Kerlonian的胸脯|r。为|T134229:0|t[|cRXP_Loot_觉醒之角|r]掠夺它
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Kerlonian|r前往阿申瓦尔的Maestra哨所|r
    .use 13536 >>|cRXP_WARN_使用|r|T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]|cRXP _WARN_whenever|cRXP_FRIENDLY_Kerlonian|r在他旁边睡着|r
    >>|cRXP_WARN_尽量避免在主干道上跑步。只有当你在路上时，敌人才会滋生|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >>交任务: |cRXP_FRIENDLY_昏昏欲睡|r
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .accept 970 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>接任务: |cRXP_LOOT_巴斯兰的头发|r
    .xp <20,1
step
    #era/som
    .goto Ashenvale,31.25,30.70
    >>杀死|cRXP_ENEMY_Dark Strand Cultors|r，|cRXD_ENEMY_ Dark StrandAdepts|r，| cRXP__ENEMY_DarkStrand Enforcers |r和|cRXP_ENEMY_深色Strand挖掘机|r。掠夺它们以获得|cRXP_Loot_光辉灵魂宝石|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>打开地面上的|cRXP_PICK_Plant Bundles|r。偷走它们|cRXP_Loot_Bathran的头发|r
    >>|cRXP_WARN_它们看起来像棕色的小麻袋。它们可能很难看到|r
    .complete 1010,1
    .isOnQuest 1010
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
step
    .goto Ashenvale,31.89,22.53
    .xp 20 >>升级到20级
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>接任务: |cRXP_LOOT_巴斯兰的头发|r
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>打开地面上的|cRXP_PICK_Plant Bundles|r。偷走它们|cRXP_Loot_Bathran的头发|r
    >>|cRXP_WARN_它们看起来像棕色的小麻袋。它们可能很难看到|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>交任务: |cRXP_FRIENDLY_巴斯兰的头发|r
    .accept 1020 >>接任务: |cRXP_LOOT_奥雷迪尔的药剂|r
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 973 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.40,48.00
    .subzone 415 >>Travel to Astranaar
step
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
    .fp Astranaar>>获取Astranaar飞行路线
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德瑞尔·速火|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .accept 1008 >>接任务: |cRXP_WARN_佐拉姆海岸|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵塞恩希尔|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >>接任务: |cRXP_WARN_守卫石爪山|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法德瑞斯·戈森沙尔|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >>接任务: |cRXP_WARN_石爪峰之旅|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱恩·狼行者|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >>接任务: |cRXP_WARN_莱恩的净化|r
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板基姆利雅|r
    .home >>将您的炉石设置为Astranaar
    .target Innkeeper Kimlya
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .turnin 1020 >>交任务: |cRXP_FRIENDLY_奥雷迪尔的药剂|r
step
.dungeon WC
    #completewith TravelRatchet
    .goto Ashenvale,20.31,42.33,0
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >>前往荒野中的棘轮。按箭头避开|cRXP_ENEMY_Barrens Guards|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fp Ratchet >>获取棘轮飞行路径
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .accept 959 >>接任务: |cRXP_WARN_港口的麻烦|r
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >>前往哭泣的洞穴。登上山，然后下降到哭泣洞穴入口上方的隐藏洞穴中。按照箭头进入|cRXP_FRIENDLY_Nalpak|r和|cRXP-FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔帕克|r, |cRXP_FRIENDLY_厄布鲁|r
    .accept 1486 >>接任务: |cRXP_LOOT_变异皮革|r
    .goto 1414,51.912,55.422 -- Nalpak
    .accept 1487 >>接任务: |cRXP_WARN_清除变异者|r
    .goto 1414,51.918,55.444 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>杀死所有类型的|cRXP_ENEMY_Deviate|r生物。掠夺他们的|cRXP_Loot_Divate隐藏|r
    >>|cRXP_WARN_这可以在哭闹洞穴内外完成|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85
    >>杀死|cRXP_ENEMY_Mad Magglish|r。为|cRXP-Loot_99年前的港口而掠夺他|r
    >>|cRXP_ENEMY_疯狂的Magglish|r|cRXP_WARN_can在几个地方滋生|r
    >>|cRXP_WARN_这项任务是在哭泣洞穴外完成的|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414,52.37,55.20
    +进入哭泣的洞穴
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>杀死所有类型的|cRXP_ENEMY_Deviate|r生物。掠夺他们的|cRXP_Loot_Divate隐藏|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>杀死所有类型的|cRXP_ENEMY_Deviate|r生物
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>杀死所有类型的|cRXP_ENEMY_Deviate|r生物。掠夺他们的|cRXP_Loot_Divate隐藏|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>杀死|cRXP_ENEMY_Lord Cobrahn |r、|cRXD_ENEMY_ Lord Pythas|r、| cRXP__ENEMY_ Serpentis |r和|cRXP_ENEMY_Lady Anacondra|r，然后在实例开始时与|cRXP_FRIENDLY_Disciple of Naralex|r交谈，开始护送
    >>Escort the |cRXP_FRIENDLY_Disciple of Naralex|r through Wailing Caverns and complete the ritual of awakening
    >>杀死吞噬者|cRXP_ENEMY_Mutanus |r。掠夺他以获得|T135229:0|t[|cRXX_Loot_发光碎片|r]
    >>|cRXP_WARN_使用|T135229:0|t[|cRXP_LOOT_Glowing Shard|r]开始任务|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >>接任务: |cRXP_WARN_发光的碎片|r
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>杀死所有类型的|cRXP_ENEMY_Deviate|r生物。掠夺他们的|cRXP_Loot_Divate隐藏|r
    >>|cRXP_WARN_这可以在哭闹洞穴内外完成|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >>前往棘轮。你很快就会提交WC上面的任务
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >>交任务: |cRXP_FRIENDLY_港口的麻烦|r
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >>登上哭泣洞穴上方的陡峭山峰。跟随箭头
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲拉·古风|r
    .turnin 6981 >>交任务: |cRXP_FRIENDLY_发光的碎片|r
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >>降落到哭泣洞穴入口上方的隐藏洞穴中。按照箭头进入|cRXP_FRIENDLY_Nalpak|r和|cRXP-FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔帕克|r, |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1486 >>交任务: |cRXP_FRIENDLY_变异皮革|r
    .goto 1414,51.912,55.422 -- Nalpak
    .turnin 1487 >>交任务: |cRXP_FRIENDLY_清除变异者|r
    .goto 1414,51.918,55.444 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔帕克|r, |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1487 >>交任务: |cRXP_FRIENDLY_清除变异者|r
    .goto 1414,51.918,55.444 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔帕克|r, |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1486 >>交任务: |cRXP_FRIENDLY_变异皮革|r
    .goto 1414,51.912,55.422 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >>赫斯到阿斯特拉纳
]])
