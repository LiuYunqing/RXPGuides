local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6北郡
#version 1
#group RestedXP 联盟 1-20
#defaultfor Human
#next 6-11埃尔文森林


step << !Human
    #completewith next
    +您已经选择了一个针对人类的指南。你应该选择与你开始时相同的起始区域
step << Mage
    #completewith next
    +请注意，您已经选择了单个目标法师向导。单一目标比奥法师安全得多，但速度慢得多
step << !Human Mage
    #season 2
    #completewith next
    +在探索季节，你不应该以法师的身份在比赛的起跑区外起跑，因为你将无法在这里获得你的第一个符文（|T135844:0|t[Ice Lance]）
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >>摧毁: |cRXP_ENEMY_炉石|r, 它在你的背包中. 不再需要它了
step << Warlock
    #season 2
    #sticky
    #label WarlockVendor << Human
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹恩·温斯洛|r
    .vendor >>|cRXP_WARN_出售你们的防弹衣、衬衫、裤子和靴子，以及包里的食物和水。你总共需要10美分|r
    .target Dane Winslow
step << Human Warlock
    #season 2
    #loop
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0  
    .goto 1429,46.465,38.272,45,0
    .goto 1429,45.896,38.013,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,49.052,38.270,45,0
    .goto 1429,48.362,37.582,45,0
    .goto 1429,47.136,37.636,45,0
    .goto 1429,46.870,36.906,45,0
    .goto 1429,46.476,37.034,45,0
    .xp 2 >>升级到2级
    .mob Young Wolf
step << Warlock
    #season 0,1
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹恩·温斯洛|r
    .vendor >>|cRXP_WARN_出售你们的防弹衣、衬衫、裤子和靴子，以及包里的食物和水。你总共需要10美分|r
    .target Dane Winslow
step << Warlock
    #season 0,1
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .accept 1598 >>接任务: |cRXP_LOOT_失窃的典籍|r
    .train 348 >>火车|T135817:0|t[献祭]
    .target Drusilla La Salle
step << Warlock
    #season 2
    #requires WarlockVendor << Human
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .accept 1598 >>接任务: |cRXP_LOOT_失窃的典籍|r
    .accept 77621 >>Accept Stolen Power << Human
    .train 348 >>火车|T135817:0|t[献祭]
    .target Drusilla La Salle
step << Warlock
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_在前往|r|cRXP_PICK_Defias Stashbox的途中，尽可能多地小心避开|cRXP_ENEMY_Defias Thugs|r|r
    >>|cRXP_WARN_杀死|r|cRXP_PICK_Defias Stashbox周围的|cRXP_ENEMY_Defias Thugs|r|r
    >>|cRXP_WARN_打开地面上的|cRXP_PICK_Defias Stashbox|r。为|r|T134419:0|t|cRXP_Loot_[闹鬼符文]掠夺它|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    #label RoH
    .train 403919 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[闹鬼符文]|r|cRXP-WARN_学习|r|T236298:0|t[闹鬼]
    .use 205230
    .itemcount 205230,1
step << Warlock
    #hardcore
--   .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_跑进Defias营地的帐篷|r
    >>打开|cRXP_PICK_Stolen Books|r。掠夺它以获得|cRXP_Loot_虚空的力量|r
    >>|cRXP_WARN_你可以在帐篷内安全地掠夺|cRXP_loot_虚空之力|r！观看有关如何做到这一点的视频|r
    .link https://youtu.be/3qQwsJhAZIk >>|cRXP_WARN_点击此处查看视频参考|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #hardcore
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    >>|cRXP_WARN_留在帐篷里，这样|cRXP_ENEMY_Defias Thugs|r就不会打你|r
    .hs >>Hearth到Northshire Valley
step << Warlock
    #softcore
--  .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_跑进Defias营地的帐篷|r
    >>打开|cRXP_PICK_Stolen Books|r。掠夺它以获得|cRXP_Loot_虚空的力量|r
    >>|cRXP_WARN_你可以在帐篷内安全地掠夺|cRXP_loot_虚空之力|r！观看有关如何做到这一点的视频|r
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>|cRXP_WARN_点击此处查看视频参考|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >>在精神治疗师处死亡并重生
    .target Spirit Healer
step << Warlock
    #season 0,1
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .turnin 1598 >>交任务: |cRXP_FRIENDLY_失窃的典籍|r
    .target Drusilla La Salle
step << Warlock
    #season 2
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .turnin 1598 >>交任务: |cRXP_FRIENDLY_失窃的典籍|r
    .turnin 77621 >>Turn in Stolen Power << Human
    .target Drusilla La Salle
step << Human Warlock
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >>|cRXP_WARN_Equip the |r|T132961:0|t[纹身布手套]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .itemStat 10,LEVEL,<5
    .train 403919,3
step << Human Warlock
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Engrave your |r|T132961:0|t[纹身布手套]|cRXP_WARN_with|r|T236298:0|t[Haunt]
    .train 403919,3
step << Warlock
    #optional
    #completewith next
    .cast 688 >>|cRXP_WARN_Cast|r|T136218:0|t[召唤冲击]
    .usespell 688
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .accept 783 >>接任务: |cRXP_LOOT_身边的危机|r
    .target Deputy Willem
step << Warrior
    #xprate <1.59
    .goto Elwynn Forest,46.4,40.3,35,0
    >>杀死|cRXP_ENEMY_Young Wolves|r，直到你拥有价值10c+的供应商垃圾
    >>|cRXP_WARN_您将训练|r|T132333:0|t[战斗呐喊]|cRXP_WARN_这将提高早期调平速度|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹尼尔修士|r
    .vendor >>|cRXP_WARN_供应商垃圾|r
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尼·拜舍尔|r, 他在楼下
    .train 6673 >>火车|T132333:0|t[战斗呐喊]
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
    .target Brother Danil
    .target Llane Beshere
step
    #label Within
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 783 >>交任务: |cRXP_FRIENDLY_身边的危机|r
    .accept 7 >>接任务: |cRXP_WARN_剿灭狗头人|r
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .accept 5261 >>接任务: |cRXP_LOOT_伊根·派特斯金纳|r
    .target Deputy Willem
step
    #label EaganWolves
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .turnin 5261 >>交任务: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .accept 33 >>接任务: |cRXP_WARN_林中的群狼|r
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|cRXP_WARN_一旦你有价值50厘米的供应商垃圾：|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹尼尔修士|r
    >>供应商垃圾箱
    >>|cRXP_BUY_向他购买10|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #sticky
    #label WolfMeatEnd
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0  
    .waypoint 1429,49.052,38.270,45,0
    .waypoint 1429,48.362,37.582,45,0
    .waypoint 1429,47.136,37.636,45,0
    .waypoint 1429,46.870,36.906,45,0
    .waypoint 1429,46.476,37.034,45,0
    .waypoint 1429,46.465,38.272,45,0
    .waypoint 1429,45.896,38.013,45,0
    .waypoint 1429,45.708,38.720,45,0
    .waypoint 1429,46.302,39.994,45,0
    .waypoint 1429,45.718,40.733,45,0
    .waypoint 1429,46.399,41.838,45,0
    .waypoint 1429,46.741,40.987,45,0
    .waypoint 1429,47.703,40.299,45,0
    .waypoint 1429,47.976,39.422,45,0
    >>杀死|cRXP_ENEMY_Young Wolves|r和|cRXD_ENEMY_Timber Wolves |r。掠夺它们的|cRXP_OOT_Tough Wolf Meat|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
	.mob Timber Wolf
step
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>杀死|cRXP_ENEMY_Kobold Vermins|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >>升级到720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .turnin 33,2 >>交任务: |cRXP_FRIENDLY_林中的群狼|r << Warrior/Paladin/Rogue
    .turnin 33,1 >>交任务: |cRXP_FRIENDLY_林中的群狼|r << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step
    #xprate >1.59
    #optional
    #loop
    .goto 1429,45.718,40.733,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,45.896,38.013,45,0
    .xp 3+1060 >>升级到1060+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith CleanupEnd
    +|cRXP_WARN_升级并出售垃圾，直到你有1s 35c|r
    .money >0.0135
    .train 100,1 << Warrior --Charge
    .train 20271,1 << Paladin --Judgement
    .isOnQuest 7
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹尼尔修士|r
    >>供应商垃圾箱
    >>|cRXP_BUY_再买10个|r|T132794:0|t[清泉水]|cRXP_Buy_|r
    >>|cRXP_WARN_请确保保存10c或更多以备日后使用|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << !Priest !Mage !Warlock !Rogue
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高德瑞克·洛斯迦|r
    .vendor >>供应商垃圾箱
    .target Godric Rothgar
step << Rogue
    #season 0,1
    .goto Elwynn Forest,47.240,41.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚努斯·哈默纳克|r
    .vendor 78 >>|cRXP_BUY_如果你买得起，就从他那里买一个|r|T135650:0|t[Dirk]|cRXP_Buy_|r
    .collect 2139,1 -- Dirk (1)
    .disablecheckbox
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step << Rogue
    #season 0,1
    #completewith next
    +|cRXP_WARN_调用|r|T135650:0|t[Dirk]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step
    #label CleanupEnd
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 7 >>交任务: |cRXP_FRIENDLY_剿灭狗头人|r
    .accept 15 >>接任务: |cRXP_WARN_回音山调查行动|r
    .accept 3100 >>接任务: |cRXP_LOOT_简要的信件|r << Warrior
    .accept 3101 >>接任务: |cRXP_WARN_圣洁信件|r << Paladin
    .accept 3102 >>接任务: |cRXP_WARN_密文信件|r << Rogue
    .accept 3103 >>接任务: |cRXP_WARN_神圣信件|r << Priest
    .accept 3104 >>接任务: |cRXP_LOOT_雕文信件|r << Mage
    .accept 3105 >>接任务: |cRXP_LOOT_被污染的信件|r << Warlock
    .target Marshal McBride
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith next
    +|cRXP_WARN_升级并出售垃圾，直到你有2s 10c|r
    .money >0.0210
    .train 100,1 << Warrior --Charge
    .train 20271,1 << Paladin --Judgement



----Start of 2x level 4 training----




step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>前往楼上|cRXP_FRIENDLY_Khelden Bremen |r
step << Mage
    #xprate >1.59
    #season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r, 他在楼上
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >>交任务: |cRXP_FRIENDLY_雕文信件|r
    .trainer >>训练你的职业技能
    .target Khelden Bremen
step << Mage
    #xprate >1.59
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r, 他在楼上
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >>交任务: |cRXP_FRIENDLY_雕文信件|r
    .accept 77620 >>Accept Spell Research << Human Mage
    .trainer >>训练你的职业技能
    .target Khelden Bremen
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>朝楼下的|cRXP_FRIENDLY_Priestess Anetta|r行驶
step << Priest
    #xprate >1.59
    #season 0,1
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师安妮塔|r, 他在楼下
    .turnin 3103 >>交任务: |cRXP_FRIENDLY_神圣信件|r
    .trainer >>训练你的职业技能
    .target Priestess Anetta
step << Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师安妮塔|r, 他在楼下
    .turnin 3103 >>交任务: |cRXP_FRIENDLY_神圣信件|r
    .accept 77619 >>Accept Meditation on the Light << Human Priest
    .trainer >>训练你的职业技能
    .target Priestess Anetta
step << Warrior/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>前往|cRXP_FRIENDLY_Llane Beshere|r楼下 << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>朝楼下的|cRXP_FRIENDLY_Brother Sammuel|r行驶 << Paladin
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尼·拜舍尔|r, 他在楼下
    .turnin 3100 >>交任务: |cRXP_FRIENDLY_简要的信件|r
    .trainer >>训练你的职业技能
    .target Llane Beshere
step << Warrior
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尼·拜舍尔|r, 他在楼下
    .turnin 3100 >>交任务: |cRXP_FRIENDLY_简要的信件|r
    .accept 77616 >>Accept The Lost Rune << Human
    .trainer >>训练你的职业技能
    .target Llane Beshere
step << Paladin
    #xprate >1.59
    #season 0,1
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨缪尔修士|r
    .turnin 3101 >>交任务: |cRXP_FRIENDLY_圣洁信件|r
    .trainer >>训练你的职业技能
    .target Brother Sammuel
step << Paladin
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨缪尔修士|r
    .turnin 3101 >>交任务: |cRXP_FRIENDLY_圣洁信件|r
    .accept 77617 >>Accept Relics of the Light << Human Paladin
    .train 20271 >>训练你的职业技能
    .target Brother Sammuel
step << Priest/Warrior
    #xprate >1.59
    #season 2
    #optional
    #completewith RuneWorkers
    .goto 1429,48.198,41.890,12 >>Exit Northshire Abbey
step << Priest
    #xprate >1.59
    #season 2
    #loop
    #sticky
    #label Memory
    .goto 1429,47.813,31.456,0
    .goto 1429,48.597,27.641,0
    .goto 1429,50.342,27.011,0
    .waypoint 1429,47.813,31.456,30,0
    .waypoint 1429,47.886,30.755,30,0
    .waypoint 1429,48.440,29.480,30,0
    .waypoint 1429,48.287,28.397,30,0
    .waypoint 1429,48.597,27.641,30,0
    .waypoint 1429,48.695,26.498,30,0
    .waypoint 1429,49.498,25.840,30,0
    .waypoint 1429,50.143,25.864,30,0
    .waypoint 1429,50.342,27.011,30,0
    >>杀死回声岭矿井内的|cRXP_ENEMY_Kobold Labours|r。为|T136222:0|t|cRXP_Loot_[故障助手的记忆]|r掠夺它们
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .mob Kobold Laborer
    .train 402862,1
step << Priest/Warrior
    #xprate >1.59
    #season 2
    #label RuneWorkers
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>杀死|cRXP_ENEMY_Kobold Workers |r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step << Warrior
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto 1429,48.086,30.502,20,0
    .goto 1429,48.379,29.579,20,0
    .goto 1429,48.336,28.597,20,0
    .goto 1429,48.679,26.618,20,0
    .goto 1429,49.919,25.792,20,0
    .goto 1429,50.639,27.274,15 >>前往回声岭矿井内的|cRXP_PICK_Kobold Stashbox|r
    .train 403470,1
step << Warrior
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.640,27.276
    >>打开地面上的|cRXP_PICK_Kobold Stashbox|r。为|T134419:0|t|cRXP_Loot_[胜利冲刺符文]|r掠夺它
    .collect 204806,1 -- Rune of Victory Rush (1)
    .train 403470,1
step << Warrior
    #xprate >1.59
    #season 2
    .train 403470 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[胜利冲刺符文]|r|cRXP_WARN_学习|r|T132342:0|t[胜利冲刺]
    .use 204806
    .itemcount 204806,1 -- Rune of Victory Rush (1)
step << Warrior
    #xprate >1.59
    #season 2
    #optional
    #completewith EarlyWorker
    .goto 1429,50.626,27.209
    .subzone 9 >>|cRXP_WARN_跳到Minecart上的灯顶上。通过注销并重新登录来执行注销跳过|r
    .subzoneskip 34,1 --Echo Ridge Mine
step << Priest
    #xprate >1.59
    #season 2
    #optional
    #requires Memory
    #completewith EarlyWorker
    .goto 1429,50.626,27.209,-1
    .goto 1429,48.646,29.703,-1
    .subzone 9 >>|cRXP_WARN_跳到灯顶上。通过注销并重新登录来执行注销跳过|r
    .subzoneskip 34,1 --Echo Ridge Mine
    .train 402862,1
step
    #xprate >1.59
--  #season 2
    #requires Memory << Priest --Season 2
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r, 他在外面
    .accept 18 >>接任务: |cRXP_WARN_潜行者兄弟会|r
    .target Deputy Willem
step << Warrior/Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官玛克布莱德|r, 他在里面
    .turnin 15 >>交任务: |cRXP_FRIENDLY_回音山调查行动|r
    .accept 21 >>接任务: |cRXP_WARN_回音山清剿行动|r
    .target Marshal McBride
step << Paladin
    #xprate >1.59
    #season 2
    #loop
    #sticky
    #label EarlyLibram1
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .waypoint Elwynn Forest,52.55,48.79,30,0
    .waypoint Elwynn Forest,53.89,50.52,30,0
    .waypoint Elwynn Forest,55.09,49.00,30,0
    .waypoint Elwynn Forest,55.43,45.87,30,0
    .waypoint Elwynn Forest,53.86,47.05,30,0
    >>杀死|cRXP_ENEMY_Defias Thugs |r。为|T134916:0|t|cRXP_Loot_[审判自由]|r掠夺它们
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 410002,1
step << Paladin
    #xprate >1.59
    #season 2
    #sticky
    #label EarlyLibram2
    #requires EarlyLibram1
    .equip 18,205420 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[审判自由]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
step << Paladin
    #xprate >1.59
    #season 2
    #loop
    #sticky
    #label EarlyLibram3
    #requires EarlyLibram2
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .waypoint Elwynn Forest,53.86,47.05,30,0
    .waypoint Elwynn Forest,55.43,45.87,30,0
    .waypoint Elwynn Forest,55.09,49.00,30,0
    .waypoint Elwynn Forest,53.89,50.52,30,0
    .waypoint Elwynn Forest,52.55,48.79,30,0
    .aura 408828 >>|cRXP_WARN_施放|r|T135959:0|t[判断]|cRXP_WARN_10次获得|r|T136116:0|t[启发]|cRX P_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #xprate >1.59
    #season 2
    #sticky
    #label EarlyLibram4
    #requires EarlyLibram3
    .cast 409920 >>|cRXP_WARN_使用|r|T134916:0|t|cRXP_LOOT_[审判自由]|r|cRXP_WARN_学习|r|T135891:0|t[十字军打击]
    .use 205420
    .aura -408828
    .train 410002,1
step << Rogue
    #xprate >1.59
    #season 2
    #sticky
    #label Shadowstrike1
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_打开地面上的|cRXP_PICK_Defias Stashbox|r。为|r|T134419:0|t|cRXP_Loot_[暗影之符文]掠夺它|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #xprate >1.59
    #season 2
    #sticky
    #requires Shadowstrike1
    #label Shadowstrike2
    .train 400105 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[影击符文]|r|cRXP_WARN_学习|r|T132291:0|t[影击]
    .use 204795
    .itemcount 204795,1
step << Paladin/Rogue
    #xprate >1.59
    #season 2
    #loop
    #label EarlyRedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>杀死|cRXP_ENEMY_Defias Thugs |r。掠夺他们的|cRXX_Loot_红色粗麻布绷带|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Rogue
    #xprate >1.59
    #season 2
    #requires Shadowstrike2
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔里克·克里丹|r
    .turnin 3102 >>交任务: |cRXP_FRIENDLY_密文信件|r
    .accept 77618 >>Accept Thrice Stolen << Human
    .turnin 77618 >>Turn in Thrice Stolen << Human
    .train 1784 >>列车|T132320:0|t[隐形]
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .target Jorik Kerridan
step << Human Rogue
    #xprate >1.59
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,2125 >>|cRXP_WARN_Equip the |r|T132952:0|t[破裂皮手套]
    .use 2125
    .itemcount 2125,1 --Cracked Leather Gloves (1)
    .itemStat 10,LEVEL,<5
    .train 400105,3
step << Human Rogue
    #xprate >1.59
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Engrave your |r|T132952:0|t[Cracked Leather Glove]|cRXP_WARN_with|r|T132291:0|t[Shadowstrike]
    .train 400105,3
step << Paladin
    #xprate >1.59
    #season 2
    #softcore
    #completewith next
    #requires EarlyLibram4
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
-- .subzoneskip 59,1
step << Paladin/Rogue
    #xprate >1.59
    #season 2
    #requires Shadowstrike2 << Rogue
    #requires EarlyLibram4 << Paladin
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .turnin 18,1 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Rogue
    .turnin 18,4 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Paladin
--  .accept 3903 >>接任务: |cRXP_LOOT_米莉·奥斯沃斯|r
    .accept 6 >>接任务: |cRXP_WARN_加瑞克·帕德弗特的赏金|r
    .target Deputy Willem
step << Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,5579 >>装备|T133052:0|t[民兵战锤]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,2224 >>装备民兵匕首
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|cRXP_WARN_在Northshire Abbey内键入/跪在聊天框中|r
    >>|cRXP_WARN_您将收到|r|T135934:0|t[对光的冥想]|cRXP_WARN_buff|r
    .train 402862 >>|cRXP_WARN_使用|r|T136222:0|t|cRXP_LOOT_[有问题的助手的记忆]|r|cRXP_WARN_当你拥有|r|T135934:0|t[光上的冥想]|cRXP-WARN_buff来学习|r|T237545:0|t[忏悔]
    .use 205951
    .itemcount 205951,1
step << Human Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>朝楼下的|cRXP_FRIENDLY_Priestess Anetta|r行驶
step << Human Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师安妮塔|r
    .accept 5623 >>接任务: |cRXP_WARN_圣光的恩赐|r
    .turnin 77619 >>Turn in Meditation on the Light
    .target Priestess Anetta
    .isOnQuest 77619
    .xp <5,1
step << Human Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师安妮塔|r
    .turnin 77619 >>Turn in Meditation on the Light
    .target Priestess Anetta
    .isOnQuest 77619
    .xp >5,1
step << Human Priest
    #xprate >1.59
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >>|cRXP_WARN_Equip the |r|T132961:0|t[纹身布手套]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .itemStat 10,LEVEL,<5
    .train 402862,3
step << Human Priest
    #xprate >1.59
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Engrave your |r|T132961:0|t[纹身布手套]|cRXP_WARN_with|r|T237545:0|t[Penance]
    .train 402862,3
step << Human Warrior/Human Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>前往|cRXP_FRIENDLY_Llane Beshere|r楼下 << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>朝楼下的|cRXP_FRIENDLY_Brother Sammuel|r行驶 << Paladin
step << Human Warrior
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尼·拜舍尔|r, 他在楼下
    .turnin 77616 >>Turn in The Lost Rune
    .target Llane Beshere
    .isOnQuest 77616
step << Human Paladin
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨缪尔修士|r, 他在楼下
    .turnin 77617 >>Turn in Relics of the Light
    .target Brother Sammuel
    .isOnQuest 77617
step << Human Warrior/Human Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    #label GlovesEquip
    .equip 10,2385 >>|cRXP_WARN_装备|r|T132938:0|t|cRXP_LOOT_[柏油链手套]|r
    .use 2385
    .itemcount 2385,1
    .train 403470,3 << Warrior
    .train 410002,3 << Paladin
    .itemStat 10,LEVEL,<5
step << Human Warrior/Human Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    #requires GlovesEquip
    .engrave 10 >>|cRXP_WARN_Engrave the |r|T132938:0|t|cRXP_LOOT_[柏油链手套]|r|cRXP_WARN_with|r|T132342:0|t[胜利冲刺] << Warrior
    .engrave 10 >>|cRXP_WARN_保存|r|T132938:0|t|cRXP_LOOT_[柏油链手套]|r|cRXP_WARN_with|r|T135891:0|t[十字军打击] << Paladin
    .train 403470,3 << Warrior
    .train 410002,3 << Paladin
    .itemStat 10,LEVEL,<5
