local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

----Start of <1.5x Westfall----
----Night Elves and Hunters stay in Darkshore and Grind----

RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#version 1
<< Alliance
#name 13-15 西部荒野
#displayname 14-15 Westfall << Dwarf/Gnome
#group RestedXP 联盟 1-20
#next 14-16 Darkshore
#defaultfor !NightElf !Hunter

step
    #sticky
    #optional
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step
    .goto Westfall,59.95,19.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r
    .accept 64 >>接任务: |cRXP_WARN_遗失的怀表|r
    .target Farmer Furlbrow
step
    .goto Westfall,59.92,19.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .accept 151 >>接任务: |cRXP_WARN_老马布兰契|r
    .target Verna Furlbrow
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
step << Gnome/Dwarf
    #completewith next
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
    #xprate <1.2
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
    >>|cRXP_BUY_如果需要，购买食物/水|r
    .vendor >>|T133918:0|t[长颌式泥浆抓斗]|cRXP_WARN_i很便宜|r
	.target Innkeeper Heather
step << Human Paladin
    #season 2
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>前往岛上的|cRXP_FRIENDLY_Ada Gelhardt|r
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
step << Human Paladin
    #season 2
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r to start a fight
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step << Human Paladin
    #season 2
    #requires Island
    .goto Duskwood,4.33,28.26
    >>击败|cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_记得在她身上预铸|r|T135924:0|t[十字军封印]|cRXP_WARN_on|r
    >>|cRXP_WARN_当她施法时要小心|r|T136197:0|t[阴影冲击]|cRXP_WARN_（立即造成45点阴影伤害。消耗她75点魔法。你应该足够快地杀死她，让她只施3次）|r
    >>|cRXP_WARN_击败|cRXP_ENEMY_Ada Gelhardt|r后：|r
    >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r again to receive the |T134419:0|t[Rune of Martyrdom]
    .collect 205897,1 --Rune of Martyrdom (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX Must have had the Charred Note to unlock the dialogue
step << Human Paladin
    #season 2
    #sticky
    .destroy 205864 >>从您的包中删除|T134939:0|t[Charred Note]，因为不再需要它
step << Human Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[殉道符文]|cRXP_WARN_to learn|r|T133815:0|t[Engrave Chest-Seal of Martyrom]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
    .train 410015,1
step << Human Paladin
    #season 2
    .goto Westfall,36.24,54.52
    .engrave 5 >>|cRXP_WARN_Engrave your |r|T134596:0|t|cRXP_LOOT_[胸脯]|r with |r|T133815:0|t[铭刻胸甲-殉难之印]
    >>|cRXP_WARN_记得把|r|T135961:0|t[殉道之印]|cRXP_WARN_放在你的动作栏上。比二者都强|r|T132325:0|t【正义之印】|cRXP_WARN_和|r |T132347:0|t【指挥之印】| cRXP_WARN_|r
    .train 410015,3
step
	#completewith GnollPaws
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
    #completewith bennytime
    >>杀死|cRXP_ENEMY_Defias Trappers|r和|cRXX_ENEMY_Defias走私者|r。掠夺他们的|cRXD_Loot_红色皮革绷带|r
    .complete 12,1 -- Defias Trapper slain (15)
    .complete 12,2 -- Defias Smuggler slain (15)
    .complete 153,1 -- Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step << Mage
    #season 2
    #completewith next
    >>杀死|cRXP_ENEMY_Defias Pillargers|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：TENGI RONEERA|r]掠夺它们
    .collect 208754,1
    .mob Defias Pillager
    .train 401767,1
step
    .goto Westfall,36.24,54.52
    >>打开|cRXP_PICK_Alexston的胸脯|r。将其打开|cRXP_Loot_A简单指南针|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step << Mage
    #season 2
    .goto Westfall,36.0,55.4,50,0
    .goto Westfall,38.0,57.2,50,0
    .goto Westfall,36.0,55.4
    >>杀死|cRXP_ENEMY_Defias Pillargers|r。为|T134939:0|t[|cRXP_FRIENDLY_Spell注释：TENGI RONEERA|r]掠夺它们
    .collect 208754,1
    .mob Defias Pillager
    .train 401767,1
step << Mage
    #season 2
    #completewith GnollPaws
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent供应商|r提供的|T135933:0|t[理解符]才能使用|T134939:0|t[|cRXP_FRIENDLY_Spell注释：TENGI RONEERA|r]
    .train 401767 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：TENGI RONEERA|r]|cRXP-WARN_to train|r|T132871:0|t[再生]
    .use 208754
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>打开|cRXP_PICK_Furlbrow的衣橱|r。偷走它|cRXP_Loot_Furlbrow的怀表|r
    >>|cRXP_WARN_如果你的相机角度正确，你可以从外面掠夺|cRXP_PICK_Furlbrow的衣橱|r|r
	>>|cRXP_WARN_注意|cRXP_ENEMY_Benny Blanco|r。他打得很重|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    #completewith FurlbrowFarm
    >>杀死|cRXP_ENEMY_Harvest守望者|r。掠夺他们的|cRXD_Loot_Okra|r和|cRXX_Loot_FOLOT_FOLO|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
    .isQuestAvailable 38
    .mob Harvest Watcher
step
    #completewith FurlbrowFarm
    .isQuestTurnedIn 38
    >>杀死|cRXP_ENEMY_Harvest守望者|r。掠夺他们的|cRXX_Loot_油瓶|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
step
    >>杀死|cRXP_ENEMY_Defias Trappers|r和|cRXX_ENEMY_Defias走私者|r。掠夺他们的|cRXD_Loot_红色皮革绷带|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75,0
    .complete 12,1 -- Defias Trapper slain (15)
    .complete 12,2 -- Defias Smuggler slain (15)
    .complete 153,1 -- Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #xprate <1.2
    #completewith next
    >>杀死|cRXP_ENEMY_Riverpaw Gnolls|r和|cRXX_ENEMY_River paw侦察兵|r。掠夺他们的|cRXD_Loot_Gnol Paw|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36
    .goto Westfall,56.40,9.40,0
    >>杀死|cRXP_ENEMY_Murloc突袭者|r和|cRXP_ENEMY_ Murloc海岸车|r。掠夺他们的|cRXD_Loot_Eyes |r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    #xprate <1.2
    #label GnollPaws
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    .goto Westfall,42.82,14.70,0
    .goto Westfall,52.36,14.82,0
    .goto Westfall,56.81,13.30,0
    >>杀死|cRXP_ENEMY_Riverpaw Gnolls|r和|cRXX_ENEMY_River paw侦察兵|r。掠夺他们的|cRXD_Loot_Gnol Paw|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>打开地上的|cRXP_PICK_燕麦袋|r。为|cRXP_Loot_Handful of Oat|r而掠夺它们
	>>|cRXP_WARN_你通常可以在农场围栏或建筑物附近找到它们|r
	.complete 151,1 --Handful of Oats (8)
step << Human Warlock
    #xprate <1.2
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, |cRXP_FRIENDLY_弗娜·法布隆|r
    .turnin 64 >>交任务: |cRXP_FRIENDLY_遗失的怀表|r
    .turnin 184 >>交任务: |cRXP_FRIENDLY_法布隆的地契|r
    .goto Westfall,59.95,19.35
    .turnin 151 >>交任务: |cRXP_FRIENDLY_老马布兰契|r
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
    .isOnQuest 184
step << Human Warlock
    #xprate >1.1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, |cRXP_FRIENDLY_弗娜·法布隆|r
    .turnin 64 >>交任务: |cRXP_FRIENDLY_遗失的怀表|r
    .turnin 184 >>交任务: |cRXP_FRIENDLY_法布隆的地契|r
    .goto Westfall,59.95,19.35
    .turnin 151 >>交任务: |cRXP_FRIENDLY_老马布兰契|r
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
    .isOnQuest 184
step
    #xprate <1.2
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, |cRXP_FRIENDLY_弗娜·法布隆|r
    .turnin 64 >>交任务: |cRXP_FRIENDLY_遗失的怀表|r
    .goto Westfall,59.95,19.35
    .turnin 151 >>交任务: |cRXP_FRIENDLY_老马布兰契|r
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
    #xprate >1.1
    #optional << Human Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, |cRXP_FRIENDLY_弗娜·法布隆|r
    .turnin 64 >>交任务: |cRXP_FRIENDLY_遗失的怀表|r
    .goto Westfall,59.95,19.35
    .turnin 151 >>交任务: |cRXP_FRIENDLY_老马布兰契|r
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
    #completewith SaldeanVendor
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫萨丁|r
    .vendor >>|cRXP_WARN_供应商垃圾|r
    >>|cRXP_WARN_请勿出售|T133884:0|t[鼠眼]、|T135997:0|t[Goretusk鼻涕]、|T134341:0|t[TGoretusk肝脏]或|T133972:0|t|r
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫萨丁|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >>交任务: |cRXP_FRIENDLY_清理荒野|r
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
    .goto Westfall,56.40,30.50
    .turnin 22 >>交任务: |cRXP_FRIENDLY_猪肝馅饼|r
    .turnin 38 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
    .goto Westfall,56.40,30.50
    .turnin 22 >>交任务: |cRXP_FRIENDLY_猪肝馅饼|r
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
    .goto Westfall,56.40,30.50
    .turnin 38 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .isQuestComplete 38
    .target Salma Saldean
  step
    .isQuestAvailable 38
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>杀死|cRXP_ENEMY_Harvest守望者|r。掠夺他们的|cRXD_Loot_Okra|r和|cRXX_Loot_FOLOT_FOLO|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
step
    .isQuestTurnedIn 38
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
    >>杀死|cRXP_ENEMY_Harvest守望者|r。掠夺他们的|cRXX_Loot_油瓶|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
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
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .turnin 22 >>交任务: |cRXP_FRIENDLY_猪肝馅饼|r
step << Priest
    #season 2
    .goto Westfall,32.6,43.2,60,0
    .goto Westfall,29.8,46.6,60,0
    .goto Westfall,45.0,26.0,60,0
    .goto Westfall,45.6,21.2
    >>杀死|cRXP_ENEMY_Undying Laborer|r。为|T136222:0|t[|cRXP-FRIENDLY_Memory of a Devout Champions|r]掠夺它
    >>|cRXP_WARN_您必须使用神圣咒语才能完成|r|cRXP_ENEMY_Undying Laborer|r
    >>|cRXP_WARN_|cRXP_ENEMY_Undying Labor|r可以在黄金海岸采石场和Jangolode矿场产卵|r
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .unitscan Undying Laborer
    .train 425215,1
step << Priest
    #season 2
    .train 425215 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_献身冠军的记忆|r]|cRXP_WARN_训练|r|T237566:0|t[扭曲的信仰]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如诺思郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，才能获得|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buff|r
    .use 205905
    .itemcount 205905,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >>交任务: |cRXP_FRIENDLY_西部荒野人民军|r
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹努文队长|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >>交任务: |cRXP_FRIENDLY_西部荒野的豺狼人|r
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军需官刘易斯|r
    >>|cRXP_BUY_从他那里购买一个|r|T135435:0|t[简单木材]|cRXP_Buy_|r
    >>|cRXP_WARN_这用于使|r|T135805:0|t[基本营火]|cRXP_WARN_on Boats或Trams在不浪费时间的情况下使|r| T133971:0|t[烹饪]|cRX P_WARN_skill变平|r
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Quartermaster Lewis
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵加里安|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >>交任务: |cRXP_FRIENDLY_红色皮质面罩|r
step << Gnome Rogue/Dwarf Rogue
    #completewith next
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞到暴风城
    .target Thor
    .money <0.3815
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    .vendor 1287 >>|cRXP_BUY_从她那里买一把|r|T135343:0|t[弯刀]|cRXP_Buy_或从拍卖行买一些更好的东西，然后自己动手装备|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Gnome Rogue/Dwarf Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    .vendor 1287 >>|cRXP_BUY_从她那里买一把|r|T135343:0|t[弯刀]|cRXP_Buy_|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>购买以下物品，以便很快在Darkshore快速登录
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    >>|T133972:0|t
    >>|T133884:0|t[鼠眼]
    >>|T135997:0|t[Goretusk Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusk肝脏]
    >>|T133972:0|t[条纹肉]
    >>|T133912:0|t[暗岸石斑鱼]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .isQuestComplete 399
step << Gnome Rogue/Dwarf Rogue
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .turnin 399 >>交任务: |cRXP_FRIENDLY_童年的记忆|r
    .target Baros Alexston
    .zoneskip Stormwind City,1
    .isQuestComplete 399
step << Dwarf !Paladin/Gnome
    #label end
    #completewith DarkshoreBoat
    .hs >>希斯玛之炉
step << Dwarf !Paladin/Gnome
    #softcore
    #completewith DarkshoreBoat
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Wetlands >>飞到湿地
    .target Thorgrum Borrelson
step << Dwarf !Paladin/Gnome
    #hardcore
    #completewith next
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
step << Human Mage/Human Rogue/Human Warrior/Human Warlock/Human Paladin/Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r << Human Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r << Human Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r << Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r << Human Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r << Human Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r << Human Warlock
    .goto Ironforge,51.1,8.7,15,0 << Human Warlock
    .goto Ironforge,50.343,5.657 << Human Warlock
    .goto Ironforge,65.905,88.405 << Human Warrior
    .goto Ironforge,51.495,15.330 << Human Rogue
    .goto Ironforge,25.207,10.756 << Human Priest
    .goto Ironforge,27.18,8.60 << Human Mage
    .goto Ironforge,23.141,6.149 << Human Paladin
    .trainer >>训练你的职业技能
    .target Bilban Tosslespanner << Human Warrior
    .target Fenthwick << Human Rogue
    .target Toldren Deepiron << Human Priest
    .target Dink << Human Mage
    .target Brandur Ironhammer << Human Paladin
    .target Briarthorn << Human Warlock
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比克斯|r
    .train 2567 >>火车抛锚
    .target Bixi Wobblebonk
step << Human Rogue
    #ah
    .goto Ironforge,62.375,88.679
    .vendor >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    +|cRXP_BUY_从她那里买一把|r|T135343:0|t[Scimitar]|cRXP_Buy_或者去拍卖行买点更好/更便宜的|r
    .target Brenwyn Wintersteel
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Human Rogue
    #ssf
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    +|cRXP_BUY_如果你能负担得起的话，从她那里购买并装备一把|r|T135343:0|t[弯刀]|cRXP_Buy_|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_BUY a|r|T135425:0|t[敏锐飞刀]
    .collect 3107,100 -- Keen Throwing Dagger
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.30
step << Human Rogue
    #completewith next
    +|cRXP_WARN_获得|r|T135425:0|t[敏锐飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.29
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
step << Dwarf Paladin
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Wetlands>>飞到湿地
    .target Gryth Thurden
step
    #hardcore << !Human
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>前往: |cRXP_PICK_丹莫罗|r
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>前往Dun Morogh->湿地跳跃点
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,20,0
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
step << Human
    #softcore
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >>前往Dun Morogh->湿地死亡跳跃点
step << Human
    #softcore
    .goto Dun Morogh,32.4,29.1,20 >>继续沿着山走到死亡跳跃的位置
step << Human
    #softcore
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >>直接从边缘往北跑，然后往下跑。在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step << Human
    #softcore
    .goto Wetlands,12.7,46.7,80 >>Swim to Menethil Harbor
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor 1448 >>|cRXP_WARN_Buy a|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Neal Allen|r没有，请跳过此步骤|r
	.target Neal Allen
    .bronzetube
step << Human/Dwarf Paladin
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
    .fp Wetlands>>获取湿地飞行路径
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德温·晨光|r
    .vendor 1453 >>|cRXP_WARN_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_WARN_有可用的|r
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Dwin Shimmerdawn|r没有，请跳过此步骤|r
    .target Dewin Shimmerdawn
step
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>前往Auberdine船的码头
    .zoneskip Darkshore
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_如果船刚刚到达，则在船上；如果船刚刚离开，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r|T135805:0|t[Basic Campfire]|cRXP_WARN_（在拼写手册的“常规”选项卡下）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_如果船刚刚到达，则在船上；如果船刚刚离开，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r|T135805:0|t[Basic Campfire]|cRXP_WARN_（在拼写手册的“常规”选项卡下）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_如果船刚刚到达，则在船上；如果船刚刚离开，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r|T135805:0|t[Basic Campfire]|cRXP_WARN_（在拼写手册的“常规”选项卡下）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    >>|T133971:0|t[Cook]|cRXP_WARN_以下项目：|r
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T133970:0|t|cRXP_LOOT_[大块的野猪肉]| r|cRXP-WARN_into|r|T133974:0|t[烤野猪肉]
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T133970:0|t|cRXP_LOOT_[狼肉]| r|cRXP-WARN_into|r|T133974:0|t[狼肉烧焦]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T133970:0|t|cRXP_LOOT_[狼肉]| r|cRXP-WARN_into|r|T133974:0|t[狼肉烧焦]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T133970:0|t|cRXP_LOOT_[大块的野猪肉]| r|cRXP-WARN_into|r|T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_如果需要，在等待船只到达Darkshore时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
]])

----End of <1.5x Westfall----
----Start of Darkshore Part 1----

RXPGuides.RegisterGuide([[
#classic
#version 1
<< Alliance
#group RestedXP 联盟 1-20
#name 14-16 Darkshore
#displayname 11-16 黑海岸 << NightElf !SoD
#displayname 13-16 Darkshore << !NightElf !SoD
#displayname 13-20 Darkshore << NightElf SoD !Priest
#displayname 13-22 Darkshore << NightElf SoD Priest
#displayname 15-18 Darkshore << !NightElf SoD
#next 16-19 黑海岸 << !sod/Warrior/Rogue/Druid/Hunter
#next 22-24 Wetlands SoD << sod Priest

-- #displayname 11-16 黑海岸 << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod
step << NightElf
    .goto Teldrassil,56.25,92.44
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6344 >>交任务: |cRXP_FRIENDLY_尼莎·影歌|r
    .accept 6341 >>接任务: |cRXP_WARN_泰达希尔的渔业|r
    .target Nessa Shadowsong
step << NightElf
	.goto Teldrassil,58.39,94.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .turnin 6341 >>交任务: |cRXP_FRIENDLY_泰达希尔的渔业|r
    .accept 6342 >>接任务: |cRXP_WARN_飞往奥伯丁|r
    .target Vesprystus
step << NightElf
    #completewith WashedA
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Auberdine >>飞到黑海岸
    .target Vesprystus
step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step << !NightElf
    #optional
    #completewith BigThreat
    .goto Darkshore,37.04,44.13,0
    >>在离Auberdine海岸最近的时候跳下船
    .subzone 442 >>Swim toward Auberdine
step
    #ah
    #optional
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接任务: |cRXP_WARN_海中的水果|r << !sod/Hunter/Druid
    .accept 1141 >>接任务: |cRXP_WARN_钓鱼世家|r
    .turnin 1141 >>交任务: |cRXP_FRIENDLY_钓鱼世家|r
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1141 >>接任务: |cRXP_WARN_钓鱼世家|r
    .turnin 1141 >>交任务: |cRXP_FRIENDLY_钓鱼世家|r
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接任务: |cRXP_WARN_海中的水果|r
    .target Gubber Blump
    .xp <15,1
step << NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_WARN_从他那里购买最多40个|r|T133918:0|t[Longjaw Mud Snappers]|cRXP_WARN_f。出售所有其他5级或以下的食物|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .turnin 6342 >>交任务: |cRXP_FRIENDLY_飞往奥伯丁|r
    .accept 6343 >>接任务: |cRXP_LOOT_飞回泰达希尔|r << Druid sod
    .target Laird
    .xp >15,1 << Warrior/Rogue/Paladin
    .isQuestAvailable 2118
step << NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    .turnin 6342 >>交任务: |cRXP_FRIENDLY_飞往奥伯丁|r
    .target Laird
step << !NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_WARN_从他那里购买最多40个|r|T133918:0|t[Longjaw Mud Snappers]|cRXP_WARN_f。出售所有其他5级或以下的食物|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .xp >15,1 << Warrior/Rogue
    .target Laird
    .isQuestAvailable 2118
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板莎希因|r, 他在楼下
    .home >>将您的炉石设置为Auberdine << !Druid sod !Priest sod
    .target Innkeeper Shaussiy
step
    #optional
    #completewith next
    .goto 1439,36.826,44.150
    .goto 1439,36.688,43.952,8 >>上楼前往|cRXP_FRIENDLY_Wizbang曲柄开关|r
step
    #xprate <1.5
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹班恩·曲针|r, 他在楼上
    .accept 983 >>接任务: |cRXP_LOOT_传声盒827号|r
    .target Wizbang Cranktoggle
step
    #xprate >1.49
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹班恩·曲针|r, 他在楼上
    .accept 983 >>接任务: |cRXP_LOOT_传声盒827号|r
    .target Wizbang Cranktoggle
    .xp >15,1 --XX Skip if 15+
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .accept 947 >>接任务: |cRXP_LOOT_洞中的蘑菇|r
    .target Barithras Moonshade
    .xp <12,1
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .accept 4811 >>接任务: |cRXP_WARN_红色水晶|r
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    #xprate >1.49
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .accept 947 >>接任务: |cRXP_LOOT_洞中的蘑菇|r
    .target Barithras Moonshade
step
    #xprate >1.49
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .accept 4811 >>接任务: |cRXP_WARN_红色水晶|r
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2118 >>接任务: |cRXP_LOOT_瘟疫蔓延|r
    .target Tharnariun Treetender
step
    #label BigThreat
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .accept 984 >>接任务: |cRXP_WARN_熊怪的威胁|r
    .target Terenthis
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
    .fp Auberdine >>获取奥伯丁飞行路线
    .target Caylais Moonfeather
step << Dwarf Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_让你的宠物攻击一只|cRXP_ENEMY_Thistle Bear|r。一旦你的宠物被|cRXX_ENEMY_蓟熊|r惊呆，抛弃你的宠物并开始驯服它|r
    .tame 2163 >>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXX_ENEMY_Thistle Bear|r驯服它|r
    .target Thistle Bear
step << Warlock
    #season 2
    #label ExplorerImpDarkshore
    #sticky
    #completewith DarkshoreEnd
    >>当你在怪物身上施放|T136163:0|t|cRXP_FRIENDLY_[吸取灵魂]|r，直到你收到一个|T133257:0|t| cRXP_LOOT_探索者的灵魂|r|cRXP-WARN_使用它来学习如何召唤一个|r|T236294:0|t | cRXP-FRIENDLY_[探索者Imp]|r
    .train 445459 >>|cRXP_WARN_Use|r|T133257:0|t|cRXP_LOOT_探索者的灵魂|r|cRXD_WARN_to学习如何召唤|r|T236294:0|t[|cRXT_FRIENDLY_Explorer Imp|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImpDarkshore << Warlock
    #sticky
    #completewith DarkshoreEnd
    #label FelPortalRuneDarkshore
    >>您所在的区域中存在|cRXP_FRIENDLY_Fel门户|r。如果你找到了一个，请召唤你的|T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]，并在门户旁边与它交谈，将其发送到探险队。10-20分钟后，它将带着战利品返回，并有机会奖励您|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
    >>您所在的区域中存在|cRXP_FRIENDLY_Fel门户|r。如果您找到一个，请使用|T134945:0|t[|cRXP_OOT_Scroll of Spatial Mending|r]关闭它。这将奖励您|T134939:0|t[|cRXP_FRIENDLY_Spell备注：打捆螺栓|r] << Mage
    >>|cRXP_WARN_在你得到符文之前要注意入口|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Skips if you don't have a Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage 
    .train 428878,1 << Mage
    .train 427733,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRuneDarkshore
    #sticky
    #completewith DarkshoreEnd
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 427733 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r]|cRXP_WARN_学习|r|T136216:0|t[召唤Felguard] << Warlock
    .train 428878 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>杀死|cRXP_ENEMY_Pygmy Tide Crawlers |r和|cRXD_ENEMY_Young Reef Crawlers | r。掠夺它们的|cRXP_Loot_爬行腿|r
    >>|cRXP_WARN_你可能需要为他们下水|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>打开|cRXP_PICK_Beached Sea Creature|r。将其抓取以获取|cRXP _Loot_Sea Creature Bone|r
    .complete 3524,1 --Sea Creature Bones (1)
step << Druid
    #ah
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_将你的|r|T136065:0|t[草药学]|cRXP_WARN_to15调平，以便能够很快为一个重要的职业任务使用|r|T134187:0|t[Earthroot]|cRXP_WARN_for15。你以后可以忘掉它|r
    >>|cRXP_WARN_如果您稍后想从拍卖行购买5|r|T134187:0|t[Earthroot]|cRXP_WARN_f，请跳过此步骤|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_将你的|r|T136065:0|t[草药学]|cRXP_WARN_to15调平，以便能够很快为一个重要的职业任务收集5|r|T134187:0|t[Earthroot]|cRXP_WARN_form。你以后可以忘掉它|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #season 0
    #completewith CliffspringEnd
    #requires GatheringQ
    >>|cRXP_WARN_通过|T136065:0|t[草药学]收集5|T134187:0|t[Earthroot]，很少收集|cRXP_PICK_Battered Chests|r，用于未来的职业任务|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_使用|r|T134335:0|t[Tarnariun的希望]|cRXP_WARN_on a|cRXP_ENEMY_Rabid Thistle Bear|r。它有50码的射程|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step << Hunter
    #season 2
    #sticky
    #label Treats1
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>杀死|cRXP_ENEMY_Blackwood探路者|r和|cRXX_ENEMY_Blackwood风语者|r。掠夺他们的|T237270:0|t[|cRXD_Loot_Crab Treats|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 410110,1
step << Hunter
    #season 2
    #sticky
    #label Treats2
    #requires Treats1
    #loop
    .goto 1439,36.091,51.501,0
    .goto 1439,35.088,55.085,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .use 209027 >>|cRXP_WARN_使用|r|T237270:0|t[|cRXP_LOOT_Crab Treats|r]|cRXP_WARN_on a|cRXP _ENEMY_Young Reef Crawler |r接收|r|T134419:0|t[| cRXP_FRIENDLY_Rune of Beast Mastery|r]
    .collect 208701,1 -- Beast Mastery (1)
    .target Young Reef Crawler
    .train 410110,1
step << Hunter
    #season 2
    #sticky
    #label Treats3
    #requires Treats2
    .train 410110 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_野兽精通之路|r]|cRXP-WARN_训练|r|T132270:0|t[野兽精通]
    .use 208701
    .itemcount 208701,1
step << !sod/Warrior/Rogue
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>杀死|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXX_OOT_Strider Meat|r
    >>|cRXP_WARN_小心他们|r|T132307:0|t[逃跑]|cRXP_WARN_at<30%健康|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    .goto Darkshore,38.90,53.59
    >>朝着Furbolg营地的边缘跑去
    .complete 984,1 -- Find a corrupt furbolg camp
step << NightElf
    #xprate <1.5
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 11+7300 >>升级到7300+/8800xp
step << Hunter
    #season 2
    #optional
    #requires Treats3
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.5
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>单击地面上的|cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>交任务: |cRXP_FRIENDLY_传声盒827号|r
    .accept 1001 >>接任务: |cRXP_LOOT_传声盒411号|r
step
    #xprate >1.49
    #optional << !NightElf/Hunter
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>单击地面上的|cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>交任务: |cRXP_FRIENDLY_传声盒827号|r
    .accept 1001 >>接任务: |cRXP_LOOT_传声盒411号|r << !sod
    .isQuestComplete 983
step << NightElf !Hunter
    #xprate >1.49
    #optional
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>单击地面上的|cRXP_PICK_Buzzbox 827|r
    .accept 1001 >>接任务: |cRXP_LOOT_传声盒411号|r
    .isQuestTurnedIn 983
--XX so NEs can catch up on xp from those that came via menethil
--XX Hunters skip this as they will get better xp/hr grinding furbolgs
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 3524 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
    .accept 4681 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>前往码头上的|cRXP_FRIENDLY_Cerellean Whiteclaw|r
step << Priest
    #season 2
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    .accept 6343 >>接任务: |cRXP_LOOT_飞回泰达希尔|r
    .target Laird
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .accept 963 >>接任务: |cRXP_WARN_永志不渝|r
    .target Cerellean Whiteclaw
step
    #season 0,1 << Rogue
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >>行驶到码头尽头，然后跳入水中
step << Rogue
    #season 2
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >>行驶到码头尽头，然后跳入水中
    .train 424785,3
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>杀死|cRXP_ENEMY_Darkshore Thresher|r。掠夺它们的|cRXD_Loot_Thresher Eyes |r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step << Rogue
    #season 2
    #optional << !NightElf
    #completewith next
    .goto Darkshore,32.80,37.72,20 >>与灯塔一起游到小岛上
    .train 424785,1
step << Rogue
    #season 2
    #optional << !NightElf
    .goto Darkshore,32.729,37.093
    >>打开树干内的|cRXP_PICK_Lighthouse Stash|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]掠夺它
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    #optional << !NightElf
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>打开|cRXP_PICK_Skeletal Sea Turtle|r。为|cRXP _Loot_Sea Turtle Remains|r掠夺它
    .complete 4681,1 --Sea Turtle Remains (1)
step << Priest
    #season 2
    .goto Darkshore,30.5,47.5
    >>单击小岛上的|cRXP_PICK_Remnant|r。为|T135975:0|t[|cRXP_FRIENDLY_Prophyof a King’s Demise|r]而掠夺它
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    #season 2
    >>你现在必须获得两个|T135934:0|t|T136057:0|t[冥想]增益
    >>你必须/跪在以下任何一个地方：月亮井、北郡修道院、暴风大教堂、安维尔玛的光明祭坛、莫丹湖或铁炉堡的神秘病房
    >>为了获得你的第二个【冥想】增益|T135934:0|t|T136057:0|t，这需要你跪在一个与你有不同【冥想】的牧师面前，他们必须在针对你的时候祈祷
    .train 402849 >>|cRXP_WARN_一旦你同时拥有这两个|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_王者幻灭之神]|r|cRXP_WARN_to learn|r|t1136149:0|t[阴影词：死亡]
    >>|cRXP_WARN_如果您现在无法执行此操作，请跳过此步骤，稍后再完成|r
    .use 205932
    .itemcount 205932,1
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接任务: |cRXP_WARN_海中的水果|r
    .target Gubber Blump
    .xp <15,1
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4681 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.5
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .accept 947 >>接任务: |cRXP_LOOT_洞中的蘑菇|r
    .target Barithras Moonshade
step
    #xprate <1.5
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .accept 4811 >>接任务: |cRXP_WARN_红色水晶|r
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2118 >>交任务: |cRXP_FRIENDLY_瘟疫蔓延|r
    .accept 2138 >>接任务: |cRXP_WARN_清除疫病|r
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 984 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
    .accept 985 >>接任务: |cRXP_WARN_熊怪的威胁|r
    .accept 4761 >>接任务: |cRXP_WARN_桑迪斯·织风|r
    .target Terenthis


----Start of Optional Early Level 14 Druid Turnin/train----


step << Druid
    #optional
    #completewith DruidEarlyNessa
    #season 0
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在10之后将|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to调平|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-10)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Druid
    #optional
    #completewith DruidEarlyNessa
    #season 0
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to50之后调平|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step << Druid
    #optional
    #completewith EarlyLunaclaw
    #season 0
    .goto 1439,43.126,45.593,15 >>进入|cRXP_PICK_Moonkin Stone|r洞穴
step << Druid
    #optional
    #completewith EarlyLunaclaw
    #season 0
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_使用|r|T132857:0|t[Cenarion Moonsdust]|cRXP_WARN_at洞穴内的|cRX_PICK_Moonkin Stone|r在洞穴入口处召唤|cRXP_ENEMY_Lunaclaw|r|r
    .timer 4,Body and Heart RP
    .use 15208
    .isOnQuest 6001
step << Druid
    #season 0
    #optional
    #label EarlyLunaclaw
    .goto Darkshore,43.09,45.55
    >>杀死|cRXP_ENEMY_Lunaclaw|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
    .xp <13+9500,1
step << Druid
    #optional
    #label DruidEarlyNessa
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    .accept 6343 >>接任务: |cRXP_LOOT_飞回泰达希尔|r
    .target Laird
    .isQuestComplete 6001
step << Druid
    #optional
    #completewith EarlyBody
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
    .fly Teldrassil >>飞往Teldrassil
    .target Caylais Moonfeather
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6343 >>交任务: |cRXP_FRIENDLY_飞回泰达希尔|r
    .target Nessa Shadowsong
    .isQuestComplete 6001
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .turnin 6001 >>交任务: |cRXP_FRIENDLY_身心之力|r
    .accept 6121 >>接任务: |cRXP_LOOT_新的课程|r
    .trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    #label EarlyBody
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .accept 6121 >>接任务: |cRXP_LOOT_新的课程|r
    .trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r, 他在楼上
    .turnin 6121 >>交任务: |cRXP_FRIENDLY_新的课程|r
    .accept 6122 >>接任务: |cRXP_WARN_毒水之源|r
    .target Dendrite Starblaze
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
    #completewith AmethStart
    .hs >>Hearth到Darkshore
    .isQuestTurnedIn 6001



----End of Optional Early Level 14 Druid Turnin/train----



step << NightElf Warrior/NightElf Rogue
    #sticky
    #season 0
    #label DeepOceanStart
    .goto 1439,38.107,41.165,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .accept 982 >>接任务: |cRXP_WARN_深不可测的海洋|r
    .target Gorbold Steelhand
    .xp <13,1
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库德拉姆·石锤|r, |cRXP_FRIENDLY_迪尔弗拉姆·火须|r
    .train 2575 >>列车|T134708:0|t[采矿]
    .goto Darkshore,38.249,41.008
    .train 2018 >>列车|T136241:0|t[铁匠铺]
    .goto Darkshore,38.191,40.935
    >>|cRXP_WARN_这将允许你制造|r|T135248:0|t[粗糙的磨石]|cRXP_WARN_使你的近战伤害增加2|r << Warrior/Rogue
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    .target Kurdram Stonehammer
    .target Delfrum Flintbeard
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto Darkshore,38.142,41.108
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾丽萨·钢拳|r
    >>|cRXP_BUY_从她那里购买一个|r|T134708:0|t[采矿选择]|cRXP_Buy_|r
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .train 2575,3 --Mining Trained
step << NightElf Warrior/NightElf Rogue
    #optional
    #completewith Bashal1
    .cast 2580 >>|cRXP_WARN_Cast|r|T136025:0|t[查找矿物]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << !NightElf/!Warrior !Rogue
    #xprate <1.5 --<< !NightElf/Hunter --XX Night Elves do it on 2x to catch up on xp EXCEPT Dwarf/NE Hunters (1x only)
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .accept 982 >>接任务: |cRXP_WARN_深不可测的海洋|r
    .target Gorbold Steelhand
    .xp <13,1
step << !sod/Warrior/Rogue
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接任务: |cRXP_WARN_炖陆行鸟|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << NightElf Rogue
    .goto 1439,37.575,40.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳拉姆·长爪|r
    .vendor 4183 >>|cRXP_BUY_如果你买得起，就从他那里买一个|r|T135640:0|t[Jambiya]|cRXP_Buy_|r
    .collect 2207,1 -- Jambiya (1)
    .disablecheckbox
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
--  .money <0.2390
    .target Naram Longclaw
step << !Druid sod
    #optional
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蒙德|r, 他在里面
    .vendor 4182 >>|cRXP_BUY_根据需要从他那里购买|r|T133634:0|t[小棕色袋子]|cRXP_Buy_或|r|T133634:0 |t[棕色皮革包]|cRX P_Buy_|r
    >>|cRXP_BUY_从他那里购买|r|T132382:0|t[尖箭]|cRXP_Buy_或|r|T132384:0|t[HeavyShots]| cRXP_Buy_，直到你的测验/弹药袋装满为止|r << Hunter
    .target Dalmond
step << !Druid sod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4761 >>交任务: |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 4762 >>接任务: |cRXP_WARN_壁泉河|r
    .accept 954 >>接任务: |cRXP_LOOT_巴莎兰|r
    .accept 958 >>接任务: |cRXP_WARN_上层精灵的工具|r << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step << !Druid sod
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4761 >>交任务: |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 4762 >>接任务: |cRXP_WARN_壁泉河|r
    .accept 954 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step << !Druid sod
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4761 >>交任务: |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 4762 >>接任务: |cRXP_WARN_壁泉河|r

----Start of NE >1.49x catchup (everyone 1x) Early boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    >>杀死|cRXP_ENEMY_Darkshore Thresher|r。掠夺它们的|cRXD_Loot_Thresher Eyes |r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    +|cRXP_WARN_按Escape，然后进入->选项->控制|r
    >>|cRXP_WARN_选中“启用交互键”并将“与目标交互”选项绑定到键|r
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==注意你的呼吸计==|r
    >>|cRXP_WARN_在水下游到船的后部外侧|r
    >>|cRXP_WARN_在箭头位置，按下“与目标互动”键，从船外掠夺|cRXP_loot_Silver Dawning的锁箱|r|r
    >>|cRXP_WARN_如果你不想这样做，可以在水下游到船的底层，然后掠夺里面的|cRXP_loot_Silver Dawning的锁箱|r|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==注意你的呼吸计==|r
    >>|cRXP_WARN_在水下游到船的后部外侧|r
    >>|cRXP_WARN_在箭头位置，按下“与目标互动”键，从船外掠夺|cRXP_loot_Misst面纱的锁箱|r|r
    >>|cRXP_WARN_如果你不想这样做，可以在水下游到船的底层，然后洗劫里面的|cRXP_loot_Misst Veil’s Lockbox |r|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #loop
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    >>杀死|cRXP_ENEMY_Darkshore Thresher|r。掠夺它们的|cRXD_Loot_Thresher Eyes |r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,41.960,28.616
    >>单击地面上的|cRXP_PICK_Buzzbox 411|r
    .turnin 1001 >>交任务: |cRXP_FRIENDLY_传声盒411号|r
    .accept 1002 >>接任务: |cRXP_LOOT_传声盒323号|r
    .isQuestComplete 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.960,28.616
    >>单击地面上的|cRXP_PICK_Buzzbox 411|r
    .accept 1002 >>接任务: |cRXP_LOOT_传声盒323号|r
    .isQuestTurnedIn 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AsterionTravel
    .goto 1439,44.190,33.697,0
    >>杀死|cRXP_ENEMY_Moonstracker符文|r。掠夺他们的|cRXX_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001


----End of NE >1.49x catchup (everyone 1x) Early boat section----


 step << !sod/Warrior/Rogue
    #optional
    #completewith AsterionTravel << era
    #completewith AsterionTravelSoD << sod
    .goto 1439,43.509,33.207,0
    >>杀死|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXX_OOT_Strider Meat|r
    >>|cRXP_WARN_小心他们|r|T132307:0|t[逃跑]|cRXP_WARN_at<30%健康|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step << Warrior/Rogue
    #season 2
    .goto 1439,41.901,31.339
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step << !Warrior !Rogue
    #season 2
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>前往|cRXP_PICK_神秘红水晶|r
    >>|cRXP_WARN_小心|cRXP_PICK_Mysterious Red Crystal|r以西的两组2|cRXP_ENEMY_Raging Moonkin|r，因为彼此最接近的二人被捆在一起|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid
    #season 2
    .xp 14-1600 >>升级月球皮肤，直到距离14级1600 xp
step << !Warrior !Rogue
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >>Head to the nearby cave
step << !Warrior !Rogue
    #optional
    #label OracleLS
    #completewith AsterionTravelSoD
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_杀死里面的Moonkin神谕，跳到洞穴后面的大蘑菇上，然后通过注销并返回来执行注销跳过|r


----Start of SoD Druid Starsurge segment----    

step << Druid
    #optional
    #season 2
    #completewith next
    .subzone 442 >>Travel to Auberdine
step << Druid
    #season 2
    #optional
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蒙德|r, 他在里面
    .vendor 4182 >>|cRXP_BUY_根据需要从他那里购买|r|T133634:0|t[小棕色袋子]|cRXP_Buy_或|r|T133634:0 |t[棕色皮革包]|cRX P_Buy_|r
    >>|cRXP_BUY_从他那里购买|r|T132382:0|t[尖箭]|cRXP_Buy_或|r|T132384:0|t[HeavyShots]| cRXP_Buy_，直到你的测验/弹药袋装满为止|r << Hunter
    .target Dalmond
step << Druid
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4761 >>交任务: |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 4762 >>接任务: |cRXP_WARN_壁泉河|r
    .accept 954 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Thundris Windweaver
step << Druid
    #season 2
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4811 >>交任务: |cRXP_FRIENDLY_红色水晶|r
    .accept 4812 >>接任务: |cRXP_WARN_清洗水晶|r
    .target Sentinel Glynda Nal'Shea
step << Druid
    #season 2
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_使用|r|T134865:0|t[空水管]|cRXP_WARN_at Auberdine月井|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << Druid
    #season 2
    #softcore
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>|cRXP_WARN_前往: |cRXP_PICK_湿地|r|r
    >>|cRXP_WARN_在这个过程中，你可能会死几次|r
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .goto Wetlands,36.941,15.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grugimdern|r
    >>|cRXP_WARN_他会给你一个|r|T134052:0|t[|cRXP_LOOT_Marshroom|r]
    .collect 210499,1 -- Marshroom (1)
    .target Grugimdern
    .train 424718,1
    .link https://youtu.be/fWVaDR-NnKU >>|cRXP_WARN_点击此处查看视频参考|r
step << Druid
    #season 2
    #softcore
    .goto Wetlands,31.187,18.328,15 >>走向湖面突出的树桩
    .train 424718,1
step << Druid
    #season 2
    #softcore
    #completewith next
    .goto Wetlands,31.187,18.328
    .cast 426019 >>|cRXP_WARN_使用|r|T134052:0|t[|cRXP_LOOT_Marshroom|r]|cRXP-WARN_to吃掉它|r
    >>|cRXP_WARN_使用前确保你的安全，如果你死了，你就必须再次服用蘑菇|r
    .use 210499
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .goto Wetlands,31.187,18.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vodyanoi|r
    >>你只有先吃蘑菇才能看到这个NPC
    .collect 210500,1 -- Rune of the Stars (1)
    .skipgossip
    .target Vodyanoi
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .train 424718 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Stars|r]|cRXP_WARN_to train|r|T135730:0|t[Starsurge]
    .use 210500
    .itemcount 210500,1
step << Druid
    #season 2
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
    .usespell 18960
    >>|cRXP_WARN_它将出现在你的拼写手册中|r
	.zoneskip Moonglade
step << Druid
    #season 2
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r, 他在楼上
    .turnin 5921 >>交任务: |cRXP_FRIENDLY_月光林地|r
    .target Dendrite Starblaze
    .accept 5929 >>接任务: |cRXP_WARN_巨熊之灵|r
step << Druid
    #season 2
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨熊之灵|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
    #season 2
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
    >>|cRXP_WARN_这会让你更快地返回|r
step << Druid
    #season 2
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r, 他在楼上
    .turnin 5929 >>交任务: |cRXP_FRIENDLY_巨熊之灵|r
    .target Dendrite Starblaze
    .accept 5931 >>接任务: |cRXP_WARN_返回达纳苏斯|r
step << Druid
    #season 2
    .hs >>炉石回到达纳苏斯
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r, 他在中层
    .trainer >>训练你的职业技能
    .turnin 5931 >>交任务: |cRXP_FRIENDLY_返回达纳苏斯|r
    .target Mathrengyl Bearwalker
    .accept 6001 >>接任务: |cRXP_LOOT_身心之力|r
step << Druid
    #season 2
    #completewith FlyAuberdine
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
    .zoneskip Darkshore
    .subzoneskip 702
step << Druid
    #optional
    #season 2
    #label FlyAuberdine
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6343 >>交任务: |cRXP_FRIENDLY_飞回泰达希尔|r
    .target Nessa Shadowsong
step << Druid
    #season 2
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞到黑海岸
    .target Vesprystus
step << Druid
    #optional
    #season 2
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >>进入|cRXP_PICK_Moonkin Stone|r洞穴
step << Druid
    #optional
    #season 2
    #completewith Lunaclaw
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_使用|r|T132857:0|t[Cenarion Moonsdust]|cRXP_WARN_at洞穴内的|cRX_PICK_Moonkin Stone|r在洞穴入口处召唤|cRXP_ENEMY_Lunaclaw|r|r
    .timer 4,Body and Heart RP
    .use 15208
    .isOnQuest 6001
step << Druid
    #label Lunaclaw
    #season 2
    .goto Darkshore,43.09,45.55
    >>杀死|cRXP_ENEMY_Lunaclaw|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
step << Druid
    #season 2
    .goto 1439,47.314,48.676
    >>单击|cRXP_PICK_神秘红水晶|r
    >>|cRXP_WARN_小心|cRXP_PICK_Mysterious Red Crystal|r以西的两组2|cRXP_ENEMY_Raging Moonkin|r，因为彼此最接近的二人被捆在一起|r
    .turnin 4812 >>交任务: |cRXP_FRIENDLY_清洗水晶|r
    .accept 4813 >>接任务: |cRXP_WARN_水晶中的碎骨|r
    .isQuestTurnedIn 4811
step << Druid
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >>Head to the nearby cave
step << Druid
    #optional
    #label OracleLS
    #completewith AsterionTravelSoD
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_杀死里面的Moonkin神谕，跳到洞穴后面的大蘑菇上，然后通过注销并返回来执行注销跳过|r


----End of SoD Druid Starsurge segment----


step
    #xprate <1.5
    #optional
    #label AsterionTravel
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >>前往|cRXP_FRIENDLY_Asterion|r
step
    #xprate >1.49
    #optional
    #label AsterionTravelSoD
    #completewith Bashal1
    .goto 1439,44.376,36.754,20,0
    .goto 1439,44.168,36.289,15 >>前往|cRXP_FRIENDLY_Asterion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    >>|cRXP_WARN_避免在途中杀死|cRXP_ENEMY_Wild Grells|r和|cRXX_ENEMY_Vile Sprites|r|r
    .turnin 954 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 955 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    >>|cRXP_WARN_避免在途中杀死|cRXP_ENEMY_Wild Grells|r和|cRXX_ENEMY_Vile Sprites|r|r
    .turnin 954 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #label Bashal1
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .accept 955 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
    .isQuestTurnedIn 954
    .xp >16,1
--XX if you ding 16 from turnin, skip Bashal Aran qline
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>杀死|cRXP_ENEMY_Wild Grells|r和|cRXD_ENEMY_Vile精灵|r。偷走它们的|cRXP_Loot_Grell耳环|r
    >>|cRXP_WARN_暂时避免杀害|cRXP_ENEMY_Deth'ryl Satyrs|r|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 955 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 956 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .accept 956 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
    .isQuestTurnedIn 955
step
    #completewith MeatFangEgg1
    #optional
    .abandon 955 >>Abandon Bashal'Aran
    .isQuestAvailable 955
step
    #xprate >1.59
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>杀死|cRXP_ENEMY_Deth'ryl Satyrs|r。掠夺它们以获得|cRXX_Loot_古代月石封印|r
    >>|cRXP_WARN_它们没有动态重生。如果找不到任何|r|cRXP_ENEMY_Deth'ryl Satyrs，请跳过此步骤|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    #xprate <1.59
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>杀死|cRXP_ENEMY_Deth'ryl Satyrs|r。掠夺它们以获得|cRXX_Loot_古代月石封印|r
    >>|cRXP_WARN_请注意，它们没有动态重生|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 956 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 957 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .accept 957 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
    .isQuestTurnedIn 956
step << NightElf/Dwarf Hunter
    #optional
    #xprate <1.5
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    .xp 13 >>升级到13级
step << !sod/Warrior/Rogue
    #optional
    #completewith RedCrystal
    #season 2
    >>杀死|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXX_OOT_Strider Meat|r
    >>|cRXP_WARN_小心他们|r|T132307:0|t[逃跑]|cRXP_WARN_at<30%健康|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step << !Warrior !Rogue
    #season 2
    #sticky
    #completewith MushroomCaveSoD
    >>Kill all |cRXP_ENEMY_Rabid Thistle Bears|r you see. |cRXP_WARN_你现在不必完成这个任务 but you should ideally have around 15+ killed as you enter the naga cave|r << Priest
    >>杀死所有|cRXP_ENEMY_Rabid Thistle Bear|r|cRXP_WARN_您现在不必完成此任务|r << !Priest
    >>|cRXP_WARN_他们施放时要小心|r|T135914:0|t[狂犬病]|cRXP_WARN_如果你没有足够快地杀死他们（即时近战：在10分钟内减少50%的所有生命回复）|r
    .complete 2138,1 --Rabid Thistle Bears (20)
    .mob Rabid Thistle Bear
step << !Warrior !Rogue
    #season 2
    .goto Darkshore,50.81,25.50
    >>|cRXP_WARN_在克利夫斯普林河底部使用|r|T134865:0|t[空采样管]|cRXP_WARN_|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step << !Warrior !Rogue
    #optional
    #completewith next
    #season 2
    #label MushroomCaveSoD
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>前往悬崖泉河洞穴
step << !Warrior !Rogue
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 2
    >>掠夺地面上的|cRXP_Loot_Scaper|r
    >>|cRXP_WARN_保持上半部分。如果顶侧的末端没有|cRXP_LOOT_Death Cap|r，请放下并从下面的南部房间取一个|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_Stormscale Wave Riders|r cast|r|T135836:0|t[Aqua Jet]|cRXP-WARN_（远程瞬发：对附近的敌人造成伤害并将其击退）-确保你不会从洞穴的上层被击倒|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step << !Warrior !Rogue
    #optional
    #label MushroomLSSoD
    #completewith CavetoAuberSoD
    #season 2
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Jump on top of the rock on the top floor inside the cave. 前往: |cRXP_PICK_丹莫罗|r|r
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith RedCrystal
    >>杀死|cRXP_ENEMY_Moonstracker符文|r。掠夺他们的|cRXX_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
step
    #xprate <1.5
    #completewith AuberdineTurnin2
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在10之后将|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to调平|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #xprate <1.5
    #completewith AuberdineTurnin2
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to50之后调平|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step
    #season 2 << Warrior/Rogue
    #season 0 << Mage/Warlock/Priest/Paladin/Hunter/Druid
    #completewith LateTurtleStart << era
    #completewith RedCrystal << sod
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在10之后将|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to调平|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 442 --Auberdine
    .subzoneskip 447 --Ameth'Aran
step
    #season 0
    #completewith LateTurtleStart
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to50之后调平|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .subzoneskip 442 --Auberdine
    .subzoneskip 447 --Ameth'Aran
step
    #season 0
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>前往|cRXP_PICK_神秘红水晶|r
    >>|cRXP_WARN_小心|cRXP_PICK_Mysterious Red Crystal|r以西的两组2|cRXP_ENEMY_Raging Moonkin|r，因为彼此最接近的二人被捆在一起|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Warrior/Rogue
    #season 2
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>前往|cRXP_PICK_神秘红水晶|r
    >>|cRXP_WARN_小心|cRXP_PICK_Mysterious Red Crystal|r以西的两组2|cRXP_ENEMY_Raging Moonkin|r，因为彼此最接近的二人被捆在一起|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Warrior/Rogue
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >>Head to the nearby cave
step << Warrior/Rogue
    #completewith next
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_杀死里面的Moonkin神谕，跳到洞穴后面的大蘑菇上，然后通过注销并返回来执行注销跳过|r
step << Druid
    #optional
    #season 0
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >>进入|cRXP_PICK_Moonkin Stone|r洞穴
step << Druid
    #optional
    #season 0
    #completewith Lunaclaw
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_使用|r|T132857:0|t[Cenarion Moonsdust]|cRXP_WARN_at洞穴内的|cRX_PICK_Moonkin Stone|r在洞穴入口处召唤|cRXP_ENEMY_Lunaclaw|r|r
    .timer 4,Body and Heart RP
    .use 15208
    .isOnQuest 6001
step << Druid
    #label Lunaclaw
    #season 0
    .goto Darkshore,43.09,45.55
    >>杀死|cRXP_ENEMY_Lunaclaw|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
step << !Warrior !Rogue
    #optional
    #season 2
    #label CavetoAuberSoD
    #completewith CliffspringEnd
    .subzone 442 >>Travel to Auberdine
step << !Warrior !Rogue
    #label CliffspringEnd
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4762 >>交任务: |cRXP_FRIENDLY_壁泉河|r
    .accept 4763 >>接任务: |cRXP_WARN_黑木熊怪的堕落|r
    .target Thundris Windweaver

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Druid
    #optional
    #completewith Cascade
    #season 0
    .hs >>奥伯丁之炉
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
step << NightElf/Hunter/Druid/Warrior
    #season 2 << Warrior/Rogue
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >>Return to Auberdine
step << Druid
    #season 2
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
step << !Warrior !Rogue
    #season 2
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .turnin 947 >>交任务: |cRXP_FRIENDLY_洞中的蘑菇|r
    .accept 948 >>接任务: |cRXP_LOOT_安努|r
    .target Barithras Moonshade
step << NightElf/Hunter/Druid/Warrior/Rogue
    #season 2 << Warrior/Rogue
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4811 >>交任务: |cRXP_FRIENDLY_红色水晶|r << !Druid sod
    .accept 4812 >>接任务: |cRXP_WARN_清洗水晶|r << !Druid sod
    .turnin 4813 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r << Druid sod
    .target Sentinel Glynda Nal'Shea
    .xp >14,1 << Hunter/Druid << !sod
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid
    #season 0,1 << Druid
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4811 >>交任务: |cRXP_FRIENDLY_红色水晶|r
    .accept 4812 >>接任务: |cRXP_WARN_清洗水晶|r
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .accept 4812 >>接任务: |cRXP_WARN_清洗水晶|r
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
step << NightElf/Hunter/Druid
    #optional
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_WARN_从他那里购买最多40个|r|T133918:0|t[Longjaw Mud Snappers]|cRXP_WARN_f。出售所有其他5级或以下的食物|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .target Laird
    .subzoneskip 442,1 --skip if you leave Auber
    .xp >15,1 << Warrior/Rogue
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid/Warrior/Rogue
    #optional
    #season 2 << Warrior/Rogue
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_使用|r|T134865:0|t[空水管]|cRXP_WARN_at Auberdine月井|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << !Warrior !Rogue
    #season 2
    .goto Darkshore,37.78,44.06
    >>|cRXP_WARN_使用|r|T133748:0|t[清空清洁碗]|cRXP_WARN_at Auberdine moonwell|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step << NightElf/Hunter/Druid/Warrior/Rogue
    #season 2 << Warrior/Rogue
    #optional
    #season 0 << Hunter/Druid/Rogue/Priest
    #completewith MysteriousCrystalHuntDruidEnd << era
    #completewith Anaya << sod
    >>杀死|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXX_OOT_Strider Meat|r
    >>|cRXP_WARN_小心他们|r|T132307:0|t[逃跑]|cRXP_WARN_at<30%健康|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior/Rogue
    #optional
    #completewith EarlyCrystalEnd
    #season 2 << Warrior/Rogue
    #season 0 << Hunter/Druid/Rogue/Priest
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在10之后将|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to调平|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #optional
    #completewith EarlyCrystalEnd
    #season 0
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to50之后调平|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    >>杀死|cRXP_ENEMY_Moonstracker符文|r。掠夺他们的|cRXX_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #season 0
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>单击|cRXP_PICK_神秘红水晶|r
    >>|cRXP_WARN_小心|cRXP_PICK_Mysterious Red Crystal|r以西的两组2|cRXP_ENEMY_Raging Moonkin|r，因为彼此最接近的二人被捆在一起|r
    .turnin 4812 >>交任务: |cRXP_FRIENDLY_清洗水晶|r
    .accept 4813 >>接任务: |cRXP_WARN_水晶中的碎骨|r
    .isQuestTurnedIn 4811
step << !Druid sod
    #season 2
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>单击|cRXP_PICK_神秘红水晶|r
    >>|cRXP_WARN_小心|cRXP_PICK_Mysterious Red Crystal|r以西的两组2|cRXP_ENEMY_Raging Moonkin|r，因为彼此最接近的二人被捆在一起|r
    .turnin 4812 >>交任务: |cRXP_FRIENDLY_清洗水晶|r
    .accept 4813 >>接任务: |cRXP_WARN_水晶中的碎骨|r
    .isQuestTurnedIn 4811
step
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto 1439/1,-33.200,6141.300,20 >>Head to the nearby cave
step
    #optional
    #label OracleLSTwo
    #completewith MysteriousCrystalHuntDruidEnd
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_杀死里面的Moonkin神谕，跳到洞穴后面的大蘑菇上，然后通过注销并返回来执行注销跳过|r
step << NightElf/Hunter/Druid
    #optional
    #season 0
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在10之后将|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to调平|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    #optional
    #label MysteriousCrystalHuntDruidEnd
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >>Return to Auberdine
    .isQuestTurnedIn 4811
step
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    #optional
    #label MysteriousCrystalHuntDruidEnd
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >>Return to Auberdine
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    >>|cRXP_WARN_选择|r|T135641:0|t[Curvewood匕首]|cRXP_WARN_a，您应该稍后尝试为您的|r|T132290:0|t[毒药]|cRX P_WARN_quest保存|r|T1 35641:0 |t[匕首]|c|r << Rogue
    .turnin 4813 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r << !Hunter !Druid
    .turnin 4813,3 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r << Hunter/Druid
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    >>|cRXP_WARN_选择|r|T135641:0|t[Curvewood匕首]|cRXP_WARN_a，您应该稍后尝试为您的|r|T132290:0|t[毒药]|cRX P_WARN_quest保存|r|T1 35641:0 |t[匕首]|c|r << Rogue
    .turnin 4813 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r << !Hunter !Druid
    .turnin 4813,3 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r << Hunter/Druid
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Hunter/Druid/Warrior
    #completewith AmethStart
    +|cRXP_WARN_equp the |r|T135145:0|t[奥克画眉杖]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .isQuestTurnedIn 4811


----Start of forced Level 14 Druid Turnin/train----


step << Druid
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    .accept 6343 >>接任务: |cRXP_LOOT_飞回泰达希尔|r
    .target Laird
step << Druid
    #optional
    #xprate <1.5
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 13+9500 >>升级到9500+/11400xp
step << Druid
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
    .fly Teldrassil >>飞往Teldrassil
    .target Caylais Moonfeather
    .isQuestAvailable 6001
step << Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6343 >>交任务: |cRXP_FRIENDLY_飞回泰达希尔|r
    .target Nessa Shadowsong
    .isQuestAvailable 6001
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .turnin 6001 >>交任务: |cRXP_FRIENDLY_身心之力|r
    .accept 6121 >>接任务: |cRXP_LOOT_新的课程|r
    .trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
    .isQuestAvailable 6001
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .accept 6121 >>接任务: |cRXP_LOOT_新的课程|r
    .trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
    .zoneskip Darnassus,1
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r, 他在楼上
    .turnin 6121 >>交任务: |cRXP_FRIENDLY_新的课程|r
    .accept 6122 >>接任务: |cRXP_WARN_毒水之源|r
    .target Dendrite Starblaze
step << Druid
    #season 0
    #optional
    #completewith AmethStart
    .hs >>Hearth到Darkshore
    .zoneskip Darkshore

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step
    #season 0
    #optional
    #completewith AmethStart
    >>杀死|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXX_OOT_Strider Meat|r
    >>|cRXP_WARN_小心他们|r|T132307:0|t[逃跑]|cRXP_WARN_at<30%健康|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----


step << NightElf/Hunter/Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith EarlyBlackwood
    #optional
    >>杀死|cRXP_ENEMY_Moonstracker符文|r。掠夺他们的|cRXX_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #optional
    #loop
    #season 0
    #label EarlyBlackwood
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>杀死|cRXP_ENEMY_Blackwood探路者|r和|cRXX_ENEMY_Blackwood风语者|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #requires EarlyTreats3 << Druid --Season 2
    #completewith EarlyTurtleStart
    >>杀死|cRXP_ENEMY_Moonstrackers|r。掠夺他们的|cRXX_Loot_MoonstrackerFans|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .subzoneskip 447
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #optional
    #season 0
    #completewith Anaya
    #requires EarlyTreats3 << Druid --Season 2
    >>杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_他们施放时要小心|r|T135914:0|t[狂犬病]|cRXP_WARN_如果你没有足够快地杀死他们（即时近战：在10分钟内减少50%的所有生命回复）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf/Hunter/Druid
    #optional
    #season 0
    #label EarlyTurtleStart
    #requires EarlyTreats3 << Druid --Season 2
    .goto 1439,37.105,62.167
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >>接任务: |cRXP_WARN_搁浅的海龟|r
    .isQuestTurnedIn 4811
step
    #optional
    #season 0
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .accept 953 >>接任务: |cRXP_WARN_亚米萨兰的毁灭|r
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AmethStart
    >>杀死|cRXP_ENEMY_Moonstracker符文|r。掠夺他们的|cRXX_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step
    #season 0
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在10之后将|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to调平|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << !sod/Warrior/Rogue/Priest
    #sticky
    #optional
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>杀死|cRXP_ENEMY_Anaya Dawnrunner |r。为她掠夺她|cRXX_Loot_Pendint|r 
    >>|cRXP_WARN_请注意，她有7-8分钟的产卵时间和4个不同的产卵点|r
    >>|cRXP_WARN_如果你找不到她，想稍后再试一次，但可能会很快磨掉更多的暴徒，请跳过这一步|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step << !sod/Warrior/Rogue/Priest
    #sticky
    #optional
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>杀死|cRXP_ENEMY_Anaya Dawnrunner |r。为她掠夺她|cRXX_Loot_Pendint|r
    >>|cRXP_WARN_请注意，她有7-8分钟的产卵时间和4个不同的产卵点|r
    >>|cRXP_WARN_如果找不到她，你可能想和附近的其他人组队。在普通聊天（/1）中要求与其他正在寻找她的人进行分组|r
    >>|cRXP_WARN_如果你找不到她，想稍后再试一次，但可能会很快磨掉更多的暴徒，请跳过这一步|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #season 0
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>杀死|cRXP_ENEMY_诅咒的高出生者|r，|cRXD_ENEMY_Writing Highbornes |r和|cRXP_ENEMY_Wailing Highbornes | r。掠夺他们的|cRXP_Loot_ERCURES |r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    #season 0
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .accept 953 >>接任务: |cRXP_WARN_亚米萨兰的毁灭|r
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    #season 0
    .goto 1439,42.652,63.145
    >>单击|cRXP_PICK_the Fall of Ameth'Aran |r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>单击|cRXP_PICK_Ancient Flame|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #season 0
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>单击|cRXP_PICK_the Lay of Ameth'Aran |r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.59
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .turnin 953 >>交任务: |cRXP_FRIENDLY_亚米萨兰的毁灭|r
    .target Sentinel Tysha Moonblade
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrindEnd
    >>杀死|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXX_OOT_Strider Meat|r
    >>|cRXP_WARN_小心他们|r|T132307:0|t[逃跑]|cRXP_WARN_at<30%健康|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith FurbolgGrindEnd
    >>杀死|cRXP_ENEMY_Moonstracker符文|r和|cRXX_ENEMY_moonstrackers|r。掠夺他们的|cRXD_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrindEnd
    #season 0
    >>杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_他们施放时要小心|r|T135914:0|t[狂犬病]|cRXP_WARN_如果你没有足够快地杀死他们（即时近战：在10分钟内减少50%的所有生命回复）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Warrior/Rogue
    #optional
    #completewith LateTurtleStart
    #season 2
    >>杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_他们施放时要小心|r|T135914:0|t[狂犬病]|cRXP_WARN_如果你没有足够快地杀死他们（即时近战：在10分钟内减少50%的所有生命回复）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Priest
    #season 2
    .goto Darkshore,42.0,66.6
    .goto Darkshore,42.0,64.5,0
    .goto Darkshore,42.0,68.2,0
    .goto Darkshore,38.7,68.0,0
    .goto Darkshore,38.7,66.3,0
    .goto Darkshore,38.7,64.5,0
    >>Fisnish off killing |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_他们施放时要小心|r|T135914:0|t[狂犬病]|cRXP_WARN_如果你没有足够快地杀死他们（即时近战：在10分钟内减少50%的所有生命回复）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !sod/Warrior/Rogue/Priest
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >>接任务: |cRXP_WARN_搁浅的海龟|r
step << !sod/Warrior/Rogue/Priest
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>杀死|cRXP_ENEMY_Blackwood探路者|r和|cRXX_ENEMY_Blackwood风语者|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #xprate <1.5
    #optional
    #requires Treats3 << Druid --Season 2
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 15+11875 >>升级到11875+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate <1.5
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 15+11000 >>升级到11000+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step
    #xprate 1.49-1.59
    #optional
    #requires Treats3 << Druid --Season 2
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 15+600 >>升级到600+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate 1.49-1.59
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 14+12210 >>升级到12210+/12900xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step << !sod/Warrior/Rogue/Priest
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >>Return to Auberdine
    .isOnQuest 4722
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4722 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4723 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step << !sod/Warrior/Rogue/Priest
    #xprate >1.49
    #optional << NightElf !Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4722 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4723 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r << Warrior sod
    .target Gwennyth Bly'Leggonde
step
    #season 0 << !Warrior !Rogue
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接任务: |cRXP_WARN_海中的水果|r
    .target Gubber Blump
step << !sod/Warrior/Rogue/Priest
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>返回码头上的|cRXP_FRIENDLY_Cerellean Whiteclaw|r
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    >>|cRXP_WARN_如果有人刚来，你可能需要等待他的RP|r
    .turnin 963 >>交任务: |cRXP_FRIENDLY_永志不渝|r
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #season 0
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4811 >>交任务: |cRXP_FRIENDLY_红色水晶|r
    .accept 4812 >>接任务: |cRXP_WARN_清洗水晶|r
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step << !sod/Warrior/Rogue/Priest
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4812 >>交任务: |cRXP_FRIENDLY_清洗水晶|r
    .target Sentinel Glynda Nal'Shea
    .isQuestComplete 4812
step
    #season 0
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_使用|r|T134865:0|t[空水管]|cRXP_WARN_at Auberdine月井|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2138 >>交任务: |cRXP_FRIENDLY_清除疫病|r
    .accept 2139 >>接任务: |cRXP_LOOT_萨纳瑞恩的希望|r
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2139 >>接任务: |cRXP_LOOT_萨纳瑞恩的希望|r
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step << !sod/Warrior/Rogue/Priest
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 985 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
    .accept 986 >>接任务: |cRXP_LOOT_丢失的主人|r << !sod
    .target Terenthis
step << !sod/Warrior/Rogue/Priest
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >>上楼去
step << !sod/Warrior/Rogue/Priest
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵艾莉萨·星风|r, 他在楼上
    .accept 965 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Sentinel Elissa Starbreeze


----Start of SoD Priest early level 18 wand quest + meditation quest detour----

step << Priest
    #season 2
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 957 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .isOnQuest 957
    .target Asterion
step << Priest
    #season 2
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>打开|cRXP_PICK_Blackwood Grain Stores|r。为|T134939:0|t|cRXP_Loot_[Blacwood Grain Sample]|r抓取
    >>|cRXP_WARN_掠夺它将产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它将农用并向你跑去。准备好对抗它们或重置它们|r
    >>|cRXP_WARN_如果你看到|cRXP_ENEMY_Xabraxxis|r在聊天中大喊大叫，或者看到有人在和他打架，请帮助他们。打开他掉在地上的恶魔包。为腐败的护身符掠夺它|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Priest
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>杀死|cRXP_ENEMY_Den母亲|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Thistle Cubs|r，它可以让你眩晕2秒|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step << Priest
    #season 2
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>打开|cRXP_PICK_Blackwood Nut Stores|r。为|T133944:0|t|cRXP_Loot_[Blacwood Nut Sample]|r抓取
    >>|cRXP_WARN_掠夺它将产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它将农用并向你跑去。准备好对抗它们或重置它们|r
    >>|cRXP_WARN_如果你看到|cRXP_ENEMY_Xabraxxis|r在聊天中大喊大叫，或者看到有人在和他打架，请帮助他们。打开他掉在地上的恶魔包。为腐败的护身符掠夺它|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Priest
    #season 2
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>打开|cRXP_PICK_Blackwood水果店|r。为|T134013:0|t|cRXP_Loot_[Blackwood水果样品]|r
    >>|cRXP_WARN_掠夺它将产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它将农用并向你跑去。准备好对抗它们或重置它们|r
    >>|cRXP_WARN_如果你看到|cRXP_ENEMY_Xabraxxis|r在聊天中大喊大叫，或者看到有人在和他打架，请帮助他们。打开他掉在地上的恶魔包。为腐败的护身符掠夺它|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Priest
    #season 2
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_使用|r|T134712:0|t[填充的清洁碗]|cRXP_WARN_at |cRX_PICK_Bonfire|r来召唤|r|cRXP_ENEMY_Xabraxxis|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step << Priest
    #season 2
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>杀死|cRXP_ENEMY_Xabraxxis|r。打开他掉在地上的|cRX_PICK_Xabraxxis的恶魔袋|r。为|cRXP_Loot_腐败魔符|r掠夺它
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << Priest
    #season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 965 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 966 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Balthule Shadowstrike
step << Priest
    #season 2
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>杀死|cRXP_ENEMY_Dark Strand Fanatics|r。掠夺他们的|cRXD_Loot_Wearn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Priest
    #season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 966 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 967 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Balthule Shadowstrike
step << Priest
    #season 2
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    .xp 18 >>升级到18级. |cRXP_WARN_If you're far away from it you can use the naga mushroom cave to logout skip to auberdine and turn in the quests instead|r
step << Priest
    #season 2
    #optional
    #completewith next
    .hs >>达纳苏斯之赫斯
    .zoneskip Darnassus
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
    .trainer >>训练你的职业技能
    .target Jandria
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maethra Slagheart|r
    .accept 78192 >>Accept Secrets of the Light
    .target Maethra Slagheart
step << Priest
    #season 2
    #sticky
    #completewith next
    .goto 1457,29.179,41.180
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
step << Priest
    #season 2
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6343 >>交任务: |cRXP_FRIENDLY_飞回泰达希尔|r
    .target Nessa Shadowsong
step << Priest
    #season 2
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞到黑海岸
    .target Vesprystus
    .zoneskip Darkshore
step << Priest
    #season 2
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2139 >>交任务: |cRXP_FRIENDLY_萨纳瑞恩的希望|r
    .target Tharnariun Treetender