step << Human Paladin/Warrior/Priest
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto 1429,48.279,42.171,8 >>Exit Northshire Abbey
    .isQuestTurnedIn 15 << Warrior/Priest
    .isQuestTurnedIn 18 << Paladin
step << Warlock
    #xprate >1.59
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .turnin 3105 >>交任务: |cRXP_FRIENDLY_被污染的信件|r
    .train 172 >>列车|T136118:0|t[腐败]
    .target Drusilla La Salle



----End of 2x training section----



step << Priest
    #xprate <1.59
    #season 2
    #loop
    #sticky
    #label Memory
    .goto 1429,47.813,31.456,0
    .goto 1429,48.597,27.641,0
    .goto 1429,50.342,27.011,0
    .waypoint 1429,47.813,31.456,30,0
    .waypoint 1429,47.886,30.755,30,0
    .waypoint 1429,48.440,29.480,30,0
    .waypoint 1429,48.287,28.397,30,0
    .waypoint 1429,48.597,27.641,30,0
    .waypoint 1429,48.695,26.498,30,0
    .waypoint 1429,49.498,25.840,30,0
    .waypoint 1429,50.143,25.864,30,0
    .waypoint 1429,50.342,27.011,30,0
    >>杀死回声岭矿井内的|cRXP_ENEMY_Kobold Labours|r。为|T136222:0|t|cRXP_Loot_[故障助手的记忆]|r掠夺它们
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .mob Kobold Laborer
    .train 402862,1
step << Priest/Warrior
    #xprate <1.59
    #season 2
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>杀死|cRXP_ENEMY_Kobold Workers |r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step
    #season 0,1 << Priest/Warrior
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>杀死|cRXP_ENEMY_Kobold Workers |r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker



----Start of 1x train section----




step
    #xprate <1.59
    #requires Memory << Priest --Season 2
    #sticky
    #label xp3
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0  
    .goto 1429,46.465,38.272,45,0
    .goto 1429,45.896,38.013,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,49.052,38.270,45,0
    .goto 1429,48.362,37.582,45,0
    .goto 1429,47.136,37.636,45,0
    .goto 1429,46.870,36.906,45,0
    .goto 1429,46.476,37.034,45,0
    .xp 3+1110 >>升级到1110+/1400xp
step << Warrior
    #xprate <1.59
    #season 2
    #optional
    #completewith next
    .goto 1429,48.086,30.502,20,0
    .goto 1429,48.379,29.579,20,0
    .goto 1429,48.336,28.597,20,0
    .goto 1429,48.679,26.618,20,0
    .goto 1429,49.919,25.792,20,0
    .goto 1429,50.639,27.274,15 >>前往回声岭矿井内的|cRXP_PICK_Kobold Stashbox|r
    .train 403470,1
step << Warrior
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,50.640,27.276
    >>打开地面上的|cRXP_PICK_Kobold Stashbox|r。为|T134419:0|t|cRXP_Loot_[胜利冲刺符文]|r掠夺它
    .collect 204806,1 -- Rune of Victory Rush (1)
    .train 403470,1
step << Warrior
    #xprate <1.59
    #season 2
    .train 403470 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[胜利冲刺符文]|r|cRXP_WARN_学习|r|T132342:0|t[胜利冲刺]
    .use 204806
    .itemcount 204806,1 -- Rune of Victory Rush (1)
step << Warrior
    #xprate <1.59
    #season 2
    #optional
    #completewith Investigate
    .goto 1429,50.626,27.209
    .subzone 9 >>|cRXP_WARN_跳到Minecart上的灯顶上。通过注销并重新登录来执行注销跳过|r
    .subzoneskip 34,1 --Echo Ridge Mine
step << Warrior
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r, 他在外面
    .accept 18 >>接任务: |cRXP_WARN_潜行者兄弟会|r
    .target Deputy Willem
step
    #xprate <1.59
    #season 0,1 << Warrior
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高德瑞克·洛斯迦|r
    .vendor >>|cRXP_WARN_供应商垃圾|r
    .target Godric Rothgar
--N need SoM xp note
step
    #xprate <1.59
    #requires xp3
    #label Investigate
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 15 >>交任务: |cRXP_FRIENDLY_回音山调查行动|r
    .accept 21 >>接任务: |cRXP_WARN_回音山清剿行动|r
    .target Marshal McBride
step << Mage
    #xprate <1.59
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>前往楼上|cRXP_FRIENDLY_Khelden Bremen |r
step << Mage
    #xprate <1.59
    #season 0,1
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r, 他在楼上
    .turnin 3104 >>交任务: |cRXP_FRIENDLY_雕文信件|r
    .trainer >>训练你的职业技能
    .target Khelden Bremen
step << Mage
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r, 他在楼上
    .turnin 3104 >>交任务: |cRXP_FRIENDLY_雕文信件|r
    .accept 77620 >>Accept Spell Research << Human
    .trainer >>训练你的职业技能
    .target Khelden Bremen
step << Priest
    #xprate <1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>朝楼下的|cRXP_FRIENDLY_Priestess Anetta|r行驶
step << Priest
    #xprate <1.59
    #season 0,1
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师安妮塔|r, 他在楼下
    .turnin 3103 >>交任务: |cRXP_FRIENDLY_神圣信件|r
    .trainer >>训练你的职业技能
    .target Priestess Anetta
step << Priest
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师安妮塔|r, 他在楼下
    .turnin 3103 >>交任务: |cRXP_FRIENDLY_神圣信件|r
    .accept 77619 >>Accept Meditation on the Light << Human
    .turnin 77619 >>Turn in Meditation on the Light << Human
    .trainer >>训练你的职业技能
    .target Priestess Anetta
    .xp >5,1
step << Priest
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师安妮塔|r, 他在楼下
    .turnin 3103 >>交任务: |cRXP_FRIENDLY_神圣信件|r
    .accept 5623 >>接任务: |cRXP_WARN_圣光的恩赐|r
    .accept 77619 >>Accept Meditation on the Light << Human
    .turnin 77619 >>Turn in Meditation on the Light << Human
    .trainer >>训练你的职业技能
    .target Priestess Anetta
    .xp <5,1
step << Human Priest
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >>|cRXP_WARN_Equip the |r|T132961:0|t[纹身布手套]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .itemStat 10,LEVEL,<5
    .train 402862,3
step << Human Priest
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Engrave your |r|T132961:0|t[纹身布手套]|cRXP_WARN_with|r|T237545:0|t[Penance]
    .train 402862,3
step << Warrior/Paladin
    #xprate <1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>前往|cRXP_FRIENDLY_Llane Beshere|r楼下 << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>朝楼下的|cRXP_FRIENDLY_Brother Sammuel|r行驶 << Paladin
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尼·拜舍尔|r, 他在楼下
    .turnin 3100 >>交任务: |cRXP_FRIENDLY_简要的信件|r
    .trainer >>训练你的职业技能
    .target Llane Beshere
step << Warrior
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尼·拜舍尔|r, 他在楼下
    .turnin 3100 >>交任务: |cRXP_FRIENDLY_简要的信件|r
    .accept 77616 >>Accept The Lost Rune << Human
    .turnin 77616 >>Turn in The Lost Rune << Human
    .trainer >>训练你的职业技能
    .target Llane Beshere
step << Human Warrior
    #xprate <1.59
    #season 2
    #completewith RestandR
    #label GlovesEquip
    .equip 10,2385 >>|cRXP_WARN_装备|r|T132938:0|t|cRXP_LOOT_[柏油链手套]|r
    .use 2385
    .itemcount 2385,1
    .train 403470,3
    .itemStat 10,LEVEL,<5
step << Human Warrior
    #xprate <1.59
    #season 2
    #completewith RestandR
    #requires GlovesEquip
    .engrave 10 >>|cRXP_WARN_Engrave the |r|T132938:0|t|cRXP_LOOT_[柏油链手套]|r|cRXP_WARN_with|r|T132342:0|t[胜利冲刺] << Warrior
    .train 403470,3
    .itemStat 10,LEVEL,<5
step << Paladin
    #xprate <1.59
    #season 0,1
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨缪尔修士|r
    .turnin 3101 >>交任务: |cRXP_FRIENDLY_圣洁信件|r
    .trainer >>训练你的职业技能
    .target Brother Sammuel
step << Paladin
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨缪尔修士|r
    .turnin 3101 >>交任务: |cRXP_FRIENDLY_圣洁信件|r
    .accept 77617 >>Accept Relics of the Light << Human
    .train 20271 >>训练你的职业技能
    .target Brother Sammuel
step
    #xprate <1.59
    #season 0,1 << Warrior
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r, 他在外面
    .accept 18 >>接任务: |cRXP_WARN_潜行者兄弟会|r
    .target Deputy Willem
step << Warlock
    #xprate <1.59
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .turnin 3105 >>交任务: |cRXP_FRIENDLY_被污染的信件|r
    .train 172 >>列车|T136118:0|t[腐败]
    .target Drusilla La Salle



----End of 1x train section----




step
    #season 0,1
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>杀死|cRXP_ENEMY_Defias Thugs |r。掠夺他们的|cRXX_Loot_红色粗麻布绷带|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
    .mob Defias Thug
step << Rogue
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔里克·克里丹|r
    .turnin 3102 >>交任务: |cRXP_FRIENDLY_密文信件|r
    .accept 77618 >>Accept Thrice Stolen << Human
    .train 1784 >>列车|T132320:0|t[隐形]
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .target Jorik Kerridan
step << Rogue
    #xprate <1.59
    #season 2
    #sticky
    #label Shadowstrike1
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_打开地面上的|cRXP_PICK_Defias Stashbox|r。为|r|T134419:0|t|cRXP_Loot_[暗影之符文]掠夺它|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #xprate <1.59
    #season 2
    #sticky
    #requires Shadowstrike1
    #label Shadowstrike2
    .train 400105 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[影击符文]|r|cRXP_WARN_学习|r|T132291:0|t[影击]
    .use 204795
    .itemcount 204795,1
step << Mage
    #season 2
    #loop
    #sticky
    #completewith RedBurlapBandana << !Human
    #label CALEENCI
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .waypoint Elwynn Forest,52.55,48.79,30,0
    .waypoint Elwynn Forest,53.89,50.52,30,0
    .waypoint Elwynn Forest,55.09,49.00,30,0
    .waypoint Elwynn Forest,55.43,45.87,30,0
    .waypoint Elwynn Forest,53.86,47.05,30,0
    >>杀死|cRXP_ENEMY_Defias Thugs |r。为|T134939:0|t|cRXP_Loot_[拼写说明：CALE ENCI]|r掠夺它们
    >>|cRXP_WARN_注：您将无法在此处训练|r|T135844:0|t[冰枪]|cRXP_WARN_here，因为您只能在比赛的起始区获得|r|T133736:0|t[Comprehensive Primer]|cRXP_WARN_in|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human Mage
    #season 2
    #requires CALEENCI
    #label CALEENCI2
    .train 401760 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_LOOT_[拼写说明：CALE ENCI]|r|cRXP_WARN_学习|r|T135844:0|t[冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Paladin
    #xprate <1.59
    #season 2
    #loop
    #label Libram1
    #sticky
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .waypoint Elwynn Forest,52.55,48.79,30,0
    .waypoint Elwynn Forest,53.89,50.52,30,0
    .waypoint Elwynn Forest,55.09,49.00,30,0
    .waypoint Elwynn Forest,55.43,45.87,30,0
    .waypoint Elwynn Forest,53.86,47.05,30,0
    >>杀死|cRXP_ENEMY_Defias Thugs |r。为|T134916:0|t|cRXP_Loot_[审判自由]|r掠夺它们
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 410002,1
step << Paladin
    #xprate <1.59
    #season 2
    #sticky
    #label Libram2
    #requires Libram1
    .equip 18,205420 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[审判自由]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
step << Paladin
    #xprate <1.59
    #season 2
    #loop
    #sticky
    #label Libram3
    #requires Libram2
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .waypoint Elwynn Forest,53.86,47.05,30,0
    .waypoint Elwynn Forest,55.43,45.87,30,0
    .waypoint Elwynn Forest,55.09,49.00,30,0
    .waypoint Elwynn Forest,53.89,50.52,30,0
    .waypoint Elwynn Forest,52.55,48.79,30,0
    .aura 408828 >>|cRXP_WARN_施放|r|T135959:0|t[判断]|cRXP_WARN_10次获得|r|T136116:0|t[启发]|cRX P_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #xprate <1.59
    #season 2
    #sticky
    #label Libram4
    #requires Libram3
    .cast 409920 >>|cRXP_WARN_使用|r|T134916:0|t|cRXP_LOOT_[审判自由]|r|cRXP_WARN_学习|r|T135891:0|t[十字军打击]
    .use 205420
    .aura -408828
    .train 410002,1
step << Paladin
    #xprate <1.59
    #season 2
    #label Libram5
    #requires Libram4
    #completewith RedBurlapBandana
    .equip 10 >>|cRXP_WARN_装备一双|r|T132938:0|t|cRXP_LOOT_[手套]|r|cRXP-WARN_if you have some or when you loop some|r
    .train 410002,3
step << Paladin
    #xprate <1.59
    #season 2
    #requires Libram5
    #completewith RedBurlapBandana
    .engrave 10 >>|cRXP_WARN_Engrave your |r|T132938:0|t|cRXP_LOOT_[手套]|r|cRXP-WARN_with|r|T135891:0|t[十字军打击]
    .train 410002,3
step
    #xprate <1.59 << Paladin/Rogue
    #season 2
    #loop
    #label RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>杀死|cRXP_ENEMY_Defias Thugs |r。掠夺他们的|cRXX_Loot_红色粗麻布绷带|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Rogue
    #xprate <1.59
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 4 >>升级到4级
step << Human Rogue
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔里克·克里丹|r
    .turnin 77618 >>Turn in Thrice Stolen << Human
    .target Jorik Kerridan
step << Human Rogue
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,2125 >>|cRXP_WARN_Equip the |r|T132952:0|t[破裂皮手套]
    .use 2125
    .itemcount 2125,1 --Cracked Leather Gloves (1)
    .itemStat 10,LEVEL,<5
    .train 400105,3
step << Human Rogue
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Engrave your |r|T132952:0|t[Cracked Leather Glove]|cRXP_WARN_with|r|T132291:0|t[Shadowstrike]
    .train 400105,3
step << !Human/!Rogue
    #xprate <1.59
    #season 2
    #softcore
    #completewith next
    #requires CALEENCI2 << Mage
    #requires Libram4 << Paladin
    #requires Shadowstrike2 << Rogue
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
--   .subzoneskip 59,1
step << Human Rogue
    #xprate <1.59
    #season 2
    #requires Shadowstrike2
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔里克·克里丹|r
    .turnin 77618 >>Turn in Thrice Stolen
    .target Jorik Kerridan
    .isOnQuest 77618
step << !Paladin !Rogue
    #xprate >1.59
    #season 2
    #requires CALEENCI2 << Mage
--   #requires Libram4 << Paladin
--  #requires Shadowstrike2 << Rogue
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .turnin 18,1 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Rogue/Warlock
    .turnin 18,2 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Priest
    .turnin 18,3 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Warrior
    .turnin 18,4 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Paladin
    .turnin 18,5 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Mage
    .turnin 18 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
--   .accept 3903 >>接任务: |cRXP_LOOT_米莉·奥斯沃斯|r
    .accept 6 >>接任务: |cRXP_WARN_加瑞克·帕德弗特的赏金|r
    .target Deputy Willem
step
    #xprate <1.59
    #season 2
    #requires CALEENCI2 << Mage
    #requires Libram4 << Paladin
    #requires Shadowstrike2 << Rogue
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .turnin 18,1 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Rogue/Warlock
    .turnin 18,2 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Priest
    .turnin 18,3 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Warrior
    .turnin 18,4 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Paladin
    .turnin 18,5 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Mage
    .turnin 18 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 3903 >>接任务: |cRXP_LOOT_米莉·奥斯沃斯|r
    .accept 6 >>接任务: |cRXP_WARN_加瑞克·帕德弗特的赏金|r
    .target Deputy Willem
step
    #season 0,1
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .turnin 18,1 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Rogue/Warlock
    .turnin 18,2 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Priest
    .turnin 18,3 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Warrior
    .turnin 18,4 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Paladin
    .turnin 18,5 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Mage
    .turnin 18 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 3903 >>接任务: |cRXP_LOOT_米莉·奥斯沃斯|r
    .accept 6 >>接任务: |cRXP_WARN_加瑞克·帕德弗特的赏金|r
    .target Deputy Willem
step << Paladin
    #season 0,1
    #completewith RestandR
    .equip 16,5579 >>|cRXP_WARN_装备|r|T133052:0|t[民兵战锤]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Paladin
    #xprate <1.59
    #season 2
    #completewith RestandR
    .equip 16,5579 >>|cRXP_WARN_装备|r|T133052:0|t[民兵战锤]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #xprate <1.59
    #season 2
    #completewith RestandR
    .equip 16,2224 >>装备民兵匕首
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Rogue
    #season 0,1
    #completewith RestandR
    .equip 16,2224 >>装备民兵匕首
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Warrior
    #completewith RestandR
    .equip 16,1161 >>装备|T135274:0|t[民兵短剑]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step
    #xprate >1.59
    #season 0,1 << Priest/Warrior
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 15 >>交任务: |cRXP_FRIENDLY_回音山调查行动|r
    .accept 21 >>接任务: |cRXP_WARN_回音山清剿行动|r
    .target Marshal McBride
step << Human Mage
    #season 2
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>前往楼上|cRXP_FRIENDLY_Khelden Bremen |r
    .isQuestComplete 77620
step << Human Mage
    #season 2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r, 他在里面
    .turnin 77620 >>Turn in Spell Research
    .target Khelden Bremen
    .isQuestComplete 77620
step << Human Mage
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >>|cRXP_WARN_Equip the |r|T132961:0|t[纹身布手套]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .itemStat 10,LEVEL,<5
    .train 401760,3
step << Human Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Engrave your |r|T132961:0|t[纹身布手套]|cRXP_WARN_with|r|T135844:0|t[Ice Lance]
    .train 401760,3
step << Warrior/Paladin
    #xprate <1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>朝楼下的|cRXP_FRIENDLY_Brother Sammuel|r行驶
step << Human Paladin
    #xprate <1.59
    #season 2
    .isQuestComplete 77617
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨缪尔修士|r
    .turnin 77617 >>Turn in Relics of the Light
    .target Brother Sammuel
step << Human Paladin
    #xprate <1.59
    #season 2
    #completewith RestandR
    #label GlovesEquip
    .equip 10,2385 >>|cRXP_WARN_装备|r|T132938:0|t|cRXP_LOOT_[柏油链手套]|r
    .use 2385
    .itemcount 2385,1
    .itemStat 10,LEVEL,<5
    .train 410002,3
step << Human Paladin
    #xprate <1.59
    #season 2
    #completewith RestandR
    #requires GlovesEquip
    .engrave 10 >>|cRXP_WARN_保存|r|T132938:0|t|cRXP_LOOT_[柏油链手套]|r|cRXP_WARN_with|r|T135891:0|t[十字军打击]
    .itemStat 10,LEVEL,<5
    .train 410002,3
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >>进入回声岭矿场
step
    #loop
    .goto 1429,47.784,31.540,0
    .goto 1429,48.659,29.161,0
    .goto 1429,50.491,26.867,0
    .goto 1429,47.784,31.540,30,0
    .goto 1429,47.909,30.850,30,0
    .goto 1429,48.107,30.271,30,0
    .goto 1429,48.428,30.248,30,0
    .goto 1429,48.398,29.842,30,0
    .goto 1429,48.659,29.161,30,0
    .goto 1429,48.245,28.598,30,0
    .goto 1429,48.637,27.354,30,0
    .goto 1429,48.501,26.700,30,0
    .goto 1429,49.979,25.620,30,0
    .goto 1429,50.491,26.867,30,0
    >>杀死回声岭矿井内的|cRXP_ENEMY_Kobold Labours|r
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
    #xprate >1.59
    #season 2
    .goto 1429,50.626,27.209,-1
    .goto 1429,48.646,29.703,-1
    .subzone 9 >>|cRXP_WARN_跳到灯顶上。通过注销并重新登录来执行注销跳过|r
    .subzoneskip 34,1 --Echo Ridge Mine
    .isOnQuest 21
step << skip
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    >>|cRXP_WARN_Skip the followup|r
    .turnin 3903 >>交任务: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .target Milly Osworth
step
    #xprate <1.59
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    >>|cRXP_WARN_Skip the followup|r << !Priest !Mage
    .turnin 3903 >>交任务: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .accept 3904 >>接任务: |cRXP_LOOT_米莉的葡萄|r << Priest/Mage
    .target Milly Osworth
step << Rogue
    #season 0,1
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔里克·克里丹|r
    .turnin 3102 >>交任务: |cRXP_FRIENDLY_密文信件|r
    .train 1784 >>列车|T132320:0|t[隐形]
    .train 921 >>Train|T133644:0|t[拾取口袋]
    .target Jorik Kerridan
step << Priest/Mage
    #xprate <1.5
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>地面上的织机|cRXP_PICK_Milly的收获|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step << Rogue
    #sticky
    #label CuttyNote
    #season 2
    .goto 1429,57.518,48.253
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Garrick Padfoot|r用于|T134331:0|t[Cutty's Note]
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 203723,1 -- Cutty's Note (1)
    .mob Garrick Padfoot
    .train 400094,1
step
    .goto 1429,57.518,48.253
    >>杀死|cRXP_ENEMY_Garrick Padfoot|r。掠夺他的|cRXP_Loot_Head|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step
    #xprate >1.49 << Priest/Mage
    #optional
    #completewith RestandR
    .abandon 3904 >>放弃米莉的收获
step
    #xprate <1.5
    #requires CuttyNote << Rogue --Season 2
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1735 >>升级到1735+/2800xp << Paladin/Warrior
    .xp 5+1625 >>升级到1625+/2800xp << !Paladin !Warrior !Priest !Mage
    .xp 5+1085 >>升级到1085+/2800xp << Mage
    .xp 5+975 >>升级到975+/2800xp << Priest
    .mob Defias Thug
step
    #xprate >1.49
    #requires CuttyNote << Rogue --Season 2
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1205 >>升级到1205+/2800xp << Paladin/Warrior
    .xp 5+1040 >>升级到1040+/2800xp << !Paladin !Warrior !Priest
    .xp 5+875 >>升级到875+/2800xp << Priest
    .mob Defias Thug
step
    #optional
    #softcore
    #completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
-- .subzoneskip 59,1
step << Priest/Mage
    #xprate <1.5
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .turnin 3904 >>交任务: |cRXP_FRIENDLY_米莉的葡萄|r
    .accept 3905 >>接任务: |cRXP_LOOT_葡萄出货单|r
    .target Milly Osworth
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .turnin 6,2 >>交任务: |cRXP_FRIENDLY_加瑞克·帕德弗特的赏金|r << Warrior/Rogue/Paladin
    .turnin 6,1 >>交任务: |cRXP_FRIENDLY_加瑞克·帕德弗特的赏金|r << !Warrior !Rogue !Paladin
    .target Deputy Willem
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官玛克布莱德|r, 他在里面
    .turnin 21,1 >>交任务: |cRXP_FRIENDLY_回音山清剿行动|r << Rogue
    .turnin 21,2 >>交任务: |cRXP_FRIENDLY_回音山清剿行动|r << Warrior/Paladin
    .turnin 21,3 >>交任务: |cRXP_FRIENDLY_回音山清剿行动|r << !Warrior !Paladin !Rogue
    .accept 54 >>接任务: |cRXP_WARN_去闪金镇报到|r
    .target Marshal McBride
step << Priest/Mage
    #xprate <1.5
    #optional
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Travel upstairs
step << Priest/Mage
    #xprate <1.5
    .goto Elwynn Forest,49.471,41.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔斯修士|r, 他在楼上
    .turnin 3905,1 >>交任务: |cRXP_FRIENDLY_葡萄出货单|r
    .target Brother Neals
step << Priest
    #optional
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师安妮塔|r, 他在里面
    .accept 5623 >>接任务: |cRXP_WARN_圣光的恩赐|r
    .target Priestess Anetta
step << Priest
    #season 0,1
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师安妮塔|r, 他在里面
    .accept 5623 >>接任务: |cRXP_WARN_圣光的恩赐|r
    .target Priestess Anetta
step
    .goto Elwynn Forest,45.563,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法尔坎·伊森斯泰德|r
    .accept 2158 >>接任务: |cRXP_WARN_休息和放松|r
    .target Falkhaan Isenstrider
step << Rogue
    #season 2
    .goto Elwynn Forest,49.983,52.012
    >>Talk to |cRXP_FRIENDLY_Cutty|r just south of the Northshire Valley wall
    >>他会给你|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization |r]
    .collect 203990,1 -- Rune of Mutilation (1)
    .skipgossip
    .target Cutty
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[破坏符文]|r|cRXP-WARN_学习|r|T132304:0|t[破坏]
    .use 203990 -- Rune of Mutilation (1)
    .target Cutty
    .train 400094,1
step << Rogue
    #season 2
    .goto Elwynn Forest,46.122,62.937,5,0
    .goto Elwynn Forest,46.175,62.124
    >>|cRXP_WARN_用屋外的板条箱，跳上屋顶，跑到烟囱后面|r
    >>打开|cRXP_PICK_Rusty Lockbox |r。为|T134419:0|t|cRXP_Loot_[屠宰符文]|r将其洗劫一空
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[屠宰符文]|r|cRXP-WARN_训练|r|T236280:0|t[从阴影中屠宰]
    .use 203993
    .itemcount 203993,1
]])