step << Priest
    #season 2
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4763,1 >>交任务: |cRXP_FRIENDLY_黑木熊怪的堕落|r
    .target Thundris Windweaver
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12342 >>摧毁: |cRXP_ENEMY_黑木谷物|r, 它在你的背包中. 不再需要它了
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12343 >>摧毁: |cRXP_ENEMY_黑木坚果|r, 它在你的背包中. 不再需要它了
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12341 >>摧毁: |cRXP_ENEMY_黑木水果|r, 它在你的背包中. 不再需要它了
step << Priest
    #season 2
    #completewith next
    +|cRXP_WARN_Equip the|r |T135469:0|t[Moonstone Wand]
    .use 15204
    .itemcount 15204,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.61

----End of SoD Priest early level 18 wand quest + meditation quest detour----


step << !Hunter
    #season 0 << Druid/Priest
    #season 2 << Warrior/Rogue
    #optional
    #completewith Level10CookEnd
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .vendor 6301 >>|cRXP_BUY_从他那里购买|r|T134059:0|t[温和的香料]|cRXP_Buy_，直到你有|r|T134059:0 |t[轻微的香料]| cRXP_Buy_等于或大于你目前拥有的|r|T232832:0|t【小鸡蛋】|cRXP-Buy_|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .accept 982 >>接任务: |cRXP_WARN_深不可测的海洋|r
    .target Gorbold Steelhand
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .turnin 982 >>交任务: |cRXP_FRIENDLY_深不可测的海洋|r
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_向地面上的|cRXP_PICK_Campfire|r行进|r
    +|cRXP_WARN_开始|r|T133971:0|t[烹饪]|T132834:0|t[香草烤鸡蛋]|cRXP_WARN_。执行此操作，直到|r|T133971:0|t[烹饪]|cRXP_WARN_has至少达到10级|r
    >>|cRXP_WARN_继续调平你的|r|T133971:0|t[烹饪]|cRXP_WARN_直到你用完|r|T132832:0|t[小鸡蛋] << !sod
    >>|cRXP_WARN_稍后在Duskwood有一个任务要求您的|r|T133971:0|t[烹饪]|cRXP_WARN_to为50或更高。你很快上船的时候也可以做这个|r << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接任务: |cRXP_WARN_炖陆行鸟|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !sod/Rogue
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 958 >>交任务: |cRXP_FRIENDLY_上层精灵的工具|r << !sod
    .turnin 4762 >>交任务: |cRXP_FRIENDLY_壁泉河|r << sod
    .accept 4763 >>接任务: |cRXP_WARN_黑木熊怪的堕落|r << sod
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


----Start of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    +|cRXP_WARN_按Escape，然后进入->选项->控制|r
    >>|cRXP_WARN_选中“启用交互键”并将“与目标交互”选项绑定到键|r
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==注意你的呼吸计==|r
    >>|cRXP_WARN_在水下游到船的后部外侧|r
    >>|cRXP_WARN_在箭头位置，按下“与目标互动”键，从船外掠夺|cRXP_loot_Silver Dawning的锁箱|r|r
    >>|cRXP_WARN_如果你不想这样做，可以在水下游到船的底层，然后掠夺里面的|cRXP_loot_Silver Dawning的锁箱|r|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==注意你的呼吸计==|r
    >>|cRXP_WARN_在水下游到船的后部外侧|r
    >>|cRXP_WARN_在箭头位置，按下“与目标互动”键，从船外掠夺|cRXP_loot_Misst面纱的锁箱|r|r
    >>|cRXP_WARN_如果你不想这样做，可以在水下游到船的底层，然后洗劫里面的|cRXP_loot_Misst Veil’s Lockbox |r|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
    .isOnQuest 982


----End of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith BoatSeaCreature
    .goto 1439,44.190,33.697,0
    >>杀死|cRXP_ENEMY_Moonstracker符文|r。掠夺他们的|cRXX_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    .goto 1439,43.509,33.207,0
    >>杀死|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXX_OOT_Strider Meat|r
    >>|cRXP_WARN_小心他们|r|T132307:0|t[逃跑]|cRXP_WARN_at<30%健康|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    >>杀死|cRXP_ENEMY_Moonkin|r。掠夺他们的|T132832:0|t|cRXP_Loot_[小鸡蛋]|r
    >>|cRXP_WARN_这将用于在|r|T133971:0|t[烹饪]|cRXP_WARN_water|r|cRXP-WARN_to50之后调平|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .subzoneskip 446 --BashalAran
    .subzoneskip 452 --Mists Edge
--   .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 10-50
step
    #season 0
    .goto 1439,47.314,48.676
    >>单击|cRXP_PICK_神秘红水晶|r
    >>|cRXP_WARN_小心|cRXP_PICK_Mysterious Red Crystal|r以西的两组2|cRXP_ENEMY_Raging Moonkin|r，因为彼此最接近的二人被捆在一起|r
    .turnin 4812 >>交任务: |cRXP_FRIENDLY_清洗水晶|r
    .accept 4813 >>接任务: |cRXP_WARN_水晶中的碎骨|r
step
    #season 0 << !Warrior !Rogue
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 957 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .isOnQuest 957
    .target Asterion
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_他们施放时要小心|r|T135914:0|t[狂犬病]|cRXP_WARN_如果你没有足够快地杀死他们（即时近战：在10分钟内减少50%的所有生命回复）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label BoatSeaCreature
    #season 0
    .goto 1439,41.901,31.339
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>杀死|cRXP_ENEMY_Foreststrider Fledlings|r和|cRXP_ENEMY_Foreststrider |r。掠夺它们的|cRXD_Loot_Strider Meat|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_Foreststrider Fledlings|r|T132307:0|t[逃跑]|cRXP-WARN_at<30%健康|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CrabTurtle
    >>杀死|cRXP_ENEMY_Moonstracker符文|r和|cRXX_ENEMY_moonstrackers|r。掠夺他们的|cRXD_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #label CrabTurtle
    #season 0 << !Warrior !Rogue
    .goto Darkshore,44.18,20.60
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4725 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,55,0
    .goto 1439,45.468,20.336,55,0
    .goto 1439,47.356,20.559,55,0
    .goto 1439,48.013,21.409,55,0
    .goto 1439,48.612,20.745,55,0
    .goto 1439,49.680,22.468,55,0
    .goto 1439,49.313,24.271,55,0
    >>杀死|cRXP_ENEMY_Reef Crawlers |r。掠夺它们的|cRXX_Loot_Fine Crab Chunks|r
    >>如果你有不错的下降，可以考虑跳过17级中的一些|cRXP_WARN_您现在不必完成此任务|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,50.81,25.50
    #season 0 << !Warrior !Rogue
    >>|cRXP_WARN_在克利夫斯普林河底部使用|r|T134865:0|t[空采样管]|cRXP_WARN_|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.288,24.554,12 >>沿坡道向上行驶至|cRXP_PICK_Buzzbox 323|r
    .isQuestComplete 1002
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>单击地面上的|cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>交任务: |cRXP_FRIENDLY_传声盒323号|r
    .accept 1003 >>接任务: |cRXP_LOOT_传声盒525号|r
    .isQuestComplete 1002
step
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>单击地面上的|cRXP_PICK_Buzzbox 323|r
    .accept 1003 >>接任务: |cRXP_LOOT_传声盒525号|r
    .isQuestTurnedIn 1002


----Start of Hunter/Druid 1x and SoD Warrior/Rogue early Althalaxx section (for money+xp)----


step << Hunter/Druid/Warrior/Rogue
	#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_他们施放时要小心|r|T135914:0|t[狂犬病]|cRXP_WARN_如果你没有足够快地杀死他们（即时近战：在10分钟内减少50%的所有生命回复）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid/Warrior/Rogue
	#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>杀死|cRXP_ENEMY_Foreststriders|r。掠夺他们的|cRXD_Loot_Streder Meat|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>杀死|cRXP_ENEMY_Moonstrackers|r。掠夺他们的|cRXX_Loot_MoonstrackerFans|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>前往|cRXP_FRIENDLY_Balthule Shadowstrike|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 965 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 966 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Balthule Shadowstrike
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>杀死|cRXP_ENEMY_Dark Strand Fanatics|r。掠夺他们的|cRXD_Loot_Wearn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 966 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 967 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Balthule Shadowstrike
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>杀死|cRXP_ENEMY_Foreststriders|r。掠夺他们的|cRXD_Loot_Streder Meat|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider

----End of Hunter/Druid 1x and SoD Warrior early Althalaxx section (for money+xp)----

step
    #optional
    #completewith CliffCave
    #season 0 << !Warrior !Rogue
    >>杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_他们施放时要小心|r|T135914:0|t[狂犬病]|cRXP_WARN_如果你没有足够快地杀死他们（即时近战：在10分钟内减少50%的所有生命回复）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CliffCave
    >>杀死|cRXP_ENEMY_Moonstrackers|r。掠夺他们的|cRXX_Loot_MoonstrackerFans|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>杀死|cRXP_ENEMY_Foreststriders|r。掠夺他们的|cRXD_Loot_Streder Meat|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
    .itemcount 5469,3 --Strider Meat (3+)
----XX Start from West Side if 3+
step
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>杀死|cRXP_ENEMY_Foreststriders|r。掠夺他们的|cRXD_Loot_Streder Meat|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>单击地面上的|cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>交任务: |cRXP_FRIENDLY_传声盒323号|r
    .accept 1003 >>接任务: |cRXP_LOOT_传声盒525号|r
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>前往悬崖泉河洞穴
step << Druid
    .goto Darkshore,54.99,33.41
    #season 0
    >>|cRXP_WARN_在悬崖泉河洞穴入口处的水中使用|r|T134776:0|t[空悬崖泉瀑布采样器]|cRXP_WARN_in|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step << Warrior
    #season 1 -- not loading for now
    #optional
    #sticky
    #label EndlessRage
    .goto Darkshore,55.40,36.05,0,0
    >>杀死|cRXP_ENEMY_Lady Sedorax|r。为|T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]掠夺她
    >>|cRXP_ENEMY_Lady Sedorax|r|cRXP_WARN_i是一个18级精英，周围也有其他暴徒。你可以选择从Westfall获得它，这要容易得多|r
    >>|cRXP_WARN_在普通聊天（/1）中要求与其他想要杀死她的人或可能帮助你的人分组|r
    >>|cRXP_WARN_如果你做不到，跳过这一步|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
    .group
step << Warrior
    #season 1 -- not loading for now
    #sticky
    #label EndlessRageEnd
    #requires EndlessRage
    #optional
    .train 403489 >>|cRXP_WARN_使用|r|T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]|cRXP _WARN_to train|r|T132347:0 |t[Endless Rage]
    .use 208741
    .itemcount 208741,1
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 0 << !Warrior !Rogue
    >>掠夺地面上的|cRXP_Loot_Scaper|r
    >>|cRXP_WARN_保持上半部分。如果顶侧的末端没有|cRXP_LOOT_Death Cap|r，请放下并从下面的南部房间取一个|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_Stormscale Wave Riders|r cast|r|T135836:0|t[Aqua Jet]|cRXP-WARN_（远程瞬发：对附近的敌人造成伤害并将其击退）-确保你不会从洞穴的上层被击倒|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step << NightElf !Druid
    #softcore
    #optional
    #completewith CavetoAuber
    #season 0
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step
    #hardcore << NightElf !Druid
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    #season 0
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Jump on top of the rock on the top floor inside the cave. 前往: |cRXP_PICK_丹莫罗|r|r
step << Warrior/Rogue
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    #season 2
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Jump on top of the rock on the top floor inside the cave. 前往: |cRXP_PICK_丹莫罗|r|r
step
    #hardcore << NightElf !Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #requires MushroomLS
    #completewith CavetoAuber
    >>杀死|cRXP_ENEMY_Moonstracker符文|r。掠夺他们的|cRXX_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #optional
    #season 0 << !Warrior !Rogue
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >>Travel to Auberdine

----Start of SoD 250% xp buff early southern Darkshore one loop----

step << Warrior/Rogue
    #label CliffspringEnd
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4762 >>交任务: |cRXP_FRIENDLY_壁泉河|r
    .accept 4763 >>接任务: |cRXP_WARN_黑木熊怪的堕落|r
    .target Thundris Windweaver
step << Warrior/Rogue
    #season 2
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_向地面上的|cRXP_PICK_Campfire|r行进|r
    +|cRXP_WARN_开始|r|T133971:0|t[烹饪]|T132834:0|t[香草烤鸡蛋]|cRXP_WARN_。执行此操作，直到|r|T133971:0|t[烹饪]|cRXP_WARN_has至少达到10级|r
    >>|cRXP_WARN_继续调平你的|r|T133971:0|t[烹饪]|cRXP_WARN_直到你用完|r|T132832:0|t[小鸡蛋] << !sod
    >>|cRXP_WARN_稍后在Duskwood有一个任务要求您的|r|T133971:0|t[烹饪]|cRXP_WARN_to为50或更高。你很快上船的时候也可以做这个|r << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
    .isQuestAvailable 2178
step << Warrior/Rogue
    #season 2
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接任务: |cRXP_WARN_炖陆行鸟|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .isQuestAvailable 2178
step << !Druid
    #season 2
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
step
    #season 2
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    >>|cRXP_WARN_选择|r|T135641:0|t[Curvewood匕首]|cRXP_WARN_a，您应该稍后尝试为您的|r|T132290:0|t[毒药]|cRX P_WARN_quest保存|r|T1 35641:0 |t[匕首]|c|r << Rogue
    .turnin 4813 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r << !Hunter !Druid
    .turnin 4813,3 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r << Hunter/Druid
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step
    #season 2
    .goto Darkshore,37.78,44.06
    >>|cRXP_WARN_使用|r|T133748:0|t[清空清洁碗]|cRXP_WARN_at Auberdine moonwell|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step << Warrior/Rogue
    #season 2
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .turnin 947 >>交任务: |cRXP_FRIENDLY_洞中的蘑菇|r
    .accept 948 >>接任务: |cRXP_LOOT_安努|r
    .target Barithras Moonshade
step
    #season 2
    .goto Darkshore,37.21,44.22
    >>单击|cRXP_PICK_通缉海报|r
    .accept 4740 >>接任务: |cRXP_LOOT_通缉：莫克迪普！|r
step << Druid/Priest
    #season 2
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板基姆利雅|r
    .home >>将您的炉石设置为Astranaar
    .target Innkeeper Kimlya
step << Warrior/Rogue
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4725 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4725
step << Druid/Hunter
    #season 2
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接任务: |cRXP_WARN_海中的水果|r
    .target Gubber Blump
step << Druid
    #season 2
    #sticky
    #label Treats1
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>杀死|cRXP_ENEMY_Blackwood探路者|r和|cRXX_ENEMY_Blackwood风语者|r。掠夺他们的|T237270:0|t[|cRXD_Loot_Crab Treats|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 416049,1
step << Druid
    #season 2
    #sticky
    #label Treats2
    #requires Treats1
    #loop
    .goto 1439,36.091,51.501,0
    .goto 1439,35.088,55.085,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .use 209027 >>|cRXP_WARN_使用|r|T237270:0|t[|cRXP_LOOT_Crab Treats|r]|cRXP_WARN_on a|cRXP _ENEMY_Young Reef Crawler|r接收|r|T134419:0|t[| cRXP_FRIENDLY_Rune of Lacerate |r]
    .collect 208687,1 -- Rune of Lacerate (1)
    .target Young Reef Crawler
    .train 416049,1
step << Druid
    #season 2
    #sticky
    #label Treats3
    #requires Treats2
    .train 416049 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate |r]|cRXP_WARN_to train|r|T132131:0|t[Lacerate]
    .use 208687
    .itemcount 208687,1
step << !Warrior !Rogue !Priest
    #season 2
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>杀死|cRXP_ENEMY_Blackwood探路者|r和|cRXX_ENEMY_Blackwood风语者|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step << !Warrior !Rogue !Priest
    #season 2
    #sticky
    #completewith SealSoD
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>杀死|cRXP_ENEMY_Anaya Dawnrunner |r。为她掠夺她|cRXX_Loot_Pendint|r
    >>|cRXP_WARN_请注意，她有7-8分钟的产卵时间和4个不同的产卵点。如果她不在，跳过这个任务|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step << !warrior !Rogue !Priest
    #season 2
    #label SealSoD
    .goto 1439,42.373,61.815
    >>单击|cRXP_PICK_Ancient Flame|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>杀死|cRXP_ENEMY_Anaya Dawnrunner |r。为她掠夺她|cRXX_Loot_Pendint|r
    >>|cRXP_WARN_请注意，她有7-8分钟的产卵时间和4个不同的产卵点。如果她不在，跳过这个任务|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step << !Priest
    #optional
    #season 2
    #completewith OnuSoD
    >>杀死|cRXP_ENEMY_Rabid Thistle Bears|r.|cRXP-WARN_你现在不必完成这个任务，但理想情况下，当你到达奥努时，你应该杀死15+
    >>|cRXP_WARN_他们施放时要小心|r|T135914:0|t[狂犬病]|cRXP_WARN_如果你没有足够快地杀死他们（即时近战：在10分钟内减少50%的所有生命回复）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #season 2   
    #completewith OnuSoD
    .goto 1439,43.555,76.293,80 >>古树林之旅
step    
    #season 2
    #label OnuSoD
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 952 >>交任务: |cRXP_FRIENDLY_古树之林|r << Warrior/Rogue
    .turnin 948 >>交任务: |cRXP_FRIENDLY_安努|r
    .accept 944 >>接任务: |cRXP_WARN_主宰之剑|r
    .target Onu
step
    #season 2
    #label MasterG
    .goto Darkshore,38.54,86.05,100 >>大师魅力之旅
    .subzoneskip 449
    .isOnQuest 944
step
    #season 2
    #optional
    #completewith MasterEnd
    >>杀死|cRXP_ENEMY_Twilight门徒|r和|cRXP_ENEMY_暮光之城暴徒|r。为|T133743:0|t[|cRXD_Loot_Book:下面的力量|r]掠夺它们
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #optional
    #season 2
    .goto 1439,38.537,86.050
    >>发现大师的魅力
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #season 2
    #completewith next
    .cast 5809 >>|cRXP_WARN_使用|r|T134715:0|t[干燥系数]|cRXP_WARN_并将其放在地面上|r
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 2
    >>|cRXP_WARN_单击地面上的|cRXP_PICK_Scrying Bowl|r|r
    .turnin 944 >>交任务: |cRXP_FRIENDLY_主宰之剑|r
    .accept 949 >>接任务: |cRXP_LOOT_暮光之锤的营地|r
    .use 5251
step
    #label MasterEnd
    #season 2
    .goto 1439,38.537,86.050
    >>单击北部基座上的|cRXP_PICK_Twilight Tome|r
    .turnin 949 >>交任务: |cRXP_FRIENDLY_暮光之锤的营地|r
    .accept 950 >>接任务: |cRXP_LOOT_向安努回复|r
step
    #optional
    #sticky
    #season 2
    .isQuestTurnedIn 949
    .destroy 5251 >>摧毁: |cRXP_ENEMY_占卜之水|r, 它在你的背包中. 不再需要它了
step << !Warrior !Druid !Priest
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务: |cRXP_FRIENDLY_向安努回复|r
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .target Onu
step
    #sticky
    #label prospector
    #season 2
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    >>|cRXP_WARN_你可能需要等待他重生，或者等待其他人完成护送|r
    .turnin 729 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .target Prospector Remtravel
step
    #season 2
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    .accept 731,1 >>接任务: |cRXP_WARN_健忘的勘察员|r
    >>|cRXP_WARN_这个任务非常困难。如果失败，请跳过此步骤|r << !Warrior
    >>|cRXP_WARN_您很可能无法独自完成此任务|r我建议你甚至不要尝试，除非你能找到另一个玩家进行分组 << Warrior
    >>如果失败或没有人可与之分组，请跳过此步骤 << Warrior
    .link https://www.twitch.tv/videos/1182180918 >>|cRXP_WARN_单击此处查看视频指南|r << Hunter
    .link https://youtu.be/md926sh3L6U >>|cRXP_WARN_Click here for a video walkthrough|r << !Hunter
    .target Prospector Remtravel
step
    #requires prospector
    #season 2
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Prospector Remtravel|r通过挖掘|r
    >>|cRXP_WARN_这个任务非常困难。如果失败，请跳过此步骤|r
    .link https://www.twitch.tv/videos/1182180918 >>|cRXP_WARN_单击此处查看视频指南|r << Hunter
    .complete 731,1
    .isOnQuest 731
step << Druid/Hunter/Warrior
    #sticky
    #completewith CompleteThistleBears << Hunter/Druid
    #completewith SodMurk << Warrior
    #season 2
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Fine Crab Chunks|r
    >>|cRXP_WARN_你现在不必完成这个任务，但理想情况下，你应该在本节结束时至少有4个|r << !Warrior
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << !Warrior
    #season 2
    .goto 1439,31.251,87.419
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
    >>|cRXP_WARN_这个任务可能非常困难。使用|cRXP_ENEMY_Murlocs|r 1乘1，否则您可能同时农用多个|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >>|cRXP_WARN_单击此处查看视频指南|r << Hunter
step << !Warrior
	#season 2
    .goto 1439,31.229,85.564
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >>接任务: |cRXP_WARN_搁浅的海龟|r
step << !Warrior
	#season 2
    .goto 1439,31.690,83.700
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
	#season 2
    .goto 1439,32.644,80.711
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step
    #season 2
    #label SodMurk
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_确保检查|cRXP_ENEMY_Murkdeep|r是否已经在水中（如果有人之前遭遇失败或将|cRXX_ENEMY_Greymist Hunter|r留在了他生下的波浪中）|r
    >>杀死营地中的|cRXP_ENEMY_Greymist Warriors|r和|cRXX_ENEMY_Graymist Hunters|r
    >>|cRXP_WARN_移动到营地中心的篝火处，开始|cRXP_ENEMY_Murkdeep|r遭遇战：|r
    >>|cRXP_WARN_在杀死前一波后，将从水中产生3波：第1波有3个12-13级|cRXP_ENEMY_Greymist Coasttruners|r，第2波有2个15-16级|cRXP_ENEMY_Greymist Warriors|r；第3波有19级|cR_ENEMY_Murkdeep|r和16-17级|cRX P_ENEMX_Greymist Hunter|r。你可以远离篝火以避免攻击下一波|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step << Warrior
    #season 2
    .goto Darkshore,35.7,73.5
    >>完成杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Fine Crab Chunks|r
    >>|cRXP_WARN_如果附近没有螃蟹，请跳过此步骤|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << !Priest
    #season 2
    #label CompleteThistleBears
    .goto 1439,35.968,70.807
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step << !Priest
    #season 2
    .goto Darkshore,38.9,64.9
    >>完成杀戮|cRXP_ENEMY_Rabid Thistle Bears|r。
    >>|cRXP_WARN_他们施放时要小心|r|T135914:0|t[狂犬病]|cRXP_WARN_如果你没有足够快地杀死他们（即时近战：在10分钟内减少50%的所有生命回复）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !Warrior !Rogue !Priest
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >>接任务: |cRXP_WARN_搁浅的海龟|r


----Start of SoD Priest Ashenvale Meditation quest section----


step << Priest
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务: |cRXP_FRIENDLY_向安努回复|r
    .target Onu
step << Priest
    #season2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    >>|cRXP_WARN_如果他不在，跳过这一步。他可能需要25分钟才能重生|r
    .accept 5321 >>接任务: |cRXP_WARN_昏昏欲睡|r
    .target Kerlonian Evershade
step << Priest
    #season2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>打开|cRXP_PICK_Kerlonian的胸脯|r。为|T134229:0|t[|cRXP_Loot_觉醒之角|r]掠夺它
    .complete 5321,1 -- Horn of Awakening (1)
step << Priest
    #season2
    #completewith towersod
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .goto Ashenvale,29.7,13.6
step << Priest
    #season2
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Kerlonian|r前往阿申瓦尔的Maestra哨所|r
    .use 13536 >>|cRXP_WARN_使用|r|T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]|cRXP _WARN_whenever|cRXP_FRIENDLY_Kerlonian|r在他旁边睡着|r
    >>|cRXP_WARN_尽量避免在主干道上跑步。只有当你在路上时，敌人才会滋生|r
    .complete 5321,2
    .isOnQuest 5321
step << Priest
    #season2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    >>如果您尚未完成任务，请跳过此步骤
    .turnin 5321 >>交任务: |cRXP_FRIENDLY_昏昏欲睡|r
step << Priest
    #season2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>接任务: |cRXP_LOOT_巴斯兰的头发|r
step << Priest
    #season 2
    #sticky
    #completewith PriestHairSoD
    >>Kill |cRXP_ENEMY_Forsaken Herbalists|r and |cRXP_ENEMY_Forsaken Seekers|r as you're looking for the Plant Bundles
    .complete 78192,1 --Forsaken Herbalist (7)
    .complete 78192,2 --Forsaken Seeker (9)
    .mob Forsaken Herbalist
    .mob Forsaken Seeker
step << Priest
    #season 2
    #label PriestHairSoD
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>打开地面上的|cRXP_PICK_Plant Bundles|r。偷走它们|cRXP_Loot_Bathran的头发|r
    >>|cRXP_WARN_它们看起来像棕色的小麻袋。它们可能很难看到|r
    .complete 1010,1
    .isOnQuest 1010
step << Priest
    #season 2
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Fisnish off killing |cRXP_ENEMY_Forsaken Herbalists|r and |cRXP_ENEMY_Forsaken Seekers|r
    .complete 78192,1 --Forsaken Herbalist (7)
    .complete 78192,2 --Forsaken Seeker (9)
    .mob Forsaken Herbalist
    .mob Forsaken Seeker
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>交任务: |cRXP_FRIENDLY_巴斯兰的头发|r
    .accept 1020 >>接任务: |cRXP_LOOT_奥雷迪尔的药剂|r
step << Priest
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
    .fp Astranaar>>获取Astranaar飞行路线
	.target Daelyshia
step << Priest
    #season 2
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .turnin 1020 >>交任务: |cRXP_FRIENDLY_奥雷迪尔的药剂|r
step << Priest
    #season 2
    #optional
    #completewith next
    .hs >>奥伯丁之炉
    >>|cRXP_WARN_如果你的炉石正在冷却，就飞回来|r
    .zoneskip Darkshore
    .subzoneskip 442
step << Priest
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
    .fly Auberdine >>飞回奥伯丁
	.target Daelyshia


----End of SoD Priest Ashenvale Meditation quest section----


step
    #season 2
    #completewith CleansingTharnariunSod
    .subzone 442 >>Travel to Auberdine
step
    .goto 1439,36.621,45.596
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4722 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4728 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r << !Priest
    .turnin 4730 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4731 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r << !Warrior
    .turnin 4732 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r << !Warrior
    .turnin 4733 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r << !Warrior
    .target Gwennyth Bly'Leggonde
step << Warrior
    .goto Darkshore,36.096,44.931
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务: |cRXP_FRIENDLY_海中的水果|r
    .target Gubber Blump
    .isQuestComplete 1138
step << !Warrior !Rogue !Priest
    #optional
    #completewith next
    #season 2
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>返回码头上的|cRXP_FRIENDLY_Cerellean Whiteclaw|r
step << !Warrior !Rogue !Priest
    #optional
    #season 2
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    >>|cRXP_WARN_如果有人刚来，你可能需要等待他的RP|r
    .turnin 963 >>交任务: |cRXP_FRIENDLY_永志不渝|r
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .goto 1439,37.703,43.393
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4740 >>交任务: |cRXP_FRIENDLY_通缉：莫克迪普！|r
    .target Sentinel Glynda Nal'Shea
step << !Priest
    #label CleansingTharnariunSod
    #season 2
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2138 >>交任务: |cRXP_FRIENDLY_清除疫病|r
    .accept 2139 >>接任务: |cRXP_LOOT_萨纳瑞恩的希望|r
    .target Tharnariun Treetender
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 985 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
    .target Terenthis
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵艾莉萨·星风|r, 他在楼上
    .accept 965 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Sentinel Elissa Starbreeze
step
    .goto 1439,37.439,41.839
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 731 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 741 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Druid
    #season 2
    #optional
    #completewith Buzzbox323End
    .abandon 6123 >>放弃收集治疗方法
step
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    .accept 6343 >>接任务: |cRXP_LOOT_飞回泰达希尔|r
    .target Laird
    .isQuestComplete 741 << Rogue sod
step << NightElf
    #season 2
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
    .fly Teldrassil >>飞往Teldrassil
    .target Caylais Moonfeather
    .isQuestComplete 741 << Rogue
step << NightElf
    #season 2 << !sod Priest
    #season 1 << sod Priest
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6343 >>交任务: |cRXP_FRIENDLY_飞回泰达希尔|r
    .target Nessa Shadowsong
    .isQuestComplete 741 << Rogue sod
step << !NightElf
    #season 2
    .goto 1439,33.169,40.179,15 >>前往Darnassus船的码头
step << !NightElf
    #season 2
    .goto 1439,33.213,39.883
    >>|cRXP_WARN_如果需要，在等待船只到达Menethil港时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r << Warrior/Paladin/Rogue
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
    .zoneskip Stormwind City << Warrior
    .zoneskip Ironforge << Warrior
    .zoneskip Darnassus
    .dungeon !DM << !Dwarf/!Hunter
step << !Druid
    #completewith next
    #season 2
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Warrior
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_购买并装备一个|r|T135157:0|t[长棍]
    .collect 928,1
    .target Ariyell Skyshadow
    .money <0.9860
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.16 
step << Warrior
    #season 2
    #completewith next
    +|cRXP_WARN_Equip the |r|T135157:0|t[长棍]
    .use 928
    .itemcount 928,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.16
step << Warrior
    .goto Darnassus,58.72,34.92
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷亚斯塔·刃歌|r
    .trainer >>训练你的职业技能
    .target Arias'ta Bladesinger
step << Hunter
    #completewith start
    #season 2
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
    >>|cRXP_WARN_训练结束后，确保你还有70枚银牌。你需要它来买一把弓|r
    .trainer >>训练你的职业技能
    .target Jocaste
step << Hunter
    #completewith startSoD
    #label RecruveReinforcedSoD
    #season 2
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰德瑞亚|r
    >>|cRXP_WARN_Buy a|r|T135489:0|t[重循环弓]
    >>|cRXP_WARN_Stock on |r|T132382:0|t[尖箭头]
    .collect 3027,1
    .target Landria
    .money <0.3812
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
step << Hunter
    #requires RecruveReinforcedSoD
    #completewith next
    #season 2
    +|cRXP_WARN_获得|r|T135489:0|t[重循环弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Rogue
    >>进入塞纳里昂飞地
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
    .goto Darnassus,31.84,16.69,15,0
    .goto Darnassus,37.00,21.92
    >>|cRXP_WARN_Make sure you have at least 1 gold 30 silver left after training. You will need it to buy weapons|r
    .trainer >>训练你的职业技能
    .target Syurna
    .isQuestComplete 741
step << Rogue
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_Buy and equip two|r |T135342:0|t[Kris] daggers
    .collect 2209,2
    .target Ariyell Skyshadow
    .money <0.9860
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93 
    .isQuestComplete 741
step << Rogue
    #season 2
    #completewith next
    +|cRXP_WARN_Equip the two|r |T135342:0|t[Kris] daggers
    .use 2209
    .itemcount 2209,2
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
step << !Druid
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
    .turnin 741 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 942 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Chief Archaeologist Greywhisker
    .isQuestComplete 741
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
    .trainer >>训练你的职业技能
    .target Jandria
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maethra Slagheart|r
    .turnin 78192 >>Turn in Secrets of the Light
    .accept 78193 >>Accept Secrets of the Light 
    .target Maethra Slagheart
step << Warrior/Rogue
    #season 2
    #optional
    #completewith next
    .hs >>奥伯丁之炉
    >>|cRXP_WARN_如果你的炉石正在冷却，就飞回来|r
    .zoneskip Darkshore
    .subzoneskip 442
    .isQuestComplete 741 << Rogue
step << !Druid
    #season 2
    #label startSoD
    #sticky
    #completewith next
    .goto 1457,29.179,41.180
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
    .isQuestComplete 741 << Rogue
step << !Druid
    #season 2
    #label FlyAuberdineSoD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞到黑海岸
    .target Vesprystus
    .zoneskip Darkshore
    .isQuestComplete 741 << Rogue

----Start of Druid Quest+SoD rune section----


step << Druid
    #optional
    #season 2
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .turnin 6001 >>交任务: |cRXP_FRIENDLY_身心之力|r
    .accept 26 >>接任务: |cRXP_WARN_必修的课程|r
    .trainer >>训练你的职业技能
    >>你很快就会得到很多强大的猫符文，使猫野性成为更快的提升方式|cRXP_WARN_如果你想的话，请将你的天赋从平衡指定为野性|r。如果你能尽快获得猫形态的移动速度天赋，这将为你节省很多跑步时间。
    .target Mathrengyl Bearwalker
    .isQuestComplete 6001
step << Druid
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
    .turnin 741 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 942 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Chief Archaeologist Greywhisker
step << Druid
    #season 2
    #optional
    #completewith next
    +您现在将前往Teldrassil获得|T133816:0|t[雕刻手套-Mangle]
    .train 410025,1
step << Druid
    #season 2
    #optional
    .goto 1438,40.411,54.076
    .subzone 141 >>前往: |cRXP_PICK_泰达希尔|r
    .subzoneskip 262
    .train 410025,1
step << Druid
    #season 2
    #optional
    #label Banethil1
    #completewith Rune
    .goto 1438,40.411,54.076,40,0
    .goto 1438,42.225,54.161,40,0
    .goto 1438,44.474,56.354,40,0
    .goto 1438,44.197,58.040
    .subzone 262 >>进入Ban'ethil Barrow Den
    .train 410025,1
step << Druid
    #season 2
    #optional
    #requires Banethil1
    #completewith Rune
    .goto 1438,44.064,58.196,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,45.118,57.701,20 >>朝|cRXP_ENEMY_Rageclaw|r内部行驶
    .train 410025,1
step << Druid
    #season 2
    #loop
    .line 1438,45.055,57.739,45.008,58.055,45.091,58.386,45.256,58.538,45.492,58.609,45.668,58.356,45.702,57.980,45.604,57.699,45.370,57.566,45.161,57.638,45.118,57.701
    .goto 1438,45.055,57.739,12,0
    .goto 1438,45.008,58.055,12,0
    .goto 1438,45.091,58.386,12,0
    .goto 1438,45.256,58.538,12,0
    .goto 1438,45.492,58.609,12,0
    .goto 1438,45.668,58.356,12,0
    .goto 1438,45.702,57.980,12,0
    .goto 1438,45.604,57.699,12,0
    .goto 1438,45.370,57.566,12,0
    .goto 1438,45.161,57.638,12,0
    .goto 1438,45.118,57.701,12,0
    >>杀死里面底层的|cRXP_ENEMY_Rageclaw|r。掠夺他|T136061:0|t|cRXP_Loot_[乌辛愤怒的偶像]|r
    .collect 206954,1 -- Idol of Ursine Rage (1)
    .mob Rageclaw
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >>|cRXP_WARN_装备|r|T136061:0|t|cRXP_LOOT_[Ursine Rage的偶像]|r
    .use 206954
    .itemcount 206954,1
    .train 410025,1
step << Druid
    #season 2
    #loop
    .goto 1438,44.731,57.355,0
    .goto 1438,44.254,59.083,0
    .goto 1438,44.064,58.196,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.064,58.196,15,0
    .aura 414824 >>|cRXP_WARN_当处于|r|T132276:0|t[熊形态]|cRXP_WARN_时，保持50或50以上的愤怒持续60秒|r
    .itemStat 18,QUALITY,2
    .train 410025,1
step << Druid
    #season 2
    .train 410025 >>|cRXP_WARN_使用|r|T136061:0|t|cRXP_LOOT_【Ursine Rage的偶像】|r|cRXP _WARN_to learn|r|T132135:0|t[漫画]
    .use 206954
    .aura -414824
step << Druid
    #optional
    #completewith TotL
    .cast 18960 >>铸造Teleport:Moonglade
    .zoneskip Moonglade
    step << Druid
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
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
    #optional
    #completewith next
    .cast 18960 >>铸造Teleport:Moonglade
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_使用|r|T134125:0|t[Srine Bauble]|cRXP_WARN_at Shrine of Remulos树|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔加里|r
    .turnin 29 >>交任务: |cRXP_FRIENDLY_湖中试炼|r
    .accept 272 >>接任务: |cRXP_WARN_海狮试炼|r
    .target Tajarri
step << Druid
    #optional
    .hs >>Hearth到Darkshore
    .zoneskip Darkshore
    
    
----End of Druid Quest+SoD rune section----


step << Priest
    #season 2
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >>前往Menethil Harbor船的码头
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Priest
    #season 2
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM

    
----End of SoD 250% xp buff early southern Darkshore one loop----    


step
    #label CliffspringEnd
    #season 0
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4762 >>交任务: |cRXP_FRIENDLY_壁泉河|r
    .accept 4763 >>接任务: |cRXP_WARN_黑木熊怪的堕落|r
    .target Thundris Windweaver
step
    .goto Darkshore,37.70,40.70
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接任务: |cRXP_WARN_炖陆行鸟|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
    .turnin 6122 >>交任务: |cRXP_FRIENDLY_毒水之源|r << Druid
    .accept 6123 >>接任务: |cRXP_WARN_收集解药|r << Druid
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .isQuestAvailable 2178 << Druid
step << Druid
    #optional
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 6122 >>交任务: |cRXP_FRIENDLY_毒水之源|r
    .accept 6123 >>接任务: |cRXP_WARN_收集解药|r
    .target Alanndarian Nightsong
step
--XX !NightElf
    #xprate <1.5
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
    .isQuestComplete 2138
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .turnin 982 >>交任务: |cRXP_FRIENDLY_深不可测的海洋|r
    .target Gorbold Steelhand
step
--XX !NightElf
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2138 >>交任务: |cRXP_FRIENDLY_清除疫病|r
    .accept 2139 >>接任务: |cRXP_LOOT_萨纳瑞恩的希望|r
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2139 >>接任务: |cRXP_LOOT_萨纳瑞恩的希望|r
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto Darkshore,37.70,43.39
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    >>|cRXP_WARN_选择|r|T135641:0|t[Curvewood匕首]|cRXP_WARN_a，您应该稍后尝试为您的|r|T132290:0|t[毒药]|cRX P_WARN_quest保存|r|T1 35641:0 |t[匕首]|c|r << Rogue
    .turnin 4813 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.78,44.06
    #season 0
    >>|cRXP_WARN_使用|r|T133748:0|t[清空清洁碗]|cRXP_WARN_at Auberdine moonwell|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step
    .goto 1439,37.322,43.640
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .turnin 947 >>交任务: |cRXP_FRIENDLY_洞中的蘑菇|r
    .accept 948 >>接任务: |cRXP_LOOT_安努|r
    .target Barithras Moonshade
step
    .goto Darkshore,37.21,44.22
    #season 0
    >>单击|cRXP_PICK_通缉海报|r
    .accept 4740 >>接任务: |cRXP_LOOT_通缉：莫克迪普！|r
step << NightElf !Druid
    .goto 1439,36.767,44.285
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    .accept 6343 >>接任务: |cRXP_LOOT_飞回泰达希尔|r
    .target Laird
step
    .goto Darkshore,36.096,44.931
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务: |cRXP_FRIENDLY_海中的水果|r
    .target Gubber Blump
    .isQuestComplete 1138
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4723 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4725 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #optional
    #season 0
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4725 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .target Gwennyth Bly'Leggonde


----Start of Druid Quest section----


step << Druid
    #optional
    #season 0
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 16 >>升级到16级
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step << Druid
    #optional
    #season 0
    #completewith DruidLesson
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
    .fly Teldrassil >>飞往Teldrassil
    .target Caylais Moonfeather
step << Druid
    #optional
    #season 0
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6343 >>交任务: |cRXP_FRIENDLY_飞回泰达希尔|r
    .target Nessa Shadowsong
step << Druid
    #optional
    #season 0
    #label DruidLesson
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .accept 26 >>接任务: |cRXP_WARN_必修的课程|r
    .trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #season 0
    #completewith next
    .abandon 729 >>放弃心不在焉的探索者接受任务《黑暗海岸的麻烦》？
step << Druid
    .goto Teldrassil,23.70,64.51
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
    .accept 730 >>接任务: |cRXP_WARN_黑海岸的麻烦事|r
    .target Chief Archaeologist Greywhisker
step << Druid
    #optional
	#completewith TotL
    #season 0
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 26 >>交任务: |cRXP_FRIENDLY_必修的课程|r
    .accept 29 >>接任务: |cRXP_WARN_湖中试炼|r
    .target Dendrite Starblaze
step << Druid
    #season 0
    .goto Moonglade,52.6,51.6
    >>游入Elune'Ara湖
    >>打开一个|cRXP_PICK_Bauble容器|r。将其抢劫成|T134125:0|t[Srine Bauble]
    >>|cRXP_WARN_它可能在水下的不同位置产卵|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #season 0
    #completewith next
    .cast 18960 >>铸造Teleport:Moonglade
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    #season 0
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_使用|r|T134125:0|t[Srine Bauble]|cRXP_WARN_at Shrine of Remulos树|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    #season 0
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔加里|r
    .turnin 29 >>交任务: |cRXP_FRIENDLY_湖中试炼|r
    .accept 272 >>接任务: |cRXP_WARN_海狮试炼|r
    .target Tajarri
step << Druid
    #optional
    #season 0
    .hs >>Hearth到Darkshore
    .zoneskip Darkshore


----End of Druid Quest section----


]])

----End of Darkshore Part 1----
----Start of Darkshore Part 2----
----Hunters stay in Darkshore/Ashenvale and Grind, 2x skips Redridge----

RXPGuides.RegisterGuide([[
#classic
#version 1
<< Alliance
<< !sod/Warrior/Rogue/Hunter/Druid
#group RestedXP 联盟 1-20
#name 16-19 黑海岸
#displayname 20-22 Darkshore << sod !Warrior
#displayname 20-22 Darkshore/Ashenvale << sod Warrior
#next 19-20雷德里奇；20-21 黑海岸/灰谷 << !Hunter
#next 19-21 黑海岸/灰谷 << !sod Hunter
#next 22-24 Wetlands SoD << sod

step << NightElf !Druid
    #optional
    #completewith PortalDarn
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
    .fly Teldrassil >>飞往Teldrassil
    .target Caylais Moonfeather
    .zoneskip Teldrassil
step << NightElf !Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6343 >>交任务: |cRXP_FRIENDLY_飞回泰达希尔|r
    .target Nessa Shadowsong
step << NightElf !Druid
    #completewith next
    #season 0
    #label PortalDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << NightElf Warrior
    .goto Darnassus,58.72,34.92
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷亚斯塔·刃歌|r
    .trainer >>训练你的职业技能
    .target Arias'ta Bladesinger
step << NightElf Warrior
    .goto Darnassus,57.56,46.72
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .train 2567 >>火车抛锚
    .target Ilyenia Moonfire
step << NightElf Hunter
    #completewith start
    #season 0
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
    .trainer >>训练你的职业技能
    .target Jocaste
step << NightElf Hunter
    #completewith start
    #season 0
    #label RecruveReinforced
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰德瑞亚|r
    >>|cRXP_WARN_如果你买得起，就买一把|r|T135489:0|t[重循环弓]|cRXP_WARN_i。如果买不起，就再买一把|r |T135490:0|t[强化弓]
    >>|cRXP_WARN_Stock on |r|T132382:0|t[尖箭头]
    .collect 3027,1
    .target Landria
    .money <0.3812
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
step << Hunter
    #requires RecruveReinforced
    #season 0
    #completewith next
    +|cRXP_WARN_获得|r|T135489:0|t[重循环弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Hunter
    #requires RecruveReinforced
    #season 0
    #completewith next
    +|cRXP_WARN_装备|r|T135490:0|t[加固弓]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.49
step << NightElf Rogue
    >>进入塞纳里昂飞地
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
    .goto Darnassus,31.84,16.69,15,0
    .goto Darnassus,37.00,21.92
    .trainer >>训练你的职业技能
    .target Syurna
step << NightElf !Druid
    #optional
    #season 0
    #completewith next
    .abandon 729 >>放弃心不在焉的探索者接受任务《黑暗海岸的麻烦》？
step << NightElf !Druid
    .goto Teldrassil,23.70,64.51
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
    .accept 730 >>接任务: |cRXP_WARN_黑海岸的麻烦事|r
    .target Chief Archaeologist Greywhisker
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
    .trainer >>训练你的职业技能
    .target Jandria
step << NightElf !Druid
    #label start
    #season 0
    .hs >>奥伯丁之炉
step
    .goto Darkshore,37.21,44.22
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t单击|cRXP_FRIENDLY_The Wanted Poster|r
    .accept 4740 >>接任务: |cRXP_LOOT_通缉：莫克迪普！|r
step << NightElf
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 730 >>交任务: |cRXP_FRIENDLY_黑海岸的麻烦事|r
    .accept 729 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
    .isOnQuest 730
step << NightElf
    #optional
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
step
    .goto 1439,37.394,40.128
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4762 >>交任务: |cRXP_FRIENDLY_壁泉河|r
    .accept 4763 >>接任务: |cRXP_WARN_黑木熊怪的堕落|r
    .target Thundris Windweaver
step
    .goto Darkshore,37.78,44.06
    #season 0
    .use 12346 >>|cRXP_WARN_使用|r|T133748:0|t[清空清洁碗]|cRXP_WARN_at |r|cRX_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step << Warlock
    #season 2
    #sticky
    #completewith TravelMenethilNoDMBoat
    #label ExplorerImpDarkshoreTwo
    >>当你在怪物身上施放|T136163:0|t|cRXP_FRIENDLY_[吸取灵魂]|r，直到你收到一个|T133257:0|t| cRXP_LOOT_探索者的灵魂|r|cRXP-WARN_使用它来学习如何召唤一个|r|T236294:0|t | cRXP-FRIENDLY_[探索者Imp]|r
    .train 445459 >>|cRXP_WARN_Use|r|T133257:0|t|cRXP_LOOT_探索者的灵魂|r|cRXD_WARN_to学习如何召唤|r|T236294:0|t[|cRXT_FRIENDLY_Explorer Imp|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImpDarkshoreTwo << Warlock
    #sticky
    #completewith TravelMenethilNoDMBoat
    #label FelPortalRuneDarkshore
    >>您所在的区域中存在|cRXP_FRIENDLY_Fel门户|r。如果你找到了一个，请召唤你的|T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]，并在门户旁边与它交谈，将其发送到探险队。10-20分钟后，它将带着战利品返回，并有机会奖励您|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
    >>您所在的区域中存在|cRXP_FRIENDLY_Fel门户|r。如果您找到一个，请使用|T134945:0|t[|cRXP_OOT_Scroll of Spatial Mending|r]关闭它。这将奖励您|T134939:0|t[|cRXP_FRIENDLY_Spell备注：打捆螺栓|r] << Mage
    >>|cRXP_WARN_在你得到符文之前要注意入口|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 428878,1 << Mage
    .train 427733,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRuneDarkshore
    #sticky
    #completewith TravelMenethilNoDMBoat
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 427733 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r]|cRXP_WARN_学习|r|T136216:0|t[召唤Felguard] << Warlock
    .train 428878 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #season 0
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>杀死|cRXP_ENEMY_Anaya Dawnrunner |r。为她掠夺她|cRXX_Loot_Pendint|r
    >>|cRXP_WARN_请注意，她有7-8分钟的产卵时间和4个不同的产卵点|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #season 0
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>杀死|cRXP_ENEMY_Anaya Dawnrunner |r。为她掠夺她|cRXX_Loot_Pendint|r
    >>|cRXP_WARN_请注意，她有7-8分钟的产卵时间和4个不同的产卵点|r
    >>|cRXP_WARN_如果找不到她，你可能想和附近的其他人组队。在普通聊天（/1）中要求与其他正在寻找她的人进行分组|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CompleteFangs
    >>杀死|cRXP_ENEMY_Moonstracker符文|r和|cRXX_ENEMY_moonstrackers|r。掠夺他们的|cRXD_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #season 0
    #completewith CompleteThistleBears
    >>在南部暗海岸杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Druid
    #xprate <1.5
    #sticky
    #label earthroot
    >>收集5|T134187:0|t[Earthroot]作为您的任务|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
step << Druid
    #xprate <1.5
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>在整个洞穴的地面上掠夺|cRXP_Loot_月球真菌|r
    .complete 6123,2
    .isOnQuest 6123
step
    #label CompleteThistleBears
    #season 0
    .goto 1439,35.968,70.807
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step
    #completewith MasterG
    #season 0
    >>杀死|cRXP_ENEMY_Moonstracker Sires|r。掠夺他们的|cRXX_Loot_Pelt|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith MasterG
    .goto Darkshore,38.60,80.50,0
    >>杀死|cRXP_ENEMY_Grizzled Thistle Bears|r。掠夺它们的|cRXX_Loot_Scapps|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #season 0
    .goto Darkshore,39.03,67.32,70,0
    .goto Darkshore,42.54,67.76,70,0
    .goto Darkshore,39.99,78.46
    >>在南部暗海岸杀死|cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #completewith OnuGrove
    #season 0
    .goto 1439,43.555,76.293,80 >>古树林之旅
step
    #label OnuGrove
    #season 0
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 952 >>交任务: |cRXP_FRIENDLY_古树之林|r << NightElf
    .turnin 948 >>交任务: |cRXP_FRIENDLY_安努|r
    .accept 944 >>接任务: |cRXP_WARN_主宰之剑|r
    .target Onu
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.390,80.563
    >>单击地面上的|cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>交任务: |cRXP_FRIENDLY_传声盒525号|r
    .isQuestComplete 1003
step
    #label MasterG
    #season 0
    .goto Darkshore,38.54,86.05,100 >>大师魅力之旅
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    #season 0
    >>杀死|cRXP_ENEMY_Twilight门徒|r和|cRXP_ENEMY_暮光之城暴徒|r。为|T133743:0|t[|cRXD_Loot_Book:下面的力量|r]掠夺它们
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #optional
    #season 0
    .goto 1439,38.537,86.050
    >>发现大师的魅力
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    #season 0
    .cast 5809 >>|cRXP_WARN_使用|r|T134715:0|t[干燥系数]|cRXP_WARN_并将其放在地面上|r
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>|cRXP_WARN_单击地面上的|cRXP_PICK_Scrying Bowl|r|r
    .turnin 944 >>交任务: |cRXP_FRIENDLY_主宰之剑|r
    .accept 949 >>接任务: |cRXP_LOOT_暮光之锤的营地|r
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>单击北部基座上的|cRXP_PICK_Twilight Tome|r
    .turnin 949 >>交任务: |cRXP_FRIENDLY_暮光之锤的营地|r
    .accept 950 >>接任务: |cRXP_LOOT_向安努回复|r
step
    .goto 1439,38.660,87.305
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟瑞露尼|r
    >>|cRXP_WARN_如果她不在，跳过这一步|r
    .accept 945 >>接任务: |cRXP_WARN_护送瑟瑞露尼|r
    .target Therylune
step
    #label TheryluneEnd
    #season 0
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Therylune|r离开大师之光|r
    .complete 945,1 --护送Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #optional
    #season 0
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >>摧毁: |cRXP_ENEMY_占卜之水|r, 它在你的背包中. 不再需要它了
step
    #optional
    #season 0
    #completewith Murk
    #completewith prospector << Hunter
    >>杀死|cRXP_ENEMY_Moonstracker Sires|r。掠夺他们的|cRXX_Loot_Pelt|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
step
	#xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5 --<< !NightElf/Hunter
    #label LastBuzz
    .goto 1439,41.390,80.563
    >>单击地面上的|cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>交任务: |cRXP_FRIENDLY_传声盒525号|r
    .isQuestComplete 1003
step
    .goto 1439,43.555,76.293
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务: |cRXP_FRIENDLY_向安努回复|r
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .accept 951 >>接任务: |cRXP_LOOT_玛塞斯特拉遗物|r
    .target Onu
step
    #completewith Southcrabs
    #season 0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step
    #label Murk
    #season 0
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_确保检查|cRXP_ENEMY_Murkdeep|r是否已经在水中（如果有人之前遭遇失败或将|cRXX_ENEMY_Greymist Hunter|r留在了他生下的波浪中）|r
    >>杀死营地中的|cRXP_ENEMY_Greymist Warriors|r和|cRXX_ENEMY_Graymist Hunters|r
    >>|cRXP_WARN_移动到营地中心的篝火处，开始|cRXP_ENEMY_Murkdeep|r遭遇战：|r
    >>|cRXP_WARN_在杀死前一波后，将从水中产生3波：第1波有3个12-13级|cRXP_ENEMY_Greymist Coasttruners|r，第2波有2个15-16级|cRXP_ENEMY_Greymist Warriors|r；第3波有19级|cR_ENEMY_Murkdeep|r和16-17级|cRX P_ENEMX_Greymist Hunter|r。你可以远离篝火以避免攻击下一波|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step << Hunter
    #optional
    #season 0
    .goto Darkshore,38.54,86.05
    .xp 17 >>升级到17级
step << Hunter
    #sticky
    #season 0
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    >>|cRXP_WARN_你可能需要等待他重生，或者等待其他人完成护送|r
    .turnin 729 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .target Prospector Remtravel
step << Hunter
    .goto Darkshore,35.72,83.69
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    .accept 731,1 >>接任务: |cRXP_WARN_健忘的勘察员|r
    >>|cRXP_WARN_这个任务非常困难。你可以跳过这一步，回到19级|r
    .link https://www.twitch.tv/videos/1182180918 >>|cRXP_WARN_单击此处查看视频指南|r
    .target Prospector Remtravel
step << Hunter
    #requires prospector
    #season 0
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Prospector Remtravel|r通过挖掘|r
    >>|cRXP_WARN_这个任务非常困难。你可以跳过这一步，回到19级|r
    .link https://www.twitch.tv/videos/1182180918 >>|cRXP_WARN_单击此处查看视频指南|r
    .complete 731,1
    .isOnQuest 731
step << Hunter
    #xprate <1.5
    #season 0
    .goto 1439,31.251,87.419
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
    >>|cRXP_WARN_这个任务可能非常困难。使用|cRXP_ENEMY_Murlocs|r 1乘1，否则您可能同时农用多个|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >>|cRXP_WARN_单击此处查看视频指南|r
step << Hunter
	#xprate <1.5
    #season 0
    .goto 1439,31.229,85.564
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >>接任务: |cRXP_WARN_搁浅的海龟|r
step << !Hunter
	#xprate <1.5
    #season 0
    .goto 1439,32.644,80.711
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step
	#xprate <1.5
    #season 0
    .goto 1439,31.690,83.700
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >>接任务: |cRXP_WARN_搁浅的海龟|r
step << Hunter
	#xprate <1.5
    #season 0
    #label Southcrabs
    .goto 1439,32.644,80.711
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step << Druid
    #optional
    #season 0
    >>|cRXP_WARN_通过|T136065:0|t[草药学]和罕见的|r|cRXP_PICK_Battered Chests完成收集|T134187:0|t[Earthroot]|r
    >>|cRXP_WARN_如果你放弃了，找不到足够的，跳过这一步|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
    .skill herbalism,<15,1
--XX Add waypoints later
step << !NightElf !Hunter !Druid
    #label Southcrabs
    #season 0
    #completewith CleansingTharnariun
    .hs >>奥伯丁之炉
step << Druid
    #label Southcrabs
    #season 0
    #requires earthroot
	#completewith FlyDarkshore
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    #requires earthroot
    #season 0
    .goto Moonglade,52.53,40.57
	>>前往Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
    .xp <18,1
step << Druid
    #label FlyDarkshore
    #season 0
    .goto Moonglade,48.11,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德拉尔|r
    .fly Auberdine >>飞到黑海岸
    .target Sindrayl
    .zoneskip Darkshore
step << NightElf !Druid/Dwarf Hunter
    #label Southcrabs
    #season 0
    #completewith CleansingTharnariun
    .subzone 442 >>Travel to Auberdine
step
    #optional
    #completewith next
    #season 0
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>返回码头上的|cRXP_FRIENDLY_Cerellean Whiteclaw|r
step
    #optional
    #season 0
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    >>|cRXP_WARN_如果有人刚来，你可能需要等待他的RP|r
    .turnin 963 >>交任务: |cRXP_FRIENDLY_永志不渝|r
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #optional
    #season 0
    #completewith CleansingTharnariun
    .abandon 963 >>为了永恒的爱而放弃
step
    #xprate <1.5
    #season 0
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4728 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4730 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4731 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4732 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r << Hunter
    .turnin 4733 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r << Hunter
    .target Gwennyth Bly'Leggonde
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务: |cRXP_FRIENDLY_海中的水果|r
    .isQuestComplete 1138
    .target Gubber Blump
step
    .goto 1439,37.703,43.393
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4740 >>交任务: |cRXP_FRIENDLY_通缉：莫克迪普！|r
    .target Sentinel Glynda Nal'Shea
step
    #label CleansingTharnariun
    #season 0
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2138 >>交任务: |cRXP_FRIENDLY_清除疫病|r
    .accept 2139 >>接任务: |cRXP_LOOT_萨纳瑞恩的希望|r
    .target Tharnariun Treetender
step << Hunter
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 731 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 741 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Hunter
    #optional
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 741 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
    .isQuestTurnedIn 731
step << Druid
    #xprate <1.5
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 6123 >>交任务: |cRXP_FRIENDLY_收集解药|r
    .accept 6124 >>接任务: |cRXP_WARN_消除疾病|r
    .isQuestComplete 6123
step << Druid
    #xprate <1.5
    #optional
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 6124 >>接任务: |cRXP_WARN_消除疾病|r
    .target Alanndarian Nightsong
    .isQuestTurnedIn 6123
step << Druid
    #optional
    #season 0
    #completewith Buzzbox323End
    .abandon 6123 >>放弃收集治疗方法
step << Druid
    #xprate <1.5
    #optional
    #season 0
    #completewith Buzzbox323End
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    >>|cRXP_WARN_使用|r|T132801:0|t[治疗性动物救助]|cRXP_WARN_on|r|cRXP-ENEMY_Sickly Deer|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .isQuestAvailable 1138
step << Druid
    #xprate <1.5
    #season 0
    #sticky
    #label SicklyDeers
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .waypoint Darkshore,49.7,33.2,40,0
    .waypoint Darkshore,43.4,25.1,40,0
    .waypoint Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_使用|r|T132801:0|t[治疗性动物救助]|cRXP_WARN_on|r|cRXP-ENEMY_Sickly Deer|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
    .isQuestTurnedIn 1138
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>打开|cRXP_PICK_Blackwood Grain Stores|r。为|T134939:0|t|cRXP_Loot_[Blacwood Grain Sample]|r抓取
    >>|cRXP_WARN_掠夺它将产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它将农用并向你跑去。准备好对抗它们或重置它们|r
    >>|cRXP_WARN_如果你看到|cRXP_ENEMY_Xabraxxis|r在聊天中大喊大叫，或者看到有人在和他打架，请帮助他们。打开他掉在地上的恶魔包。为腐败的护身符掠夺它|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>杀死|cRXP_ENEMY_Den Mother|r。为|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]掠夺她
    >>|cRXP_WARN_注意|cRXP_ENEMY_Thistle Cubs|r，它可以让你眩晕2秒|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step
    #season 0 << Warrior
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>杀死|cRXP_ENEMY_Den母亲|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Thistle Cubs|r，它可以让你眩晕2秒|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>打开|cRXP_PICK_Blackwood Nut Stores|r。为|T133944:0|t|cRXP_Loot_[Blacwood Nut Sample]|r抓取
    >>|cRXP_WARN_掠夺它将产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它将农用并向你跑去。准备好对抗它们或重置它们|r
    >>|cRXP_WARN_如果你看到|cRXP_ENEMY_Xabraxxis|r在聊天中大喊大叫，或者看到有人在和他打架，请帮助他们。打开他掉在地上的恶魔包。为腐败的护身符掠夺它|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>打开|cRXP_PICK_Blackwood水果店|r。为|T134013:0|t|cRXP_Loot_[Blackwood水果样品]|r
    >>|cRXP_WARN_掠夺它将产生2|cRXP_ENEMY_Blackwood Furbolgs|r，它将农用并向你跑去。准备好对抗它们或重置它们|r
    >>|cRXP_WARN_如果你看到|cRXP_ENEMY_Xabraxxis|r在聊天中大喊大叫，或者看到有人在和他打架，请帮助他们。打开他掉在地上的恶魔包。为腐败的护身符掠夺它|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_使用|r|T134712:0|t[填充的清洁碗]|cRXP_WARN_at |cRX_PICK_Bonfire|r来召唤|r|cRXP_ENEMY_Xabraxxis|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>杀死|cRXP_ENEMY_Xabraxxis|r。打开他掉在地上的|cRX_PICK_Xabraxxis的恶魔袋|r。为|cRXP_Loot_腐败魔符|r掠夺它
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << Warrior
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>杀死|cRXP_ENEMY_Den母亲|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Thistle Cubs|r，它可以让你眩晕2秒|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step << Warrior
    #season 2
    .goto Darkshore,51.48,38.43
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_跳到Den Mother洞穴后面的蘑菇顶部，并通过在蘑菇顶部注销来执行注销跳过|r
step << Warrior
    #optional
    #season 2
    #completewith BlackwoodSod
    .subzone 442 >>Travel to Auberdine
step << !Hunter
    #xprate <1.5
    #label CompleteFangs
    .goto Darkshore,52.6,33.6
    .xp 18 >>升级到18级
step << Hunter
    #label CompleteFangs
    #season 0
    .goto Darkshore,52.6,33.6
    .xp 18.75 >>升级到18级+75%
    >>确保HS冷却时间<10分钟
    >>如果该区域过于拥挤，请跳过此步骤
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>杀死|cRXP_ENEMY_Moonstracker符文|r和|cRXX_ENEMY_moonstrackers|r。掠夺他们的|cRXD_Loot_Moonstracker方|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
--XX Can do later during Pelts but better if player gets more xp beforehand
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label Buzzbox323End
    #requires SicklyDeers << Druid --xprate <1.5
    .goto 1439,51.288,24.554
    >>单击地面上的|cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>交任务: |cRXP_FRIENDLY_传声盒323号|r
    .accept 1003 >>接任务: |cRXP_LOOT_传声盒525号|r
step
    #season 0 << Warrior
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 965 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 966 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Balthule Shadowstrike
step << Paladin
    #season 2
    #optional
    #completewith next
    .goto Darkshore,56.20,26.46
    >>|cRXP_WARN_留意进入阿尔塔拉克斯塔的人群。如果你看到任何人，在里面慢慢跟着他们，这样你就可以掠夺顶部的|cRXP_PICK_Strange Orb|r
    >>|cRXP_WARN_小心，因为你不可能杀死这座塔中的暴徒（28-31级）|r
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    >>打开Althalaxx塔顶部桌子上的|cRXP_PICK_Strange Orb|r。为|cRXP_Loot_Althalaxx-Orb|r掠夺它
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step << Warlock
    #season 2
    #optional
    #completewith Parchments
    >>|cRXP_WARN_留意进入阿尔塔拉克斯塔的人群。如果你看到任何人，在里面慢慢跟在他们后面，这样你就可以掠夺顶部的|cRXP_PICK_Altek之枝|r，获得|T135153:0|t[Artek之枝]
    >>|cRXP_WARN_这是为您稍后的|r|T237558:0|t[变形]|cRXP_WARN_run准备的。如果您不想这样做，请跳过此步骤|r
    >>|cRXP_WARN_小心，因为你不可能杀死这座塔中的暴徒（28-31级）|r
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    .collect 210763,1
    .goto Darkshore,56.3,26.5
    .train 403938,1
    .dungeon SFK
    .isQuestAvailable 78680
step << Warlock
    #season 2
    #sticky
    #label Channeling
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .waypoint 1439,55.743,25.915,50,0
    .waypoint 1439,56.047,26.586,50,0
    .waypoint 1439,56.544,26.598,50,0
    .waypoint 1439,57.046,26.234,50,0
    .waypoint 1439,57.278,26.311,50,0
    .waypoint 1439,56.790,27.621,50,0
    .waypoint 1439,56.194,27.071,50,0
    .waypoint 1439,55.815,26.972,50,0
    .waypoint 1439,55.763,26.695,50,0
    .waypoint 1439,55.369,27.025,50,0
    .waypoint 1439,55.231,26.508,50,0
    >>杀死|cRXP_ENEMY_Dark Strand Fanatics|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Channeling|r]掠夺它们
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step << Warlock
    #season 2
    #sticky
    #label ChannelingEnd
    #requires Channeling
    .train 403932 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_通道调整|r]|cRXP-WARN_训练|r|T136168:0|t[主通道器]
    .use 208750
    .itemcount 208750,1
step
	#xprate >1.49 << Hunter/Druid
    #season 0 << Warrior
    #label Parchments << Warlock --Season 2 SFK
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>杀死|cRXP_ENEMY_Dark Strand Fanatics|r。掠夺他们的|cRXD_Loot_Wearn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    #xprate >1.59
    #season 0 << Warrior
    #loop
    #optional
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.743,25.915,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.231,26.508,50,0
    .xp 18+15000 >>升级到15000+/19400xp
    .mob Dark Strand Fanatic
step
	#xprate >1.49 << Hunter/Druid
    #season 0 << Warrior
    #requires Channeling << Warlock --Season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 966 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 967 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Balthule Shadowstrike