RXPGuides.RegisterGuide([[
#classic
#version 1
<< Alliance
#group RestedXP 联盟 1-20
#name 6-11埃尔文森林
#displayname 6-13埃尔文森林 << SoD
#next 11-13 洛克莫丹
#defaultfor Human

step
    #season 0,1 << Rogue
    #hardcore
    #completewith next
    .subzone 87 >>Travel to Goldshire
step
    #hardcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshall Dughan|r
    .turnin 54 >>交任务: |cRXP_FRIENDLY_去闪金镇报到|r
    .accept 62 >>接任务: |cRXP_WARN_法戈第矿洞|r
    .target Marshal Dughan
step
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
    .subzoneskip 87
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠阿古斯|r
    >>|cRXP_WARN_这将允许你制造|r|T135248:0|t[粗糙的磨石]|cRXP_WARN_使你的近战伤害增加2|r << Warrior/Rogue
    >>|cRXP_WARN_这将允许你制造|r|T135255:0|t[粗石]|cRXP_WARN_使你的近战伤害增加2|r << Paladin
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    .train 2018 >>列车|T136241:0|t[铁匠铺]
    .target Smith Argus
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    .vendor 54 >>|cRXP_BUY_如果你能负担得起，就从她那里买一个|r|T135321:0|t[Gladius]|cRXP_Buy_|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_调用|r|T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    .vendor 54 >>|cRXP_BUY_如果你买得起，就从她那里买一个|r|T135641:0|t[Stiletto]|cRXP_Buy_|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_调用|r|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    .vendor 54 >>|cRXP_WARN_如果你买得起的话，可以从她那里买一个|r|T133053:0|t[Wooden Mallet]|cRXP_Buy_|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +|cRXP_WARN_Equip the |r|T133053:0|t[木制商场]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德温·克里顿|r
    .vendor >>供应商垃圾箱
    .target Andrew Krighton
--  .money >1.0
step
    #label Goldshire
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshall Dughan|r
    .turnin 54 >>交任务: |cRXP_FRIENDLY_去闪金镇报到|r
    .accept 62 >>接任务: |cRXP_WARN_法戈第矿洞|r
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .accept 60 >>接任务: |cRXP_LOOT_狗头人的蜡烛|r
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板法雷|r
    .turnin 2158,1 >>交任务: |cRXP_FRIENDLY_休息和放松|r << Rogue/Warrior
    .turnin 2158,2 >>交任务: |cRXP_FRIENDLY_休息和放松|r << !Rogue !Warrior
    .home >>将您的炉石设置为Goldshire
    .target Innkeeper Farley
step
    #optional
    .xp 6 >>升级到6级
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r
    .vendor 151 >>|cRXP_BUY_如果你买得起，就从他那里买|r|T135641:0|t[平衡飞刀]|cRXP_Buy_|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_equp the |r|T135641:0|t[平衡飞刀]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >>摧毁: |cRXP_ENEMY_破损的小飞刀|r, 它在你的背包中. 不再需要它了
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Travel downstairs
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛克西米利安·克洛文|r
    .trainer >>训练你的职业技能
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞琳娜·达克哈特|r
    .vendor 6374 >>|cRXP_BUY_如果你买得起的话，就从她那里买|r|T133738:0|t[Grimoire of Blood Pact（等级1）]|cRXP_Buy_。如果买不起，你可以稍后购买|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>在酒店楼上旅行
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师洁塞塔|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >>交任务: |cRXP_FRIENDLY_圣光的恩赐|r
    .accept 5624 >>接任务: |cRXP_WARN_圣光之衣|r
    .trainer >>训练你的职业技能
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业技能
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米歇尔·贝利|r, 他在楼上
    .target Michelle Belle
    .train 3273 >>列车|T135966:0|t[急救]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板法雷|r
    .vendor 295 >>|cRXP_BUY_从他那里购买|r|T133995:0|t[Dalan Sharp]|cRXP_Buy_直到你减到1银|r << Warrior
    .vendor 295 >>|cRXP_BUY_最多购买20 |r|T133995:0|t[Dalan Sharp]|cRXP_Buy_|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里瑞亚·杜拉克|r
    .trainer >>训练你的职业技能
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威尔海姆修士|r
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
step
    #requires DeleteOldDaggers << Rogue
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷米|r
    .accept 47 >>接任务: |cRXP_WARN_金砂交易|r
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_施法|r|T135929:0|t[较轻治疗（等级2）]|cRXP_WARN_and|r|T135987:0|t[力量词：坚韧]|cRX P_WARN_on|r|cRX _弗兰德利_爱德华·罗伯茨|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    .waypoint Elwynn Forest,31.15,85.36,40,0
    .waypoint Elwynn Forest,33.08,86.64,40,0
    .waypoint Elwynn Forest,33.51,85.22,40,0
    .waypoint Elwynn Forest,32.17,83.88,40,0
    >>杀死|cRXP_ENEMY_Stonetusk Boars|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step
    #optional
    #requires BoarMeatQuest
    #label BoarMeat烹饪1
    #completewith Pie
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>杀死|cRXP_ENEMY_Stonetusk Boars|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    >>|cRXP_WARN_这将用于调平|r|T133971:0|t[烹饪]|cRXP_WARN_water|r 
    >>|cRXP_WARN_您需要10|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Auberdine进行任务|r
    .collect 769,10,86,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeat烹饪1
    #completewith Pie
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>杀死|cRXP_ENEMY_Stonetusk Boars|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    >>|cRXP_WARN_这将用于调平|r|T133971:0|t[烹饪]|cRXP_WARN_water|r 
    >>|cRXP_WARN_你需要50|r|T133971:0|t[烹饪]|cRXP_WARN_fora quest in Darkshire later|r
    .collect 769,50,86,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r, |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .accept 85 >>接任务: |cRXP_LOOT_丢失的项链|r
    .goto Elwynn Forest,34.486,84.253
    .target +“阿姨”Bernice Stonefield
    .accept 88 >>接任务: |cRXP_WARN_公主必须死！|r
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXX_ENEMY_ Kobold矿工|r。打开|cRXP_PICK_Battered Chest|r。掠夺他们的|T135232:0|t|cRXP_Loot_[粗石]|r << Warrior/Rogue
    >>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXD_ENEMY_ Kobold矿工|r。打开|cRXP_PICK_Battered Chest|r。掠夺他们的|T135232:0|t|cRXP_Loot_[粗石]|r和|132889:0|t| cRXP_Loot_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone1
    #label RoughStoneCraft1
    #completewith NecklaceStart
    +|T136241:0|t[铁匠]|cRXP_WARN_the|r|T135232:0|t|cRXD_LOOT_[粗石]|r|cRXP-WARN_into|r|T135248:0|t]粗磨石 << Warrior/Rogue
    +|T136241:0|t[铁匠]|cRXP_WARN_the|r|T135232:0|t|cRXD_OOT_[粗石]|r|cRXP_WARN_and|r|T132889:0|t| cRXP_OOT_[亚麻布]|r| cRXD_WARN_into|r|T235255:0|t]粗石 << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft1
    #completewith NecklaceStart
    .cast 2828 >>|cRXP_WARN_在当前武器上使用|r|T135248:0|t[粗磨石]|cRXP_WARN_|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_在当前武器上使用|r|T135255:0|t[Rough Weightstone]|cRXP_WARN_|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith NecklaceStart
    .goto Elwynn Forest,37.81,85.40,0
    >>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXX_ENEMY_Kobold矿工|r。掠夺他们的|cRXD_Loot_Kobold蜡烛|r和| cRXP_Loot_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利·马科伦|r
    .turnin 85 >>交任务: |cRXP_FRIENDLY_丢失的项链|r
    .accept 86 >>接任务: |cRXP_LOOT_比利的馅饼|r
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .accept 106 >>接任务: |cRXP_LOOT_年轻的恋人|r
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒·马科伦|r
    .vendor >>|cRXP_BUY_尽可能多地购买|r|T132815:0|t[Ice Cold Milk]|cRXP_WARN_a|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_供应商垃圾|r << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXX_ENEMY_ Kobold矿工|r。打开|cRXP_PICK_Battered Chest|r。掠夺他们的|T135232:0|t|cRXP_Loot_[粗石]|r << Warrior/Rogue
    >>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXD_ENEMY_ Kobold矿工|r。打开|cRXP_PICK_Battered Chest|r。掠夺他们的|T135232:0|t|cRXP_Loot_[粗石]|r和|132889:0|t| cRXP_Loot_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone2
    #label RoughStoneCraft2
    #completewith Lovers
    +|T136241:0|t[铁匠]|cRXP_WARN_the|r|T135232:0|t|cRXD_LOOT_[粗石]|r|cRXP-WARN_into|r|T135248:0|t]粗磨石 << Warrior/Rogue
    +|T136241:0|t[铁匠]|cRXP_WARN_the|r|T135232:0|t|cRXD_OOT_[粗石]|r|cRXP_WARN_and|r|T132889:0|t| cRXP_OOT_[亚麻布]|r| cRXD_WARN_into|r|T235255:0|t]粗石 << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft2
    #completewith Lovers
    .cast 2828 >>|cRXP_WARN_在当前武器上使用|r|T135248:0|t[粗磨石]|cRXP_WARN_|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_在当前武器上使用|r|T135255:0|t[Rough Weightstone]|cRXP_WARN_|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,37.81,85.40,0
    >>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXX_ENEMY_Kobold矿工|r。掠夺他们的|cRXD_Loot_Kobold蜡烛|r和| cRXP_Loot_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托米·乔·斯通菲尔德|r
    .turnin 106 >>交任务: |cRXP_FRIENDLY_年轻的恋人|r
    .accept 111 >>接任务: |cRXP_WARN_托米的祖母|r
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    #label Pie
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .turnin 86 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
    .accept 84 >>接任务: |cRXP_LOOT_比利的馅饼|r
    .target “阿姨”Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莱德·斯通菲尔德|r, 他在里面
    .turnin 111 >>交任务: |cRXP_FRIENDLY_托米的祖母|r
    .accept 107 >>接任务: |cRXP_LOOT_给威廉·匹斯特的信|r
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXX_ENEMY_ Kobold矿工|r。打开|cRXP_PICK_Battered Chest|r。掠夺他们的|T135232:0|t|cRXP_Loot_[粗石]|r << Warrior/Rogue
    >>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXD_ENEMY_ Kobold矿工|r。打开|cRXP_PICK_Battered Chest|r。掠夺他们的|T135232:0|t|cRXP_Loot_[粗石]|r和|132889:0|t| cRXP_Loot_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone3
    #label RoughStoneCraft3
    #completewith Exchange
    +|T136241:0|t[铁匠]|cRXP_WARN_the|r|T135232:0|t|cRXD_LOOT_[粗石]|r|cRXP-WARN_into|r|T135248:0|t]粗磨石 << Warrior/Rogue
    +|T136241:0|t[铁匠]|cRXP_WARN_the|r|T135232:0|t|cRXD_OOT_[粗石]|r|cRXP_WARN_and|r|T132889:0|t| cRXP_OOT_[亚麻布]|r| cRXD_WARN_into|r|T235255:0|t]粗石 << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft3
    #completewith Exchange
    .cast 2828 >>|cRXP_WARN_在当前武器上使用|r|T135248:0|t[粗磨石]|cRXP_WARN_|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_在当前武器上使用|r|T135255:0|t[Rough Weightstone]|cRXP_WARN_|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior
    #season 2
    #sticky
    #label KoboldRune
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>杀死|cRXP_ENEMY_Kobold矿工|r和|cRXP_ENEMY_ Kobold隧道工|r。掠夺他们一个|T134168:0|t|cRXD_Loot_[被砍的Kobold头]|r
    >>|cRXP_WARN_这是您稍后到达暴风城时需要解锁|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]|cRXP-WARN_fo的三个项目之一|r
    .collect 204476,1 -- Severed Kobold Head (1)
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label KoboldRune
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Kobold Miners |r和|cRXD_ENEMY_Kobold Tunnelers |r。为|T134327:0|t|cRXP_Loot_[右上角地图块]|r掠夺它们
    >>|cRXP_WARN_您必须|r|T132320:0|t[Stealthed]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step
    #sticky
    #label KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXX_ENEMY_Kobold矿工|r。掠夺他们的|cRXD_Loot_Kobold蜡烛|r和| cRXP_Loot_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利·马科伦|r
    .turnin 84 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
    .accept 87 >>接任务: |cRXP_LOOT_金牙|r
    .target Billy Maclure
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>进入Fargodeep矿场的一个较大的开放空间
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 0,1
    .goto 1429,41.732,78.024
    >>杀死|cRXP_ENEMY_Goldtooth|r。掠夺他|cRXX_Loot_BERICE的项链|r
    >>|cRXP_WARN_他通常拉旁边的|cRXP_ENEMY_Kobold Miner|r时要小心|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth
step
    #season 2
    .goto 1429,41.732,78.024
    >>杀死|cRXP_ENEMY_Goldtooth|r。掠夺他|cRXX_Loot_BERICE的项链|r << !Warrior !Priest
    >>杀死|cRXP_ENEMY_Goldtooth|r。掠夺他获得|cRXD_Loot_BERICE的项链|r和|T134419:0|t|cRXT_Loot_[狂雷符文]|r << Warrior
    >>杀死|cRXP_ENEMY_Goldtooth|r。掠夺他|cRXD_Loot_BERICE的项链|r和|T136222:0|t|cRXX_Loot_[黑暗目的的记忆]|r << Priest
    >>|cRXP_WARN_他通常拉旁边的|cRXP_ENEMY_Kobold Miner|r时要小心|r
    .complete 87,1 --Bernice's Necklace (1)
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 205940,1 << Priest -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step << Warrior
    #season 2
    #sticky
    #label GoldtoothRune
    .train 403476 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[狂雷符文]|r|cRXP_WARN_学习|r|T136048:0|t[狂雷]
    .use 204809
    .itemcount 204809,1
step << Priest
    #season 2
    #sticky
    #label GoldtoothRune
    >>|cRXP_WARN_您必须通过在诸如Northshire Abbey或Stormfind Cathedral之类的圣地键入/跪下来获得|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buff|r
    .train 425216 >>|cRXP_WARN_使用|r|T136222:0|t|cRXP_LOOT_[黑暗目的的记忆]|r|cRXP_WARN_学习|r|T237514:0|t[虚空瘟疫]
    .use 205940
step << Warrior
    #optional
    #completewith Exchange
    +|cRXP_WARN_试着从现在起保存一个|r|T134829:0|t[次要治疗药剂]|cRXP_WARN_，因为以后Rolf的尸体需要它|r
    .subzoneskip 87 --Goldshire
step << Warrior
    #season 2
    #optional
    #requires KoboldRune
--XXREQ Placeholder invis step
step
    #xprate <1.5
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1800 >>升级到1800+/4500xp << !Priest
    .xp 7+1460 >>升级到1460+/4500xp << Priest
    .mob Kobold Tunneler
    .mob Kobold Miner
--XX <1.5x turns in goldtooth early
step
    #xprate >1.49
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1770 >>升级到1770+/4500xp << !Priest
    .xp 7+1260 >>升级到1260+/4500xp << Priest
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #xprate <1.5
    #label Goldtooth
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .turnin 87 >>交任务: |cRXP_FRIENDLY_金牙|r
    .target “阿姨”Bernice Stonefield
step
    #xprate >1.49
    #hardcore
    #optional
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_跳到碎纸机、漂浮的原木、板条箱或洞穴内的矿车灯上。执行注销跳过，然后注销并重新登录|r
    .subzoneskip 57,1 --Fargodeep Mine
    .isOnQuest 47
step
    #optional
    #label BoarMeat烹饪2
    #completewith Exchange
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>杀死|cRXP_ENEMY_Stonetusk Boars|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 57 --Fargodeep Mine
step
    #optional
    #requires BoarMeat烹饪2
    #completewith Exchange
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>杀死|cRXP_ENEMY_Stonetusk Boars|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 57 --Fargodeep Mine
step
    #hardcore
    #optional
    #completewith Exchange
    .goto Elwynn Forest,42.140,67.254,125 >>Return to Goldshire
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷米|r
    >>|cRXP_WARN_请勿提供|r|T133581:0|t[大理石袋]|cRXP_WARN_ward。这是一个非常有价值的物品，一直到60级|r
    .turnin 47 >>交任务: |cRXP_FRIENDLY_金砂交易|r
    .accept 40 >>接任务: |cRXP_LOOT_鱼人的威胁|r
    .target Remy "Two Times"
step << Priest
    #season 2
    #optional
    #completewith GoldshireEnd
    +|cRXP_WARN_如果可能的话，在金郡找一个牧师和其他人一起|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs|r
    >>|cRXP_WARN_键入/跪下，然后让另一位牧师在你跪下的时候键入/祈祷，让你获得他们的|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs，你可以稍后使用|r
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
    .accept 76 >>接任务: |cRXP_WARN_玉石矿洞|r
    .turnin 40 >>交任务: |cRXP_FRIENDLY_鱼人的威胁|r
    .accept 35 >>接任务: |cRXP_WARN_卫兵托马斯|r
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    .vendor >>供应商垃圾箱
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    .vendor 54 >>|cRXP_BUY_如果你能负担得起，就从她那里买一个|r|T135321:0|t[Gladius]|cRXP_Buy_|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +|cRXP_WARN_调用|r|T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    .vendor 54 >>|cRXP_BUY_如果你买得起，就从她那里买一个|r|T135641:0|t[Stiletto]|cRXP_Buy_|r 
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_调用|r|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    .vendor 54 >>|cRXP_BUY_如果你买得起的话，可以从她那里买一个|r|T133053:0|t[Wooden Mallet]|cRXP_Buy_|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +|cRXP_WARN_Equip the |r|T133053:0|t[木制商场]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #season 2
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威尔海姆修士|r
    >>|cRXP_WARN_训练|r|T135949:0|t[净化]|cRXP_WARN_in以获取|r|T133815:0|t[雕刻胸甲-宙斯盾]|cRX P_WARN_soon|r
    .train 1152 >>列车|T135949:0|t[净化]
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
step << Paladin
    #season 0,1
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威尔海姆修士|r
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
step << Warrior
    #xprate >1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里瑞亚·杜拉克|r
    .trainer >>训练你的职业技能
    .target Lyria Du Lac
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .turnin 60 >>交任务: |cRXP_FRIENDLY_狗头人的蜡烛|r
    .accept 61 >>接任务: |cRXP_WARN_送往暴风城的货物|r
    .turnin 107 >>交任务: |cRXP_FRIENDLY_给威廉·匹斯特的信|r
    .accept 112 >>接任务: |cRXP_WARN_收集海藻|r
    .target William Pestle
step
    #xprate <1.5
    #optional
    .xp 8 >>升级到8级
step << Warrior
    #xprate <1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里瑞亚·杜拉克|r
    .trainer >>训练你的职业技能
    .target Lyria Du Lac
step << Paladin
    #season 2
    #xprate <1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威尔海姆修士|r
    >>|cRXP_WARN_训练|r|T135949:0|t[净化]|cRXP_WARN_in以获取|r|T133815:0|t[雕刻胸甲-宙斯盾]|cRX P_WARN_soon|r
    .train 1152 >>列车|T135949:0|t[净化]
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
step << Paladin
    #season 0,1
    #xprate <1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威尔海姆修士|r
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>在酒店楼下旅行
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛克西米利安·克洛文|r
    .target Maximillian Crowe
    .trainer >>训练你的职业技能
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞琳娜·达克哈特|r
    .vendor >>|cRXP_BUY_如果你买得起的话，就从她那里买|r|T133738:0|t[Firebolt的魔法（等级2）]|cRXP_Buy_。如果买不起，你可以稍后购买|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>在酒店楼上旅行
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师洁塞塔|r
	.target Priestess Josetta
    .turnin 5624 >>交任务: |cRXP_FRIENDLY_圣光之衣|r
    .trainer >>训练你的职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业技能
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米歇尔·贝利|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>列车|T135966:0|t[急救]
step
    #label GoldshireEnd << Priest --Season 2
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r
    .vendor >>|cRXP_WARN_如果需要，购买一个|r|T133634:0|t[棕色小袋子]|cRXP_WARN_i|r
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板法雷|r
    .vendor >>|cRXP_BUY_如果你能负担得起的话，最多从他那里购买20份|r|T132815:0|t[冰牛奶]|cRXP_Buy_|r << !Warrior !Rogue !Paladin
    .vendor >>|cRXP_BUY_如果你能负担得起的话，最多从他那里购买20|r|T133995:0|t[Daran Sharp]|cRXP_Buy_|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_如果你能负担得起的话，最多从他那里购买10|r|T133995:0|t[Dalaran Sharp]|cRXP_Buy_|r << Paladin
    .target Innkeeper Farley