step << Priest
    #season 1 -- Skipping this rune cus its useless
    #completewith next
    >>杀死|cRXP_ENEMY_Stormscale Myrmidons|r，|cRXD_ENEMY_ StormscaleWarriors|r和|cRXP_ENEMY_Stamscale Sorceres|r。掠夺它们以获得|T236364:0|t[|cRXP_Loot_Shatterspear Offering|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step
    #season 0
    #requires ChannelingEnd << Warlock --Season 2
    .goto Darkshore,57.13,22.04,55,0
    .goto Darkshore,57.97,20.23,55,0
    .goto Darkshore,58.36,23.61,55,0
    .goto Darkshore,59.42,24.62,55,0
    .goto Darkshore,60.26,21.75
    >>掠夺地面上的|cRXP_Loot_Mathystra遗迹|r
    .complete 951,1 -- Mathystra Relics (6)
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>杀死|cRXP_ENEMY_Stormscale Myrmidons|r，|cRXD_ENEMY_ StormscaleWarriors|r和|cRXP_ENEMY_Stamscale Sorceres|r。掠夺它们以获得|T236364:0|t[|cRXP_Loot_Shatterspear Offering|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .goto Darkshore,59.2,22.6
    .use 211482 >>|cRXP_WARN_在水下使用|r|T236364:0|t[|cRXP_LOOT_沙特斯皮尔产品|r]|cRXP_WARN_到沙特斯皮尔·偶像接受|r|T136222:0|t[| cRXP_FRIENDLY_奉献冠军的记忆|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .train 425215 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_献身冠军的记忆|r]|cRXP_WARN_训练|r|T237566:0|t[扭曲的信仰]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如诺思郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，才能获得|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buff|r
    .use 205905
    .itemcount 205905,1
step << !sod/Hunter/Druid
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .accept 2098 >>接任务: |cRXP_WARN_基尔卡克的钥匙|r
    .target Gelkak Gyromast
step << !sod/Hunter/Druid
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>杀死|cRXP_ENEMY_Raging Reef Crawlers |r和|cRXP_ENEMY_Encrusted Tide Crawlers | r。掠夺它们以获取|cRXD_Loot_盖尔卡钥匙底部|r
    >>|cRXP_WARN_请注意|cRXP_ENEMY_Raging Reef Crawlers |r'|r|T132152:0|t[Srash]|cRXP-WARN_ability。你可以从他们的近战命中中立即受到200点伤害|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step << !sod/Hunter/Druid
    .goto Darkshore,54.93,12.19
    >>杀死|cRXP_ENEMY_Greymist Oracles|r和|cRXX_ENEMY_ Greymist Tidehunters|r。为Gelkak的密钥的|cRXD_Loot_中间|r掠夺它们
    >>|cRXP_WARN_注意|cRXP_ENEMY_Greymist Oracles|r'|r|T136048:0|t[闪电]|cRXP-WARN_image，它们也可以使用|r|T136052:0|t][治疗波]进行治疗|r
    >>|cRXP_WARN_您可以在沉船周围放置|cRXP_ENEMY_Greymist Oracles|r'|r|T136048:0|t[闪电]|cRXP-WARN_以避免损坏沉船|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step << !sod/Hunter/Druid
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>杀死|cRXP_ENEMY_Raging Reef Crawlers |r和|cRXP_ENEMY_Encrusted Tide Crawlers | r。掠夺它们以获取|cRXD_Loot_盖尔卡钥匙底部|r
    >>|cRXP_WARN_请注意|cRXP_ENEMY_Raging Reef Crawlers |r'|r|T132152:0|t[Srash]|cRXP-WARN_ability。你可以从他们的近战命中中立即受到200点伤害|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step << !sod/Hunter/Druid
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
    #xprate <1.59
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>杀死|cRXP_ENEMY_Moonstracker Sires|r和|cRXX_ENEMY_moonstracker Matriarchs|r。掠夺他们的|cRXD_Loot_Pelts|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Moonstracker矩阵|r。他们总是在身边用|cRXX_ENEMY_moonstracker符文|r进行攻击|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << Warrior/Paladin/Rogue
    #season 0
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    >>|cRXP_WARN_开始为Gyromaster的复仇寻找一组/|r|cRXP_ENEMY_The Threshwackonator 4100|r << Warrior/Paladin/Rogue
    .turnin 2098 >>交任务: |cRXP_FRIENDLY_基尔卡克的钥匙|r
    .accept 2078 >>接任务: |cRXP_WARN_基尔卡克的报复|r
    .target Gelkak Gyromast
    .solo
step << !sod/Hunter/Druid
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    >>|cRXP_WARN_开始为Gyromaster的复仇寻找一组/|r|cRXP_ENEMY_The Threshwackonator 4100|r << Warrior/Paladin/Rogue
    .turnin 2098 >>交任务: |cRXP_FRIENDLY_基尔卡克的钥匙|r
    .accept 2078 >>接任务: |cRXP_WARN_基尔卡克的报复|r
    .target Gelkak Gyromast
step << !sod/Hunter/Druid
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >>对话: |cRXP_FRIENDLY_机械打手4100型|r
--  .gossipoption 87696 >>对话: |cRXP_FRIENDLY_机械打手4100型|r
    >>|cRXP_WARN_这个任务非常困难|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
step << !sod/Hunter
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >>接任务: |cRXP_WARN_搁浅的海龟|r
step << !sod/Hunter/Druid
    .goto 1439,56.654,13.484
    #optional
    >>护送|cRXP_FRIENDLY_脱粒机4100|r至|cRXP_FRIENDLY_Gelkak陀螺仪|r
    >>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
    >>|cRXP_WARN_这个任务非常困难|r
    *Only use ranged attacks while running from it, avoid being at melee range << Druid
    >>|cRXP_WARN_如果可以的话，试着完成这个任务，因为它稍后会奖励你|r|T134797:0|t[水呼吸的灵丹妙药]|cRXP_WARN_for水下任务|r << !Druid !Warlock
    >>|cRXP_WARN_当他变成敌人时，对他使用|r|T136100:0|t[Entangling Roots]|cRXP_WARN_on，然后使用即时施法制造距离和风筝|r << Druid
    >>|cRXP_WARN_如果无法杀死|cRXP_ENEMY_Threshwackonator 4100|r，请跳过此步骤|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://clips.twitch.tv/VainAmorphousMacaroniPRChase-iGvhTnz0ked6LO0A >>|cRXP_WARN_单击此处查看视频指南|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
--XX DRUID: Test if you can root
step << !sod/Hunter/Druid
    #optional << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2078 >>交任务: |cRXP_FRIENDLY_基尔卡克的报复|r
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    #optional
    #season 0 << Warrior
    #completewith BeachedCloak
    .abandon 2078 >>放弃陀螺的复仇
step << Druid
    #xprate <1.5
    #optional
    #completewith DeerComplete
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r。掠夺它们的|cRXX_Loot_精美螃蟹块|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step << !sod/Hunter/Druid
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >>摧毁: |cRXP_ENEMY_基尔卡克的钥匙|r, 它在你的背包中. 不再需要它了
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >>接任务: |cRXP_WARN_搁浅的海龟|r
step << Druid
    #xprate <1.5
    #label DeerComplete
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .goto Darkshore,49.7,33.2,40,0
    .goto Darkshore,43.4,25.1,40,0
    .goto Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_使用|r|T132801:0|t[治疗性动物救助]|cRXP_WARN_on|r|cRXP-ENEMY_Sickly Deer|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Swim out in the water|r
    >>打开|cRXP_PICK_Strange锁箱|r。为|cRXP_Loot_水生敏捷半挂件|r将其打开
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)


----Start of Darkshire 2x 20 Turnins & Druid Training----


step << Druid
    #xprate >1.59
    #optional
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    .goto Moonglade,52.53,40.57
	>>前往Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    #completewith BlackwoodSod
    .hs >>奥伯丁之炉
    .zoneskip Darkshore
    .subzoneskip 442
    .xp <20,1
step << Druid
    #season 2
    #optional
    #completewith BlackwoodSod
    .goto Moonglade,48.0,67.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德拉尔|r
    .fly Auberdine >>|cRXP_WARN_如果你的炉石仍处于冷却状态，请飞往奥伯丁|r
step << !Warrior
    #season 2
    #optional
    #completewith BlackwoodSod
    .hs >>奥伯丁之炉
    .subzoneskip 442
step << !Druid !Warrior
    #optional
    #season 2
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >>Return to Auberdine
    >>|cRXP_WARN_如果你的炉石仍在冷却中，你可以在洞穴中使用与以前相同的注销跳跃，使用Nagas和蘑菇，更快地返回城镇|r
step
    #xprate >1.59
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4763 >>交任务: |cRXP_FRIENDLY_黑木熊怪的堕落|r
    .target Thundris Windweaver
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >>摧毁: |cRXP_ENEMY_黑木谷物|r, 它在你的背包中. 不再需要它了
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >>摧毁: |cRXP_ENEMY_黑木坚果|r, 它在你的背包中. 不再需要它了
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >>摧毁: |cRXP_ENEMY_黑木水果|r, 它在你的背包中. 不再需要它了
step
    #season 1
    #xprate >1.59
    #optional
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蒙德|r
    >>|cRXP_BUY_从他那里购买一个|r|T135237:0|t[Flint and Tinder]|cRXP_Buy_|r
    >>|cRXP_WARN_这是为了让你的|r|T133971:0|t[烹饪]|cRXP_WARN_while尽快上船|r
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .target Dalmond
step
    #season 1
    #xprate >1.59
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .vendor 6301 >>|cRXP_BUY_从他那里购买|r|T134059:0|t[温和的香料]|cRXP_Buy_，直到你有|r|T134059:0 |t[轻微的香料]| cRXP_Buy_等于或大于你目前拥有的|r|T232832:0|t【小鸡蛋】|cRXP-Buy_|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    #xprate >1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2139 >>交任务: |cRXP_FRIENDLY_萨纳瑞恩的希望|r
    .target Tharnariun Treetender
step
    #xprate >1.59
    #optional
    #label PeltEnd
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 986 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
    .target Terenthis
    .isQuestTurnedIn 986
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_如果你装备了|r|T133762:0|t[Enchanted Moonstracker Cloak]|cRXP_WARN_，请确保你保存当前斗篷以备日后使用，因为|r|T133762:0 |t[Enchant Moonstracger Cloak]| cRXP_WARN_i在以后的回合中丢失|r
    .equip 15,5387 >>|cRXP_WARN_装备|r|T133762:0|t[Enchanted Moonstracker斗篷]|cRXP_WARN_I如果它比你现在的斗篷更好|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #xprate >1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务: |cRXP_FRIENDLY_海中的水果|r
    .target Gubber Blump
    .isQuestComplete 1138
step
    #season 1 << Warrior sod -- won't load
    #xprate >1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4727 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .target Gwennyth Bly'Leggonde


----Start of SoD Warrior short ashenvale bit to catch up xp----


step << Warrior
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务: |cRXP_FRIENDLY_向安努回复|r
    .target Onu
step << Warrior
    #season2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    >>|cRXP_WARN_如果他不在，跳过这一步。他可能需要25分钟才能重生|r
    .accept 5321 >>接任务: |cRXP_WARN_昏昏欲睡|r
    .target Kerlonian Evershade
step << Warrior
    #season2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>打开|cRXP_PICK_Kerlonian的胸脯|r。为|T134229:0|t[|cRXP_Loot_觉醒之角|r]掠夺它
    .complete 5321,1 -- Horn of Awakening (1)
step << Warrior
    #season2
    #sticky
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Kerlonian|r前往阿申瓦尔的Maestra哨所|r
    .use 13536 >>|cRXP_WARN_使用|r|T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]|cRXP _WARN_whenever|cRXP_FRIENDLY_Kerlonian|r在他旁边睡着|r
    >>|cRXP_WARN_尽量避免在主干道上跑步。只有当你在路上时，敌人才会滋生|r
    .complete 5321,2
    .isOnQuest 5321
step << Warrior
    #season 2
    .goto Darkshore,45.8,90.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿娜莎|r
    .accept 5713 >>接任务: |cRXP_WARN_一击必杀|r
    .target Sentinel Aynasha
step << Warrior
    #season 2
    .goto Darkshore,45.8,90.2
    >>三波暴民将在他们之间留出一些时间。你可以在等待下一波产卵的同时杀死该区域的其他暴民
    >>|cRXP_WARN_执行此任务时，不要忘记保持清醒|r|cRXP_FRIENDLY_Kerlonian|r|cRXP_WARN_。他会帮你对付暴徒|r
    .complete 5713,1
step << Warrior
    #season2
    #completewith towersod
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .goto Ashenvale,29.7,13.6
step << Warrior
    #season 2
    .goto Ashenvale,26.6,36.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵奥奈雅|r
    .turnin 5713,1 >>交任务: |cRXP_FRIENDLY_一击必杀|r
    .target Sentinel Onaeya
step << Warrior
    #season2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    >>如果您尚未完成任务，请跳过此步骤
    .turnin 5321 >>交任务: |cRXP_FRIENDLY_昏昏欲睡|r
step << Warrior
    #season2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>接任务: |cRXP_LOOT_巴斯兰的头发|r
step << Warrior
    #season 2
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>打开地面上的|cRXP_PICK_Plant Bundles|r。偷走它们|cRXP_Loot_Bathran的头发|r
    >>|cRXP_WARN_它们看起来像棕色的小麻袋。它们可能很难看到|r
    .complete 1010,1
    .isOnQuest 1010
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>交任务: |cRXP_FRIENDLY_巴斯兰的头发|r
    .accept 1020 >>接任务: |cRXP_LOOT_奥雷迪尔的药剂|r
step << Warrior
    #season 2
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .turnin 1020 >>交任务: |cRXP_FRIENDLY_奥雷迪尔的药剂|r
step << Warrior
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
    .fp Astranaar>>获取Astranaar飞行路线
	.target Daelyshia
step << Warrior
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
    .fly Auberdine >>飞回奥伯丁
	.target Daelyshia


----End of SoD Warrior short ashenvale bit to catch up xp----


----Start of Druid SoD Wild Strikes run segment----

step << Druid
    #season 2
    #optional
    #completewith next
    +|cRXP_WARN_您现在将获得|r|T132143:0|t[|cRXP_FRIENDLY_Wild Strikes|r]|cRXP-WARN_run。这将带你去石爪山，这将需要一段时间，但符文在剩下的关卡中非常强大|r
step << Druid
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务: |cRXP_FRIENDLY_向安努回复|r
    .target Onu
step << Druid
    #season2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    >>|cRXP_WARN_如果他不在，跳过这一步。他可能需要25分钟才能重生|r
    .accept 5321 >>接任务: |cRXP_WARN_昏昏欲睡|r
    .target Kerlonian Evershade
step << Druid
#season2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>打开|cRXP_PICK_Kerlonian的胸脯|r。为|T134229:0|t[|cRXP_Loot_觉醒之角|r]掠夺它
    .complete 5321,1 -- Horn of Awakening (1)
step << Druid
#season2
    #completewith towersod
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .goto Ashenvale,29.7,13.6
step << Druid
#season2
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Kerlonian|r前往阿申瓦尔的Maestra哨所|r
    .use 13536 >>|cRXP_WARN_使用|r|T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]|cRXP _WARN_whenever|cRXP_FRIENDLY_Kerlonian|r在他旁边睡着|r
    >>|cRXP_WARN_尽量避免在主干道上跑步。只有当你在路上时，敌人才会滋生|r
    .complete 5321,2
    .isOnQuest 5321
step << Druid
#season2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >>交任务: |cRXP_FRIENDLY_昏昏欲睡|r
    .isQuestComplete 5321
step << Druid
#season2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
step << Druid
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
    .fp Astranaar>>获取Astranaar飞行路线
	.target Daelyshia
step << Druid
    #season 2
    .goto Ashenvale,42.4,72.3,30 >>前往通往Stontalon山脉的Talondeep小径
step << Druid
    #season 2
    .goto Stonetalon Mountains,78.2,42.6,40 >>穿过隧道进入石塔龙山脉
step << Druid
    #season 2
    .goto Stonetalon Mountains,71.5,86.5,40 >>前往地图上标记的格林图腾村
step << Druid
    #season 2
    .goto Stonetalon Mountains,80.2,90.6,60,0
    .goto Stonetalon Mountains,83.2,87.0,60,0
    .goto Stonetalon Mountains,71.6,86.6,60,0
    .goto Stonetalon Mountains,76.6,91.0,60,0
    .goto Stonetalon Mountains,80.2,90.6
    >>杀死|cRXP_ENEMY_Grimtoms|r。为|T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]掠夺它们
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    #season 2
    .equip 18,210534 >>|cRXP_WARN_equp the |r|T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #season 2
    #sticky
    #completewith wildStrikesEnd
    >>|cRXP_WARN_施法|r|T136085:0|t[重生]|cRXP_WARN_or|r|T136041:0|t[Healing Touch]|cRXP_WARN_on 10种不同的友好动物，如狩猎宠物/熊形态的德鲁伊/鬼狼形态的萨满|r << Horde
    >>|cRXP_WARN_施法|r|T136085:0|t[Regrowth]|cRXP_WARN_or|r|T136041:0|t[治疗之触]|cRXP_WARN_on 10种不同的友好动物，如熊/猫形态的狩猎宠物或德鲁伊|r << Alliance
    >>这可能需要一段时间才能完成，这取决于你找到了多少友好的野兽|cRXP_WARN_在获得10堆灵感之前，不要死亡或失去信心，否则你的进步将付诸东流
    .train 410021 >>|cRXP_WARN_使用|r|T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]|cRXP_WARN_to train|r|T132143:0|t[狂野一击]
    .itemcount 210534,1
step << Druid
    #season2
    #optional
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    #season 2
    .goto Moonglade,52.53,40.57
	>>前往Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 6756 >>训练你的职业技能
    .target Loganaar
step << Druid
    #optional
    .hs >>Hearth到Darkshore
    .zoneskip Darkshore

----End of Druid SoD Wild Strikes run segment----



----End of Darkshore 2x 20 Turnins & Druid Training----
----Start of 2x Non-Deadmines Training/Class q section----



step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >>前往Menethil Harbor船的码头
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #label DarkshoreNoDMCook1
    #requires TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    >>|cRXP_WARN_如果船刚刚到达，则在船上；如果船刚刚离开，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r|T135805:0|t[Basic Campfire]|cRXP_WARN_（在拼写手册的“常规”选项卡下）|r
    .usespell 818
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #requires DarkshoreNoDMCook1
    #completewith MenethilNoDMBoat
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T132832:0|t|cRXP_OOT_[小鸡蛋]| r|cRXP-WARN_and|r|T134059:0|t[淡香料]| cRX P_WARN_into|r|t 132834:0|t[香草烤鸡蛋]
    .usespell 2550
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .dungeon !DM
step << Warrior/Paladin
    #xprate >1.59
    #ah
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_如果需要，在等待船只到达Menethil港时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r << Warrior/Paladin/Rogue
    >>|cRXP_WARN_如果你的包里有一件很好的武器，很快就能装备，跳过这一步|r
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #ssf << Paladin/Warrior
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_如果需要，在等待船只到达Menethil港时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r << Warrior/Paladin/Rogue
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
 step << Rogue
    #season 2
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德温·晨光|r
    .vendor 1453 >>|cRXP_WARN_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_WARN_有可用的|r
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Dwin Shimmerdawn|r没有，请跳过此步骤|r
    .target Dewin Shimmerdawn
step << Rogue
    #season 2
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor >>|cRXP_WARN_Buy a|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Neal Allen|r没有，请跳过此步骤|r
	.target Neal Allen
    .bronzetube
step << Rogue
    #season 2
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板赫布瑞克|r
    .target Innkeeper Helbrek
    .home >>将您的炉石设置为Menethil Harbor
step << Rogue
    #season 2
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家弗拉冈特|r, 他在楼上
    .target Archaeologist Flagongut
    .turnin 942 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 943 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .isQuestComplete 942
step << Rogue
    #season 2
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r, 他在楼上
    .vendor >>|cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_Buy_|r
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Samor Festivus|r没有，请跳过此步骤|r
    .target Samor Festivus
step << Warrior/Paladin
    #ah
    #season 1 --Not loading for now
    #xprate >1.59
    #optional
    #label PalWarSkip20
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉克·唐纳德|r
    .vendor 1441 >>|cRXP_BUY_从他那里买一把|r|T135329:0|t[刽子手之剑]|cRXP_Buy_|r
    >>|cRXP_WARN_如果没有，不要担心，因为你稍后会去AH|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << Warrior/Paladin
    #ssf
    #season 1 --Not loading for now
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉克·唐纳德|r, 他在里面
    >>|cRXP_BUY_从他那里买一把|r|T135329:0|t[刽子手之剑]|cRXP_Buy_|r
    >>|cRXP_BUY_如果没有，如果你买得起，就从他那里买一辆|r|T135280:0|t[Dacian Falx]|cRXP_buy_|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_equp the |r|T135329:0|t[刽子手之剑]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << !NightElf Warrior/Paladin/Mage/Warlock/!NightElf Rogue
    #xprate >1.59
    #season 1 --Not loading for now
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fly Ironforge >>飞往铁炉堡
    .target Shellei Brondir
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Menethil Harbor >>获取Menethil Harbor航线
    .target Shellei Brondir
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>跳下码头的尽头，游到航路点
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>点击此处查看视频参考
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>单击此处查看取消粘贴链接
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM




----Start of NE Warrior and Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >>跑上海岸，前往哨兵山
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵山飞行路线
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 65 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59 << !Hunter
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吴平|r
    .train 201 >>训练1h剑 << Rogue
    .train 202 >>训练2h剑 << Warrior
    .target Woo Ping
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Ironforge
    .dungeon !DM