step << Warrior
    #season 2
    #sticky
    #label MurlocRune
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>杀死|cRXP_ENEMY_Murlocs|r和|cRXP_ENEMY_ Murloc Streamrunners|r。掠夺它们一个|T134169:0|t|cRXP_Loot_[被分割的Murloc头]|r
    >>|cRXP_WARN_当你到达10级暴风时，这是解锁|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]|cRXP-WARN_forr所需的三个物品之一|r
    .collect 204477,1 -- Severed Murloc Head (1)
    .mob Murloc Streamrunner
	.mob Murloc
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label MurlocRune
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Murloc Steamrunners|r和|cRXD_ENEMY_ Murlocs|r。为|T134269:0|t|cRXP-Loot_[右下角地图块]|r而掠夺它们
    >>|cRXP_WARN_您必须|r|T132320:0|t[Stealthed]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
--   >>|cRXP_WARN_注意：这也可以来自Elwynn Forest中的任何其他|cRXP_ENEMY_Murloc|r|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Streamrunner
    .mob Murloc
--   .mob Murloc Forager
--    .mob Murloc Lurker
    .train 398196,1
step
    #optional
    #label WolfMeat烹饪1
    #completewith Jasperlode
    .goto 1429,52.242,62.919,0
    .goto 1429,53.837,60.950,0
    .goto 1429,56.793,60.340,0
    .goto 1429,59.033,60.673,0
    >>杀死|cRXP_ENEMY_长毛狼|r。掠夺它们的|T133970:0|t|cRXP-Loot_[长毛狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Mangy Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 54
step
    #optional
    #requires WolfMeat烹饪1
    #completewith Jasperlode
    .goto 1429,52.242,62.919,0
    .goto 1429,53.837,60.950,0
    .goto 1429,56.793,60.340,0
    .goto 1429,59.033,60.673,0
    >>杀死|cRXP_ENEMY_长毛狼|r。掠夺它们的|T133970:0|t|cRXP-Loot_[长毛狼肉]|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Mangy Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 54
step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>杀死|cRXP_ENEMY_Murlocs|r和|cRXP_ENEMY_Mooloc流媒体|r。掠夺它们以获取|cRXD_Loot_水晶海带霜|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>杀死|cRXP_ENEMY_Kobold矿工|r。打开|cRX_PICK_Battered Chest|r。掠夺他们的|T135232:0|t|cRXP_Loot_[粗糙的石头]|r << Warrior/Rogue
    >>杀死|cRXP_ENEMY_Kobold矿工|r。打开|cRX_PICK_Battered Chest|r。掠夺他们的|T135232:0|t|cRXP_Loot_[粗石]|r和|T132889:0|t| cRXP_Loot_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|T136241:0|t[铁匠]|cRXP_WARN_the|r|T135232:0|t|cRXD_LOOT_[粗石]|r|cRXP-WARN_into|r|T135248:0|t]粗磨石 << Warrior/Rogue
    +|T136241:0|t[铁匠]|cRXP_WARN_the|r|T135232:0|t|cRXD_OOT_[粗石]|r|cRXP_WARN_and|r|T132889:0|t| cRXP_OOT_[亚麻布]|r| cRXD_WARN_into|r|T235255:0|t]粗石 << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft4
    #completewith JasperlodeExplore
    .cast 2828 >>|cRXP_WARN_在当前武器上使用|r|T135248:0|t[粗磨石]|cRXP_WARN_|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_在当前武器上使用|r|T135255:0|t[Rough Weightstone]|cRXP_WARN_|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >>进入Jasperlode矿
step << Mage
    #season 2
    #sticky
    #loop
    #label JasperlodeRune
    .goto 1429,60.599,50.811,0
    .goto 1429,60.789,56.641,0
    .goto 1429,64.528,56.678,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,62.121,55.579,45,0
    .waypoint 1429,60.789,56.641,45,0
    .waypoint 1429,62.587,57.974,45,0
    .waypoint 1429,63.724,58.199,45,0
    .waypoint 1429,64.528,56.678,45,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,60.599,50.811,45,0
    .waypoint 1429,61.296,51.676,45,0
    >>杀死|cRXP_ENEMY_Kobold Geomancers|r。为|T134939:0|t|cRXP_Loot_[拼写说明：MILEGIN VALF]|r掠夺他们
    .collect 203752,1
    .mob Kobold Geomancer
    .train 401768,1
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>沿着中间的小路探索碧玉矿
    .complete 76,1 --Scout through the Jasperlode Mine
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>杀死|cRXP_ENEMY_Kobold矿工|r。打开|cRX_PICK_Battered Chest|r。掠夺他们的|T135232:0|t|cRXP_Loot_[粗糙的石头]|r << Warrior/Rogue
    >>杀死|cRXP_ENEMY_Kobold矿工|r。打开|cRX_PICK_Battered Chest|r。掠夺他们的|T135232:0|t|cRXP_Loot_[粗石]|r和|T132889:0|t| cRXP_Loot_[Linen Cloth]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|T136241:0|t[铁匠]|cRXP_WARN_the|r|T135232:0|t|cRXD_LOOT_[粗石]|r|cRXP-WARN_into|r|T135248:0|t]粗磨石 << Warrior/Rogue
    +|T136241:0|t[铁匠]|cRXP_WARN_the|r|T135232:0|t|cRXD_OOT_[粗石]|r|cRXP_WARN_and|r|T132889:0|t| cRXP_OOT_[亚麻布]|r| cRXD_WARN_into|r|T235255:0|t]粗石 << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft5
    #completewith Find
    .cast 2828 >>|cRXP_WARN_在当前武器上使用|r|T135248:0|t[粗磨石]|cRXP_WARN_|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_在当前武器上使用|r|T135255:0|t[Rough Weightstone]|cRXP_WARN_|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step << Paladin
    #season 2
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_铸造|r|T135949:0|t[Prify]|cRXP_WARN_on the |cRXP-FRIENDLY_Wounded Adventurer|r inside|r
    .target Wounded Adventurer
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Paladin
    #season 2
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_在施法后与|cRXP_FRIENDLY_Wounded Adventurer|r对话|r|T135949:0|t[净化]|cRXP_WARN_让他获得|r|T134419:0|t[宙斯盾符文]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .train 1152,3 --Purify Trained
--XX gossipoption 109556
step << Paladin
    #season 2
    #completewith Find
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[神盾符文]|cRXP_WARN_学习|r|T133815:0|t]铭刻胸甲-神盾
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Mage
    #season 2
    #requires JasperlodeRune
    #completewith Find
    .train 401768 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_LOOT_[拼写说明：MILEGIN VALF]|r|cRXP_WARN_学习|r|T135820:0|t[活火焰]
    .use 203752
step
    #optional
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >>Exit Jasperlode Mine
    .subzoneskip 54,1
step
    #optional
    #requires ExitJasperlode
    #label WolfMeat烹饪2
    #completewith Find
    .goto 1429,69.348,67.452,0
    .goto 1429,67.244,63.880,0
    .goto 1429,63.748,64.710,0
    >>杀死|cRXP_ENEMY_灰色森林狼|r。掠夺它们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeat烹饪2
    #completewith Find
    .goto 1429,69.348,67.452,0
    .goto 1429,67.244,63.880,0
    .goto 1429,63.748,64.710,0
    >>杀死|cRXP_ENEMY_灰色森林狼|r。掠夺它们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #completewith Find
    +|cRXP_WARN_风筝a|cRXP_ENEMY_年轻的森林熊|r朝着|r|cRXP-FRIENDLY_Guard Thomas|r
    >>|cRXP_WARN_在|cRXP_ENEMY_Young Forest Bear|r死于|cRXP_RIENDLY_Stormwind Guards|r获得任务积分之前，尝试与|cRXD_RIENDLY_Guard Thomas |r交谈|r
    >>|cRXP_WARN_确保造成51%以上的伤害才能获得信用|r
    .mob Young Forest Bear
step
    #label Find
    #requires JasperlodeRune << Mage --Season 2
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .turnin 35 >>交任务: |cRXP_FRIENDLY_卫兵托马斯|r
    .accept 37 >>接任务: |cRXP_WARN_失踪的卫兵|r
    .accept 52 >>接任务: |cRXP_WARN_保卫边境|r
    .target Guard Thomas
step << Rogue/Priest
    #season 2
    #completewith LostGuards
    >>杀死|cRXP_ENEMY_Prowlers |r和|cRXX_ENEMY_Young Forest Bears |r
    >>|cRXP_WARN_优先杀死你看到的任何|cRXP_ENEMY_Young Forest Bear|r|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #season 0,1 << Rogue/Priest
    #completewith AcceptBundle
    >>杀死|cRXP_ENEMY_Prowlers |r和|cRXX_ENEMY_Young Forest Bears |r
    >>|cRXP_WARN_优先杀死你看到的任何|cRXP_ENEMY_Young Forest Bear|r|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #optional
    #label WolfMeat烹饪3
    #completewith LostGuards
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_Gray Forest Wolves|r和|cRXP_ENEMY_Prowlers |r。掠夺它们的|T133970:0|t|cRXD_Loot_[Stringy Wolf Meat]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeat烹饪3
    #completewith LostGuards
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_Gray Forest Wolves|r和|cRXP_ENEMY_Prowlers |r。掠夺它们的|T133970:0|t|cRXD_Loot_[Stringy Wolf Meat]|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #label LostGuards
    .goto Elwynn Forest,72.656,60.334
    >>点击|cRXP_PICK_地上吃了一半的身体|r
    .turnin 37 >>交任务: |cRXP_FRIENDLY_失踪的卫兵|r
    .accept 45 >>接任务: |cRXP_WARN_罗尔夫的下落|r
step << Priest
    #season 2
    #loop
    .goto 1429,74.015,51.810,0
    .goto 1429,72.561,56.666,55,0
    .goto 1429,72.396,54.428,55,0
    .goto 1429,74.015,51.810,55,0
    .goto 1429,75.155,50.751,55,0
    .goto 1429,76.815,48.877,55,0
    .goto 1429,76.676,53.898,55,0
    >>杀死|cRXP_ENEMY_Defias盗贼巫师|r。为|T135975:0|t|cRXP-Loot_[被亵渎的城堡的预言]|r掠夺他们
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    #season 2
    #optional
    #completewith BundleOT
    .train 402852 >>|cRXP_WARN_使用|r|T135975:0|t|cRXP_LOOT_[被亵渎的城堡的预言]|r|cRXP_WARN_学习|r|T237570:0|t[Hommulli]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如诺思郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，获得2|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    #optional
    #label WolfMeat烹饪Rogue
    #completewith GnollMapPiece
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_灰色森林狼|r。掠夺它们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Rogue
    #season 2
    #optional
    #requires WolfMeat烹饪Rogue
    #completewith GnollMapPiece
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_灰色森林狼|r。掠夺它们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << Rogue
    #season 2
    #label GnollMapPiece
    .goto 1429,68.680,54.635,60,0
    .goto 1429,68.135,48.678,60,0
    .goto 1429,68.102,45.049,60,0
    .goto 1429,66.618,40.849
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Riverpaw Outrunners|r和|cRXP_ENEMY_River paw Runts|r。为|T134327:0|t[|cRXD_Loot_Bottom-Left地图块]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith AcceptBundle
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
    .train 398196,1
step << Rogue
    #softcore
    #season 2
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉里克·费恩|r
    .vendor >>供应商垃圾
    .target Rallic Finn
    .train 398196,1
    .isQuestAvailable 5545
step << Rogue
    #season 2
    #completewith AcceptBundle
    >>杀死|cRXP_ENEMY_Prowlers |r和|cRXX_ENEMY_Young Forest Bears |r
    >>|cRXP_WARN_优先杀死你看到的任何|cRXP_ENEMY_Young Forest Bear|r|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
    .subzoneskip 88 --Eastvale Logging Camp
step
    #optional
    #label WolfMeat烹饪4
    #completewith AcceptBundle
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 88 --Eastvale Logging Camp
step
    #optional
    #requires WolfMeat烹饪4
    #completewith AcceptBundle
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 88 --Eastvale Logging Camp
step
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_管理员莱琳|r
    .accept 5545 >>接任务: |cRXP_WARN_木材危机|r
    .target Supervisor Raelen
step << Rogue
    #softcore
    #season 2
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉里克·费恩|r
    .vendor >>供应商垃圾
    .target Rallic Finn
    .subzoneskip 88,1
    .train 398196,3
step << Rogue
    #hardcore
    #season 2
    #optional
    #completewith AcceptBundle
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉里克·费恩|r
    .vendor >>供应商垃圾
    .target Rallic Finn
step
    #season 0,1 << Rogue
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉里克·费恩|r
    .vendor >>供应商垃圾
    .target Rallic Finn
    .subzoneskip 88,1
step
    #optional
    #label WolfMeat烹饪5
    #completewith Prowlers
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 86 --Stone Cairn Lake
step
    #optional
    #requires WolfMeat烹饪5
    #completewith Prowlers
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith Prowlers
    >>杀死|cRXP_ENEMY_Prowlers |r和|cRXX_ENEMY_Young Forest Bears |r
    >>|cRXP_WARN_优先杀死你看到的任何|cRXP_ENEMY_Young Forest Bear|r|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>将|cRXP_Loot_Bundles of Wood|r掠夺到树基的地面上
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #softcore
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>|cRXP_WARN_在|cRXP_PICK_Rolf的尸体上运行|r，然后施放|r|T135954:0|t[神圣保护]|cRXP_WARN_然后立即点击|r|cRXP-PICK_Roff的尸体|r
    >>|cRXP_WARN_完成任务后逃跑并重置|cRXP_ENEMY_Murlocs|r|r
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_WARN_回复托马斯|r
step << Paladin
    #hardcore
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>点击地面上的|cRXP_PICK_Rolf尸体|r
    >>|cRXP_WARN_小心，因为|cRXP_ENEMY_Murloc Foragers|r会施放|r|T135915:0|t[喝小药水]|cRXP-WARN_它能治愈61-68的生命值|r
    >>|cRXP_WARN_将2|r|cRXP_ENEMY_Murlocs|r|cRXP_WARN_in拉到小屋前，移开并快速用核武器击落其中一个。根据需要使用|r|T135954:0|t[神圣保护]|cRXP_WARN_和你的治疗。这是使用|r|T133581:0|t[大理石袋]|cRXP_WARN_的好机会。杀死一个后逃跑并重置|r << Paladin
    >>|cRXP_WARN_记住在|r|T135954:0|t[神圣保护]|cRXP_WARN_你不能攻击|r << Paladin
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_WARN_回复托马斯|r
step << !Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>点击地面上的|cRXP_PICK_Rolf尸体|r
    >>|cRXP_WARN_小心，因为|cRXP_ENEMY_Murloc Foragers|r会施放|r|T135915:0|t[喝小药水]|cRXP-WARN_它能治愈61-68的生命值|r
    >>|cRXP_WARN_施法|r|T135953:0|t[更新]|cRXP_WARN_and|r|T135940:0|t[护盾]|cRXP-WARN_then获得满魔法值。把2|cRXP_ENEMY_Murlocs|r拉到小屋前，走开，然后用核武器射击一个。杀死一个就逃跑，然后杀死另一个|r << Priest
    >>|cRXP_WARN_将2|r|cRXP_ENEMY_Murlocs|r|cRXP_WARN_in拉到小屋前面，移开，|r|T136071:0|t[Polymop]|cRXP _WARN_one，同时杀死另一个。杀死|r|T136071:0|t[变形]|cRXP_WARN_one之后|r << Mage
    >>|cRXP_WARN_Pool 100 Rage。将2|r|cRXP_ENEMY_Murlocs|r|cRXP_WARN_in拉到小屋前面，移开并将|r|T132316:0|t[Hamstring]|cRXP-WARN_on保持在一个小屋上，同时杀死另一个小屋。同时使用|r|T133581:0|t[大理石袋]|cRXP_WARN_对你要杀死的那个。逃跑并在杀死一个后重置装备有|r|T132316:0|t[Hamstring]|cRXP_WARN_的那个|r << Warrior
    >>|cRXP_WARN_将2|r|cRXP_ENEMY_Murlocs|r|cRXP_WARN_in拉到小屋前，移开并集中力量杀死其中一人。使用|r|T136205:0|t[躲避]|cRXP_WARN_一旦他们都在攻击你。这是使用|r|T133581:0|t[大理石袋]|cRXP_WARN_的好机会。杀死一个后逃跑并重置|r << Rogue
    >>|cRXP_WARN_将2|r|cRXP_ENEMY_Murlocs|r|cRXP_WARN_in拉到小屋前面，移开并不断地将|r|T136183:0|t[恐惧]|cRXP _WARN_扔到其中一个小屋上，并尝试将DoT保持在两个小屋上|r << Warlock
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_WARN_回复托马斯|r
step
    #optional
    #label WolfMeat烹饪6
    #completewith BundleOT
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeat烹饪6
    #completewith BundleOT
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith BundleOT
    >>杀死|cRXP_ENEMY_Prowlers |r和|cRXX_ENEMY_Young Forest Bears |r
    >>|cRXP_WARN_优先杀死你看到的任何|cRXP_ENEMY_Young Forest Bear|r|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #loop
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,79.68,52.31,40,0
    .goto Elwynn Forest,80.86,52.17,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,79.76,56.70,40,0
    .goto Elwynn Forest,80.15,60.03,40,0
    .goto Elwynn Forest,80.24,61.46,40,0
    .goto Elwynn Forest,81.27,61.59,40,0
    .goto Elwynn Forest,81.58,62.64,40,0
    .goto Elwynn Forest,82.79,60.12,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    .goto Elwynn Forest,81.77,59.17,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    >>将|cRXP_Loot_Bundles of Wood|r掠夺到树基的地面上
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_管理员莱琳|r
    .turnin 5545 >>交任务: |cRXP_FRIENDLY_木材危机|r
    .target Supervisor Raelen
step << skip --Paladin
    #xprate >1.59
    #optional
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .accept 83 >>接任务: |cRXP_LOOT_红色亚麻布|r
    .target Sara Timberlain
    .itemcount 2589,<10 --Linen Cloth (<10)
step
    #xprate <1.5 << !Warlock
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .accept 83 >>接任务: |cRXP_LOOT_红色亚麻布|r
    .target Sara Timberlain
step
    #optional
    #label WolfMeat烹饪7
    #completewith DeliverStart
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeat烹饪7
    #completewith DeliverStart
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>杀死|cRXP_ENEMY_Prowlers |r和|cRXX_ENEMY_Young Forest Bears |r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #label DeliverStart
    .goto Elwynn Forest,73.973,72.179
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .turnin 52 >>交任务: |cRXP_FRIENDLY_保卫边境|r
    .turnin 71 >>交任务: |cRXP_FRIENDLY_回复托马斯|r
    .accept 39 >>接任务: |cRXP_WARN_托马斯的报告|r
    .target Guard Thomas
step
    #xprate >1.49
    #completewith Level9Grind << Warlock/Warrior/Rogue
    #completewith PrincessC << !Warlock !Warrior !Rogue
    >>杀死|cRXP_ENEMY_Defias土匪|r。为|T134939:0|t[|cRXP-Loot_Westfall契约|r]掠夺他们
    .use 1972>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Westfall契约|r]开始任务|r
    >>|cRXP_WARN_|r|T134939:0|t[|cRXP_OOT_Westfall契约|r]|cRXP-WARN_i是一个非常罕见的下跌。如果您不明白，请忽略此步骤|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接任务: |cRXP_LOOT_法布隆的地契|r
step
    #xprate <1.5
    #completewith Level9Grind << Warlock/Warrior/Rogue
    #completewith DefiasBandits << !Warlock !Warrior !Rogue
    >>杀死|cRXP_ENEMY_Defias土匪|r。为|T134939:0|t[|cRXP-Loot_Westfall契约|r]掠夺他们
    .use 1972>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Westfall契约|r]开始任务|r
    >>|cRXP_WARN_|r|T134939:0|t[|cRXP_OOT_Westfall契约|r]|cRXP-WARN_i是一个非常罕见的下跌。如果您不明白，请忽略此步骤|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接任务: |cRXP_LOOT_法布隆的地契|r
step << skip --Paladin
    #xprate >1.59
    #optional
    #completewith next
    >>杀死|cRXP_ENEMY_Defias土匪|r。掠夺他们的|cRXD_Loot_红色亚麻绷带|r和|T132889:0|t[亚麻布]
    >>|cRXP_WARN_保存|r|T132889:0|t[Linen Cloth]|cRXP_WARN_for以后的任务|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .disablecheckbox
    .mob Defias Bandit
    .isOnQuest 83
step
    #xprate <1.5 << !Warlock
    #completewith next
    >>杀死|cRXP_ENEMY_Defias土匪|r。掠夺他们的|cRXX_Loot_红亚麻绷带|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label PrincessC
    .goto Elwynn Forest,69.3,79.0
    >>杀死|cRXP_ENEMY_Princess |r。为她掠夺她|cRXX_Loot_COLLE|r
    >>|cRXP_ENEMY_公主|r|cRXP_WARN_will agro和她的两个|r|cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_公主|r|cRXP_WARN_也会施法|r|T132368:0|t[冲锋]|cRXP-WARN_造成重创|r
    >>|cRXP_WARN_参与前池100怒|r|cRXP_ENEMY_Princess|r << Warrior
    >>|cRXP_WARN_请确保|T136205:0|t[Evasion]|cRXP_WARN_i已准备就绪。如果你正在挣扎，你可以使用投掷武器围栏来滥用路径并争取时间|r << Rogue
    >>|cRXP_WARN_Be ready to use a|r|T134830:0|t[小治疗药剂]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>|cRXP_WARN_点击此处查看视频参考|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Defias|r。为|T134327:0|t[|cRXP-Loot_Top-Left地图碎片]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    >>|cRXP_WARN_注意：这也可以来自Elwynn Forest中的任何其他|cRXP_ENEMY_Defias|r成员|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
step << skip --Paladin
    #xprate >1.59
    #label DefiasBandits
    #loop
    .goto Elwynn Forest,70.5,77.6,0
    .goto Elwynn Forest,70.8,80.9,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    >>杀死|cRXP_ENEMY_Defias土匪|r。掠夺他们的|cRXX_Loot_红亚麻绷带|r
    >>杀死|cRXP_ENEMY_Defias土匪|r。掠夺他们的|cRXD_Loot_红色亚麻绷带|r和|T132889:0|t[亚麻布]
    >>|cRXP_WARN_保存|r|T132889:0|t[Linen Cloth]|cRXP_WARN_for以后的任务|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .disablecheckbox
    .mob Defias Bandit
    .isOnQuest 83