----End of NE Warrior Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布里维夫·石拳|r, 他在里面
    .train 197 >>列车2h轴
    .train 199 >>列车2h梅斯
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_向她购买|r|T135425:0|t[Keen飞刀]|cRXP_Buy_|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    #optional << NightElf
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_从她那里买一个|r|T135280:0|t[Dacian Falx]|cRXP_Buy_或者去拍卖行买点更好/更便宜的|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brenwyn Wintersteel
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional << NightElf
    #completewith DeeprunDM
    +|cRXP_WARN_Equip the |r|T135425:0|t[Keen飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >>朝着|cRXP_FRIENDLY_Bilban Toslespanr|r行驶
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional << NightElf
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r
    .trainer >>训练你的职业技能
    .target Bilban Tosslespanner
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获得铁炉堡飞行路线
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step <<Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_使用|T133743:0|t[|cRXP_LOOT_Book:下面的力量|r]开始任务|r
    .accept 968 >>接任务: |cRXP_WARN_深渊之神|r
    .use 5352
    .itemcount 5352,1
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛利·硬骨|r, 他在里面
    .turnin 968 >>交任务: |cRXP_FRIENDLY_深渊之神|r
    .target Gerrig Bonegrip
    .isOnQuest 968
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>前往|cRXP_FRIENDLY_Ginny Longberry|r内部
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩|r, 他在里面
    >>|cRXP_BUY_从她那里购买最多4个|r|T134419:0|t[Teleportation符文]|cRXP_Buy_|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon !DM
step << Mage
    #xprate >1.59
    #label MilstaffNoDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r
    .train 3562 >>列车|T135763:0|t[电报：Ironforge]
    .target Milstaff Stormeye
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
    .trainer >>训练你的职业技能
    .target Dink
    .dungeon !DM
step << Paladin
    #xprate >1.59
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r
    .trainer >>训练你的职业技能
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the pillar above |cRXP_FRIENDLY_Bink|r, then walk slightly east of her onto the arrow position. 前往: |cRXP_PICK_丹莫罗|r|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,53.164,7.037,10 >>进入|cRXP_FRIENDLY_Jubahl Corpseeeker|r的房子
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_走到床的顶部，然后跳到书架的顶部。通过注销并重新登录来执行注销跳过|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_跳到鹰头狮的头顶上。通过注销并重新登录来执行注销跳过|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考格斯宾|r
    .vendor 5175 >>|cRXP_BUY_从他那里买一个|r|T133024:0|t[青铜管]|cRXP_Buy_（如果有）|r
--    >>稍后的任务需要2个青铜管 << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    #label DeeprunNoDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入Deeprun Tram
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #completewith WepTrainNoDM << !Warrior
    >>|cRXP_WARN_如果在有轨电车上需要，请调整|r|T135966:0|t[急救]|cRXP_WARN_and|r|T133971:0|t[烹饪]|cRX P_WARN_if needed on the Tram|r
    >>|cRXP_WARN_您需要您的|r|T135966:0|t[急救]|cRXP_WARN_to在以后的任务中达到80+|r << Rogue !Dwarf
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_BUY_从他那里买一个|r|T133024:0|t[青铜管]|cRXP_Buy_（如果有）|r
--    >>稍后的任务需要2个青铜管 << Rogue
    .target Billibub Cogspinner
    .zoneskip Darkshore << Warrior/Paladin
    .bronzetube
    .train 201,1 << NightElf Rogue --1h swords not trained
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>前往指挥中心内的|cRXP_FRIENDLY_Wu Shen|r
    .zoneskip Darkshore
    .zoneskip Ironforge
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_武神|r, 他在楼上
    .trainer >>训练你的职业技能
    .target Wu Shen
    .zoneskip Darkshore
    .zoneskip Ironforge
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_训练|r|T132282:0|t[Ambush]|cRXP_WARN_如果你有多余的钱和|r|T135641:0|t[Dagger]|cRX P_WARN_e装备或在你的包里。以后会节省你的时间|r
    .train 8676 >>列车|T132282:0|t[救护车]
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_确保训练|r|T132320:0|t[Stealth]|cRXP_WARN_、|r|T133644:0|t[Spick Pocket]|cRXP_WARN__和|r|T236058:0|t[Pick-Lock]|cRXP-WARN_|r
    .train 1784 >>列车|T132320:0|t[隐形]
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .train 1804 >>列车|T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
    .dungeon !DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_确保你训练|r|T133644:0|t[拾取口袋]|cRXP_WARN_and|r|T136058:0|t[Pick Lock]|cRX P_WARN_a，因为你以后需要它们|r
    >>|cRXP_WARN_BE VERY CAREFUL with your money management in the coming steps. Only buy essential spells. You will need to have money for vanish soon and 75 silver to obtain a rune after returning to wetlands|r
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .train 1804 >>列车|T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
    .dungeon !DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_确保训练|r|T136058:0|t[拾取锁定]|cRXP_WARN_稍后需要|r
    >>|cRXP_WARN_BE VERY CAREFUL with your money management in the coming steps. Only buy essential spells. You will need to have money for vanish soon and 75 silver to obtain a rune after returning to wetlands|r
    .train 1804 >>列车|T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>前往楼上SI:7内的|cRXP_FRIENDLY_Renzik“The Shiv”|r和|cRXP-FRIENDLY_Master Mathias Shaw|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"剃刀\"雷吉克|r, |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 2281 >>接任务: |cRXP_WARN_赤脊山的联络员|r
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>接任务: |cRXP_WARN_马迪亚斯和迪菲亚潜行者|r
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon !DM
step << NightElf Rogue/Mage/Warlock
    #xprate >1.59 << !Hunter
    #season 1 << Rogue sod
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吴平|r
    .train 201 >>训练1h剑 << Mage/Rogue/Warlock
    .train 1180 >>Train Daggers << Mage
    .train 202 >>训练2h剑 << Warrior
    .target Woo Ping
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_equp the |r|T135329:0|t[刽子手之剑]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r, 他在里面
    >>|cRXP_BUY_从她那里买一个|r|T135280:0|t[Dacian Falx]|cRXP_Buy_或者去拍卖行买点更好/更便宜的|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .zoneskip Stormwind City,1
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r, 他在里面
    >>|cRXP_BUY_BUY a|r|T135342:0|t[Kris] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    >>|cRXP_WARN_BE VERY CAREFUL with your money management in the coming steps. Only buy one dagger if you don't have the money. You will need to have money for vanish soon and 75 silver to obtain a rune after returning to wetlands|r
    .collect 2209,2 --Kris (2)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_WARN_Buy a|r |T135342:0|t[Kris] |cRXP_BUY_from her if you can afford it|r
    >>|cRXP_WARN_BE VERY CAREFUL with your money management in the coming steps. Only buy one dagger if you don't have the money. You will need to have money for vanish soon and 75 silver to obtain a rune after returning to wetlands|r
    .collect 2209,1 --Kris (2)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_equp the |r|T135342:0|t[Kris]
    .use 2209
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .xp <21,1
    .dungeon !DM



----Start of 2x Non-Deadmines Rogue Class q section----



step << Rogue
    #xprate >1.59
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>稍后为您的|T132290:0|t[毒药]任务购买|T134437:0|t[抗毒液]，其余的很快在雷德里奇山脉获得更快的回报 << !Dwarf
    >>购买以下物品，很快就能在雷德里奇山脉快速上车 << Dwarf
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    >>|T134437:0|t[抗毒液] << !Dwarf
    >>|T134172:0|t[伟大的Goretusk鼻涕虫]
    >>|T134028:0|t[硬汉肉]
    >>|T134321:0|t[脆蜘蛛肉]
    .collect 6452,1,2359,1 << !Dwarf --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获得暴风城飞行路线 << !Human
    .fly Westfall >>飞往威斯特福尔 << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 65 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵山飞行路线 << !Human
    .fly Redridge >>飞到雷德里奇山脉 << Human
    .target Thor
    .dungeon !DM
step << Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge >>飞到雷德里奇山脉
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .isOnQuest 65
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞欧克瑞图斯|r
    .accept 94 >>接任务: |cRXP_LOOT_法师的眼线|r
    .target Theocritus
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师布雷纳|r, 他在里面
    .accept 92 >>接任务: |cRXP_WARN_赤脊山炖肉|r
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑衣威利|r, 他在楼上
    .turnin 65 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 132 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
	.target Wiley the Black
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Rendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢修斯|r
    .turnin 2281 >>交任务: |cRXP_FRIENDLY_赤脊山的联络员|r
    .accept 2282 >>接任务: |cRXP_LOOT_奥瑟尔伐木场|r
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r
    .accept 89 >>接任务: |cRXP_WARN_止水湖上的桥|r
    .target Foreman Oslow
    .xp 21.4,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #sticky
    #completewith next
    .goto Redridge Mountains,39.6,33.2,0
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>You can kill some of the gnolls while on the way to Alther's Mill. You will complete this objective on the way back
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116,100 >>Head toward Alther's Mill
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_您必须稍后为您的|r|T132290:0|t[毒药]|cRXP_WARN_任务执行此操作|r
    >>|cRXP_WARN_站在航路点位置。定位相机和光标，直到您可以一次单击3个|cRXP_PICK_Practice Lockboxes|r，而无需移动任何东西|r
    .skill lockpicking,80 >>|cRXP_WARN_打开阿尔特磨地面上的|cRXP_PICK_Practice Lockboxes|r，直到你的|r|T136058:0|t[Lockpick]技能达到80|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>打开|cRXP_PICK_Lucius的锁箱|r。偷走它以获取小偷的|cRXP-Loot_Token|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,39.6,33.2
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Finish off killing |cRXP_WARN_gnolls|r for the bridge parts
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r
    .turnin 89 >>交任务: |cRXP_FRIENDLY_止水湖上的桥|r
    .isQuestComplete 89
    .target Foreman Oslow
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢修斯|r
    .turnin 2282 >>交任务: |cRXP_FRIENDLY_奥瑟尔伐木场|r
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >>摧毁: |cRXP_ENEMY_偷窃技能认证书|r, 它在你的背包中. 不再需要它了
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 21+14325 >>Make sure you're at least 14k xp into level 21 before leaving redridge. If you're not there yet consider doing |cRXP_ENEMY_Hilary's Necklace|r quest from |cRXP_FRIENDLY_Shawn|r or |cRXP_ENEMY_The Lost Tools|r from |cRXP_FRIENDLY_Foreman Oslow|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线 << !Human
    .fly Westfall >>飞往威斯特福尔
    .target Ariena Stormfeather
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 132 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 135 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +|cRXP_WARN_equp the |r|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
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
    .isQuestAvailable 2359
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==注意接下来的部分==|r
    >>|cRXP_WARN_按Escape，然后进入->选项->控制|r
    >>|cRXP_WARN_选中“启用交互键”并将“与目标交互”选项绑定到键|r
    >>|cRXP_WARN_此外，建议您启用敌人铭牌（默认键：V），因为它可以让您看到塔内一些角落后面的敌人|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密探吉尔妮|r
    >>|cRXP_WARN_你必须用你的|r|T132290:0|t[毒药]完成这个任务
    .turnin 2360 >>交任务: |cRXP_FRIENDLY_马迪亚斯和迪菲亚潜行者|r
    .accept 2359 >>接任务: |cRXP_LOOT_克拉文之塔|r
    .target Agent Kearnen
    .dungeon !DM
step << Rogue
    #xprate >1.59
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
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_如果你还没有装备|r|T135641:0|t[Curvewood匕首]|cRXP_WARN_|r
    .use 15396
    .itemcount 15396,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
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
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>工艺|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_使用您包中的|T134437:0|t[抗毒]移除|T136230:0|t[Touch of Zanzil]debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_铸造|T136225:0|t[石形]移除|T136230:0|t[赞齐尔之触]debuff|r
    .aura -9991
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 22-8200 >>Grind untill you're 8200 xp away from level 22. You will need to reach it in Stormwind to train |T132331:0|t[Vanish] which is required for an extremally powerful rune later
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞到暴风城
    .target Thor
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>前往|cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|c|r
    .skill firstaid,80 >>|cRXP_WARN_将您的|r|T135966:0|t[急救]|cRXP_WARN_to 80调平|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|c|r
    .train 7934 >>|cRXP_WARN_Train|r|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>工艺|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_使用您包中的|T134437:0|t[抗毒]移除|T136230:0|t[Touch of Zanzil]debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    >>|cRXP_WARN_如果您切换到|r|T135641:0|t[匕首]|cRXP_WARN_earlier，请记住重新装备主武器|r << Rogue !sod
    .turnin 135 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
--  .accept 141 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .turnin 2359 >>交任务: |cRXP_FRIENDLY_克拉文之塔|r
    .target Master Mathias Shaw
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jasper Fel|r on the ground floor of the building
    >>Buy reagents for crafting |T132273:0|t[|cRXP_FRIENDLY_Instant Poison|r] and |T132331:0|t[|cRXP_FRIENDLY_Vanish|r] from him
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
    #xprate >1.59
    >>Open your spellbook and find the |T136242:0|t[|cRXP_FRIENDLY_Poisons|r] skill from the general tab. Open it and craft 20 Instant Poisons. |cRXP_WARN_Remember to keep them applied to both your weapons during combat|r
    .collect 6947,20 --Instant Poison (20)
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_BE VERY CAREFUL with your money management in the coming steps. Only buy essential spells. You will need 75 silver to obtain a rune after a couple quests in wetlands|r
    >>|cRXP_WARN_Train|r |T132331:0|t[Vanish] and |T132320:0|t[Stealth](rank 2) You will need it to unlock |T236270:0|t[Deadly Brew] soon
    .train 1856 >>列车|T132331:0|t[消失]
    .train 1785 >>列车|T132320:0|t[隐形](rank 2)
    .target Osborne the Night Man
    .dungeon !DM


----End of 2x Non-Deadmines Rogue Class q section----


step << Warlock
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿德温·凯伦|r, 他在里面
    .vendor 1312 >>|cRXP_BUY_如果你能买得起的话，就从她那里买一个|r|T135469:0|t[Dusk Wand]|cRXP_Buy_|r
    >>|cRXP_BUY_或者，如果比52s 47c便宜，可以从拍卖行购买|r|T135144:0|t[大魔杖]|cRXP_Buy_|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿德温·凯伦|r, 他在里面
    >>|cRXP_BUY_从她那里买一个|r|T135469:0|t[Dusk Wand]|cRXP_Buy_|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_equp the |r|T135469:0|t[黄昏魔杖]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_装备|r|T135144:0|t[大魔杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入屠宰的羔羊。下楼去
    .dungeon !DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2NoDM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
    .vendor >>|cRXP_BUY_从她那里购买|r|T133738:0|t[Grimoire of Torment（等级2）]|cRXP_Buy_|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon !DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1716 >>接任务: |cRXP_WARN_噬魂者|r
    .target Gakin the Darkbinder
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2NoDMEnd
    #requires Torment2NoDM
    .train 20317 >>|cRXP_WARN_使用|r|T133738:0|t[折磨的痛苦（等级2）]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>登上法师塔。通过绿色门户
    .goto Stormwind City,39.681,79.538,15 >>前往|cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞麦尼·普尔度|r
    .train 3561 >>列车|T135763:0|t[电报：暴风号]
    .target Larimaine Purdue
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #season 1 >>Rogue
    #requires Torment2NoDMEnd << Warlock
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿古斯·夜语|r
    .accept 3765 >>接任务: |cRXP_WARN_遥远的旅途|r
    .zoneskip Ironforge << Warrior
    .zoneskip Darkshore << Warrior
    .target Argos Nightwhisper
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .hs >>Hearthstone to Menethil Harbor. |cRXP_WARN_Ghetto hearth from Stockades instead if it's on cooldown|r
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_在暴风雨中进入寨子|r
    >>|cRXP_WARN_Once inside:|r
    .link /run InviteUnit("a");C_Timer.After(1,function() LeaveParty() end) >>|cRXP_WARN_单击此处复制+将此宏粘贴到聊天中，将其粘贴到贫民区炉膛，然后再粘贴到Auberdine|r
    .zone Darkshore >>|cRXP_WARN_前往: |cRXP_PICK_黑海岸|r|r
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith NEWarRogNoDMIFPP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>进入Deeprun Tram
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #label NEWarRogNoDMNoFP1
    #completewith NEWarRogNoDMIFPP
    >>|cRXP_WARN_如果在有轨电车上需要，请调整|r|T135966:0|t[急救]|cRXP_WARN_and|r|T133971:0|t[烹饪]|cRX P_WARN_if needed on the Tram|r
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #requires NEWarRogNoDMNoFP1
    #label NEWarRogNoDMNoFP2
    #completewith NEWarRogNoDMIFPP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考格斯宾|r
    .vendor 5175 >>|cRXP_BUY_从他那里买一个|r|T133024:0|t[青铜管]|cRXP_Buy_（如果有）|r
--    >>稍后的任务需要2个青铜管 << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .bronzetube
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP2
    #label NEWarRogNoDMNoFP3
    #completewith NEWarRogNoDMIFPP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布里维夫·石拳|r, 他在里面
    .train 197 >>列车2h轴
    .train 199 >>列车2h梅斯
    .target Buliwyf Stonehand
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP3
    #label NEWarRogNoDMNoFP4
    #completewith NEWarRogNoDMIFPP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_向她购买|r|T135427:0|t[重飞刀]|cRXP_Buy_|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP4
    #label NEWarRogNoDMNoFP5
    #completewith NEWarRogNoDMIFPP
    +|cRXP_WARN_equp the |r|T135427:0|t[重飞刀]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #label NEWarRogNoDMIFPP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获得铁炉堡飞行路线
    .target Gryth Thurden
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_使用|T133743:0|t[|cRXP_LOOT_Book:下面的力量|r]开始任务|r
    .accept 968 >>接任务: |cRXP_WARN_深渊之神|r
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛利·硬骨|r, 他在里面
    .turnin 968 >>交任务: |cRXP_FRIENDLY_深渊之神|r
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .isOnQuest 968
    .dungeon !DM



----End of 2x Non-Deadmines Training/Class q section----
----Start of 2x Non-Deadmines (Darnassus) training section----

step << Mage/Warlock/Rogue
    #xprate >1.59
    #label NoDMStockadeEnd
    #requires Torment2NoDMEnd << Warlock
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_在暴风雨中进入寨子|r
    >>|cRXP_WARN_Once inside:|r
    .link /run InviteUnit("a");C_Timer.After(1,function() LeaveParty() end) >>|cRXP_WARN_单击此处复制+将此宏粘贴到聊天中，将其粘贴到贫民区炉膛，然后再粘贴到Auberdine|r
    .zone Darkshore >>|cRXP_WARN_前往: |cRXP_PICK_黑海岸|r|r
    .zoneskip Teldrassil << Warrior
    .zoneskip Darnassus << Warrior
    .zoneskip Ironforge
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Menethil >>飞到湿地
    .zoneskip Ironforge,1
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>前往Auberdine船的码头
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_如果需要，在等待前往Auberdine的船时调平|r|T135966:0|t[急救]|cRXP_WARN_|r << Warrior/Paladin/Rogue
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << !Druid
    #xprate >1.59
    #optional
    #completewith next
    .hs >>奥伯丁之炉
    .zoneskip Darkshore
    .subzoneskip 442
    .cooldown item,6948,>0,1
    .dungeon !DM << !Dwarf/!Hunter



----End of 2x no DM Return to Darkshore Steps----
----End of 2x Non-Deadmines (Darnassus) training section----




step << Dwarf Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >>升级直到HS冷却时间＜6分钟。在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step << Dwarf Hunter
    #xprate <1.59
    #hardcore
    #optional
    #completewith next
    +升级直到你的HS冷却时间<9分钟，然后跑回奥伯丁
step << !NightElf !Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step << !NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4763 >>交任务: |cRXP_FRIENDLY_黑木熊怪的堕落|r
    .target Thundris Windweaver
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >>摧毁: |cRXP_ENEMY_黑木谷物|r, 它在你的背包中. 不再需要它了
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >>摧毁: |cRXP_ENEMY_黑木坚果|r, 它在你的背包中. 不再需要它了
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >>摧毁: |cRXP_ENEMY_黑木水果|r, 它在你的背包中. 不再需要它了
step << !NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2139 >>交任务: |cRXP_FRIENDLY_萨纳瑞恩的希望|r
    .target Tharnariun Treetender
step << !NightElf
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 986 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
    .accept 993 >>接任务: |cRXP_LOOT_丢失的主人|r
    .target Terenthis
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_如果你装备了|r|T133762:0|t[Enchanted Moonstracker Cloak]|cRXP_WARN_，请确保你保存当前斗篷以备日后使用，因为|r|T133762:0 |t[Enchant Moonstracger Cloak]| cRXP_WARN_i在以后的回合中丢失|r
    .equip 15,5387 >>|cRXP_WARN_装备|r|T133762:0|t[Enchanted Moonstracker斗篷]|cRXP_WARN_I如果它比你现在的斗篷更好|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step << Dwarf Hunter
    #xprate <1.59
    #label TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    .goto 1439,33.169,40.179,15 >>前往Darnassus船的码头
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #label DarnDwarfHCook1
    #requires TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_如果船刚刚到达，则在船上；如果船刚刚离开，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r|T135805:0|t[Basic Campfire]|cRXP_WARN_（在拼写手册的“常规”选项卡下）|r
    .usespell 818
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #requires DarnDwarfHCook1
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T132832:0|t|cRXP_OOT_[小鸡蛋]| r|cRXP-WARN_and|r|T134059:0|t[淡香料]| cRX P_WARN_into|r|t 132834:0|t[香草烤鸡蛋]
    .usespell 2550
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Dwarf Hunter
    #xprate <1.59
    #label DarnDwarfHBoat
    .goto 1439,33.213,39.883
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
    .zoneskip Darnassus
step << Dwarf Hunter
    #xprate <1.59
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fp Teldrassil >>获取Teldrassil飞行路径
    .target Vesprystus
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Dwarf Hunter
    #xprate <1.59
    #completewith next
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
    .trainer >>训练你的职业技能
    .target Jocaste
    .dungeon !DM
step << Dwarf Hunter
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 264 >>火车弓
    .train 227 >>火车杆
    .target Ilyenia Moonfire
step << Dwarf Hunter
    #xprate <1.59
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰德瑞亚|r
    >>|cRXP_BUY_从她那里买一个|r|T135489:0|t[重循环弓]|cRXP_Buy_|r
    .collect 3027,1 -- Heavy Recurve Bow
    .collect 11362,1 -- Medium Quiver
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #xprate <1.59
    #completewith next
    +|cRXP_WARN_获得|r|T135489:0|t[重循环弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Dwarf Hunter
    #xprate <1.59
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
    .turnin 741 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 942 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Chief Archaeologist Greywhisker
step << Druid
    #xprate <1.59
    #optional
	#completewith MoongladeTrain
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    #xprate <1.5
    .goto Moonglade,56.2,30.4
    >>前往Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 6124 >>交任务: |cRXP_FRIENDLY_消除疾病|r
    .accept 6125 >>接任务: |cRXP_WARN_解毒之术|r
    .target Dendrite Starblaze
    .isQuestTurnedIn 6123
step << Druid
    #xprate <1.59
    #label MoongladeTrain
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
step << NightElf/Dwarf Hunter
    #xprate <1.59
    #optional
    #completewith next
    .hs >>奥伯丁之炉
step
    #xprate <1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4727 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务: |cRXP_FRIENDLY_海中的水果|r
    .target Gubber Blump
    .isQuestComplete 1138
step << NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4763 >>交任务: |cRXP_FRIENDLY_黑木熊怪的堕落|r
    .target Thundris Windweaver
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12342 >>摧毁: |cRXP_ENEMY_黑木谷物|r, 它在你的背包中. 不再需要它了
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12343 >>摧毁: |cRXP_ENEMY_黑木坚果|r, 它在你的背包中. 不再需要它了
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12341 >>摧毁: |cRXP_ENEMY_黑木水果|r, 它在你的背包中. 不再需要它了
step << NightElf Hunter
    #xprate <1.59
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蒙德|r
    .vendor >>库存于|T132382:0|t[尖箭头]
    .target Dalmond
step << NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2139 >>交任务: |cRXP_FRIENDLY_萨纳瑞恩的希望|r
    .target Tharnariun Treetender
step << NightElf
    #xprate <1.59
    #label LostMasters
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 986 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
    .accept 993 >>接任务: |cRXP_LOOT_丢失的主人|r
    .target Terenthis




----End of <1.59x Turnin section----




step << NightElf
    #optional
    >>|cRXP_WARN_如果你装备了|r|T133762:0|t[Enchanted Moonstracker Cloak]|cRXP_WARN_，请确保你保存当前斗篷以备日后使用，因为|r|T133762:0 |t[Enchant Moonstracger Cloak]| cRXP_WARN_i在以后的回合中丢失|r
    .equip 15,5387 >>|cRXP_WARN_装备|r|T133762:0|t[Enchanted Moonstracker斗篷]|cRXP_WARN_I如果它比你现在的斗篷更好|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7

----Start of Hunter Deadmines/All 2x Deadmines Section----
step 
    #xprate <1.59 << !Hunter
    #label TravelMenethilDMBoat
    #completewith MenethilDMBoat
    .goto 1439,32.432,43.744,15 >>前往Menethil Harbor船的码头
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #season 1
    #xprate >1.59
    #optional
    #label DarkshoreDMCook1
    #requires TravelMenethilDMBoat
    #completewith MenethilDMBoat
    >>|cRXP_WARN_如果船刚刚到达，则在船上；如果船刚刚离开，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r|T135805:0|t[Basic Campfire]|cRXP_WARN_（在拼写手册的“常规”选项卡下）|r
    .usespell 818
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #season 1
    #xprate >1.59
    #optional
    #requires DarkshoreDMCook1
    #completewith DarnDMBoat
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T132832:0|t|cRXP_OOT_[小鸡蛋]| r|cRXP-WARN_and|r|T134059:0|t[淡香料]| cRX P_WARN_into|r|t 132834:0|t[香草烤鸡蛋]
    .usespell 2550
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #label DarnDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_您现在将开始前往Deadmins|r
    >>|cRXP_WARN_如果需要，在等待船只到达Menethil港时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r << Warrior/Paladin/Rogue
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << Paladin/Warrior
    #ah
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉克·唐纳德|r, 他在里面
    .vendor 1441 >>|cRXP_BUY_从他那里买一把|r|T135329:0|t[刽子手之剑]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，你可以很快去拍卖行看看更好或更便宜的东西|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior
    #ssf
    #optional
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉克·唐纳德|r, 他在里面
    >>|cRXP_BUY_从他那里买一把|r|T135329:0|t[刽子手之剑]|cRXP_Buy_|r
    >>|cRXP_BUY_如果没有，如果你买得起，就从他那里买一辆|r|T135280:0|t[Dacian Falx]|cRXP_buy_|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_equp the |r|T135329:0|t[刽子手之剑]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << !NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fly Ironforge >>飞往铁炉堡
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Menethil Harbor >>获取Menethil Harbor航线
    .target Shellei Brondir
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>跳下码头的尽头，游到航路点
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>点击此处查看视频参考
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>单击此处查看取消粘贴链接
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM




----Start of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative section----



step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >>跑上海岸，前往哨兵山
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵山飞行路线
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 65 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>前往暴风大教堂内的|cRXP_FRIENDLY_High Priestess Laurena|r
    .zoneskip Stormwind City,1
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师劳瑞娜|r, 他在里面
    .trainer >>训练你的职业技能
    .target High Priestess Laurena
    .zoneskip Stormwind City,1
    .dungeon DM
--XX Alt if NE priest cant website unstuck




----End of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative (and Alt NE Priest Training) section----





step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布里维夫·石拳|r, 他在里面
    .train 197 >>列车2h轴 << Warrior
    .train 199 >>列车2h梅斯 << Warrior
    .train 266 >>训练枪 << Hunter
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_向她购买|r|T135425:0|t[Keen飞刀]|cRXP_Buy_|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equip the |r|T135425:0|t[Keen飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获得铁炉堡飞行路线
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_使用|T133743:0|t[|cRXP_LOOT_Book:下面的力量|r]开始任务|r
    .accept 968 >>接任务: |cRXP_WARN_深渊之神|r
    .use 5352
    .itemcount 5352,1
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛利·硬骨|r, 他在里面
    .turnin 968 >>交任务: |cRXP_FRIENDLY_深渊之神|r
    .target Gerrig Bonegrip
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isOnQuest 968
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>前往|cRXP_FRIENDLY_Ginny Longberry|r内部
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩|r, 他在里面
    >>|cRXP_BUY_从她那里购买最多4个|r|T134419:0|t[Teleportation符文]|cRXP_Buy_|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon DM
step << Mage
    #xprate >1.59
    #label MilstaffDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r
    .train 3562 >>列车|T135757:0|t[电报：Ironforge]
    .target Milstaff Stormeye
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
    .trainer >>训练你的职业技能
    .target Dink
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional << NightElf
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r
    .trainer >>训练你的职业技能
    .target Toldren Deepiron
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << Mage/Priest
    #xprate >1.59
    #optional
    #requires MilstaffDM << Mage
    #completewith DeeprunDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the pillar above |cRXP_FRIENDLY_Bink|r, then walk slightly east of her onto the arrow position. 前往: |cRXP_PICK_丹莫罗|r|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r
    .trainer >>训练你的职业技能
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >>进入|cRXP_FRIENDLY_Jubahl Corpseeeker|r的房子
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
    .vendor 6382 >>|cRXP_BUY_如果您愿意，请为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_走到床的顶部，然后跳到书架的顶部。通过注销并重新登录来执行注销跳过|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,53.164,7.037,10 >>进入|cRXP_FRIENDLY_Jubahl Corpseeeker|r的房子
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_走到床的顶部，然后跳到书架的顶部。通过注销并重新登录来执行注销跳过|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --NightElf Hunter/NightElf Warrior
    #xprate >1.59 << !Hunter
    #optional
    #completewith DeeprunDM
    .goto 1455,60.975,90.479
    .goto 1455,76.414,51.226,20 |cRXP_WARN_Walk onto the railing next to |cRXP_FRIENDLY_Buliwyf Stonehand|r on the arrow position. 前往: |cRXP_PICK_丹莫罗|r|r
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_跳到鹰头狮的头顶上。通过注销并重新登录来执行注销跳过|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考格斯宾|r
    .vendor 5175 >>|cRXP_BUY_从他那里买一个|r|T133024:0|t[青铜管]|cRXP_Buy_（如果有）|r
--    >>稍后的任务需要2个青铜管 << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    #label DeeprunDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入Deeprun Tram
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    #completewith ShoniAccept
    >>|cRXP_WARN_如果在有轨电车上需要，请调整|r|T135966:0|t[急救]|cRXP_WARN_and|r|T133971:0|t[烹饪]|cRX P_WARN_if needed on the Tram|r
    >>|cRXP_WARN_您需要您的|r|T135966:0|t[急救]|cRXP_WARN_to在以后的任务中达到80+|r << Rogue !Dwarf
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_BUY_从他那里买一个|r|T133024:0|t[青铜管]|cRXP_Buy_（如果有）|r
--    >>稍后的任务需要2个青铜管 << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniAccept
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沉默的舒尼|r
    .accept 2040 >>接任务: |cRXP_WARN_地底突袭|r
    .target Shoni the Shilent
    .dungeon DM
step << Human
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .accept 167 >>接任务: |cRXP_WARN_我的兄弟……|r
    .accept 168 >>接任务: |cRXP_WARN_收集记忆|r
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .target Shoni the Shilent
    .dungeon DM
step << Hunter
--   #xprate >1.59
    #sticky
    #label DMPetTrain
    .goto 1453,61.576,15.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡瑞娜·麦肯达|r, 他在里面
    .trainer 2879 >>训练你的宠物法术
    .target Karrina Mekenda
    .dungeon DM
step << Hunter
--   #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r, 他在里面
    .trainer 5515 >>训练你的职业技能
    .target Einris Brightspear
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires DMPetTrain << Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔德·蓟草|r, 他在里面
    .accept 167 >>接任务: |cRXP_WARN_我的兄弟……|r
    .accept 168 >>接任务: |cRXP_WARN_收集记忆|r
    .target Wilder Thistlenettle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_训练|r|T132282:0|t[Ambush]|cRXP_WARN_如果你有多余的钱和|r|T135641:0|t[Dagger]|cRX P_WARN_e装备或在你的包里。以后会节省你的时间|r
    .train 8676 >>列车|T132282:0|t[救护车]
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_确保训练|r|T132320:0|t[Stealth]|cRXP_WARN_、|r|T133644:0|t[Spick Pocket]|cRXP_WARN__和|r|T236058:0|t[Pick-Lock]|cRXP-WARN_|r
    .train 1784 >>列车|T132320:0|t[隐形]
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .train 1804 >>列车|T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
    .dungeon DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_确保你训练|r|T133644:0|t[拾取口袋]|cRXP_WARN_and|r|T136058:0|t[Pick Lock]|cRX P_WARN_a，因为你以后需要它们|r
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .train 1804 >>列车|T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
    .dungeon DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_确保训练|r|T136058:0|t[拾取锁定]|cRXP_WARN_稍后需要|r
    .train 1804 >>列车|T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>前往楼上SI:7内的|cRXP_FRIENDLY_Renzik“The Shiv”|r和|cRXP-FRIENDLY_Master Mathias Shaw|r
    .dungeon DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"剃刀\"雷吉克|r, |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 2281 >>接任务: |cRXP_WARN_赤脊山的联络员|r
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>接任务: |cRXP_WARN_马迪亚斯和迪菲亚潜行者|r
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>前往指挥中心内的|cRXP_FRIENDLY_Wu Shen|r
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_武神|r, 他在楼上
    .trainer >>训练你的职业技能
    .target Wu Shen
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吴平|r
    .train 201 >>训练1h剑 << Mage/Rogue/Warlock
    .train 1180 >>Train Daggers << Mage/Druid/Priest
    .train 202 >>训练2h剑 << Warrior/Paladin/Hunter
    .target Woo Ping
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_equp the |r|T135329:0|t[刽子手之剑]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r, 他在里面
    >>|cRXP_BUY_从她那里买一个|r|T135324:0|t[长剑]|cRXP_Buy_或者去拍卖行买点更好/更便宜的|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_WARN_如果你买得起，就从她那里买一个|r|T135324:0|t[长剑]|cRXP_Buy_|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_equp the |r|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂内的|cRXP_FRIENDLY_Duthorian集会|r
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r, Tome of Valor
    .use 6776 >>|cRXP_WARN_使用|T133739:0|t[|cRXP_LOOT_Tome|r]开始任务|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>接任务: |cRXP_WARN_勇气之书|r
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1649 >>交任务: |cRXP_FRIENDLY_勇气之书|r
    .accept 1650 >>接任务: |cRXP_WARN_勇气之书|r
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .trainer >>训练你的职业技能
    .target Arthur the Faithful
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿古斯·夜语|r
    .accept 3765 >>接任务: |cRXP_WARN_遥远的旅途|r
    .target Argos Nightwhisper
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r, 他在里面
    >>|cRXP_BUY_从她那里买一个|r|T135280:0|t[Dacian Falx]|cRXP_Buy_或者去拍卖行买点更好/更便宜的|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿德温·凯伦|r, 他在里面
    .vendor 1312 >>|cRXP_BUY_如果你能买得起的话，就从她那里买一个|r|T135469:0|t[Dusk Wand]|cRXP_Buy_|r
    >>|cRXP_BUY_或者，如果比52s 47c便宜，可以从拍卖行购买|r|T135144:0|t[大魔杖]|cRXP_Buy_|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿德温·凯伦|r, 他在里面
    >>|cRXP_BUY_从她那里买一个|r|T135469:0|t[Dusk Wand]|cRXP_Buy_|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_equp the |r|T135469:0|t[黄昏魔杖]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_装备|r|T135144:0|t[大魔杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入屠宰的羔羊。下楼去
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
    .vendor >>|cRXP_BUY_从她那里购买|r|T133738:0|t[Grimoire of Torment（等级2）]|cRXP_Buy_|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1716 >>接任务: |cRXP_WARN_噬魂者|r
    .target Gakin the Darkbinder
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DMEnd
    #requires Torment2DM
    .train 20317 >>|cRXP_WARN_使用|r|T133738:0|t[折磨的痛苦（等级2）]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>登上法师塔。通过绿色门户
    .goto Stormwind City,39.681,79.538,15 >>前往|cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞麦尼·普尔度|r
    .train 3561 >>列车|T135763:0|t[电报：暴风号]
    .target Larimaine Purdue
    .dungeon DM
step << !Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿古斯·夜语|r
    .accept 3765 >>接任务: |cRXP_WARN_遥远的旅途|r
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
    #xprate >1.59
    .goto 1453,20.883,55.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
    .train 6756 >>训练你的职业技能
    .target Sheldras Moontree
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #optional
    #completewith next
    .goto 1453,50.929,57.781,10 >>进入贸易区中环内的空Quiver
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ssf
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗德瑞克·斯图瓦|r
    >>|cRXP_BUY_从他那里买一个|r|T135489:0|t[重循环弓]|cRXP_Buy_|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ah
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗德瑞克·斯图瓦|r
    >>|cRXP_BUY_从他那里买一个|r|T135489:0|t[重循环弓]|cRXP_Buy_和一个|r |T134410:0|t[中等测验]|cRX P_Buy_|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step
    #xprate >1.59
    #ah
    #softcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>稍后为您的|T132290:0|t[毒药]任务购买|T134437:0|t[抗毒液]，其余的很快在雷德里奇山脉获得更快的回报 << !Dwarf Rogue
    >>购买以下物品，以便很快在雷德里奇山脉和西瀑布快速上车 << Paladin
    >>购买以下物品，很快就能在雷德里奇山脉快速上车 << !Paladin !Rogue/Dwarf Rogue
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    >>|T134437:0|t[抗毒液] << !Dwarf Rogue
    >>|T132794:0|t[油瓶] << Paladin
    >>|T134172:0|t[伟大的Goretusk鼻涕虫]
    >>|T134028:0|t[硬汉肉]
    >>|T134321:0|t[脆蜘蛛肉]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 << Paladin -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>稍后为您的|T132290:0|t[毒药]任务购买|T134437:0|t[抗毒液]，其余的很快在雷德里奇山脉和西瀑布获得更快的回报 << !Dwarf Rogue
    >>购买以下物品，以便很快在雷德里奇山脉和西瀑布快速上车 << !Rogue/Dwarf Rogue
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    >>|T134437:0|t[抗毒液] << !Dwarf Rogue
    >>|T132794:0|t[油瓶]
    >>|T134172:0|t[伟大的Goretusk鼻涕虫]
    >>|T134028:0|t[硬汉肉]
    >>|T134321:0|t[脆蜘蛛肉]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获得暴风城飞行路线 << !Human
    .fly Westfall >>飞往威斯特福尔 << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon DM
step << !Human
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 65 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #requires Torment2DMEnd << Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵山飞行路线 << !Human
    .fly Redridge >>飞到雷德里奇山脉 << Human/Warlock
    .target Thor
    .zoneskip Westfall,1
    .dungeon DM
step << Human
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge >>飞到雷德里奇山脉
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .dungeon DM
    .isOnQuest 65
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞欧克瑞图斯|r
    .accept 94 >>接任务: |cRXP_LOOT_法师的眼线|r
    .target Theocritus
    .dungeon DM
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师布雷纳|r, 他在里面
    .accept 92 >>接任务: |cRXP_WARN_赤脊山炖肉|r
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑衣威利|r, 他在楼上
    .turnin 65 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 132 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
	.target Wiley the Black
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢修斯|r
    .turnin 2281 >>交任务: |cRXP_FRIENDLY_赤脊山的联络员|r
    .accept 2282 >>接任务: |cRXP_LOOT_奥瑟尔伐木场|r
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_您必须稍后为您的|r|T132290:0|t[毒药]|cRXP_WARN_任务执行此操作|r
    >>|cRXP_WARN_站在航路点位置。定位相机和光标，直到您可以一次单击3个|cRXP_PICK_Practice Lockboxes|r，而无需移动任何东西|r
    .skill lockpicking,80 >>|cRXP_WARN_打开阿尔特磨地面上的|cRXP_PICK_Practice Lockboxes|r，直到你的|r|T136058:0|t[Lockpick]技能达到80|r
    .dungeon DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>打开|cRXP_PICK_Lucius的锁箱|r。偷走它以获取小偷的|cRXP-Loot_Token|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢修斯|r
    .turnin 2282 >>交任务: |cRXP_FRIENDLY_奥瑟尔伐木场|r
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >>摧毁: |cRXP_ENEMY_偷窃技能认证书|r, 它在你的背包中. 不再需要它了
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线 << !Human !Warlock
    .fly Westfall >>飞往威斯特福尔
    .target Ariena Stormfeather
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 132 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 135 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +|cRXP_WARN_equp the |r|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
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
    .isQuestAvailable 2359
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==注意接下来的部分==|r
    >>|cRXP_WARN_按Escape，然后进入->选项->控制|r
    >>|cRXP_WARN_选中“启用交互键”并将“与目标交互”选项绑定到键|r
    >>|cRXP_WARN_此外，建议您启用敌人铭牌（默认键：V），因为它可以让您看到塔内一些角落后面的敌人|r
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密探吉尔妮|r
    >>|cRXP_WARN_你必须用你的|r|T132290:0|t[毒药]完成这个任务
    .turnin 2360 >>交任务: |cRXP_FRIENDLY_马迪亚斯和迪菲亚潜行者|r
    .accept 2359 >>接任务: |cRXP_LOOT_克拉文之塔|r
    .target Agent Kearnen
    .dungeon DM
step << Rogue
    #xprate >1.59
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
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_如果你还没有装备|r|T135641:0|t[Curvewood匕首]|cRXP_WARN_|r
    .use 15396
    .itemcount 15396,1
    .dungeon DM
step << Rogue
    #xprate >1.59
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
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>工艺|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_使用您包中的|T134437:0|t[抗毒]移除|T136230:0|t[Touch of Zanzil]debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_铸造|T136225:0|t[石形]移除|T136230:0|t[赞齐尔之触]debuff|r
    .aura -9991
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞到暴风城
    .target Thor
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>前往|cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|c|r
    .skill firstaid,80 >>|cRXP_WARN_将您的|r|T135966:0|t[急救]|cRXP_WARN_to 80调平|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|c|r
    .train 7934 >>|cRXP_WARN_Train|r|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>工艺|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_使用您包中的|T134437:0|t[抗毒]移除|T136230:0|t[Touch of Zanzil]debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    >>|cRXP_WARN_如果您切换到|r|T135641:0|t[匕首]|cRXP_WARN_earlier，请记住重新装备主武器|r << Rogue
    .turnin 135 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 141 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .turnin 2359 >>交任务: |cRXP_FRIENDLY_克拉文之塔|r << Rogue
    .target Master Mathias Shaw
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith BandanaStart
    +开始为管理员组建一个小组
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Westfall >>飞往威斯特福尔
    .target Dungar Longdrink
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 141 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 142 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    +|cRXP_WARN_equp the |r|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,44.50,69.62,55 >>Travel to Moonbrook
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>杀死|cRXP_ENEMY_Defias信使|r。抢走他的|cRXD_Loot_神秘消息|r
    >>|cRXP_WARN_|cRXP_ENEMY_Defias信使|r在Moonbrook中诞生。他沿着Moonbrook以北的道路走到黄金海岸采石场和Jangolode矿场。如果你在路上看不到它，就等它在Moonbrook产卵吧|r
    >>|cRXP_WARN_他有一个4-5分钟的重生计时器|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 142 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪菲亚叛徒|r
    >>|cRXP_WARN_如果叛徒不在，您可能需要等待|cRXP_FRIENDLY_The Defias Traitor|r产卵|r
    >>|cRXP_WARN_如果你已经组建了一个小组，在开始护送之前，确保你的小组也先上交了前一部分|r
    .accept 155 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.56,71.71
    >>护送|cRXP_FRIENDLY_the Defias Traditor|r到Deaadmins
    >>|cRXP_WARN_始终站在|cRXP_FRIENDLY_The Defias Traitor|r旁边。到达Moonbrook后，准备好与|cRXP_ENEMY_Defias支柱|r和|cRXX_ENEMY_Defias掠夺者|r战斗|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 155 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 166 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label BandanaStart
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵瑞尔|r, 他在塔上
    .accept 214 >>接任务: |cRXP_WARN_红色丝质面罩|r
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_在Sentinel Hill以南打磨|cRXP_ENEMY_Gnolls|r，同时组建一个Deadmines小组|r
    .subzone 20 >>当你的团队集合后，前往Moonbrook
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.55,71.69
    .subzone 1581 >>与您的团队一起进入Defias Hideout
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_equp the |r|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith EnterDM
    >>杀死|cRXP_ENEMY_Defias|r。掠夺他们的|cRXD_Loot_红丝绷带|r
    >>|cRXP_WARN_您也可以在Deadmines中完成此操作|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith next
    >>杀死|cRXP_ENEMY_Skeletal Miner|r、|cRXD_ENEMY_Undad Dynamiter|r和|cRXP_ENEMY_ Undad挖掘机|r。掠夺他们的|cRXP_Loot_Cards|r
    >>|cRXP_WARN_这是在地牢外完成的|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>杀死|cRXP_ENEMY_Foreman Thistlenettle|r。掠夺他的|cRXX_OOT_Badge|r
    >>|cRXP_WARN_这是在地牢外完成的|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
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
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >>进入Deadmines地牢
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #optional
    #completewith VanCleef << !Paladin
    #completewith DeadminesBackdoor << Paladin
    >>杀死管理员内部的|cRXP_ENEMY_Defias|r。掠夺他们的|cRXP_Loot_红绸绷带|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore
    #optional
    #completewith DeadminesBackdoor
    >>杀死管理员内部的|cRXP_ENEMY_Defias|r。掠夺他们的|cRXP_Loot_红绸绷带|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>杀死|cRXP_ENEMY_Sneed|r。掠夺他获得|cRXD_Loot_Gnaom Sprecklesocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_equp the |r|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label VanCleef
    >>杀死|cRXP_ENEMY_Edwin VanCleef|r。掠夺他的|cRXP_Loot_Head|r和|T133471:0|t[|cRXP-Loot_An Unsent Letter|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #label DeadminesBackdoor
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    >>|cRXP_WARN_询问您的团队是否可以留下来帮助您尽快进行圣骑士专用的|cRXP_FRIENDLY_Daphone Stilwell|r护送（如果可能）|r << Paladin
    .subzone 920 >>通过|cRXP_ENEMY_Edwin VanCleef|r以东的后出口退出管理员
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1436,39.444,85.755
    .goto 1436,40.010,86.514,20 >>前往她所在领域的|cRXP_FRIENDLY_Daphone Stilwell|r
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达芙妮·斯迪威尔|r
    >>|cRXP_WARN_她在自己的田地里稍微巡逻一下|r
    >>|cRXP_WARN_要小心，因为这可能有点困难。你将面对3波，然后是4波，然后5波17-18|cRXP_ENEMY_Defias Raiders|r
    .turnin 1650 >>交任务: |cRXP_FRIENDLY_勇气之书|r
    .accept 1651,1 >>接任务: |cRXP_WARN_勇气之书|r
    .link https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >>点击此处获取视频指南
    .target Daphne Stilwell
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1436,41.311,88.506
    >>保护|cRXP_FRIENDLY_Daphone Stilwell |r
    >>|cRXP_WARN_如果您或|cRXP_FRIENDLY_Daphone Stilwell|r死亡，任务将失败，您必须重试|r
    >>|cRXP_WARN_要小心，因为这可能有点困难。你将面对3波，然后是4波，然后5波17-18|cRXP_ENEMY_Defias Raiders|r
    .complete 1651,1 --Protect Daphne Stilwell (1)
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达芙妮·斯迪威尔|r
    >>|cRXP_WARN_她在自己的田地里稍微巡逻一下|r
    .turnin 1651 >>交任务: |cRXP_FRIENDLY_勇气之书|r
    .accept 1652 >>接任务: |cRXP_WARN_勇气之书|r
    .target Daphne Stilwell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #completewith next
    .goto Westfall,30.01,86.02,40 >>前往Westfall灯塔
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞森船长|r
    .accept 104 >>接任务: |cRXP_WARN_海岸上的威胁|r
    .accept 103 >>接任务: |cRXP_WARN_长明的灯塔|r
    .turnin 103 >>交任务: |cRXP_FRIENDLY_长明的灯塔|r
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    #xprate >1.59
    #ssf
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞森船长|r
    .accept 104 >>接任务: |cRXP_WARN_海岸上的威胁|r
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #ah
    #optional
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞森船长|r
    .accept 104 >>接任务: |cRXP_WARN_海岸上的威胁|r
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>杀死|cRXP_ENEMY_Old Murk Eye|r。掠夺他的|cRXP_Loot_Scale|r
    >>|cRXP_ENEMY_老鼠眼|r|cRXP_WARN_在龙穴上来回奔跑。如果你找不到他，跳过这一步|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞森船长|r
    .turnin 104 >>交任务: |cRXP_FRIENDLY_海岸上的威胁|r
    .target Captain Grayson
    .isQuestComplete 104
    .dungeon DM
step
    #xprate >1.59
    #optional
    #hardcore << !Paladin
    #completewith DeadminesEnd
    .abandon 103 >>放弃火焰守护者
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,42.55,71.69
    .subzone 1581 >>独自进入Defias藏身处
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1415,40.678,79.578
    >>在Deadmines实例外杀死|cRXP_ENEMY_Defias|r。掠夺他们的|cRXP_Loot_红绸绷带|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step << !Paladin
    #xprate >1.59 << !Hunter
    >>杀死管理员内部的|cRXP_ENEMY_Defias|r。掠夺他们的|cRXP_Loot_红绸绷带|r
    >>|cRXP_WARN_如果Deadmines内部不再有|cRXP_ENEMY_Defias|r，则在外部杀死它们|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #completewith DeadminesEnd
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_equp the |r|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DeadminesEnd
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 166 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵瑞尔|r, 他在塔上
    .turnin 214 >>交任务: |cRXP_FRIENDLY_红色丝质面罩|r
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #sticky
    #label LetterLater
    .abandon 373 >>放弃未发送的信件。你稍后会这样做
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>演员阵容|T135763:0|t[电报：暴风]
    .zoneskip Stormwind City
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔莎林|r
    .train 2138 >>训练你的职业技能
    .target Elsharin
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Mage
    #completewith ShoniEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞到暴风城
    .zoneskip Stormwind City
    .target Thor
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入屠宰的羔羊。下楼去
    .xp <22,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .train 6202 >>训练你的职业技能
    .target Ursula Deline
    .xp <22,1
    .dungeon DM
--XX Not adding one to check xp after turnins, waste of time to do that/take tram and train etc
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂内的|cRXP_FRIENDLY_Duthorian集会|r
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1652 >>交任务: |cRXP_FRIENDLY_勇气之书|r
    .accept 1653 >>接任务: |cRXP_WARN_正义试炼|r
    .target Duthorian Rall
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 19835 >>训练你的职业技能
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>前往暴风大教堂内的|cRXP_FRIENDLY_High Priestess Laurena|r
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师劳瑞娜|r, 他在里面
    .train 8103 >>训练你的职业技能
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .train 1856 >>训练你的职业技能
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>前往指挥中心内的|cRXP_FRIENDLY_Wu Shen|r
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_武神|r, 他在楼上
    .train 6192 >>训练你的职业技能
    .target Wu Shen
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔德·蓟草|r, 他在里面
    .turnin 167 >>交任务: |cRXP_FRIENDLY_我的兄弟……|r
    .turnin 168 >>交任务: |cRXP_FRIENDLY_收集记忆|r
    .target Wilder Thistlenettle
    .dungeon DM
step << skip --Hunter - nothing good to train at 22
    #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r, 他在里面
    .trainer >>训练你的职业技能
    .target Einris Brightspear
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沉默的舒尼|r
    .turnin 2040 >>交任务: |cRXP_FRIENDLY_地底突袭|r
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_BUY_从他那里买一个|r|T133024:0|t[青铜管]|cRXP_Buy_（如果有）|r
--    >>稍后的任务需要2个青铜管 << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂内的|cRXP_FRIENDLY_Duthorian集会|r
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1652 >>交任务: |cRXP_FRIENDLY_勇气之书|r
    .accept 1653 >>接任务: |cRXP_WARN_正义试炼|r
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 19835 >>训练你的职业技能
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>前往暴风大教堂内的|cRXP_FRIENDLY_High Priestess Laurena|r
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师劳瑞娜|r, 他在里面
    .train 8103 >>训练你的职业技能
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .train 1856 >>训练你的职业技能
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>前往指挥中心内的|cRXP_FRIENDLY_Wu Shen|r
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_武神|r, 他在楼上
    .train 6192 >>训练你的职业技能
    .target Wu Shen
    .xp <22,1
    .dungeon DM
--XX No way to check if the user has the ironforge FP, if they don't, send them to the trainer there instead
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>演员阵容|T135763:0|t[电报：暴风]
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔莎林|r, 他在塔上
    .train 2138 >>训练你的职业技能
    .target Elsharin
    .xp <22,1
    .dungeon DM
step << Druid
    #xprate >1.59
    #optional
    #completewith next
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
	>>前往Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 8926 >>训练你的职业技能
    .target Loganaar
    .xp <22,1
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith NEIFFP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>进入Deeprun Tram
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #label DeeprunDMNoFP1
    #completewith NEIFFP
    >>|cRXP_WARN_如果在有轨电车上需要，请调整|r|T135966:0|t[急救]|cRXP_WARN_and|r|T133971:0|t[烹饪]|cRX P_WARN_if needed on the Tram|r
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #requires DeeprunDMNoFP1
    #label DeeprunDMNoFP2
    #completewith NEIFFP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考格斯宾|r
    .vendor 5175 >>|cRXP_BUY_从他那里买一个|r|T133024:0|t[青铜管]|cRXP_Buy_（如果有）|r
--    >>稍后的任务需要2个青铜管 << Rogue
    .target Gearcutter Cogspinner
    .bronzetube
    .dungeon DM
step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #requires DeeprunDMNoFP2
    #label DeeprunDMNoFP3
    #completewith NEIFFP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布里维夫·石拳|r, 他在里面
    .train 197 >>列车2h轴 << Warrior
    .train 199 >>列车2h梅斯 << Warrior
    .train 266 >>训练枪 << Hunter
    .target Buliwyf Stonehand
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP3
    #label DeeprunDMNoFP4
    #completewith NEIFFP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_向她购买|r|T135427:0|t[重飞刀]|cRXP_Buy_|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP4
    #label DeeprunDMNoFP5
    #completewith NEIFFP
    +|cRXP_WARN_equp the |r|T135427:0|t[重飞刀]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #label NEIFFP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获得铁炉堡飞行路线
    .target Gryth Thurden
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_使用|T133743:0|t[|cRXP_LOOT_Book:下面的力量|r]开始任务|r
    .accept 968 >>接任务: |cRXP_WARN_深渊之神|r
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛利·硬骨|r, 他在里面
    .turnin 968 >>交任务: |cRXP_FRIENDLY_深渊之神|r
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .isOnQuest 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires LetterLater
    #optional
    .hs >>Hearth到Darkshore
    .zoneskip Darkshore
    .dungeon DM




----End of Hunter/All 2x Deadmines section----
----Start of <1.59x Redridge Transition----






step << !Hunter
--XX NightElf
    #xprate <1.59
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蒙德|r
    >>|cRXP_BUY_从他那里购买一个|r|T135237:0|t[Flint and Tinder]|cRXP_Buy_|r
    >>|cRXP_WARN_这是为了让你的|r|T133971:0|t[烹饪]|cRXP_WARN_while尽快上船|r
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1
    .target Dalmond
step << !Hunter
--XX NightElf
    #xprate <1.59
    #completewith next
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .vendor 6301 >>|cRXP_BUY_从他那里购买|r|T134059:0|t[温和的香料]|cRXP_Buy_，直到你有|r|T134059:0 |t[轻微的香料]| cRXP_Buy_等于或大于你目前拥有的|r|T232832:0|t【小鸡蛋】|cRXP-Buy_|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
--ZXCV
step << !Hunter
    #xprate <1.59
    #label TravelMenethilRRBoat
    #completewith MenethilRRBoat
    .goto 1439,32.432,43.744,15 >>前往Menethil Harbor船的码头
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
step << !Hunter
    #xprate <1.59
    #optional
    #label DarkshoreRRCook1
    #requires TravelMenethilRRBoat
    #completewith MenethilRRBoat
    >>|cRXP_WARN_如果船刚刚到达，则在船上；如果船刚刚离开，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r|T135805:0|t[Basic Campfire]|cRXP_WARN_（在拼写手册的“常规”选项卡下）|r
    .usespell 818
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter
    #xprate <1.59
    #optional
    #requires DarkshoreRRCook1
    #completewith MenethilRRBoat
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T132832:0|t|cRXP_OOT_[小鸡蛋]| r|cRXP-WARN_and|r|T134059:0|t[淡香料]| cRX P_WARN_into|r|t 132834:0|t[香草烤鸡蛋]
    .usespell 2550
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #xprate <1.59
    #label MenethilRRBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_如果需要，在等待船只到达Menethil港时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r << Rogue/Warrior/Paladin
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << !NightElf !Hunter
    #xprate <1.59
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor >>|cRXP_WARN_Buy a|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Neal Allen|r没有，请跳过此步骤|r
	.target Neal Allen
    .bronzetube
step << !NightElf !Hunter
    #xprate <1.59
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
    .fly Ironforge >>飞往铁炉堡
    .target Shellei Brondir



----Start of <1.59x Night Elf Wetlands->IF Transition----



step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .accept 484 >>接任务: |cRXP_WARN_小鳄鱼皮|r
step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
    .fp Wetlands>>获取湿地飞行路径
    .target Shellei Brondir
step << !Hunter NightElf
    #xprate <1.59
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor >>|cRXP_WARN_Buy a|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Neal Allen|r没有，请跳过此步骤|r
	.target Neal Allen
    .bronzetube
step << !Hunter NightElf
    #xprate <1.59
    #completewith crocs
    >>杀死|cRXP_ENEMY_Young Wetlands鳄鱼|r。掠夺它们的|cRXX_Loot_Young鳄鱼皮|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step << !Hunter NightElf
    #xprate <1.59
    #completewith next
    .goto Wetlands,49.91,39.36,50 >>向东行驶至|cRXP_FRIENDLY_Einar Stonegrip|r
step << !Hunter NightElf
    #xprate <1.59
    #label crocs
    .goto Wetlands,49.91,39.36
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃纳尔·石钳|r
    .accept 469 >>接任务: |cRXP_LOOT_日常供货|r
step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,53.2,41.3,55,0
    .goto Wetlands,58.5,50.8,55,0
    .goto Wetlands,62.1,61.4,55,0
    .goto Wetlands,64.0,72.2
    >>杀死|cRXP_ENEMY_Young Wetlands鳄鱼|r。掠夺它们的|cRXX_Loot_Young鳄鱼皮|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step << !Hunter NightElf
    #xprate 1.49-1.59
	#completewith next
	.goto Wetlands,63.9,78.6
    >>前往东部湿地大坝底部的洞穴
	.zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
    >>当你重新登录时，这将把你传送到Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >>|cRXP_WARN_单击此处获取参考|r
step << !Hunter NightElf
    #xprate <1.5
    #completewith next
    .goto Wetlands,53.14,70.38,30,0
    .goto Wetlands,48.32,67.07,35,0
    .goto Wetlands,50.14,72.10,30,0
    .goto Loch Modan,25.4,10.6,30 >>前往: |cRXP_PICK_洛克莫丹|r
    .zone Loch Modan >>|cRXP_WARN_前往: |cRXP_PICK_洛克莫丹|r|r
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_主工程师辛德维尔七世|r
    .accept 250 >>接任务: |cRXP_WARN_水坝危机|r
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,56.05,13.24
    >>单击|cRXP_PICK_可疑桶|r
    .turnin 250 >>交任务: |cRXP_FRIENDLY_水坝危机|r
    .accept 199 >>接任务: |cRXP_WARN_水坝危机|r
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_主工程师辛德维尔七世|r
    .turnin 199 >>交任务: |cRXP_FRIENDLY_水坝危机|r
step << !Hunter NightElf
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step << !Hunter NightElf
    #xprate <1.59
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fp Thelsamar >>获取Thelsamar飞行路线
    .target Thorgrum Borrelson
step << !Hunter NightElf
    #xprate <1.59
    .goto Loch Modan,21.30,68.60,40,0
    .goto Loch Modan,19.11,62.11,25,0
    .goto Dun Morogh,86.04,51.05,20 >>前往: |cRXP_PICK_丹莫罗|r
    .zoneskip Ironforge
    .zoneskip Dun Morogh
step << !Hunter NightElf
    #xprate <1.59
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >>单击此处以供参考
step << !Hunter NightElf
    #xprate <1.59
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获得铁炉堡飞行路线
    .target Gryth Thurden



----End of <1.59x Night Elf Wetlands->IF Transition----



step << !Hunter
    #xprate <1.59
    #completewith next
    #optional
    .goto Ironforge,56.23,46.83,0
    .goto Ironforge,78.00,52.00,20 >>|cRXP_WARN_执行注销跳过，跳到鹰头狮的头上，注销，然后再重新登录|r
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >>|cRXP_WARN_单击此处查看视频指南|r
step << !Hunter
    #xprate <1.59
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考格斯宾|r
    .vendor >>|cRXP_WARN_Buy a|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Gearcutter Cogspeer|r没有，请跳过此步骤|r
--  >>稍后的任务需要2个青铜管 << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step << !Hunter
    #xprate <1.59
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    >>|cRXP_WARN_如果在等电车时需要，请调平|r|T135966:0|t[急救]|cRXP_WARN_and|r|T133971:0|t[烹饪]|cRX P_WARN_if need|r
    >>|cRXP_WARN_你需要|r|T135966:0|t[急救]|cRXP_WARN_to达到80才能完成24级任务 << Rogue !Dwarf




----End of <1.59x Redridge Transition----




]])

----Start of <1.59x Redridge----
----2x and ALL Hunters stay in Darkshore/Ashen and grind----

RXPGuides.RegisterGuide([[
#xprate <1.59
#classic
#version 1
<< Alliance !Hunter
#group RestedXP 联盟 1-20
#name 19-20 赤脊山
#next 20-21 黑海岸/灰谷

step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor >>|cRXP_WARN_Buy a|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Billibub Cogspeer|r没有，请跳过此步骤|r
--    >>稍后的任务需要2个青铜管 << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沉默的舒尼|r
    .accept 2040 >>接任务: |cRXP_WARN_地底突袭|r
    .target Shoni the Shilent
    .dungeon DM
step << !NightElf
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
    .target Furen Longbeard
    .isOnQuest 1338
step
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔德·蓟草|r
    .accept 167 >>接任务: |cRXP_WARN_我的兄弟……|r
    .accept 168 >>接任务: |cRXP_WARN_收集记忆|r
    .target Wilder Thistlenettle
    .dungeon DM
step << !NightElf
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .turnin 399 >>交任务: |cRXP_FRIENDLY_童年的记忆|r
    .target Baros Alexston
    .isQuestComplete 399
--XX Westfall 1x only
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔莎林|r
    .trainer >>训练你的职业技能
    .target Elsharin
step << Paladin/Priest !NightElf
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
    #label PalTrainer
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .trainer >>训练你的职业技能
    .target Arthur the Faithful
step << Priest !NightElf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
    .trainer >>训练你的职业技能
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿德温·凯伦|r
    >>|cRXP_WARN_购买|r|T135139:0|t[燃烧棒]|cRXP_WARN_if it is a upgrade|r
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
    >>|cRXP_WARN_确保你训练|r|T136058:0|t[Lockpicking]|cRXP_WARN_as很好，因为你很快就会需要它来完成你的盗贼类任务|r
    .trainer >>训练你的职业技能
    .train 1804 >>列车|T136058:0|t[开锁]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Renzik“The Shiv”|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"剃刀\"雷吉克|r
    .accept 2281 >>接任务: |cRXP_WARN_赤脊山的联络员|r
    .goto StormwindClassic,75.76,60.35
    .target Renzik "The Shiv"
step << Warrior !NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target Wu Shen
    .target Ilsa Corbin
step
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吴平|r
    .train 201 >>训练1h剑 << Mage/Rogue/Warlock
    .train 1180 >>Train Daggers << Mage/Druid
    .train 202 >>训练2h剑 << Warrior/Paladin
    .target Woo Ping
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯蒂芬妮·特纳|r
    .turnin 1643 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .target Stephanie Turner
    .accept 1644 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1644 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    >>|cRXP_WARN_您将需要10|T132889:0|t[亚麻布]|r
--  .accept 1780 >>接任务: |cRXP_WARN_圣洁之书|r
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_从拍卖行购买|r|T135342:0|t[Kris]|cRXP_Buy_或更好的东西|r
    >>|cRXP_WARN_达到19级后装备|r
    .collect 2209,1 --Kris
    .target Marda Weller
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_BUY a|r|T135342:0|t[Kris]
    >>|cRXP_WARN_达到19级后装备|r
    .collect 2209,1 --Kris
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_equp the |r|T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.89
    .xp <19,1
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>稍后为您的|T132290:0|t[毒药]任务购买|T134437:0|t[抗毒液]，其余的很快在雷德里奇山脉获得更快的回报 << !Dwarf Rogue
    >>购买以下物品，很快就能在雷德里奇山脉快速上车 << !Rogue/Dwarf Rogue
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    >>|T134437:0|t[抗毒液] << !Dwarf Rogue
    >>|T134172:0|t[伟大的Goretusk鼻涕虫]
    >>|T134028:0|t[硬汉肉]
    >>|T134321:0|t[脆蜘蛛肉]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << !Human !Warlock
    #completewith start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .goto StormwindClassic,66.27,62.12
    .fp Stormwind >>获取暴风城飞行路线
    .target Dungar Longdrink
step << NightElf
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Westfall >>飞往威斯特福尔
    .target Dungar Longdrink
    .zoneskip Westfall
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 65 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64,-1
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r, |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge >>飞到雷德里奇山脉
    .target Thor
    .target Dungar Longdrink
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵山飞行路线
    .target Thor
step << Gnome Warlock
#xprate >1.49
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Redridge >>飞到雷德里奇
    .target Thor
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 65 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << NightElf Warrior/NightElf Priest
    #completewith next
    .goto Elwynn Forest,41.08,65.76,25 >>Travel to Goldshire << Warrior
    .goto Elwynn Forest,43.17,65.70,15 >>Travel to Goldshire << Priest
step << NightElf Warrior
    .goto Elwynn Forest,41.08,65.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria|r
    .trainer >>训练你的职业技能
    .target Lyria Du Lac
step << NightElf Priest
    >>前往酒店。上楼去
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师洁塞塔|r
    .goto Elwynn Forest,43.17,65.70,12,0
    .goto Elwynn Forest,43.80,66.47,8,0
    .goto Elwynn Forest,43.28,65.72
    .trainer >>训练你的职业技能
    .target Priestess Josetta
step << !Human !Warlock
    #xprate >1.49 << !NightElf
    .xp <20,1
    >>跑向阿佐拉塔
    .goto Elwynn Forest,65.20,69.80
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞欧克瑞图斯|r
    .accept 94 >>接任务: |cRXP_LOOT_法师的眼线|r
step << !NightElf
.dungeon !DM
    #xprate <1.5 << !Human
    #completewith next
    .goto StormwindClassic,66.27,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge >>飞到雷德里奇山脉
    .target Dungar Longdrink
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    #completewith next
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
    .accept 244 >>接任务: |cRXP_WARN_豺狼人的入侵|r
    .target Guard Parker
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .target Deputy Feldon
step << NightElf
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .target Deputy Feldon
    .accept 246 >>接任务: |cRXP_WARN_审时度势|r
step
.dungeon DM
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑衣威利|r, 他在楼上
    .turnin 65 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 132 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
	.target Wiley the Black
step
.dungeon DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r
	.target Magistrate Solomon
    .accept 120 >>接任务: |cRXP_WARN_送往暴风城的信|r
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >>接任务: |cRXP_WARN_马掌|r
step
.dungeon DM
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Westfall >>飞往威斯特福尔
    .target Ariena Stormfeather
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 132 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 135 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞到暴风城
    .target Thor
step
.dungeon DM
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .turnin 135 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 141 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Master Mathias Shaw
step
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Westfall >>飞往威斯特福尔
    .target Dungar Longdrink
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 141 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 142 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >>Travel to Moonbrook
step
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>杀死|cRXP_ENEMY_Defias信使|r。抢走他的|cRXD_Loot_神秘消息|r
    >>|cRXP_WARN_|cRXP_ENEMY_Defias信使|r在Moonbrook中诞生。他沿着Moonbrook以北的道路走到黄金海岸采石场和Jangolode矿场。如果你在路上看不到它，就等它在Moonbrook产卵吧|r
    >>|cRXP_WARN_他有一个4-5分钟的重生计时器|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 142 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪菲亚叛徒|r
    >>|cRXP_WARN_如果叛徒不在，您可能需要等待|cRXP_FRIENDLY_The Defias Traitor|r产卵|r
    .accept 155 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,42.56,71.71
    >>护送|cRXP_FRIENDLY_the Defias Traditor|r到Deaadmins
    >>|cRXP_WARN_始终站在|cRXP_FRIENDLY_The Defias Traitor|r旁边！准备好战斗|cRXP_ENEMY_到达Moonbrook后的Defias|r|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 155 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .accept 166 >>接任务: |cRXP_WARN_迪菲亚兄弟会|r
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵瑞尔|r, 他在塔上
    .accept 214 >>接任务: |cRXP_WARN_红色丝质面罩|r
    .goto Westfall,56.67,47.35
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
    .isOnQuest 214
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
    .isOnQuest 214
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
    .turnin -214 >>交任务: |cRXP_FRIENDLY_红色丝质面罩|r
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
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马库斯·乔纳森将军|r
    .turnin 120 >>交任务: |cRXP_FRIENDLY_送往暴风城的信|r
    .accept 121 >>接任务: |cRXP_WARN_送往暴风城的信|r
    .target General Marcus Jonathan
step << Mage
.dungeon DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
.dungeon DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔莎林|r
    .trainer >>训练你的职业技能
    .target Elsharin
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞麦尼·普尔度|r
    .train 48464 >>列车|T135763:0|t[电报：暴风号]
	.xp <20,1
    .target Larimaine Purdue
step << Warlock
.dungeon DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，然后下楼
step << Warlock
.dungeon DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
step << Warlock
.dungeon DM
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1716 >>接任务: |cRXP_WARN_噬魂者|r
    .target Gakin the Darkbinder
    .xp <20,1
step
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿古斯·夜语|r
    .accept 3765 >>接任务: |cRXP_WARN_遥远的旅途|r
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
.dungeon DM
    #season 2
    #completewith next
    +|cRXP_WARN_一旦获得|r|T132135:0|t[Mangle]|cRXP_WARN_and|r|T236167:0|t[Savage Roar]的符文，您应该准备切换到|r|T132276:0|t[Fernal]|cRX P_WARN_in，而不是使用|r|T1 36096:0|t[Blance]|cRXP_WARN_abilities
step << Druid
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
    .goto StormwindClassic,20.89,55.50
    .trainer >>训练你的职业技能
    .train 768 >>列车|T132115:0|t[Cat表格]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r, Tome of Valor
    use 6776 >>|cRXP_WARN_使用|T133739:0|t[|cRXP_LOOT_Tome|r]开始任务|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>接任务: |cRXP_WARN_勇气之书|r
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1649 >>交任务: |cRXP_FRIENDLY_勇气之书|r
    .accept 1650 >>接任务: |cRXP_WARN_勇气之书|r
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .trainer >>训练你的职业技能
    .target Arthur the Faithful
step << Priest
.dungeon DM
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
    .trainer >>训练你的职业技能
    .target Brother Joshua
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
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
step << Rogue
.dungeon DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 2360 >>接任务: |cRXP_WARN_马迪亚斯和迪菲亚潜行者|r
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
.dungeon DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_WARN_购买|r|T135324:0|t[长剑]|cRXP_WARN_并在21时装备|r
    >>|cRXP_WARN_如果有更便宜/更好的东西，就从拍卖行买|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_WARN_购买|r|T135324:0|t[长剑]|cRXP_WARN_并在21时装备|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #optional
    #completewith next
    +|cRXP_WARN_equp the |r|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_WARN_如果你有足够的钱，买一个|r|T135280:0|t[Dacian Falx]|cRXP_WARN_i。21点装备|r
    >>|cRXP_WARN_如果有更便宜/更好的东西，就从拍卖行买|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_WARN_如果你有足够的钱，买一个|r|T135280:0|t[Dacian Falx]|cRXP_WARN_i。21点装备|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #optional
    #completewith next
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_典狱官塞尔沃特|r
    .turnin 389 >>交任务: |cRXP_FRIENDLY_巴吉尔·特雷德|r
--  .accept 391 >>接任务: |cRXP_WARN_监狱暴动|r
    .target Warden Thelwater
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>稍后为您的|T132290:0|t[毒药]任务购买|T134437:0|t[抗毒液]，其余的很快在雷德里奇山脉获得更快的回报 << !Dwarf Rogue
    >>购买以下物品，很快就能在雷德里奇山脉快速上车 << !Rogue/Dwarf Rogue
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    >>|T134437:0|t[抗毒液] << !Dwarf Rogue
    >>|T134172:0|t[伟大的Goretusk鼻涕虫]
    >>|T134028:0|t[硬汉肉]
    >>|T134321:0|t[脆蜘蛛肉]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
.dungeon DM
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >>前往: |cRXP_PICK_艾尔文森林|r
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠阿古斯|r
	.target Smith Argus
    .turnin 118 >>交任务: |cRXP_FRIENDLY_马掌|r
    .accept 119 >>接任务: |cRXP_WARN_回复弗纳|r
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 118
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠阿古斯|r
	.target Smith Argus
    .accept 119 >>接任务: |cRXP_WARN_回复弗纳|r
    .xp <20,1
step
.dungeon DM
    #completewith next
    .subzone 91 >>前往亚速拉塔。登上塔楼
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞欧克瑞图斯|r
    .accept 94 >>接任务: |cRXP_LOOT_法师的眼线|r
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_当恩·布赖特斯塔|r
    .vendor >>|cRXP_FRIENDLY_Dawn Brightstar |r|cRXP_BUY_也有有限的供应项目，如|r|T134938:0|t|T134937:0|t| T134943:0|t[Scrolls]|cRXP-BUY_和|r|T134850:0|t|T134830:0|t[Potions]|cRX|r << !Warrior !Rogue
    .vendor >>|cRXP_FRIENDLY_Dawn Brightstar |r|cRXP_BUY_也有有限的供应项目，如|r|T134938:0|t|T134937:0|t| T134943:0|t[Scrolls]|cRXP-BUY_和|r|T134830:0|t[Potions]|cRX P_BUY_|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
.dungeon DM
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r

step
.dungeon DM
    #xprate <1.5
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
    .accept 244 >>接任务: |cRXP_WARN_豺狼人的入侵|r
    .target Guard Parker
step
.dungeon DM
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .target Deputy Feldon


step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>接任务: |cRXP_LOOT_黑石氏族的威胁|r
    .target Marshal Marris
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
.dungeon DM
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >>交任务: |cRXP_FRIENDLY_回复弗纳|r
    .accept 124 >>接任务: |cRXP_WARN_豺狼人的乱吠|r
step
.dungeon DM
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >>交任务: |cRXP_FRIENDLY_回复弗纳|r
    .accept 124 >>接任务: |cRXP_WARN_豺狼人的乱吠|r
    .accept 122 >>接任务: |cRXP_WARN_雏龙的鳞片|r
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马库斯·乔纳森将军|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >>交任务: |cRXP_FRIENDLY_送往暴风城的信|r
    .accept 121 >>接任务: |cRXP_WARN_送往暴风城的信|r
step
.dungeon !DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r
	.target Magistrate Solomon
    .accept 120 >>接任务: |cRXP_WARN_送往暴风城的信|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员巴伦|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >>接任务: |cRXP_LOOT_卖鱼|r
step
#xprate <1.5
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达希·帕克|r
    >>|cRXP_FRIENDLY_Darcy |r|cRXP_WARN_在酒店内走来走去|r
	.target Darcy
    .accept 129 >>接任务: |cRXP_LOOT_免费的午餐|r
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑衣威利|r, 他在楼上
	.target Wiley the Black
    .turnin 65 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
    .isOnQuest 65
step
#optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师布雷纳|r
    .accept 92 >>接任务: |cRXP_WARN_赤脊山炖肉|r
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step << Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.85,46.32
    .accept 34 >>接任务: |cRXP_WARN_不速之客|r
step << Warlock
    .goto Redridge Mountains,15.68,49.30
    >>杀死|cRXP_ENEMY_Bellygrub|r。掠夺他的|cRXX_Loot_TASK|r
    >>|cRXP_WARN_风筝|cRXP_ENEMY_Bellygrub|r回到莱克郡，所以|cRXP_FRIENDLY_Guards|r协助你杀死|r|cRXX_ENEMY_Bellygrub|r
    >>|cRXP_WARN_这个任务非常困难。你可以跳过这一步，稍后再来|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .link https://youtu.be/6JE967OG3CU?t=1845 >>|cRXP_WARN_单击此处查看视频指南|r
    .mob Bellygrub
step << Warlock
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
    .turnin 34 >>交任务: |cRXP_FRIENDLY_不速之客|r
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢修斯|r
    .turnin 2281 >>交任务: |cRXP_FRIENDLY_赤脊山的联络员|r
    .accept 2282 >>接任务: |cRXP_LOOT_奥瑟尔伐木场|r
    .target Lucius
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
step << Druid
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼达|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >>交任务: |cRXP_FRIENDLY_希拉里的项链|r
step
    #softcore
    >>打开|cRXP_PICK_沉箱|r。为|cRXP_Loot_Oslow的工具箱|r抓取它
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #xprate <1.5
    #sticky
    #completewith orcs
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
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >>接任务: |cRXP_WARN_豺狼人的入侵|r
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >>交任务: |cRXP_FRIENDLY_免费的午餐|r
    .accept 130 >>接任务: |cRXP_WARN_寻访草药师|r
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .accept 246 >>接任务: |cRXP_WARN_审时度势|r
step
    #xprate <1.5
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>杀死|cRXP_ENEMY_Tarantulas|r。掠夺它们的|cRXX_Loot_脆蜘蛛肉|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #xprate <1.5
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
    .goto Redridge Mountains,49.0,70.0
    >>杀死|cRXP_ENEMY_Murloc Shorestickers |r和|cRXD_ENEMY_ Murloc Minor Tidecallers |r。掠夺它们的|cRXP_Loot_Fins |r和| cRXP_Loot_Sunfish|r
	>>|cRXP_WARN_请注意，该区域是一个超级兵，这意味着|cRXP_ENEMY_Murlocs|r会迅速重生|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>杀死|cRXP_ENEMY_Dire秃鹰|r。掠夺它们的|cRXX_Loot_坚韧的秃鹰肉|r
    >>|cRXP_WARN_如果您没有看到任何|r|cRXP_ENEMY_Dire秃鹰，请跳过此步骤|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #label orcs
    >>杀死|cRXP_ENEMY_Blackrock Grunts|r和|cRXD_ENEMY_ Blackrock Outrunners|r。掠夺他们的|cRXP_Loot_Axes|r
	>>|cRXP_WARN_请注意，|cRXP_ENEMY_Blackrock Outrunners|r将向您投掷|T132149:0|t[Net]|r
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>杀死|cRXP_ENEMY_Dire秃鹰|r。掠夺它们的|cRXX_Loot_坚韧的秃鹰肉|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cRXP_WARN_Jump into the Lake|r
    >>打开|cRXP_PICK_沉箱|r。为|cRXP_Loot_Oslow的工具箱|r抓取它
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20-7687 >>升级直到距离20级7687 xp << !Rogue
    .xp 20-10012 >>升级直到距离20级10012 xp << Rogue
step << Rogue
    #completewith next
    .subzone 97 >>Travel to Alther's Mill
step << Rogue
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_您必须稍后为您的|r|T132290:0|t[毒药]|cRXP_WARN_任务执行此操作|r
    >>|cRXP_WARN_站在航路点位置。定位相机和光标，直到您可以一次单击3个|cRXP_PICK_Practice Lockboxes|r，而无需移动任何东西|r
    .skill lockpicking,80 >>|cRXP_WARN_打开阿尔特磨地面上的|cRXP_PICK_Practice Lockboxes|r，直到你的|r|T136058:0|t[Lockpick]技能达到80|r
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>打开|cRXP_PICK_Lucius的锁箱|r。偷走它以获取小偷的|cRXP-Loot_Token|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #completewith next
    .goto Redridge Mountains,33.50,48.97,150 >>Travel to Lakeshire
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >>交任务: |cRXP_FRIENDLY_黑石氏族的威胁|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >>交任务: |cRXP_FRIENDLY_丢失的工具|r
    .accept 89 >>接任务: |cRXP_WARN_止水湖上的桥|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员巴伦|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >>交任务: |cRXP_FRIENDLY_卖鱼|r
    .accept 150 >>接任务: |cRXP_LOOT_鱼人偷猎者|r
    .turnin 150 >>交任务: |cRXP_FRIENDLY_鱼人偷猎者|r
    .xp <20,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员巴伦|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >>交任务: |cRXP_FRIENDLY_卖鱼|r
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师布雷纳|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >>接任务: |cRXP_WARN_赤脊山炖肉|r
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >>交任务: |cRXP_FRIENDLY_寻访草药师|r
    .accept 131 >>接任务: |cRXP_WARN_水仙诉衷情|r
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达希·帕克|r
    >>|cRXP_FRIENDLY_Darcy |r|cRXP_WARN_在酒店内走来走去|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >>交任务: |cRXP_FRIENDLY_水仙诉衷情|r
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢修斯|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >>交任务: |cRXP_FRIENDLY_奥瑟尔伐木场|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼达|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >>交任务: |cRXP_FRIENDLY_希拉里的项链|r
step << Rogue
    #optional
	#completewith InRR
	.destroy 7907 >>摧毁: |cRXP_ENEMY_偷窃技能认证书|r
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >>交任务: |cRXP_FRIENDLY_审时度势|r
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20 >>升级到20级
step << Rogue
.dungeon DM
    #softcore
    .isOnQuest 2360
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线 << !Human
    .fly Westfall >>飞往威斯特福尔
    .target Ariena Stormfeather
step
.dungeon !DM << Rogue
    #completewith InRR
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
	.target Ariena Stormfeather
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线 << !Human !Warlock
    .fly Stormwind >>飞往暴风城
step << Rogue
.dungeon !DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_WARN_购买|r|T135324:0|t[长剑]|cRXP_WARN_并在21时装备|r
    >>|cRXP_WARN_如果有更便宜/更好的东西，就从拍卖行买|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_WARN_购买|r|T135324:0|t[长剑]|cRXP_WARN_并在21时装备|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #optional
    #completewith next
    +|cRXP_WARN_equp the |r|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon !DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_WARN_如果你有足够的钱，买一个|r|T135280:0|t[Dacian Falx]|cRXP_WARN_i。21点装备|r
    >>|cRXP_WARN_如果有更便宜/更好的东西，就从拍卖行买|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_WARN_如果你有足够的钱，买一个|r|T135280:0|t[Dacian Falx]|cRXP_WARN_i。21点装备|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #optional
    #completewith next
    +|cRXP_WARN_调用|r|T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step << Warlock
.dungeon !DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，然后下楼
step << Warlock
.dungeon !DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1716 >>接任务: |cRXP_WARN_噬魂者|r
    .target Gakin the Darkbinder
step << Mage
.dungeon !DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
.dungeon !DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔莎林|r
    .trainer >>训练你的职业技能
    .target Elsharin
step << Mage
.dungeon !DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞麦尼·普尔度|r
    .train 48464 >>列车|T135763:0|t[电报：暴风号]
	.xp <20,1
    .target Larimaine Purdue
step
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿古斯·夜语|r
    .accept 3765 >>接任务: |cRXP_WARN_遥远的旅途|r
    .target Argos Nightwhisper
    .dungeon !DM
step << Druid
.dungeon !DM
    #season 2
    #completewith next
    +|cRXP_WARN_一旦获得|r|T132135:0|t[Mangle]|cRXP_WARN_and|r|T236167:0|t[Savage Roar]的符文，您应该准备切换到|r|T132276:0|t[Fernal]|cRX P_WARN_in，而不是使用|r|T1 36096:0|t[Blance]|cRXP_WARN_abilities
step << Druid
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
    .goto StormwindClassic,20.89,55.50
    .trainer >>训练你的职业技能
    .train 768 >>列车|T132115:0|t[Cat表格]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon !DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r, Tome of Valor
    use 6776 >>|cRXP_WARN_使用|T133739:0|t[|cRXP_LOOT_Tome|r]开始任务|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>接任务: |cRXP_WARN_勇气之书|r
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1649 >>交任务: |cRXP_FRIENDLY_勇气之书|r
    .accept 1650 >>接任务: |cRXP_WARN_勇气之书|r
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>训练你的职业技能
    .target Arthur the Faithful
step << Priest
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    .target Brother Joshua
step << Rogue
.dungeon !DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
step << Rogue
.dungeon !DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 2360 >>接任务: |cRXP_WARN_马迪亚斯和迪菲亚潜行者|r
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target Wu Shen
    .target Ilsa Corbin



----Start of Rogue 20 Quest <1.59x Section----



step << NightElf Rogue
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    >>如果您已经拥有Westfall飞行路线，请飞往那里
    .isOnQuest 2360
step << NightElf Rogue
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fp Westfall >>获取Westfall飞行路线
    .target Thor
    .isOnQuest 2360
step << !NightElf Rogue
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Westfall >>飞往威斯特福尔
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>杀死|cRXP_ENEMY_Pygmy毒液蜘蛛|r和|cRXD_ENEMY_Venom蜘蛛|r。掠夺它们获得|cRXT_Loot_Smal Venom Sac|r和它们的|cRXP_Loot_Gooey蜘蛛腿|r
    >>|cRXP_WARN_您需要一个|cRXP_LOOT_Smal Venom Sac|r来制作一个|r|T134437:0|t[抗毒液]|cRXD_WARN_water来稍后移除|r|T136230:0|t[TTouch of Zanzil]|cRX P_WARN_debuff|r
    >>|cRXP_WARN_保存|cRXP_LOOT_Gooey Spider Legs|r以备以后使用|r
    >>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|cRXP_WARN_friend，您可以跳过此步骤，并要求他们为您删除它|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==注意接下来的部分==|r
    >>|cRXP_WARN_按Escape，然后进入->选项->控制|r
    >>|cRXP_WARN_选中“启用交互键”并将“与目标交互”选项绑定到键|r
    >>|cRXP_WARN_此外，建议您启用敌人铭牌（默认键：V），因为它可以让您看到塔内一些角落后面的敌人|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密探吉尔妮|r
    >>|cRXP_WARN_你必须用你的|r|T132290:0|t[毒药]完成这个任务
    .turnin 2360 >>交任务: |cRXP_FRIENDLY_马迪亚斯和迪菲亚潜行者|r
    .accept 2359 >>接任务: |cRXP_LOOT_克拉文之塔|r
    .target Agent Kearnen
step << Rogue
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
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_如果你还没有装备|r|T135641:0|t[Curvewood匕首]|cRXP_WARN_|r
    .use 15396
    .itemcount 15396,1
step << Rogue
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
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>工艺|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_使用您包中的|T134437:0|t[抗毒]移除|T136230:0|t[Touch of Zanzil]debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_铸造|T136225:0|t[石形]移除|T136230:0|t[赞齐尔之触]debuff|r
    .aura -9991
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞到暴风城
    .target Thor
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>前往|cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|c|r
    .skill firstaid,80 >>|cRXP_WARN_将您的|r|T135966:0|t[急救]|cRXP_WARN_to 80调平|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|c|r
    .train 7934 >>|cRXP_WARN_Train|r|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>工艺|T134437:0|t[抗毒液]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_使用您包中的|T134437:0|t[抗毒]移除|T136230:0|t[Touch of Zanzil]debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    >>|cRXP_WARN_如果您切换到|r|T135641:0|t[匕首]|cRXP_WARN_earlier，请记住重新装备主武器|r << Rogue
    .turnin 2359 >>交任务: |cRXP_FRIENDLY_克拉文之塔|r
    .target Master Mathias Shaw



----End of Rogue 20 Quest <1.59x Section----




step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马库斯·乔纳森将军|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >>交任务: |cRXP_FRIENDLY_送往暴风城的信|r
    .accept 121 >>接任务: |cRXP_WARN_送往暴风城的信|r
step
    #completewith next
    .goto Elwynn Forest,41.80,65.60,60 >>Travel to Goldshire
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠阿古斯|r
	.target Smith Argus
    .turnin 118 >>交任务: |cRXP_FRIENDLY_马掌|r
    .accept 119 >>接任务: |cRXP_WARN_回复弗纳|r
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >>前往亚速拉塔。登上塔楼
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞欧克瑞图斯|r
    .accept 94 >>接任务: |cRXP_LOOT_法师的眼线|r
step
    #label InRR
    #completewith FlyR
    .goto StormwindClassic,66.30,62.30,-1
	.goto Redridge Mountains,6.7,72.4,-1
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
    .fly Redridge >>飞到雷德里奇
    >>|cRXP_WARN_如果你在金郡，从风暴中飞行会更快|r
	>>|cRXP_WARN_如果你在亚速拉塔，只需跑到雷德里奇|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >>交任务: |cRXP_FRIENDLY_回复弗纳|r
    .accept 124 >>接任务: |cRXP_WARN_豺狼人的乱吠|r
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >>接任务: |cRXP_WARN_雏龙的鳞片|r
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Soloman|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >>交任务: |cRXP_FRIENDLY_送往暴风城的信|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼达|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >>交任务: |cRXP_FRIENDLY_希拉里的项链|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员巴伦|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >>交任务: |cRXP_FRIENDLY_卖鱼|r
    .accept 150 >>接任务: |cRXP_LOOT_鱼人偷猎者|r
    .turnin 150 >>交任务: |cRXP_FRIENDLY_鱼人偷猎者|r
step
#optional
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师布雷纳|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >>接任务: |cRXP_WARN_赤脊山炖肉|r
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师布雷纳|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >>接任务: |cRXP_WARN_赤脊山炖肉|r
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >>交任务: |cRXP_FRIENDLY_寻访草药师|r
    .accept 131 >>接任务: |cRXP_WARN_水仙诉衷情|r
step
    #xprate <1.2
	#completewith next
	>>杀死|cRXP_ENEMY_Black Dragon Whelps|r。掠夺它们的|cRXX_Loot_Scales|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #xprate <1.5
    >>杀死|cRXP_ENEMY_Great Goretusk|r。掠夺它们的|cRXD_Loot_ Great Goretosk|r
    >>|cRXP_WARN_保存您掠夺的任何|r|T133970:0|t|cRXP_LOOT_[猪肉块]|r|cRXP-WARN_以及您可以使用它们来升级|r|T133971:0|t[烹饪]|cRXP_WARN_to 50，这是黄昏日后所需的|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .collect 2296,5,92,1
    .mob Great Goretusk
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师布雷纳|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >>接任务: |cRXP_WARN_赤脊山炖肉|r
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
    #xprate <1.2
	#completewith next
	>>杀死|cRXP_ENEMY_Black Dragon Whelps|r。掠夺它们的|cRXX_Loot_Scales|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
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
step
    #xprate <1.2
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>杀死|cRXP_ENEMY_Black Dragon Whelps|r。掠夺它们的|cRXX_Loot_Scales|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达希·帕克|r
    >>|cRXP_FRIENDLY_Darcy |r|cRXP_WARN_在酒店内走来走去|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >>交任务: |cRXP_FRIENDLY_水仙诉衷情|r
step
    #xprate <1.2
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
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >>交任务: |cRXP_FRIENDLY_豺狼人的乱吠|r
    .turnin 122 >>交任务: |cRXP_FRIENDLY_雏龙的鳞片|r
step
    #xprate >1.0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >>交任务: |cRXP_FRIENDLY_豺狼人的乱吠|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >>交任务: |cRXP_FRIENDLY_止水湖上的桥|r
]])

----End of <1.59x Redridge----
----Start of Hunter-only Darkshore/Ashen (Needs to be merged)----

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 0
<< Alliance Hunter
#group RestedXP 联盟 1-20
#name 19-21 黑海岸/灰谷
#next RestedXP联盟20-30\21-23灰谷/石爪

step
    #xprate >1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 3765 >>交任务: |cRXP_FRIENDLY_遥远的旅途|r
    .target Gershala Nightwhisper
    .isOnQuest 3765
    .dungeon DM
step
    #xprate >1.49
    #optional
    #completewith next
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,32.644,80.711
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step
    #xprate >1.49
    #optional
    #completewith next
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r。掠夺它们的|cRXX_Loot_精美螃蟹块|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #xprate >1.49
    .goto 1439,31.690,83.700
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
    #xprate >1.49
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,31.229,85.564
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
    #xprate >1.49
    #label SeaCreatureEnd
    .goto 1439,31.251,87.419
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
    >>|cRXP_WARN_这个任务可能非常困难。使用|cRXP_ENEMY_Murlocs|r 1乘1，否则您可能同时农用多个|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >>|cRXP_WARN_单击此处查看视频指南|r
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    >>|cRXP_WARN_你可能需要等待他重生，或者等待其他人完成护送|r
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
    #optional
    #completewith TheryluneEnd
    >>杀死|cRXP_ENEMY_Twilight门徒|r和|cRXP_ENEMY_暮光之城暴徒|r。为|T133743:0|t[|cRXD_Loot_Book:下面的力量|r]掠夺它们
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
    --  .use 13536
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟瑞露尼|r
    >>|cRXP_WARN_如果她不在，跳过这一步|r
    .accept 945 >>接任务: |cRXP_WARN_护送瑟瑞露尼|r
    .target Therylune
step
    #label TheryluneEnd
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Therylune|r离开大师之光|r
    .complete 945,1 --护送Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #xprate <1.5
    #optional
    .goto 1439,31.251,87.419
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
    >>|cRXP_WARN_这个任务可能非常困难。使用|cRXP_ENEMY_Murlocs|r 1乘1，否则您可能同时农用多个|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >>|cRXP_WARN_单击此处查看视频指南|r
step
    #xprate <1.5
    #optional
    .goto 1439,31.229,85.564
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
    #xprate <1.5
    #optional
    .goto 1439,31.690,83.700
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
    #xprate <1.5
    #optional
    .goto 1439,32.644,80.711
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step
	#xprate <1.5
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
    #xprate <1.5
    .goto Darkshore,41.389,80.565
    >>单击地面上的|cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>交任务: |cRXP_FRIENDLY_传声盒525号|r
    .isOnQuest 1003
step
    #xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃科尔|r
    >>|cRXP_WARN_在和他说话之前，先清除洞穴附近的垃圾|r
    .turnin 993 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
    .accept 994 >>接任务: |cRXP_WARN_杀出重围|r
    .target Volcor
    .isOnQuest 993
step
    #xprate <1.5
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃科尔|r
    >>|cRXP_WARN_在和他说话之前，先清除洞穴附近的垃圾|r
    .accept 994 >>接任务: |cRXP_WARN_杀出重围|r
    .target Volcor
    .isQuestTurnedIn 993
step
	#xprate >1.59
    #optional
    #completewith Escaped
    .goto Darkshore,39.2,43.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵塞拉伊|r
    .accept 990 >>接任务: |cRXP_WARN_灰谷之旅|r
    .target Sentinel Selarin
step
	#xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃科尔|r
    .turnin 993 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
    .accept 995 >>接任务: |cRXP_WARN_偷偷溜走|r
    .target Volcor
    .isOnQuest 993
step
	#xprate >1.49
    #optional
    #label Escaped
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃科尔|r
    .accept 995 >>接任务: |cRXP_WARN_偷偷溜走|r
    .target Volcor
    .isQuestTurnedIn 993
step
	#xprate <1.5
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>护送|cRXP_FRIENDLY_Volcor|r
    >>在离开洞穴后穿过第三个火炬后，一个|cRXP_ENEMY_Blackwood Ursa|r将从两侧产生并攻击|cRXP_FRIENDLY_Volcor|r
    >>走到一半时，一个|cRXP_ENEMY_Blackwood Ursa|r将从两侧产生并攻击|cRXP_FRIENDLY_Volcor|r
    .complete 994,1 --Help Volcor to the road (1)
    .isQuestTurnedIn 993
step
	#xprate >1.49
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_等待RP|r
    .complete 995,1 --Help Volcor escape the cave (1)
    .isQuestTurnedIn 993
step
    #xprate >1.49
    #optional
    #completewith tower
    .equip 15 >>|cRXP_WARN_Re-equip您以前的|r|T133762:0|t[斗篷]
    .itemStat 15,QUALITY,<7
    .isOnQuest 995
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 951 >>交任务: |cRXP_FRIENDLY_玛塞斯特拉遗物|r
    .target Onu
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    >>|cRXP_WARN_如果他不在，跳过这一步。他可能需要25分钟才能重生|r
    .accept 5321 >>接任务: |cRXP_WARN_昏昏欲睡|r
    .target Kerlonian Evershade
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
	#xprate <1.5
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
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>杀死|cRXP_ENEMY_Dark Strand Cultors|r，|cRXD_ENEMY_ Dark StrandAdepts|r，| cRXP__ENEMY_DarkStrand Enforcers |r和|cRXP_ENEMY_深色Strand挖掘机|r。掠夺它们以获得|cRXP_Loot_光辉灵魂宝石|r
    .complete 970,1
    .xp 20
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
	#xprate <1.5
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
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 973 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Delgren the Purifier
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟瑞希尔|r
	.target Therysil
    .goto Ashenvale,22.64,51.91
    .turnin 945 >>交任务: |cRXP_FRIENDLY_护送瑟瑞露尼|r
    .isQuestComplete 945
step
    #xprate <1.59
    #completewith end
    >>最多保存从区域中的|cRXP_ENEMY_Spiders|r中掠夺的6个|cRXP_LOOT_Gooey Spider Legs|r，以备以后使用
    .collect 2251,6,93,1 -- Gooey Spider Legs
step << Hunter
    #xprate <1.59
    .goto Ashenvale,18.010,59.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥林达尔·石鹿|r
    .trainer >>Train your class skills
    .train 5118 >>火车|T132242:0|t[猎豹的侧面]
    .target Alenndaar Lapidaar
step << Hunter
    #xprate <1.59
    .goto Ashenvale,17.976,60.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_波尔温|r
    .trainer >>训练您的宠物技能
    .target Bolyun
--XX Train in darn at 20 on 2x
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
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵塞恩希尔|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >>接任务: |cRXP_WARN_守卫石爪山|r
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法德瑞斯·戈森沙尔|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >>接任务: |cRXP_WARN_石爪峰之旅|r
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱恩·狼行者|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >>接任务: |cRXP_WARN_莱恩的净化|r
    .accept 1054 >>接任务: |cRXP_WARN_解除威胁|r
step << !Dwarf/!Hunter
    #xprate <1.59
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板基姆利雅|r
    .home >>将您的炉石设置为Astranaar
    .target Innkeeper Kimlya
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .turnin 1020 >>交任务: |cRXP_FRIENDLY_奥雷迪尔的药剂|r
    .timer 26,Orendil's Cure RP
    .accept 1033 >>接任务: |cRXP_LOOT_月神之泪|r
step
    #xprate <1.59
    .goto Ashenvale,46.37,46.38
    >>掠夺|cRXP_Loot_Elune的眼泪|r在地上
    .complete 1033,1
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .turnin 1033 >>交任务: |cRXP_FRIENDLY_月神之泪|r
    .timer 17,Elune's Tear RP
    .accept 1034 >>接任务: |cRXP_WARN_星尘废墟|r
step
    #xprate <1.59
    .goto Ashenvale,33.30,67.79
    >>为|cRXP_Loot_Handful of Stardust|r掠夺|cRXP_PICK_Stardust覆盖的衬套|r
    >>|cRXP_WARN_它们的产卵地点遍布全岛|r
    .complete 1034,1
step
    #xprate <1.59
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >>前往山脚
    .goto Ashenvale,31.21,61.60,15 >>爬山时笔直向北跑
step
    #xprate <1.59
    #completewith next
    .goto Ashenvale,27.50,60.76,8 >>爬上火疤神殿入口右侧大树旁的小山
    >>跳过树根，拥抱右侧，以避免暴徒的攻击
step
    #xprate <1.5
    .goto Ashenvale,25.27,60.68
    >>杀死|cRXP_ENEMY_Ilkrud Magthull|r。为他的|cRXX_Loot_Tome|r而掠夺他
    >>|cRXP_ENEMY_伊尔克鲁德·马格鲁尔|r|cRXP_WARN_长法|r|T136221:0|t[伊尔克鲁德的守护者]|cRXP-WARN_这是一个5秒长法，将召唤2名虚空之星。如果你能的话，停止这个施放|r
    >>|cRXP_WARN_如果需要，请清除退出路径，以便在需要时将它们与|cRXP_ENEMY_Succubus|r一起重置。如果你愿意，你可以跳过这个，在23级完成|r
    .complete 973,1
    .link https://www.twitch.tv/videos/1182187763 >>|cRXP_WARN_点击此处查看视频参考|r
	.isOnQuest 973
    .mob Ilkrud Magthrull
step
    #xprate <1.5
    .isQuestComplete 973
    .goto Ashenvale,26.19,38.69
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 973 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔伦|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >>接任务: |cRXP_WARN_远古雕像|r
step
    #xprate <1.59
    #completewith nagas
    >>杀死|cRXP_ENEMY_Wrathtail Nagas|r。掠夺他们的|cRXP_Loot_Heads|r
    >>|cRXP_WARN_还不要刻意完成这件事|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    #xprate <1.59
    .goto Ashenvale,14.20,20.64
    >>偷走地上的|cRXP_Loot_古代雕像|r
    .complete 1007,1
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔伦|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >>交任务: |cRXP_FRIENDLY_远古雕像|r
    .timer 22,The Ancient Statuette RP
    .accept 1009 >>接任务: |cRXP_LOOT_卢泽尔|r
step
    #xprate <1.59
    .goto Ashenvale,6.528,13.361
    >>杀死|cRXP_ENEMY_Ruuzel|r。掠夺她获得佐拉姆的|cRXX_Loot_戒指|r
    >>|cRXP_ENEMY_Ruuzel|r|cRXP_WARN_用|cRXD_ENEMY_Wrathtail Myrmidon|r和|cRXX_ENEMY_Wrathtail Sea Witch|r控制岛屿。杀死其中一个，然后在需要时重置它们|r
    >>|cRXP_WARN_如果您有任何|r|T133717:0|t[炸弹]|cRXP_WARN_/|r[手榴弹]|cRXP_WARN_，您也可以使用它们来拆分拉力|r|cRXP-ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Vespia|r|cRXP_WARN_i女士是一个稀有的后代，如果你看到她，她也会掉落佐拉姆的|cRXP-LOOT_戒指|r|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>|cRXP_WARN_点击此处查看关于“拆分拉动”的视频参考|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #xprate <1.59
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>杀死|cRXP_ENEMY_Ruuzel|r。掠夺她获得佐拉姆的|cRXX_Loot_戒指|r
    >>|cRXP_ENEMY_Ruuzel|r|cRXP_WARN_用|cRXD_ENEMY_Wrathtail Myrmidon|r和|cRXX_ENEMY_Wrathtail Sea Witch|r控制岛屿。杀死其中一个，然后在需要时重置它们|r
    >>|cRXP_ENEMY_Vespia|r|cRXP_WARN_i女士是一个稀有的后代，如果你看到她，她也会掉落佐拉姆的|cRXP-LOOT_戒指|r|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    #xprate <1.59
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>杀死|cRXP_ENEMY_Wrathtail Nagas|r。掠夺他们的|cRXP_Loot_Heads|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔伦|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >>交任务: |cRXP_FRIENDLY_卢泽尔|r
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰洛尼斯的尸体|r
	.target Teronis' Corpse
    .goto Ashenvale,20.31,42.33
    .turnin 991 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
    .accept 1023 >>接任务: |cRXP_WARN_莱恩的净化|r
step
    #xprate <1.59
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>杀死|cRXP_ENEMY_Saltspeettle Murlocs|r。掠夺它们以获得|cRXX_Loot_发光宝石|r
    >>|cRXP_WARN_保存|cRXP_LOOT_Murloc Fins|r以备以后使用|r
    >>|cRXP_WARN_要小心，因为|cRXP_ENEMY_Oracles|r可以治愈，并且每隔几秒钟就有一个90点伤害的瞬间施法电击|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step << Dwarf Hunter
    #xprate <1.59
    .hs >>奥伯丁之炉
step << !Dwarf/!Hunter
    #xprate <1.59
    #softcore
    #completewith next
    .deathskip >>死在湖的东侧，灵魂在阿斯特拉纳尔
step << !Dwarf/!Hunter
    #xprate <1.59
    #hardcore
    #completewith next
    .goto Ashenvale,34.40,48.00,200 >>Travel to Astranaar
step << !Dwarf/!Hunter
    #xprate <1.59
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
    .fly Darkshore>>飞到黑海岸
    .target Daelyshia
step
    #xprate <1.59
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 731 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 741 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
step
    #xprate <1.59
    #completewith end
    .vendor >>补充库存/再补给
step
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 995 >>交任务: |cRXP_FRIENDLY_偷偷溜走|r
    .target Terenthis
    .isOnQuest 995
step
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 994 >>交任务: |cRXP_FRIENDLY_杀出重围|r
    .target Terenthis
    .isOnQuest 994
step
    #xprate <1.59
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4730 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4731 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4732 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4733 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
    .fly Teldrassil >>飞往Teldrassil
	.target Caylais Moonfeather
step
    #xprate <1.59
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Dwarf Hunter
    #xprate <1.59
-- #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 264 >>火车弓
    .train 227 >>火车杆
    .target Ilyenia Moonfire
    .dungeon DM
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 942 >>接任务: |cRXP_WARN_健忘的勘察员|r
step << !Dwarf/!Hunter
    #xprate <1.59
    #label end
    .hs >>赫斯到阿斯特拉纳
step << Dwarf Hunter
    #xprate <1.59
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
    .zoneskip Ashenvale
    .zoneskip Darkshore
step << Dwarf Hunter
    #xprate <1.59
    #label end
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Ashenvale >>飞到灰谷
    .target Vesprystus
    .zoneskip Ashenvale
]])


----End of Hunter-only Darkshore/Ashen (Needs to be merged)----


RXPGuides.RegisterGuide([[
#classic
#version 1
<< Alliance !Hunter
#season 0
#group RestedXP 联盟 1-20
#name 20-21 黑海岸/灰谷
#next RestedXP联盟20-3\21-23 Stonetalon/Ashenvale；RestedXP联盟20-3\21-22 Ashenvale SoD

step << Warlock
    #season 2
    #sticky
    #completewith AshenvaleEnd
    #label ExplorerImp
    >>当你在怪物身上施放|T136163:0|t|cRXP_FRIENDLY_[吸取灵魂]|r，直到你收到一个|T133257:0|t| cRXP_LOOT_探索者的灵魂|r|cRXP-WARN_使用它来学习如何召唤一个|r|T236294:0|t | cRXP-FRIENDLY_[探索者Imp]|r
    .train 445459 >>|cRXP_WARN_Use|r|T133257:0|t|cRXP_LOOT_探索者的灵魂|r|cRXD_WARN_to学习如何召唤|r|T236294:0|t[|cRXT_FRIENDLY_Explorer Imp|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImp << Warlock
    #sticky
    #completewith AshenvaleEnd
    #label FelPortalRune
    >>您所在的区域中存在|cRXP_FRIENDLY_Fel门户|r。如果你找到了一个，请召唤你的|T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]，并在门户旁边与它交谈，将其发送到探险队。10-20分钟后，它将带着战利品返回，并有机会奖励您|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
    >>您所在的区域中存在|cRXP_FRIENDLY_Fel门户|r。如果您找到一个，请使用|T134945:0|t[|cRXP_OOT_Scroll of Spatial Mending|r]关闭它。这将奖励您|T134939:0|t[|cRXP_FRIENDLY_Spell备注：打捆螺栓|r] << Mage
    >>|cRXP_WARN_在你得到符文之前要注意入口|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 428878,1 << Mage
    .train 427733,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRune
    #sticky
    #completewith AshenvaleEnd
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 427733 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r]|cRXP_WARN_学习|r|T136216:0|t[召唤Felguard] << Warlock
    .train 428878 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：打捆螺栓|r|cRXP-WARN_to train|r|T135809:0|t[打捆螺栓] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step << Druid
    #xprate <1.59
	#completewith next
	.cast 18960 >>铸造Teleport:Moonglade
	.zoneskip Moonglade
step << Druid
    #xprate <1.59
    .goto Moonglade,52.53,40.57
	>>前往Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
step
    #xprate <1.59
    #optional
    #completewith TheryluneE
    .hs >>奥伯丁之炉
step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_注意：你必须达到20级才能装备|r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol |r]|cRXP_WARN_这是学习|r|T236167:0|t[野蛮咆哮]所必需的
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>杀死|cRXP_ENEMY_Den Mother|r。为|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]掠夺她
    >>|cRXP_WARN_注意|cRXP_ENEMY_Thistle Cubs|r，它可以让你眩晕2秒|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >>|cRXP_WARN_equp the |r|T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol |r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    #sticky
    .train 407988 >>|cRXP_WARN_从|r|T132152:0|t[Rip]|T132122:0|t[Rake]|cRXP_WARN_or|r|T132131:0|t[撕裂]|cRXP-WARN_to类人类中减去20次流血伤害，然后使用|r|T232942:0|t[[cRXP_FRIENDLY_Ferocious Idol|r]|cRXP_WARN_gain学习|r|T236167:0|t[野蛮咆哮]
    .use 208689
    .itemcount 208689,1
step
    .goto Darkshore,37.21,44.22
    >>单击|cRXP_PICK_Wanted海报|r
    .accept 4740 >>接任务: |cRXP_LOOT_通缉：莫克迪普！|r
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .accept 948 >>接任务: |cRXP_LOOT_安努|r
    .target Barithras Moonshade
step
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .target Archaeologist Hollee
step
    #xprate <1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 3765 >>交任务: |cRXP_FRIENDLY_遥远的旅途|r
    .target Gershala Nightwhisper
    .isOnQuest 3765
--  .dungeon !DM << NightElf Warrior/Mage/Warlock/Rogue
step
    #xprate >1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 3765 >>交任务: |cRXP_FRIENDLY_遥远的旅途|r
    .target Gershala Nightwhisper
    .isOnQuest 3765
    .dungeon !DM << NightElf Warrior/Mage/Warlock/Rogue
step
    .goto 1439,39.373,43.483
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .accept 993 >>接任务: |cRXP_LOOT_丢失的主人|r << !sod
	.target Terenthis
    .isQuestTurnedIn 986
step
    #optional
    #completewith OnuGrove
    >>|cRXP_WARN_如果你装备了|r|T133762:0|t[Enchanted Moonstracker Cloak]|cRXP_WARN_，请确保你保存当前斗篷以备日后使用，因为|r|T133762:0 |t[Enchant Moonstracger Cloak]| cRXP_WARN_i在以后的回合中丢失|r
    .equip 15,5387 >>|cRXP_WARN_装备|r|T133762:0|t[Enchanted Moonstracker斗篷]|cRXP_WARN_I如果它比你现在的斗篷更好|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith Murkdeep
    .goto Darkshore,40.23,81.28,0
    >>杀死|cRXP_ENEMY_Grizzled Thistle Bears|r。掠夺它们的|cRXX_Loot_Scapps|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #optional
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >>古树林之旅
step
    #xprate >1.49
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 951 >>交任务: |cRXP_FRIENDLY_玛塞斯特拉遗物|r
    .target Onu
    .isQuestComplete 951
step
    #xprate >1.49
    #label OnuGrove
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 948 >>交任务: |cRXP_FRIENDLY_安努|r
    .target Onu
    .isOnQuest 948
step
    #xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃科尔|r
    .turnin 993 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
    .accept 995 >>接任务: |cRXP_WARN_偷偷溜走|r
    .timer 20,Escape Through Stealth RP
    .target Volcor
    .isOnQuest 993
step
    #xprate >1.49
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃科尔|r
    .accept 995 >>接任务: |cRXP_WARN_偷偷溜走|r
    .timer 20,Escape Through Stealth RP
    .target Volcor
    .isQuestTurnedIn 993
step
    #xprate >1.49
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_等待RP|r
    .complete 995,1 --Help Volcor escape the cave (1)
    .isOnQuest 995
step
    #xprate >1.49
    #optional
    #completewith Murkdeep
    .equip 15 >>|cRXP_WARN_Re-equip您以前的|r|T133762:0|t[斗篷]
    .itemStat 15,QUALITY,<7
    .isOnQuest 995
step
    #xprate <1.5
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 952 >>交任务: |cRXP_FRIENDLY_古树之林|r << NightElf
    .turnin 948 >>交任务: |cRXP_FRIENDLY_安努|r
    .accept 944 >>接任务: |cRXP_WARN_主宰之剑|r
    .target Onu
step
    #xprate <1.5
    #label MasterG
    .goto Darkshore,38.54,86.05,100 >>大师魅力之旅
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    >>杀死|cRXP_ENEMY_Twilight门徒|r和|cRXP_ENEMY_暮光之城暴徒|r。为|T133743:0|t[|cRXD_Loot_Book:下面的力量|r]掠夺它们
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #xprate <1.5
    #optional
    .goto Darkshore,38.54,86.05
    >>发现大师的魅力
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #xprate <1.5
    #completewith next
    .cast 5809 >>|cRXP_WARN_使用|r|T134715:0|t[干燥系数]|cRXP_WARN_并将其放在地面上|r
    .use 5251
step
    #xprate <1.5
    .goto Darkshore,38.54,86.05
    >>|cRXP_WARN_单击地面上的|cRXP_PICK_Scrying Bowl|r|r
    .turnin 944 >>交任务: |cRXP_FRIENDLY_主宰之剑|r
    .accept 949 >>接任务: |cRXP_LOOT_暮光之锤的营地|r
    .use 5251
step
    #xprate <1.5
    .goto 1439,38.537,86.050
    >>单击北部基座上的|cRXP_PICK_Twilight Tome|r
    .turnin 949 >>交任务: |cRXP_FRIENDLY_暮光之锤的营地|r
    .accept 950 >>接任务: |cRXP_LOOT_向安努回复|r
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟瑞露尼|r
    >>|cRXP_WARN_如果她不在，跳过这一步|r
    .accept 945 >>接任务: |cRXP_WARN_护送瑟瑞露尼|r
    .target Therylune
step
    #label TheryluneEnd
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Therylune|r离开大师之光|r
    .complete 945,1 --护送Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    >>|cRXP_WARN_你可能需要等待他重生，或者等待其他人完成护送|r
    .turnin 729 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷塔维|r
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
    #xprate <1.5
    #optional
    #completewith Murkdeep
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    #optional
    #completewith next
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,32.644,80.711
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step
    #xprate >1.49
    #optional
    #completewith next
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r。掠夺它们的|cRXX_Loot_精美螃蟹块|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #xprate >1.49
    .goto 1439,31.690,83.700
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
    #xprate >1.49
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,31.229,85.564
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
    .goto 1439,31.251,87.419
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
    >>|cRXP_WARN_这个任务可能非常困难。使用|cRXP_ENEMY_Murlocs|r 1乘1，否则您可能同时农用多个|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >>|cRXP_WARN_单击此处查看视频指南|r
step
    #xprate <1.5
    .goto 1439,31.229,85.564
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
    #xprate <1.5
    #optional
    .goto 1439,31.690,83.700
    >>单击|cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >>接任务: |cRXP_WARN_搁浅的海龟|r
step
    #xprate <1.5
    #optional
    .goto 1439,32.644,80.711
    >>单击|cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >>接任务: |cRXP_WARN_搁浅的海洋生物|r
step
    #xprate <1.5
    #optional
    #label Murkdeep
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_确保检查|cRXP_ENEMY_Murkdeep|r是否已经在水中（如果有人之前遭遇失败或将|cRXX_ENEMY_Greymist Hunter|r留在了他生下的波浪中）|r
    >>杀死营地中的|cRXP_ENEMY_Greymist Warriors|r和|cRXX_ENEMY_Graymist Hunters|r
    >>|cRXP_WARN_移动到营地中心的篝火处，开始|cRXP_ENEMY_Murkdeep|r遭遇战：|r
    >>|cRXP_WARN_在杀死前一波后，将从水中产生3波：第1波有3个12-13级|cRXP_ENEMY_Greymist Coasttruners|r，第2波有2个15-16级|cRXP_ENEMY_Greymist Warriors|r；第3波有19级|cR_ENEMY_Murkdeep|r和16-17级|cRX P_ENEMX_Greymist Hunter|r。你可以远离篝火以避免攻击下一波|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #xprate <1.5
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>杀死|cRXP_ENEMY_Encrusted Tide Crawlers |r和|cRXP_ENEMY_Reef Crawlers | r。掠夺它们的|cRXD_Loot_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
	#xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5 --<< !NightElf/Hunter
    .goto Darkshore,41.389,80.565
    >>单击地面上的|cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>交任务: |cRXP_FRIENDLY_传声盒525号|r
    .isOnQuest 1003
step
#xprate <1.5
    #completewith next
    .goto Darkshore,45.00,85.30,30 >>前往洞穴中的|cRXP_FRIENDLY_Volcor|r
step
#xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃科尔|r
    .turnin 993 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
    .accept 995 >>接任务: |cRXP_WARN_偷偷溜走|r
    .timer 20,Escape Through Stealth RP
    .target Volcor
step
#xprate <1.5
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_等待RP|r
    .complete 995,1
    .isOnQuest 995
step
    #xprate <1.5
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 951 >>交任务: |cRXP_FRIENDLY_玛塞斯特拉遗物|r
    .target Onu
    .isQuestComplete 951
step
    #xprate <1.5
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务: |cRXP_FRIENDLY_向安努回复|r
    .target Onu
step
    #xprate <1.5
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    >>|cRXP_WARN_如果他不在，跳过这一步。他可能需要25分钟才能重生|r
    .accept 5321 >>接任务: |cRXP_WARN_昏昏欲睡|r
    .target Kerlonian Evershade
step
    #xprate <1.5
    .goto Darkshore,44.38,76.30
    >>打开|cRXP_PICK_Kerlonian的胸脯|r。为|T134229:0|t[|cRXP_Loot_觉醒之角|r]掠夺它
    .complete 5321,1 -- Horn of Awakening (1)
    .isOnQuest 5321
step -- adjusted to heading there straight from southern most beached sea creature
#xprate >1.49
    #completewith tower
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .goto Ashenvale,25.77,14.55
step
#xprate <1.50
    #completewith tower
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .goto Ashenvale,29.7,13.6
step
#xprate <1.5
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_护送|cRXP_FRIENDLY_Kerlonian|r前往阿申瓦尔的Maestra哨所|r
    .use 13536 >>|cRXP_WARN_使用|r|T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]|cRXP _WARN_whenever|cRXP_FRIENDLY_Kerlonian|r在他旁边睡着|r
    >>|cRXP_WARN_尽量避免在主干道上跑步。只有当你在路上时，敌人才会滋生|r
    .complete 5321,2
    .isOnQuest 5321
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >>交任务: |cRXP_FRIENDLY_昏昏欲睡|r
    .isQuestComplete 5321