step
    #completewith Level9Grind << Warlock
    #xprate <1.5 << !Warlock
    #label DefiasBandits
    >>杀死|cRXP_ENEMY_Defias土匪|r。掠夺他们的|cRXX_Loot_红亚麻绷带|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock/Warrior/Rogue
    #xprate <1.5
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3510 >>升级到3510+/6500xp << Warlock
    .xp 9+3420 >>升级到3420+/6500xp << Warrior/Rogue
step << Warlock/Warrior/Rogue
    #xprate >1.49
    #optional
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+2015 >>升级到2015+/6500xp << Warlock
    .xp 9+3050 >>升级到3050+/6500xp << Warrior/Rogue
--XX Warlock and Warrior
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_使用|r|T134327:0|t[|cRXP_LOOT_Map Pieces]|r|cRXP _WARN_to将它们组合成|r|T134269:0|t[|cRXP_LOOT_Elwynn Treasure Map|r]中的任何一个
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_使用|r|T134269:0|t[|cRXP_LOOT_Elwynn藏宝图|r]|cRXP-WARN_at箭头位置。这将导致一个|cRXP_PICK_埋藏的宝藏|r弹出|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,80.365,79.134
    >>打开|cRXP_PICK_埋藏的宝藏|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]掠夺它
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]|cRXP-WARN_to train|r|T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
step << !Warlock
    #season 0,1 << Rogue
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
    .zoneskip Redridge Mountains
--XX not worth deathskipping as a warlock due to having to resumm pet
step << skip --Paladin
    #xprate >1.59
    #optional
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .turnin 83 >>交任务: |cRXP_FRIENDLY_红色亚麻布|r
    .target Sara Timberlain
    .isQuestComplete 83
step
    #xprate <1.5 << !Warlock
    #optional << Warlock
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .turnin 83 >>交任务: |cRXP_FRIENDLY_红色亚麻布|r
    .target Sara Timberlain
    .isQuestComplete 83
step << !Warlock
    #optional
    #label WolfMeat烹饪8
    #requires EVDeathskip
    #completewith RedridgeS
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << !Warlock
    #optional
    #requires WolfMeat烹饪8
    #completewith RedridgeS
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << !Warlock
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
step << !Warlock
    #optional
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
    .accept 244 >>接任务: |cRXP_WARN_豺狼人的入侵|r
    .target Guard Parker
    .xp <11,1
step << !Warlock
    #softcore
    #completewith RRFP
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
step << !Warlock
    #hardcore
    #optional
    #completewith RRFP
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410,15 >>|cRXP_WARN_小心：坚持走主干道，避免路上有任何近身暴徒|r
step << !Warlock
    #optional
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
step << !Warlock
    #season 0,1 << Paladin
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线
    .target Ariena Stormfeather
step << Paladin
    #xprate <1.5
    #season 2
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线
    .target Ariena Stormfeather
step << Paladin
    #xprate >1.49
    #season 2
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线
    .target Ariena Stormfeather
    .train 410015,3
step << Paladin
    #xprate >1.49
    #season 2
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线
    .fly Stormwind >>飞往暴风城
    .target Ariena Stormfeather
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61,1 >>交任务: |cRXP_FRIENDLY_送往暴风城的货物|r
    >>|cRXP_WARN_我们选择|r|T132383:0|t[爆炸火箭]|cRXP_WARN_a作为奖励。它造成了相当大的伤害，可以用于“劈拉”，这非常有用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>|cRXP_WARN_点击此处查看关于“拆分拉动”的视频参考。这是一个短视频，值得学习|r
    .target Morgan Pestle
    .train 410015,1
step << Paladin
    #season 2
    #xprate >1.59
    #optional
    #completewith Romulus
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
    .train 410015,1
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .accept 1641 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1641 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .target Duthorian Rall
    .xp <12,1
--XX so you can get the 500xp breadcrumb in goldshire
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_使用|T133739:0|t[|cRXP_LOOT_the Tome of Divinity|r]开始任务|r
    .accept 1642 >>接任务: |cRXP_WARN_圣洁之书|r
    .use 6775
    .xp <12,1
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1642 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1643 >>接任务: |cRXP_WARN_圣洁之书|r
    .target Duthorian Rall
    .xp <12,1
step << Paladin
    #xprate >1.49
    #season 2
    #label Romulus
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Talk to |cRXP_FRIENDLY_Brother Romulus|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>下楼进入大教堂地穴的西侧
    .goto StormwindClassic,32.86,24.77,8 >>前往地下室中的|cRXP_LOOT_Charred Note|r
    .train 410015,1
step << Paladin
    #season 2
    #xprate >1.49
    .goto StormwindClassic,32.86,24.87
    >>在蜡烛旁偷走|cRXP_Loot_Charred Note|r
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step
    #optional
    #completewith CollectKelp
    .hs >>赫斯到戈德郡
step << Warrior/Rogue
    #xprate <1.5
    #optional
    #completewith Escape
    +|cRXP_WARN_小心你的钱，因为你以后应该尽量为暴风雪节省32s 8c|r << Rogue
    +|cRXP_WARN_小心你的钱，因为你以后需要为暴风雪和铁锻造节省31秒85美分|r << Warrior
    >>|cRXP_WARN_在那之前，你将从转盘中获得16s 50c|r << Rogue
    >>|cRXP_WARN_在此之前，您将从转盘中获得18s 25c|r << Warrior
    .money >0.50
--XX 1s 10c flight to SW, 20s 23c cutlass, 10s 1h sword, 30c/75c level 3/11 thrown - Rogue
--XX 1s 10c flight to SW, 10s 2h sword, 10s 2h mace, 10s thrown, 30c/75c level 3/11 thrown, 81c mining pick - Warrior
--XX 7s from 39, 3.5s from 76, 3.5s from 61, 2.5s from 109, 1.75 from 6281 (warrior)
step
    #label CollectKelp
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .turnin 112 >>交任务: |cRXP_FRIENDLY_收集海藻|r
    .timer 9,接任务: |cRXP_LOOT_收集海藻|r RP
    .accept 114 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
    .target William Pestle
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto Elwynn Forest,43.877,66.546,9 >>在酒店楼上旅行
step << Warrior/Rogue
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米歇尔·贝利|r
    .train 3273 >>列车|T135966:0|t[急救]
    .target Michelle Belle
step << Rogue
    #optional
    #label RogueOptTrain
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    >>|cRXP_WARN_仅训练|r|T132147:0|t[双Wield]|cRXP_WARN_and|r|T132307:0|t[Speet]|cRX P_WARN_。不要为了以后省钱而训练其他法术|r
    .train 674 >>列车|T132147:0|t[双Wield]
    .train 2983 >>列车|T132307:0|t[冲刺]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 39 >>交任务: |cRXP_FRIENDLY_托马斯的报告|r
    .turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
    .accept 239 >>接任务: |cRXP_WARN_西泉要塞|r
    .accept 59 >>接任务: |cRXP_WARN_布甲和皮甲|r << Warlock
    .accept 109 >>接任务: |cRXP_WARN_向格里安·斯托曼报到|r
    .target Marshal Dughan
step
    #sticky
    #label GoldshireVendor
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    .vendor >>供应商垃圾箱
    .target Corina Steele
    .money >0.75
step
    .goto Elwynn Forest,41.706,65.544
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠阿古斯|r
    .accept 1097 >>接任务: |cRXP_LOOT_艾尔默的任务|r
    .target Smith Argus
step << Warlock/Warrior
    #requires GoldshireVendor
    #optional
    .xp 10 >>升级到10级
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里瑞亚·杜拉克|r
    .accept 1638 >>接任务: |cRXP_WARN_战士的训练|r
    .trainer >>训练你的职业技能
    .target Lyria Du Lac
    .money <0.5
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里瑞亚·杜拉克|r
    >>|cRXP_WARN_不要训练，因为你需要为以后省钱|r
    .accept 1638 >>接任务: |cRXP_WARN_战士的训练|r
    .target Lyria Du Lac
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威尔海姆修士|r
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威尔海姆修士|r
    .accept 2998 >>接任务: |cRXP_WARN_圣洁之书|r
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>在酒店楼下旅行
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛克西米利安·克洛文|r, |cRXP_FRIENDLY_雷门·玛考特|r
    .trainer >>训练你的职业技能
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >>接任务: |cRXP_LOOT_加科因的召唤|r
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>上楼去
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师洁塞塔|r
    .accept 5635 >>接任务: |cRXP_WARN_绝望祷言|r
    .trainer >>训练你的职业技能
    .target Priestess Josetta
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.25,66.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r
    .trainer >>训练你的职业技能
    .target Zaldimar Wefhellt
    .xp <10,1 
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    >>|cRXP_WARN_仅训练|r|T132147:0|t[双Wield]|cRXP_WARN_and|r|T132307:0|t[Speet]|cRX P_WARN_。不要为了以后省钱而训练其他法术|r
    .train 674 >>列车|T132147:0|t[双Wield]
    .train 2983 >>列车|T132307:0|t[冲刺]
    .target Keryn Sylvius
--XX skip quest, not worth going inside for
step << !Warlock
    #completewith PrincessFinish
    #optional
    .abandon 59 >>弃布皮甲
step
    #optional
    #label BoarMeat烹饪3
    #completewith Garrison
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>杀死|cRXP_ENEMY_Stonetusk Boars|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeat烹饪3
    #completewith Garrison
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>杀死|cRXP_ENEMY_Stonetusk Boars|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >>前往麦克鲁尔葡萄园
step
--  #xprate <1.59
    #label Escape
    #requires GoldshireVendor
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .turnin 114 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
    .target Maybell Maclure
step
    #xprate <1.5
    #label PrincessFinish
    .goto Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .turnin 88,1 >>交任务: |cRXP_FRIENDLY_公主必须死！|r << Rogue/Hunter
    .turnin 88,2 >>交任务: |cRXP_FRIENDLY_公主必须死！|r << Warrior/Paladin
    .turnin 88,3 >>交任务: |cRXP_FRIENDLY_公主必须死！|r << !Rogue !Hunter !Warrior !Paladin
    .target Ma Stonefield
step
    #xprate >1.49
    #label PrincessFinish
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r, |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .turnin 88,1 >>交任务: |cRXP_FRIENDLY_公主必须死！|r << Rogue/Hunter
    .turnin 88,2 >>交任务: |cRXP_FRIENDLY_公主必须死！|r << Warrior/Paladin
    .turnin 88,3 >>交任务: |cRXP_FRIENDLY_公主必须死！|r << !Rogue !Hunter !Warrior !Paladin
    .goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
    .turnin 87 >>交任务: |cRXP_FRIENDLY_金牙|r
    .target +“阿姨”Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith Garrison
    .xp 9+4510 >>升级到4510+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith Garrison
    .xp 9+5110 >>升级到5110+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step
    #optional
    #completewith Garrison
    .goto Elwynn Forest,24.82,76.25,80 >>前往威斯布鲁克驻军


----Start of Paladin 1.5x Martyrdom Rune section----



step << Paladin
    #xprate <1.5
    #label Garrison
    #season 2
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务: |cRXP_FRIENDLY_西泉要塞|r
    .target Deputy Rainer
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务: |cRXP_FRIENDLY_西泉要塞|r
    .target Deputy Rainer
    .train 410015,3
step << Paladin
    #xprate >1.49
    #season 2
    #label Garrison
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务: |cRXP_FRIENDLY_西泉要塞|r
    .accept 11 >>接任务: |cRXP_WARN_悬赏河爪豺狼人|r
    .target Deputy Rainer
    .train 410015,1
step << Paladin
    #xprate 1.49-1.59
    #season 2
    #optional
    #completewith Martyrdom
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    >>杀死|cRXP_ENEMY_Riverpaw符文|r和|cRXX_ENEMY_River paw跑者|r。掠夺他们的|cRXD_Loot_彩绘Gnoll臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 410015,1
step << Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith Martyrdom
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    >>杀死|cRXP_ENEMY_Riverpaw Runts|r和|cRXX_ENEMY_River paw Outrunner|r。掠夺他们的|cRXD_Loot_彩绘Gnoll臂章|r和|132889:0|t[亚麻布]
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 410015,1
    .isQuestAvailable 1644
step << Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith Martyrdom
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    >>杀死|cRXP_ENEMY_Riverpaw Runts|r和|cRXX_ENEMY_River paw Outrunner|r。掠夺他们的|cRXD_Loot_彩绘Gnoll臂章|r和|132889:0|t[亚麻布]
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 410015,1
    .isQuestTurnedIn 1644
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    #completewith Martyrdom
    #label Island
    .goto Duskwood,4.33,28.26,50 >>前往岛上的|cRXP_FRIENDLY_Ada Gelhardt|r
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    #requires Island
    #completewith Martyrdom
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r to start a fight
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
step << Paladin
    #xprate >1.49
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
step << Paladin
    #xprate >1.49
    #season 2
    #sticky
    #optional
    #label Charred
    .destroy 205864 >>从您的包中删除|T134939:0|t[Charred Note]，因为不再需要它
step << Paladin
    #xprate >1.49
    #season 2
    #label Martyrdom
    .train 410015 >>|cRXP_WARN_使用|r|T134419:0|t[殉道符文]|cRXP_WARN_to learn|r|T133815:0|t[Engrave Chest-Seal of Martyrom]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
step << Paladin
    #xprate 1.49-1.59
    #season 2
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>杀死|cRXP_ENEMY_Riverpaw符文|r和|cRXX_ENEMY_River paw跑者|r。掠夺他们的|cRXD_Loot_彩绘Gnoll臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
step << Paladin
    #xprate 1.49-1.59
    #season 2
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>杀死|cRXP_ENEMY_Riverpaw符文|r和|cRXX_ENEMY_River paw跑者|r。掠夺他们的|cRXD_Loot_彩绘Gnoll臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
step << Paladin
    #xprate >1.59
    #season 2
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>杀死|cRXP_ENEMY_Riverpaw Runts|r和|cRXX_ENEMY_River paw Outrunner|r。掠夺他们的|cRXD_Loot_彩绘Gnoll臂章|r和|132889:0|t[亚麻布]
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
    .isQuestAvailable 1644
step << Paladin
    #xprate >1.59
    #season 2
    #optional
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    >>杀死|cRXP_ENEMY_Riverpaw Runts|r和|cRXX_ENEMY_River paw Outrunner|r。掠夺他们的|cRXD_Loot_彩绘Gnoll臂章|r和|132889:0|t[亚麻布]
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
    .isQuestTurnedIn 1644
step << Paladin
    #xprate >1.49
    #season 2
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 11 >>交任务: |cRXP_FRIENDLY_悬赏河爪豺狼人|r
    .target Deputy Rainer
    .isQuestComplete 11


----End of Paladin 1.5x Martyrdom Rune section----
----Start of Warrior Gnoll Head section----

step << Warrior
    #xprate <1.49
    #season 2
    #label Garrison
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务: |cRXP_FRIENDLY_西泉要塞|r
    .accept 11 >>接任务: |cRXP_WARN_悬赏河爪豺狼人|r
    .target Deputy Rainer
step << Warrior
    #xprate >1.49
    #season 2
    #label Garrison
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务: |cRXP_FRIENDLY_西泉要塞|r
    .target Deputy Rainer
step << Warrior
    #xprate <1.49
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>杀死|cRXP_ENEMY_Riverpaw Runts|r和|cRXX_ENEMY_River paw Outrunner|r。掠夺他们的|cRXP_Loot_Armbands|r和a|T134163:0|t[|cRXD_Loot_Severed Gnoll Head|r]
    >>|cRXP_WARN_当你到达10级暴风时，这是解锁|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]|cRXP-WARN_forr所需的三个物品之一|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 204478,1 -- Severed Gnoll Head (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step << Warrior
    #xprate >1.49
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>杀死|cRXP_ENEMY_Riverpaw符文|r和|cRXX_ENEMY_River paw跑者|r。掠夺它们一个|T134163:0|t[|cRXD_Loot_Severed Gnoll Head|r]
    >>|cRXP_WARN_当你到达10级暴风时，这是解锁|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]|cRXP-WARN_forr所需的三个物品之一|r
    .collect 204478,1 -- Severed Gnoll Head (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step << Warrior
    #xprate <1.49
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 11 >>交任务: |cRXP_FRIENDLY_悬赏河爪豺狼人|r
    .goto Elwynn Forest,24.234,74.450
    .target Deputy Rainer
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务: |cRXP_FRIENDLY_西泉要塞|r
    .accept 11 >>接任务: |cRXP_WARN_悬赏河爪豺狼人|r << Warlock
    .goto Elwynn Forest,24.234,74.450
    .target +Deputy Rainer
    >>单击|cRXP_PICK_Wanted海报|r << Warlock
    .accept 176 >>接任务: |cRXP_WARN_通缉：霍格|r << Warlock
    .goto Elwynn Forest,24.548,74.672 << Warlock
step << Warlock
    #completewith GnollEnd
    >>杀死|cRXP_ENEMY_Riverpaw Runts|r和|cRXX_ENEMY_River paw Outrunners|r。为|T134939:0|t[|cRXD_Loot_Gold Pickup Schedule|r]掠夺它们
    .use 1307 >>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Gold取货时间表|r]开始任务|r
    >>|cRXP_WARN_|r|T134939:0|t[|cRXP_LOOT_Gold提货时间表|r]|cRXP-WARN_i是非常罕见的下跌。如果您不明白，请忽略此步骤|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r|cRXP_WARN_一种稀有的产卵，有100%的掉落几率|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接任务: |cRXP_LOOT_收货人|r
    .unitscan Gruff Swiftbite
step << Warlock
    #completewith next
    >>杀死|cRXP_ENEMY_Riverpaw Runts|r和|cRXP_ENEMY_River paw Outrunners|r。掠夺他们的|cRXD_Loot_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>杀死|cRXP_ENEMY_Hogger|r。掠夺他的|cRXX_Loot_爪|r
    >>|cRXP_ENEMY_Hogger|r|cRXP_WARN_can在多个位置产卵|r
    >>|cRXP_WARN_连续施放|r|T136183:0|t[恐惧]|cRXP_WARN_on|cRXP_ENEMY_Hogger|r并使用常规DoT杀死他|r
    >>|cRXP_WARN_如果需要的话，把他放回守卫塔，确保你对他造成了至少50%的伤害|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    #label GnollEnd
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>杀死|cRXP_ENEMY_Riverpaw Runts|r和|cRXP_ENEMY_River paw Outrunners|r。掠夺他们的|cRXD_Loot_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
step << Warlock
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 11 >>交任务: |cRXP_FRIENDLY_悬赏河爪豺狼人|r
    .target Deputy Rainer
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+4575 >>打磨至4575+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+5175 >>升级到5175+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >>放弃催收员
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step
#xprate >1.49
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, |cRXP_FRIENDLY_弗娜·法布隆|r
    >>|cRXP_WARN_不接受其他任务|r
    .turnin 184 >>交任务: |cRXP_FRIENDLY_法布隆的地契|r
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
#xprate >1.49
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗娜·法布隆|r
    >>|cRXP_WARN_不接受其他任务|r
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
#xprate <1.50
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, |cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 64 >>接任务: |cRXP_WARN_遗失的怀表|r
    .turnin 184 >>交任务: |cRXP_FRIENDLY_法布隆的地契|r
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 151 >>接任务: |cRXP_WARN_老马布兰契|r
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
#xprate <1.50
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, |cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 64 >>接任务: |cRXP_WARN_遗失的怀表|r
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 151 >>接任务: |cRXP_WARN_老马布兰契|r
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    #requires Charred
--XXREQ Placeholder invis step
step
#xprate <1.50
    #sticky
    #label Fields
    .goto Westfall,56.04,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫萨丁|r
    .accept 9 >>接任务: |cRXP_WARN_清理荒野|r
    .target Farmer Saldean
step
#xprate >1.49
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r, 他在里面
    >>|cRXP_WARN_不接受其他任务|r
    .turnin 36 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .target Salma Saldean
step
#xprate <1.50
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r, 他在里面
    .turnin 36 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .accept 38 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .accept 22 >>接任务: |cRXP_WARN_猪肝馅饼|r
    .target Salma Saldean
step
    #xprate <1.5
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5775 >>升级到5775+/6500xp
    .subzoneskip 108
step
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5410 >>升级到5410+/6500xp
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >>升级到5360+/8800xp
--XX 625+210+85+800=1720 x2=3440
step
    #softcore
    #completewith next
    .deathskip >>在精神治疗师处死亡并重生
    .target Spirit Healer
-- .subzoneskip 108
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r, |cRXP_FRIENDLY_丹努文队长|r
    .turnin 109 >>交任务: |cRXP_FRIENDLY_向格里安·斯托曼报到|r
    .accept 12 >>接任务: |cRXP_WARN_西部荒野人民军|r
    .goto Westfall,56.327,47.520
    .target +Gryan Stoutmantle
    .accept 102 >>接任务: |cRXP_WARN_西部荒野的豺狼人|r
    .goto Westfall,56.421,47.623
    .target +Captain Danuvin
step
    #xprate >1.49
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 109 >>交任务: |cRXP_FRIENDLY_向格里安·斯托曼报到|r
    .target Gryan Stoutmantle
step << Human
    #optional
    .goto Westfall,56.04,31.23
    .xp 10 >>升级到10级
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军需官刘易斯|r
    >>|cRXP_BUY_从他那里购买一个|r|T135435:0|t[简单木材]|cRXP_Buy_|r
    >>|cRXP_WARN_这用于使|r|T135805:0|t[基本营火]|cRXP_WARN_on Boats或Trams在不浪费时间的情况下使|r| T133971:0|t[烹饪]|cRX P_WARN_skill变平|r
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    .accept 6181 >>接任务: |cRXP_WARN_快递消息|r << Human
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Quartermaster Lewis
    .isQuestAvailable 6181 << Human
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Human
    #optional
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军需官刘易斯|r
    .accept 6181 >>接任务: |cRXP_WARN_快递消息|r
    .vendor >>供应商垃圾箱
    .target Quartermaster Lewis
    .isQuestAvailable 6181
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
    >>|cRXP_BUY_从她那里购买最多20件|r|T133918:0|t[Longjaw Mud Snappers]|cRXP_Buy_|r
    .collect 4592,20,314,1 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .turnin 6181 >>交任务: |cRXP_FRIENDLY_快递消息|r
    .accept 6281 >>接任务: |cRXP_WARN_赶赴暴风城|r
    .target Thor
step << skip --Rogue
    #season 2
    #completewith FlySW
    #label RoSS
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>|T133644:0|t[拾取口袋]用于|T134419:0|t的|cRXP_ENEMY_Defias Scout |r[|cRXP_RIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    >>|cRXP_WARN_|r|T133644:0|t[Pick Pocket]|cRXP_WARN_很有可能失败，因为您的级别过低。如果是，跳过这一步，飞往暴风。你很快就会在莫丹湖完成|r
    >>|cRXP_WARN_不要攻击|cRXP_ENEMY_Defias Scout|r，否则它将|r|T132331:0|t[Vanish]|cRXP-WARN_AND DESPAWN 3-5分钟。确保进入|r|T132320:0|t[Stealth]|cRXP_WARN_ARLY！|r
    >>|cRXP_WARN_|cRXP_ENEMY_Defias Scout|r可以在山丘上产卵|r
    .collect 208772,1 -- Rune of Saber Slash (1)
    .unitscan Defias Scout
    .train 424785,1
--XX Moved/forced to Loch/Darkshore
step << skip --Rogue
    #season 2
    #completewith next
    #requires RoSS
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .itemcount 208772,1
    .train 424785,1
step
    #label FlySW
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞到暴风城
    .target Thor
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯蒂芬妮·特纳|r
    .turnin 1643 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1644 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1644 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    --.accept 1780 >>接任务: |cRXP_WARN_圣洁之书|r
    .target Stephanie Turner
    .isQuestTurnedIn 1643
    .xp 12,1
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61,1 >>交任务: |cRXP_FRIENDLY_送往暴风城的货物|r
    >>|cRXP_WARN_我们选择|r|T132383:0|t[爆炸火箭]|cRXP_WARN_a作为奖励。它造成了相当大的伤害，可以用于“劈拉”，这非常有用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>|cRXP_WARN_点击此处查看关于“拆分拉动”的视频参考。这是一个短视频，值得学习|r
    .target Morgan Pestle
step << Paladin
    #xprate <1.5
    #season 2
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61,1 >>交任务: |cRXP_FRIENDLY_送往暴风城的货物|r
    >>|cRXP_WARN_我们选择|r|T132383:0|t[爆炸火箭]|cRXP_WARN_a作为奖励。它造成了相当大的伤害，可以用于“劈拉”，这非常有用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>|cRXP_WARN_点击此处查看关于“拆分拉动”的视频参考。这是一个短视频，值得学习|r
    .target Morgan Pestle
step
    #season 0,1 << Paladin
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61,1 >>交任务: |cRXP_FRIENDLY_送往暴风城的货物|r
    >>|cRXP_WARN_我们选择|r|T132383:0|t[爆炸火箭]|cRXP_WARN_a作为奖励。它造成了相当大的伤害，可以用于“劈拉”，这非常有用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>|cRXP_WARN_点击此处查看关于“拆分拉动”的视频参考。这是一个短视频，值得学习|r
    .target Morgan Pestle
step << Rogue
    #optional
    #completewith next
    .goto 1453,57.764,61.412,6 >>进入日常用品大楼
step << Rogue
    #xprate <1.5
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔曼·穆比|r
    >>|cRXP_BUY_向他购买|r|T135425:0|t[Keen飞刀]|cRXP_Buy_|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Thurman Mullby
    .xp <10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Rogue
    #xprate <1.5
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔曼·穆比|r
    >>|cRXP_BUY_向他购买|r|T135641:0|t[平衡飞刀]|cRXP_Buy_|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Thurman Mullby
    .xp >10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #xprate >1.49
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔曼·穆比|r
    >>|cRXP_BUY_向他购买|r|T135425:0|t[Keen飞刀]|cRXP_Buy_|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Thurman Mullby
    .xp <10+5035,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Rogue
    #xprate >1.49
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔曼·穆比|r
    >>|cRXP_BUY_向他购买|r|T135641:0|t[平衡飞刀]|cRXP_Buy_|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Thurman Mullby
    .xp >10+5035,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equip the |r|T135425:0|t[Keen飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_equp the |r|T135641:0|t[平衡飞刀]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #optional << Warlock/Mage/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吴平|r
    .trainer >>训练1小时剑和棍 << Warlock/Mage
    .trainer >>训练1h剑 << Rogue
    .trainer >>火车杆 << Priest
    .trainer >>训练2h剑 << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
step << Warlock/Mage
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吴平|r
    .trainer >>火车杆
    .target Woo Ping
step << Rogue
    #ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2623
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
step << Rogue
    #ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
step << Rogue
    #optional
    #ah
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    >>|cRXP_WARN_确保保存6秒以备日后训练|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
--XX No money gate factoring cutlass in case something cheaper on AH
step << Rogue
    #optional
    #ah
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_BUY_从他那里买一个|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
--XX No money gate factoring cutlass in case something cheaper on AH
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_调用|r|T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step
    #xprate <1.5
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板奥里森|r
    .home >>将您的炉石设置为暴风城
    .target Innkeeper Allison
step << skip --Warrior
    #season 2
    .gossipoption 109045 >>Talk to |cRXP_FRIENDLY_Liv Bradford|r inside the Inn at the Park
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >>Talk to |cRXP_ENEMY_Stuart|r, then beat him up. He will pass out at 0%
    .goto Stormwind City,21.213,62.781
    >>如果|cRXP_ENEMY_Stuart |r不在，请等待他重生
    .gossipoption 109044 >>Talk to |cRXP_FRIENDLY_Liv Bradford|r again after knocking out |cRXP_ENEMY_Stuart|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault |r]|cRXP_WARN_训练|r|T236317:0|t[Frenzed Assault]
    >>|cRXP_WARN_注意：在这个级别上独奏可能很困难。寻求帮助，否则你很快就会在12级完成|r
    .use 204716
    .target Liv Bradford
    .mob Stuart
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 2998 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1641 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1641 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .target Duthorian Rall
    .isOnQuest 2998
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .accept 1641 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1641 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_使用|T133739:0|t[|cRXP_LOOT_the Tome of Divinity|r]开始任务|r
    .accept 1642 >>接任务: |cRXP_WARN_圣洁之书|r
    .use 6775
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1642 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1643 >>接任务: |cRXP_WARN_圣洁之书|r
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 19834 >>训练你的职业技能
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 647 >>训练你的职业技能
    .target Arthur the Faithful
    .xp <14,1
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯蒂芬妮·特纳|r
    .turnin 1643 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1644 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1644 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    --.accept 1780 >>接任务: |cRXP_WARN_圣洁之书|r
    .target Stephanie Turner
----XX if ever in the future, add Level 12 xp grind for 1.5x Tome of Divinity




----Warlock Elwynn Voidwalker Section Start----




step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，然后下楼
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .train 705 >>训练你的职业技能
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .train 689 >>训练你的职业技能
    .target Ursula Deline
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1685 >>交任务: |cRXP_FRIENDLY_加科因的召唤|r
    .accept 1688 >>接任务: |cRXP_LOOT_苏伦娜·凯尔东|r
    .target Gakin the Darkbinder
step << Warlock
    #softcore
    .deathskip >>使用|T136126:0|t[生命水龙头]并站在你旁边的篝火上，在|cRXP_FRIENDLY_Spirit Healer|r处死亡并重生
    .target Spirit Healer
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >>Travel to Goldshire
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    >>|cRXP_WARN_选择|r|T135145:0|t[平衡斗棍]
    .turnin 176 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
    .turnin 123 >>交任务: |cRXP_FRIENDLY_收货人|r
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    >>|cRXP_WARN_选择|r|T135145:0|t[平衡斗棍]
    .turnin 176 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
    .target Marshal Dughan
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +|cRXP_WARN_Equip the |r|T135145:0|t[平衡斗棍]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #optional
    #label BoarMeat烹饪4
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>杀死|cRXP_ENEMY_Rockhide Boars|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Rockhide Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #requires BoarMeat烹饪4
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>杀死|cRXP_ENEMY_Rockhide Boars|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Rockhide Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    >>|cRXP_WARN_途中升级。试着扳平你的|r|T135145:0|t[Balanced Fighting Stick]|cRXP_WARN_skill|r
    .subzone 62 >>前往Brackwell南瓜地
    .isOnQuest 1688
step << Warlock
    #xprate <1.5
    #optional
    #completewith SChoker
    >>杀死|cRXP_ENEMY_Defias土匪|r。为|T134939:0|t[|cRXP-Loot_Westfall契约|r]掠夺他们
    .use 1972>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Westfall契约|r]开始任务|r
    >>|cRXP_WARN_|r|T134939:0|t[|cRXP_OOT_Westfall契约|r]|cRXP-WARN_i是一个非常罕见的下跌。如果您不明白，请忽略此步骤|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接任务: |cRXP_LOOT_法布隆的地契|r
step << Warlock
    #sticky
    #label WLBandanaEnd
    #loop
    .goto Elwynn Forest,70.5,77.6,0
    .goto Elwynn Forest,70.8,80.9,0
    .waypoint Elwynn Forest,70.5,77.6,60,0
    .waypoint Elwynn Forest,68.1,77.5,60,0
    .waypoint Elwynn Forest,68.2,81.4,60,0
    .waypoint Elwynn Forest,70.8,80.9,60,0
    >>杀死|cRXP_ENEMY_Defias土匪|r。掠夺他们的|cRXX_Loot_红亚麻绷带|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>杀死|cRXP_ENEMY_Surena Caledon|r。为她掠夺她|cRXX_Loot_Choker|r
    >>|cRXP_WARN_专注于快速击杀|cRXP_ENEMY_Surena Caledon|r|r
    >>|cRXP_WARN_铸造|r|T136183:0|t[恐惧]|cRXP_WARN_on|cRXX_ENEMY_Morgan收藏家|r持续|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WolfMeat烹饪9
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Warlock
    #optional
    #requires WolfMeat烹饪8
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>杀死|cRXP_ENEMY_Prowlers |r。掠夺他们的|T133970:0|t|cRXP-Loot_[狼肉]|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << Warlock
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .turnin 59 >>交任务: |cRXP_FRIENDLY_布甲和皮甲|r
    .turnin 83 >>交任务: |cRXP_FRIENDLY_红色亚麻布|r
    .target Sara Timberlain
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .turnin 59 >>交任务: |cRXP_FRIENDLY_布甲和皮甲|r
    .target Sara Timberlain
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
    >>|cRXP_WARN_Grind途中。使用|r|T136163:0|t[Drain Soul]确保您至少有2|r|T134075:0|t[灵魂碎片]|cRXP_WARN_
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
    .accept 244 >>接任务: |cRXP_WARN_豺狼人的入侵|r
    .target Guard Parker
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    >>|cRXP_WARN_小心路上的暴徒|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .target Deputy Feldon
step << Warlock
    #hardcore
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    >>|cRXP_WARN_坚持走主干道，途中避开任何近距离的暴徒|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线
    .fly Stormwind >>飞到暴风城
    .target Ariena Stormfeather
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
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1688 >>交任务: |cRXP_FRIENDLY_苏伦娜·凯尔东|r
    .accept 1689 >>接任务: |cRXP_LOOT_誓缚|r
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰羔羊的底部|r
    .cast 7728 >>|cRXP_WARN_使用|r|T133292:0|t[血石扼流器]|cRXP_WARN_发出一个|r|cRXP-ENEMY_召唤的虚空行者|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>杀死|cRXP_ENEMY_召唤的虚空行者|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>交任务: |cRXP_FRIENDLY_誓缚|r


----Warlock Elwynn Voidwalker Section End----


step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134168:0|t[|cRXP_LOOT_Severed Kobold Head|r] to receive |T134455:0|t[Monster Hunter's First Rune Fragment]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134169:0|t[|cRXP_LOOT_Severed Murloc Head|r] to receive |T134455:0|t[Monster Hunter's Second Rune Fragment]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Talk to |cRXP_FRIENDLY_Viktoria Woods|r to turn in your |T134163:0|t[|cRXP_LOOT_Severed Gnoll Head|r] to receive |T134455:0|t[Monster Hunter's Third Rune Fragment]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >>|cRXP_WARN_使用|r|T134455:0|t[怪物猎人符文碎片]|cRXP_WARN_中的任何一个来创建|r|T134419:0|t[|cRXP-FRIENDLY_毁灭之恩|r]
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]|cRXP_WARN_to train|r|T135291:0|t[Devastate]
    .use 204703
    .itemcount 204703,1
step << Rogue
    #xprate <1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_Only train|r|T132147:0|t[双Wield]|cRXP_WARN_and|r|T132307:0|t[Sprint]
    .train 674 >>列车|T132147:0|t[双Wield]
    .train 2983 >>列车|T132307:0|t[冲刺]
    .target Osborne the Night Man
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .train 674 >>列车|T132147:0|t[双Wield]
    .train 2983 >>列车|T132307:0|t[冲刺]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .train 1766 >>训练你的职业技能
    .target Osborne the Night Man
    .xp <12,1
    .xp >14,1
step << Rogue
    #xprate >1.59
    #optional
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
    .xp <14,1
step << Rogue
    #optional
    #label StilettoDW
    #completewith Continue
    +|cRXP_WARN_立即装备|r|T135346:0|t[Stiletto]|cRXP_WARN_in|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>6.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #requires StilettoDW
    #completewith Continue
    +|cRXP_WARN_别担心，如果你现在不是|r|T132147:0|t[Dual Wielding]|cRXP_WARN_right，你会在必要时稍后购买武器|r
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
step << Human
    #xprate <1.5
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯瑞克·斯图恩|r
    .turnin 6281 >>交任务: |cRXP_FRIENDLY_赶赴暴风城|r
    .accept 6261 >>接任务: |cRXP_LOOT_杜加尔·朗德瑞克|r
    .target Osric Strang
step << Human
    #xprate >1.49
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯瑞克·斯图恩|r
    .turnin 6281 >>交任务: |cRXP_FRIENDLY_赶赴暴风城|r
    .target Osric Strang
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈里·伯加德|r
    .turnin 1638 >>交任务: |cRXP_FRIENDLY_战士的训练|r
    .accept 1639 >>接任务: |cRXP_WARN_醉鬼巴特莱比|r
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴特莱比|r
    .turnin 1639 >>交任务: |cRXP_FRIENDLY_醉鬼巴特莱比|r
    .accept 1640 >>接任务: |cRXP_LOOT_击败巴特莱比|r
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>攻击|cRXP_ENEMY_Bartleby|r。他将以1%的速度提交
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴特莱比|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >>交任务: |cRXP_FRIENDLY_击败巴特莱比|r
    .accept 1665 >>接任务: |cRXP_LOOT_巴特莱比的酒杯|r
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈里·伯加德|r
    .turnin 1665 >>交任务: |cRXP_FRIENDLY_巴特莱比的酒杯|r
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >>进入暴风大教堂
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .turnin 5635 >>交任务: |cRXP_FRIENDLY_绝望祷言|r
    .train 8092 >>训练你的职业技能
    .target High Priestess Laurena
    .isOnQuest 5635
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .turnin 5634 >>交任务: |cRXP_FRIENDLY_绝望祷言|r
    .train 8092 >>训练你的职业技能
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .trainer >>训练你的职业技能
    .target High Priestess Laurena
    .train 13908,3
step << Rogue
    #season 2
    #optional
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >>进入矮人区暴风城的割喉小巷
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_上楼进入房子|r
    >>打开|cRXP_PICK_Dusty Chest|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]抓取它
    >>|cRXP_WARN_这样做会产生两个10级|cRXP_ENEMY_Cut-throat麻瓜|r，它们会攻击你|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .train 400081 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_精度调整|r]|cRXP_WARN_训练|r|T135610:0|t]
    .use 204174
    .itemcount 204174,1
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 1097 >>交任务: |cRXP_FRIENDLY_艾尔默的任务|r
    .accept 353 >>接任务: |cRXP_WARN_雷矛的包裹|r
    .target Grimand Elmore
step << Warrior
    #season 0,1
    #optional
    #completewith DeeprunEnter
    +|cRXP_WARN_Put|r|T132363:0|t[破甲]|cRXP_WARN_on你的动作栏，并确保经常使用它。比使用|r|T132282:0|t[英雄一击]更有效
step << Warrior/Paladin/Rogue
    #optional
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯塔·深炉|r
    .collect 2901,1,432,1 >>|cRXP_BUY_从她那里购买一个|r|T134708:0|t[采矿选择]|cRXP_Buy_|r
    >>|cRXP_WARN_您将训练|r|T134708:0|t[采矿]|cRXP_WARN_water|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>进入Deeprun Tram
    .zoneskip Ironforge
step
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_有轨电车到达时：|r
    .cast 818 >>|cRXP_WARN_创建一个|r|T135805:0|t[Basic Campfire]|cRXP_WARN_（在拼写手册的“常规”选项卡下）|r
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_有轨电车到达时：|r
    .cast 818 >>|cRXP_WARN_创建一个|r|T135805:0|t[Basic Campfire]|cRXP_WARN_（在拼写手册的“常规”选项卡下）|r
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_有轨电车到达时：|r
    .cast 818 >>|cRXP_WARN_创建一个|r|T135805:0|t[Basic Campfire]|cRXP_WARN_（在拼写手册的“常规”选项卡下）|r
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    >>|T133971:0|t[Cook]|cRXP_WARN_以下项目：|r
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T133970:0|t|cRXP_LOOT_[大块的野猪肉]| r|cRXP-WARN_into|r|T133974:0|t[烤野猪肉]
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T133970:0|t|cRXP_LOOT_[狼肉]| r|cRXP-WARN_into|r|T133974:0|t[狼肉烧焦]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T133970:0|t|cRXP_LOOT_[狼肉]| r|cRXP-WARN_into|r|T133974:0|t[狼肉烧焦]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    >>|T133971:0|t[烹饪]| cRXP_WARN_the|r|T133970:0|t|cRXP_LOOT_[大块的野猪肉]| r|cRXP-WARN_into|r|T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate <1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_乘坐深跑电车前往铁炉厂一侧|r
    >>|cRXP_WARN_如果需要，在等待开往铁炉堡的电车时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_你需要|r|T135966:0|t[急救]|cRXP_WARN_to达到80才能完成24级任务|r << Rogue !Dwarf
    >>|cRXP_WARN_铸造|r|T136221:0|t[召唤虚空行者]|cRXP_WARN_and|r|T135230:0|t[创建健康石]|cRXP_WARN_while waiting the Tram to Ironforge if needed|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_WARN_捕捉矿道老鼠|r
    .target Monty
step
    #xprate <1.59
    >>|cRXP_WARN_在Deeprun Tram内使用|r|T133942:0|t[捕鼠器的笛子]|cRXP_WARN_on|cRXP-ENEMY_Deeprun Rats|r|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
    .target Monty
step
    #xprate >1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_乘坐深跑电车前往铁炉厂一侧|r
    >>|cRXP_WARN_如果需要，在等待开往铁炉堡的电车时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_你需要|r|T135966:0|t[急救]|cRXP_WARN_to达到80才能完成24级任务|r << Rogue !Dwarf
    >>|cRXP_WARN_铸造|r|T136221:0|t[召唤虚空行者]|cRXP_WARN_and|r|T135230:0|t[创建健康石]|cRXP_WARN_while waiting the Tram to Ironforge if needed|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_WARN_捕捉矿道老鼠|r
    .target Monty
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|cRXP_WARN_在Deeprun Tram内使用|r|T133942:0|t[捕鼠器的笛子]|cRXP_WARN_on|cRXP-ENEMY_Deeprun Rats|r|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
    .target Monty
    .zoneskip Ironforge
step
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    >>|cRXP_WARN_如果在等电车时需要，请将您的|r|T135966:0|t[急救]|cRXP_WARN_if调平|r << Rogue/Warrior/Paladin
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .isQuestAvailable 314
step << Paladin/Warrior
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>前往酒店内的|cRXP_FRIENDLY_Bruuk Barleybeard|r
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r, 他在里面
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Bruart|r to start a fight
    >>击败|cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_当他投掷|r|T132939:0|t[反手]|cRXP_WARN_（眩晕你2秒）时要小心|r
    >>|cRXP_WARN_记得在他身上预铸|r|T135924:0|t[十字军封印]|cRXP_WARN_on|r << Paladin
    >>|cRXP_WARN_不要意外地将|r|T135906:0|t[Blessing of May]|cRXP_WARN_on投射到他身上|r << Paladin
    >>|cRXP_WARN_把他放在楼上的阳台上，然后在客栈外面放下，投下|r|T135920:0|t[圣光]|cRXP_WARN_if needed|r << Paladin
    >>|cRXP_WARN_把他放在楼上的阳台上，然后在客栈外面放下，如果你有/需要的话，使用|r|T133688:0|t[绷带]|cRXP_WARN_i|r << Warrior
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin/Warrior
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>击败|cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_当他投掷|r|T132939:0|t[反手]|cRXP_WARN_（眩晕你2秒）时要小心|r
    >>|cRXP_WARN_记得在他身上预铸|r|T135924:0|t[十字军封印]|cRXP_WARN_on|r << Paladin
    >>|cRXP_WARN_不要意外地将|r|T135906:0|t[Blessing of May]|cRXP_WARN_on投射到他身上|r << Paladin
    >>|cRXP_WARN_把他放在楼上的阳台上，然后在客栈外面放下，投下|r|T135920:0|t[圣光]|cRXP_WARN_if needed|r << Paladin
    >>|cRXP_WARN_把他放在楼上的阳台上，然后在客栈外面放下，如果你有/需要的话，使用|r|T133688:0|t[绷带]|cRXP_WARN_i|r << Warrior
    >>|cRXP_WARN_击败|cRXP_ENEMY_Bruart|r后：|r
    >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r << Paladin
    >>|cRXP_WARN_如果他不给你|r|T134419:0|t[重生符文]|cRXP_WARN_，你可能需要再次战斗|cRXP_ENEMY_Bruart|r|r << Paladin
    >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r << Warrior
    >>|cRXP_WARN_如果他不给你|r|T134419:0|t[疯狂攻击符文]|cRXP_WARN_，你可能需要再次与|cRXP-ENEMY_Bruart|r战斗|r << Warrior
    >>|cRXP_WARN_注意：这可能很难单独进行。寻求帮助，否则指南稍后会告诉您再次完成|r << Warrior
    .collect 205683,1 << Paladin --Rune of Rebuke (1)
    .collect 204716,1 << Warrior --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[重生符文]|cRXP_WARN_学习|r|T134596:0|t[雕刻裤子-重生]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Engrave your |r|T134596:0|t|cRXP_LOOT_[裤子]|r|cRXP_WARN_with|r|T134596:0 |t[雕刻裤子-Rebuke]
    >>|cRXP_WARN_记住将|r|T134919:0|t[Rebuke]|cRXP_WARN_放在动作栏中|r
    .train 425621,3
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_使用|r|T134419:0|t[疯狂攻击符文]|cRXP_WARN_学习|r|T134596:0|t[雕刻裤子-疯狂攻击]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Engrave your |r|T134596:0|t|cRXP_LOOT_[裤子]|r|cRXP_WARN_with|r|T134596:0 |t[雕刻裤子-疯狂攻击]
    .train 425447,3
step << Warrior
    #optional
    #completewith WarriorTrain
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >>朝着|cRXP_FRIENDLY_Bilban Toslespanr|r行驶
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r
    >>|cRXP_WARN_确保保存20s 70c以备日后使用|r
    .train 2687 >>训练你的职业技能
    .target Bilban Tosslespanner
    .xp <10,1
    .xp >12,1