step << Paladin
    #season 2
    .goto Ashenvale,26.19,38.69
    >>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    --.accept 970 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .turnin 78088 >>Turn in A Strange Artifact
    .accept 78089 >>Accept Advice From Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step << Paladin
    #season 2
    #label tower
    #optional
    .goto Ashenvale,26.19,38.69
    >>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    --.accept 970 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .accept 78089 >>Accept Advice From Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step << !Warlock
    #season 0,1 << Paladin
	#xprate >1.49
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .target Delgren the Purifier
step
    #season 0,1 << Paladin
	#xprate <1.5 << !Warlock
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 970 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .target Delgren the Purifier
step
    #xprate <1.59
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>接任务: |cRXP_LOOT_巴斯兰的头发|r
    .xp <20,1
step
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>杀死|cRXP_ENEMY_Dark Strand邪教分子|r和|cRXD_ENEMY_ Dark StrandAdepts|r。掠夺他们获得|cRXP_Loot_光辉灵魂宝石|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    #xprate <1.59
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>打开地下的|cRXP_PICK_Plant Bundles|r。偷走它们|cRXP_Loot_Bathran的头发|r
    >>|cRXP_WARN_它们看起来像棕色的小袋子，可以部分埋入地下。它们可能很难看到|r
    >>|cRXP_WARN_确保您已|r|T134916:0|t[Track Herb]|cRXP_WARN_enabled，以便在最小地图上看到它们|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #xprate <1.59
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>打开地下的|cRXP_PICK_Plant Bundles|r。偷走它们|cRXP_Loot_Bathran的头发|r
    >>|cRXP_WARN_它们看起来像棕色的小袋子，可以部分埋入地下。它们可能很难看到|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #xprate <1.59
    #optional
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .turnin 1010 >>交任务: |cRXP_FRIENDLY_巴斯兰的头发|r
    .accept 1020 >>接任务: |cRXP_LOOT_奥雷迪尔的药剂|r
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    #xprate <1.59
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .accept 1020 >>接任务: |cRXP_LOOT_奥雷迪尔的药剂|r
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 973 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
step
    #xprate <1.59
    .goto Ashenvale,31.89,22.53
    .xp 20 >>升级到20级
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .accept 1010 >>接任务: |cRXP_LOOT_巴斯兰的头发|r
    .target Orendil Broadleaf
step
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>打开地下的|cRXP_PICK_Plant Bundles|r。偷走它们|cRXP_Loot_Bathran的头发|r
    >>|cRXP_WARN_它们看起来像棕色的小袋子，可以部分埋入地下。它们可能很难看到|r
    >>|cRXP_WARN_确保您已|r|T134916:0|t[Track Herb]|cRXP_WARN_enabled，以便在最小地图上看到它们|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>打开地下的|cRXP_PICK_Plant Bundles|r。偷走它们|cRXP_Loot_Bathran的头发|r
    >>|cRXP_WARN_它们看起来像棕色的小袋子，可以部分埋入地下。它们可能很难看到|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .turnin 1010 >>交任务: |cRXP_FRIENDLY_巴斯兰的头发|r
    .accept 1020 >>接任务: |cRXP_LOOT_奥雷迪尔的药剂|r
    .target Orendil Broadleaf
step
    #xprate >1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟瑞希尔|r
	.target Therysil
    .goto Ashenvale,22.64,51.91
    .turnin 945 >>交任务: |cRXP_FRIENDLY_护送瑟瑞露尼|r
    .isQuestComplete 945
step
    #optional
    #completewith TZS
    .subzone 415 >>Travel to Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
    .fp Astranaar >>获取Astranaar飞行路线
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德瑞尔·速火|r
    .accept 1008 >>接任务: |cRXP_WARN_佐拉姆海岸|r
    .target Shindrell Swiftfire
step
    #xprate <1.59
    .goto Ashenvale,34.89,49.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵塞恩希尔|r
    .accept 1070 >>接任务: |cRXP_WARN_守卫石爪山|r
    .target Sentinel Thenysil
step
    #xprate <1.59
    .goto Ashenvale,35.76,49.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法德瑞斯·戈森沙尔|r
    .accept 1056 >>接任务: |cRXP_WARN_石爪峰之旅|r
    .target Faldreas Goeth'Shael
step
    #xprate <1.59
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱恩·狼行者|r
    .accept 991 >>接任务: |cRXP_WARN_莱恩的净化|r
    .accept 1054 >>接任务: |cRXP_WARN_解除威胁|r
    .target Raene Wolfrunner
step << !Warlock
    #xprate <1.59
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板基姆利雅|r
    .home 415 >>将您的炉石设置为Astranaar
    .target Innkeeper Kimlya
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .turnin 1020 >>交任务: |cRXP_FRIENDLY_奥雷迪尔的药剂|r
    .timer 26,Orendil's Cure RP
    .accept 1033 >>接任务: |cRXP_LOOT_月神之泪|r
]])