step << Warrior
    #xprate >1.59
    #optional
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r
    >>|cRXP_WARN_确保保存20s 70c以备日后使用|r
    .train 5242 >>训练你的职业技能
    .target Bilban Tosslespanner
    .xp <12,1
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >>进入Timberline Arms大楼
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比克斯|r, |cRXP_FRIENDLY_布里维夫·石拳|r
    .train 2567 >>火车抛锚
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >>列车2h梅斯
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    #xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_向她购买|r|T135425:0|t[Keen飞刀]|cRXP_Buy_|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
    #xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_向她购买|r|T135641:0|t[平衡飞刀]|cRXP_Buy_|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_向她购买|r|T135425:0|t[Keen飞刀]|cRXP_Buy_|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_向她购买|r|T135641:0|t[平衡飞刀]|cRXP_Buy_|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equip the |r|T135425:0|t[Keen飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_equp the |r|T135641:0|t[平衡飞刀]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.356,88.398,6 >>退出Timberline Arms大楼
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获得铁炉堡飞行路线
    .target Gryth Thurden
step
    #xprate >1.49
    #optional
    #completewith IFHS
    .goto 1455,43.883,59.467,15,0 
    .goto 1455,38.497,71.135,15,0
    .goto 1455,25.658,61.707,20,0
    .goto 1455,20.419,53.269,10 >>进入石火酒馆
    .train 122,3 << Mage
    .train 633,3 << Paladin
step << Mage/Paladin
    #xprate >1.49
    #optional
    #completewith MageIFTrain << Mage
    #completewith PaladinIFTrain << Paladin
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,27.17,8.58,12 >>向|cRXP_FRIENDLY_Dink|r行进 << Mage
    .goto Ironforge,23.131,6.143,12 >>向|cRXP_FRIENDLY_Brandur Ironhammer|r行进 << Paladin
step << Mage
    #xprate >1.49
    .goto Ironforge,27.17,8.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r, 他在里面
    .train 122 >>训练你的职业技能
    .target Dink
    .xp <10,1
    .xp >12,1 
step << Mage
    #xprate >1.49
    .goto Ironforge,27.17,8.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r, 他在里面
    .train 145 >>训练你的职业技能
    .target Dink
    .xp <12,1
    .xp >14,1 
step << Mage
    #xprate >1.49
    #label MageIFTrain
    .goto Ironforge,27.17,8.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r, 他在里面
    .train 1460 >>训练你的职业技能
    .target Dink
    .xp <14,1 
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r, 他在里面
    .train 633 >>训练你的职业技能
    .target Brandur Ironhammer
    .xp <10,1
    .xp >12,1
step << Paladin
    #xprate >1.49
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 19834 >>训练你的职业技能
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Paladin
    #xprate >1.49
    #optional
    #label PaladinIFTrain
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 647 >>训练你的职业技能
    .target Arthur the Faithful
    .xp <14,1
--XX Alternative paladin train if they didn't get 10 in Goldshire
step
    #xprate >1.49
    #label IFHS
    .goto 1455,20.419,53.269,10,0 << Mage/Paladin
    .goto Ironforge,18.14,51.45
    >>对话: |cRXP_FRIENDLY_旅店老板洛雷·火酒|r, 他在里面
    .home >>将您的炉石设置为铁炉堡
    .target Innkeeper Firebrew
step
    #ssf
    #xprate >1.49
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r|r
    .isQuestAvailable 314
step
    #xprate <1.5
    #ssf
    #optional
    #completewith next
    .goto 1455,48.773,55.875,20,0
    .goto 1455,48.257,55.177,20,0
    .goto 1455,46.648,50.482,20,0
    .goto 1455,44.781,49.811,20,0
    .goto 1455,38.628,56.436,20 >>Enter The High Seat
    .zoneskip Dun Morogh
    .isQuestAvailable 314
    .train 122,3 << Mage
    .train 633,3 << Paladin
step
    #xprate <1.5
    #ssf
    #optional
    .goto 1455,38.628,56.436
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r|r
    .isQuestAvailable 314
    .train 122,3 << Mage
    .train 633,3 << Paladin
step << Mage/Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,27.17,8.58,12 >>向|cRXP_FRIENDLY_Dink|r行进 << Mage
    .goto Ironforge,23.131,6.143,12 >>向|cRXP_FRIENDLY_Brandur Ironhammer|r行进 << Paladin
step << Mage
    #xprate <1.5
    .goto Ironforge,27.17,8.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r, 他在里面
    .train 122 >>训练你的职业技能
    .target Dink
--XX Alternative mage train if they didn't get 10 in Goldshire
step << Paladin
    #xprate <1.5
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r, 他在里面
    .train 633 >>训练你的职业技能
    .target Brandur Ironhammer
--XX Alternative paladin train if they didn't get 10 in Goldshire
step << Mage/Paladin
    #xprate <1.5
    #ssf
    #optional
    .goto 1455,25.238,10.965,-1
    .goto 1455,24.300,8.708,-1
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r|r
    .isQuestAvailable 314
    .train 122,3 << Mage
    .train 633,3 << Paladin
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_购买|r|T133970:0|t|cRXP_LOOT[猪肉块]|r|cRXP-Buy_和/或|r|T133970:0 |t|cRXP_LOUT[狼肉]|r| cRXP_Buy_以使您的|r |T133971:0|t[烹饪]|cRXP_Buy_与更高版本持平|r
    >>|cRXP_WARN_你需要50|r|T133971:0|t[烹饪]|cRXP_WARN_fora quest in Darkshire later|r
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便很快在莫丹湖更快地报到，并将您的|r|T133971:0|t[烹饪]|cRXP_Buy_skill与以下物品持平：|r
    >>|T134342:0|t[肥肠]
    >>|T134027:0|t[Bear Meat]
    >>|T134437:0|t[蜘蛛Ichor]
    >>|T133970:0|t|cRXP_LOOT_[猪肉块]|r
    >>|T133970:0|t|cRXP_LOOT_[狼肉]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便很快在莫丹湖更快地办理登机手续：|r
    >>|T134342:0|t[肥肠]
    >>|T134027:0|t[Bear Meat]
    >>|T134437:0|t[蜘蛛Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #ah
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r|r
    .isQuestAvailable 314
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>杀死|cRXP_ENEMY_Elder Crag Boar|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    >>|cRXP_WARN_这将用于调平|r|T133971:0|t[烹饪]|cRXP_WARN_water|r 
    >>|cRXP_WARN_您需要10|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Auberdine进行任务|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>杀死|cRXP_ENEMY_Elder Crag Boar|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    >>|cRXP_WARN_这将用于调平|r|T133971:0|t[烹饪]|cRXP_WARN_water|r 
    >>|cRXP_WARN_你需要50|r|T133971:0|t[烹饪]|cRXP_WARN_fora quest in Darkshire later|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #label Dirt
    #completewith Rudra
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Go up the dirt path
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .goto 1426,62.778,54.591,0
    .goto 1426,62.538,46.195,0
    +|cRXP_WARN_风筝|cRXP_ENEMY_Vagash|r向下到|r|cRXP-FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_点击这里如果你正在挣扎|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>|cRXP_WARN_点击此处查看视频参考|r << !Mage
    .mob Vagash
step << Warrior/Rogue
    #optional
    #requires Dirt
    #completewith VagashEnd
    +|cRXP_WARN_Equip the |r|T135425:0|t[Keen飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_WARN_保护牲畜|r
    .target Rudra Amberstill
step
    #label VagashEnd
    .goto 1426,62.778,54.591,0
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>杀死|cRXP_ENEMY_Vagash|r。掠夺他的|cRXX_Loot_Fang |r
    >>|cRXP_WARN_把他引到牧场南边的守卫那里。确保你对他造成51%+的伤害|r
    >>|cRXP_WARN_在你试图杀死|cRXP_ENEMY_Vagash|r之前，请观看下面的视频。它可以在任何课程中单独使用|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_点击此处查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>|cRXP_WARN_点击此处查看视频参考|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
    .target Rudra Amberstill
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>杀死|cRXP_ENEMY_Large Crag Boar|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>杀死|cRXP_ENEMY_Large Crag Boar|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的Boar Meat]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Large Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师格瑞姆|r
    .train 2550 >>火车|T133971:0|t[烹饪]
    .target Cook Ghilm
step << !Human
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡杉·莫格什|r
    .vendor >>|cRXP_BUY_购买|r|T133968:0|t[新鲜烘焙面包]|cRXP_Buy_如果需要|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_购买|r|T133968:0|t[新鲜烘焙面包]|cRXP_Buy_和|r|T132815:0|t[冰牛奶]|cRX|r << !Warrior !Rogue
    .target Kazan Mogosh
    .xp >15,1
step << Rogue
    #completewith QuarryEnd
    #label RogueWep
    .goto 1426,68.866,55.958,8,0
    .goto 1426,69.002,55.896
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉斯特·多克南|r
    >>|cRXP_WARN_从他那里购买|r|T135321:0|t[Gladius]|cRXP_WARN_|r
    .collect 2488,1 --Collect Gladius (1)
    .target Frast Dokner
    .money <0.0482
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
--XX Shows if you didn't get a cutlass or better wep earlier
step << Rogue
    #optional
    #completewith QuarryEnd
    #requires RogueWep
    #label Gladius
    .equip 16,2488 >>|cRXP_WARN_将|r|T135321:0|t[Gladius]|cRXP_WARN_in装备在您的右手上|r
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
step << Rogue
    #optional
    #completewith QuarryEnd
    #requires Gladius
    .equip 17,2494 >>|cRXP_WARN_立即装备|r|T135641:0|t[Stiletto]|cRXP_WARN_in|r
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #xprate <1.5
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r, |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 433 >>接任务: |cRXP_WARN_公众之仆|r
    .goto Dun Morogh,68.671,55.969
    .target +参议员Mehr Stonehallow
    .accept 432 >>接任务: |cRXP_WARN_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #xprate >1.49
    #label QuarryStart
    .goto Dun Morogh,69.084,56.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 432 >>接任务: |cRXP_WARN_该死的石腭怪！|r
    .target Foreman Stonebrow
    .xp >14,1
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,69.324,55.456
    #requires RogueWep << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹克·利刃|r
    .train 2575 >>列车|T134708:0|t[采矿]
    >>|cRXP_WARN_与|r|T136241:0|t[打黑]|cRXP_WARN_to制造|r|T135248:0|t[Rough Sharpening Stone]|cRXP_WARN_and|r|T235255:0|t[TRough WeightStone]| cRXP_WARN_to一起使用可增加武器伤害|r
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    .target Dank Drizzlecut
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >>|cRXP_WARN_Cast|r|T136025:0|t[查找矿物]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
    #xprate <1.5
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>杀死洞穴内的|cRXP_ENEMY_Rockjaw头骨重击者|r和|cRXX_ENEMY_ Rockjaw接骨者|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step
    #xprate >1.49
    .goto Dun Morogh,70.49,58.35,50,0
    .goto Dun Morogh,68.23,59.37,50,0
    .goto Dun Morogh,70.49,58.35
    >>杀死|cRXP_ENEMY_Rockjaw头骨重击者|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
    .isOnQuest 432
step
    #xprate <1.5
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头乔尼·石眉|r, |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
    .goto Dun Morogh,68.671,55.969
    .target +参议员Mehr Stonehallow
step
    #xprate >1.49
    #label QuarryEnd
    .goto Dun Morogh,69.084,56.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
    .target Foreman Stonebrow
    .isQuestComplete 432
step << !Warrior !Rogue !Paladin
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡杉·莫格什|r
    .vendor >>|cRXP_BUY_最多购买20 |r|T132815:0|t[Ice Cold Milk]|cRXP_Buy_|r
    .target Kazan Mogosh
    .xp >15,1
step
    #optional
    #label BoarMeatDunMorogh3
    #completewith Revenge
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死|cRXP_ENEMY_Scared Crag Boar|r和|cRXP_ENEMY_Elder Crag Boars|r。掠夺它们的|T133970:0|t|cRXD_Loot_[大块的肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh3
    #completewith Revenge
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死|cRXP_ENEMY_Scared Crag Boar|r和|cRXP_ENEMY_Elder Crag Boars|r。掠夺它们的|T133970:0|t|cRXD_Loot_[大块的肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>点击地面上的|cRXP_PICK_Dwarven尸体|r
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_WARN_驾驶员的复仇|r
step << Mage
    #season 2
    #completewith next
    >>杀死|cRXP_ENEMY_Mangcaw|r。掠夺他以获得|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]
    .collect 203753,1 -- Spell Notes: RING SEFF OSTROF (1)
    .train 401765,1
step
    .goto Dun Morogh,78.97,37.14
    >>杀死|cRXP_ENEMY_Mangcaw|r。掠夺他的|cRXX_Loot_Caw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Mage
    #season 2
    #completewith enterloch
    .collect 211779,1 >>您需要|cRXP_FRIENDLY_Reagent供应商|r提供的|T135933:0|t[理解符]才能使用|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]
    .train 401765 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：RING SEFF OSTROF|r]|cRXP-WARN_to train|r|T236227:0|t[霜的手指]
    .use 203753
step
    #label Revenge
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417,1 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r << Rogue
    .turnin 417 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r << !Rogue
    .target Pilot Hammerfoot
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_立即装备|r|T135641:0|t[工匠匕首]|cRXP_WARN_in|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step
    #label enterloch
    .goto Dun Morogh,84.4,31.1,25 >>穿过隧道去莫丹湖
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#version 1
<< Alliance
#group RestedXP 联盟 1-20
#name 11-13 洛克莫丹
#displayname 13-15 Loch Modan << SoD
#next 13-15 西部荒野；14-16 Darkshore
#defaultfor Human

step
    #optional
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor >>供应商和维修
    .target Gothor Brumn
step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    >>|cRXP_WARN_还不接受风暴派克的命令|r
    .turnin 353 >>交任务: |cRXP_FRIENDLY_雷矛的包裹|r
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
    .target Mountaineer Stormpike
step
    #optional
    #label BoarMeatLoch1
    #completewith ThelsamarFirst
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的野猪肉]|r
    >>|cRXP_WARN_这将用于调平|r|T133971:0|t[烹饪]|cRXP_WARN_water|r 
    >>|cRXP_WARN_您需要10|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Auberdine进行任务|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
step
    #optional
    #requires BoarMeatLoch1
    #completewith ThelsamarFirst
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的野猪肉]|r
    >>|cRXP_WARN_这将用于调平|r|T133971:0|t[烹饪]|cRXP_WARN_water|r 
    >>|cRXP_WARN_你需要50|r|T133971:0|t[烹饪]|cRXP_WARN_fora quest in Darkshire later|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144
step
    #optional
    #completewith ThelsamarFirst
    >>杀死|cRXP_ENEMY_Elder Black Bear|r。掠夺它们的|cRXX_Loot_Bear Meat|r
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|cRXX_Loot_野猪肠道|r
    >>杀死|cRXP_ENEMY_Forest潜伏者|r。掠夺他们的|cRXX_Loot_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_保存任意|r|T133970:0|t|cRXP_LOOT_[猪肉块]|r|cRXT_WARN_to用于整平|r|T133971:0|t[烹饪]|cRXP-WARN_water|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
    .subzoneskip 144
step
    #optional
    #completewith next
    .subzone 144 >>Travel to Thelsamar
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .accept 418 >>接任务: |cRXP_WARN_塞尔萨玛血肠|r
    .target Vidra Hearthstove
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    #optional
    #competewith StormpikeO
    .abandon 1338 >>放弃风暴派克的命令。这是为了解锁登山者风暴派克的任务，该任务将免费提供550xp的回合
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尼·铁心|r
    .vendor 1682 >>|cRXP_BUY_如果需要，最多从她那里购买2|r|T133634:0|t[棕色小袋子]|cRXP_Buy_|r
    .target Yanni Stoutheart
step
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r
    .vendor 6734 >>|cRXP_BUY_购买|r|T133968:0|t[新鲜面包]|cRXP_Buy_。目标是拥有大约20个|r << Warrior/Rogue
    .vendor 6734 >>|cRXP_BUY_BUY|r|T133968:0|t[新鲜烘焙面包]|cRXP_BUY_and|r|T132815:0|t[冰牛奶]|cRX P_BUY_。目标是吃大约10|r|T133968:0|t[新鲜烘焙面包]|cRXP_BUY_和20|r|T132815:0|t[冰牛奶] << !Warrior !Rogue
    .target Innkeeper Hearthstove
    .xp >15,1
step
    #label StormpikeO
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_登山运动员Kadrell|r|cRXP_WARN_穿过Thelsamar|r
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r
    .accept 1339 >>接任务: |cRXP_WARN_巡山人卡尔·雷矛的任务|r
    .target Mountaineer Kadrell
step << Rogue
    #season 2
    #optional
    #label BoarMeatLochRogue
    #completewith LochModanDam
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step << Rogue
    #season 2
    #optional
    #requires BoarMeatLochRogue
    #completewith LochModanDam
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的野猪肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step << Rogue
    #season 2
    #completewith LochModanDam
    >>杀死|cRXP_ENEMY_Elder Black Bear|r。掠夺它们的|cRXX_Loot_Bear Meat|r
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|cRXX_Loot_野猪肠道|r
    >>杀死|cRXP_ENEMY_Forest潜伏者|r。掠夺他们的|cRXX_Loot_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
    .train 424785,1
step << Rogue
    #xprate <1.59
    #season 2
    #completewith LochModanDam
    >>杀死|cRXP_ENEMY_Tunnel Rats|r。掠夺它们的|cRXX_Loot_Ttunnel Rat耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
    .subzoneskip 146
    .train 424785,1
step << Rogue
    #xprate >1.59
    #season 2
    #completewith LochModanDam
    >>杀死|cRXP_ENEMY_Tunnel Rats|r。掠夺它们的|cRXX_Loot_Ttunnel Rat耳朵|r
    >>|cRXP_WARN_不要刻意去做这件事，因为你很可能会跳过这个任务|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
    .subzoneskip 146
    .train 424785,1
step << Rogue
    #season 2
    #label LochModanDam
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,46.20,13.15,10 >>|cRXP_WARN_登上莫丹湖大坝墙，小心地落在大坝中心的岩架上。按照箭头|r
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,46.373,12.666
    >>打开壁架上的|cRXP_PICK_Stonemason工具箱|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]掠夺它
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .itemcount 208772,1
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,45.823,12.652
    .cast 6477 >>单击|cRXP_PICK_Escape Rope|r返回顶部
    .subzoneskip 146,1
step
    #optional
    #label BoarMeatLoch2
    #completewith SilverStream
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch2
    #completewith SilverStream
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的野猪肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith SilverStream
    >>杀死|cRXP_ENEMY_Elder Black Bear|r。掠夺它们的|cRXX_Loot_Bear Meat|r
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|cRXX_Loot_野猪肠道|r
    >>杀死|cRXP_ENEMY_Forest潜伏者|r。掠夺他们的|cRXX_Loot_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #label SilverStream
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >>进入银流矿
step
    #xprate <1.59
    #completewith BuyMace
    #completewith MinerGear
    >>杀死|cRXP_ENEMY_Tunnel Rats|r。掠夺它们的|cRXX_Loot_Ttunnel Rat耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #xprate >1.59
    #completewith BuyMace << Paladin/Warrior
    #completewith MinerGear << !Paladin !Warrior
    >>杀死|cRXP_ENEMY_Tunnel Rats|r。掠夺它们的|cRXX_Loot_Ttunnel Rat耳朵|r
    >>|cRXP_WARN_不要刻意去做这件事，因为你很可能会跳过这个任务|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>打开|cRXP_PICK_Miners’League Crates|r。掠夺它们以获取|cRXP_Loot_Miners’Gear|r
    >>|cRXP_WARN_|cRXP_PICK_Miners’League Crates|r遍布矿井|r
    >>|cRXP_WARN_如果你现在想跳过，你可以在更高的级别上完成这个任务|r
    .complete 307,1 -- Miners' Gear (4)
step << Mage
    #xprate >1.49
    #season 2
    #optional
    #completewith next
    >>杀死|cRXP_ENEMY_Tunnel Rats|r。掠夺它们的|cRXX_Loot_Ttunnel Rat耳朵|r
    >>|cRXP_WARN_不要刻意去做这件事，因为你很可能会跳过这个任务|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
    #xprate >1.49
    #season 2
    #label TroggI
    #optional
    #completewith next
    .goto 1432,48.674,28.861,100 >>游向Trogg群岛
step << Mage
    #xprate >1.49
    #season 2
    #loop
    #sticky
    #label LivingBombDelightStart
    .goto 1432,48.809,29.478,0
    .goto 1432,51.023,23.248,0
    .goto 1432,46.690,22.160,0
    .goto 1432,48.809,29.478,55,0
    .goto 1432,49.667,29.911,55,0
    .goto 1432,50.329,26.936,55,0
    .goto 1432,51.023,23.248,55,0
    .goto 1432,49.194,20.722,55,0
    .goto 1432,48.081,20.937,55,0
    .goto 1432,46.690,22.160,55,0
    >>杀死|cRXP_ENEMY_Stonessplit Seers|r。为|T134939:0|t|cRXP_Loot_[咀嚼咒语]|r掠夺它们
    .collect 208854,1 --Chewed Spell Notes (1)
    .mob Stonesplinter Seer
    .train 415936,1
step << Mage
    #xprate >1.49
    #season 2
    #requires LivingBombDelightStart
    #label LivingBombDelightEnd
    #completewith DefenseStart
    .train 415936 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_切割的拼写笔记|r]|cRXP-WARN_学习|r|T133816:0|t[雕刻手套-活炸弹]
    .use 208854
step << Mage
    #xprate >1.49
    #season 2
    #optional
    #completewith next
    .goto 1432,54.33,26.82,5 >>Enter the tent
    .train 401767,1
step << Mage
    #xprate >1.49
    #season 2
    #sticky
    #label Tengi
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>打开里面的|cRXP_PICK_Pile of Stolen Books|r。为|T134939:0|t|cRXP_Loot_[拼写说明：TENGI RONEERA]|r掠夺它们
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step << Mage
    #xprate >1.49
    #season 2
    #requires Tengi
    #label TengiEnd
    .train 401767 >>|cRXP_WARN_使用|r|T134939:0|t|cRXP_LOOT_[拼写说明：TENGI RONEERA]|r|cRXP-WARN_to learn|r|T133815:0|t[铭刻胸甲-再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step << Mage
    #xprate >1.49
    #season 2
    #optional
    #requires TengiEnd
    --XXREQ Placeholder invis step
step << Mage
    #xprate >1.49
    #season 2
    #optional
    #requires LivingBombDelightEnd
    --XXREQ Placeholder invis step
step << Paladin/Warrior
    #label BuyMace
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔伦·安德玛|r
    >>|cRXP_BUY_从他那里购买|r|T133476:0|t[重钉Mace]|cRXP_Buy_或|r|T133053:0|t[Ironwood Maul]|cRX P_Buy_|r
    >>|cRXP_WARN_如果你负担不起，那就从附近的|cRXP_ENEMY_Tunnel Rats|r那里磨钱，直到你有足够的钱|r
    >>|cRXP_WARN_快速完成此操作，因为其他玩家可能会在您之前购买|r
    >>|cRXP_WARN_如果您不希望执行此操作，请跳过此步骤|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith StormpikeDelivery
    +|cRXP_WARN_Equip the |r|T133476:0|t[重型尖嘴Mace]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith StormpikeDelivery
    +|cRXP_WARN_调用|r|T133053:0|t[铁木毛]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    #xprate <1.59
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>杀死|cRXP_ENEMY_Tunnel Rats|r。掠夺它们的|cRXX_Loot_Ears|r
    >>|cRXP_WARN_确保您有10|r|T132889:0|t[Linen Cloth]|cRXP_WARN_form用于您即将进行的圣骑士类任务|r << Paladin
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #xprate >1.59
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    >>杀死|cRXP_ENEMY_Tunnel Rats|r。掠夺它们的|cRXX_Loot_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
    .itemcount 3110,6 --Tunnel Rat Ear
step
    #optional
    #label BoarMeatLoch3
    #completewith StormpikeDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch3
    #completewith StormpikeDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|T133970:0|t|cRXP-Loot_[大块的野猪肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #sticky
    #label 烹饪QEnd
    #loop
    >>杀死|cRXP_ENEMY_Elder Black Bear|r。掠夺它们的|cRXX_Loot_Bear Meat|r
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|cRXX_Loot_野猪肠道|r
    >>杀死|cRXP_ENEMY_Forest潜伏者|r。掠夺他们的|cRXX_Loot_Spider Ichor|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .goto Loch Modan,26.9,10.7,0
    .goto Loch Modan,28.6,15.4,0
    .goto Loch Modan,39.4,33.3,0
    .waypoint Loch Modan,26.9,10.7,90,0
    .waypoint Loch Modan,30.9,10.6,90,0
    .waypoint Loch Modan,28.6,15.4,90,0
    .waypoint Loch Modan,30.5,26.6,90,0
    .waypoint Loch Modan,33.4,30.3,90,0
    .waypoint Loch Modan,39.4,33.3,90,0
    .mob +Elder Black Bear
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .goto Loch Modan,38.0,34.9,0
    .goto Loch Modan,29.8,35.9,0
    .goto Loch Modan,28.6,22.6,0
    .waypoint Loch Modan,38.0,34.9,90,0
    .waypoint Loch Modan,37.1,39.8,90,0
    .waypoint Loch Modan,29.8,35.9,90,0
    .waypoint Loch Modan,27.7,25.3,90,0
    .waypoint Loch Modan,28.6,22.6,90,0
    .mob +Mountain Boar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .goto Loch Modan,31.9,16.4,0
    .goto Loch Modan,33.8,40.5,0
    .goto Loch Modan,39.0,32.1,0
    .waypoint Loch Modan,31.9,16.4,90,0
    .waypoint Loch Modan,28.0,20.6,90,0
    .waypoint Loch Modan,33.8,40.5,90,0
    .waypoint Loch Modan,36.2,30.9,90,0
    .waypoint Loch Modan,39.0,32.1,90,0
    .mob +Forest Lurker
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor >>|cRXP_WARN_供应商和维修（如需要）|r
    .target Gothor Brumn
step << Human
    #xprate <1.59
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
    .target Mountaineer Stormpike
    .dungeon !DM
step << Human
    #xprate >1.59
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r << Mage/Warlock/Rogue
    .target Mountaineer Stormpike
    .dungeon !DM
step
    #optional
    #completewith FlintTinder
    .subzone 144 >>Travel to Thelsamar
step
    #xprate <1.59
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_登山运动员Kadrell|r|cRXP_WARN_穿过Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
step
    #xprate >1.59
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_登山运动员Kadrell|r|cRXP_WARN_穿过Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
    .isQuestComplete 416
step
    #xprate >1.59
    #optional
    #sticky
    #label RatAbandon
    .abandon 416 >>Abandon Rat Catching
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>进入Stoutlager Inn
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
    .target Vidra Hearthstove
step
    #label FlintTinder
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尼·铁心|r
    >>|cRXP_BUY_从她那里购买一个|r|T135435:0|t[简单木材]|cRXP_Buy_|r
    >>|cRXP_WARN_这用于使|r|T135805:0|t[基本营火]|cRXP_WARN_on Boats或Trams在不浪费时间的情况下使|r| T133971:0|t[烹饪]|cRX P_WARN_skill变平|r
    >>|cRXP_WARN_您需要50|r|T133971:0|t[烹饪]|cRXP_WARN_form才能稍后在Duskwood进行任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r, 他在外面
    .fp Thelsamar >>获取Thelsamar飞行路线
    .target Thorgrum Borrelson
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>沿着土路往上跑，然后掉进地堡
step
    #xprate <1.59
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
    .target Captain Rugelfuss
step
    #xprate <1.59
    #label DefenseStart
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_WARN_保卫国王的领土|r
    .target Mountaineer Cobbleflint
step
    #xprate >1.59
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
    .target Captain Rugelfuss
    .xp >14,1 << !Warrior
step
    #xprate >1.59
    #label DefenseStart
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_WARN_保卫国王的领土|r
    .target Mountaineer Cobbleflint
    .xp >14,1 << !Warrior
step << Warrior
    #season 2
    #sticky
    #label Geode
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .waypoint Loch Modan,27.01,48.74,50,0
    .waypoint Loch Modan,27.68,56.83,50,0
    .waypoint Loch Modan,33.35,71.59,50,0
    .waypoint Loch Modan,31.54,74.96,50,0
    .waypoint Loch Modan,33.88,76.58,50,0
    >>杀死|cRXP_ENEMY_Troggs|r。掠夺它们以获得|cRXD_Loot_Skull-Shapped Geode|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step
    #xprate <1.5
    .goto Loch Modan,27.33,56.70
    >>杀死|cRXP_ENEMY_Stonessplit Troggs|r和|cRXX_ENEMY_ Stonessplet Scouts|r。掠夺他们的|cRXD_Loot_Tethes|r
    >>|cRXP_WARN_确保您有10|r|T132889:0|t[Linen Cloth]|cRXP_WARN_form用于您即将进行的圣骑士类任务|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #xprate >1.49
    .goto Loch Modan,27.33,56.70
    >>杀死|cRXP_ENEMY_Stonessplit Troggs|r和|cRXX_ENEMY_ Stonessplet Scouts|r。掠夺他们的|cRXD_Loot_Tethes|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step << Warlock
    #xprate <1.5
    #optional
    #completewith TroggT
    .goto Loch Modan,27.33,56.70,0
    +升级|cRXP_ENEMY_Troggs|r，直到您拥有价值75秒79c的供应商垃圾/金钱
    .money >0.7579
step << Warlock
    #xprate >1.49
    #optional
    #completewith TroggT
    .goto Loch Modan,27.33,56.70,0
    +升级|cRXP_ENEMY_Troggs|r，直到您拥有价值42秒39秒的供应商垃圾/金钱
    .money >0.4239
step << Warlock
    #xprate <1.5
    #optional
    .goto Loch Modan,27.33,56.70
    .xp 13+9600 >>升级到9600+/11400xp
step
    #optional
    #xprate 1.49-1.59
    .goto Loch Modan,27.33,56.70
    .xp 13+8700 >>升级到8700+/11400xp
step
    #optional
    #xprate >1.59
    .goto Loch Modan,27.33,56.70
    .xp 13+7800 >>升级到7800+/11400xp
step << Mage
    #xprate <1.5
    #season 2
    .goto Loch Modan,29.2,81.2,50,0
    .goto Loch Modan,28.8,83.4,50,0
    .goto Loch Modan,30.0,83.8,50,0
    .goto Loch Modan,32.2,87.2,50,0
    .goto Loch Modan,33.8,88.6,50,0
    .goto Loch Modan,36.0,88.0,50,0
    .goto Loch Modan,36.6,81.2,50,0
    .goto Loch Modan,36.6,79.6
    >>杀死|cRXP_ENEMY_Stonessplit Seers|r。为|T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes]|r掠夺它们
    .collect 208854,1
    .mob Stonesplinter Seer
    .train 415936,1
step << Mage
    #xprate <1.5
    #season 2
    #completewith HumbleBeginnings
    .collect 211779,1 >>您需要来自|cRXP_FRIENDLY_Reagent供应商|r的|T135933:0|t[理解符]才能使用|T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes]|r
    .train 415936 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes|r]|cRXP-WARN_训练|r|T236220:0|t[活炸弹]
    .use 208854
step << Warrior
    #season 2
    #requires Geode
    .goto Loch Modan,30.47,79.71
    >>杀死一个|cRXP_ENEMY_Stonessplit头骨重击者|r
    >>|cRXP_WARN_在战斗中，它会击中你，将|cRXP_LOOT_Skull-Shapped Geode|r变成|r|T236489:0|t[|cRXP _LOOT_Cracked Skull-SShaped Geode|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    #season 2
    .use 208848 >>|cRXP_WARN_使用|r|T236489:0|t[|cRXP_LOOT_Cracked Skull Shaped Geode|r]|cRXP_WARN_to接收|r|T134419:0|t[| cRXP_FRIENDLY_Rune of Quick Strike|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]|cRXP_WARN_to train|r|T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
step
    #xprate <1.5
    #optional
    .goto Loch Modan,27.33,56.70
    +继续升级|cRXP_ENEMY_Troggs|r，直到您的时间<1分钟|T134414:0|t[炉石]
    .cooldown item,6948,<60
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>沿着土路往上跑，然后掉进地堡
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    #label TroggT
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step
    #xprate >1.49
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
    .zoneskip Ironforge
    .cooldown item,6948,<0
step
    #xprate >1.49
    .hs >>前往: |cRXP_PICK_铁炉堡|r
    .zoneskip Ironforge
    .cooldown item,6948,>0,1
step
    #xprate <1.5
    #completewith HumbleBeginnings
    .hs >>霍斯到暴风城
    .zoneskip Stormwind City
--XX Start of <1.5x section
step << Warlock/Priest
    #xprate <1.5
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿德温·凯伦|r
    >>|cRXP_BUY_从她那里买一个|r|T135468:0|t[Smoldering Wand]|cRXP_Buy_|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
step << Warlock/Priest
    #xprate <1.5
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿德温·凯伦|r
    >>|cRXP_BUY_从她那里买一个|r|T135468:0|t[烟雾棒]|cRXP_BUY_或到拍卖行找一个|r |T135144:0|t[Greater Magic Wand]
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_Equip the |r|T135468:0|t[Soldering Wand]
    .use 5208
    .itemcount 5208,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_当你达到15级时，记得装备|r|T135468:0|t[Smoldering Wand]|cRXP_WARN_water|r
    .use 5208
    .itemcount 5208,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，然后下楼
step << Warlock
    #xprate <1.5
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
step << Warlock
    #xprate <1.5
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
    .vendor >>|cRXP_BUY_如果你买得起的话，购买|r|T133738:0|t[消耗阴影的冷酷（等级1）]|cRXP_Buy_和|r|T133738:0 |t[牺牲的冷酷（级别1）]| cRXP_Buy_。如果没有，你可以稍后购买|r
    .target Spackle Thornberry
step << Mage
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
    #xprate <1.5
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔莎林|r
    .trainer >>训练你的职业技能
    .target Elsharin
step << Priest/Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .accept 1641 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1641 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .target Duthorian Rall
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_使用|T133739:0|t[|cRXP_LOOT_the Tome of Divinity|r]开始任务|r
    .accept 1642 >>接任务: |cRXP_WARN_圣洁之书|r
    .use 6775
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1642 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1643 >>接任务: |cRXP_WARN_圣洁之书|r
    .target Duthorian Rall
step << Paladin
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>训练你的职业技能
    .target Arthur the Faithful
step << Paladin
    #xprate <1.5
    #season 2
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Talk to |cRXP_FRIENDLY_Brother Romulus|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step << Paladin
    #xprate <1.5
    #season 2
    #optional
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>下楼进入大教堂地穴的西侧
    .goto StormwindClassic,32.86,24.77,8 >>前往地下室中的|cRXP_LOOT_Charred Note|r
    .train 410015,1
step << Paladin
    #xprate <1.5
    #season 2
    .goto StormwindClassic,32.86,24.87
    >>在蜡烛旁偷走|cRXP_Loot_Charred Note|r
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step << Priest
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    .target Brother Joshua
step << Warrior
    #xprate <1.5
    #season 2
    .gossipoption 109045 >>Talk to |cRXP_FRIENDLY_Liv Bradford|r inside the Inn at the Park
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >>Talk to |cRXP_ENEMY_Stuart|r, then beat him up. He will pass out at 0%
    .goto Stormwind City,21.213,62.781
    >>如果|cRXP_ENEMY_Stuart |r不在，请等待他重生
    .gossipoption 109044 >>Talk to |cRXP_FRIENDLY_Liv Bradford|r again after knocking out |cRXP_ENEMY_Stuart|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault |r]|cRXP_WARN_训练|r|T236317:0|t[Frenzed Assault]
    .use 204716
    .target Liv Bradford
    .mob Stuart
step
    #xprate <1.5
    #label HumbleBeginnings
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .accept 399 >>接任务: |cRXP_WARN_童年的记忆|r
    .target Baros Alexston
step
    #xprate <1.5
    .goto StormwindClassic,58.091,16.552
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
step << Rogue
    #xprate <1.5
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
step << Warrior
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target Wu Shen
    .target Ilsa Corbin
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯蒂芬妮·特纳|r
    .turnin 1643 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .target Stephanie Turner
    .accept 1644 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1644 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    --.accept 1780 >>接任务: |cRXP_WARN_圣洁之书|r
step << Rogue
    #xprate <1.5
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_如果你买得起，最多从她那里买2|r|T135343:0|t[Scimitars]|cRXP_Buy_，或者你可以从拍卖行买更好/更便宜的东西|r
    >>|cRXP_WARN_一旦你达到14级，就给他们两个装备|r
    .collect 2027,2 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_如果你能负担得起，最多从她那里购买2|r|T135343:0|t[弯刀]|cRXP_Buy_|r
    >>|cRXP_WARN_一旦你达到14级，就给他们两个装备|r
    .collect 2027,2 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_获取|r|T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_BUY_购买|r|T133970:0|t|cRXP_LOOT[猪肉块]|r|cRXP-Buy_和/或|r|T133970:0 |t|cRXP_LOUT[狼肉]|r| cRXP_Buy_以使您的|r |T133971:0|t[烹饪]|cRXP_Buy_与更高版本持平|r
    >>|cRXP_WARN_你需要50|r|T133971:0|t[烹饪]|cRXP_WARN_fora quest in Darkshire later|r
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便很快在Westfall和Darkshore快速进入：|r
    >>|T133972:0|t
    >>|T133884:0|t[鼠眼]
    >>|T135997:0|t[Goretusk Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusk肝脏]
    >>|T133972:0|t[条纹肉]
    >>|T133912:0|t[暗岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[猪肉块]|r
    >>|T133970:0|t|cRXP_LOOT_[狼肉]|r
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate <1.5
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便很快在Westfall和Darkshore快速进入：|r
    >>|T133972:0|t
    >>|T133884:0|t[鼠眼]
    >>|T135997:0|t[Goretusk Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusk肝脏]
    >>|T133972:0|t[条纹肉]
    >>|T133912:0|t[暗岸石斑鱼]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #xprate <1.5
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .turnin 6261 >>交任务: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .accept 6285 >>接任务: |cRXP_LOOT_返回西部荒野|r
    .target Dungar Longdrink
step
    #xprate <1.5
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Westfall >>飞往威斯特福尔
    .target Dungar Longdrink



--XX End of <1.5x section
----Darkshore transit (>1.49x)----




step << Mage
    #xprate >1.49
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
    .trainer >>训练你的职业技能
    .target Dink
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_购买一个|r|T135144:0|t[大魔杖]|cRXP_Buy_如果成本低于33秒40c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7579 << Warlock/Mage
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #optional
    +|cRXP_WARN_装备|r|T135144:0|t[大魔杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest/Warlock
    #xprate >1.49
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈瑞克·石鼓|r, 他在楼下
    >>|cRXP_BUY_从他那里买一个|r|T135468:0|t[Smoldering Wand]|cRXP_Buy_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7579 << Warlock
step << Priest/Warlock
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_Equip the |r|T135468:0|t[Soldering Wand]
    .use 5208
    .itemcount 5208,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Priest/Warlock
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_当你达到15级时，记得装备|r|T135468:0|t[Smoldering Wand]|cRXP_WARN_water|r
    .use 5208
    .itemcount 5208,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step
    #xprate >1.49
    #ah
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_购买|r|T133970:0|t|cRXP_LOOT[猪肉块]|r|cRXP-Buy_和/或|r|T133970:0 |t|cRXP_LOUT[狼肉]|r| cRXP_Buy_以使您的|r |T133971:0|t[烹饪]|cRXP_Buy_与更高版本持平|r
    >>|cRXP_WARN_你需要50|r|T133971:0|t[烹饪]|cRXP_WARN_fora quest in Darkshire later|r
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便很快在Darkshore进行快速登录：|r
    >>|T133972:0|t[条纹肉]
    >>|T133912:0|t[暗岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[猪肉块]|r
    >>|T133970:0|t|cRXP_LOOT_[狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_WARN_如果您不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便很快在Darkshore进行快速登录：|r
    >>|T133972:0|t[条纹肉]
    >>|T133912:0|t[暗岸石斑鱼]  
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Mage
    #xprate >1.49
    #ah
    #hardcore << !Human
    #optional
    #completewith next
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r|r
step << Rogue
    #xprate >1.49
    #ah
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    .vendor 5120 >>|cRXP_BUY_如果你买得起的话，可以从她那里买一把|r|T135343:0|t[Scimitar]|cRXP_Buy_，或者你可以从拍卖行买一些更好/更便宜的东西|r
    .target Brenwyn Wintersteel
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    .vendor 5120 >>|cRXP_BUY_如果你买得起，就从她那里买一把|r|T135343:0|t[Scimitar]|cRXP_Buy_|r
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_从她那里买一把|r|T135425:0|t[Keen飞刀]|cRXP_Buy_|r
    .collect 3107,100 -- Keen Throwing Dagger
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_获得|r|T135425:0|t[敏锐飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warrior
    #xprate >1.49
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r
    .trainer >>训练你的职业技能
    .target Bilban Tosslespanner
step << Warrior
    #xprate >1.49
    #hardcore << !Human
    #optional
    #completewith next
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r|r
step << Warlock
    #xprate >1.49
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r
    .trainer >>训练你的职业技能
    .target Briarthorn
step << Gnome Rogue/Dwarf Rogue
    #xprate 1.49-1.59
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍夫丹·黑须|r, 他在楼下
    .turnin 2218 >>交任务: |cRXP_FRIENDLY_救赎之路|r
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate >1.49
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r
    .trainer >>训练你的职业技能
    .target Fenthwick
step << Warlock/Rogue
    #xprate >1.49
    #hardcore << !Human Rogue
    #optional
    #label Jubahl
    #completewith next
    .goto 1455,53.164,7.037,10 >>进入|cRXP_FRIENDLY_Jubahl Corpseeeker|r的房子
step << Warlock
    #xprate >1.49
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
    .vendor >>|cRXP_BUY_购买|r|T133738:0|t[消耗阴影的冷酷（等级1）]|cRXP_Buy_和|r|T133738:0 |t[牺牲的冷酷（级别1）]| cRXP_Buy_如果你能买得起的话|r
    .target Jubahl Corpseseeker
step << Warlock/Rogue
    #xprate >1.49
    #hardcore << !Human
    #optional
    #requires Jubahl
    #completewith next
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_走到床的顶部，然后跳到书架的顶部。通过注销并重新登录来执行注销跳过|r
step << Priest
    #xprate >1.49
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r
    .trainer >>训练你的职业技能
    .target Toldren Deepiron
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r, 他在里面
    .trainer >>训练你的职业技能
    .target Brandur Ironhammer
step << Priest/Paladin/Mage
    #xprate >1.49
    #ssf << Mage
    #hardcore << !Human
    #optional
    .goto 1455,25.254,10.981
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r|r
step << Dwarf/Gnome
    #xprate >1.49
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Wetlands>>飞到湿地
    .target Gryth Thurden
step
    #xprate >1.49
    #optional
    #hardcore << !Human
    .goto 1426,53.042,35.383
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
step
    #xprate >1.49
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>前往Dun Morogh->湿地跳跃点
step
    #xprate >1.49
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
    #xprate >1.49
    #season 2
    #softcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>前往Dun Morogh->湿地跳跃点
    .aura -438536 --Player has Spark of Inspiration (Alliance)
step << Human
    #xprate >1.49
    #season 2
    #softcore
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
    .goto Wetlands,12.1,60.3
    >>|cRXP_WARN_观看视频指南，了解如何先跳过！|r
    >>|cRXP_WARN_邓莫罗不死->湿地跳过|r
    >>|cRXP_WARN_过水时应避开|cRXP_ENEMY_Wetlands Crocolis|r和|cRXX_ENEMY_Murlocs|r|r
    >>|cRXP_WARN_注意：你正在进行速度较慢的不死跳跃，因为你有|r|T134916:0|t[灵感火花]|cRXP_WARN_world buff|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>|cRXP_WARN_单击此处查看视频指南|r
    .subzone 150 >>前往: |cRXP_PICK_湿地|r
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .aura -438536 --Player has Spark of Inspiration (Alliance)
step << Human
    #xprate >1.49
    #softcore
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    >>|cRXP_WARN_做Dun Morogh->湿地死亡跳跃。紧跟箭头|r
    >>|cRXP_WARN_还不要跳下任何高度|r
    .goto 1415,44.910,52.030,15 >>|cRXP_WARN_爬上山，然后走过锯齿状的图案，直到你的分区变成大海|r
    .zoneskip Wetlands
    .subzoneskip 207 --The Great Sea
--XX neither of these zoneskips/subzoneskips want to work, so using waypoint obj instead
step << Human
    #xprate >1.49
    #softcore
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415,44.733,51.882,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_从山上向北或西北跳|r
    .deathskip >>在巴拉丁湾死去并重生|cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .subzoneskip 150 --Menethil Harbor
    .isQuestAvailable 984
step << Human
    #xprate >1.49
    #softcore
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >>向Menethil港游上岸
    .subzoneskip 150 --Menethil Harbor
step
    #xprate >1.49
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor 1448 >>|cRXP_WARN_从他那里买一个|r|T133024:0|t[青铜管]|cRXP_Buy_（如果有）|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    #xprate >1.49
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >>Exit Menethil Keep
    .subzoneskip 2103,1 --Menethil Keep
step
    #xprate >1.49
    #hardcore << !Human
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r outside
    .fp Wetlands >>获取湿地飞行路径
    .target Shellei Brondir
step
    #xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德温·晨光|r, 他在里面
    .vendor 1453 >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_（如果有）|r
    .target Dewin Shimmerdawn
step
    #xprate >1.49
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>前往Auberdine船的码头
    .zoneskip Darkshore
step
    #xprate >1.49
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
    #xprate >1.49
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
    #xprate >1.49
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
    #xprate >1.49
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
    #xprate >1.49
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
    #xprate >1.49
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
    #xprate >1.49
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_如果需要，在等待船只到达Darkshore时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
]])