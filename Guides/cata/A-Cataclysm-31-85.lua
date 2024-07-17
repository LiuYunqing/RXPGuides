RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 59-61 地狱火半岛
#displayname 58-61 Hellfire Peninsula << !tbc !wotlk
#version 5
#next 61-63 赞加沼泽
step << tbc
#xprate <1.5
#completewith honorhold
+当你在外域进行任务时，尽可能多地进行团队任务，如果你跳过精英任务或地牢任务，你可能需要在66级完成刀锋之刃后再升级大约1/3的等级
step << tbc
#completwith next
.goto Stormwind City,66.28,62.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Nethergarde Keep >>飞往尼德加德要塞
.zoneskip Blasted Lands
.target Dungar Longdrink
step << !TBC
#completewith next
.goto Stormwind City,48.99,87.36
.zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
step << tbc/wotlk
.goto Blasted Lands,66.57,18.95,20,0
.goto Blasted Lands,67.57,19.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥达兰大使|r
.accept 2783 >>接任务: |cRXP_LOOT_争论|r
.zoneskip Hellfire Peninsula
.target Ambassador Ardalan
step

.goto Blasted Lands,64.22,16.64,20,0
.goto Blasted Lands,63.51,17.01
>>进入Nethergarde Keep
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_波尼·海斯坦|r
>>|cRXP_BUY_BUY a|r|T132791:0|t[|cRXP_OOT_Nethergarde Bitter|r]
.collect 23848,1,9563,1 
.target Bernie Heisten

step << tbc/wotlk
.goto Swamp of Sorrows,34.28,66.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2783 >>交任务: |cRXP_FRIENDLY_争论|r
.accept 2801 >>接任务: |cRXP_LOOT_悲伤的故事|r
.complete 2801,1 
.skipgossip 7572,1
.zoneskip Hellfire Peninsula
.target Fallen Hero of the Horde
step << tbc/wotlk
.goto Swamp of Sorrows,34.28,66.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2801 >>交任务: |cRXP_FRIENDLY_悲伤的故事|r
.zoneskip Hellfire Peninsula
.target Fallen Hero of the Horde
step
#optional
.goto Blasted Lands,58.33,55.90 << tbc/wotlk
.goto 1419/0,-3196.90015,-11815.10059 << !tbc !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守望堡指挥官雷索恩·奈瑟维|r
.turnin -64038 >>交任务: |cRXP_FRIENDLY_黑暗之门|r
.accept 10119 >>接任务: |cRXP_LOOT_跨越黑暗之门|r
.isOnQuest 64038
.target Watch Commander Relthorn Netherwane
step
.goto Blasted Lands,58.33,55.90 << tbc/wotlk
.goto 1419/0,-3196.90015,-11815.10059 << !tbc !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守望堡指挥官雷索恩·奈瑟维|r
.accept 10119 >>接任务: |cRXP_LOOT_跨越黑暗之门|r
.target Watch Commander Relthorn Netherwane
step

#completewith next
.goto Blasted Lands,58.74,60.28
.zone Hellfire Peninsula >>前往: |cRXP_PICK_地狱火半岛|r
step
.goto Hellfire Peninsula,87.32,50.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官杜隆|r
.turnin 10119 >>交任务: |cRXP_FRIENDLY_跨越黑暗之门|r
.accept 10288 >>接任务: |cRXP_LOOT_抵达外域|r
.target Commander Duron
step
.goto Hellfire Peninsula,87.36,52.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿米什·蛮锤|r
.turnin 10288 >>交任务: |cRXP_FRIENDLY_抵达外域|r
.accept 10140 >>接任务: |cRXP_LOOT_荣耀堡之旅|r
.target Amish Wildhammer
step
#completewith next
.goto Hellfire Peninsula,87.36,52.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿米什·蛮锤|r
.fly Honor Hold >>飞到荣誉举行
.target Amish Wildhammer
step
.goto Hellfire Peninsula,54.47,62.80,20,0
.goto Hellfire Peninsula,54.84,62.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊斯多尔元帅|r
.turnin 10140 >>交任务: |cRXP_FRIENDLY_荣耀堡之旅|r
.accept 10254 >>接任务: |cRXP_LOOT_指挥官达纳斯|r
.target Marshal Isildor
step
#completewith next
.goto Hellfire Peninsula,54.81,63.61,15,0
.goto Hellfire Peninsula,54.67,63.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊斯多尔元帅|r
.vendor >>|cRXP_BUY_如果您愿意，可以从|cRXP_FRIENDLY_Markus Scylan|r购买一些宝石，以获得后续任务装备奖励|r
.target Markus Scylan
step
#completewith HonorHS
.goto Hellfire Peninsula,54.22,63.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希德·利巴迪|r
.home >>将您的炉石设置为荣誉牌
>>如果需要，购买一些新食物/水 << !Warrior !Rogue !DK
>>如果需要的话，买一些新食物 << Warrior/Rogue/DK
.target Sid Limbardi
step
.goto Hellfire Peninsula,56.37,65.99,20,0
.goto Hellfire Peninsula,56.61,66.77,14,0
.goto Hellfire Peninsula,56.64,66.70
>>进入Keep到顶层
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远征军指挥官达纳斯·托尔贝恩|r
.turnin 10254 >>交任务: |cRXP_FRIENDLY_指挥官达纳斯|r
.accept 10160 >>接任务: |cRXP_WARN_知己知彼|r
.accept 10141 >>接任务: |cRXP_LOOT_重生的军团|r
.target Force Commander Danath Trollbane
step
>>前往塔楼
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达姆菲|r, Amadi
.accept 10055 >>接任务: |cRXP_LOOT_回收材料|r
.goto Hellfire Peninsula,51.30,60.35,20,0
.goto Hellfire Peninsula,51.19,59.99,20,0
.goto Hellfire Peninsula,50.99,60.51
.target +Dumphry
.turnin 10160 >>交任务: |cRXP_FRIENDLY_知己知彼|r
.accept 10482 >>接任务: |cRXP_LOOT_邪兽人清理者|r
.goto Hellfire Peninsula,50.91,60.19
.target +Lieutenant Amadi
step
#loop
.goto Hellfire Peninsula,54.53,54.12,50,0
.goto Hellfire Peninsula,54.23,52.51,50,0
.goto Hellfire Peninsula,55.53,53.32,50,0
.goto Hellfire Peninsula,57.07,53.05,50,0
.goto Hellfire Peninsula,57.62,51.67,50,0
.goto Hellfire Peninsula,58.55,52.43,50,0
.goto Hellfire Peninsula,59.54,51.80,50,0
.goto Hellfire Peninsula,62.09,50.91,50,0
.goto Hellfire Peninsula,54.53,54.12,50,0
.goto Hellfire Peninsula,54.53,54.12,0
>>杀死|cRXP_ENEMY_Bonecheers|r
>>将|cRXP_PICK_Metal|r和|cRXP _PICK_Wood|r洗劫一空
>>|cRXP_WARN_避开|r|cRXP_ENEMY_Tagar Spinebreaker|r|cRXP_WARN_who是巡逻该地区的61级精英|r
.complete 10482,1 
.mob +Bonechewer Mutant
.mob +Bonechewer Raider
.mob +Bonechewer Peon
.mob +Bonechewer Scavenger
.mob +Bonechewer Evoker
.mob +Bonechewer Orc
.complete 10055,1 
.complete 10055,2 
.unitscan Tagar Spinebreaker
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达姆菲|r, Amadi
.turnin 10055 >>交任务: |cRXP_FRIENDLY_回收材料|r
.accept 10078 >>接任务: |cRXP_LOOT_烧毁掷刀车|r
.goto Hellfire Peninsula,51.30,60.35,20,0
.goto Hellfire Peninsula,51.19,59.99,20,0
.goto Hellfire Peninsula,50.99,60.51
.target +Dumphry
.turnin 10482 >>交任务: |cRXP_FRIENDLY_邪兽人清理者|r
.accept 10483 >>接任务: |cRXP_LOOT_邪恶的咒语|r
.goto Hellfire Peninsula,50.91,60.19
.target +Lieutenant Amadi
step
>>前往东部补给大篷车
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃图姆斯中士|r
.goto Hellfire Peninsula,61.74,60.67,15,0
.goto Hellfire Peninsula,61.69,60.90
.turnin 10141 >>交任务: |cRXP_FRIENDLY_重生的军团|r
.accept 10142 >>接任务: |cRXP_LOOT_苦痛之路|r
.target Sergeant Altumus
step
#loop
.line Hellfire Peninsula,65.83,59.06,67.03,58.91,69.16,59.36,69.64,57.71,68.15,56.25,67.55,54.60,66.82,56.63,65.55,55.62,65.83,59.06
.goto Hellfire Peninsula,65.83,59.06,50,0
.goto Hellfire Peninsula,67.03,58.91,50,0
.goto Hellfire Peninsula,69.16,59.36,50,0
.goto Hellfire Peninsula,69.64,57.71,50,0
.goto Hellfire Peninsula,68.15,56.25,50,0
.goto Hellfire Peninsula,67.55,54.60,50,0
.goto Hellfire Peninsula,66.82,56.63,50,0
.goto Hellfire Peninsula,65.55,55.62,50,0
.goto Hellfire Peninsula,65.83,59.06,50,0
>>杀死一个|cRXP_ENEMY_Dreadcaller|r、|cRXD_ENEMY_Flamewaker Imps|r和|cRXP_ENEMY_Infernal Warbringers|r
.complete 10142,1 
.mob +Dreadcaller
.complete 10142,2 
.mob +Flamewaker Imp
.complete 10142,3 
.mob +Infernal Warbringer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃图姆斯中士|r
.goto Hellfire Peninsula,61.74,60.67,15,0
.goto Hellfire Peninsula,61.69,60.90
.turnin 10142 >>交任务: |cRXP_FRIENDLY_苦痛之路|r
.accept 10143 >>接任务: |cRXP_LOOT_远征军岗哨|r
.target Sergeant Altumus
step
.goto Hellfire Peninsula,67.88,66.92,50,0
.goto Hellfire Peninsula,70.53,68.13,50,0
.goto Hellfire Peninsula,70.79,71.38
>>杀死|cRXP_ENEMY_流血的空心兽人|r。掠夺他们获得|cRXX_Loot_Talisman|r
.complete 10483,1 
.mob Bleeding Hollow Dark Shaman
.mob Bleeding Hollow Grunt
.mob Bleeding Hollow Necrolyte
.mob Bleeding Hollow Tormentor
.mob Bleeding Hollow Peon
step
.goto 1944/530,1875.7,-702.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃隆雷下士|r
.target Corporal Ironridge
.turnin 10483 >>交任务: |cRXP_FRIENDLY_邪恶的咒语|r
.accept 10484 >>接任务: |cRXP_LOOT_被诅咒的护符|r
step
#label HonorHS
>>前往远征点
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_前线指挥官金斯顿|r, |cRXP_FRIENDLY_空军指挥官达比利|r
.turnin 10143 >>交任务: |cRXP_FRIENDLY_远征军岗哨|r
.accept 10144 >>接任务: |cRXP_LOOT_阻断援军|r
.goto Hellfire Peninsula,71.34,62.76
.target +前方指挥官金斯顿
.accept 10895 >>接任务: |cRXP_LOOT_燃烧吧，塞斯高！|r
.goto Hellfire Peninsula,71.41,62.48
.target +Wing Commander Dabir'ee
step
.goto Hellfire Peninsula,71.57,59.63,50,0
.goto Hellfire Peninsula,73.12,59.90,50,0
.goto Hellfire Peninsula,73.23,58.36
>>杀死|cRXP_ENEMY_Demons |r。掠夺他们的|cRXX_Loot_符文石|r
.collect 28513,4,10144,1 
.mob Subjugator Shi'aziv
.mob Fel Handler
.mob Wrathguard
.mob Doomwhisperer
.mob Netherhound
step
.goto Hellfire Peninsula,72.73,58.94
>>单击|cRXP_PICK_Portal Kaalez|r以破坏它
.complete 10144,2 
step << skip
.goto Hellfire Peninsula,71.80,52.87,50,0
.goto Hellfire Peninsula,70.83,55.36,50,0
.goto Hellfire Peninsula,72.05,55.28,50,0
.goto Hellfire Peninsula,71.57,59.63,50,0
.goto Hellfire Peninsula,73.12,59.90,50,0
.goto Hellfire Peninsula,73.23,58.36
>>杀死|cRXP_ENEMY_Demons |r。掠夺他们的|cRXX_Loot_符文石|r
.collect 28513,4 
.isOnQuest 10144
.mob Subjugator Shi'aziv
.mob Fel Handler
.mob Wrathguard
.mob Doomwhisperer
.mob Netherhound

step
.goto Hellfire Peninsula,71.49,55.17
>>杀死|cRXP_ENEMY_Demons |r。掠夺它们以获取|cRXP_Loot_符文之石|r。然后单击|cRX_PICK_Portal Grimh|r破坏它
.collect 28513,4,10144,1,-1 
.complete 10144,1 
.mob Subjugator Shi'aziv
.mob Fel Handler
.mob Wrathguard
.mob Doomwhisperer
.mob Netherhound
step
#label Disrupt
.goto Hellfire Peninsula,71.34,62.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_前线指挥官金斯顿|r
.turnin 10144 >>交任务: |cRXP_FRIENDLY_阻断援军|r
.accept 10146 >>接任务: |cRXP_LOOT_任务：穆尔凯斯和沙德拉兹之门|r
.target 前方指挥官金斯顿
step
#completewith next
.goto Hellfire Peninsula,71.41,62.48
.fly >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官达比利|r
.skipgossip 19409,1
.timer 102,Mission: Gateways Flight
.target Wing Commander Dabir'ee
step
.use 28038 >>|cRXP_WARN_在飞行过程中使用|r|T133712:0|t[Seaforium PU-36爆炸性虚空调制器]|cRXP_WARN_on|cRX_PICK_Gateway Shaadraz|r和|cRXP_ICK_Gateway Murketh|r|r
.complete 10146,2 
.goto Hellfire Peninsula,77.73,51.80,-1
.complete 10146,1 
.goto Hellfire Peninsula,78.00,47.24,-1
step
.goto Hellfire Peninsula,71.34,62.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_前线指挥官金斯顿|r
.turnin 10146 >>交任务: |cRXP_FRIENDLY_任务：穆尔凯斯和沙德拉兹之门|r
.accept 10340 >>接任务: |cRXP_LOOT_破碎岗哨|r
.target 前方指挥官金斯顿
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_流血的空心兽人|r。掠夺他们的|cRXX_Loot_Talisman|r
.complete 10484,1 
.mob Bleeding Hollow Dark Shaman
.mob Bleeding Hollow Grunt
.mob Bleeding Hollow Necrolyte
.mob Bleeding Hollow Tormentor
.mob Bleeding Hollow Peon
.mob Worg Master Kruush
step
.use 31739 >>|cRXP_WARN_在四个塔上使用|r|T132622:0|t[烟雾指示灯]|cRXP_WARN_|r
.complete 10895,3 
.goto Hellfire Peninsula,70.05,69.11
.complete 10895,4 
.goto Hellfire Peninsula,70.86,71.35
.complete 10895,2 
.goto Hellfire Peninsula,66.45,76.47
.complete 10895,1 
.goto Hellfire Peninsula,67.95,66.87
step
#loop
.line Hellfire Peninsula,68.13,69.69,69.16,69.29,70.05,69.12,70.85,71.32,68.88,72.50,69.44,75.37,69.10,76.55,68.58,75.71,66.44,76.44,68.13,69.69
.goto Hellfire Peninsula,68.13,69.69,50,0
.goto Hellfire Peninsula,69.16,69.29,50,0
.goto Hellfire Peninsula,70.05,69.12,50,0
.goto Hellfire Peninsula,70.85,71.32,50,0
.goto Hellfire Peninsula,68.88,72.50,50,0
.goto Hellfire Peninsula,69.44,75.37,50,0
.goto Hellfire Peninsula,69.10,76.55,50,0
.goto Hellfire Peninsula,68.58,75.71,50,0
.goto Hellfire Peninsula,66.44,76.44,50,0
.goto Hellfire Peninsula,68.13,69.69,50,0
>>杀死|cRXP_ENEMY_流血的空心兽人|r。掠夺他们的|cRXX_Loot_Talisman|r
.complete 10484,1 
.mob Bleeding Hollow Dark Shaman
.mob Bleeding Hollow Grunt
.mob Bleeding Hollow Necrolyte
.mob Bleeding Hollow Tormentor
.mob Bleeding Hollow Peon
.mob Worg Master Kruush
step
.goto Hellfire Peninsula,70.97,63.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃隆雷下士|r
.turnin 10484 >>交任务: |cRXP_FRIENDLY_被诅咒的护符|r
.accept 10485 >>接任务: |cRXP_LOOT_血环督军|r
.target Corporal Ironridge
step
.goto Hellfire Peninsula,71.41,62.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官达比利|r
.turnin 10895 >>交任务: |cRXP_FRIENDLY_燃烧吧，塞斯高！|r
.target Wing Commander Dabir'ee
step
.goto Hellfire Peninsula,69.65,76.48,15,0
.goto Hellfire Peninsula,70.47,76.15,15,0
.goto Hellfire Peninsula,70.08,77.08
>>Enter the Stronghold
>>杀死|cRXP_ENEMY_Warlord Morkh|r。掠夺他的|cRXD_Loot_Armor|r
.complete 10485,1 
.mob Warlord Morkh
step
.goto Hellfire Peninsula,70.97,63.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃隆雷下士|r
.turnin 10485 >>交任务: |cRXP_FRIENDLY_血环督军|r
.accept 10903 >>接任务: |cRXP_LOOT_返回荣耀堡|r
.target Corporal Ironridge
step
#completewith next
.goto Hellfire Peninsula,71.41,62.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官达比利|r
.gossip 19409,1 >>飞到破碎点
.skipgossip 19409,1
.timer 56,Shatter Point Flight
.target Wing Commander Dabir'ee
step
.goto Hellfire Peninsula,78.42,34.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁恩托格·蛮锤|r
.target Runetog Wildhammer
.turnin 10340 >>交任务: |cRXP_FRIENDLY_破碎岗哨|r
.accept 10344 >>接任务: |cRXP_LOOT_空军指挥官格莱芬加尔|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官格莱芬加尔|r
.goto Hellfire Peninsula,79.34,33.86
.turnin 10344 >>交任务: |cRXP_FRIENDLY_空军指挥官格莱芬加尔|r
.accept 10163 >>接任务: |cRXP_LOOT_任务：地狱岩床|r
.target Wing Commander Gryphongar
step
#completewith next
.goto Hellfire Peninsula,78.25,34.45
.gossip 20235,1 >>对话: |cRXP_FRIENDLY_狮鹫骑士维比洛|r
.timer 154,Mission: The Abyssal Shelf Flight
.skipgossip 20235,1
.target Gryphoneer Windbellow
step
.goto Hellfire Peninsula,72.21,23.78,-1
.goto Hellfire Peninsula,72.60,19.99,-1
.goto Hellfire Peninsula,73.04,15.18,-1
.goto Hellfire Peninsula,72.69,11.19,-1
.use 28132 >>|cRXP_WARN_在飞行过程中使用|r|T133709:0|t[区域52特殊]|cRXP_WARN_on |cRXD_ENEMY_Gan'arg Peons|r、|cRXP_ENEMY_Mo'arg Overvisors|r和|cRXT_ENEMY_Fel Cannons|r|r
.complete 10163,1 
.mob +Gan'arg Peon
.complete 10163,2 
.mob +Mo'arg Overseer
.complete 10163,3 
.mob +Fel Cannon
step
.goto Hellfire Peninsula,79.34,33.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官格莱芬加尔|r
.turnin 10163 >>交任务: |cRXP_FRIENDLY_任务：地狱岩床|r
.accept 10382 >>接任务: |cRXP_LOOT_奔赴前线|r
.target Wing Commander Gryphongar
step
#completewith next
.goto Hellfire Peninsula,78.25,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫骑士维比洛|r
.fly Honor Point >>飞向荣誉点
.skipgossip 20235,1
.timer 40,Honor Point Flight
.target Gryphoneer Windbellow
step
.goto Hellfire Peninsula,68.29,28.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴洛克元帅|r
.turnin 10382 >>交任务: |cRXP_FRIENDLY_奔赴前线|r
.accept 10394 >>接任务: |cRXP_LOOT_铸魔营地：暴虐|r
.target Field Marshal Brock
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Gan'arg仆人|r
.complete 10394,1 
.mob Gan'arg Servant
step
#loop
.goto Hellfire Peninsula,65.55,32.56,40,0
.goto Hellfire Peninsula,65.06,31.45,40,0
.goto Hellfire Peninsula,64.53,32.48,40,0
.goto Hellfire Peninsula,64.14,31.94,40,0
.goto Hellfire Peninsula,64.16,30.67,40,0
.goto Hellfire Peninsula,65.42,29.81,40,0
.goto Hellfire Peninsula,66.06,31.33,40,0
.goto Hellfire Peninsula,65.55,32.56,40,0
.line Hellfire Peninsula,65.55,32.56,65.06,31.45,64.53,32.48,64.14,31.94,64.16,30.67,65.42,29.81,66.06,31.33,65.55,32.56
>>杀死|cRXP_ENEMY_Razorsaw|r
>>|cRXP_ENEMY_剃刀|r|cRXP_WARN_绕营地逆时针旋转|r
.complete 10394,2 
.unitscan Razorsaw
step
#loop
.goto Hellfire Peninsula,63.50,31.00,50,0
.goto Hellfire Peninsula,64.32,33.31,50,0
.goto Hellfire Peninsula,65.88,32.45,50,0
.goto Hellfire Peninsula,66.09,30.07,50,0
.goto Hellfire Peninsula,59.62,32.39,50,0
.goto Hellfire Peninsula,58.07,32.87,50,0
.goto Hellfire Peninsula,58.07,32.87,0
>>杀死|cRXP_ENEMY_Gan'arg仆人|r
.complete 10394,1 
.mob Gan'arg Servant
step
.goto Hellfire Peninsula,68.29,28.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴洛克元帅|r
.turnin 10394 >>交任务: |cRXP_FRIENDLY_铸魔营地：暴虐|r
.accept 10396 >>接任务: |cRXP_LOOT_我的敌人的敌人......|r
.target Field Marshal Brock
step
#loop
.goto Hellfire Peninsula,66.57,32.01,50,0
.goto Hellfire Peninsula,65.48,33.49,50,0
.goto Hellfire Peninsula,64.53,33.17,50,0
.goto Hellfire Peninsula,64.10,33.47,50,0
.goto Hellfire Peninsula,63.40,32.49,50,0
.goto Hellfire Peninsula,63.51,31.06,50,0
.goto Hellfire Peninsula,63.51,31.06,0
>>杀死|cRXP_ENEMY_Fel Cannon MKI|r
.complete 10396,1 
.mob Fel Cannon MKI
step
.goto Hellfire Peninsula,68.29,28.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴洛克元帅|r
.turnin 10396 >>交任务: |cRXP_FRIENDLY_我的敌人的敌人......|r
.accept 10397 >>接任务: |cRXP_LOOT_登陆场：歼灭|r
.target Field Marshal Brock
step
.goto Hellfire Peninsula,53.09,26.46
>>杀死|cRXP_ENEMY_Arix'Amal|r。掠夺他获得|cRXP_Loot_燃烧军团门钥匙|r和|T133473:0|t[|cRXD_Loot_焚烧军团导弹|r]
.use 29588 >>|cRXP_WARN_使用|r|T133473:0|t[|cRXP_LOOT_燃烧军团导弹|r]|cRXP-WARN_开始任务|r
.complete 10397,1 
.complete 10397,3 
.collect 29588,1,10395 
.accept 10395 >>接任务: |cRXP_LOOT_邪恶的信件|r
.unitscan Warbringer Arix'Amal
step
.goto Hellfire Peninsula,53.04,27.71
>>点击门内尖刺|r的|cRXP_PICK_Rune
.complete 10397,2 
step
.goto Hellfire Peninsula,68.29,28.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴洛克元帅|r
.turnin 10397 >>交任务: |cRXP_FRIENDLY_登陆场：歼灭|r
.target Field Marshal Brock
step
#completewith next
.goto Hellfire Peninsula,68.65,28.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫骑士利弗比尔|r
.fly Shatter >>飞到破碎点
.cooldown item,6948,<0
.skipgossip
.timer 31,Shatter Point Flight
.target Gryphoneer Leafbeard
step
.goto Hellfire Peninsula,78.19,34.34,5 >>返回破碎点
.isOnQuest 10395
.cooldown item,6948,<0
step
#completewith next
.goto Hellfire Peninsula,78.42,34.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁恩托格·蛮锤|r
.fly Honor Hold >>飞到荣誉举行
.cooldown item,6948,<0
.target Runetog Wildhammer
step
#completewith next
.hs >>义愤填膺
.cooldown item,6948,>2
step
.goto 1944/530,2736.60010,-708.29999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛格尔·戴维迪库斯神父|r
.target Father Malgor Devidicus
.accept 10058 >>接任务: |cRXP_LOOT_古老的礼物|r
step
.goto Hellfire Peninsula,54.27,63.17,8,0
.goto Hellfire Peninsula,54.32,63.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手克拉图|r, 他在楼上
.turnin 10903 >>交任务: |cRXP_FRIENDLY_返回荣耀堡|r
.accept 10909 >>接任务: |cRXP_LOOT_邪灵|r
.accept 10916 >>接任务: |cRXP_LOOT_挖掘念珠|r
.target Assistant Klatu
step
.goto Hellfire Peninsula,54.63,63.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈玛|r
>>|cRXP_BUY_购买|r|T132906:0|t[丝线]|cRXP_Buy_。你以后可能需要这个来进行任务|r
.collect 4291,1,10916,1 
.isOnQuest 10916
.target Hama

step
.goto Hellfire Peninsula,56.37,65.99,20,0
.goto Hellfire Peninsula,56.61,66.77,14,0
.goto Hellfire Peninsula,56.70,66.52
>>进入Keep到顶层
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_位面占卜者克雷夫|r
.target Warp-Scryer Kryv
.turnin 10395 >>交任务: |cRXP_FRIENDLY_邪恶的信件|r
.accept 10399 >>接任务: |cRXP_LOOT_黑暗之心|r
.accept 10047 >>接任务: |cRXP_LOOT_荣耀之路|r
step
.goto Hellfire Peninsula,56.64,66.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远征军指挥官达纳斯·托尔贝恩|r
.target Force Commander Danath Trollbane
.accept 10400 >>接任务: |cRXP_LOOT_霸王|r
step
#completewith treat
#label Beads1
.goto Hellfire Peninsula,54.16,63.32,3,0
.goto Hellfire Peninsula,54.16,63.32,0
>>掠夺客栈外的|cRXP_PICK_Dirt Mound|r以获取|cRXP_Loot_Payer Bead|r
>>|cRXP_WARN_|cRXP_PICK_Dirt Mound|r将在服务器重新启动时消失，如果你运气不好，你将不得不给|cRXP_FRIENDLY_Fei Fei|r一个奖励|r
.complete 10916,1 
step
#completewith Beads1
#label DTreat
>>|cRXP_WARN_如果|cRXP_PICK_Dirt Mound|r不存在：|r
>>|cRXP_BUY_购买|r|T132165:0|t[肥肥狗狗待遇]|cRXP_Buy_from|r|cRXP-FRIENDLY_Warrant Officer Tracy Proudwell|r
.goto Hellfire Peninsula,56.33,62.84
.collect 31799,1,10916,1 
.isOnQuest 10916
.target Warrant Officer Tracy Proudwell
step
#completewith next
#label treat
#requires DTreat
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲菲|r
.goto Hellfire Peninsula,56.39,62.90
.turnin 10919 >>交任务: |cRXP_FRIENDLY_菲菲的狗粮|r
.timer 120,Fei Fei RP
.isOnQuest 10916
.target Fei Fei
step << skip
#completewith next
.goto Hellfire Peninsula,50.87,60.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荣耀堡卫兵维斯洛|r, |cRXP_FRIENDLY_菲菲|r
.accept 10050 >>接任务: |cRXP_LOOT_阴魂不散|r
.target Honor Guard Wesilow
step
#completewith next
#requires DTreat
.goto Hellfire Peninsula,54.16,63.32,0
>>|cRXP_FRIENDLY_Fei Fei|r将在几分钟后挖出包含|cRXP_LOOT_Prayer Bead|r的|cRXP_PICK_Dirt Mound|r。
>>|cRXP_WARN_你不需要等待完整的RP，你稍后会回来进行此任务|r
.complete 10916,1 
.isOnQuest 10916
.target Fei Fei
step
.goto Hellfire Peninsula,50.87,60.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荣耀堡卫兵维斯洛|r
.accept 10050 >>接任务: |cRXP_LOOT_阴魂不散|r
.target Honor Guard Wesilow
step
.goto Hellfire Peninsula,52.02,62.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头比格姆斯|r
.accept 9355 >>接任务: |cRXP_LOOT_聪明人的工作|r
.accept 10079 >>接任务: |cRXP_LOOT_乱糟糟的矿洞|r
.target Foreman Biggums
step
.goto Hellfire Peninsula,52.38,62.35,20,0
.goto Hellfire Peninsula,54.17,64.51,15,0
.goto Hellfire Peninsula,56.17,62.31
>>杀死矿井内的|cRXP_ENEMY_Gan'arg Sappers|r
.complete 10079,1 
.mob Gan'arg Sapper
step
.goto Hellfire Peninsula,52.02,62.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头比格姆斯|r
.turnin 10079 >>交任务: |cRXP_FRIENDLY_乱糟糟的矿洞|r
.accept 10099 >>接任务: |cRXP_LOOT_主谋|r
.target Foreman Biggums
step
.goto Hellfire Peninsula,52.38,62.35,20,0
.goto Hellfire Peninsula,54.17,64.51,15,0
.goto Hellfire Peninsula,56.28,61.30
>>在地雷末端杀死|cRXP_ENEMY_Z'kral|r
.complete 10099,1 
.mob Z'kral
step
.goto Hellfire Peninsula,52.02,62.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头比格姆斯|r
.turnin 10099 >>交任务: |cRXP_FRIENDLY_主谋|r
.target Foreman Biggums
step
#loop
.line Hellfire Peninsula,51.42,63.90,48.95,64.85,47.09,63.73,45.95,65.21,47.26,65.97,48.19,66.40,48.28,68.19,49.73,67.25,51.42,63.90
.goto Hellfire Peninsula,51.42,63.90,55,0
.goto Hellfire Peninsula,48.95,64.85,55,0
.goto Hellfire Peninsula,47.09,63.73,55,0
.goto Hellfire Peninsula,45.95,65.21,55,0
.goto Hellfire Peninsula,47.26,65.97,55,0
.goto Hellfire Peninsula,48.19,66.40,55,0
.goto Hellfire Peninsula,48.28,68.19,55,0
.goto Hellfire Peninsula,49.73,67.25,55,0
.goto Hellfire Peninsula,51.42,63.90,55,0
.use 23338 >>在移动的岩石上奔跑，杀死|cRXP_ENEMY_Marauding Crust Bursters|r。为|T133651:0|t[|cRXP_Loot_Eroded皮套|r]而掠夺它们
>>|cRXP_WARN_使用|r|T133651:0|t[|cRXP_OOT_Eroded Leather Case |r]|cRXP-WARN_to开始任务|r
.complete 9355,1 
.collect 23338,1,9373,1 
.accept 9373 >>接任务: |cRXP_LOOT_遗失的信件|r
.mob Marauding Crust Burster
step
#questguide << !tbc
#xprate <1.5 << tbc
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷加希|r, |cRXP_FRIENDLY_\"尖嗓子\"斯克里·拉克希德|r
.accept 9349 >>接任务: |cRXP_LOOT_掠食者的卵|r
.target +Legassi
.goto Hellfire Peninsula,49.24,74.83
.accept 10161 >>接任务: |cRXP_LOOT_以防万一......|r
.target +“尖叫”Luckheed尖叫
.goto Hellfire Peninsula,49.15,74.87
step
#xprate >1.499 << TBC
.goto Hellfire Peninsula,49.24,74.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷加希|r
.accept 9349 >>接任务: |cRXP_LOOT_掠食者的卵|r

.target Legassi
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_不屈服的步兵|r、|cRXD_ENEMY_-不屈服的魔法师|r和|cRXP_ENEMY_--不屈服的骑士|r
.complete 10050,1 
.mob +Unyielding Footman
.complete 10050,2 
.mob +Unyielding Sorcerer
.complete 10050,3 
.mob +Unyielding Knight
step
.goto Hellfire Peninsula,54.96,86.82
>>Loot the |cRXP_PICK_Mysteries of the Light|r book on the ground
.complete 10058,1 
step
>>杀死|cRXP_ENEMY_不屈服的步兵|r、|cRXD_ENEMY_-不屈服的魔法师|r和|cRXP_ENEMY_--不屈服的骑士|r
.complete 10050,1 
.goto Hellfire Peninsula,58.50,79.42,50,0
.goto Hellfire Peninsula,58.54,77.36,50,0
.goto Hellfire Peninsula,57.70,75.28,50,0
.goto Hellfire Peninsula,56.70,74.36,50,0
.goto Hellfire Peninsula,55.59,79.20
.mob +Unyielding Footman
.complete 10050,2 
.goto Hellfire Peninsula,55.89,79.86,50,0
.goto Hellfire Peninsula,55.47,81.52,50,0
.goto Hellfire Peninsula,54.45,81.43,50,0
.goto Hellfire Peninsula,54.21,79.08,50,0
.goto Hellfire Peninsula,55.11,79.59
.mob +Unyielding Sorcerer
.complete 10050,3 
.goto Hellfire Peninsula,56.44,77.81,50,0
.goto Hellfire Peninsula,54.57,78.22,50,0
.goto Hellfire Peninsula,53.58,85.16,50,0
.goto Hellfire Peninsula,55.25,85.59
.mob +Unyielding Knight
step
.goto Hellfire Peninsula,41.83,85.16,50,0
.goto Hellfire Peninsula,40.37,87.33,50,0
.goto Hellfire Peninsula,38.42,88.82,50,0
.goto Hellfire Peninsula,36.72,88.50,50,0
.goto Hellfire Peninsula,36.88,91.36,50,0
.goto Hellfire Peninsula,32.54,93.32
>>杀死|cRXP_ENEMY_Razorfang掠夺者|r。掠夺他们的|cRXX_Loot_Ravager蛋|r
>>你也可以在地上找到|cRXP_LOOT_Ravager Eggs|r
.complete 9349,1 
.mob Razorfang Ravager
step << tbc/wotlk
#completewith next
.goto Shattrath City,64.05,41.12
>>前往: |cRXP_PICK_沙塔斯城|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努特拉尔|r
.fp Shattrath >>获取沙塔斯飞行路线
.target Nutral
step << Mage (tbc/wotlk)
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << (Warlock/Shaman/Paladin) (tbc/wotlk)
.goto Shattrath City,55.7,36.9
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << (Warlock/Shaman/Paladin/Mage) (tbc/wotlk)
.goto StormwindClassic,25.3,78.7 << Warlock
.goto StormwindClassic,38.6,32.8 << Paladin
.goto StormwindClassic,61.9,84.0 << Shaman
.goto StormwindClassic,39.6,79.6 << Mage
.trainer >>训练你的职业技能
.target Ursula Deline << Warlock
.target Demisette Cloyce << Warlock
.target Sandahl << Warlock
.target Arthur the Faithful << Paladin
.target Katherine the Pure << Paladin
.target Lord Grayson Shadowbreaker << Paladin
.target Farseer Umbrua << Shaman
.target Elsharin << Mage
.target Jennea Cannon << Mage
step << Mage (tbc/wotlk)
#completewith next
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
.isOnQuest 4986
step << (Warrior/Hunter/Rogue/Priest/Druid) (tbc/wotlk)
#completewith next
.goto Shattrath City,55.2,36.5
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << (Warrior/Hunter/Rogue/Priest) (tbc/wotlk)
.goto Darnassus,39.0,83.2 << Priest
.goto Darnassus,40.6,9.2 << Hunter
.goto Darnassus,31.5,17.4 << Rogue
.goto Darnassus,58.75,35.16 << Warrior
.trainer >>训练你的职业技能
.target Jandria << Priest
.target Jocaste << Hunter
.target Anishar << Rogue
.target Erion Shadewhisper << Rogue
.target Syurna << Rogue
.target Arias'ta Bladesinger << Warrior
step << (Warrior/Hunter/Rogue/Priest/Druid/Mage) (tbc/wotlk)
.turnin 4986 >>交任务: |cRXP_FRIENDLY_雕文橡木枝|r
.goto Darnassus,35.2,8.1
.isOnQuest 4986
.target Mathrengyl Bearwalker
step << (NightElf/Draenei) (tbc/wotlk)
#optional
#completewith next
.goto Darnassus,29.10,41.22,15,0
.goto Teldrassil,55.93,89.74,30 >>穿过紫色的大门去Teldrassil
step << (NightElf/Draenei) (tbc/wotlk)
.goto Teldrassil,55.50,92.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 978 >>交任务: |cRXP_FRIENDLY_月光羽毛|r
.isOnQuest 978
.target Erelas Ambersky
step << Druid
>>前往: |cRXP_PICK_月光林地|r
.goto Moonglade,52.4,40.6
.trainer 12042 >>训练你的职业技能
.target Loganaar << Druid
step
#completewith next
.hs >>炉背 to Honor Hold公司公司
.cooldown item,6948,>2
step
.goto Hellfire Peninsula,54.29,63.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛格尔·戴维迪库斯神父|r
.turnin 10058 >>交任务: |cRXP_FRIENDLY_古老的礼物|r
.target Father Malgor Devidicus
step
.goto 1944/530,2910.0,-595.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荣耀堡卫兵维斯洛|r
.target Honor Guard Wesilow
.turnin 10050 >>交任务: |cRXP_FRIENDLY_阴魂不散|r
.accept 10057 >>接任务: |cRXP_LOOT_寻找首领|r
step
.goto 1944/530,2854.7,-669.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头比格姆斯|r
.target Foreman Biggums
.turnin 9355 >>交任务: |cRXP_FRIENDLY_聪明人的工作|r
step
.goto Hellfire Peninsula,44.82,75.34
.use 31772 >>|cRXP_WARN_使用|r|T134423:0|t[锚遗迹]
>>杀死|T134423:0|t[锚遗迹]目标的|cRXP_ENEMY_碎手狂战士|r
>>杀死随后产生的|cRXP_ENEMY_Fel灵魂|r
.complete 10909,1 
.mob Shattered Hand Berserker
.mob Fel Spirit
step
.goto Hellfire Peninsula,49.24,74.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷加希|r
.turnin 9349 >>交任务: |cRXP_FRIENDLY_掠食者的卵|r
.accept 9361 >>接任务: |cRXP_LOOT_地狱野猪，另一种白肉|r
.target Legassi
step
#optional
#questguide << !tbc
#xprate <1.5 << tbc
#completewith BuzWing
>>掠夺地面上的|cRXP_PICK_Zeppelin碎片|r
.complete 10161,1 
step
#loop
.line Hellfire Peninsula,46.10,71.85,45.11,71.84,45.39,70.17,46.89,68.32,50.01,64.14,52.83,70.37,46.10,71.85
.goto Hellfire Peninsula,46.10,71.85,55,0
.goto Hellfire Peninsula,45.11,71.84,55,0
.goto Hellfire Peninsula,45.39,70.17,55,0
.goto Hellfire Peninsula,46.89,68.32,55,0
.goto Hellfire Peninsula,50.01,64.14,55,0
.goto Hellfire Peninsula,52.83,70.37,55,0
.goto Hellfire Peninsula,46.10,71.85,55,0
>>杀死|cRXP_ENEMY_Deraged Helboars|r。掠夺它们的|cRXX_Loot_Tainted Meat|r
.use 23268 >>|cRXP_WARN_使用|r|T134720:0|t[纯化混合物]|cRXP_WARN_to将|cRXP-LOOT_Tainted Meat|r转化为|r|cRXP_LOOT_TPurified Helboar Meat|r
.collect 23270,8,9361,1,-1
.complete 9361,1 
.mob Deranged Helboar
step
.goto Hellfire Peninsula,49.24,74.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷加希|r
.turnin 9361 >>交任务: |cRXP_FRIENDLY_地狱野猪，另一种白肉|r
.accept 9356 >>接任务: |cRXP_LOOT_万无一失|r
.target Legassi
step
>>杀死|cRXP_ENEMY_Arch Mage Xintor|r和|cRXX_ENEMY_Commander Thalvos|r
.complete 10057,1 
.mob +Arch Mage Xintor
.goto Hellfire Peninsula,53.67,81.10
.complete 10057,2 
.mob +Thalvos中校
.goto Hellfire Peninsula,54.75,83.71
step
#label BuzWing
#loop
.line Hellfire Peninsula,57.50,72.75,58.66,69.95,62.44,69.12,64.18,66.08,65.00,64.65,65.95,62.08,62.47,65.22,61.12,66.85,57.71,69.65,57.50,72.75
.goto Hellfire Peninsula,57.50,72.75,55,0
.goto Hellfire Peninsula,58.66,69.95,55,0
.goto Hellfire Peninsula,62.44,69.12,55,0
.goto Hellfire Peninsula,64.18,66.08,55,0
.goto Hellfire Peninsula,65.00,64.65,55,0
.goto Hellfire Peninsula,65.95,62.08,55,0
.goto Hellfire Peninsula,62.47,65.22,55,0
.goto Hellfire Peninsula,61.12,66.85,55,0
.goto Hellfire Peninsula,57.71,69.65,55,0
.goto Hellfire Peninsula,57.50,72.75,55,0
>>杀死|cRXP_ENEMY_Bonestroper Buzzards|r。掠夺它们的|cRXX_Loot_Fwing|r
.complete 9356,1 
.mob Bonestripper Buzzard
step
#questguide << !tbc
#xprate <1.5 << tbc
#loop
.line Hellfire Peninsula,57.50,72.75,58.66,69.95,62.44,69.12,64.18,66.08,65.00,64.65,65.95,62.08,62.47,65.22,61.12,66.85,57.71,69.65,57.50,72.75
.goto Hellfire Peninsula,57.50,72.75,55,0
.goto Hellfire Peninsula,58.66,69.95,55,0
.goto Hellfire Peninsula,62.44,69.12,55,0
.goto Hellfire Peninsula,64.18,66.08,55,0
.goto Hellfire Peninsula,65.00,64.65,55,0
.goto Hellfire Peninsula,65.95,62.08,55,0
.goto Hellfire Peninsula,62.47,65.22,55,0
.goto Hellfire Peninsula,61.12,66.85,55,0
.goto Hellfire Peninsula,57.71,69.65,55,0
.goto Hellfire Peninsula,57.50,72.75,55,0
>>掠夺地面上的|cRXP_Loot_Zeppelin碎片|r
.complete 10161,1 
step << Shaman
#completewith prayerbeads1
.hs >>义愤填膺
step
.goto Hellfire Peninsula,54.16,63.32
>>掠夺客栈外的|cRXP_PICK_Dirt Mound|r以获取|cRXP_Loot_Payer Bead|r
>>|cRXP_WARN_|cRXP_PICK_Dirt Mound|r将在服务器重新启动时消失，如果你运气不好，你将不得不给|cRXP_FRIENDLY_Fei Fei|r一个奖励|r
.complete 10916,1 
step
#label prayerbeads1
.goto Hellfire Peninsula,54.27,63.17,8,0
.goto Hellfire Peninsula,54.32,63.65
>>返回荣誉舱。去客栈二楼
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手克拉图|r
.turnin 10909 >>交任务: |cRXP_FRIENDLY_邪灵|r
.turnin 10916 >>交任务: |cRXP_FRIENDLY_挖掘念珠|r
.accept 10935 >>接任务: |cRXP_LOOT_尤勒斯的驱魔仪式|r
.target Assistant Klatu
step
#completewith next
.goto 1944/530,2754.11,-707.211
.gossip 22431,1 >>对话: |cRXP_FRIENDLY_学者巴拉达|r
.target Anchorite Barada
.timer 215,Colonel Jules RP
step
.goto 1944/530,2754.36,-710.211
.use 31828 >>|cRXP_WARN_使用|r|T133290:0|t[Ritual Prayer Bead]|cRXP_WARN_to立即杀死产生的精灵|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤勒斯上校|r
.complete 10935,1 
.skipgossip 22431,1
.skipgossip 22432,1
.target Colonel Jules
step
.goto Hellfire Peninsula,54.32,63.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手克拉图|r
.turnin 10935 >>交任务: |cRXP_FRIENDLY_尤勒斯的驱魔仪式|r
.accept 10936 >>接任务: |cRXP_LOOT_托尔贝恩在找你|r
.target Assistant Klatu
step
.goto 1944/530,2736.10010,-707.29999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希德·利巴迪|r
.target Sid Limbardi
.accept 9558 >>接任务: |cRXP_LOOT_长须兄弟|r
step
.goto Hellfire Peninsula,56.37,65.99,20,0
.goto Hellfire Peninsula,56.61,66.77,14,0
>>进入Keep到顶层
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远征军指挥官达纳斯·托尔贝恩|r
.turnin 10936 >>交任务: |cRXP_FRIENDLY_托尔贝恩在找你|r
.accept 10937 >>接任务: |cRXP_LOOT_教官祖罗克|r
.goto Hellfire Peninsula,56.64,66.70
.target Force Commander Danath Trollbane
step
.goto Hellfire Peninsula,50.87,60.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荣耀堡卫兵维斯洛|r
.turnin 10057 >>交任务: |cRXP_FRIENDLY_寻找首领|r
.target Honor Guard Wesilow
step
.goto Hellfire Peninsula,48.07,56.17
>>杀死|cRXP_ENEMY_Drillmaster Zurok|r
>>|cRXP_WARN_用你的宠物把它从坑里拉出来，然后把它放回荣誉舱，让警卫帮你|r << (tbc/wotlk) (Hunter/Warlock/DK)
>>|cRXP_WARN_这个任务很难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r << tbc
.complete 10937,1 
.isOnQuest 10937
.mob Drillmaster Zurok
step
.goto Hellfire Peninsula,49.63,52.08,50,0
.goto Hellfire Peninsula,52.70,50.73,50,0
.goto Hellfire Peninsula,63.42,49.34,50,0
.goto Hellfire Peninsula,52.70,50.73
>>单击路径上的|cRXP_PICK_Trambled Skeleton|r尸体
.complete 10047,1 
step
.use 26002 >>|cRXP_WARN_在弹射器上使用|r|T135432:0|t[火焰火炬]|cRXP_WARN_|r
.complete 10078,1 
.goto Hellfire Peninsula,58.50,47.64
.complete 10078,2 
.goto Hellfire Peninsula,55.70,47.48
.complete 10078,3 
.goto Hellfire Peninsula,53.55,48.24
.complete 10078,4 
.goto Hellfire Peninsula,52.64,48.01
step
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头拉泽克拉兹|r
.accept 10236 >>接任务: |cRXP_LOOT_外域这烂地方！|r
.target Foreman Razelcraz
step
.goto Hellfire Peninsula,49.02,37.63,50,0
.goto Hellfire Peninsula,47.98,37.39,50,0
.goto Hellfire Peninsula,48.41,40.86,50,0
.goto Hellfire Peninsula,47.28,42.34,50,0
.goto Hellfire Peninsula,47.17,43.74,50,0
.goto Hellfire Peninsula,48.85,35.37,50,0
.goto Hellfire Peninsula,47.28,42.34
>>将|cRXP_PICK_Shredder Parts|r箱子洗劫一空
.complete 10236,1 
step
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头拉泽克拉兹|r
.turnin 10236 >>交任务: |cRXP_FRIENDLY_外域这烂地方！|r
.accept 10238 >>接任务: |cRXP_LOOT_如何为地精效力|r
.target Foreman Razelcraz
step
>>从笼子中释放|cRXP_FRIENDLY_Manni|r、|cRXP_FRIENDLY_Moh|r和|cRXP-FRIENDLY _Jakk|r
.complete 10238,1 
.target +Manni
.goto Hellfire Peninsula,45.12,41.11
.complete 10238,2 
.target +Moh
.goto Hellfire Peninsula,46.42,45.18
.complete 10238,3 
.target +Jakk
.goto Hellfire Peninsula,47.50,46.63
step
#questguide << !tbc
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头拉泽克拉兹|r
.turnin 10238 >>交任务: |cRXP_FRIENDLY_如何为地精效力|r
.accept 10629 >>接任务: |cRXP_LOOT_肮脏的工作|r
.target Foreman Razelcraz
step
#questguide << !tbc
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头拉泽克拉兹|r
.turnin 10238 >>交任务: |cRXP_FRIENDLY_如何为地精效力|r
.accept 10629 >>接任务: |cRXP_LOOT_肮脏的工作|r
.target Foreman Razelcraz
step
#questguide << !tbc
.goto Hellfire Peninsula,51.37,30.52
#completewith next
.cast 37690 >>|cRXP_WARN_使用|r|T133942:0|t[Felhound Whistle]|cRXP_WARN_whilst在|cRXT_FRIENDLY_Foreman Razelcraz|r旁边召唤|r|cRXP-FRIENDLY_Felhound|r
.use 30803
step
#questguide << !tbc
.goto Hellfire Peninsula,50.7,28.9
>>杀死|cRXP_ENEMY_Deraged Helboars|r。在|cRXT_PRIENDLY_Felhound的RP|r之后为|cRX_PICK_Shreder密钥|r掠夺|cRXP_OOT_Dropping|r
.complete 10629,1 
.use 30803
.mob Deranged Helboar
step
#questguide << !tbc
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头拉泽克拉兹|r
.turnin 10629 >>交任务: |cRXP_FRIENDLY_肮脏的工作|r
.accept 10630 >>接任务: |cRXP_LOOT_萨尔玛的地下|r
.target Foreman Razelcraz
step
#questguide << !tbc
.goto Hellfire Peninsula,51.72,31.68,20,0
.goto Hellfire Peninsula,52.57,30.59,20,0
.goto Hellfire Peninsula,54.39,31.57
>>杀死Thrallmar矿井后面的|cRXP_ENEMY_Urga'zz|r
.complete 10630,1 
.mob Urga'zz
step
#questguide << !tbc
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头拉泽克拉兹|r
.turnin 10630 >>交任务: |cRXP_FRIENDLY_萨尔玛的地下|r
.target Foreman Razelcraz
step
#completewith next
.goto Hellfire Peninsula,51.37,30.52,80 >>沿着这条路去特尔哈马特神庙
.skill riding,225,1
step
#sticky
#label dpredators
.goto 1944/530,4335.4,70.7,0
#loop
.waypoint Hellfire Peninsula,23.36,41.29,50,0
.waypoint Hellfire Peninsula,23.32,39.88,50,0
.waypoint Hellfire Peninsula,23.36,38.59,50,0
.waypoint Hellfire Peninsula,23.36,37.45,50,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斥候瓦努拉|r
.target Scout Vanura
.accept 9398 >>接任务: |cRXP_LOOT_致命的猎手|r
step
.goto 1944/530,4350.0,90.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者欧巴迪|r
.target Anchorite Obadei
.accept 9390 >>接任务: |cRXP_LOOT_寻找瑟丹|r
step
.goto 1944/530,4347.2,92.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊坎|r
.target Ikan
.accept 9399 >>接任务: |cRXP_LOOT_残忍的监工|r
.accept 9490 >>接任务: |cRXP_LOOT_剥石者的女王|r
step
#requires dpredators
#completewith Telhamat
.goto Hellfire Peninsula,23.35,36.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥菲拉·风怒|r
.home >>把你的炉石放在特哈玛特神庙
.target Caregiver Ophera Windfury
step
#requires dpredators
#optional
.xp <61,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔萨娜|r, |cRXP_FRIENDLY_智者阿曼恩|r
.accept 9383 >>接任务: |cRXP_LOOT_艰巨的计划|r
.goto Hellfire Peninsula,23.21,36.66
.target +Elsaana
.accept 10443 >>接任务: |cRXP_LOOT_帮助塞纳里奥哨站|r
.goto Hellfire Peninsula,23.42,36.55
.accept 9426 >>接任务: |cRXP_LOOT_阿苟纳之池|r
.goto Hellfire Peninsula,23.42,36.55
.target Amaan the Wise
step
.goto Hellfire Peninsula,23.42,36.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者阿曼恩|r
.target Amaan the Wise
.accept 9426 >>接任务: |cRXP_LOOT_阿苟纳之池|r
step
#completewith next
.goto Hellfire Peninsula,25.19,37.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古玛|r
.fp Temple of Telhamat >>获得Telhamat神庙飞行路线
.target Kuma
step << Mage/DK
.goto Hellfire Peninsula,24.40,38.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃德辛|r
>>从他那里购买20条|T134419:0|t运输路线 << Mage
.collect 17031,20 << Mage 
>>购买60件|T133849:0 | t从他身上清除灰尘 << DK
.collect 37201,60 << DK 
.target Vodesiin
step
.goto Hellfire Peninsula,26.89,37.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟丹的尸体|r
.turnin 9390 >>交任务: |cRXP_FRIENDLY_寻找瑟丹|r
.accept 9423 >>接任务: |cRXP_LOOT_返回欧巴迪身边|r
.target Sedai's Corpse
step
#label Telhamat
>>返回Telhamat神庙
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者欧巴迪|r, |cRXP_FRIENDLY_玛库鲁|r
.turnin 9423 >>交任务: |cRXP_FRIENDLY_返回欧巴迪身边|r
.target +Anchorite Obadei
.goto Hellfire Peninsula,23.00,40.37
.accept 9424 >>接任务: |cRXP_LOOT_玛库鲁的复仇|r
.target +Makuru
.goto Hellfire Peninsula,23.14,40.16
step
#completewith next
.goto Hellfire Peninsula,31.99,33.13,50 >>沿着通往马格哈尔地面的山路跑
.skill riding,225,1
step
#loop
.line Hellfire Peninsula,34.10,32.54,33.30,29.46,36.22,27.59,36.22,30.25,36.54,33.98,36.14,35.53,34.10,32.54
.goto Hellfire Peninsula,34.10,32.54,45,0
.goto Hellfire Peninsula,33.30,29.46,45,0
.goto Hellfire Peninsula,36.22,27.59,45,0
.goto Hellfire Peninsula,36.22,30.25,45,0
.goto Hellfire Peninsula,36.54,33.98,45,0
.goto Hellfire Peninsula,36.14,35.53,45,0
.goto Hellfire Peninsula,34.10,32.54,45,0
>>杀死|cRXP_ENEMY_削弱的Mag'har Grunts|r和|cRXD_ENEMY_Mag'har Grunts|r.掠夺他们的|cRXP_Loot_Bears|r
.complete 9424,1 
.mob Debilitated Mag'har Grunt
.mob Mag'har Grunt
step
.goto Hellfire Peninsula,43.81,31.56
>>杀死|cRXP_ENEMY_Arazzius the Crumal|r
>>|cRXP_WARN_这个任务很难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r << tbc/wotlk
>>|cRXP_WARN_强烈推荐此任务，因为它会奖励一个能持续很长时间的小饰品|r << tbc/wotlk
.complete 10400,1 
.isOnQuest 10400
.mob Arazzius the Cruel
step
#loop
.line Hellfire Peninsula,44.25,29.53,42.30,30.09,39.77,27.81,38.94,29.46,38.92,31.26,39.79,34.29,38.87,35.98,39.31,38.57,38.39,41.37,39.87,41.62,40.48,37.90,41.20,32.65,44.25,29.53
.goto Hellfire Peninsula,44.25,29.53,45,0
.goto Hellfire Peninsula,42.30,30.09,45,0
.goto Hellfire Peninsula,39.77,27.81,45,0
.goto Hellfire Peninsula,38.94,29.46,45,0
.goto Hellfire Peninsula,38.92,31.26,45,0
.goto Hellfire Peninsula,39.79,34.29,45,0
.goto Hellfire Peninsula,38.87,35.98,45,0
.goto Hellfire Peninsula,39.31,38.57,45,0
.goto Hellfire Peninsula,38.39,41.37,45,0
.goto Hellfire Peninsula,39.87,41.62,45,0
.goto Hellfire Peninsula,40.48,37.90,45,0
.goto Hellfire Peninsula,41.20,32.65,45,0
.goto Hellfire Peninsula,44.25,29.53,45,0
>>杀死|cRXP_ENEMY_恐怖恶魔|r和|cRXX_ENEMY_Blistering Rots|r
.complete 9426,2 
.mob +Blistering Rot
.complete 10399,1 
.mob +Terrorfiend
step << !tbc
.goto Hellfire Peninsula,51.37,30.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头拉泽克拉兹|r
.turnin 10238 >>交任务: |cRXP_FRIENDLY_如何为地精效力|r
.target Foreman Razelcraz
step
#completewith next
.hs >>德拉马特神庙壁炉
.cooldown item,6948,>2
step
.goto 1944/530,4341.30029,97.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛库鲁|r
.target Makuru
.turnin 9424 >>交任务: |cRXP_FRIENDLY_玛库鲁的复仇|r
.timer 22,Makuru's Vengeance RP
step
.goto 1944/530,4349.9,92.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者欧巴迪|r
.target Anchorite Obadei
.accept 9543 >>接任务: |cRXP_LOOT_救赎|r
step
.goto 1944/530,4330.0,220.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者阿曼恩|r
.target Amaan the Wise
.turnin 9543 >>交任务: |cRXP_FRIENDLY_救赎|r
.accept 9430 >>接任务: |cRXP_LOOT_沙纳尔圣物|r
.turnin 9426 >>交任务: |cRXP_FRIENDLY_阿苟纳之池|r
.accept 9427 >>接任务: |cRXP_LOOT_净化水体|r
step
#completewith next
.goto Hellfire Peninsula,40.14,30.78
.cast 29297 >>|cRXP_WARN_使用|r|T134861:0|t[清洗小瓶]|cRXP_WARN_to调用|r|cRXP-ENEMY_Aggonis|r
step
.goto Hellfire Peninsula,40.14,30.78
>>杀死|cRXP_ENEMY_Aggonis|r
.use 23361
.complete 9427,1 
.mob Aggonis
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_石镰刀Alphas|r和|cRXD_ENEMY_石镰刀Whelps|r
.complete 9398,1 
.mob +Stonescythe Alpha
.complete 9398,2 
.mob +Stonescythe Whelp
step
.goto Hellfire Peninsula,33.94,63.93,30,0
.goto Hellfire Peninsula,33.34,65.16
>>杀死|cRXP_ENEMY_Blacktalon the Savage |r。掠夺他的|cRXX_Loot_爪|r
>>|cRXP_WARN_这个任务很难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r << tbc
.complete 9490,1 
.isOnQuest 9490
.mob Blacktalon the Savage
step
.goto Hellfire Peninsula,34.74,60.88,50,0
.goto Hellfire Peninsula,32.20,58.92,50,0
.goto Hellfire Peninsula,28.31,66.50
>>杀死|cRXP_ENEMY_石镰刀Alphas|r和|cRXD_ENEMY_石镰刀Whelps|r
.complete 9398,1 
.mob +Stonescythe Alpha
.complete 9398,2 
.mob +Stonescythe Whelp
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷尼·长须|r, |cRXP_FRIENDLY_米伦·长须|r
.turnin 9558 >>交任务: |cRXP_FRIENDLY_长须兄弟|r
.accept 9417 >>接任务: |cRXP_LOOT_鸦人的威胁|r
.accept 9385 >>接任务: |cRXP_LOOT_钢牙掠食者|r
.target +Gremni Longbeard
.goto Hellfire Peninsula,23.89,72.17
.accept 9563 >>接任务: |cRXP_LOOT_米伦的信任|r
.turnin 9563 >>交任务: |cRXP_FRIENDLY_米伦的信任|r
.target +Mirren Longbeard
.goto Hellfire Peninsula,23.97,72.35
.itemcount 23848,1
step
.goto Hellfire Peninsula,23.97,72.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米伦·长须|r
.accept 9420 >>接任务: |cRXP_LOOT_绝世好帽|r
.isQuestTurnedIn 9563
.target Mirren Longbeard
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷尼·长须|r
.turnin 9558 >>交任务: |cRXP_FRIENDLY_长须兄弟|r
.accept 9417 >>接任务: |cRXP_LOOT_鸦人的威胁|r
.accept 9385 >>接任务: |cRXP_LOOT_钢牙掠食者|r
.goto Hellfire Peninsula,23.89,72.17
.target Gremni Longbeard
step
#loop
.line Hellfire Peninsula,21.71,70.55,22.68,67.28,24.03,65.47,22.24,60.51,21.57,63.11,21.45,66.57,21.71,70.55
.goto Hellfire Peninsula,21.71,70.55,50,0
.goto Hellfire Peninsula,22.68,67.28,50,0
.goto Hellfire Peninsula,24.03,65.47,50,0
.goto Hellfire Peninsula,22.24,60.51,50,0
.goto Hellfire Peninsula,21.57,63.11,50,0
.goto Hellfire Peninsula,21.45,66.57,50,0
.goto Hellfire Peninsula,21.71,70.55,50,0
>>杀死|cRXP_ENEMY_Quillfang掠夺者|r << tbc/wotlk
>>杀死|cRXP_ENEMY_Quillfang掠夺者|r和|cRXP_ENEMY_Quillfang滑雪者|r << !tbc !wotlk
.complete 9385,1 
.mob Quillfang Ravager
.mob Quillfang Skitterer << !tbc !wotlk
step
#optional
#completewith Kaliri
>>杀死|cRXP_ENEMY_Haal'eshi Windwalkers|r和|cRXD_ENEMY_ Haal'ishi Talonguards|r
.complete 9417,1 
.mob +Haal'eshi Windwalker
.complete 9417,2 
.mob +Haal'eshi Talonguard
step
#optional
#completewith AvruuO
>>杀死|cRXP_ENEMY_Kaliri矩阵|r，|cRXD_ENEMY_ Kaliri Swoopers|r，| cRXP__ENEMY_雄性Kaliri帽|r和|cRXP_ENEMY_雌性Kaliri帽子|r。掠夺它们的|cRXP_Loot_Features|r
>>|cRXP_WARN_单击巢穴以繁殖|cRXP_ENEMY_雄性Kaliri孵化器|r和|r|cRXX_ENEMY_雌性Kaliri繁殖器|r
.complete 9420,1 
.isOnQuest 9420
.mob Kaliri Matriarch
.mob Kaliri Swooper
.mob Male Kaliri Hatchling
.mob Female Kaliri Hatchling
step
.goto Hellfire Peninsula,25.67,75.13,30,0
.goto Hellfire Peninsula,25.72,76.44
.use 23580 >>杀死|cRXP_ENEMY_Avruu|r。掠夺他|T134124:0|t[|cRXP_Loot_Avruu's Orb|r]
>>|cRXP_WARN_使用|r|T134124:0|t[|cRXP_OOT_Avruu的Orb|r]|cRXP-WARN_to开始任务|r
.collect 23580,1,9418,1 
.accept 9418 >>接任务: |cRXP_LOOT_亚维鲁的宝珠|r
.unitscan Avruu
step
#label AvruuO
.goto Hellfire Peninsula,28.93,81.46
>>点击|cRXP_PICK_Haal'eshi祭坛|r召唤|cRXP_FRIENDLY_Aeranas|r

>>之后击败|cRXP_ENEMY_Aeranas|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃拉纳斯|r
.turnin 9418 >>交任务: |cRXP_FRIENDLY_亚维鲁的宝珠|r
.mob Aeranas
.skipgossip
step
#label Kaliri
.goto Hellfire Peninsula,27.55,77.86,30,0
.goto Hellfire Peninsula,25.79,76.61,30,0
.goto Hellfire Peninsula,25.79,74.95,30,0
.goto Hellfire Peninsula,26.38,74.25,30,0
.goto Hellfire Peninsula,25.11,76.08,30,0
.goto Hellfire Peninsula,24.69,76.47
>>杀死|cRXP_ENEMY_Kaliri矩阵|r，|cRXD_ENEMY_ Kaliri Swoopers|r，| cRXP__ENEMY_雄性Kaliri帽|r和|cRXP_ENEMY_雌性Kaliri帽子|r。掠夺它们的|cRXP_Loot_Features|r
>>|cRXP_WARN_单击巢穴以繁殖|cRXP_ENEMY_雄性Kaliri孵化器|r和|r|cRXX_ENEMY_雌性Kaliri繁殖器|r
.complete 9420,1 
.isOnQuest 9420
.mob Kaliri Matriarch
.mob Kaliri Swooper
.mob Male Kaliri Hatchling
.mob Female Kaliri Hatchling
step
.goto Hellfire Peninsula,25.97,78.32,50,0
.goto Hellfire Peninsula,26.14,72.23
>>杀死|cRXP_ENEMY_Haal'eshi Windwalkers|r和|cRXD_ENEMY_ Haal'ishi Talonguards|r
.complete 9417,1 
.mob +Haal'eshi Windwalker
.complete 9417,2 
.mob +Haal'eshi Talonguard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷尼·长须|r, |cRXP_FRIENDLY_米伦·长须|r
.turnin 9420 >>交任务: |cRXP_FRIENDLY_绝世好帽|r
.target +Mirren Longbeard
.goto Hellfire Peninsula,23.97,72.35
.turnin 9417 >>交任务: |cRXP_FRIENDLY_鸦人的威胁|r
.turnin 9385 >>交任务: |cRXP_FRIENDLY_钢牙掠食者|r
.goto Hellfire Peninsula,23.89,72.17
.isQuestComplete 9420
.target Gremni Longbeard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷尼·长须|r
.turnin 9417 >>交任务: |cRXP_FRIENDLY_鸦人的威胁|r
.turnin 9385 >>交任务: |cRXP_FRIENDLY_钢牙掠食者|r
.goto Hellfire Peninsula,23.89,72.17
.target Gremni Longbeard
step
#optional
#completewith Arzeth
>>杀死|cRXP_ENEMY_Illidari任务主管|r
>>掠夺地面上的|cRXP_PICK_遗迹|r
.complete 9399,1 
.complete 9430,1 
.mob Illidari Taskmaster
step
.goto Hellfire Peninsula,15.59,58.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_召火者阿库鲁|r
.accept 10403 >>接任务: |cRXP_LOOT_纳拉杜|r
.target Akoru the Firecaller
step
.goto Hellfire Peninsula,16.27,65.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳拉杜|r
.turnin 10403 >>交任务: |cRXP_FRIENDLY_纳拉杜|r
.accept 10367 >>接任务: |cRXP_LOOT_叛徒|r
.target Naladu
step
.goto Hellfire Peninsula,14.34,63.50
>>打开|cRXP_PICK_Metal Coffer|r。将其打开以获取|cRXP_Loot_Sha'naar密钥|r
.complete 10367,1 
step
.goto Hellfire Peninsula,16.27,65.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳拉杜|r
.turnin 10367 >>交任务: |cRXP_FRIENDLY_叛徒|r
.accept 10368 >>接任务: |cRXP_LOOT_残冠长者|r
.target Naladu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the captured |cRXP_FRIENDLY_Broken|r in the Ruins
.complete 10368,1 
.target +Morod the Windstirrer
.goto Hellfire Peninsula,13.13,61.04
.complete 10368,3 
.target +Aylaan the Waterwaker
.goto Hellfire Peninsula,13.01,58.42
.complete 10368,2 
.goto Hellfire Peninsula,15.59,58.74
.target +Akoru the Firecaller
.skipgossip
step
.goto Hellfire Peninsula,16.27,65.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳拉杜|r
.turnin 10368 >>交任务: |cRXP_FRIENDLY_残冠长者|r
.accept 10369 >>接任务: |cRXP_LOOT_阿尔泽斯之死|r
.target Naladu
step
.goto Hellfire Peninsula,14.29,62.38,50,0
.goto Hellfire Peninsula,14.35,56.99
>>|cRXP_WARN_使用|r|T135225:0|t[恐惧长老之杖]|cRXP_WARN_to削弱|r|cRXP-ENEMY_Arzeth the Merciless|r
.use 29513 >>杀死|cRXP_ENEMY_Arzeth|r，他在中心路径周围巡逻
.complete 10369,1 
.mob Arzeth the Merciless
.mob Arzeth the Powerless
step
#label Arzeth
.goto Hellfire Peninsula,16.27,65.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳拉杜|r
.turnin 10369 >>交任务: |cRXP_FRIENDLY_阿尔泽斯之死|r
.target Naladu
step
#loop
.line Hellfire Peninsula,14.90,64.00,14.60,63.10,13.33,62.20,13.06,61.70,13.66,60.65,12.16,57.78,13.30,58.39,13.67,57.49,15.69,57.72,14.54,59.47,14.90,64.00
.goto Hellfire Peninsula,14.90,64.00,50,0
.goto Hellfire Peninsula,14.60,63.10,50,0
.goto Hellfire Peninsula,13.33,62.20,50,0
.goto Hellfire Peninsula,13.06,61.70,50,0
.goto Hellfire Peninsula,13.66,60.65,50,0
.goto Hellfire Peninsula,12.16,57.78,50,0
.goto Hellfire Peninsula,13.30,58.39,50,0
.goto Hellfire Peninsula,13.67,57.49,50,0
.goto Hellfire Peninsula,15.69,57.72,50,0
.goto Hellfire Peninsula,14.54,59.47,50,0
.goto Hellfire Peninsula,14.90,64.00,50,0
>>杀死|cRXP_ENEMY_Illidari任务主管|r
>>掠夺地面上的|cRXP_PICK_遗迹|r
.complete 9399,1 
.mob +Illidari Taskmaster
.complete 9430,1 
step
>>前往Cenarion Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿米希尔·迷雾行者|r, |cRXP_FRIENDLY_玛霍拉姆·硬蹄|r, |cRXP_FRIENDLY_塞安·红鬃|r, |cRXP_FRIENDLY_图拉希恩|r
.accept 9912 >>接任务: |cRXP_LOOT_塞纳里奥远征队|r
.target +Amythiel Mistwalker
.goto Hellfire Peninsula,16.04,52.15
.accept 10159 >>接任务: |cRXP_LOOT_扫清棘牙岭！|r
.target +Mahuram Stouthoof
.goto Hellfire Peninsula,15.65,52.15
.turnin -10443 >>交任务: |cRXP_FRIENDLY_帮助塞纳里奥哨站|r
.turnin -9373 >>交任务: |cRXP_FRIENDLY_遗失的信件|r
.accept 9372 >>接任务: |cRXP_LOOT_恶魔的玷污|r
.target +Thiah Redmane
.goto Hellfire Peninsula,15.70,52.08
.accept 10132 >>接任务: |cRXP_LOOT_巨人的威胁|r
.target +Tola'thion
.goto Hellfire Peninsula,15.62,52.04
step
#optional
#completewith next
.goto Hellfire Peninsula,15.0,45.7,0
.use 29476 >>杀死一个|cRXP_ENEMY_Raging Colossus|r。将其掠夺一个|T134081:0|t[|cRXD_Loot_深红水晶碎片|r]
>>|cRXP_WARN_使用|r|T134081:0|t[|cRXP_OOT_Crimson Crystal Shard|r]|cRXP-WARN_to开始任务|r
>>|cRXP_WARN_如果需要，为他们找一个小组。如果你无法在没有所有冷却的情况下找到一个小组或单独进行，请跳过此步骤|r << tbc/wotlk
.collect 29476,1,10134,1 
.accept 10134 >>接任务: |cRXP_LOOT_火红水晶中的线索|r
.mob Raging Colossus
step
.goto Hellfire Peninsula,14.38,44.64,50,0
.goto Hellfire Peninsula,17.96,40.76
>>杀死|cRXP_ENEMY_暴怒巨像|r
>>|cRXP_WARN_如果需要，为他们找一个小组。如果你无法在没有所有冷却的情况下找到一个小组或单独进行，请跳过此步骤|r << tbc/wotlk
.complete 10132,1 
.mob Raging Colossus
step
.goto Hellfire Peninsula,14.38,44.64,50,0
.goto Hellfire Peninsula,17.96,40.76
.use 29476 >>杀死一个|cRXP_ENEMY_Raging Colossus|r。将其掠夺一个|T134081:0|t[|cRXD_Loot_深红水晶碎片|r]
>>|cRXP_WARN_使用|r|T134081:0|t[|cRXP_OOT_Crimson Crystal Shard|r]|cRXP-WARN_to开始任务|r
>>|cRXP_WARN_如果需要，为他们找一个小组。如果你无法在没有所有冷却的情况下找到一个小组或单独进行，请跳过此步骤|r << tbc/wotlk
.collect 29476,1,10134,1 
.accept 10134 >>接任务: |cRXP_LOOT_火红水晶中的线索|r
.mob Raging Colossus
step << Shaman
#completewith next
.hs >>德拉马特神庙壁炉
.cooldown item,6948,>2
step << Shaman
.goto 1944/530,4331.10010,220.70000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者阿曼恩|r
.target Amaan the Wise
.turnin 9427 >>交任务: |cRXP_FRIENDLY_净化水体|r
.turnin 9430 >>交任务: |cRXP_FRIENDLY_沙纳尔圣物|r
.accept 9545 >>接任务: |cRXP_LOOT_先知的圣物|r
step << Shaman
.goto 1944/530,4341.30029,217.60001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔萨娜|r
.target Elsaana
.accept 9383 >>接任务: |cRXP_LOOT_艰巨的计划|r
step
#label dpred2
#sticky
.goto 1944/530,4333.4,179.6,0
#loop
.waypoint Hellfire Peninsula,23.36,41.29,50,0
.waypoint Hellfire Peninsula,23.32,39.88,50,0
.waypoint Hellfire Peninsula,23.36,38.59,50,0
.waypoint Hellfire Peninsula,23.36,37.45,50,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斥候瓦努拉|r
.target Scout Vanura
.turnin 9398 >>交任务: |cRXP_FRIENDLY_致命的猎手|r
step
.goto 1944/530,4346.8,94.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊坎|r
.target Ikan
.turnin 9399 >>交任务: |cRXP_FRIENDLY_残忍的监工|r
.turnin 9490 >>交任务: |cRXP_FRIENDLY_剥石者的女王|r
.isQuestComplete 9490
step
#optional
.goto 1944/530,4346.8,94.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊坎|r
.target Ikan
.turnin 9399 >>交任务: |cRXP_FRIENDLY_残忍的监工|r
step << !Shaman
.goto 1944/530,4331.10010,220.70000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者阿曼恩|r
.target Amaan the Wise
.turnin 9427 >>交任务: |cRXP_FRIENDLY_净化水体|r
.turnin 9430 >>交任务: |cRXP_FRIENDLY_沙纳尔圣物|r
.accept 9545 >>接任务: |cRXP_LOOT_先知的圣物|r
step << !Shaman
.goto 1944/530,4341.30029,217.60001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔萨娜|r
.target Elsaana
.accept 9383 >>接任务: |cRXP_LOOT_艰巨的计划|r
step
#requires dpred2
#completewith next
.goto Hellfire Peninsula,25.19,37.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古玛|r
.fly Honor Hold >>飞到荣誉举行
.target Kuma
step
#requires dpred2
>>返回荣誉舱。进入Keep到顶层
.goto Hellfire Peninsula,56.37,65.99,20,0
.goto Hellfire Peninsula,56.61,66.77,14,0
.goto 1944/530,2615.0,-810.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_位面占卜者克雷夫|r
.target Warp-Scryer Kryv
.turnin 10047 >>交任务: |cRXP_FRIENDLY_荣耀之路|r
.accept 10093 >>接任务: |cRXP_LOOT_塔哈玛特神殿|r
.turnin 10399 >>交任务: |cRXP_FRIENDLY_黑暗之心|r
step
#sticky
#label overlord
.goto 1944/530,2615.30005,-812.70001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远征军指挥官达纳斯·托尔贝恩|r
.target Force Commander Danath Trollbane
.turnin 10400 >>交任务: |cRXP_FRIENDLY_霸王|r
.isQuestComplete 10400
step
.goto 1944/530,2615.30005,-812.70001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远征军指挥官达纳斯·托尔贝恩|r
.target Force Commander Danath Trollbane
.isQuestComplete 10937
.turnin 10937 >>交任务: |cRXP_FRIENDLY_教官祖罗克|r
step
#requires overlord
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达姆菲|r
.goto Hellfire Peninsula,51.30,60.35,20,0
.goto Hellfire Peninsula,51.19,59.99,20,0
.goto Hellfire Peninsula,50.99,60.51
.turnin 10078 >>交任务: |cRXP_FRIENDLY_烧毁掷刀车|r
.target Dumphry
step
#questguide << !tbc
#xprate <1.5 << TBC
>>返回齐柏林飞船坠毁事件
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷加希|r, |cRXP_FRIENDLY_\"尖嗓子\"斯克里·拉克希德|r
.turnin 9356 >>交任务: |cRXP_FRIENDLY_万无一失|r
.target +Legassi
.goto Hellfire Peninsula,49.24,74.83
.turnin 10161 >>交任务: |cRXP_FRIENDLY_以防万一......|r
.accept 9351 >>接任务: |cRXP_LOOT_疯狂的虚空行者|r
.goto Hellfire Peninsula,49.15,74.87
.target +“尖叫”Luckheed尖叫
step
#xprate >1.499 << TBC
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷加希|r
.turnin 9356 >>交任务: |cRXP_FRIENDLY_万无一失|r
.goto Hellfire Peninsula,49.24,74.83
.target Legassi
step
#questguide << !tbc
#xprate <1.5 << tbc
#completewith next
#optional
>>杀死|cRXP_ENEMY_Rogue Voidwalkers|r和|cRXD_ENEMY_Uncontrolled Voidwalker |r。掠夺他们的|cRXP_Loot_Essent|r
.complete 9351,1 
.mob Uncontrolled Voidwalker
.mob Rogue Voidwalker
step
.goto Hellfire Peninsula,50.07,83.29,50,0
.goto Hellfire Peninsula,46.25,83.22
.use 23417 >>|cRXP_WARN_将一个|r|cRXP_ENEMY_Uncontrolled虚空行者|r|cRXP_WARN_down的生命值伤害到20%或更低，然后在其上使用|r|T132878:0|t[制裁水晶]|cRXP-WARN_on|r
.complete 9383,1 
.mob Uncontrolled Voidwalker
step
#questguide << !tbc
#xprate <1.5 << tbc
#loop
.line Hellfire Peninsula,46.32,81.97,45.65,84.23,47.81,84.70,50.15,83.32,51.18,82.56,50.45,81.79,48.50,81.74,46.32,81.97
.goto Hellfire Peninsula,46.32,81.97,50,0
.goto Hellfire Peninsula,45.65,84.23,50,0
.goto Hellfire Peninsula,47.81,84.70,50,0
.goto Hellfire Peninsula,50.15,83.32,50,0
.goto Hellfire Peninsula,51.18,82.56,50,0
.goto Hellfire Peninsula,50.45,81.79,50,0
.goto Hellfire Peninsula,48.50,81.74,50,0
.goto Hellfire Peninsula,46.32,81.97,50,0
>>杀死|cRXP_ENEMY_Rogue Voidwalkers|r和|cRXD_ENEMY_Uncontrolled Voidwalker |r。掠夺他们的|cRXP_Loot_Essent|r
.complete 9351,1 
.mob Uncontrolled Voidwalker
.mob Rogue Voidwalker
step
#questguide << !tbc
#xprate <1.5 << tbc
.goto Hellfire Peninsula,49.15,74.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"尖嗓子\"斯克里·拉克希德|r
.turnin 9351 >>交任务: |cRXP_FRIENDLY_疯狂的虚空行者|r
.target “尖叫”Luckheed尖叫
step
#completewith Temple
.hs >>德拉马特神庙壁炉
.cooldown item,6948,>2
step
#completewith next
.goto Hellfire Peninsula,54.68,62.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉尔·比特修|r
.fly Temple of Telhamat >>飞到特尔哈马特神庙
.cooldown item,6948,<0
.target Flightmaster Krill Bitterhue
step
#label Temple
>>返回Telhamat神庙
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者阿曼恩|r, |cRXP_FRIENDLY_艾尔萨娜|r
.turnin 10093 >>交任务: |cRXP_FRIENDLY_塔哈玛特神殿|r
.goto Hellfire Peninsula,23.42,36.55
.target +Amaan the Wise
.turnin 9383 >>交任务: |cRXP_FRIENDLY_艰巨的计划|r
.goto Hellfire Peninsula,23.21,36.66
.target +Elsaana
step
.goto Hellfire Peninsula,26.89,37.44
.cast 30489 >>|cRXP_WARN_使用|r|T134907:0|t[Seer’s Relic]|cRXP_WARN_on|cRXP-FRIENDLY_SDai’s Corpse|r。不要等待RP|r

.timer 21,The Seer's Relic RP
.use 23645
.isOnQuest 9545
.target Sedai's Corpse
step
.goto Hellfire Peninsula,23.42,36.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者阿曼恩|r
.turnin 9545 >>交任务: |cRXP_FRIENDLY_先知的圣物|r
.target Amaan the Wise
step
.goto Hellfire Peninsula,24.99,51.58,60,0
.goto Hellfire Peninsula,23.73,57.53,60,0
.goto Hellfire Peninsula,17.33,53.85
>>杀死|cRXP_ENEMY_Hulking Helboars|r。掠夺它们的|cRXX_Loot_血样|r
.complete 9372,1 
.mob Hulking Helboar
step
#sticky
#label Thiah
>>返回Cenarion Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞安·红鬃|r
.turnin 9372 >>交任务: |cRXP_FRIENDLY_恶魔的玷污|r
.accept 10255 >>接任务: |cRXP_LOOT_测试解毒剂|r
.goto Hellfire Peninsula,15.70,52.08
.target Thiah Redmane
step
#optional
#completewith next
.goto Hellfire Peninsula,15.62,52.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉希恩|r
.turnin 10132 >>交任务: |cRXP_FRIENDLY_巨人的威胁|r
.isQuestComplete 10132
.target Tola'thion
step
.goto Hellfire Peninsula,15.62,52.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉希恩|r
.turnin 10134 >>交任务: |cRXP_FRIENDLY_火红水晶中的线索|r
.isOnQuest 10134
.target Tola'thion
step
.goto Hellfire Peninsula,15.62,52.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉希恩|r
.accept 10349 >>接任务: |cRXP_LOOT_缚地者|r
.isQuestTurnedIn 10134
.target Tola'thion
step
.goto Hellfire Peninsula,15.62,52.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉希恩|r
.turnin 10132 >>交任务: |cRXP_FRIENDLY_巨人的威胁|r
.isQuestComplete 10132
.target Tola'thion
step
#requires Thiah
.goto Hellfire Peninsula,15.97,51.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_缚地者加兰蒂娅·夜风|r
.turnin 10349 >>交任务: |cRXP_FRIENDLY_缚地者|r
.accept 10351 >>接任务: |cRXP_LOOT_自然的治愈|r
.isQuestTurnedIn 10134
.target Earthbinder Galandria Nightbreeze
step
.goto Hellfire Peninsula,18.40,52.73,60,0
.goto Hellfire Peninsula,22.17,56.14
.use 23337 >>|cRXP_WARN_使用|r|T134801:0|t[Cenarion Antidote]|cRXP_WARN_on a|r|cRXP_ENEMY_Hulking Helboar|r将它们变成|cRXD_ENEMY_Dreadtusk|r
>>杀死|cRXP_ENEMY_Dreadtusk|r
.complete 10255,1 
.mob Dreadtusk
.mob Hulking Helboar
step
#completewith next
.goto Hellfire Peninsula,13.63,39.10
.cast 35413 >>|cRXP_WARN_引导|r|T133944:0|t[复兴的种子]|cRXP_WARN_同时站在绿色圆圈上召唤|r|cRXP-ENEMY_Goliation|r
.timer 49,Goliathon Summon RP
step
.goto Hellfire Peninsula,13.52,39.70
>>杀死|cRXP_ENEMY_Goliath|r
>>|cRXP_WARN_这个任务很难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r << tbc/wotlk
.use 29478 >>|cRXP_WARN_小心，因为|cRXP_ENEMY_Goliath|r有一个巨大的（60码）击倒|r
.complete 10351,1 
.isQuestTurnedIn 10134
.mob Goliathon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_缚地者加兰蒂娅·夜风|r, |cRXP_FRIENDLY_塞安·红鬃|r
.turnin 10351 >>交任务: |cRXP_FRIENDLY_自然的治愈|r
.goto Hellfire Peninsula,15.97,51.57
.turnin 10255 >>交任务: |cRXP_FRIENDLY_测试解毒剂|r
.goto Hellfire Peninsula,15.70,52.08
.isQuestComplete 10351
.target Earthbinder Galandria Nightbreeze
.target Thiah Redmane
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞安·红鬃|r
.turnin 10255 >>交任务: |cRXP_FRIENDLY_测试解毒剂|r
.goto Hellfire Peninsula,15.70,52.08
.target Thiah Redmane
step
#optional
#sticky
>>如果无法完成精英任务，则放弃它们
.abandon 10132 >>放弃巨大威胁
step
#optional
#sticky
>>如果无法完成精英任务，则放弃它们
.abandon 10351 >>放弃自然补救措施
step
.goto Hellfire Peninsula,12.15,46.50,50,0
.goto Hellfire Peninsula,9.13,49.47,50,0
.goto Hellfire Peninsula,11.60,55.18,50,0
.goto Hellfire Peninsula,7.41,49.74,50,0
.goto Hellfire Peninsula,5.37,51.43,50,0
.goto Hellfire Peninsula,9.13,49.47
>>杀死|cRXP_ENEMY_Thornfang毒贩|r和|cRXD_ENEMY_Thornfang掠夺者|r
.complete 10159,2 
.mob +Thornfang Venomspitter
.complete 10159,1 
.mob +Thornfang Ravager
]])
RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 61-63 赞加沼泽
#displayname 61-64 Zangarmarsh << !tbc !wotlk
#version 5
#next 63-65 泰罗卡森林；65-67 刀锋山 << tbc/wotlk
#next 64-66纳格朗；65-67刀刃 << !tbc !wotlk

step
.goto Zangarmarsh,82.81,64.85
.zone Zangarmarsh >>前往: |cRXP_PICK_赞加沼泽|r
step
#completewith next
>>|cRXP_WARN_下面是在赞格马什降落的任务所需物品的列表。记下这些项目。在它们掉落时保存它们。您总共需要：|r
.collect 24291,6,9743,1 
.collect 24245,10,9808,1 
.collect 24401,10,9802,1 
.collect 24449,6,9806,1 
step
.goto 1946/530,5434.70020,-216.70000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊卡因|r
.target Ikeyen
.accept 9747 >>接任务: |cRXP_LOOT_暗泽部族|r
step
.goto 1946/530,5440.10010,-219.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳兰娜·萨维尔|r
.target Lauranna Thar'well
.accept 9802 >>接任务: |cRXP_LOOT_赞加沼泽的植物|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Wanted Poster|r and |cRXP_FRIENDLY_Warden Hamoot, 他在楼上
.accept 9817 >>接任务: |cRXP_LOOT_血鳞纳迦的领袖|r
.accept 9730 >>接任务: |cRXP_LOOT_暗潮纳迦的首领|r
.goto Zangarmarsh,79.08,64.88
.accept 9728 >>接任务: |cRXP_LOOT_热情的欢迎|r
.goto Zangarmarsh,79.09,65.27
.target Warden Hamoot
step
#label RefugeHS
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱森·月火|r, |cRXP_FRIENDLY_伊谢尔·风歌|r
.accept 9895 >>接任务: |cRXP_LOOT_崩溃的平衡|r
.goto Zangarmarsh,78.53,63.15,-1
.target +Lethyn Moonfire
.turnin 9912 >>交任务: |cRXP_FRIENDLY_塞纳里奥远征队|r
.accept 9716 >>接任务: |cRXP_LOOT_暗泽湖的异常|r
.goto Zangarmarsh,78.40,62.02,-1
.target +Ysiel Windsinger
step
#optional << tbc
.goto Zangarmarsh,67.83,51.46
>>前往Telredor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙希|r
.fp Telredor >>获取Telredor航班路径
.skill riding,<225,1
.target Munci
step
#completewith Telredor
.goto Zangarmarsh,70.24,49.27,20 >>使用电梯到达特雷多
.skill riding,225,1
step
#sticky
#label deadmire1
.groundgoto 1946/530,6039.70020,258.50000,0,0
.flygoto 1946/530,6039.70020,258.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官伊达尔|r
.target Vindicator Idaar
.accept 9782 >>接任务: |cRXP_LOOT_死亡泥潭|r
step
.goto 1946/530,6034.80029,283.10001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘探员柯纳尔|r
.target Prospector Conall
.accept 9901 >>接任务: |cRXP_LOOT_未竟的事业|r
step
.goto 1946/530,6044.70020,283.70001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者安霍尔|r
.target Anchorite Ahuurn
.accept 9786 >>接任务: |cRXP_LOOT_博哈姆废墟|r
step
.goto 1946/530,6033.30029,298.89999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁埃姆|r
.target Ruam
.accept 9777 >>接任务: |cRXP_LOOT_灿烂的孢子|r
step
#label Telredor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海尔伦|r
.accept 9781 >>接任务: |cRXP_LOOT_不堪重负|r
.goto 1946/530,6065.60010,328.70001
.target +Haalrun
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺兰妮|r
.accept 9791 >>接任务: |cRXP_LOOT_沼牙的威胁|r
.goto 1946/530,6074.80029,331.30002
.target +Noraani
step
#completewith Sporewing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看护者阿比达尔|r
.goto Zangarmarsh,67.14,49.03
.home 3644>>将您的炉石设置为Telredor
.target Caregiver Abidaar
step
#optional << !tbc
.goto Zangarmarsh,67.83,51.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙希|r
.fp Telredor >>获取Telredor航班路径
.skill riding,225,1
.target Munci
step
#requires deadmire1
step
#optional
#completewith Rippers
>>杀死|cRXP_ENEMY_Fen入侵者|r和|cRXP_ENEMY_Sporebats|r。掠夺他们的|cRXD_Loot_肥沃孢子|r
.collect 24449,6,9806,1 
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
.mob *Greater Sporebat
step
#optional
#completewith Sporewing
>>杀死|cRXP_ENEMY_Marshfang开膛手|r
.complete 9791,1 
.mob Marshfang Ripper
step
#loop
.line Zangarmarsh,68.81,47.75,68.03,48.34,66.01,46.49,65.86,47.37,64.74,49.34,66.46,52.07,70.99,53.95,70.74,50.20,71.57,45.46,68.81,47.75
.goto Zangarmarsh,68.81,47.75,45,0
.goto Zangarmarsh,68.03,48.34,45,0
.goto Zangarmarsh,66.01,46.49,45,0
.goto Zangarmarsh,65.86,47.37,45,0
.goto Zangarmarsh,64.74,49.34,45,0
.goto Zangarmarsh,66.46,52.07,45,0
.goto Zangarmarsh,70.99,53.95,45,0
.goto Zangarmarsh,70.74,50.20,45,0
.goto Zangarmarsh,71.57,45.46,45,0
.goto Zangarmarsh,68.81,47.75,45,0
>>在地面上掠夺|cRXP_PICK_Fulgor孢子|r
.complete 9777,1 
step
#label Sporewing
.goto Zangarmarsh,76.80,45.97,60,0
.goto Zangarmarsh,77.29,45.84,60,0
.goto Zangarmarsh,77.76,45.39,60,0
.goto Zangarmarsh,78.64,45.49,60,0
.goto Zangarmarsh,78.83,46.82,60,0
.goto Zangarmarsh,79.79,47.25,60,0
.goto Zangarmarsh,79.79,47.25,0
.line Zangarmarsh,76.80,45.97,77.29,45.84,77.76,45.39,78.64,45.49,78.83,46.82,79.79,47.25
>>杀死|cRXP_ENEMY_Sporewing|r
>>|cRXP_ENEMY_Sporewing|r|cRXP_WARN_control路径已标记在地图上|r
.complete 9901,1 
.unitscan Sporewing
step
.goto Zangarmarsh,83.82,43.29,-1
.goto Zangarmarsh,80.67,43.45,-1
.goto Zangarmarsh,79.95,42.06,-1
>>掠夺地面上的|cRXP_PICK_死泥|r
.complete 9782,1 
step
#label Rippers
#loop
.line Zangarmarsh,71.61,44.61,76.33,45.27,77.92,46.48,79.79,49.98,84.36,47.15,85.19,47.91,85.42,49.75,84.98,51.50,83.16,52.43,77.63,54.34,76.78,56.41,74.54,54.83,72.82,51.77,71.61,44.61
.goto Zangarmarsh,71.61,44.61,50,0
.goto Zangarmarsh,76.33,45.27,50,0
.goto Zangarmarsh,77.92,46.48,50,0
.goto Zangarmarsh,79.79,49.98,50,0
.goto Zangarmarsh,84.36,47.15,50,0
.goto Zangarmarsh,85.19,47.91,50,0
.goto Zangarmarsh,85.42,49.75,50,0
.goto Zangarmarsh,84.98,51.50,50,0
.goto Zangarmarsh,83.16,52.43,50,0
.goto Zangarmarsh,77.63,54.34,50,0
.goto Zangarmarsh,76.78,56.41,50,0
.goto Zangarmarsh,74.54,54.83,50,0
.goto Zangarmarsh,72.82,51.77,50,0
.goto Zangarmarsh,71.61,44.61,50,0
>>杀死|cRXP_ENEMY_Marshfang开膛手|r
.complete 9791,1 
.mob Marshfang Ripper
step
#completewith next
.hs >>Hearth到Telredor
.cooldown item,6948,>2

step
.goto 1946/530,6074.10010,329.80002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺兰妮|r
.target Noraani
.turnin 9791 >>交任务: |cRXP_FRIENDLY_沼牙的威胁|r
.accept 9780 >>接任务: |cRXP_LOOT_电鳗鱼片|r
step
.goto 1946/530,6027.70020,302.20001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁埃姆|r
.target Ruam
.turnin 9777 >>交任务: |cRXP_FRIENDLY_灿烂的孢子|r
step
.goto 1946/530,6030.89990,280.10001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘探员柯纳尔|r
.target Prospector Conall
.turnin 9901 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.accept 9896 >>接任务: |cRXP_LOOT_黑钉之刺|r
step
.goto 1946/530,6038.20020,257.20001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官伊达尔|r
.target Vindicator Idaar
.turnin 9782 >>交任务: |cRXP_FRIENDLY_死亡泥潭|r
.accept 9783 >>接任务: |cRXP_LOOT_异样的干旱|r
step
#optional
#completewith boglash
>>杀死|cRXP_ENEMY_Fen入侵者|r和|cRXP_ENEMY_Sporebats|r。掠夺他们的|cRXD_Loot_肥沃孢子|r
.collect 24449,6,9806,1 
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
.mob *Greater Sporebat
step
#optional
#label Basidium
#completewith next
>>杀死|cRXP_ENEMY_Withered Giants|r。掠夺他们的|T134001:0|t[|cRXD_Loot_Wired Basidium|r]
>>|cRXP_WARN_这是一个罕见的掉落，不要特意去抢这个|r << !tbc
.collect 24483,1,9827 
.mob Withered Giant
step
#label Giants
#loop
.line Zangarmarsh,82.12,44.97,79.44,42.62,77.86,35.41,80.99,31.26,84.94,36.18,85.96,42.24,82.12,44.97
.goto Zangarmarsh,82.12,44.97,60,0
.goto Zangarmarsh,79.44,42.62,60,0
.goto Zangarmarsh,77.86,35.41,60,0
.goto Zangarmarsh,80.99,31.26,60,0
.goto Zangarmarsh,84.94,36.18,60,0
.goto Zangarmarsh,85.96,42.24,60,0
.goto Zangarmarsh,82.12,44.97,60,0
>>杀死|cRXP_ENEMY_Withered Giants|r，掠夺|cRXD_loot_Bug Lord Tendrills|r进行后续任务
.collect 24291,6,9743,1,1 
.complete 9783,1 
.mob Withered Giant
step
#questguide << !tbc
#label BasidiumX
#loop
.line Zangarmarsh,82.12,44.97,79.44,42.62,77.86,35.41,80.99,31.26,84.94,36.18,85.96,42.24,82.12,44.97
.goto Zangarmarsh,82.12,44.97,60,0
.goto Zangarmarsh,79.44,42.62,60,0
.goto Zangarmarsh,77.86,35.41,60,0
.goto Zangarmarsh,80.99,31.26,60,0
.goto Zangarmarsh,84.94,36.18,60,0
.goto Zangarmarsh,85.96,42.24,60,0
.goto Zangarmarsh,82.12,44.97,60,0
.use 24483 >>杀死|cRXP_ENEMY_Withered Giants|r。掠夺他们的|T134001:0|t[|cRXD_Loot_Wired Basidium|r]
.collect 24291,6,9743,1,1 
.collect 24483,1,9827 
.mob Withered Giant
step
#sticky
#optional
.use 24483>>|cRXP_WARN_使用|r|T134001:0|t[|cRXP_OOT_Withered Basidium|r]|cRXP-WARN_to开始任务|r
.itemcount 24483,1
.accept 9827 >>接任务: |cRXP_LOOT_枯萎的孢芽|r
step << !Warlock
#completewith eels
#optional
.cast 22807 >>|cRXP_WARN_使用|r|T134716:0|t[水呼吸药剂]
.use 25539
.itemcount 25539,1
step
#label Scales
#completewith lakeEnd
>>杀死|cRXP_ENEMY_Mire Hydras|r
.complete 9781,1 
.mob Mire Hydra
step
#label eels
#loop
.line Zangarmarsh,73.89,61.37,75.28,63.48,76.32,66.48,76.78,71.37,76.74,75.66,76.76,79.11,74.88,81.27,73.91,79.38,71.94,81.30,73.44,76.43,73.94,72.76,72.92,69.75,73.98,67.64,72.26,66.54,71.63,62.34,73.89,61.37
.goto Zangarmarsh,73.89,61.37,50,0
.goto Zangarmarsh,75.28,63.48,50,0
.goto Zangarmarsh,76.32,66.48,50,0
.goto Zangarmarsh,76.78,71.37,50,0
.goto Zangarmarsh,76.74,75.66,50,0
.goto Zangarmarsh,76.76,79.11,50,0
.goto Zangarmarsh,74.88,81.27,50,0
.goto Zangarmarsh,73.91,79.38,50,0
.goto Zangarmarsh,71.94,81.30,50,0
.goto Zangarmarsh,73.44,76.43,50,0
.goto Zangarmarsh,73.94,72.76,50,0
.goto Zangarmarsh,72.92,69.75,50,0
.goto Zangarmarsh,73.98,67.64,50,0
.goto Zangarmarsh,72.26,66.54,50,0
.goto Zangarmarsh,71.63,62.34,50,0
.goto Zangarmarsh,73.89,61.37,50,0
.use 25539 >>杀死|cRXP_ENEMY_Umbrafen鳗鱼|r。掠夺它们的|cRXP-Loot_Filet|r
.complete 9780,1 
.mob Umbrafen Eel
step
.goto Zangarmarsh,70.57,80.28
>>靠近水泵行驶
.complete 9716,1 
step
#label lakeEnd
.goto Zangarmarsh,85.29,90.93,160 >>前往Umbrafen村
.isOnQuest 9747
.subzoneskip 3641
step
#completewith Kataru2
>>杀死|cRXP_ENEMY_Umbrafen预言家|r、|cRXD_ENEMY_翁布拉芬巫师|r和|cRXP_ENEMY_翁布拉芬巫医|r
.complete 9747,2 
.mob +Umbrafen Oracle
.complete 9747,3 
.mob +Umbrafen Seer
.complete 9747,4 
.mob +Umbrafen Witchdoctor
step
#label Kataru2
.groundgoto Zangarmarsh,84.99,90.27,20,0
.goto Zangarmarsh,85.29,90.93
>>杀死塔顶的|cRXP_ENEMY_Kataru|r
.complete 9747,1 
.unitscan Kataru
step
#loop
.line Zangarmarsh,83.52,89.16,83.76,88.09,85.50,88.89,84.45,86.16,85.14,82.69,85.71,81.14,85.10,81.08,83.64,81.11,83.60,79.54,83.07,81.06,83.72,82.93,83.38,84.68,82.37,84.73,83.52,89.16
.goto Zangarmarsh,83.52,89.16,50,0
.goto Zangarmarsh,83.76,88.09,50,0
.goto Zangarmarsh,85.50,88.89,50,0
.goto Zangarmarsh,84.45,86.16,50,0
.goto Zangarmarsh,85.14,82.69,50,0
.goto Zangarmarsh,85.71,81.14,50,0
.goto Zangarmarsh,85.10,81.08,50,0
.goto Zangarmarsh,83.64,81.11,50,0
.goto Zangarmarsh,83.60,79.54,50,0
.goto Zangarmarsh,83.07,81.06,50,0
.goto Zangarmarsh,83.72,82.93,50,0
.goto Zangarmarsh,83.38,84.68,50,0
.goto Zangarmarsh,82.37,84.73,50,0
.goto Zangarmarsh,83.52,89.16,50,0
>>杀死|cRXP_ENEMY_Umbrafen预言家|r、|cRXD_ENEMY_翁布拉芬巫师|r和|cRXP_ENEMY_翁布拉芬巫医|r
.complete 9747,2 
.mob +Umbrafen Oracle
.complete 9747,3 
.mob +Umbrafen Seer
.complete 9747,4 
.mob +Umbrafen Witchdoctor
step
.goto Zangarmarsh,83.38,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·长鬃|r
*|cRXP_WARN_You may need to wait for |cRXP_FRIENDLY_Kayra Longmane|r to respawn|r
.accept 9752 >>接任务: |cRXP_LOOT_逃离暗泽村|r
.target Kayra Longmane
step
#optional
#completewith next
.goto Zangarmarsh,83.89,78.58,100,0
.goto Zangarmarsh,82.63,77.98,80,0
.goto Zangarmarsh,81.72,75.58,60,0
.goto Zangarmarsh,82.11,73.88,60,0
.goto Zangarmarsh,81.73,72.94,60,0
.goto Zangarmarsh,81.75,72.20
.line Zangarmarsh,83.89,78.58,82.63,77.98,81.72,75.58,82.11,73.88,81.73,72.94,81.75,72.20
>>使用|cRXP_FRIENDLY_Kayra Longmane|r协助您杀死|cRXP_ENEMY_Boglash|r
>>|cRXP_WARN_如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r << tbc
.complete 9895,1 
.unitscan Boglash
.target Kayra Longmane
step
.goto Zangarmarsh,79.83,71.17
>>护送|cRXP_FRIENDLY_Kayra Longmane|r。她可以治疗并在战斗中帮助你
.complete 9752,1 
.target Kayra Longmane
step
.goto Zangarmarsh,83.89,78.58,60,0
.goto Zangarmarsh,82.63,77.98,60,0
.goto Zangarmarsh,81.72,75.58,60,0
.goto Zangarmarsh,82.11,73.88,60,0
.goto Zangarmarsh,81.73,72.94,60,0
.goto Zangarmarsh,81.75,72.20
.line Zangarmarsh,83.89,78.58,82.63,77.98,81.72,75.58,82.11,73.88,81.73,72.94,81.75,72.20
>>杀死|cRXP_ENEMY_Boglash|r
>>|cRXP_WARN_如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r << tbc
.complete 9895,1 
.unitscan Boglash
step
#label boglash
>>杀死赞加马什的任何暴徒
.collect 24401,10,9802,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊卡因|r
.target Ikeyen
.goto Zangarmarsh,80.39,64.15
.turnin 9747 >>交任务: |cRXP_FRIENDLY_暗泽部族|r
.accept 9788 >>接任务: |cRXP_LOOT_阴冷之地|r
step
.goto Zangarmarsh,80.32,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳兰娜·萨维尔|r
.target Lauranna Thar'well
.turnin 9802 >>交任务: |cRXP_FRIENDLY_赞加沼泽的植物|r
.accept 10096 >>接任务: |cRXP_LOOT_拯救孢子人|r
step
#sticky
#label blessing1a
.goto 1946/530,5434.60010,-233.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者塔鲁·黑蹄|r
.target Windcaller Blackhoof
.accept 9785 >>接任务: |cRXP_LOOT_古树的祝福|r
.reputation 942,friendly,<0,1
step
.goto 1946/530,5434.60010,-233.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者塔鲁·黑蹄|r
.target Windcaller Blackhoof
.accept 9894 >>接任务: |cRXP_LOOT_保护观察者|r
step
#requires blessing1a
.goto 1946/530,5525.50000,-182.30000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱森·月火|r
.target Lethyn Moonfire
.turnin 9895 >>交任务: |cRXP_FRIENDLY_崩溃的平衡|r
step
.goto 1946/530,5533.39990,-145.20000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊谢尔·风歌|r
.target Ysiel Windsinger
.turnin 9752 >>交任务: |cRXP_FRIENDLY_逃离暗泽村|r
.isQuestComplete 9752
step
#label CenarionPost2
.goto 1946/530,5533.39990,-145.20000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊谢尔·风歌|r
.target Ysiel Windsinger
.turnin 9716 >>交任务: |cRXP_FRIENDLY_暗泽湖的异常|r
.accept 9718 >>接任务: |cRXP_LOOT_乌鸦的飞翔|r
step
.goto Zangarmarsh,78.40,62.02
>>|cRXP_WARN_使用|r|T134911:0|t[风暴乌鸦护身符]
.complete 9718,1 
.cast 31606
.timer 155,As the Crow Flies RP
.use 25465
step
.goto Zangarmarsh,78.40,62.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊谢尔·风歌|r
.turnin 9718 >>交任务: |cRXP_FRIENDLY_乌鸦的飞翔|r
.accept 9720 >>接任务: |cRXP_LOOT_恢复平衡|r
.target Ysiel Windsinger
step
#optional
#completewith Klaq
>>杀死|cRXP_ENEMY_Fen入侵者|r和|cRXP_ENEMY_Sporebats|r。掠夺他们的|cRXD_Loot_肥沃孢子|r
.collect 24449,6,9806,1 
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
.mob *Greater Sporebat
.subzoneskip 3652
step
#sticky
#label q10096
#loop
.goto Zangarmarsh,74.44,92.06,0
.goto Zangarmarsh,72.39,93.82,0
.waypoint Zangarmarsh,74.44,92.06,50,0
.waypoint Zangarmarsh,72.39,93.82,50,0
>>杀死洞穴内的|cRXP_ENEMY_Marsh挖泥船|r和|cRXX_ENEMY_ Marsh潜伏者|r。掠夺他们的|cRXP_Loot_Plant零件|r
.complete 10096,1 
.mob +Marsh Dredger
.complete 10096,2 
.mob +Marsh Lurker
step
#label Klaq
.goto Zangarmarsh,74.44,92.06,60,0
.goto Zangarmarsh,72.39,93.82
>>进入Funggor洞穴。降落到洞穴中央
>>杀死|cRXP_ENEMY_Lord Klaq|r
.complete 9894,1 
.unitscan Lord Klaq
step
#label Ikeyen
.goto Zangarmarsh,72.94,96.60,20,0
.goto Zangarmarsh,70.53,97.91
>>洞穴后面的战利品|cRXP_PICK_Ikeyen的物品|r
.complete 9788,1 
step
#requires q10096
step
#optional
#completewith Blacksting
>>杀死|cRXP_ENEMY_Fen入侵者|r和|cRXP_ENEMY_Sporebats|r。掠夺他们的|cRXD_Loot_肥沃孢子|r
.collect 24449,6,9806,1 
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
.mob *Greater Sporebat
step
#completewith hydra1end
>>杀死|cRXP_ENEMY_Darkcrest Nagas|r。掠夺他们的|cRXX_Loot_爪|r
.complete 9728,1 
.mob *Darkcrest Siren
.mob *Darkcrest Slaver
.mob *Darkcrest Sorceress
.mob *Darkcrest Taskmaster
.subzoneskip 3642
step
#completewith Lagoon
.use 24330 >>杀死在湖控制上使用|T136074:0|t[铁藤种子]后产卵的|cRXP_ENEMY_蒸汽泵监督器|r。掠夺他们的|T134944:0|t[|cRXP_OOT_Drain Schematics|r]
.collect 24330,1,9731 
.mob Steam Pump Overseer
step
.goto Zangarmarsh,70.60,80.29
.use 24355 >>|cRXP_WARN_使用|r|T136074:0|t[Ionvine Seeds]|cRXP_WARN_Lake控件|r
.complete 9720,1 
step
#label Rajah
.goto Zangarmarsh,65.10,68.67
>>杀死|cRXP_ENEMY_Rajah Haghazed|r
>>|cRXP_WARN_如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r << tbc/wotlk
.complete 9730,1 
.unitscan Rajah Haghazed
step
#label Lagoon
.goto Zangarmarsh,63.11,64.09
>>|cRXP_WARN_使用|r|T136074:0|t[Ionvine Seeds]|cRXP_WARN_Lake控件|r
.complete 9720,4 
.use 24355
step
.goto Zangarmarsh,63.11,64.09
.use 24355 >>|cRXP_WARN_继续使用湖控制装置上的|r|T136074:0|t[铁藤种子]|cRXP_WARN_产卵并杀死|r|cRXP_ENEMY_蒸汽泵监督器|r。掠夺它们的|T134944:0|t[|cRXP_OOT_Drain示意图|r]
>>农场|cRXP_LOOT_Naga爪|r当你等待种子冷却时
.collect 24330,1,9731 
step
#sticky
.use 24330 >>|cRXP_WARN_单击|r|T134944:0|t[|cRXP_OOT_Drain Schematics|r]|cRXP-WARN_to开始任务|r
.accept 9731 >>接任务: |cRXP_LOOT_抽水泵结构图|r
.mob Steam Pump Overseer
.itemcount 24330,1
step
#label hydra1end
.goto Zangarmarsh,53.79,66.14
>>杀死|cRXP_ENEMY_Mire Hydras|r
.complete 9781,1 
.mob Mire Hydra
step
#label Blacksting
.goto Zangarmarsh,49.80,59.44
>>杀死|cRXP_ENEMY_Blacksting|r。掠夺他的|cRXX_OOT_Stinger|r
.complete 9896,1 
.mob Blacksting
step
.goto Zangarmarsh,44.13,68.91
>>Enter the Boha'mu Ruins
>>|cRXP_WARN_你不需要拉精英！|r
.complete 9786,1 
step
.goto Zangarmarsh,50.39,40.92
>>前往湖心，然后在水下向排水沟潜水
.complete 9731,1 
step
#optional
#completewith next
>>在整个赞加马什的地面上掠夺|cRXP_PICK_Orange Mushrooms|r
.collect 24245,10,9808,1 
step
#completewith next
.goto Zangarmarsh,41.28,29.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈卢|r
.fp Orebor Harborage >>获取Orebor Harborage飞行路线
.target Halu
step << !Shaman
#completewith next
.goto Zangarmarsh,41.28,29.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈卢|r
.fly Telredor >>飞往Telredor
.target Halu
step << Shaman
#completewith next
.hs >>Hearth到Telredor
step << !Shaman
.goto 1946/530,6040.00000,257.10001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官伊达尔|r
.target Vindicator Idaar
.turnin 9783 >>交任务: |cRXP_FRIENDLY_异样的干旱|r
.accept 9793 >>接任务: |cRXP_LOOT_图雷姆的命运|r << tbc/wotlk
step << !Shaman
.goto 1946/530,6044.89990,278.89999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者安霍尔|r
.target Anchorite Ahuurn
.turnin 9786 >>交任务: |cRXP_FRIENDLY_博哈姆废墟|r
.accept 9787 >>接任务: |cRXP_LOOT_蛮沼雕像|r
.accept 9776 >>接任务: |cRXP_LOOT_奥雷柏尔营地|r
step << !Shaman
.goto 1946/530,6030.89990,283.60001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘探员柯纳尔|r
.target Prospector Conall
.turnin 9896 >>交任务: |cRXP_FRIENDLY_黑钉之刺|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺兰妮|r
.turnin 9780 >>交任务: |cRXP_FRIENDLY_电鳗鱼片|r
.target +Noraani
.goto 1946/530,6075.50000,329.39999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海尔伦|r
.turnin 9781 >>交任务: |cRXP_FRIENDLY_不堪重负|r
.accept 9790 >>接任务: |cRXP_LOOT_透明的虫翼|r
.goto 1946/530,6065.70020,327.50000
.target +Haalrun
step
.goto Zangarmarsh,68.62,48.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁埃姆|r
.target Ruam
.turnin 9827 >>交任务: |cRXP_FRIENDLY_枯萎的孢芽|r
.isOnQuest 9827
step << Shaman
.goto 1946/530,6030.89990,283.60001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘探员柯纳尔|r
.target Prospector Conall
.turnin 9896 >>交任务: |cRXP_FRIENDLY_黑钉之刺|r
step << Shaman
.goto 1946/530,6044.89990,278.89999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者安霍尔|r
.target Anchorite Ahuurn
.turnin 9786 >>交任务: |cRXP_FRIENDLY_博哈姆废墟|r
.accept 9787 >>接任务: |cRXP_LOOT_蛮沼雕像|r
.accept 9776 >>接任务: |cRXP_LOOT_奥雷柏尔营地|r
step << Shaman
.goto 1946/530,6040.00000,257.10001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官伊达尔|r
.target Vindicator Idaar
.turnin 9783 >>交任务: |cRXP_FRIENDLY_异样的干旱|r
.accept 9793 >>接任务: |cRXP_LOOT_图雷姆的命运|r << tbc/wotlk
step << !tbc
.goto 1946/530,5534.89990,-142.30000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊谢尔·风歌|r
.target Ysiel Windsinger
.turnin 9731 >>交任务: |cRXP_FRIENDLY_抽水泵结构图|r
.accept 9724 >>接任务: |cRXP_LOOT_通知塞纳里奥议会|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳兰娜·萨维尔|r
.turnin 9802 >>交任务: |cRXP_FRIENDLY_赞加沼泽的植物|r
.turnin 10096 >>交任务: |cRXP_FRIENDLY_拯救孢子人|r
.goto 1946/530,5438.20020,-215.70000
.target +Lauranna Thar'well
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊卡因|r
.turnin 9788 >>交任务: |cRXP_FRIENDLY_阴冷之地|r
.goto 1946/530,5434.70020,-215.40001
.target +Ikeyen
step
.goto 1946/530,5438.20020,-215.70000
.dailyturnin 9784>>对话: |cRXP_FRIENDLY_劳兰娜·萨维尔|r
.disablecheckbox
+Turn in all your |T133940:0|t[Unidentified Plant Parts]
.itemcount 24401,10
.reputation 942,honored,0,1
.target Lauranna Thar'well
step
.goto 1946/530,5434.10010,-234.00000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者塔鲁·黑蹄|r
.target Windcaller Blackhoof
.turnin 9894 >>交任务: |cRXP_FRIENDLY_保护观察者|r
.accept 9785 >>接任务: |cRXP_LOOT_古树的祝福|r
step
#sticky
#label ashyen
.goto Zangarmarsh,81.11,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃西恩|r
.complete 9785,1 
.skipgossip
.target Ashyen
step
#loop
.goto Zangarmarsh,81.11,64.37,40,0
.goto Zangarmarsh,79.57,64.48,40,0
.goto Zangarmarsh,78.25,63.88,40,0
.goto Zangarmarsh,78.24,65.82,40,0
.goto Zangarmarsh,78.71,66.49,40,0
.goto Zangarmarsh,78.96,67.44,40,0
.line Zangarmarsh,78.96,67.44,78.71,66.49,78.24,65.82,78.25,63.88,79.57,64.48,81.11,64.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克勒斯|r
>>|cRXP_FRIENDLY_Keleth|r|cRXP_WARN_trols轻微|r
.complete 9785,2 
.skipgossip
.unitscan Keleth
step
#requires ashyen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者塔鲁·黑蹄|r
.turnin 9785 >>交任务: |cRXP_FRIENDLY_古树的祝福|r
.goto Zangarmarsh,80.37,64.73
.target Windcaller Blackhoof
step
#sticky
#label hamoot1a
.goto Zangarmarsh,79.09,65.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监护者哈穆特|r
.turnin 9728 >>交任务: |cRXP_FRIENDLY_热情的欢迎|r
.isQuestComplete 9728
.target Warden Hamoot
step
#sticky
#label hamoot2a
.goto Zangarmarsh,79.09,65.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监护者哈穆特|r
.turnin 9817 >>交任务: |cRXP_FRIENDLY_血鳞纳迦的领袖|r
.isQuestComplete 9817
.target Warden Hamoot
step
.goto Zangarmarsh,79.09,65.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监护者哈穆特|r
.turnin 9730 >>交任务: |cRXP_FRIENDLY_暗潮纳迦的首领|r
.isQuestComplete 9730
.target Warden Hamoot
step
#requires hamoot1a
step
#requires hamoot2a
.goto Zangarmarsh,78.53,63.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱森·月火|r
.accept 9697 >>接任务: |cRXP_LOOT_观察者莉萨奥|r
.accept 9957 >>接任务: |cRXP_LOOT_塞纳里奥树林出事了？|r << tbc/wotlk
.target Lethyn Moonfire
step << tbc
.goto 1946/530,5534.89990,-142.30000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊谢尔·风歌|r
.target Ysiel Windsinger
.turnin 9731 >>交任务: |cRXP_FRIENDLY_抽水泵结构图|r
.accept 9724 >>接任务: |cRXP_LOOT_通知塞纳里奥议会|r
step
>>前往Cenarion Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛霍拉姆·硬蹄|r, |cRXP_FRIENDLY_阿米希尔·迷雾行者|r
.turnin -10159 >>交任务: |cRXP_FRIENDLY_扫清棘牙岭！|r
.goto Hellfire Peninsula,15.65,52.15
.turnin 9724 >>交任务: |cRXP_FRIENDLY_通知塞纳里奥议会|r
.accept 9732 >>接任务: |cRXP_LOOT_返回沼泽|r
.goto Hellfire Peninsula,16.04,52.15
.target Mahuram Stouthoof
.target Amythiel Mistwalker
step << Shaman (tbc/wotlk)
#completewith next
.hs >>Hearth到Telredor
.skill riding,225,1
step << tbc/wotlk
#completewith Adal
.goto Hellfire Peninsula,25.19,37.23 << !Shaman
.goto Zangarmarsh,67.83,51.46 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古玛|r << !Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙希|r << Shaman
.fly Shattrath >>飞往沙塔斯城
.skill riding,225,1
.target Kuma << !Shaman
.target Munci << Shaman
step << tbc/wotlk
#completewith Adal
.goto Shattrath City,59.66,41.45
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
.skill riding,<225,1
step << tbc/wotlk
#label Adal
.goto 1955/530,5362.10010,-1832.90002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_憔悴的志愿兵|r
.target Haggard War Veteran
.accept 10210 >>接任务: |cRXP_LOOT_阿达尔|r
step << tbc/wotlk
.goto 1955/530,5426.70020,-1862.70007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿达尔|r
.target A'dal
.turnin 10210 >>交任务: |cRXP_FRIENDLY_阿达尔|r
step << tbc/wotlk
.goto 1955/530,5421.80029,-1859.00000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德加的仆从|r
.target Khadgar
.accept 10211 >>接任务: |cRXP_LOOT_圣光之城|r
.timer 462,City of Light RP
step << tbc/wotlk
#completewith next
#xprate <1.5
>>跟随|cRXP_FRIENDLY_Khadgar的仆人|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑟|r
.accept 10037 >>接任务: |cRXP_LOOT_宁可去钓鱼|r
.target +Seth
.goto Shattrath City,63.94,15.52
.goto Shattrath City,52.54,21.03
.target Khadgar's Servant
step << tbc/wotlk
.goto Shattrath City,50.36,42.87
>>跟随|cRXP_FRIENDLY_Khadgar的仆人|r << wotlk
>>带着|cRXP_FRIENDLY_G'eras|r前往二楼，等待RP出来。如果其他人|cRXP_FRIENDLY_Khadgar的仆人|r在此期间到达，你可以瞄准它，它会为你完成任务。如果任务失败，放弃它，再次接受|cRXP_FRIENDLY_Khadgar的仆人|r的任务，然后跟随|cRXP_FRIENDLY_Khadgar's Servant |r << tbc
.complete 10211,1 
.target Khadgar's Servant
step << Mage (tbc/wotlk)
.goto Shattrath City,58.77,47.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾欧莉娅|r
.train 35715 >>火车通讯：沙特拉斯和门户：沙特拉特
.target Iorioa
step << tbc/wotlk
.goto Shattrath City,54.74,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德加的仆从|r
.turnin 10211 >>交任务: |cRXP_FRIENDLY_圣光之城|r
.target Khadgar
step << tbc/wotlk
.goto Shattrath City,54.74,44.32
.turninmultiple 10551,10552>>对话: |cRXP_FRIENDLY_卡德加的仆从|r
*If you do not see Aldor or Scryer specific quest steps after this, type "/reload" into your ingame chat box
.target Khadgar
.isQuestAvailable 10551
.isQuestAvailable 10552
step << tbc/wotlk
#scryer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德加的仆从|r
.goto Shattrath City,54.74,44.32
.accept 10553 >>接任务: |cRXP_LOOT_先知沃雷塔尔|r
.target Khadgar
step << tbc/wotlk
#aldor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德加的仆从|r
.goto Shattrath City,54.74,44.32
.accept 10554 >>接任务: |cRXP_LOOT_伊沙娜|r
.target Khadgar
step << (Warlock/Shaman/Paladin/Mage) (tbc/wotlk)
#completewith next
.goto Shattrath City,55.7,36.9 << !Mage
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r << !Mage
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r << Mage
step << (Warlock/Shaman/Paladin/Mage) (tbc/wotlk)
.goto StormwindClassic,25.3,78.7 << Warlock
.goto StormwindClassic,38.6,32.8 << Paladin
.goto StormwindClassic,61.9,84.0 << Shaman
.goto StormwindClassic,39.6,79.6 << Mage
.trainer >>训练你的职业技能
.target Ursula Deline << Warlock
.target Demisette Cloyce << Warlock
.target Sandahl << Warlock
.target Arthur the Faithful << Paladin
.target Katherine the Pure << Paladin
.target Lord Grayson Shadowbreaker << Paladin
.target Farseer Umbrua << Shaman
.target Elsharin << Mage
.target Jennea Cannon << Mage
step << (Warrior/Hunter/Rogue/Priest) (tbc/wotlk)
#completewith next
.goto Shattrath City,55.2,36.5
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << (Warrior/Hunter/Rogue/Priest) (tbc/wotlk)
.goto Darnassus,39.0,83.2 << Priest
.goto Darnassus,40.6,9.2 << Hunter
.goto Darnassus,31.5,17.4 << Rogue
.goto Darnassus,58.75,35.16 << Warrior
.trainer >>训练你的职业技能
.target Jandria << Priest
.target Jocaste << Hunter
.target Anishar << Rogue
.target Erion Shadewhisper << Rogue
.target Syurna << Rogue
.target Arias'ta Bladesinger << Warrior

step << Druid (tbc/wotlk)
>>前往: |cRXP_PICK_月光林地|r
.goto Moonglade,52.4,40.6
.trainer 12042 >>训练你的职业技能
.target Loganaar << Druid
step << DK (tbc/wotlk)
#completewith next
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
step << DK (tbc/wotlk)
.goto Eastern Plaguelands,80.3,48.0
>>前往: |cRXP_PICK_东瘟疫之地|r
.trainer >>从Acherus的|cRXP_FRIENDLY_Amal'thazad|r开始训练你的职业咒语
.target Amal'thazad
step
#completewith Vial
.hs >>Hearth到Telredor

step
#completewith next
.goto Zangarmarsh,67.83,51.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙希|r
.fly Orebor Harborage >>飞往Orebor Harborage
.skill riding,300,1
.target Munci
step
.goto 1946/530,7400.70020,973.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪莫斯·丹尼斯|r
.target Timothy Daniels
.accept 9848 >>接任务: |cRXP_LOOT_匕潭的秘密|r
step
.goto 1946/530,7376.20020,1019.90002
>>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_FRIENDLY_Wanted海报|r
.accept 10116 >>接任务: |cRXP_LOOT_通缉：穆玛基酋长|r
step
.goto 1946/530,7367.70020,1022.60004
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊库提|r
.target Ikuti
.accept 9835 >>接任务: |cRXP_LOOT_安葛洛什的威胁|r
.accept 10115 >>接任务: |cRXP_LOOT_匕潭的威胁|r
.turnin 9776 >>交任务: |cRXP_FRIENDLY_奥雷柏尔营地|r
step
#optional
#completewith Vial
>>杀死|cRXP_ENEMY_Greater孢子虫|r和|cRXP_ENEMY_Marsh Walkers |r。掠夺它们的|cRXD_Loot_Fertile孢子|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Marsh Walker
.subzoneskip 3640
step
#optional
#completewith Vial
>>在整个赞加马什的地面上掠夺|cRXP_PICK_Orange Mushrooms|r
.collect 24245,10,9808,1 
step
#optional
#completewith Mummaki
>>杀死|cRXP_ENEMY_Daggerfen刺客|r和|cRXX_ENEMY_Daggerfen Muckdwellers|r
.complete 10115,1 
.mob +Daggerfen Assassin
.complete 10115,2 
.mob +Daggerfen Muckdweller
step
#label Vial
.goto Zangarmarsh,26.40,22.85
>>抢走地上的小|cRXP_PICK_Daggerfen毒瓶|r
.complete 9848,2 
step
#label Mummaki
>>杀死塔顶上的|cRXP_ENEMY_酋长Mummaki|r。掠夺他的|cRXP_Loot_Totam|r
>>在|cRXP_ENEMY_Mummaki|r附近的顶层偷走|cRXP_PICK_Daggerfen毒药手册|r
.complete 10116,1 
.goto Zangarmarsh,23.77,26.74,-1
.complete 9848,1 
.goto Zangarmarsh,24.40,27.00,-1
.unitscan Chieftain Mummaki
step
#optional
#completewith Oreboring
>>杀死|cRXP_ENEMY_Greater孢子虫|r和|cRXP_ENEMY_Marsh Walkers |r。掠夺它们的|cRXD_Loot_Fertile孢子|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Marsh Walker
step
#loop
.line Zangarmarsh,24.58,26.44,25.83,27.17,27.06,25.42,28.18,23.79,28.50,22.23,26.24,22.36,26.31,20.43,25.00,20.56,24.87,22.28,22.89,21.07,22.24,22.32,24.22,24.50,25.74,24.95,24.58,26.44
.goto Zangarmarsh,24.58,26.44,50,0
.goto Zangarmarsh,25.83,27.17,50,0
.goto Zangarmarsh,27.06,25.42,50,0
.goto Zangarmarsh,28.18,23.79,50,0
.goto Zangarmarsh,28.50,22.23,50,0
.goto Zangarmarsh,26.24,22.36,50,0
.goto Zangarmarsh,26.31,20.43,50,0
.goto Zangarmarsh,25.00,20.56,50,0
.goto Zangarmarsh,24.87,22.28,50,0
.goto Zangarmarsh,22.89,21.07,50,0
.goto Zangarmarsh,22.24,22.32,50,0
.goto Zangarmarsh,24.22,24.50,50,0
.goto Zangarmarsh,25.74,24.95,50,0
.goto Zangarmarsh,24.58,26.44,50,0
>>杀死|cRXP_ENEMY_Daggerfen刺客|r和|cRXX_ENEMY_Daggerfen Muckdwellers|r
.complete 10115,1 
.mob +Daggerfen Assassin
.complete 10115,2 
.mob +Daggerfen Muckdweller
step
#optional
#completewith Oreboring
>>整个赞加马什地面上的织机|cRXP_PICK_Glowcaps|r
.collect 24245,10,9808,1 
step
#loop
.line Zangarmarsh,28.90,27.88,29.29,26.89,30.66,26.89,32.03,27.30,33.20,28.97,35.19,26.85,37.09,26.88,38.88,28.22,37.80,28.63,36.08,29.61,36.41,32.55,36.40,33.65,35.11,34.53,34.27,33.37,34.45,31.45,33.94,30.16,32.44,32.76,31.67,30.44,29.97,30.13,28.90,27.88
.goto Zangarmarsh,28.90,27.88,50,0
.goto Zangarmarsh,29.29,26.89,50,0
.goto Zangarmarsh,30.66,26.89,50,0
.goto Zangarmarsh,32.03,27.30,50,0
.goto Zangarmarsh,33.20,28.97,50,0
.goto Zangarmarsh,35.19,26.85,50,0
.goto Zangarmarsh,37.09,26.88,50,0
.goto Zangarmarsh,38.88,28.22,50,0
.goto Zangarmarsh,37.80,28.63,50,0
.goto Zangarmarsh,36.08,29.61,50,0
.goto Zangarmarsh,36.41,32.55,50,0
.goto Zangarmarsh,36.40,33.65,50,0
.goto Zangarmarsh,35.11,34.53,50,0
.goto Zangarmarsh,34.27,33.37,50,0
.goto Zangarmarsh,34.45,31.45,50,0
.goto Zangarmarsh,33.94,30.16,50,0
.goto Zangarmarsh,32.44,32.76,50,0
.goto Zangarmarsh,31.67,30.44,50,0
.goto Zangarmarsh,29.97,30.13,50,0
.goto Zangarmarsh,28.90,27.88,50,0
>>杀死|cRXP_ENEMY_Ango'rosh萨满|r和|cRXX_ENEMY_Ogres|r
.complete 9835,1 
.mob +Ango'rosh Shaman
.complete 9835,2 
.mob +Ango'rosh Ogre
step
#label Oreboring
.goto Zangarmarsh,41.94,27.19
>>返回Orebor Harborage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊库提|r
.turnin 9835 >>交任务: |cRXP_FRIENDLY_安葛洛什的威胁|r
.accept 9839 >>接任务: |cRXP_LOOT_戈尔费斯大王|r
.turnin 10115 >>交任务: |cRXP_FRIENDLY_匕潭的威胁|r
.turnin 10116 >>交任务: |cRXP_FRIENDLY_通缉：穆玛基酋长|r
.target Ikuti
step
#completewith Sporelings
.goto Zangarmarsh,41.85,26.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板克尔普|r
.home >>将您的炉石设置为Orebor Harborage
.target Innkeeper Kerp
step
.goto 1946/530,7382.50000,1019.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛克图|r
.target Maktu
.accept 9834 >>接任务: |cRXP_LOOT_天然的护甲|r
step
.goto 1946/530,7401.50000,976.40002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪莫斯·丹尼斯|r
.target Timothy Daniels
.turnin 9848 >>交任务: |cRXP_FRIENDLY_匕潭的秘密|r
step
.goto 1946/530,7421.0,976.29999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普尔鲁|r
.target Puluu
.accept 9830 >>接任务: |cRXP_LOOT_沼泽中的毒液|r
.accept 9833 >>接任务: |cRXP_LOOT_通讯路线|r
.accept 9902 >>接任务: |cRXP_LOOT_沼光湖的恐怖|r
step
#optional
#completewith Sporelings
>>整个赞加马什地面上的织机|cRXP_PICK_Glowcaps|r
.collect 24245,10,9808,1 
step
#optional
#completewith Sporelings
>>杀死|cRXP_ENEMY_Greater孢子虫|r和|cRXP_ENEMY_Marsh Walkers |r。掠夺它们的|cRXD_Loot_Fertile孢子|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Marsh Walker
step
#optional
#completewith Sporelings
>>杀死|cRXP_ENEMY_Marshfang切片器|r
.complete 9833,1 
.mob Marshfang Slicer
step
#label Leesa1
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_观察者莉萨奥|r
.turnin 9697 >>交任务: |cRXP_FRIENDLY_观察者莉萨奥|r
.accept 9701 >>接任务: |cRXP_LOOT_观察孢子人|r
.target Watcher Leesa'oh
step
#label Sporelings
.goto Zangarmarsh,19.03,62.34,50,0
.goto Zangarmarsh,19.19,64.60
.line Zangarmarsh,19.03,62.34,19.19,64.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法恩森|r
.accept 9739 >>接任务: |cRXP_LOOT_孢子人的困境|r
.accept 9743 >>接任务: |cRXP_LOOT_天敌|r
.target Fahssn
step
#optional
#completewith Tendrils
>>在地面上收集|cRXP_PICK_Sacs|r（它们看起来像气球）
.complete 9739,1 
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Bog领主|r。掠夺他们的|cRXX_Loot_Tennril|r
.complete 9743,1 
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step
.goto Zangarmarsh,14.95,59.88
>>前往产卵谷附近
.complete 9701,1 
step
#label Tendrils
#loop
.line Zangarmarsh,13.76,57.97,10.51,60.28,10.53,62.68,13.24,63.84,17.35,63.48,17.46,57.13,13.76,57.97
.goto Zangarmarsh,13.76,57.97,60,0
.goto Zangarmarsh,10.51,60.28,60,0
.goto Zangarmarsh,10.53,62.68,60,0
.goto Zangarmarsh,13.24,63.84,60,0
.goto Zangarmarsh,17.35,63.48,60,0
.goto Zangarmarsh,17.46,57.13,60,0
.goto Zangarmarsh,13.76,57.97,60,0
>>杀死|cRXP_ENEMY_Bog领主|r。掠夺他们的|cRXX_Loot_Tennril|r
.complete 9743,1 
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step
#loop
.line Zangarmarsh,13.76,57.97,10.51,60.28,10.53,62.68,13.24,63.84,17.35,63.48,17.46,57.13,13.76,57.97
.goto Zangarmarsh,13.76,57.97,60,0
.goto Zangarmarsh,10.51,60.28,60,0
.goto Zangarmarsh,10.53,62.68,60,0
.goto Zangarmarsh,13.24,63.84,60,0
.goto Zangarmarsh,17.35,63.48,60,0
.goto Zangarmarsh,17.46,57.13,60,0
.goto Zangarmarsh,13.76,57.97,60,0
>>在地面上收集|cRXP_PICK_Sacs|r（它们看起来像气球）
.complete 9739,1 
step
#optional
#completewith Idols
>>整个赞加马什地面上的织机|cRXP_PICK_Glowcaps|r
.collect 24245,10,9808,1 
step
#optional
#completewith Ungula
>>杀死|cRXP_ENEMY_Marshfang切片器|r
.complete 9833,1 
.mob Marshfang Slicer
step
.goto Zangarmarsh,19.03,62.34,50,0
.goto Zangarmarsh,19.19,64.60
.line Zangarmarsh,19.03,62.34,19.19,64.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法恩森|r
.turnin 9739 >>交任务: |cRXP_FRIENDLY_孢子人的困境|r
.turnin 9743 >>交任务: |cRXP_FRIENDLY_天敌|r
.target Fahssn
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Greater孢子虫|r和|cRXP_ENEMY_Marsh Walkers |r。掠夺它们的|cRXD_Loot_Fertile孢子|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Marsh Walker
step
#label Lessa2
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_观察者莉萨奥|r
.turnin 9701 >>交任务: |cRXP_FRIENDLY_观察孢子人|r
.accept 9702 >>接任务: |cRXP_LOOT_狼吞虎咽|r
.target Watcher Leesa'oh
step
#label Nutriment
#loop
.line Zangarmarsh,26.31,62.73,27.31,66.10,28.34,63.77,29.80,65.23,31.36,67.21,32.31,65.48,33.59,65.76,32.31,65.48,30.89,63.10,31.89,60.49,29.28,59.50,29.10,62.48,26.31,62.73
.goto Zangarmarsh,26.31,62.73,60,0
.goto Zangarmarsh,27.31,66.10,60,0
.goto Zangarmarsh,28.34,63.77,60,0
.goto Zangarmarsh,29.80,65.23,60,0
.goto Zangarmarsh,31.36,67.21,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,33.59,65.76,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,30.89,63.10,60,0
.goto Zangarmarsh,31.89,60.49,60,0
.goto Zangarmarsh,29.28,59.50,60,0
.goto Zangarmarsh,29.10,62.48,60,0
.goto Zangarmarsh,26.31,62.73,60,0
>>掠夺地上的|cRXP_PICK_Discarded Nutriments|r（小蘑菇）
.complete 9702,1 
step << !tbc
.goto Zangarmarsh,32.86,59.52
.use 25459 >>杀死|cRXP_ENEMY_“计数”昂古拉|r。抢走他的|cRXX_Loot_Mandible|r。点击你包里的|T135592:0|t[“计数”昂古拉的Mandible]
.collect 25459,1,9911 
.accept 9911 >>接任务: |cRXP_LOOT_沼泽中的伯爵|r
.unitscan "Count" Ungula
step << tbc
#loop
.line Zangarmarsh,26.31,62.73,27.31,66.10,28.34,63.77,29.80,65.23,31.36,67.21,32.31,65.48,33.59,65.76,32.31,65.48,30.89,63.10,31.89,60.49,29.28,59.50,29.10,62.48,26.31,62.73
.goto Zangarmarsh,26.31,62.73,60,0
.goto Zangarmarsh,27.31,66.10,60,0
.goto Zangarmarsh,28.34,63.77,60,0
.goto Zangarmarsh,29.80,65.23,60,0
.goto Zangarmarsh,31.36,67.21,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,33.59,65.76,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,30.89,63.10,60,0
.goto Zangarmarsh,31.89,60.49,60,0
.goto Zangarmarsh,29.28,59.50,60,0
.goto Zangarmarsh,29.10,62.48,60,0
.goto Zangarmarsh,26.31,62.73,60,0
>>杀死|cRXP_ENEMY_Bog领主|r。掠夺他们的|cRXX_Loot_Tennril|r
.collect 24291,6 
.reputation 970,neutral,0,1
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step
#loop
.line Zangarmarsh,26.31,62.73,27.31,66.10,28.34,63.77,29.80,65.23,31.36,67.21,32.31,65.48,33.59,65.76,32.31,65.48,30.89,63.10,31.89,60.49,29.28,59.50,29.10,62.48,26.31,62.73
.goto Zangarmarsh,26.31,62.73,60,0
.goto Zangarmarsh,27.31,66.10,60,0
.goto Zangarmarsh,28.34,63.77,60,0
.goto Zangarmarsh,29.80,65.23,60,0
.goto Zangarmarsh,31.36,67.21,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,33.59,65.76,60,0
.goto Zangarmarsh,32.31,65.48,60,0
.goto Zangarmarsh,30.89,63.10,60,0
.goto Zangarmarsh,31.89,60.49,60,0
.goto Zangarmarsh,29.28,59.50,60,0
.goto Zangarmarsh,29.10,62.48,60,0
.goto Zangarmarsh,26.31,62.73,60,0
.reputation 970,neutral,0 >>升级|cRXP_ENEMY_Bog Lord|r，直到用Sporegar升级|cRXP_WARN_Neutral|r
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step << !tbc
.goto Zangarmarsh,19.03,62.34,50,0
.goto Zangarmarsh,19.19,64.60
.line Zangarmarsh,19.03,62.34,19.19,64.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法恩森|r
.accept 9919 >>接任务: |cRXP_LOOT_孢子村|r
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step
#questguide << !tbc
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lessa'oh|r
.turnin 9702 >>交任务: |cRXP_FRIENDLY_狼吞虎咽|r
.accept 9708 >>接任务: |cRXP_LOOT_熟悉的蘑菇|r
.target Watcher Leesa'oh
step << tbc
#label Ungula
.goto Zangarmarsh,32.86,59.52
.use 25459 >>杀死|cRXP_ENEMY_“计数”昂古拉|r。抢走他的|cRXX_Loot_Mandible|r。点击你包里的|T135592:0|t[“计数”昂古拉的Mandible]
.collect 25459,1,9911 
.accept 9911 >>接任务: |cRXP_LOOT_沼泽中的伯爵|r
.unitscan "Count" Ungula
step << !tbc
#label Ungula
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lessa'oh|r
.turnin 9911 >>交任务: |cRXP_FRIENDLY_沼泽中的伯爵|r
.turnin 9702 >>交任务: |cRXP_FRIENDLY_狼吞虎咽|r
.target Watcher Leesa'oh
step
#optional
#completewith Idols
>>杀死|cRXP_ENEMY_Fen漫游者|r和|cRXP_ENEMY_Greater孢子虫|r。掠夺它们的|cRXD_Loot_肥沃孢子|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
step
#loop
.line Zangarmarsh,32.12,59.16,32.87,60.25,34.12,62.12,35.08,63.37,37.14,62.08,39.08,63.53,38.99,59.32,36.85,56.26,34.96,59.53,33.60,57.06,32.12,59.16
.goto Zangarmarsh,32.12,59.16,50,0
.goto Zangarmarsh,32.87,60.25,50,0
.goto Zangarmarsh,34.12,62.12,50,0
.goto Zangarmarsh,35.08,63.37,50,0
.goto Zangarmarsh,37.14,62.08,50,0
.goto Zangarmarsh,39.08,63.53,50,0
.goto Zangarmarsh,38.99,59.32,50,0
.goto Zangarmarsh,36.85,56.26,50,0
.goto Zangarmarsh,34.96,59.53,50,0
.goto Zangarmarsh,33.60,57.06,50,0
.goto Zangarmarsh,32.12,59.16,50,0
>>杀死|cRXP_ENEMY_Marshfang切片器|r
.complete 9833,1 
.mob Marshfang Slicer
step
#label Idols
.goto Zangarmarsh,46.09,57.76,20,0
.goto Zangarmarsh,46.17,59.79,20,0
.goto Zangarmarsh,45.93,60.71,20,0
.goto Zangarmarsh,46.25,60.96,20,0
.goto Zangarmarsh,47.46,61.77,20,0
.goto Zangarmarsh,49.09,61.27,20,0
.goto Zangarmarsh,49.24,60.72,20,0
.goto Zangarmarsh,49.70,61.09,20,0
.goto Zangarmarsh,48.19,63.81,20,0
.goto Zangarmarsh,47.90,64.20,20,0
.goto Zangarmarsh,48.59,64.71,20,0
.goto Zangarmarsh,43.24,62.40
>>掠夺地上的小石头|cRXP_PICK_Idols|r
.complete 9787,1 
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Fen入侵者|r和|cRXP_ENEMY_Sporebats|r。掠夺他们的|cRXD_Loot_肥沃孢子|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Fen Strider
.mob *Marsh Walker
.mob *Sporebat
.subzoneskip 3653
step << !Warlock
#completewith next
.cast 22807 >>在您的包中使用|T134716:0|t[水呼吸药剂]
.use 25539
step
#loop
.line Zangarmarsh,48.35,45.31,49.52,44.88,50.82,45.18,51.57,44.16,51.35,42.51,52.25,43.34,52.99,42.77,53.30,41.79,52.45,41.36,52.67,39.01,50.99,37.35,50.26,36.26,48.89,38.04,48.07,39.03,48.73,40.09,47.66,40.78,47.74,41.81,49.00,42.23,48.35,45.31
.goto Zangarmarsh,48.35,45.31,50,0
.goto Zangarmarsh,49.52,44.88,50,0
.goto Zangarmarsh,50.82,45.18,50,0
.goto Zangarmarsh,51.57,44.16,50,0
.goto Zangarmarsh,51.35,42.51,50,0
.goto Zangarmarsh,52.25,43.34,50,0
.goto Zangarmarsh,52.99,42.77,50,0
.goto Zangarmarsh,53.30,41.79,50,0
.goto Zangarmarsh,52.45,41.36,50,0
.goto Zangarmarsh,52.67,39.01,50,0
.goto Zangarmarsh,50.99,37.35,50,0
.goto Zangarmarsh,50.26,36.26,50,0
.goto Zangarmarsh,48.89,38.04,50,0
.goto Zangarmarsh,48.07,39.03,50,0
.goto Zangarmarsh,48.73,40.09,50,0
.goto Zangarmarsh,47.66,40.78,50,0
.goto Zangarmarsh,47.74,41.81,50,0
.goto Zangarmarsh,49.00,42.23,50,0
.goto Zangarmarsh,48.35,45.31,50,0
>>在水下杀死|cRXP_ENEMY_Fenclaw Thrasher|r。掠夺他们的|cRXP_Loot_Hides|r
.complete 9834,1 
.mob Fenclaw Thrasher
step << Shaman
#completewith next
.hs >>Hearth to Orebor Harborage公司公司
step
#optional
#completewith Orebor1
>>杀死|cRXP_ENEMY_Greater孢子虫|r。掠夺它们的|cRXX_Loot_Fertile孢子|r
.collect 24449,6,9806,1 
.mob *Greater Sporebat
.mob *Marsh Walker
step
#optional
#completewith FSpores
>>整个赞加马什地面上的织机|cRXP_PICK_Glowcaps|r
.collect 24245,10,9808,1 
step
.goto 1946/530,7383.70020,1020.29999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛克图|r
.target Maktu
.turnin 9834 >>交任务: |cRXP_FRIENDLY_天然的护甲|r
.accept 9905 >>接任务: |cRXP_LOOT_玛克图的复仇|r
step
.goto 1946/530,7422.10010,974.29999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普尔鲁|r
.target Puluu
.turnin 9833 >>交任务: |cRXP_FRIENDLY_通讯路线|r
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Bograre Needlers|r。掠夺他们的|cRXX_Loot_Fwing|r
.complete 9790,1 
.mob Bogflare Needler
step
.goto Zangarmarsh,42.24,41.40
>>杀死|cRXP_ENEMY_Mragesh|r
.complete 9905,1 
.unitscan Mragesh
step
#questguide << !tbc
#loop
.line Zangarmarsh,28.90,27.88,29.29,26.89,30.66,26.89,32.03,27.30,33.20,28.97,35.19,26.85,37.09,26.88,38.88,28.22,37.80,28.63,36.08,29.61,36.41,32.55,36.40,33.65,35.11,34.53,34.27,33.37,34.45,31.45,33.94,30.16,32.44,32.76,31.67,30.44,29.97,30.13,28.90,27.88
.goto Zangarmarsh,28.90,27.88,50,0
.goto Zangarmarsh,29.29,26.89,50,0
.goto Zangarmarsh,30.66,26.89,50,0
.goto Zangarmarsh,32.03,27.30,50,0
.goto Zangarmarsh,33.20,28.97,50,0
.goto Zangarmarsh,35.19,26.85,50,0
.goto Zangarmarsh,37.09,26.88,50,0
.goto Zangarmarsh,38.88,28.22,50,0
.goto Zangarmarsh,37.80,28.63,50,0
.goto Zangarmarsh,36.08,29.61,50,0
.goto Zangarmarsh,36.41,32.55,50,0
.goto Zangarmarsh,36.40,33.65,50,0
.goto Zangarmarsh,35.11,34.53,50,0
.goto Zangarmarsh,34.27,33.37,50,0
.goto Zangarmarsh,34.45,31.45,50,0
.goto Zangarmarsh,33.94,30.16,50,0
.goto Zangarmarsh,32.44,32.76,50,0
.goto Zangarmarsh,31.67,30.44,50,0
.goto Zangarmarsh,29.97,30.13,50,0
.goto Zangarmarsh,28.90,27.88,50,0
>>杀死|cRXP_ENEMY_Ango'rosh食人魔|r，|cRXD_ENEMY_ Ango'rosh哨兵|r和|cRXP_ENEMY_Ango'roshShamans|r。掠夺他们的|cRXP_Loot_MMushrooms|r
.complete 9708,1 
.mob Ango'rosh Ogre
.mob Ango'rosh Sentry
.mob Ango'rosh Shaman
.mob Boss Grog'ak
step
#optional
#completewith MarshControls
>>杀死|cRXP_ENEMY_Marshlight Bleders|r。掠夺他们的|cRXD_Loot_Venom|r和|cRXX_Loot_Vwing|r
.complete 9830,1 
.complete 9790,1 
.mob Marshlight Bleeder
step
#questguide << !tbc
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lessa'oh|r
.turnin 9708 >>交任务: |cRXP_FRIENDLY_熟悉的蘑菇|r
.accept 9709 >>接任务: |cRXP_LOOT_偷回蘑菇|r
.turnin 9911 >>交任务: |cRXP_FRIENDLY_沼泽中的伯爵|r
.target Watcher Leesa'oh
step
#label Orebor1
step << tbc
#optional
#completewith next
>>杀死|cRXP_ENEMY_Greater孢子虫|r和|cRXP_ENEMY_Marsh Walkers |r。掠夺它们的|cRXD_Loot_Fertile孢子|r
.collect 24449,6,9806,1 
.mob Greater Sporebat
.mob Marsh Walker
step << tbc
#label Sporeggar
.goto Zangarmarsh,19.03,62.34,60,0
.goto Zangarmarsh,19.19,64.60
.line Zangarmarsh,19.03,62.34,19.19,64.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法恩森|r
.accept 9919 >>接任务: |cRXP_LOOT_孢子村|r
.turnin 9744 >>交任务: |cRXP_FRIENDLY_更多卷须！|r
.target Fahssn
step
#label FSpores
#loop
.line Zangarmarsh,20.87,66.51,21.59,60.30,22.02,58.36,20.27,57.74,18.36,55.46,21.05,52.64,25.47,57.26,20.87,66.51
.goto Zangarmarsh,20.87,66.51,50,0
.goto Zangarmarsh,21.59,60.30,50,0
.goto Zangarmarsh,22.02,58.36,50,0
.goto Zangarmarsh,20.27,57.74,50,0
.goto Zangarmarsh,18.36,55.46,50,0
.goto Zangarmarsh,21.05,52.64,50,0
.goto Zangarmarsh,25.47,57.26,50,0
.goto Zangarmarsh,20.87,66.51,50,0
>>杀死|cRXP_ENEMY_Greater孢子虫|r和|cRXP_ENEMY_Marsh Walkers |r。掠夺它们的|cRXD_Loot_Fertile孢子|r
.collect 24449,6,9806,1 
.mob Greater Sporebat
.mob Marsh Walker
step
#loop
.line Zangarmarsh,19.40,64.97,22.18,63.38,32.63,54.20,27.28,52.55,27.74,47.76,21.27,54.58,19.70,51.18,19.40,64.97
.goto Zangarmarsh,19.40,64.97,50,0
.goto Zangarmarsh,22.18,63.38,50,0
.goto Zangarmarsh,32.63,54.20,50,0
.goto Zangarmarsh,27.28,52.55,50,0
.goto Zangarmarsh,27.74,47.76,50,0
.goto Zangarmarsh,21.27,54.58,50,0
.goto Zangarmarsh,19.70,51.18,50,0
.goto Zangarmarsh,19.40,64.97,50,0
>>整个赞加马什地面上的织机|cRXP_PICK_Glowcaps|r
.collect 24245,10,9808,1 
step
.goto 1946/530,8487.50000,191.90001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_姆希菲|r
.target Msshi'fn
.turnin 9919 >>交任务: |cRXP_FRIENDLY_孢子村|r
.accept 9808 >>接任务: |cRXP_LOOT_亮顶蘑菇|r
.turnin 9808 >>交任务: |cRXP_FRIENDLY_亮顶蘑菇|r
step
.goto 1946/530,8511.79980,278.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格沙弗|r
.target Gshaff
.accept 9806 >>接任务: |cRXP_LOOT_成熟的孢子|r
.turnin 9806 >>交任务: |cRXP_FRIENDLY_成熟的孢子|r
step
#questguide << !tbc
.goto Zangarmarsh,15.58,60.02
.reputation 970,friendly >>升级|cRXP_ENEMY_Bog Lord|r，直到您达到|cRXP_FRIENDLY_FRIENDLY|r声誉
.mob Starving Fungal Giant
.mob Starving Bog Lord
.mob Bog Lord
step
#questguide << !tbc
>>对话: |cRXP_FRIENDLY_舒特|r
.accept 9726 >>接任务: |cRXP_LOOT_既然我们是朋友......|r
.goto Zangarmarsh,19.54,50.04
.target Gzhun'tt
step
.goto Zangarmarsh,22.34,45.89
>>杀死岛上的|cRXP_ENEMY_Terroclaw|r
.complete 9902,1 
.unitscan Terrorclaw
step
#optional
#completewith Bloodscale
>>杀死|cRXP_ENEMY_Bloodscale奴隶手|r和|cRXX_ENEMY_ BloodscaleEnchantres|r。掠夺他们的|cRXD_Loot_爪|r
.complete 9728,1 
.mob Bloodscale Enchantress
.mob Bloodscale Slavedriver
step
#questguide << !tbc
#optional
#completewith next
>>杀死|cRXP_ENEMY_Bloodscale奴隶手|r和|cRXD_ENEMY_ Bloodscale附魔|r
.complete 9726,1 
.mob +Bloodscale Slavedriver
.complete 9726,2 
.mob +Bloodscale Enchantress
.isOnQuest 9726
step
#label MarshControls
.goto Zangarmarsh,25.41,42.86
.use 24355 >>|cRXP_WARN_在Lake Controls上使用|r|T136074:0|t[Ionvine Seeds]|cRXP_WARN_|r
.complete 9720,2 
step
#questguide << !tbc
#loop
.line Zangarmarsh,24.93,41.85,26.13,40.93,25.79,39.22,24.82,38.46,24.94,36.37,26.38,35.80,28.29,36.89,29.06,38.57,28.49,40.87,28.02,41.90,29.07,44.08,27.72,44.48,26.80,43.70,26.68,46.24,25.85,47.27,25.18,43.82,24.93,41.85
.goto Zangarmarsh,24.93,41.85,50,0
.goto Zangarmarsh,26.13,40.93,50,0
.goto Zangarmarsh,25.79,39.22,50,0
.goto Zangarmarsh,24.82,38.46,50,0
.goto Zangarmarsh,24.94,36.37,50,0
.goto Zangarmarsh,26.38,35.80,50,0
.goto Zangarmarsh,28.29,36.89,50,0
.goto Zangarmarsh,29.06,38.57,50,0
.goto Zangarmarsh,28.49,40.87,50,0
.goto Zangarmarsh,28.02,41.90,50,0
.goto Zangarmarsh,29.07,44.08,50,0
.goto Zangarmarsh,27.72,44.48,50,0
.goto Zangarmarsh,26.80,43.70,50,0
.goto Zangarmarsh,26.68,46.24,50,0
.goto Zangarmarsh,25.85,47.27,50,0
.goto Zangarmarsh,25.18,43.82,50,0
.goto Zangarmarsh,24.93,41.85,50,0
>>杀死|cRXP_ENEMY_Bloodscale奴隶手|r和|cRXD_ENEMY_ Bloodscale附魔|r
.complete 9726,1 
.mob +Bloodscale Slavedriver
.complete 9726,2 
.mob +Bloodscale Enchantress
.isOnQuest 9726
step
#label Bloodscale
step
#optional
#completewith Gorefist
.goto Zangarmarsh,27.73,32.32,60,0
.goto Zangarmarsh,25.87,33.28,60,0
.goto Zangarmarsh,25.71,31.64,60,0
.goto Zangarmarsh,24.78,29.79,60,0
.goto Zangarmarsh,24.27,31.62,60,0
.goto Zangarmarsh,22.83,31.15,60,0
.goto Zangarmarsh,21.23,32.21,60,0
.goto Zangarmarsh,20.51,31.27,60,0
.goto Zangarmarsh,18.84,35.49,60,0
>>杀死|cRXP_ENEMY_Marshlight Bleders|r。掠夺他们的|cRXD_Loot_Venom|r和|cRXX_Loot_Vwing|r
.complete 9830,1 
.complete 9790,1 
.mob Marshlight Bleeder
.subzoneskip 3651
step
#completewith Gorefist
.goto Zangarmarsh,17.08,13.10,40 >>穿过蘑菇桥
.skill riding,225,1
step
#sticky
#label Gorefist
.goto Zangarmarsh,18.40,7.79
>>杀死建筑物内的|cRXP_ENEMY_Gorefist|r
.complete 9839,1 
.unitscan Overlord Gorefist
step
#questguide << !tbc
#loop
.goto Zangarmarsh,16.64,7.63,50,0
.goto Zangarmarsh,17.13,4.07,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,21.02,4.08,50,0
.goto Zangarmarsh,20.93,8.05,50,0
.goto Zangarmarsh,17.28,9.84,50,0
.goto Zangarmarsh,19.93,6.70,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,16.64,7.63,50,0
.goto Zangarmarsh,17.13,4.07,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,21.02,4.08,50,0
.goto Zangarmarsh,20.93,8.05,50,0
.goto Zangarmarsh,17.28,9.84,50,0
.goto Zangarmarsh,19.93,6.70,50,0
.goto Zangarmarsh,19.14,4.08,0
>>杀死|cRXP_ENEMY_Ango'rosh Maulers|r。掠夺他们的|cRXX_Loot_蘑菇盒|r
>>你也可以在地上掠夺|cRXP_loot_Boxes of Mushrooms|r
.complete 9839,2 
.disablecheckbox
.complete 9709,1 
.mob Ango'rosh Mauler
step
#loop
.goto Zangarmarsh,16.64,7.63,50,0
.goto Zangarmarsh,17.13,4.07,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,21.02,4.08,50,0
.goto Zangarmarsh,20.93,8.05,50,0
.goto Zangarmarsh,17.28,9.84,50,0
.goto Zangarmarsh,19.93,6.70,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,16.64,7.63,50,0
.goto Zangarmarsh,17.13,4.07,50,0
.goto Zangarmarsh,19.14,4.08,50,0
.goto Zangarmarsh,21.02,4.08,50,0
.goto Zangarmarsh,20.93,8.05,50,0
.goto Zangarmarsh,17.28,9.84,50,0
.goto Zangarmarsh,19.93,6.70,50,0
.goto Zangarmarsh,19.14,4.08,0
>>结束|cRXP_ENEMY_Ango'rosh Maulers|r
.complete 9839,2 
.mob Ango'rosh Mauler
step
#requires Gorefist
.goto Zangarmarsh,27.73,32.32,60,0
.goto Zangarmarsh,25.87,33.28,60,0
.goto Zangarmarsh,25.71,31.64,60,0
.goto Zangarmarsh,24.78,29.79,60,0
.goto Zangarmarsh,24.27,31.62,60,0
.goto Zangarmarsh,22.83,31.15,60,0
.goto Zangarmarsh,21.23,32.21,60,0
.goto Zangarmarsh,20.51,31.27,60,0
.goto Zangarmarsh,18.84,35.49,60,0
.goto Zangarmarsh,16.37,37.32,60,0
.goto Zangarmarsh,15.49,40.37,60,0
.goto Zangarmarsh,15.15,45.80,60,0
.goto Zangarmarsh,16.70,45.10,60,0
.goto Zangarmarsh,19.25,46.80
>>杀死|cRXP_ENEMY_Marshlight Bleders|r和|cRXX_ENEMY_Fenglow毒刺|r。掠夺它们的|cRXD_Loot_Venom|r和| cRXP_Loot-Wwing|r
.complete 9830,1 
.complete 9790,1 
.mob Marshlight Bleeder
.mob Fenglow Stinger
step
#questguide << !tbc
.goto Zangarmarsh,19.54,50.04
>>返回Sporeggar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舒特|r
.turnin 9726 >>交任务: |cRXP_FRIENDLY_既然我们是朋友......|r
.target Gzhun'tt
step
#questguide << !tbc
.goto Zangarmarsh,23.32,66.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lessa'oh|r
.turnin 9709 >>交任务: |cRXP_FRIENDLY_偷回蘑菇|r
.target Watcher Leesa'oh
step
#xprate <1.5 << !Shaman
#completewith next
.hs >>Hearth to Orebor Harborage公司公司
step
.goto 1946/530,7364.00000,1023.79999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊库提|r
.target Ikuti
.turnin 9839 >>交任务: |cRXP_FRIENDLY_戈尔费斯大王|r
step
.goto 1946/530,7383.10010,1019.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛克图|r
.target Maktu
.turnin 9905 >>交任务: |cRXP_FRIENDLY_玛克图的复仇|r
step
.goto 1946/530,7419.39990,976.70001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普尔鲁|r
.target Puluu
.turnin 9830 >>交任务: |cRXP_FRIENDLY_沼泽中的毒液|r
.turnin 9902 >>交任务: |cRXP_FRIENDLY_沼光湖的恐怖|r
step
#completewith next
.goto Zangarmarsh,41.28,29.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈卢|r
.fly Telredor >>飞往Telredor
.target Halu
step
#questguide << !tbc
>>返回Telredor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者安霍尔|r, |cRXP_FRIENDLY_海尔伦|r
.turnin 9787 >>交任务: |cRXP_FRIENDLY_蛮沼雕像|r
.goto Zangarmarsh,68.20,49.37
.accept 9801 >>接任务: |cRXP_LOOT_收集材料|r
.turnin 9790 >>交任务: |cRXP_FRIENDLY_透明的虫翼|r
.goto Zangarmarsh,68.81,48.91
.target Anchorite Ahuurn
.target Haalrun
step
#sticky
#label idols1
.goto 1946/530,6045.39990,279.89999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者安霍尔|r
.target Anchorite Ahuurn
.turnin 9787 >>交任务: |cRXP_FRIENDLY_蛮沼雕像|r
step
#questguide << !tbc
.goto 1946/530,6045.39990,279.89999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者安霍尔|r
.target Anchorite Ahuurn
.accept 9801 >>接任务: |cRXP_LOOT_收集材料|r
step
#requires idols1
.goto 1946/530,6066.80029,328.60001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海尔伦|r
.target Haalrun
.turnin 9790 >>交任务: |cRXP_FRIENDLY_透明的虫翼|r
step
#questguide << !tbc
#completewith NagaC
>>杀死|cRXP_ENEMY_Fen入侵者|r。掠夺他们的|cRXX_Loot_Ttentacle|r
>>杀死|cRXP_ENEMY_Sporebats|r。掠夺它们的|cRXX_Loot_Eyes |r
.complete 9801,2 
.mob +Fen Strider
.complete 9801,1 
.mob +Young Sporebat
.mob +Greater Sporebat
.mob +Sporebat
step
#optional
#completewith Rajis
>>杀死|cRXP_ENEMY_Bloodscale Overvisors|r和|cRXX_ENEMY_ BloodscaleWavecallers |r。掠夺他们的|cRXD_Loot_爪|r
.complete 9728,1 
.mob Bloodscale Overseer
.mob Bloodscale Wavecaller
step
.goto Zangarmarsh,61.97,40.84
.use 24355 >>|cRXP_WARN_在Lake Controls上使用|r|T136074:0|t[Ionvine Seeds]|cRXP_WARN_|r
.complete 9720,3 
step
#label Rajis
.goto Zangarmarsh,65.15,40.91
>>杀死|cRXP_ENEMY_Rajis Fyashe|r
>>|cRXP_WARN_如果需要，为她找一个小组。如果你找不到一个团体或独自一人，请跳过这一步|r << tbc/wotlk
>>|cRXP_WARN_试着用她的咒语瞄准视线。逃离|r|T135833:0|t[冰冻圈]|cRXP_WARN_she投掷|r << tbc/wotlk
.complete 9817,1 
.isOnQuest 9817
.mob Rajis Fyashe
step
#label NagaC
#loop
.line Zangarmarsh,62.09,38.27,63.29,37.85,64.54,40.10,65.71,39.87,66.39,41.25,63.82,43.15,63.34,44.22,63.15,41.53,61.93,40.26,62.09,38.27
.goto Zangarmarsh,62.09,38.27,55,0
.goto Zangarmarsh,63.29,37.85,55,0
.goto Zangarmarsh,64.54,40.10,55,0
.goto Zangarmarsh,65.71,39.87,55,0
.goto Zangarmarsh,66.39,41.25,55,0
.goto Zangarmarsh,63.82,43.15,55,0
.goto Zangarmarsh,63.34,44.22,55,0
.goto Zangarmarsh,63.15,41.53,55,0
.goto Zangarmarsh,61.93,40.26,55,0
.goto Zangarmarsh,62.09,38.27,55,0
>>杀死|cRXP_ENEMY_Bloodscale Overvisors|r和|cRXX_ENEMY_ BloodscaleWavecallers |r。掠夺他们的|cRXD_Loot_爪|r
.complete 9728,1 
.mob Bloodscale Overseer
.mob Bloodscale Wavecaller
step
#questguide << !tbc
#completewith next
.goto Zangarmarsh,68.48,43.46,60,0
.goto Zangarmarsh,72.01,43.27,60,0
.goto Zangarmarsh,74.14,40.66,60,0
.goto Zangarmarsh,74.75,41.17,60,0
.goto Zangarmarsh,74.61,46.52,60,0
.goto Zangarmarsh,75.22,48.26,60,0
.goto Zangarmarsh,73.70,48.35,60,0
.goto Zangarmarsh,73.50,50.21,60,0
.goto Zangarmarsh,76.75,55.29,60,0
.goto Zangarmarsh,73.96,56.23,60,0
.goto Zangarmarsh,71.85,55.12,60,0
.goto Zangarmarsh,68.41,57.39,60,0
.goto Zangarmarsh,69.72,59.22,60,0
>>杀死|cRXP_ENEMY_Sporebats|r。掠夺它们的|cRXX_Loot_Eyes |r
>>杀死|cRXP_ENEMY_Fen入侵者|r。掠夺他们的|cRXX_Loot_Ttentacle|r
.complete 9801,1 
.mob +Young Sporebat
.mob +Greater Sporebat
.mob +Sporebat
.complete 9801,2 
.unitscan +Fen Strider
step
.goto Zangarmarsh,78.40,62.02
>>返回Cenarion避难所
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊谢尔·风歌|r
.turnin 9720 >>交任务: |cRXP_FRIENDLY_恢复平衡|r
.turnin 9732 >>交任务: |cRXP_FRIENDLY_返回沼泽|r
.target Ysiel Windsinger
step
.goto Zangarmarsh,79.09,65.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监护者哈穆特|r
.turnin 9728 >>交任务: |cRXP_FRIENDLY_热情的欢迎|r
.turnin 9817 >>交任务: |cRXP_FRIENDLY_血鳞纳迦的领袖|r
.isQuestComplete 9817
.target Warden Hamoot
step
#optional
.goto Zangarmarsh,79.09,65.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监护者哈穆特|r
.turnin 9728 >>交任务: |cRXP_FRIENDLY_热情的欢迎|r
.target Warden Hamoot
step
#questguide << !tbc
.goto Zangarmarsh,80.66,69.19,60,0
.goto Zangarmarsh,81.79,72.99,60,0
.goto Zangarmarsh,78.58,82.28,60,0
.goto Zangarmarsh,76.14,84.24,60,0
.goto Zangarmarsh,73.71,87.66,60,0
.goto Zangarmarsh,79.51,87.69,60,0
.goto Zangarmarsh,80.66,69.19,60,0
.goto Zangarmarsh,81.79,72.99,60,0
.goto Zangarmarsh,78.58,82.28,60,0
.goto Zangarmarsh,76.14,84.24,60,0
.goto Zangarmarsh,73.71,87.66,60,0
.goto Zangarmarsh,79.51,87.69
>>杀死|cRXP_ENEMY_Sporebats|r。掠夺它们的|cRXX_Loot_Eyes |r
>>杀死|cRXP_ENEMY_Fen入侵者|r。掠夺他们的|cRXX_Loot_Ttentacle|r
.complete 9801,1 
.mob +Young Sporebat
.mob +Greater Sporebat
.mob +Sporebat
.complete 9801,2 
.unitscan +Fen Strider
step << !tbc !wotlk
.goto 1955/530,5362.10010,-1832.90002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_憔悴的志愿兵|r
.target Haggard War Veteran
.accept 10210 >>接任务: |cRXP_LOOT_阿达尔|r
step << !tbc !wotlk
.goto 1955/530,5426.70020,-1862.70007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿达尔|r
.target A'dal
.turnin 10210 >>交任务: |cRXP_FRIENDLY_阿达尔|r
step << !tbc !wotlk
.goto 1955/530,5421.80029,-1859.00000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德加的仆从|r
.target Khadgar
.accept 10211 >>接任务: |cRXP_LOOT_圣光之城|r
.timer 462,City of Light RP
step << !tbc !wotlk
.goto Shattrath City,50.36,42.87
>>跟随|cRXP_FRIENDLY_Khadgar的仆人|r << wotlk
>>带着|cRXP_FRIENDLY_G'eras|r前往二楼，等待RP出来。如果其他人|cRXP_FRIENDLY_Khadgar的仆人|r在此期间到达，你可以瞄准它，它会为你完成任务。如果任务失败，放弃它，再次接受|cRXP_FRIENDLY_Khadgar的仆人|r的任务，然后跟随|cRXP_FRIENDLY_Khadgar's Servant |r << tbc
.complete 10211,1 
.target Khadgar's Servant
step << Mage !tbc !wotlk
.goto Shattrath City,58.77,47.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾欧莉娅|r
.train 35715 >>火车通讯：沙特拉斯和门户：沙特拉特
.target Iorioa
step << !tbc !wotlk
.goto Shattrath City,54.74,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德加的仆从|r
.turnin 10211 >>交任务: |cRXP_FRIENDLY_圣光之城|r
.target Khadgar
step << !tbc !wotlk
.goto Shattrath City,54.74,44.32
.accept 10551 >>接任务: |cRXP_WARN_为奥尔多效力|r
.turnin 10551>>对话: |cRXP_FRIENDLY_卡德加|r. Pledge your 接任务: |cRXP_WARN_为奥尔多效力|r
.target Khadgar
step << !tbc !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德加的仆从|r
.goto Shattrath City,54.74,44.32
.accept 10554 >>接任务: |cRXP_LOOT_伊沙娜|r
.target Khadgar
step << !tbc !wotlk
#xprate >1.499
.goto 1955/530,5821.60010,-1732.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊沙娜|r
.target Ishanah
.turnin 10554 >>交任务: |cRXP_FRIENDLY_伊沙娜|r
step
#xprate >1.499
.hs >>Hearth to Orebor Harborage公司公司
.cooldown item,6948,>0
step << !tbc !wotlk
.goto Shattrath City,64.05,41.12
>>前往: |cRXP_PICK_沙塔斯城|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努特拉尔|r
.fly Orebor >>飞往Orebor Harborage
.target Nutral
.subzoneskip 3766
.zoneskip Blade's Edge Mountains
]])
RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#group RXP Cataclysm 60-80 (A)
<< Alliance
#questguide << !tbc
#name 63-65 泰罗卡森林
#version 5
#next 64-66 Nagrand
#xprate <1.5

step
>>前往: |cRXP_PICK_沙塔斯城|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑟|r
.accept 10037 >>接任务: |cRXP_LOOT_宁可去钓鱼|r
.goto Shattrath City,63.94,15.52
.target Seth
step
.goto Terokkar Forest,36.78,3.77
.zone Terokkar Forest >>前往: |cRXP_PICK_泰罗卡森林|r
step
#questguide << !tbc
#aldor
#completewith Eel
>>杀死|cRXP_ENEMY_Dampscale Basilisk|r。掠夺它们的|cRXP_Loot_Eyes |r
.collect 25744,8,10024,1 
.mob Dampscale Basilisk
step << !Warlock
#completewith next
.cast 22807 >>在您的包中使用|T134716:0|t[水呼吸药剂]
.use 25539 
.itemcount 25539,1
step
#loop
.line Terokkar Forest,42.34,14.24,42.55,12.57,41.08,11.55,40.00,8.53,38.23,5.40,38.37,3.86,36.64,3.64,37.91,6.36,38.19,9.34,39.72,13.61,42.34,14.24
.goto Terokkar Forest,42.34,14.24,60,0
.goto Terokkar Forest,42.55,12.57,60,0
.goto Terokkar Forest,41.08,11.55,60,0
.goto Terokkar Forest,40.00,8.53,60,0
.goto Terokkar Forest,38.23,5.40,60,0
.goto Terokkar Forest,38.37,3.86,60,0
.goto Terokkar Forest,36.64,3.64,60,0
.goto Terokkar Forest,37.91,6.36,60,0
.goto Terokkar Forest,38.19,9.34,60,0
.goto Terokkar Forest,39.72,13.61,60,0
.goto Terokkar Forest,42.34,14.24,60,0
>>杀死|cRXP_ENEMY_Shimmerscale Eels|r。掠夺|cRXD_Loot_Pristine Eels |r
.complete 10037,1 
.mob Shimmerscale Eel
step
#label Eel
.goto Terokkar Forest,44.33,26.31
>>前往塞纳里翁灌丛
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_缚地者塔弗格伦|r
.turnin -9957 >>交任务: |cRXP_FRIENDLY_塞纳里奥树林出事了？|r
.accept 9971 >>接任务: |cRXP_LOOT_树林中的线索|r
.accept 9968 >>接任务: |cRXP_LOOT_奇怪的能量|r
.target Earthbinder Tavgren
step
#optional
#completewith WatchingYou
.goto Terokkar Forest,45.12,21.78,0
>>在地面上抢劫|cRXP_PICK_奇怪的物体|r
.complete 9971,1 
step
#optional
#completewith Object
>>杀死|cRXP_ENEMY_Vicious Teremos|r。掠夺它们的|cRXP_Loot_Samples|r
.complete 9968,2 
.mob Vicious Teromoth
step
#loop
.line Terokkar Forest,44.47,25.69,44.42,24.76,44.31,23.50,44.40,22.97,44.21,22.01,44.53,21.81,45.17,21.89,45.01,22.80,45.43,21.58,45.17,20.81,44.87,21.14,44.36,21.82,43.69,23.11,43.28,23.03,43.44,22.36
.goto Terokkar Forest,44.47,25.69,30,0
.goto Terokkar Forest,44.42,24.76,30,0
.goto Terokkar Forest,44.31,23.50,30,0
.goto Terokkar Forest,44.40,22.97,30,0
.goto Terokkar Forest,44.21,22.01,30,0
.goto Terokkar Forest,44.53,21.81,30,0
.goto Terokkar Forest,45.17,21.89,30,0
.goto Terokkar Forest,45.01,22.80,30,0
.goto Terokkar Forest,45.43,21.58,30,0
.goto Terokkar Forest,45.17,20.81,30,0
.goto Terokkar Forest,44.87,21.14,30,0
.goto Terokkar Forest,44.36,21.82,30,0
.goto Terokkar Forest,43.69,23.11,30,0
.goto Terokkar Forest,43.28,23.03,30,0
.goto Terokkar Forest,43.44,22.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监护者忒洛斯|r
.accept 9951 >>接任务: |cRXP_LOOT_它在盯着你！|r
.unitscan Warden Treelos
step
.groundgoto Terokkar Forest,43.46,22.31,20,0
.goto Terokkar Forest,43.40,22.10
>>杀死塔顶的|cRXP_ENEMY_石脑油|r
.complete 9951,1 
.mob Naphthal'ar
step
#label WatchingYou
#loop
.line Terokkar Forest,44.47,25.69,44.42,24.76,44.31,23.50,44.40,22.97,44.21,22.01,44.53,21.81,45.17,21.89,45.01,22.80,45.43,21.58,45.17,20.81,44.87,21.14,44.36,21.82,43.69,23.11,43.28,23.03,43.44,22.36
.goto Terokkar Forest,44.47,25.69,30,0
.goto Terokkar Forest,44.42,24.76,30,0
.goto Terokkar Forest,44.31,23.50,30,0
.goto Terokkar Forest,44.40,22.97,30,0
.goto Terokkar Forest,44.21,22.01,30,0
.goto Terokkar Forest,44.53,21.81,30,0
.goto Terokkar Forest,45.17,21.89,30,0
.goto Terokkar Forest,45.01,22.80,30,0
.goto Terokkar Forest,45.43,21.58,30,0
.goto Terokkar Forest,45.17,20.81,30,0
.goto Terokkar Forest,44.87,21.14,30,0
.goto Terokkar Forest,44.36,21.82,30,0
.goto Terokkar Forest,43.69,23.11,30,0
.goto Terokkar Forest,43.28,23.03,30,0
.goto Terokkar Forest,43.44,22.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监护者忒洛斯|r
.turnin 9951 >>交任务: |cRXP_FRIENDLY_它在盯着你！|r
.unitscan Warden Treelos
step
#label Object
.goto Terokkar Forest,45.12,21.78
>>在地面上抢劫|cRXP_PICK_奇怪的物体|r
.complete 9971,1 
step
#loop
.line Terokkar Forest,44.29,20.34,46.11,20.95,46.39,24.38,43.77,25.38,44.40,22.84,41.81,22.69,44.29,20.34
.goto Terokkar Forest,44.29,20.34,50,0
.goto Terokkar Forest,46.11,20.95,50,0
.goto Terokkar Forest,46.39,24.38,50,0
.goto Terokkar Forest,43.77,25.38,50,0
.goto Terokkar Forest,44.40,22.84,50,0
.goto Terokkar Forest,41.81,22.69,50,0
.goto Terokkar Forest,44.29,20.34,50,0
>>杀死|cRXP_ENEMY_Vicious Teremos|r。掠夺它们的|cRXP_Loot_Samples|r
.complete 9968,2 
.mob Vicious Teromoth
step
.goto Terokkar Forest,41.85,28.77,50,0
.goto Terokkar Forest,43.77,30.34,50,0
.goto Terokkar Forest,44.07,27.41,50,0
.goto Terokkar Forest,47.16,28.09,50,0
.goto Terokkar Forest,45.81,31.81
>>杀死|cRXP_WARN_neutral|r|cRXP_ENEMY_Teremoths|r。掠夺它们的|cRXD_OOT_Samples|r
.complete 9968,1 
.mob Teromoth
step
.goto Terokkar Forest,44.33,26.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_缚地者塔弗格伦|r
.turnin 9971 >>交任务: |cRXP_FRIENDLY_树林中的线索|r
.turnin 9968 >>交任务: |cRXP_FRIENDLY_奇怪的能量|r
.accept 9978 >>接任务: |cRXP_LOOT_不择手段|r
.target Earthbinder Tavgren
step
#loop
.line Terokkar Forest,37.58,25.83,38.33,26.72,39.17,26.57,40.53,25.45,39.96,24.43,39.11,24.04,39.96,24.43,40.53,25.45,41.44,25.95,42.30,26.62,43.07,26.59,43.92,26.05,45.40,26.56,46.39,26.22,47.18,27.10,48.20,27.25,48.98,27.96,49.66,28.21,50.48,29.26,51.14,29.30
.goto Terokkar Forest,37.58,25.83,50,0
.goto Terokkar Forest,38.33,26.72,50,0
.goto Terokkar Forest,39.17,26.57,50,0
.goto Terokkar Forest,40.53,25.45,50,0
.goto Terokkar Forest,39.96,24.43,50,0
.goto Terokkar Forest,39.11,24.04,50,0
.goto Terokkar Forest,39.96,24.43,50,0
.goto Terokkar Forest,40.53,25.45,50,0
.goto Terokkar Forest,41.44,25.95,50,0
.goto Terokkar Forest,42.30,26.62,50,0
.goto Terokkar Forest,43.07,26.59,50,0
.goto Terokkar Forest,43.92,26.05,50,0
.goto Terokkar Forest,45.40,26.56,50,0
.goto Terokkar Forest,46.39,26.22,50,0
.goto Terokkar Forest,47.18,27.10,50,0
.goto Terokkar Forest,48.20,27.25,50,0
.goto Terokkar Forest,48.98,27.96,50,0
.goto Terokkar Forest,49.66,28.21,50,0
.goto Terokkar Forest,50.48,29.26,50,0
.goto Terokkar Forest,51.14,29.30,50,0
>>沿着Shatrath和Tuurem之间的路走，直到找到|cRXP_ENEMY_Empoor|r。与他交谈，然后击败他
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃博尔|r
.turnin 9978 >>交任务: |cRXP_FRIENDLY_不择手段|r
.accept 9979 >>接任务: |cRXP_LOOT_星界商人拉斯莱|r
.unitscan Empoor
.skipgossip
step
#sticky
.abandon 10847 >>放弃斯凯蒂斯的眼睛
>>拥有这个任务将阻止你以后接受一个重要的任务
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝莉比|r
.target Innkeeper Biribi
.goto 1952/530,4020.19995,-2921.10010
.home >>将您的炉石设置为Allerian据点
step
.goto 1952/530,3962.40015,-2952.19995
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_山德|r
.target Thander
.accept 9986 >>接任务: |cRXP_LOOT_教训鸦人|r
step
>>单击|cRXP_FRIENDLY_Wanted海报|r
.goto 1952/530,3971.90015,-2968.10010
.accept 10033 >>接任务: |cRXP_LOOT_通缉：白骨秃鹫！|r
step
.goto 1952/530,3982.69995,-2995.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛瑟蕾丝|r
.target Ros'eleth
.accept 9992 >>接任务: |cRXP_LOOT_奥雷巴种子|r
step
.goto 1952/530,3978.69995,-3007.90015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加维·砂锤中尉|r
.target Lieutenant Gravelhammer
.accept 10038 >>接任务: |cRXP_LOOT_援助列兵维克斯|r
.accept 10869 >>接任务: |cRXP_LOOT_剿灭鸦人|r
step
.goto 1952/530,3963.50000,-3015.60010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德娜·肯尼迪|r
.target Lady Dena Kennedy
.accept 10863 >>接任务: |cRXP_LOOT_鸦人的秘密|r
step
.goto 1952/530,3935.60010,-2971.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_波尔泰姆|r
.target Bertelm
.accept 9998 >>接任务: |cRXP_LOOT_野蛮的邻居|r
step
#questguide << !tbc
.goto 1952/530,3936.30005,-2971.60010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_波尔泰姆|r
.target Bertelm
.accept 10016 >>接任务: |cRXP_LOOT_森林座狼的尾巴|r
step
.goto 1952/530,3923.90015,-2928.69995
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安达尔|r
.target Andarl
.turnin -9793 >>交任务: |cRXP_FRIENDLY_图雷姆的命运|r
.accept 10026 >>接任务: |cRXP_LOOT_魔法扰动|r
step << Mage
.goto Terokkar Forest,59.44,55.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伏尔南·天啸|r
.fp Allerian Stronghold >>获取Allerian据点飞行路线
.target Furnan Skysoar
step << !Mage
#completewith next
.goto Terokkar Forest,59.44,55.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伏尔南·天啸|r
.fly Shattrath >>飞往沙塔斯城
.target Furnan Skysoar
step << Mage
#completewith next
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
step
#aldor
#completewith next
.goto Shattrath City,41.73,38.60,30 >>乘电梯到阿尔多山口
.skill riding,225,1
step
#aldor
#label Lathrai1
.goto 1955/530,5821.60010,-1732.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊沙娜|r
.target Ishanah
.accept 10021 >>接任务: |cRXP_LOOT_重现圣光|r
.turnin 10554 >>交任务: |cRXP_FRIENDLY_伊沙娜|r
step
.goto 1955/530,5444.4,-1657.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_救赎者瑞拉克|r
.target Rilak the Redeemed
.turnin 10863 >>交任务: |cRXP_FRIENDLY_鸦人的秘密|r
.accept 10847 >>接任务: |cRXP_LOOT_斯克提斯之眼|r
step
#sticky
#label fishing1end
.goto 1955/530,5300.0,-1610.6,0,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑟|r
.target Seth
.turnin 10037 >>交任务: |cRXP_FRIENDLY_宁可去钓鱼|r
step
#aldor
.goto 1955/530,5295.70020,-1614.40002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎妮尔|r
.target Sha'nir
.accept 10020 >>接任务: |cRXP_LOOT_萨恩莉亚的解药|r
step
#requires fishing1end
.goto 1955/530,5190.6001,-1742.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_星界商人拉斯莱|r
.target Wind Trader Lathrai
.turnin 9979 >>交任务: |cRXP_FRIENDLY_星界商人拉斯莱|r
.accept 10112 >>接任务: |cRXP_LOOT_私人事务|r
step
#scryer
#label Lathrai1
>>前往: |cRXP_PICK_沙塔斯城|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_救赎者瑞拉克|r, |cRXP_FRIENDLY_塞瑟|r, |cRXP_FRIENDLY_星界商人拉斯莱|r
.turnin 10863 >>交任务: |cRXP_FRIENDLY_鸦人的秘密|r
.accept 10847 >>接任务: |cRXP_LOOT_斯克提斯之眼|r
.goto Shattrath City,52.54,21.03
.turnin 10037 >>交任务: |cRXP_FRIENDLY_宁可去钓鱼|r
.goto Shattrath City,63.94,15.52
.turnin 9979 >>交任务: |cRXP_FRIENDLY_星界商人拉斯莱|r
.accept 10112 >>接任务: |cRXP_LOOT_私人事务|r
.goto Shattrath City,72.23,30.72
.target Rilak the Redeemed
.target Seth
.target Wind Trader Lathrai
step << skip
.accept 10024 >>接任务: |cRXP_LOOT_沃雷塔尔的预言|r
step
#questguide << !tbc
#aldor
#completewith Altar
>>杀死|cRXP_ENEMY_Dampscale Basilisk|r。掠夺它们的|cRXP_Loot_Eyes |r
.complete 10024,1 
.mob Dampscale Basilisk
step << skip
#scryer
#completewith Ashkaz
>>杀死恐惧方潜伏者。抢他们的袋子
.complete 10017,1 
.mob Dreadfang Lurker
step
#questguide << !tbc
#optional
#completewith next
>>杀死|cRXP_ENEMY_Timber Worgs|r。掠夺它们的|cRXX_Loot_TAIL|r
.complete 10016,1 
.mob Timber Worg
step
#optional
#completewith Talonite
>>将|cRXP_PICK_Olemba Seeds |r（浅蓝色球果）在整个Terokkar的地面上播种
.complete 9992,1 
step
#label Altar
#aldor
.goto Terokkar Forest,48.10,14.51
>>单击|cRXP_PICK_Western祭坛|r
.complete 10021,3 
step
#optional
#completewith Talonite
>>杀死|cRXP_ENEMY_Arakkoa |r。掠夺他们的|cRXX_Loot_Features|r
.collect 25719,30,10917,1 
step
#optional
#completewith Shienor
>>杀死|cRXP_ENEMY_Shienor Talonites|r和|cRXP_ENEMY_Sorceres|r
.complete 10869,1 
.mob +Shienor Talonite
.complete 10869,2 
.mob +Shienor Sorcerer
step
#aldor
.goto Terokkar Forest,50.67,16.54
>>单击|cRXP_PICK_Northern祭坛|r
.complete 10021,1 
step
#optional
.groundgoto Terokkar Forest,49.79,16.64,30,0
.goto Terokkar Forest,49.11,16.89
>>爬上楼梯到树平台。杀死|cRXP_ENEMY_Ashkaz|r
.complete 9986,1 
.skill riding,225,1
.unitscan Ashkaz
step
#label Ashkaz
.goto Terokkar Forest,49.11,16.89
>>杀死树平台上的|cRXP_ENEMY_Ashkaz|r
.complete 9986,1 
.skill riding,<225,1
.unitscan Ashkaz
step
#optional
.goto Terokkar Forest,50.12,19.37
>>过桥。在另一个树平台上掠夺Veil Reskk|r的|cRXP_PICK_Eye（紫眼）
.complete 10847,1 
.skill riding,225,1
step
.goto Terokkar Forest,50.12,19.37
>>在另一个树平台上掠夺Veil Reskk|r的|cRXP_PICK_Eye（紫眼）
.complete 10847,1 
.skill riding,<225,1
step
#aldor
.goto Terokkar Forest,49.25,20.32
>>单击|cRXP_PICK_Eastern祭坛|r
.complete 10021,2 
step
#optional
.goto Terokkar Forest,57.89,23.15
>>飞到树上的树平台上。掠夺面纱的|cRXP_PICK_Eye Reskk|r（紫色眼睛）
.complete 10847,2 
.skill riding,<225,1
step
.goto Terokkar Forest,59.42,23.50
>>杀死树下建筑内的|cRXP_ENEMY_Ayit|r
.complete 9986,2 
.unitscan Ayit
step
#label Shienor
.groundgoto Terokkar Forest,59.74,25.11,20,0
.goto Terokkar Forest,57.89,23.15
>>走树里面的楼梯上去。过桥。在另一个树平台上掠夺Veil Reskk|r的|cRXP_PICK_Eye（紫眼）
.complete 10847,2 
.skill riding,225,1
step
#label Talonite
#loop
.line Terokkar Forest,58.62,22.03,57.27,24.31,56.23,25.41,58.02,27.19,59.10,27.49,60.08,26.83,60.52,25.96,60.37,23.41,59.35,24.60,58.32,24.76,58.62,22.03
.goto Terokkar Forest,58.62,22.03,50,0
.goto Terokkar Forest,57.27,24.31,50,0
.goto Terokkar Forest,56.23,25.41,50,0
.goto Terokkar Forest,58.02,27.19,50,0
.goto Terokkar Forest,59.10,27.49,50,0
.goto Terokkar Forest,60.08,26.83,50,0
.goto Terokkar Forest,60.52,25.96,50,0
.goto Terokkar Forest,60.37,23.41,50,0
.goto Terokkar Forest,59.35,24.60,50,0
.goto Terokkar Forest,58.32,24.76,50,0
.goto Terokkar Forest,58.62,22.03,50,0
>>杀死|cRXP_ENEMY_Shienor Talonites|r和|cRXP_ENEMY_Sorceres|r
.complete 10869,1 
.mob +Shienor Talonite
.complete 10869,2 
.mob +Shienor Sorcerer
step
#aldor
#loop
.goto Terokkar Forest,60.77,23.14,50,0
.goto Terokkar Forest,60.97,24.34,50,0
.goto Terokkar Forest,61.46,25.43,50,0
.goto Terokkar Forest,62.10,27.12,50,0
.goto Terokkar Forest,62.77,27.68,50,0
.goto Terokkar Forest,63.32,28.38,50,0
.goto Terokkar Forest,63.72,29.37,50,0
.goto Terokkar Forest,64.54,30.01,50,0
.goto Terokkar Forest,66.31,30.54,50,0
.goto Terokkar Forest,67.93,30.85,50,0
.goto Terokkar Forest,68.35,31.31,50,0
.goto Terokkar Forest,69.16,31.22,50,0
.goto Terokkar Forest,69.63,30.88,50,0
.goto Terokkar Forest,70.35,29.82,50,0
.goto Terokkar Forest,71.26,28.70,50,0
.line Terokkar Forest,71.26,28.70,70.35,29.82,69.63,30.88,69.16,31.22,68.35,31.31,67.93,30.85,66.31,30.54,64.54,30.01,63.72,29.37,63.32,28.38,62.77,27.68,62.10,27.12,61.46,25.43,60.97,24.34,60.77,23.14
>>杀死|cRXP_ENEMY_Stonegazer|r。掠夺他的|cRXX_Loot_Blood|r。他四处巡逻。
>>这项任务很困难。如果需要，为他找一个小组。如果你找不到一个团队或一个人，请跳过这一步。 << tbc
.complete 10020,1 
.unitscan Stonegazer
step << !Shaman !Mage
#questguide << !tbc
#completewith next
>>杀死|cRXP_ENEMY_Timber Worgs|r。掠夺它们的|cRXX_Loot_TAIL|r
>>杀死|cRXP_ENEMY_Warp Stalker|r
>>将|cRXP_PICK_Olemba Seeds |r（浅蓝色球果）在整个Terokkar的地面上播种
.complete 10016,1 
.complete 10026,1 
.complete 9992,1 
.mob Timber Worg
.mob Timber Worg Alpha
.mob Warp Stalker
step << !Shaman !Mage
#completewith eyet1
>>将|cRXP_PICK_Olemba Seeds |r（浅蓝色球果）在整个Terokkar的地面上播种
>>杀死|cRXP_ENEMY_Warp Stalker|r
.complete 9992,1 
.complete 10026,1 
.mob Warp Stalker
.subzoneskip 3684
.zoneskip Shattrath City
step << Shaman
#completewith next
.hs >>艾利安山寨之炉
step << !Mage
.goto Terokkar Forest,59.44,55.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伏尔南·天啸|r
.fly Shattrath >>飞往沙塔斯城
.target Furnan Skysoar
.isOnQuest 10847
step << Mage
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
.isOnQuest 10847
step
#label eyet1
.goto Shattrath City,52.54,21.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_救赎者瑞拉克|r
.turnin 10847 >>交任务: |cRXP_FRIENDLY_斯克提斯之眼|r
.accept 10849 >>接任务: |cRXP_LOOT_寻找基尔利克|r
.target Rilak the Redeemed
step
#aldor
>>返回沙特拉斯
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎妮尔|r
.turnin 10020 >>交任务: |cRXP_FRIENDLY_萨恩莉亚的解药|r
.goto Shattrath City,64.47,15.13
.isQuestComplete 10020
.target Sha'nir
step
#sticky
#label olembaseeds1
#loop
.line Terokkar Forest,37.42,33.69,38.70,34.70,39.73,34.95,40.88,34.26,41.58,34.11,43.12,35.06,43.31,35.75,44.75,34.81,44.27,33.07,44.96,31.18,44.74,29.80,37.97,31.29,37.42,33.69
.goto Terokkar Forest,37.42,33.69,20,0
.goto Terokkar Forest,38.70,34.70,20,0
.goto Terokkar Forest,39.73,34.95,20,0
.goto Terokkar Forest,40.88,34.26,20,0
.goto Terokkar Forest,41.58,34.11,20,0
.goto Terokkar Forest,43.12,35.06,20,0
.goto Terokkar Forest,43.31,35.75,20,0
.goto Terokkar Forest,44.75,34.81,20,0
.goto Terokkar Forest,44.27,33.07,20,0
.goto Terokkar Forest,44.96,31.18,20,0
.goto Terokkar Forest,44.74,29.80,20,0
.goto Terokkar Forest,37.97,31.29,20,0
.goto Terokkar Forest,37.42,33.69,20,0
>>将|cRXP_PICK_Olemba Seeds |r（浅蓝色球果）在整个Terokkar的地面上播种
.complete 9992,1 
step
#questguide << !tbc
#loop
.line Terokkar Forest,37.42,33.69,38.70,34.70,39.73,34.95,40.88,34.26,41.58,34.11,43.12,35.06,43.31,35.75,44.75,34.81,44.27,33.07,44.96,31.18,44.74,29.80,37.97,31.29,37.42,33.69
.goto Terokkar Forest,37.42,33.69,40,0
.goto Terokkar Forest,38.70,34.70,40,0
.goto Terokkar Forest,39.73,34.95,40,0
.goto Terokkar Forest,40.88,34.26,40,0
.goto Terokkar Forest,41.58,34.11,40,0
.goto Terokkar Forest,43.12,35.06,40,0
.goto Terokkar Forest,43.31,35.75,40,0
.goto Terokkar Forest,44.75,34.81,40,0
.goto Terokkar Forest,44.27,33.07,40,0
.goto Terokkar Forest,44.96,31.18,40,0
.goto Terokkar Forest,44.74,29.80,40,0
.goto Terokkar Forest,37.97,31.29,40,0
.goto Terokkar Forest,37.42,33.69,40,0
>>杀死|cRXP_ENEMY_Timber Worgs|r。掠夺它们的|cRXX_Loot_TAIL|r
.complete 10016,1 
.mob Timber Worg
step
#requires olembaseeds1
.goto Terokkar Forest,40.46,36.16
>>|cRXP_WARN_在与|r|cRXP_RIENDLY_Private Weeks通话之前，请确保先卸载|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_列兵维克斯|r
.turnin 10038 >>交任务: |cRXP_FRIENDLY_援助列兵维克斯|r
.accept 10040 >>接任务: |cRXP_LOOT_他们是谁？|r
.target Private Weeks
step << skip
#completewith next
.goto Terokkar Forest,40.46,36.16
.cast 32756 >>下马时与几周交谈，要求伪装
.skipgossip 18715,1
.target Private Weeks
step
.goto Terokkar Forest,40.46,36.16,0
>>对话: |cRXP_FRIENDLY_列兵维克斯|r
>>进入Grangol'var.|cRXP_WARN_DO NOT mount or cast any Spence|r。与建筑内的|cRXP_RIENDLY_Advisor|r、池塘附近的|cRX _FRIENDLY_Initate|r和在外面巡逻的|cRXP_RIENDLY_Laborer|r交谈
>>小心，因为|cRXP_ENEMY_Shadowy Hunters|r会破坏你的伪装！
#loop
.line Terokkar Forest,39.86,42.20,39.25,41.69,39.02,40.97,38.60,40.67,38.09,40.74,38.04,41.12,39.47,40.77,40.02,40.52,40.59,40.49,41.00,40.66
.complete 10040,3 
.goto Terokkar Forest,39.90,39.50,30,0
.goto Terokkar Forest,40.32,39.04
.mob +Shadowy Advisor
.complete 10040,1 
.goto Terokkar Forest,39.03,39.69
.mob +Shadowy Initiate
.complete 10040,2 
.mob +Shadowy Laborer
.goto Terokkar Forest,39.86,42.20,40,0
.goto Terokkar Forest,39.25,41.69,40,0
.goto Terokkar Forest,39.02,40.97,40,0
.goto Terokkar Forest,38.60,40.67,40,0
.goto Terokkar Forest,38.09,40.74,40,0
.goto Terokkar Forest,38.04,41.12,40,0
.goto Terokkar Forest,39.47,40.77,40,0
.goto Terokkar Forest,40.02,40.52,40,0
.goto Terokkar Forest,40.59,40.49,40,0
.goto Terokkar Forest,41.00,40.66,40,0
.skipgossip
.skipgossip 18715,1
.target Private Weeks
.target Shadowy Hunter
step
.goto Terokkar Forest,40.46,36.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_列兵维克斯|r
.turnin 10040 >>交任务: |cRXP_FRIENDLY_他们是谁？|r
.accept 10042 >>接任务: |cRXP_LOOT_暗影议会必须死！|r
.target Private Weeks
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Shadowy执行者|r和|cRXP_ENEMY_Summoners|r
.complete 10042,1 
.mob +Shadowy Executioner
.complete 10042,2 
.mob +Shadowy Summoner
step
.groundgoto Terokkar Forest,39.90,39.50,30,0
.goto Terokkar Forest,40.37,39.15
>>杀死|cRXP_ENEMY_Shadowmaster建筑内的格里夫|r
.complete 10042,3 
.unitscan Shadowmaster Grieve
step
#loop
.line Terokkar Forest,41.22,40.84,40.77,42.98,38.88,41.70,36.64,40.89,38.19,39.12,39.25,38.45,39.43,40.45,41.22,40.84
.goto Terokkar Forest,41.22,40.84,50,0
.goto Terokkar Forest,40.77,42.98,50,0
.goto Terokkar Forest,38.88,41.70,50,0
.goto Terokkar Forest,36.64,40.89,50,0
.goto Terokkar Forest,38.19,39.12,50,0
.goto Terokkar Forest,39.25,38.45,50,0
.goto Terokkar Forest,39.43,40.45,50,0
.goto Terokkar Forest,41.22,40.84,50,0
>>杀死|cRXP_ENEMY_Shadowy执行者|r和|cRXP_ENEMY_Summoners|r
.complete 10042,1 
.mob +Shadowy Executioner
.complete 10042,2 
.mob +Shadowy Summoner
step
#optional
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克达|r
.accept 10878 >>接任务: |cRXP_LOOT_黑暗前夕|r
.target Mekeda
step
#label Caravan
>>前往难民大篷车
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉库泰|r, |cRXP_FRIENDLY_觉醒者基尔利克|r, |cRXP_FRIENDLY_伊森|r
.accept 10896 >>接任务: |cRXP_LOOT_被感染的保卫者|r
.target +Lakotae
.goto Terokkar Forest,37.86,51.69
.turnin 10849 >>交任务: |cRXP_FRIENDLY_寻找基尔利克|r
.accept 10839 >>接任务: |cRXP_LOOT_基斯鸦巢：泰罗克黑石|r
.target +Kirrik the Awakened
.goto Terokkar Forest,37.56,51.50,30,0
.goto Terokkar Forest,37.09,50.69
.accept 10852 >>接任务: |cRXP_LOOT_失踪的伙伴|r
.target +Ethan
.goto Terokkar Forest,37.74,51.34
step
.goto Terokkar Forest,37.73,51.80,30,0
.goto Terokkar Forest,37.28,50.99,30,0
.goto Terokkar Forest,37.23,50.32,30,0
.goto Terokkar Forest,37.51,49.98,30,0
.goto Terokkar Forest,37.86,50.06,30,0
.goto Terokkar Forest,38.38,51.14,30,0
.goto Terokkar Forest,38.20,51.74
.line Terokkar Forest,38.20,51.74,38.38,51.14,37.86,50.06,37.51,49.98,37.23,50.32,37.28,50.99,37.73,51.80,38.20,51.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克达|r
.accept 10878 >>接任务: |cRXP_LOOT_黑暗前夕|r
.target Mekeda
step
#optional
#completewith vskith
>>杀死|cRXP_ENEMY_Bonelashers|r
.complete 10033,1 
.mob *Bonelasher
step
#optional
#completewith vskith
>>杀死|cRXP_ENEMY_Rotting Forest Ragers|r和|cRXD_ENEMY_Infested Root Walkers |r到|cRXP_WARN_spawn|r|cRXX_ENEMY_Wood Mites|r。杀死它们
.complete 10896,1,12 
.mob Wood Mite
.mob Rotting Forest-Rager
.mob Infested Root-Walker
step
#label vskith
.goto Terokkar Forest,30.82,42.02,110 >>Travel to Veil Skith
.subzoneskip 3677
.isOnQuest 10839
step
#optional
#completewith Children
>>杀死|cRXP_ENEMY_Arakkoa |r。掠夺他们的|cRXX_Loot_Features|r
.collect 25719,30,10917,1 
.mob Skithian Windripper
.mob Skithian Dreadhawk
step
#optional
#completewith Urdak
>>杀死|cRXP_ENEMY_Skithian|r。掠夺他们的|cRXD_Loot_Prison Key|r和|cRXT_Loot_Stolen Goods|r
>>使用树平台上笼子上的钥匙和面纱滑雪场地面上的钥匙
.collect 31655,12,10852,1,-1
.complete 10852,1 
.complete 10112,1 
.mob Skithian Windripper
.mob Skithian Dreadhawk
step
.goto Terokkar Forest,30.82,42.02
.use 31610 >>把你袋子里的净化棒装在黑石号上
.complete 10839,1 
.cast 38736
.timer 10,Channel the Rod RP
step
#optional
.goto Terokkar Forest,31.41,42.55,12,0
.goto Terokkar Forest,31.49,42.00,12,0
.goto Terokkar Forest,31.86,42.31
>>杀死树平台上的|cRXP_ENEMY_Urdak|r
.complete 9986,3 
.skill riding,<225,1
.unitscan Urdak
step
#label Urdak
.groundgoto Terokkar Forest,29.97,43.06,20,0
.groundgoto Terokkar Forest,30.80,43.50,20,0
.goto Terokkar Forest,31.41,42.55,12,0
.goto Terokkar Forest,31.49,42.00,12,0
.goto Terokkar Forest,31.86,42.31
>>上楼梯，然后过桥。杀死树平台上的|cRXP_ENEMY_Urdak|r
.complete 9986,3 
.skill riding,225,1
.unitscan Urdak
step
#label Children
#loop
.line Terokkar Forest,31.13,40.66,29.61,42.92,30.61,43.88,31.46,42.38,31.13,40.66
.goto Terokkar Forest,31.13,40.66,40,0
.goto Terokkar Forest,29.61,42.92,40,0
.goto Terokkar Forest,30.61,43.88,40,0
.goto Terokkar Forest,31.46,42.38,40,0
.goto Terokkar Forest,31.13,40.66,40,0
>>杀死|cRXP_ENEMY_Skithian|r。掠夺他们的|cRXD_Loot_Prison Key|r和|cRXT_Loot_Stolen Goods|r
>>使用树平台上笼子上的钥匙和面纱滑雪场地面上的钥匙
.collect 31655,12,10852,1,-1
.complete 10852,1 
.complete 10112,1 
.mob Skithian Windripper
.mob Skithian Dreadhawk
step << !tbc
#loop
.line Terokkar Forest,31.13,40.66,29.61,42.92,30.61,43.88,31.46,42.38,31.13,40.66
.goto Terokkar Forest,31.13,40.66,40,0
.goto Terokkar Forest,29.61,42.92,40,0
.goto Terokkar Forest,30.61,43.88,40,0
.goto Terokkar Forest,31.46,42.38,40,0
.goto Terokkar Forest,31.13,40.66,40,0
>>杀死|cRXP_ENEMY_Arakkoa |r。掠夺他们的|cRXX_Loot_Features|r
.collect 25719,30,10917,1 
.mob Skithian Windripper
.mob Skithian Dreadhawk
step
#loop
.goto Terokkar Forest,34.16,49.24,50,0
.goto Terokkar Forest,35.02,47.93,50,0
.goto Terokkar Forest,38.49,46.89,50,0
.goto Terokkar Forest,39.92,47.76,50,0
.goto Terokkar Forest,40.75,49.86,50,0
.goto Terokkar Forest,40.75,49.86,0
>>杀死|cRXP_ENEMY_Rotting Forest Ragers|r和|cRXD_ENEMY_Infested Root Walkers |r到|cRXP_WARN_spawn|r|cRXX_ENEMY_Wood Mites|r。杀死它们
.complete 10896,1 
.mob Wood Mite
.mob Rotting Forest-Rager
.mob Infested Root-Walker
step
.goto 1952/530,5064.39990,-2835.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_觉醒者基尔利克|r
.target Kirrik the Awakened
.turnin 10839 >>交任务: |cRXP_FRIENDLY_基斯鸦巢：泰罗克黑石|r
.accept 10848 >>接任务: |cRXP_LOOT_哈兹鸦巢：邪恶的幽灵|r
step
.goto 1952/530,5046.89990,-2849.19995
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊森|r
.target Ethan
.turnin 10852 >>交任务: |cRXP_FRIENDLY_失踪的伙伴|r
step
.goto 1952/530,5040.80029,-2860.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉库泰|r
.target Lakotae
.turnin 10896 >>交任务: |cRXP_FRIENDLY_被感染的保卫者|r
step
.goto 1952/530,5060.80029,-2827.80005
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶祭司奥戈鲁|r
.target High Priest Orglum
.accept 10840 >>接任务: |cRXP_LOOT_圣光之墓|r
.accept 10842 >>接任务: |cRXP_LOOT_复仇的灵魂|r << !TBC
step
#optional
#completewith lootorder1
>>杀死|cRXP_ENEMY_Bonelashers|r
.complete 10033,1 
.mob *Bonelasher
step
#aldor
#completewith Orders
>>杀死|cRXP_ENEMY_Cabal|r兽人。掠夺他们的|cRXP_Loot_Marks of Kil'jaeden|r，保存他们稍后进行任务
.collect 29425,10,10325,1 
step
#label lootorder1
#loop
.line Terokkar Forest,40.96,56.31,41.55,58.82,39.66,60.28,38.99,58.43,37.71,58.77,37.72,55.93,39.28,55.01,40.96,56.31
.goto Terokkar Forest,40.96,56.31,50,0
.goto Terokkar Forest,41.55,58.82,50,0
.goto Terokkar Forest,39.66,60.28,50,0
.goto Terokkar Forest,38.99,58.43,50,0
.goto Terokkar Forest,37.71,58.77,50,0
.goto Terokkar Forest,37.72,55.93,50,0
.goto Terokkar Forest,39.28,55.01,50,0
.goto Terokkar Forest,40.96,56.31,50,0
.use 31707 >>杀死|cRXP_ENEMY_Cabal|r。掠夺它们以获取|cRXP_Loot_Orders|r。点击您包中的|T134332:0|t[Cabal Orders]
.collect 31707,1,10880 
.accept 10880 >>接任务: |cRXP_LOOT_秘教的命令|r
.mob Cabal Tomb-Raider
.mob Cabal Spell-weaver
.mob Cabal Skirmisher
.mob Cabal Initiate
.mob Cabal Abjurist
step
#label Orders
#loop
.line Terokkar Forest,40.96,56.31,41.55,58.82,39.66,60.28,38.99,58.43,37.71,58.77,37.72,55.93,39.28,55.01,40.96,56.31
.goto Terokkar Forest,40.96,56.31,50,0
.goto Terokkar Forest,41.55,58.82,50,0
.goto Terokkar Forest,39.66,60.28,50,0
.goto Terokkar Forest,38.99,58.43,50,0
.goto Terokkar Forest,37.71,58.77,50,0
.goto Terokkar Forest,37.72,55.93,50,0
.goto Terokkar Forest,39.28,55.01,50,0
.goto Terokkar Forest,40.96,56.31,50,0
>>杀死|cRXP_ENEMY_Cabal Skinshers|r、|cRXD_ENEMY_Spell-weavers|r和|cRXP_ENEMY_Initiates|r
.complete 10878,1 
.mob +Cabal Skirmisher
.complete 10878,2 
.mob +Cabal Spell-weaver
.complete 10878,3 
.mob +Cabal Initiate
step
.goto Terokkar Forest,37.73,51.80,30,0
.goto Terokkar Forest,37.28,50.99,30,0
.goto Terokkar Forest,37.23,50.32,30,0
.goto Terokkar Forest,37.51,49.98,30,0
.goto Terokkar Forest,37.86,50.06,30,0
.goto Terokkar Forest,38.38,51.14,30,0
.goto Terokkar Forest,38.20,51.74
.line Terokkar Forest,38.20,51.74,38.38,51.14,37.86,50.06,37.51,49.98,37.23,50.32,37.28,50.99,37.73,51.80,38.20,51.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克达|r
.turnin 10878 >>交任务: |cRXP_FRIENDLY_黑暗前夕|r
.turnin 10880 >>交任务: |cRXP_FRIENDLY_秘教的命令|r
.accept 10881 >>接任务: |cRXP_LOOT_暗影墓穴|r
.target Mekeda
step
.goto Terokkar Forest,30.68,50.76,50,0
.goto Terokkar Forest,27.41,51.45,50,0
.goto Terokkar Forest,25.98,57.68,50,0
.goto Terokkar Forest,30.68,50.76
>>杀死|cRXP_ENEMY_死亡之爪精灵|r、|cRXX_ENEMY_尖叫精灵|r和|cRXP_ENEMY_Spirit Ravens|r
.complete 10848,1 
.mob +Deathtalon Spirit
.complete 10848,2 
.mob +Screeching Spirit
.complete 10848,3 
.mob +Spirit Raven
step
#optional
#aldor
#completewith Akuno
>>杀死|cRXP_ENEMY_Cabal|r兽人。掠夺他们的|cRXP_Loot_Marks of Kil'jaeden|r，保存他们稍后进行任务
.collect 29425,10,10325,1 
step
#completewith next
.goto Terokkar Forest,31.07,52.67,20 >>进入影墓
step
>>在古墓内，掠夺装有|cRXP_PICK_Gavel|r、|cRXP_PICK_Drape|r和|cRX_PICK_Scroll|r的箱子
.complete 10881,2 
.goto Terokkar Forest,29.67,51.69
.complete 10881,1 
.goto Terokkar Forest,32.09,51.19
.complete 10881,3 
.goto Terokkar Forest,31.16,46.69
step
.goto Terokkar Forest,30.61,49.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿库诺|r
.accept 10887 >>接任务: |cRXP_LOOT_逃离墓穴|r
.target Akuno
step
#label Akuno
.goto Terokkar Forest,33.77,51.61
>>护送|cRXP_FRIENDLY_Akuno|r走出坟墓。当你到达外面时，你会在主连接室被两个|cRXP_ENEMY_Orcs|r伏击，并被两个| cRXP__ENEMY_Orcs |r伏击。
.complete 10887,1 
.target Akuno
step
#aldor
.goto Terokkar Forest,31.16,46.69
>>杀死古墓内的|cRXP_ENEMY_Cabal|r。掠夺他们的|cRXP_Loot_Kil'jaeden|r标记
.collect 29425,10,10325,1 
.mob Cabal Tomb-Raider
.mob Cabal Spell-weaver
.mob Cabal Skirmisher
.mob Cabal Initiate
.mob Cabal Abjurist
step << !TBC
#completewith next
>>杀死|cRXP_ENEMY_Bonelashers|r
.complete 10033,1 
.mob Bonelasher
step << !TBC
#completewith Draenei
.goto Terokkar Forest,47.00,55.14,20 >>进入灯光之墓
step << !TBC
#optional
#completewith next
>>杀死|cRXP_ENEMY_Ethereal Nethermancers|r和|cRXX_ENEMY_Ethereal Plunders|r
.complete 10840,1 
.mob +Ethereal Nethermancer
.complete 10840,2 
.mob +Ethereal Plunderer
step << !TBC
#label Draenei
.goto Terokkar Forest,47.76,52.87,40,0
.goto Terokkar Forest,47.72,56.96,40,0
.goto Terokkar Forest,50.94,54.75,40,0
.goto Terokkar Forest,47.76,52.87,40,0
.goto Terokkar Forest,47.72,56.96,40,0
.goto Terokkar Forest,50.94,54.75
>>杀死光明之墓内的|cRXP_ENEMY_Vengeful Draenei|r
.complete 10842,1 
.isOnQuest 10842
.mob Vengeful Draenei
step << !TBC
.goto Terokkar Forest,47.79,56.55,40,0
.goto Terokkar Forest,47.62,53.58,40,0
.goto Terokkar Forest,46.03,54.26,40,0
.goto Terokkar Forest,46.34,56.51,40,0
.goto Terokkar Forest,47.72,56.96,15,0
.goto Terokkar Forest,47.76,52.87,40,0
.goto Terokkar Forest,47.72,56.96,40,0
.goto Terokkar Forest,50.94,54.75,40,0
.goto Terokkar Forest,46.34,56.51
>>杀死|cRXP_ENEMY_Ethereal Nethermancers|r和|cRXX_ENEMY_etherel Plunders|r。如果需要杀死更多，请进入光明之墓
.complete 10840,1 
.mob +Ethereal Nethermancer
.complete 10840,2 
.mob +Ethereal Plunderer
step
.goto Terokkar Forest,43.86,49.67,60,0
.goto Terokkar Forest,42.76,53.31,60,0
.goto Terokkar Forest,42.11,50.31,60,0
.goto Terokkar Forest,39.59,50.22,60,0
.goto Terokkar Forest,39.01,53.40,60,0
.goto Terokkar Forest,42.76,53.31
>>杀死|cRXP_ENEMY_Bonelashers|r
.complete 10033,1 
.mob Bonelasher
step
#optional
#completewith next
.line Terokkar Forest,38.20,51.74,38.38,51.14,37.86,50.06,37.51,49.98,37.23,50.32,37.28,50.99,37.73,51.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克达|r
.turnin 10881 >>交任务: |cRXP_FRIENDLY_暗影墓穴|r
.turnin 10887 >>交任务: |cRXP_FRIENDLY_逃离墓穴|r
.target Mekeda
step
#questguide << !tbc
>>返回难民大篷车
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_觉醒者基尔利克|r
.goto Terokkar Forest,37.56,51.50,30,0
.goto Terokkar Forest,37.09,50.69
.turnin 10848 >>交任务: |cRXP_FRIENDLY_哈兹鸦巢：邪恶的幽灵|r
.accept 10861 >>接任务: |cRXP_WARN_雷希鸦巢：先发制人|r
.target Kirrik the Awakened
step
>>返回难民大篷车
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_觉醒者基尔利克|r
.goto Terokkar Forest,37.56,51.50,30,0
.goto Terokkar Forest,37.09,50.69
.turnin 10848 >>交任务: |cRXP_FRIENDLY_哈兹鸦巢：邪恶的幽灵|r

.target Kirrik the Awakened
step << !TBC
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶祭司奥戈鲁|r
.goto Terokkar Forest,37.45,50.76
.turnin 10840 >>交任务: |cRXP_FRIENDLY_圣光之墓|r
.turnin 10842 >>交任务: |cRXP_FRIENDLY_复仇的灵魂|r
.target High Priest Orglum
step
.goto Terokkar Forest,37.73,51.80,30,0
.goto Terokkar Forest,37.28,50.99,30,0
.goto Terokkar Forest,37.23,50.32,30,0
.goto Terokkar Forest,37.51,49.98,30,0
.goto Terokkar Forest,37.86,50.06,30,0
.goto Terokkar Forest,38.38,51.14,30,0
.goto Terokkar Forest,38.20,51.74
.line Terokkar Forest,38.20,51.74,38.38,51.14,37.86,50.06,37.51,49.98,37.23,50.32,37.28,50.99,37.73,51.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克达|r
.turnin 10881 >>交任务: |cRXP_FRIENDLY_暗影墓穴|r
.turnin 10887 >>交任务: |cRXP_FRIENDLY_逃离墓穴|r
.target Mekeda
step << Shaman
#completewith next
.hs >>艾利安山寨之炉
step
.goto 1952/530,3982.80005,-2994.19995
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛瑟蕾丝|r
.target Ros'eleth
.turnin 9992 >>交任务: |cRXP_FRIENDLY_奥雷巴种子|r
step
.goto 1952/530,3991.80005,-3007.60010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加维·砂锤中尉|r
.target Lieutenant Gravelhammer
.turnin 10042 >>交任务: |cRXP_FRIENDLY_暗影议会必须死！|r
.turnin 10869 >>交任务: |cRXP_FRIENDLY_剿灭鸦人|r
step
.goto 1952/530,3963.10010,-2955.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_山德|r
.target Thander
.turnin 9986 >>交任务: |cRXP_FRIENDLY_教训鸦人|r
step
#questguide << !tbc
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_波尔泰姆|r
.goto Terokkar Forest,58.30,54.76
.turnin 10016 >>交任务: |cRXP_FRIENDLY_森林座狼的尾巴|r
.accept 10022 >>接任务: |cRXP_LOOT_狡猾的铁腭|r
.target Bertelm
step
.goto 1952/530,3946.60010,-2923.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰拉·远途|r
.target Taela Everstride
.turnin 10033 >>交任务: |cRXP_FRIENDLY_通缉：白骨秃鹫！|r
step
#questguide << !tbc
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰拉·远途|r
.target Taela Everstride
.goto 1952/530,3946.60010,-2923.50000
.accept 10035 >>接任务: |cRXP_LOOT_托古斯！|r
step
.goto 1952/530,3922.40015,-2927.90015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安达尔|r
.target Andarl
.turnin 10026 >>交任务: |cRXP_FRIENDLY_魔法扰动|r
.isQuestComplete 10026
step
#completewith sreturn1
.goto Terokkar Forest,59.44,55.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伏尔南·天啸|r
.fly Shattrath >>飞往沙塔斯城
.target Furnan Skysoar
.zoneskip Shattrath City
step
#optional
>>返回沙特拉斯
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_星界商人拉斯莱|r, |cRXP_FRIENDLY_维卡克斯|r
.turnin 10112 >>交任务: |cRXP_FRIENDLY_私人事务|r
.accept 9990 >>接任务: |cRXP_LOOT_调查图雷姆|r
.goto Shattrath City,72.23,30.72
.target +Wind Trader Lathrai
.accept 10917 >>接任务: |cRXP_LOOT_流亡者的交易|r
.turnin 10917 >>交任务: |cRXP_FRIENDLY_流亡者的交易|r
.goto Shattrath City,52.38,16.47,30,0
.goto Shattrath City,43.73,21.73,30,0
.goto Shattrath City,46.47,20.12
.itemcount 25719,30 
.target +Vekax
step
#label sreturn1
>>返回沙特拉斯
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_星界商人拉斯莱|r
.turnin 10112 >>交任务: |cRXP_FRIENDLY_私人事务|r
.accept 9990 >>接任务: |cRXP_LOOT_调查图雷姆|r
.goto Shattrath City,72.23,30.72
.target Wind Trader Lathrai
step << skip
.complete 10028,1 
step
.goto Terokkar Forest,54.00,29.99
>>前往Tuurem
>>抢劫|cRXP_PICK_密封箱|r
.complete 9990,1 
step
.goto Terokkar Forest,44.33,26.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_缚地者塔弗格伦|r
.turnin 9990 >>交任务: |cRXP_FRIENDLY_调查图雷姆|r
.accept 9994 >>接任务: |cRXP_LOOT_这些东西是什么？|r
.target Earthbinder Tavgren
step
#completewith next
.hs >>艾利安山寨之炉
.cooldown item,6948,>2
step
.goto Terokkar Forest,57.01,53.49
>>返回阿勒里安要塞
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰奈·星语|r
.turnin 9994 >>交任务: |cRXP_FRIENDLY_这些东西是什么？|r
.accept 10444 >>接任务: |cRXP_LOOT_奥蕾莉亚岗哨|r
.target Jenai Starwhisper

step
.goto Terokkar Forest,63.47,53.57,50,0
.goto Terokkar Forest,63.52,52.13,50,0
.goto Terokkar Forest,65.53,49.58,50,0
.goto Terokkar Forest,66.70,49.22,50,0
.goto Terokkar Forest,65.89,51.84,40,0
.goto Terokkar Forest,68.74,50.92,50,0
.goto Terokkar Forest,69.20,54.09,50,0
.goto Terokkar Forest,68.34,54.53
>>杀死|cRXP_ENEMY_Warped Peons|r
.complete 9998,1 
.mob Warped Peon
step
#completewith next
>>杀死|cRXP_ENEMY_Warp Stalker|r
.complete 10026,1 
.mob Warp Stalker
step
>>前往Allerian Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米利迪安中尉|r, |cRXP_FRIENDLY_塞洛莉娅·影衣|r
.turnin 10444 >>交任务: |cRXP_FRIENDLY_奥蕾莉亚岗哨|r
.accept 9996 >>接任务: |cRXP_LOOT_攻击火翼岗哨|r
.goto Terokkar Forest,69.79,44.56,20,0
.goto Terokkar Forest,69.64,44.25
.target +Lieutenant Meridian
.turnin 9998 >>交任务: |cRXP_FRIENDLY_野蛮的邻居|r
.accept 10002 >>接任务: |cRXP_LOOT_莉塞蕾·火纹|r
.accept 10007 >>接任务: |cRXP_LOOT_削弱邪兽人|r
.goto Terokkar Forest,69.74,44.24
.target +Theloria Shadecloak
step
#optional
#completewith Lisaile
>>杀死|cRXP_ENEMY_Bonechewer Backbreakers |r和|cRXX_ENEMY_Devastators|r
.complete 10007,2 
.mob +Bonechewer Backbreaker
.complete 10007,1 
.mob +Bonechewer Devastator
step
#optional
#completewith next
.goto Terokkar Forest,67.93,53.56,0
>>在地面上抢夺|T134940:0 | t精灵兽人计划
.accept 10012 >>接任务: |cRXP_LOOT_邪兽人的计划|r
step
#label Lisaile
.groundgoto Terokkar Forest,67.15,54.38,20,0
>>杀死建筑物内的|cRXP_ENEMY_Lisaile|r
.complete 10002,1 
.goto Terokkar Forest,67.85,53.28
.unitscan Lisaile Fireweaver
step
.goto Terokkar Forest,67.93,53.56
>>在地面上抢夺|T134940:0 | t精灵兽人计划
.accept 10012 >>接任务: |cRXP_LOOT_邪兽人的计划|r
step
.goto Terokkar Forest,66.87,54.76,50,0
.goto Terokkar Forest,65.54,55.78,50,0
.goto Terokkar Forest,64.29,54.69,50,0
.goto Terokkar Forest,66.37,52.11,50,0
.goto Terokkar Forest,66.87,54.76,50,0
.goto Terokkar Forest,65.54,55.78,50,0
.goto Terokkar Forest,64.29,54.69,50,0
.goto Terokkar Forest,66.37,52.11
>>杀死|cRXP_ENEMY_Bonechewer Backbreakers |r和|cRXX_ENEMY_Devastators|r
.complete 10007,2 
.mob +Bonechewer Backbreaker
.complete 10007,1 
.mob +Bonechewer Devastator
step
.goto Terokkar Forest,69.74,44.24
>>返回Allerian Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞洛莉娅·影衣|r
.turnin 10002 >>交任务: |cRXP_FRIENDLY_莉塞蕾·火纹|r
.turnin 10007 >>交任务: |cRXP_FRIENDLY_削弱邪兽人|r
.target Theloria Shadecloak
step
#questguide << !tbc
#aldor
#loop
.line Terokkar Forest,59.50,37.41,61.07,40.41,62.79,44.12,62.50,47.85,61.17,50.28,60.11,51.98,60.97,52.18,63.40,49.61,64.29,45.84,65.38,46.13,65.83,45.05
.goto Terokkar Forest,59.50,37.41,50,0
.goto Terokkar Forest,61.07,40.41,50,0
.goto Terokkar Forest,62.79,44.12,50,0
.goto Terokkar Forest,62.50,47.85,50,0
.goto Terokkar Forest,61.17,50.28,50,0
.goto Terokkar Forest,60.11,51.98,50,0
.goto Terokkar Forest,60.97,52.18,50,0
.goto Terokkar Forest,63.40,49.61,50,0
.goto Terokkar Forest,64.29,45.84,50,0
.goto Terokkar Forest,65.38,46.13,50,0
.goto Terokkar Forest,65.83,45.05,50,0
>>杀死|cRXP_ENEMY_Dampscale吞噬者|r。掠夺他们的|cRXX_Loot_Eyes |r
.complete 10024,1 
.mob Dampscale Devourer
step
#scryer
#completewith FirewingD
>>杀死|cRXP_ENEMY_Fireviews|r。掠夺它们的|cRXP_Loot_Signets|r
.collect 29426,10,10412,1 
step
#optional
#completewith Isla
>>杀死|cRXP_ENEMY_Firewing Defenders|r、|cRXD_ENEMY_Bloodwarders|r和|cRXP_ENEMY_Warlocks|r
.complete 9996,1 
.mob +Firewing Defender
.complete 9996,2 
.mob +Firewing Bloodwarder
.complete 9996,3 
.mob +Firewing Warlock
step
.goto Terokkar Forest,71.00,37.97,0
.goto Terokkar Forest,71.70,37.97,0
.goto Terokkar Forest,73.93,35.16
>>在开始护送之前，杀死圆圈南侧的|cRXP_ENEMY_Warlocks|r组，使其更容易
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊斯拉·星鬃|r
.accept 10051 >>接任务: |cRXP_LOOT_逃离火翼岗哨！|r
.target Isla Starmane
step
#label Isla
.goto Terokkar Forest,71.95,38.09,50,0
.goto Terokkar Forest,67.51,37.28
>>护送|cRXP_FRIENDLY_Isla Starmane|r。靠近她，因为她会很快死去
.complete 10051,1 
.target Isla Starmane
step
#label FirewingD
#loop
.line Terokkar Forest,68.22,36.56,70.07,35.63,71.63,34.99,72.86,34.90,72.32,37.25,73.87,35.76,72.22,39.36,71.41,40.25,70.87,38.26,68.22,36.56
.goto Terokkar Forest,68.22,36.56,50,0
.goto Terokkar Forest,70.07,35.63,50,0
.goto Terokkar Forest,71.63,34.99,50,0
.goto Terokkar Forest,72.86,34.90,50,0
.goto Terokkar Forest,72.32,37.25,50,0
.goto Terokkar Forest,73.87,35.76,50,0
.goto Terokkar Forest,72.22,39.36,50,0
.goto Terokkar Forest,71.41,40.25,50,0
.goto Terokkar Forest,70.87,38.26,50,0
.goto Terokkar Forest,68.22,36.56,50,0
>>杀死|cRXP_ENEMY_Firewing Defenders|r、|cRXD_ENEMY_Bloodwarders|r和|cRXP_ENEMY_Warlocks|r
.complete 9996,1 
.mob +Firewing Defender
.complete 9996,2 
.mob +Firewing Bloodwarder
.complete 9996,3 
.mob +Firewing Warlock
step
.goto Terokkar Forest,69.79,44.56,20,0
.goto Terokkar Forest,69.64,44.25
>>返回Allerian Post
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米利迪安中尉|r
.turnin 9996 >>交任务: |cRXP_FRIENDLY_攻击火翼岗哨|r
.accept 10446 >>接任务: |cRXP_LOOT_终极密码|r
.target Lieutenant Meridian
step
#optional
#scryer
#completewith MBomb
>>杀死|cRXP_ENEMY_Fireviews|r。掠夺它们的|cRXP_Loot_Signets|r
.collect 29426,10,10412,1 
.mob Firewing Bloodwarder
.mob Firewing Defender
.mob Firewing Warlock
step
#optional
#completewith Code
.goto Terokkar Forest,73.31,34.59
.cast 32568 >>飞到大楼的阳台上。把易位球带到塔顶
.skill riding,<225,1
step
#completewith next
.goto Terokkar Forest,73.47,36.15,20,0
.goto Terokkar Forest,74.27,35.99,15,0
.goto Terokkar Forest,73.31,34.59
.cast 32568 >>进入大楼。把易位球带到塔顶
.skill riding,225,1
step
#label Code
.groundgoto Terokkar Forest,74.06,35.71,14,0
.groundgoto Terokkar Forest,73.90,36.16,14,0
.goto Terokkar Forest,73.92,37.80
>>杀死塔顶的|cRXP_ENEMY_Sharth Voldoun|r。掠夺他|cRXP_Loot_最终代码|r
.collect 29912,1,10446,1 
.unitscan Sharth Voldoun
step
#completewith next
.goto Terokkar Forest,74.18,36.52
.cast 32569 >>把易位球带到塔底
step
#label MBomb
.goto Terokkar Forest,71.27,37.37
>>杀死城镇中心玛娜炸弹周围的|cRXP_ENEMY_Warlocks|r。点击它
.complete 10446,1 
.mob Firewing Warlock
step
#scryer
#loop
.line Terokkar Forest,68.22,36.56,70.07,35.63,71.63,34.99,72.86,34.90,72.32,37.25,73.87,35.76,72.22,39.36,71.41,40.25,70.87,38.26,68.22,36.56
.goto Terokkar Forest,68.22,36.56,50,0
.goto Terokkar Forest,70.07,35.63,50,0
.goto Terokkar Forest,71.63,34.99,50,0
.goto Terokkar Forest,72.86,34.90,50,0
.goto Terokkar Forest,72.32,37.25,50,0
.goto Terokkar Forest,73.87,35.76,50,0
.goto Terokkar Forest,72.22,39.36,50,0
.goto Terokkar Forest,71.41,40.25,50,0
.goto Terokkar Forest,70.87,38.26,50,0
.goto Terokkar Forest,68.22,36.56,50,0
>>杀死|cRXP_ENEMY_Fireviews|r。掠夺它们的|cRXP_Loot_Signets|r
.collect 29426,10,10412,1 
step
#sticky
#label WarpStalker
#loop
.line Terokkar Forest,69.04,32.58,66.61,36.48,62.88,40.28,64.86,33.63,61.87,34.36,60.94,23.97,62.03,24.73,65.79,33.83,69.04,32.58
.goto Terokkar Forest,69.04,32.58,50,0
.goto Terokkar Forest,66.61,36.48,50,0
.goto Terokkar Forest,62.88,40.28,50,0
.goto Terokkar Forest,64.86,33.63,50,0
.goto Terokkar Forest,61.87,34.36,50,0
.goto Terokkar Forest,60.94,23.97,50,0
.goto Terokkar Forest,62.03,24.73,50,0
.goto Terokkar Forest,65.79,33.83,50,0
.goto Terokkar Forest,69.04,32.58,50,0
>>杀死|cRXP_ENEMY_Warp Stalker|r。他们75%的时间是隐形的
.complete 10026,1 
.mob Warp Stalker
step
.goto Terokkar Forest,63.73,35.31,60,0
.goto Terokkar Forest,64.41,35.33,60,0
.goto Terokkar Forest,64.78,35.11,60,0
.goto Terokkar Forest,65.61,34.88,60,0
.goto Terokkar Forest,66.03,34.85,60,0
.goto Terokkar Forest,66.64,35.14,60,0
.goto Terokkar Forest,66.97,34.87,60,0
.goto Terokkar Forest,67.89,35.24,60,0
.goto Terokkar Forest,68.19,35.00,60,0
.goto Terokkar Forest,68.25,33.65,60,0
.goto Terokkar Forest,68.55,33.06,60,0
.goto Terokkar Forest,69.07,33.05
.line Terokkar Forest,63.73,35.31,64.41,35.33,64.78,35.11,65.61,34.88,66.03,34.85,66.64,35.14,66.97,34.87,67.89,35.24,68.19,35.00,68.25,33.65,68.55,33.06,69.07,33.05
>>杀死|cRXP_ENEMY_Ironjaw|r。为他的|cRXX_Loot_Pelt|r抢劫他。他四处巡逻
.complete 10023,1 
.unitscan Ironjaw
.isOnQuest 10023
step
#questguide << !tbc
#aldor
.goto Terokkar Forest,59.8,36.2,60,0
.goto Terokkar Forest,63.5,44.9,80,0
.goto Terokkar Forest,70.6,42.0,60,0
.goto Terokkar Forest,63.5,44.9,80,0
.goto Terokkar Forest,59.8,36.2
>>沿河边杀死剩余的|cRXP_ENEMY_Basilisks|r。掠夺他们的|cRXP_Loot_Eyes |r
.complete 10024,1 
.mob Dampscale Basilisk
step
#optional
#requires WarpStalker
step
#completewith next
.hs >>艾利安山寨之炉
.cooldown item,6948,>2 << !Shaman
step
#requires WarpStalker
.goto 1952/530,4004.30005,-2926.40015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰奈·星语|r
.target Jenai Starwhisper
.turnin 10446 >>交任务: |cRXP_FRIENDLY_终极密码|r
.accept 10005 >>接任务: |cRXP_LOOT_告知缚地者塔弗格伦|r
step
.goto 1952/530,3992.40015,-3005.60010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·猎日者上尉|r
.target Captain Auric Sunchaser
.turnin 10051 >>交任务: |cRXP_FRIENDLY_逃离火翼岗哨！|r
step
.goto 1952/530,3937.90015,-2971.50000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_波尔泰姆|r
.target Bertelm
.turnin 10012 >>交任务: |cRXP_FRIENDLY_邪兽人的计划|r
.turnin -10022 >>交任务: |cRXP_FRIENDLY_狡猾的铁腭|r
step
.goto 1952/530,3922.40015,-2927.90015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安达尔|r
.target Andarl
.turnin 10026 >>交任务: |cRXP_FRIENDLY_魔法扰动|r
.isQuestComplete 10026
step << tbc
.goto Terokkar Forest,46.8,55.9
>>杀死|cRXP_ENEMY_Ethereal Nethermancers|r和|cRXX_ENEMY_Ethereal Plunders|r
.complete 10840,1 
.complete 10840,2 
.mob Ethereal Nethermancer
.mob Ethereal Plunderer
step
#questguide << !tbc
.goto Terokkar Forest,43.2,51.6
>>杀死|cRXP_ENEMY_Trachela|r。掠夺|cRXX_Loot_Trachela尸体|r
.collect 30618,1 
.isOnQuest 10035
.mob Trachela
step << tbc
>>返回大篷车
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶祭司奥戈鲁|r
.turnin 10840 >>交任务: |cRXP_FRIENDLY_圣光之墓|r
.goto Terokkar Forest,37.4,50.8
.target High Priest Orglum
step
#questguide << !tbc
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏拉文|r
.accept 10030 >>接任务: |cRXP_LOOT_收集骸骨|r
.goto Terokkar Forest,37.1,49.5
.target Soolaveen
step
#questguide << !tbc
#label bones
#sticky
#completewith boneaway
>>在Auchindoun周围的地面上掠夺|cRXP_PICK_Restless Bones|r
.complete 10030,1 
step
#questguide << !tbc
.goto Terokkar Forest,27.0,55.6
>>使用Trachela的尸体召唤托戈斯(精英)
.complete 10035,1 
>>这个任务可能很难单独完成，如果有必要，跳过这一步
.mob Torgos
step
#questguide << !tbc
#requires bones
#label boneaway
.goto Terokkar Forest,23.7,72.3
>>在村庄周围寻找蛋巢
.complete 10861,1 
.complete 10861,2 
.mob Malevolent Hatchling
step
#questguide << !tbc
.goto Terokkar Forest,31.3,76.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_主考古学家雷托尔|r
.accept 10922 >>接任务: |cRXP_LOOT_挖掘行动|r
.target Chief Archaeologist Letoll
step
#questguide << !tbc
>>遵循|cRXP_FRIENDLY_Explorers|r
.complete 10922,1 
step
#questguide << !tbc
.goto Terokkar Forest,31.0,76.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜瓦弗维兹|r, |cRXP_FRIENDLY_指挥官拉瓦伊|r
.turnin 10922 >>交任务: |cRXP_FRIENDLY_挖掘行动|r
.accept 10929 >>接任务: |cRXP_LOOT_击鼓|r
.accept 10913 >>接任务: |cRXP_LOOT_不适当的葬礼|r
.target Dwarfowitz
.target Commander Ra'vaj
step
#questguide << !tbc
.goto Terokkar Forest,31.8,76.3
>>使用靠近警卫的冒烟器(只要你的分区是骨废料区)。他们将帮助杀死滋生的暴徒。
.complete 10929,1 
.mob Mature Bone Sifter
step
#questguide << !tbc
.goto Terokkar Forest,31.0,76.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜瓦弗维兹|r
.turnin 10929 >>交任务: |cRXP_FRIENDLY_击鼓|r

.target Dwarfowitz
step
#questguide << !tbc
.goto Terokkar Forest,31.0,76.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃尔昆|r
.accept 10877 >>接任务: |cRXP_LOOT_恐怖圣物|r
.target Oakun
step
#questguide << !tbc
.goto Terokkar Forest,31.4,75.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斥候纳弗林|r
.accept 10873 >>接任务: |cRXP_LOOT_夜间的绑架|r
.target Scout Navrin
step
#questguide << !tbc
.goto Terokkar Forest,36.0,76.1
>>使用袋子里的手电筒
.complete 10913,1 
.complete 10913,2 
.mob Sha'tar Vindicator
.mob Auchenai Warrior
step
#questguide << !tbc
.goto Terokkar Forest,31.0,76.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官拉瓦伊|r
.turnin 10913 >>交任务: |cRXP_FRIENDLY_不适当的葬礼|r
.accept 10914 >>接任务: |cRXP_LOOT_呼唤英雄|r
.target Commander Ra'vaj
step
#questguide << !tbc
.goto Terokkar Forest,35.1,65.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈雷|r
.accept 10227 >>接任务: |cRXP_LOOT_我看到了死德莱尼人|r
.target Ha'lei
step
#questguide << !tbc
.goto Terokkar Forest,35.2,66.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏拉文|r, |cRXP_FRIENDLY_疯狂的拉姆杜尔|r
.turnin 10030 >>交任务: |cRXP_FRIENDLY_收集骸骨|r
.accept 10031 >>接任务: |cRXP_LOOT_迷失者的解脱|r
.turnin 10227 >>交任务: |cRXP_FRIENDLY_我看到了死德莱尼人|r
.accept 10228 >>接任务: |cRXP_LOOT_伊瑟基尔|r
.target Soolaveen
.target Ramdor the Mad
step
#questguide << !tbc
.goto Terokkar Forest,37.3,51.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_觉醒者基尔利克|r
.turnin 10861 >>交任务: |cRXP_FRIENDLY_雷希鸦巢：先发制人|r
.accept 10874 >>接任务: |cRXP_LOOT_沙拉斯鸦巢：信号火焰|r
.target Kirrik the Awakened
step << Hunter tbc
>>跑回沙塔斯，进入首都
.train 34074>>毒蛇的训练特征
step << Hunter tbc
#completewith next
.hs >>艾利安山寨之炉
step << Hunter tbc
.goto Terokkar Forest,58.1,53.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰拉·远途|r
.turnin 10035 >>交任务: |cRXP_FRIENDLY_托古斯！|r
.isQuestComplete 10035
.target Taela Everstride
step
#questguide << !tbc
#sticky
#label skeletons
.goto Terokkar Forest,50.2,71.7,0
.goto Terokkar Forest,48.1,63.5,0
.goto Terokkar Forest,40.0,77.0,0
>>杀死|cRXP_ENEMY_Broken Skeletons|r
.complete 10031,2 
.mob Broken Skeleton
step << skip
.goto Terokkar Forest,53.8,72.4
>>启动天翼护航
.accept 10898 >>接任务: |cRXP_LOOT_天空之翼|r
step << skip
#sticky
.complete 10898,1 
.mob Skywing
step
#questguide << !tbc
.goto Terokkar Forest,56.1,72.4
>>在树的底部寻找一个开口，然后爬上里面的螺旋坡道
.complete 10874,4 
step
#questguide << !tbc
.goto Terokkar Forest,56.6,69.2
>>跑过桥，熄灭下一个火盆
.complete 10874,3 
step
#questguide << !tbc
.goto Terokkar Forest,55.5,69.8
.complete 10874,2 
step
#questguide << !tbc
.goto Terokkar Forest,55.2,67.2
.complete 10874,1 
step
#questguide << !tbc
>>杀死|cRXP_ENEMY_Arakkoa |r。掠夺他们的|cRXX_Loot_Features|r
.collect 25719,30 
step
#questguide << !tbc
.goto Terokkar Forest,49.8,76.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官海雷恩|r
.accept 10920 >>接任务: |cRXP_LOOT_复仇之战|r
step
#questguide << !tbc
.goto Terokkar Forest,52.0,80.1
>>攻击网络以释放|cRXP_FRIENDLY_Sha'tar勇士|r。杀死所有出来的|cRXP_ENEMY_Dreadfang寡妇|r
.complete 10873,1 
.complete 10920,1 
.mob Netherweb Victim
.mob Dreadfang Widow
step
#questguide << !tbc
.goto Terokkar Forest,49.7,76.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官海雷恩|r
.turnin 10920 >>交任务: |cRXP_FRIENDLY_复仇之战|r
.target Vindicator Haylen
step << Hunter tbc / Warlock tbc
.goto Terokkar Forest,49.7,76.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官海雷恩|r
.accept 10921 >>接任务: |cRXP_LOOT_泰罗卡狼蛛|r
.target Vindicator Haylen
step << Hunter tbc / Warlock tbc
.goto Terokkar Forest,54.2,81.8
>>这个精英任务可能很难单独完成(怪物拥有45k生命，跑得很快，速度也不慢)，如果必须的话跳过
>>杀死|cRXP_ENEMY_Terokkarantula |r
.complete 10921,1 
.mob Terokkarantula
step
#questguide << !tbc
.goto Terokkar Forest,49.7,76.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官海雷恩|r
.turnin 10921 >>交任务: |cRXP_FRIENDLY_泰罗卡狼蛛|r
.isQuestComplete 10921
.target Vindicator Haylen
step
#questguide << !tbc
.goto Terokkar Forest,49.7,76.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官海雷恩|r
.accept 10926 >>接任务: |cRXP_LOOT_返回沙塔尔营地|r
.isQuestTurnedIn 10921
.target Vindicator Haylen
step
#questguide << !tbc
#sticky
#completewith next
.goto Terokkar Forest,40.0,79.0
>>杀死|cRXP_ENEMY_Lost Spirits|r
.complete 10031,1 
.mob Lost Spirit
step
#questguide << !tbc
.goto Terokkar Forest,44.0,76.5
>>掠夺破车旁边的箱子
>>一旦你打开箱子，一群移动缓慢的暴徒就会在它周围出现，你只要离开它就行了
.complete 10877,1 
step
#questguide << !tbc
#label spirits
.goto Terokkar Forest,40.0,79.0
>>杀死|cRXP_ENEMY_Lost Spirits|r
.complete 10031,1 
.mob Lost Spirit
step
#questguide << !tbc
#requires skeletons
.goto Terokkar Forest,36.2,74.7
>>杀死|cRXP_ENEMY_Auchenai启动|r和|cRXP_ENEMY_Auchenai Doomsayers|r
.complete 10914,1 
.complete 10914,2 
.mob Auchenai Initiate
.mob Auchenai Doomsayer
step
#questguide << !tbc
.goto Terokkar Forest,31.4,75.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斥候纳弗林|r
.turnin 10873 >>交任务: |cRXP_FRIENDLY_夜间的绑架|r
.target Scout Navrin
step
#questguide << !tbc
.goto Terokkar Forest,31.4,75.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斥候纳弗林|r
.turnin 10926 >>交任务: |cRXP_FRIENDLY_返回沙塔尔营地|r
.isOnQuest 10926
.target Scout Navrin
step
#questguide << !tbc
.goto Terokkar Forest,31.1,76.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Oakun|r
.turnin 10877 >>交任务: |cRXP_FRIENDLY_恐怖圣物|r
.accept 10923 >>接任务: |cRXP_LOOT_邪恶临近|r
.target Oakun
step
#questguide << !tbc
.goto Terokkar Forest,31.0,76.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官拉瓦伊|r
.turnin 10914 >>交任务: |cRXP_FRIENDLY_呼唤英雄|r
.accept 10915 >>接任务: |cRXP_LOOT_死去的主教|r
.target Commander Ra'vaj
step
#questguide << !tbc
.goto Terokkar Forest,35.7,65.7
.complete 10915,1 
step
#questguide << !tbc
.goto Terokkar Forest,31.0,76.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官拉瓦伊|r
.turnin 10915 >>交任务: |cRXP_FRIENDLY_死去的主教|r
.target Commander Ra'vaj
step
#questguide << !tbc
.goto Terokkar Forest,37.0,49.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏拉文|r
.turnin 10031 >>交任务: |cRXP_FRIENDLY_迷失者的解脱|r
.target Soolaveen
step
#questguide << !tbc
.goto Terokkar Forest,37.4,51.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_觉醒者基尔利克|r
.turnin 10874 >>交任务: |cRXP_FRIENDLY_沙拉斯鸦巢：信号火焰|r
.accept 10889 >>接任务: |cRXP_LOOT_返回沙塔斯|r
.target Kirrik the Awakened
step << Shaman tbc
#completewith next
.hs >>艾利安山寨之炉
step << !Hunter tbc
.goto Terokkar Forest,58.1,53.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰拉·远途|r
.turnin 10035 >>交任务: |cRXP_FRIENDLY_托古斯！|r
.isQuestComplete 10035
.target Taela Everstride
step << !Hunter tbc
.abandon 10035 >>放弃托戈斯！如果你跳过它
step << !Hunter tbc
#completewith next
.goto Terokkar Forest,59.44,55.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伏尔南·天啸|r
.fly Shattrath >>飞往沙塔斯城
.target Furnan Skysoar

step << Hunter/!tbc
.goto Terokkar Forest,44.33,26.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_缚地者塔弗格伦|r
.turnin 10005 >>交任务: |cRXP_FRIENDLY_告知缚地者塔弗格伦|r
.isOnQuest 10005
.target Earthbinder Tavgren
step << tbc/wotlk
#aldor
.goto Shattrath City,28.3,49.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米娜蕾|r
.home >>将您的炉石设置为沙塔斯城
.target Minalei
step << tbc/wotlk
#scryer
.goto Shattrath City,56.3,81.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板海索恩|r
.home >>将您的炉石设置为沙塔斯城
.target Innkeeper Haelthol
step
#questguide << !tbc
.isOnQuest 10228
.goto Shattrath City,51.2,34.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟基尔|r
.turnin 10228 >>交任务: |cRXP_FRIENDLY_伊瑟基尔|r
.accept 10231 >>接任务: |cRXP_LOOT_什么书？我没见过什么书|r
.target Ezekiel
step << skip
#scryer
.goto Shattrath City,54.60,44.68
.accept 10553 >>接任务: |cRXP_LOOT_先知沃雷塔尔|r
step
#scryer
.goto Shattrath City,45.30,81.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师菲亚琳|r
.accept 10412 >>接任务: |cRXP_LOOT_火翼徽记|r
.turnin 10412 >>交任务: |cRXP_FRIENDLY_火翼徽记|r
.target Magistrix Fyalenn
step
#scryer
.goto Shattrath City,42.95,91.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知沃雷塔尔|r
.turnin 10553 >>交任务: |cRXP_FRIENDLY_先知沃雷塔尔|r
.target Voren'thal the Seer
step << skip
#scryer
.goto Shattrath City,47.01,83.30
.accept 10169 >>接任务: |cRXP_LOOT_镇静剂|r
step << skip
#scryer
.goto Shattrath City,61.31,51.46
>>点击Haronem的团锅
.turnin 10169 >>交任务: |cRXP_FRIENDLY_镇静剂|r
step
#questguide << !tbc
.isOnQuest 10231
.goto Shattrath City,43.6,29.6
>>攻击|cRXP_ENEMY_“肮脏”拉里|r直到他变成友好
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"脏鬼\"拉瑞|r
>>|cRXP_WARN_这个任务很难，请尝试从某人那里获得帮助，如果有必要，请跳过|r
.complete 10231,1 
.turnin 10231 >>交任务: |cRXP_FRIENDLY_什么书？我没见过什么书|r
.target "Dirty" Larry
step
#questguide << !tbc
.goto Shattrath City,43.6,29.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"脏鬼\"拉瑞|r
.accept 10251 >>接任务: |cRXP_LOOT_主人的伟大设计？|r
.isQuestTurnedIn 10231
.target "Dirty" Larry
step
#questguide << !tbc
.goto Shattrath City,52.5,20.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_救赎者瑞拉克|r
.turnin 10898 >>交任务: |cRXP_FRIENDLY_天空之翼|r
.isQuestComplete 10898
.target Rilak the Redeemed
step
#questguide << !tbc
.isOnQuest 10889
.goto Shattrath City,52.5,20.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_救赎者瑞拉克|r
.turnin 10889 >>交任务: |cRXP_FRIENDLY_返回沙塔斯|r
.target Rilak the Redeemed
step
#questguide << !tbc
.isQuestTurnedIn 10879
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_救赎者瑞拉克|r
.goto Shattrath City,52.0,20.8
.accept 10879 >>接任务: |cRXP_LOOT_斯克提斯的攻势|r
.target Rilak the Redeemed
step
#questguide << !tbc
.isOnQuest 10879
>>在鸟儿的袭击中幸存下来，并在最后杀死大鸟
.complete 10879,1 
>>这个任务可能很难，如果必须的话跳过
step
#questguide << !tbc
.goto Shattrath City,52.2,20.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_救赎者瑞拉克|r
.turnin 10879 >>交任务: |cRXP_FRIENDLY_斯克提斯的攻势|r
.isQuestComplete 10879
.target Rilak the Redeemed
step
#questguide << !tbc
#aldor
.isQuestComplete 10024
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师艾蒂莉亚|r
.goto Shattrath City,54.9,22.4
.turnin 10024 >>交任务: |cRXP_FRIENDLY_沃雷塔尔的预言|r
.target Arcanist Adyria
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维卡克斯|r
.goto Shattrath City,52.3,16.6
.accept 10917 >>接任务: |cRXP_LOOT_流亡者的交易|r
.turnin 10917 >>交任务: |cRXP_FRIENDLY_流亡者的交易|r
.itemcount 25719,30 
.target Vekax
step << !Hunter tbc
.goto Terokkar Forest,44.33,26.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_缚地者塔弗格伦|r
.turnin -10005 >>交任务: |cRXP_FRIENDLY_告知缚地者塔弗格伦|r
.target Earthbinder Tavgren
step << Mage (tbc/wotlk)
.cast 3561 >>前往: |cRXP_PICK_暴风城|r
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << (tbc/wotlk) (Warlock/Shaman/Paladin)
.goto Shattrath City,55.7,36.9
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << (tbc/wotlk) (Warlock/Shaman/Paladin/Mage)
.goto StormwindClassic,25.3,78.7 << Warlock
.goto StormwindClassic,38.6,32.8 << Paladin
.goto StormwindClassic,61.9,84.0 << Shaman
.goto StormwindClassic,39.6,79.6 << Mage
.target Farseer Umbrua << Shaman
.target Elsharin << Mage
.target Jennea Cannon << Mage
.target Arthur the Faithful << Paladin
.target Katherine the Pure << Paladin
.target Lord Grayson Shadowbreaker << Paladin
.target Ursula Deline << Warlock
.target Demisette Cloyce << Warlock
.target Sandahl << Warlock
.trainer >>训练你的职业技能
step << (tbc/wotlk) (Warrior/Hunter/Rogue/Priest)
.goto Shattrath City,55.2,36.5
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << (tbc/wotlk) (Warrior/Hunter/Rogue/Priest)
.goto Darnassus,39.0,83.2 << Priest
.goto Darnassus,40.6,9.2 << Hunter
.goto Darnassus,31.5,17.4 << Rogue
.goto Darnassus,58.75,35.16 << Warrior
.trainer >>训练你的职业技能
.target Jandria << Priest
.target Jocaste << Hunter
.target Anishar << Rogue
.target Erion Shadewhisper << Rogue
.target Syurna << Rogue
.target Arias'ta Bladesinger << Warrior
step << Druid (tbc/wotlk)
>>前往: |cRXP_PICK_月光林地|r
.goto Moonglade,52.4,40.6
.trainer 12042 >>训练你的职业技能
.target Loganaar << Druid
step << DK (tbc/wotlk)
#completewith next
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
step << DK (tbc/wotlk)
.goto Eastern Plaguelands,80.3,48.0
>>前往: |cRXP_PICK_东瘟疫之地|r
.trainer >>从阿切罗斯的阿马尔萨扎德训练你的职业法术
.target Amal'thazad
step << tbc/wotlk
#completewith next
.hs >>赫斯到沙塔斯城
step << tbc/wotlk
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
.zoneskip Nagrand
step
#aldor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_圣光护卫者阿德因|r
.goto Shattrath City,30.72,34.63
.accept 10325 >>接任务: |cRXP_LOOT_基尔加丹印记|r
.turnin 10325 >>交任务: |cRXP_FRIENDLY_基尔加丹印记|r
.target Adyen the Lightwarden
.itemcount 29425,10
step
#aldor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊沙娜|r
.goto Shattrath City,23.98,29.74
.turnin 10021 >>交任务: |cRXP_FRIENDLY_重现圣光|r
.target Ishanah
]])
RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 64-66 Nagrand
#defaultfor !wotlk
#version 5
#next 65-67 刀锋山
#xprate <1.5 << tbc/wotlk
step << !tbc !wotlk
.goto 1955/530,5362.10010,-1832.90002
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_憔悴的志愿兵|r
.target Haggard War Veteran
.accept 10210 >>接任务: |cRXP_LOOT_阿达尔|r
step << !tbc !wotlk
.goto 1955/530,5426.70020,-1862.70007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿达尔|r
.target A'dal
.turnin 10210 >>交任务: |cRXP_FRIENDLY_阿达尔|r
step << !tbc !wotlk
.goto 1955/530,5421.80029,-1859.00000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德加的仆从|r
.target Khadgar
.accept 10211 >>接任务: |cRXP_LOOT_圣光之城|r
.timer 462,City of Light RP
step << !tbc !wotlk
.goto Shattrath City,50.36,42.87
>>跟随|cRXP_FRIENDLY_Khadgar的仆人|r << wotlk
>>带着|cRXP_FRIENDLY_G'eras|r前往二楼，等待RP出来。如果其他人|cRXP_FRIENDLY_Khadgar的仆人|r在此期间到达，你可以瞄准它，它会为你完成任务。如果任务失败，放弃它，再次接受|cRXP_FRIENDLY_Khadgar的仆人|r的任务，然后跟随|cRXP_FRIENDLY_Khadgar's Servant |r << tbc
.complete 10211,1 
.target Khadgar's Servant
step << Mage !tbc !wotlk
.goto Shattrath City,58.77,47.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾欧莉娅|r
.train 35715 >>火车通讯：沙特拉斯和门户：沙特拉特
.target Iorioa
step << !tbc !wotlk
.goto Shattrath City,54.74,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德加的仆从|r
.turnin 10211 >>交任务: |cRXP_FRIENDLY_圣光之城|r
.target Khadgar
step << !tbc !wotlk
.goto Shattrath City,54.74,44.32
.accept 10551 >>接任务: |cRXP_WARN_为奥尔多效力|r
.turnin 10551>>对话: |cRXP_FRIENDLY_卡德加|r. Pledge your 接任务: |cRXP_WARN_为奥尔多效力|r
.target Khadgar
step << !tbc !wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德加的仆从|r
.goto Shattrath City,54.74,44.32
.accept 10554 >>接任务: |cRXP_LOOT_伊沙娜|r
.target Khadgar
step << Rogue !tbc !wotlk
.goto 1955/530,5357.10010,-1880.09998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_风之猎手埃弗拉姆|r
.trainer >>训练你的职业技能
.target Windstalker Ifram
step << Shaman !tbc !wotlk
.goto 1955/530,5367.80029,-1890.09998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢克纳尔|r
.trainer >>训练你的职业技能
.target Luknar
step << Warlock !tbc !wotlk
.goto 1955/530,5371.10010,-1892.59998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恶魔召唤者古洛图|r
.trainer >>训练你的职业技能
.target Fel-Caller Guloto
step << Mage !tbc !wotlk
.goto 1955/530,5412.70020,-1792.70007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉鲁希|r
.trainer >>训练你的职业技能
.target Raluhi
step << Priest !tbc !wotlk
.goto 1955/530,5409.20020,-1789.70007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔哈|r
.trainer >>训练你的职业技能
.target Salha
step << Paladin !tbc !wotlk
.goto 1955/530,5402.50000,-1796.59998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧尔多|r
.trainer >>训练你的职业技能
.target Ordo
step << Warrior !tbc !wotlk
.goto 1955/530,5399.89990,-1798.59998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉图|r
.trainer >>训练你的职业技能
.target Bratu
step << Hunter !tbc !wotlk
.goto 1955/530,5403.10010,-1800.59998
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔瓦|r
.trainer >>训练你的职业技能
.target Irva
step << !tbc !wotlk
.goto 1955/530,5821.60010,-1732.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊沙娜|r
.target Ishanah
.turnin 10554 >>交任务: |cRXP_FRIENDLY_伊沙娜|r
step
#aldor
.goto Shattrath City,21.62,50.35,30,0
.goto Nagrand,78.23,54.62
.zone Nagrand >>前往: |cRXP_PICK_纳格兰|r
.skill riding,<225,1
step
#scryer
.goto Shattrath City,21.62,50.35,30,0
.goto Nagrand,78.23,54.62
.zone Nagrand >>前往: |cRXP_PICK_纳格兰|r
>>请确保避开在该区域漫游的|cRXP_WARN_Aldor Vindicators|r，如果他们与你交战，你将被传送出Aldor Rise，你可以将鼠标悬停在他们身上发现他们
.skill riding,<225,1
.target Aldor Vindicator
step << !tbc
#completewith Wazat
.goto Nagrand,61.6,67.0
.zone Nagrand >>前往: |cRXP_PICK_纳格兰|r
.skill riding,225,1
step
#completewith next
>>杀死|cRXP_ENEMY_Wild Elekks|r。掠夺它们的|cRXX_Loot_TASK|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#label Wazat
.goto Nagrand,61.70,67.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦萨特|r
.accept 10109 >>接任务: |cRXP_LOOT_我想要这些鸟蛋！|r
.target Wazat
step
#optional
.goto Nagrand,55.05,70.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手彬图克|r
.accept 9917 >>接任务: |cRXP_LOOT_是我眼花了？|r
.reputation 978,neutral,0,1
.target Huntress Bintook
step
#optional
.goto Nagrand,62.89,73.28,40,0
.goto Nagrand,62.74,71.49
>>杀死|cRXP_ENEMY_Boulderfirs食人魔|r。掠夺他们的|cRXP-Loot_Plans|r
.complete 9917,1 
.mob Boulderfist Hunter
.reputation 978,neutral,0,1
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手彬图克|r
.goto Nagrand,55.05,70.54
.turnin 9917 >>交任务: |cRXP_FRIENDLY_是我眼花了？|r
.accept 9918 >>接任务: |cRXP_LOOT_这是我的地盘！|r
.reputation 978,neutral,0,1
.target Huntress Bintook
step
#optional
.goto Nagrand,62.74,71.48
>>伤害|cRXP_ENEMY_结块|r至30%或更少生命值
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉普|r
.skipgossip
.complete 9918,1 
.target Lump
.reputation 978,neutral,0,1
step
#optional
.goto Nagrand,55.05,70.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手彬图克|r
.turnin 9918 >>交任务: |cRXP_FRIENDLY_这是我的地盘！|r
.target Huntress Bintook
.isQuestComplete 9918
step
.goto 1951/530,7253.600,-2557.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手彬图克|r
.target Huntress Bintook
.accept 9917 >>接任务: |cRXP_LOOT_是我眼花了？|r
step
.goto 1951/530,7259.100,-2551.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"猎枪\"琼斯|r
.target "Shotgun" Jones
.accept 10113 >>接任务: |cRXP_LOOT_奈辛瓦里狩猎队|r
step
.goto 1951/530,7229.100,-2492.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师犹基|r
.target Elementalist Ioki
.accept 9869 >>接任务: |cRXP_LOOT_元素王座|r
step
.goto 1951/530,7273.300,-2567.000
>>单击|cRXP_FRIENDLY_Telar公告板|r
.accept 9936 >>接任务: |cRXP_LOOT_通缉：巫婆吉塞尔达|r
.accept 9940 >>接任务: |cRXP_LOOT_通缉：顾问佐尔布|r
step
.goto 1951/530,7286.100,-2613.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知欧图布|r
.target Otonbu the Sage
.accept 9874 >>接任务: |cRXP_LOOT_阻止污染|r
step
.goto 1951/530,7287.600,-2623.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者普里鲁鲁克|r
.target Poli'lukluk the Wiser
.accept 9878 >>接任务: |cRXP_LOOT_解决问题|r
step
#completewith BPlans
.goto Nagrand,54.21,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看护者伊塞尔|r
.home >>将您的炉石设置为Telaar
.target Caregiver Isel
step
.goto Nagrand,54.17,75.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔古|r
.fp Telaar >>获取Telaar航班路径
.target Furgu
step
#optional
#completewith Staghoofs
.use 24504 >>杀死|cRXP_ENEMY_Dust Howlers|r。掠夺他们的|cRXD_Loot_元素气|r和|cRXP_Loot_呼啸风|r。点击你包里的|T135988:0|t[呼啸风]
.complete 10109,1 
.collect 24504,1,9861 
.accept 9861 >>接任务: |cRXP_LOOT_呼嚎之风|r
.mob Dust Howler
step
#label BPlans
.goto Nagrand,62.89,73.28,40,0
.goto Nagrand,62.74,71.49
>>杀死|cRXP_ENEMY_Boulderfirs食人魔|r。掠夺他们的|cRXP-Loot_Plans|r
.complete 9917,1 
.mob Boulderfist Hunter
step
#completewith Throne1
>>杀死|cRXP_ENEMY_Wild Elekks|r。掠夺它们的|cRXX_Loot_TASK|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#sticky
#hidewindow
#label saved1a
#completewith Safari1
.subzone 3673 >>1
step
#requires saved1a
#completewith Safari1
>>有时|cRXP_ENEMY_Gankly|r会出现在Safari中。这是一种罕见的事件
>>杀死|cRXP_ENEMY_Gankly|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉丝蒂·德米萨|r
.accept 9897 >>接任务: |cRXP_LOOT_我得救了！|r
.goto Nagrand,71.42,40.60,0
.unitscan Gankly Rottenfist
.target Kristen Dipswitch
step
#label Safari1
>>前往Nesingwary Safari
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_“好儿子”沙度·远行者|r, |cRXP_FRIENDLY_哈罗德·兰恩|r, |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 10113 >>交任务: |cRXP_FRIENDLY_奈辛瓦里狩猎队|r
.accept 9854 >>接任务: |cRXP_LOOT_狩猎风鹏|r
.goto Nagrand,71.57,40.52,-1
.target +Shado 'Fitz' Farstrider
.accept 9857 >>接任务: |cRXP_LOOT_狩猎塔布羊|r
.goto Nagrand,71.38,40.62,-1
.target +Harold Lane
.accept 9789 >>接任务: |cRXP_LOOT_狩猎裂蹄牛|r
.goto Nagrand,71.52,40.82,-1
.target +Hemet Nesingwary
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈罗德·兰恩|r
.turnin 9897 >>交任务: |cRXP_FRIENDLY_我得救了！|r
.target Harold Lane
.goto Nagrand,71.38,40.62
.isOnQuest 9897
step
#completewith Throne1
.goto Nagrand,70.22,38.37,60,0
.goto Nagrand,68.58,40.18,60,0
.goto Nagrand,62.42,35.46,60,0
>>杀死|cRXP_ENEMY_Windrocs|r
.complete 9854,1 
.mob Windroc
.subzoneskip 3614
.subzoneskip 3615
step
#label Throne1
.goto 1951/530,6945.300,-793.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师温塔格|r
.target Elementalist Untrag
.accept 9818 >>接任务: |cRXP_LOOT_地下的滋扰|r
step
.goto 1951/530,6936.700,-783.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师鲁艾普|r
.target Elementalist Lo'ap
.accept 9800 >>接任务: |cRXP_LOOT_稀有的豆子|r
.accept 9815 >>接任务: |cRXP_LOOT_潜水|r
step
.goto 1951/530,6944.600,-773.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师沙尔瓦克|r
.target Elementalist Sharvak
.turnin 9869 >>交任务: |cRXP_FRIENDLY_元素王座|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师莫格|r
.turnin 9861 >>交任务: |cRXP_FRIENDLY_呼嚎之风|r
.accept 9862 >>接任务: |cRXP_LOOT_暗血腐蚀者|r
.goto Nagrand,60.50,22.37
.isOnQuest 9861
.target Elementalist Morgh
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师莫格|r
.accept 9862 >>接任务: |cRXP_LOOT_暗血腐蚀者|r
.goto Nagrand,60.50,22.37
.isQuestTurnedIn 9861
.target Elementalist Morgh
step
#loop
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54,50,0
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈达乌|r
.turnin 9818 >>交任务: |cRXP_FRIENDLY_地下的滋扰|r
.accept 9819 >>接任务: |cRXP_LOOT_被折磨的地灵|r
.unitscan Gordawg
step
#optional
#completewith Throne2
>>杀死|cRXP_ENEMY_Wild Elekks|r。掠夺它们的|cRXX_Loot_TASK|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Torred Earth Spirits|r通常在小山或山脚附近
.complete 9819,1 
.mob Tortured Earth Spirit
step
#loop
.goto Nagrand,62.64,48.31,60,0
.goto Nagrand,62.42,35.46,60,0
.goto Nagrand,68.58,40.18,60,0
.goto Nagrand,70.22,38.37,60,0
.goto Nagrand,62.64,48.31,0
.goto Nagrand,62.42,35.46,0
.goto Nagrand,68.58,40.18,0
.goto Nagrand,70.22,38.37,0
>>杀死|cRXP_ENEMY_Windrocs|r
.complete 9854,1 
.mob Windroc
step
#optional
#completewith next
.goto Nagrand,62.42,35.46,60,0
.goto Nagrand,66.64,38.34,60,0
>>杀死|cRXP_ENEMY_Talbuk雄鹿|r和|cRXX_ENEMY_Clefthofs|r
.complete 9857,1 
.mob +Talbuk Stag
.complete 9789,1 
.mob +Clefthoof
step
#loop
.goto Nagrand,65.00,51.32,60,0
.goto Nagrand,61.94,54.94,60,0
.goto Nagrand,65.00,51.32,0
.goto Nagrand,61.94,54.94,0
>>杀死|cRXP_ENEMY_被折磨的地球精灵|r
.complete 9819,1 
.mob Tortured Earth Spirit
step
#label Staghoofs
#loop
.line Nagrand,57.61,60.98,59.50,58.79,61.32,62.32,70.43,56.50,65.39,63.76,71.13,62.77,70.44,72.05,66.97,75.29,66.01,67.94,57.61,60.98
.goto Nagrand,57.61,60.98,60,0
.goto Nagrand,59.50,58.79,60,0
.goto Nagrand,61.32,62.32,60,0
.goto Nagrand,70.43,56.50,60,0
.goto Nagrand,65.39,63.76,60,0
.goto Nagrand,71.13,62.77,60,0
.goto Nagrand,70.44,72.05,60,0
.goto Nagrand,66.97,75.29,60,0
.goto Nagrand,66.01,67.94,60,0
.goto Nagrand,57.61,60.98,60,0
>>杀死|cRXP_ENEMY_Talbuk雄鹿|r和|cRXX_ENEMY_Clefthofs|r
.complete 9857,1 
.mob +Talbuk Stag
.complete 9789,1 
.mob +Clefthoof
step
.goto Nagrand,66.11,62.07,60,0
.goto Nagrand,68.76,63.70,60,0
.goto Nagrand,67.52,65.69,60,0
.goto Nagrand,66.10,72.83,60,0
.goto Nagrand,67.50,74.48,60,0
.goto Nagrand,60.33,63.82,60,0
.goto Nagrand,60.85,61.08,60,0
.goto Nagrand,62.41,59.43,60,0
.goto Nagrand,66.11,62.07,60,0
.goto Nagrand,68.76,63.70,60,0
.goto Nagrand,67.52,65.69,60,0
.goto Nagrand,66.10,72.83,60,0
.goto Nagrand,67.50,74.48,60,0
.goto Nagrand,60.33,63.82,60,0
.goto Nagrand,60.85,61.08,60,0
.goto Nagrand,62.41,59.43
.use 24504 >>杀死|cRXP_ENEMY_Dust Howlers|r。掠夺他们的|cRXD_Loot_元素气|r和|cRXP_Loot_呼啸风|r。点击你包里的|T135988:0|t[呼啸风]
.complete 10109,1 
.collect 24504,1,9861 
.accept 9861 >>接任务: |cRXP_LOOT_呼嚎之风|r
.unitscan Dust Howler
step
#sticky
#hidewindow
#label saved2a
#completewith Safari1
.subzone 3673 >>1
step
#requires saved2a
#completewith Safari2
>>有时|cRXP_ENEMY_Gankly|r会出现在Safari中。这是一种罕见的事件
>>杀死|cRXP_ENEMY_Gankly|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉丝蒂·德米萨|r
.accept 9897 >>接任务: |cRXP_LOOT_我得救了！|r
.goto Nagrand,71.42,40.60,0
.unitscan Gankly Rottenfist
.target Kristen Dipswitch
step
#label Safari2
>>返回Safari
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_“好儿子”沙度·远行者|r, |cRXP_FRIENDLY_赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_哈罗德·兰恩|r
.turnin 9854 >>交任务: |cRXP_FRIENDLY_狩猎风鹏|r
.accept 9855 >>接任务: |cRXP_LOOT_狩猎风鹏|r
.target +Shado 'Fitz' Farstrider
.goto Nagrand,71.57,40.52
.turnin 9789 >>交任务: |cRXP_FRIENDLY_狩猎裂蹄牛|r
.accept 9850 >>接任务: |cRXP_LOOT_狩猎裂蹄牛|r
.target +Hemet Nesingwary
.goto Nagrand,71.52,40.82
.turnin 9857 >>交任务: |cRXP_FRIENDLY_狩猎塔布羊|r
.accept 9858 >>接任务: |cRXP_LOOT_狩猎塔布羊|r
.target +Harold Lane
.goto Nagrand,71.38,40.62
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈罗德·兰恩|r
.turnin 9897 >>交任务: |cRXP_FRIENDLY_我得救了！|r
.target Harold Lane
.goto Nagrand,71.38,40.62
.isOnQuest 9897
step
#label Throne2
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈达乌|r
.turnin 9819 >>交任务: |cRXP_FRIENDLY_被折磨的地灵|r
.accept 9821 >>接任务: |cRXP_LOOT_吞食诅咒|r
.unitscan Gordawg
step
#completewith Caracoli
.destroy 24475 >>摧毁: |cRXP_ENEMY_戈达乌的足印|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师莫格|r
.turnin 9861 >>交任务: |cRXP_FRIENDLY_呼嚎之风|r
.accept 9862 >>接任务: |cRXP_LOOT_暗血腐蚀者|r
.goto Nagrand,60.50,22.37
.isOnQuest 9861
.target Elementalist Morgh
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师莫格|r
.accept 9862 >>接任务: |cRXP_LOOT_暗血腐蚀者|r
.goto Nagrand,60.50,22.37
.isQuestTurnedIn 9861
.target Elementalist Morgh
step
#optional
#completewith Gordawg3
>>杀死|cRXP_ENEMY_Wild Elekks|r。掠夺它们的|cRXX_Loot_TASK|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#completewith Dung
#optional
>>杀死|cRXP_ENEMY_Clefthove公牛|r和|cRXP_ENEMY_Talbuk荆棘食草动物|r
.complete 9850,1,20 
.mob +Clefthoof Bull
.complete 9858,1 
.mob +Talbuk Thorngrazer
step
#completewith eccore
>>掠夺地上的|cRXP_PICK_挖掘的大肠杆菌|r粪便
.complete 9800,1 
step
#label eccore
#loop
.goto Nagrand,56.76,18.16,60,0
.goto Nagrand,55.16,20.27,60,0
.goto Nagrand,51.36,19.50,60,0
.goto Nagrand,48.73,18.92,60,0
.goto Nagrand,56.76,18.16,60,0
.goto Nagrand,55.16,20.27,60,0
.goto Nagrand,51.36,19.50,60,0
.goto Nagrand,48.73,18.92,60,0

.goto Nagrand,56.76,18.16,0
.goto Nagrand,55.16,20.27,0
.goto Nagrand,51.36,19.50,0
.goto Nagrand,48.73,18.92,0
.goto Nagrand,56.76,18.16,0
.goto Nagrand,55.16,20.27,0
.goto Nagrand,51.36,19.50,0
.goto Nagrand,48.73,18.92,0
>>杀死|cRXP_ENEMY_Enraged Crushers |r。掠夺它们的|cRXP_Loot_核心|r
.complete 9821,1 
.mob Enraged Crusher
step
#label Dung
#loop
.line Nagrand,53.23,28.38,53.12,25.86,54.63,23.85,57.92,23.11,57.71,20.88,55.71,20.76,52.57,22.34,50.79,19.94,51.26,24.12,51.50,26.70,50.31,27.35,48.83,27.92,46.77,28.29,47.42,33.33,53.23,28.38
.goto Nagrand,53.23,28.38,60,0
.goto Nagrand,53.12,25.86,60,0
.goto Nagrand,54.63,23.85,60,0
.goto Nagrand,57.92,23.11,60,0
.goto Nagrand,57.71,20.88,60,0
.goto Nagrand,55.71,20.76,60,0
.goto Nagrand,52.57,22.34,60,0
.goto Nagrand,50.79,19.94,60,0
.goto Nagrand,51.26,24.12,60,0
.goto Nagrand,51.50,26.70,60,0
.goto Nagrand,50.31,27.35,60,0
.goto Nagrand,48.83,27.92,60,0
.goto Nagrand,46.77,28.29,60,0
.goto Nagrand,47.42,33.33,60,0
.goto Nagrand,53.23,28.38,60,0
>>掠夺地上的|cRXP_PICK_挖掘的大肠杆菌|r粪便
.complete 9800,1 
step
.goto Nagrand,60.81,22.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师鲁艾普|r
.turnin 9800 >>交任务: |cRXP_FRIENDLY_稀有的豆子|r
.accept 9804 >>接任务: |cRXP_LOOT_天歌湖的元素|r
.target Elementalist Lo'ap
step
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈达乌|r
.turnin 9821 >>交任务: |cRXP_FRIENDLY_吞食诅咒|r
.unitscan Gordawg
.isQuestComplete 9821
step
#questguide << !tbc
#label Gordawg3
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈达乌|r
.accept 9849 >>接任务: |cRXP_LOOT_打碎外壳|r
.unitscan Gordawg
.isQuestTurnedIn 9821
step << !Warlock
#completewith next
.cast 31920 >>使用包中的|T133999:0|t[Nagrand Cherry]
.use 24421
step
.goto Nagrand,61.62,29.65,60,0
.goto Nagrand,60.41,27.38,60,0
.goto Nagrand,59.40,27.55,60,0
.goto Nagrand,54.80,25.90,60,0
.goto Nagrand,61.62,29.65,60,0
.goto Nagrand,60.41,27.38,60,0
.goto Nagrand,59.40,27.55,60,0
.goto Nagrand,54.80,25.90
.use 24421 >>杀死|cRXP_ENEMY_Lake Spirits|r
.complete 9804,1 
.mob Lake Spirit
step
.goto Nagrand,60.81,22.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师鲁艾普|r
.turnin 9804 >>交任务: |cRXP_FRIENDLY_天歌湖的元素|r
.accept 9805 >>接任务: |cRXP_LOOT_伊森拉图斯的祝福|r
.target Elementalist Lo'ap
step
#optional
#completewith Telaar2
>>杀死|cRXP_ENEMY_Wild Elekks|r。掠夺它们的|cRXX_Loot_TASK|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#optional
#completewith ThorngrazersEnd
>>杀死|cRXP_ENEMY_Clefthove公牛|r
.complete 9850,1 
.mob Clefthoof Bull
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Talbuk荆棘食草动物|r
.complete 9858,1 
.mob Talbuk Thorngrazer
step
.goto Nagrand,47.37,34.95,60,0
.goto Nagrand,46.08,33.41,60,0
.goto Nagrand,42.95,30.75,60,0
.goto Nagrand,41.16,26.99,60,0
.goto Nagrand,40.03,26.17,60,0
.goto Nagrand,38.03,27.55,60,0
.goto Nagrand,36.34,26.96,60,0
.goto Nagrand,35.40,25.60,60,0
.goto Nagrand,34.49,21.76,60,0
.goto Nagrand,33.78,20.12,60,0
.goto Nagrand,40.03,26.17
.line Nagrand,47.37,34.95,46.08,33.41,42.95,30.75,41.16,26.99,40.03,26.17,38.03,27.55,36.34,26.96,35.40,25.60,34.49,21.76,33.78,20.12
.use 24559 >>杀死|cRXP_ENEMY_Murkblood入侵者|r。掠夺他们的|cRXP_Loot_Plans|r。点击您包中的|T134269:0|t[Murkbloode Invasion Plans]
.collect 24559,1,9871 
.accept 9871 >>接任务: |cRXP_LOOT_暗血入侵者|r
.unitscan Murkblood Invader
step
#label ThorngrazersEnd
#loop
.line Nagrand,53.23,28.38,53.12,25.86,54.63,23.85,57.92,23.11,57.71,20.88,55.71,20.76,52.57,22.34,50.79,19.94,51.26,24.12,51.50,26.70,50.31,27.35,48.83,27.92,46.77,28.29,47.42,33.33,53.23,28.38
.goto Nagrand,53.23,28.38,60,0
.goto Nagrand,53.12,25.86,60,0
.goto Nagrand,54.63,23.85,60,0
.goto Nagrand,57.92,23.11,60,0
.goto Nagrand,57.71,20.88,60,0
.goto Nagrand,55.71,20.76,60,0
.goto Nagrand,52.57,22.34,60,0
.goto Nagrand,50.79,19.94,60,0
.goto Nagrand,51.26,24.12,60,0
.goto Nagrand,51.50,26.70,60,0
.goto Nagrand,50.31,27.35,60,0
.goto Nagrand,48.83,27.92,60,0
.goto Nagrand,46.77,28.29,60,0
.goto Nagrand,47.42,33.33,60,0
.goto Nagrand,53.23,28.38,60,0
>>杀死|cRXP_ENEMY_Talbuk荆棘食草动物|r
.complete 9858,1 
.mob Talbuk Thorngrazer
step
#loop
.line Nagrand,50.79,27.99,48.31,31.88,47.13,39.34,48.66,40.86,51.65,39.18,50.33,35.67,50.95,31.54,52.50,29.87,50.79,27.99
.goto Nagrand,50.79,27.99,60,0
.goto Nagrand,48.31,31.88,60,0
.goto Nagrand,47.13,39.34,60,0
.goto Nagrand,48.66,40.86,60,0
.goto Nagrand,51.65,39.18,60,0
.goto Nagrand,50.33,35.67,60,0
.goto Nagrand,50.95,31.54,60,0
.goto Nagrand,52.50,29.87,60,0
.goto Nagrand,50.79,27.99,60,0
>>杀死|cRXP_ENEMY_Clefthove公牛|r
.complete 9850,1 
.mob Clefthoof Bull
step
.goto Nagrand,41.18,44.33
>>如果联盟控制了哈拉
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kartos|r
*If the Horde or nobody is controlling Halaa, skip this step
.accept 10076 >>接任务: |cRXP_LOOT_沃舒古水晶尘|r
.turnin 10076 >>交任务: |cRXP_FRIENDLY_沃舒古水晶尘|r
.itemcount 26043,20 
.target Chief Researcher Kartos
step
#questguide << !tbc
#optional
#completewith next
>>杀死|cRXP_ENEMY_Ravenous Windrocs|r
.complete 9855,1 
.mob Ravenous Windroc
step
#questguide << !tbc
.goto Nagrand,51.82,56.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者尼特林|r
.turnin 10251 >>交任务: |cRXP_FRIENDLY_主人的伟大设计？|r
.accept 10252 >>接任务: |cRXP_LOOT_亡者的视界|r
.isQuestTurnedIn 10231
.target Nitrin the Learned
step
#loop
.line Nagrand,49.47,58.46,51.83,61.23,50.08,63.89,49.10,61.11,47.43,60.82,43.08,56.34,43.82,54.76,47.43,60.82,49.47,58.46
.goto Nagrand,49.47,58.46,60,0
.goto Nagrand,51.83,61.23,60,0
.goto Nagrand,50.08,63.89,60,0
.goto Nagrand,49.10,61.11,60,0
.goto Nagrand,47.43,60.82,60,0
.goto Nagrand,43.08,56.34,60,0
.goto Nagrand,43.82,54.76,60,0
.goto Nagrand,47.43,60.82,60,0
.goto Nagrand,49.47,58.46,60,0
>>杀死|cRXP_ENEMY_Ravenous Windrocs|r
.complete 9855,1 
.mob Ravenous Windroc
step
.goto Nagrand,29.1,56.9
.use 24559 >>杀死|cRXP_ENEMY_Murkblood入侵者|r。掠夺他们的|cRXP_Loot_Plans|r。点击您包中的|T134269:0|t[Murkbloode Invasion Plans]
.collect 24559,1,9871 
.accept 9871 >>接任务: |cRXP_LOOT_暗血入侵者|r
.unitscan Murkblood Invader
step << !Shaman
.goto Nagrand,51.11,69.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_星界财团招募员|r
.accept 9913 >>接任务: |cRXP_LOOT_星界财团需要你！|r
.target Consortium Recruiter
step << Shaman
#completewith next
.hs >>赫斯到特拉尔
.cooldown item,6948,>2
step
#label Telaar2
.goto 1951/530,7231.500,-2489.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷克隆|r
.target Arechron
.turnin 9871 >>交任务: |cRXP_FRIENDLY_暗血入侵者|r
.accept 9873 >>接任务: |cRXP_LOOT_奥托尔，我的老朋友......|r
step
.goto 1951/530,7255.800,-2556.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手彬图克|r
.target Huntress Bintook
.turnin 9917 >>交任务: |cRXP_FRIENDLY_是我眼花了？|r
.accept 9918 >>接任务: |cRXP_LOOT_这是我的地盘！|r
step
.goto Nagrand,62.74,71.48
>>伤害|cRXP_ENEMY_结块|r至30%或更少生命值
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉普|r
.skipgossip
.complete 9918,1 
.target Lump
step
.goto 1951/530,7252.400,-2556.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手彬图克|r
.target Huntress Bintook
.turnin 9918 >>交任务: |cRXP_FRIENDLY_这是我的地盘！|r
.accept 9920 >>接任务: |cRXP_LOOT_击碎者姆摩尔|r
step
.goto 1951/530,7278.300,-2618.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_击碎者姆摩尔|r
.target Mo'mor the Breaker
.turnin 9920 >>交任务: |cRXP_FRIENDLY_击碎者姆摩尔|r
.accept 9921 >>接任务: |cRXP_LOOT_火刃废墟|r
step
.goto Nagrand,61.68,67.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦萨特|r
.turnin 10109 >>交任务: |cRXP_FRIENDLY_我想要这些鸟蛋！|r
.accept 10111 >>接任务: |cRXP_LOOT_给我鸟蛋！|r
.target Wazat
step
#completewith next
.goto Nagrand,61.82,68.84,30 >>使用Wazat旁边的Jump-A-Tron 4000获得慢速球buff。上山，然后跑到你南边的悬崖上，朝着有蛋窝的树跳去
.skill riding,225,1
step
.goto Nagrand,61.33,66.98
>>点击树上鸟巢里的蛋。一个|cRXP_ENEMY_Windroc Matriach|r将在你掠夺蛋后产卵。
.complete 10111,1 
.cast 3365
.timer 37,Bring Me The Egg! RP
step
>>杀死|cRXP_ENEMY_Windroc矩阵|r
>>把风筝放回Telaar，好让警卫帮你。请记住，你需要对任何一名守卫造成多数伤害才能获得击杀点数，否则你必须再次召唤|cRXP_ENEMY_Matriach|r。掠夺它的|cRXP_Loot_Talon|r。这个任务很难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。 <<tbc/wotlk
*|cRXP_WARN_The Matriarch IS slowable|r << tbc/wotlk
.goto Nagrand,61.57,66.52,0
.goto Nagrand,57.09,70.21
.complete 10111,2 
.unitscan Windroc Matriarch
step
.goto Nagrand,61.68,67.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦萨特|r
.turnin 10111 >>交任务: |cRXP_FRIENDLY_给我鸟蛋！|r
.target Wazat
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Wild Elekks|r。掠夺它们的|cRXX_Loot_TASK|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
#completewith CorkiC
>>杀死|cRXP_ENEMY_Boulderfist食人魔|r
.complete 9921,1 

.complete 9921,2 

step
.goto Nagrand,72.53,70.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考尔奇|r
.accept 9923 >>接任务: |cRXP_LOOT_救命啊！|r
.target Corki
step
#loop
.line Nagrand,72.24,70.14,73.43,71.66,74.64,71.55,73.99,70.78,72.45,67.91,72.24,70.14,72.45,67.91,75.82,68.49,75.56,64.67,76.17,62.47,78.16,58.99,76.17,62.47,73.67,62.37,74.25,64.80,75.82,68.49,72.45,67.91
.goto Nagrand,72.24,70.14,50,0
.goto Nagrand,73.43,71.66,50,0
.goto Nagrand,74.64,71.55,50,0
.goto Nagrand,73.99,70.78,50,0
.goto Nagrand,72.45,67.91,50,0
.goto Nagrand,72.24,70.14,50,0
.goto Nagrand,72.45,67.91,50,0
.goto Nagrand,75.82,68.49,50,0
.goto Nagrand,75.56,64.67,50,0
.goto Nagrand,76.17,62.47,50,0
.goto Nagrand,78.16,58.99,50,0
.goto Nagrand,76.17,62.47,50,0
.goto Nagrand,73.67,62.37,50,0
.goto Nagrand,74.25,64.80,50,0
.goto Nagrand,75.82,68.49,50,0
.goto Nagrand,72.45,67.91,50,0
>>杀死|cRXP_ENEMY_Boulderfirs食人魔|r。掠夺它们以获取|cRXP_Loot_Bolderfirs密钥|r
.collect 25490,1,9923,1 
.mob Boulderfist Crusher
.mob Boulderfist Mystic
step
#label CorkiC
.goto Nagrand,72.53,70.74
>>单击|cRXP_FRIENDLY_Corki|r笼子
.complete 9923,1 
.target Corki
step
#loop
.line Nagrand,72.24,70.14,73.43,71.66,74.64,71.55,73.99,70.78,72.45,67.91,72.24,70.14,72.45,67.91,75.82,68.49,75.56,64.67,76.17,62.47,78.16,58.99,76.17,62.47,73.67,62.37,74.25,64.80,75.82,68.49,72.45,67.91
.goto Nagrand,72.24,70.14,50,0
.goto Nagrand,73.43,71.66,50,0
.goto Nagrand,74.64,71.55,50,0
.goto Nagrand,73.99,70.78,50,0
.goto Nagrand,72.45,67.91,50,0
.goto Nagrand,72.24,70.14,50,0
.goto Nagrand,72.45,67.91,50,0
.goto Nagrand,75.82,68.49,50,0
.goto Nagrand,75.56,64.67,50,0
.goto Nagrand,76.17,62.47,50,0
.goto Nagrand,78.16,58.99,50,0
.goto Nagrand,76.17,62.47,50,0
.goto Nagrand,73.67,62.37,50,0
.goto Nagrand,74.25,64.80,50,0
.goto Nagrand,75.82,68.49,50,0
.goto Nagrand,72.45,67.91,50,0
>>杀死|cRXP_ENEMY_Boulderfist食人魔|r
.complete 9921,1 
.mob +Boulderfist Crusher
.complete 9921,2 
.mob +Boulderfist Mystic
step
#optional
#completewith Throne3
>>杀死|cRXP_ENEMY_Wild Elekks|r。掠夺它们的|cRXX_Loot_TASK|r
.collect 25463,3,9914,1 
.mob Wild Elekk
step
.use 24467 >>在Windyred Village的小屋里，用袋子里的活火
.complete 9805,4 
.goto Nagrand,72.74,54.68
.complete 9805,3 
.goto Nagrand,71.22,53.24
.complete 9805,2 
.goto Nagrand,70.75,51.11
.complete 9805,1 
.goto Nagrand,72.38,50.39
step
#label Saved3
#completewith Safari3
>>有时|cRXP_ENEMY_Gankly|r会出现在Safari中。这是一种罕见的事件
>>杀死|cRXP_ENEMY_Gankly|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉丝蒂·德米萨|r
.accept 9897 >>接任务: |cRXP_LOOT_我得救了！|r
.goto Nagrand,71.42,40.60,0
.unitscan Gankly Rottenfist
.target Kristen Dipswitch
step
#requires Saved3
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈罗德·兰恩|r
.turnin 9897 >>交任务: |cRXP_FRIENDLY_我得救了！|r
.goto Nagrand,71.38,40.62
.target Harold Lane
step
#label Safari3
>>返回内辛瓦利营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈罗德·兰恩|r, |cRXP_FRIENDLY_赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_“好儿子”沙度·远行者|r
.turnin 9858 >>交任务: |cRXP_FRIENDLY_狩猎塔布羊|r
.accept 9859 >>接任务: |cRXP_LOOT_狩猎塔布羊|r
.target +Harold Lane
.goto Nagrand,71.38,40.62
.turnin 9850 >>交任务: |cRXP_FRIENDLY_狩猎裂蹄牛|r
.accept 9851 >>接任务: |cRXP_LOOT_狩猎裂蹄牛|r
.target +Hemet Nesingwary
.goto Nagrand,71.52,40.82
.turnin 9855 >>交任务: |cRXP_FRIENDLY_狩猎风鹏|r
.accept 9856 >>接任务: |cRXP_LOOT_狩猎风鹏|r
.goto Nagrand,71.57,40.52
.target +Shado 'Fitz' Farstrider
step
#questguide << !tbc
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈达乌|r
.turnin 9821 >>交任务: |cRXP_FRIENDLY_吞食诅咒|r
.accept 9849 >>接任务: |cRXP_LOOT_打碎外壳|r
.unitscan Gordawg
step << !tbc
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈达乌|r
.turnin 9821 >>交任务: |cRXP_FRIENDLY_吞食诅咒|r
.unitscan Gordawg
step
#label Throne3
.goto Nagrand,60.81,22.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师鲁艾普|r
.turnin 9805 >>交任务: |cRXP_FRIENDLY_伊森拉图斯的祝福|r
.accept 9810 >>接任务: |cRXP_LOOT_污染的灵魂|r
.target Elementalist Lo'ap
step
#completewith Telaar3
.hs >>赫斯到特拉尔
step
#sticky
#label caravan1
.waypoint Nagrand,53.69,68.70,40,0
.waypoint Nagrand,54.01,69.11,40,0
.waypoint Nagrand,54.33,70.32,40,0
.waypoint Nagrand,54.75,70.41,40,0
.waypoint Nagrand,54.97,70.91,40,0
.waypoint Nagrand,55.30,71.42,40,0
.waypoint Nagrand,55.70,72.60,40,0
.waypoint Nagrand,55.61,73.18,40,0
.waypoint Nagrand,54.71,73.30,40,0
.waypoint Nagrand,54.53,73.66,40,0
.waypoint Nagrand,54.53,72.64,40,0
.waypoint Nagrand,54.30,72.28,40,0
.waypoint Nagrand,53.71,72.24,40,0
.waypoint Nagrand,53.52,71.94,40,0
.waypoint Nagrand,53.82,71.30,40,0
.waypoint Nagrand,53.42,70.82,40,0
.waypoint Nagrand,52.93,70.80,40,0
.waypoint Nagrand,53.16,70.24,40,0
.waypoint Nagrand,53.56,70.43,40,0
.waypoint Nagrand,54.10,69.56,40,0
.waypoint Nagrand,54.03,69.16,40,0
.waypoint Nagrand,53.69,68.70,40,0
.line Nagrand,53.69,68.70,54.03,69.16,54.10,69.56,53.56,70.43,53.16,70.24,52.93,70.80,53.42,70.82,53.82,71.30,53.52,71.94,53.71,72.24,54.30,72.28,54.53,72.64,54.53,73.66,54.71,73.30,55.61,73.18,55.70,72.60,55.30,71.42,54.97,70.91,54.75,70.41,54.33,70.32,54.01,69.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手琪玛|r
.accept 9956 >>接任务: |cRXP_WARN_被破坏的货车|r
.accept 9982 >>接任务: |cRXP_LOOT_他叫奥图里斯......|r
.unitscan Huntress Kima
.xp <66,1
step
#label kima2
#optional
#requires caravan1
#sticky
.waypoint Nagrand,53.69,68.70,40,0
.waypoint Nagrand,54.01,69.11,40,0
.waypoint Nagrand,54.33,70.32,40,0
.waypoint Nagrand,54.75,70.41,40,0
.waypoint Nagrand,54.97,70.91,40,0
.waypoint Nagrand,55.30,71.42,40,0
.waypoint Nagrand,55.70,72.60,40,0
.waypoint Nagrand,55.61,73.18,40,0
.waypoint Nagrand,54.71,73.30,40,0
.waypoint Nagrand,54.53,73.66,40,0
.waypoint Nagrand,54.53,72.64,40,0
.waypoint Nagrand,54.30,72.28,40,0
.waypoint Nagrand,53.71,72.24,40,0
.waypoint Nagrand,53.52,71.94,40,0
.waypoint Nagrand,53.82,71.30,40,0
.waypoint Nagrand,53.42,70.82,40,0
.waypoint Nagrand,52.93,70.80,40,0
.waypoint Nagrand,53.16,70.24,40,0
.waypoint Nagrand,53.56,70.43,40,0
.waypoint Nagrand,54.10,69.56,40,0
.waypoint Nagrand,54.03,69.16,40,0
.waypoint Nagrand,53.69,68.70,40,0
.line Nagrand,53.69,68.70,54.03,69.16,54.10,69.56,53.56,70.43,53.16,70.24,52.93,70.80,53.42,70.82,53.82,71.30,53.52,71.94,53.71,72.24,54.30,72.28,54.53,72.64,54.53,73.66,54.71,73.30,55.61,73.18,55.70,72.60,55.30,71.42,54.97,70.91,54.75,70.41,54.33,70.32,54.01,69.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手琪玛|r
.accept 9956 >>接任务: |cRXP_WARN_被破坏的货车|r
.unitscan Huntress Kima
step
#label Telaar3
.goto 1951/530,7278.200,-2618.400
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_击碎者姆摩尔|r
.target Mo'mor the Breaker
.turnin 9921 >>交任务: |cRXP_FRIENDLY_火刃废墟|r
.accept 9922 >>接任务: |cRXP_LOOT_纳格兰的峡谷|r
step
.goto 1951/530,7231.100,-2489.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷克隆|r
.target Arechron
.turnin 9923 >>交任务: |cRXP_FRIENDLY_救命啊！|r
.accept 9924 >>接任务: |cRXP_LOOT_考尔奇又走丢了！|r
step
#requires kima2
.goto Nagrand,51.11,69.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_星界财团招募员|r
.accept 9913 >>接任务: |cRXP_LOOT_星界财团需要你！|r
.target Consortium Recruiter
step
#optional
#completewith Corki2
.goto Nagrand,40.0,30.0,0
.goto Nagrand,50.0,56.0,0
>>杀死|cRXP_ENEMY_拳头战士|r和|cRXX_ENEMY_Mages|r
.complete 9922,1 
.mob +Boulderfist Warrior
.complete 9922,2 
.mob +Boulderfist Mage
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Boulderfist Warriors|r和|cRXP_ENEMY_Mages|r。掠夺它们以获得|cRXD_Loot_Cleaft Key|r
.collect 25509,1,9924,1 
.mob Boulderfist Warrior
.mob Boulderfist Mage
step
#loop
.goto Nagrand,44.87,49.83,60,0
.goto Nagrand,40.15,46.19,60,0
.goto Nagrand,39.99,37.46,60,0
.goto Nagrand,42.11,37.80,60,0
.goto Nagrand,45.28,42.85,60,0
.goto Nagrand,45.28,42.85,0
>>杀死|cRXP_ENEMY_Muck繁殖|r。掠夺它们的|cRXX_Loot_核心|r
.complete 9815,1 
.mob Muck Spawn
step
#loop
.goto Nagrand,41.33,32.64,50,0
.goto Nagrand,41.59,34.86,50,0
.goto Nagrand,40.49,33.98,50,0
.goto Nagrand,40.74,31.28,20,0
.goto Nagrand,39.42,30.73,20,0
.goto Nagrand,39.61,28.98,20,0
.goto Nagrand,39.36,27.61,20,0
.goto Nagrand,40.16,29.45,20,0
.goto Nagrand,41.33,32.64,50,0
.goto Nagrand,41.59,34.86,50,0
.goto Nagrand,40.49,33.98,50,0
.goto Nagrand,40.74,31.28,20,0
.goto Nagrand,39.42,30.73,20,0
.goto Nagrand,39.61,28.98,20,0
.goto Nagrand,39.36,27.61,20,0
.goto Nagrand,40.16,29.45,20,0
.goto Nagrand,40.16,29.45,0
>>杀死|cRXP_ENEMY_Boulderfist Warriors|r和|cRXP_ENEMY_Mages|r。掠夺它们以获得|cRXD_Loot_Cleaft Key|r
.collect 25509,1,9924,1 
.mob Boulderfist Warrior
.mob Boulderfist Mage
step
#label Corki2
.goto Nagrand,39.25,27.43
>>单击洞穴内的|cRXP_FRIENDLY_Corki|r笼子
.complete 9924,1 
.target Corki
step
#loop
.goto Nagrand,41.33,32.64,50,0
.goto Nagrand,41.59,34.86,50,0
.goto Nagrand,40.49,33.98,50,0
.goto Nagrand,40.74,31.28,20,0
.goto Nagrand,39.42,30.73,20,0
.goto Nagrand,39.61,28.98,20,0
.goto Nagrand,39.36,27.61,20,0
.goto Nagrand,40.16,29.45,20,0
.goto Nagrand,41.33,32.64,50,0
.goto Nagrand,41.59,34.86,50,0
.goto Nagrand,40.49,33.98,50,0
.goto Nagrand,40.74,31.28,20,0
.goto Nagrand,39.42,30.73,20,0
.goto Nagrand,39.61,28.98,20,0
.goto Nagrand,39.36,27.61,20,0
.goto Nagrand,40.16,29.45,20,0
.goto Nagrand,40.16,29.45,0
>>杀死|cRXP_ENEMY_拳头战士|r和|cRXX_ENEMY_Mages|r
.complete 9922,1 
.mob +Boulderfist Warrior
.complete 9922,2 
.mob +Boulderfist Mage
step
#questguide << !tbc
#optional
#completewith Beaks
.goto Nagrand,35.2,61.2,0
>>杀死|cRXP_ENEMY_Aged Clefthofs|r。掠夺他们的|cRXX_Loot_Blubber|r
.complete 10252,3 
.isOnQuest 10252
.mob Aged Clefthoof
step
#questguide << !tbc
#optional
#completewith next
>>杀死|cRXP_ENEMY_Greater Windrocs|r。掠夺他们的|cRXP-Loot_Beak|r
.complete 10252,2 
.isOnQuest 10252
.mob Greater Windroc
step
#loop
.line Nagrand,32.66,24.25,33.01,20.84,34.16,20.04,35.46,19.31,36.93,20.77,35.87,23.93,33.32,27.93,31.32,30.74,32.95,28.13,32.66,26.83,32.66,24.25
.goto Nagrand,32.66,26.83,60,0
.goto Nagrand,32.95,28.13,60,0
.goto Nagrand,31.32,30.74,60,0
.goto Nagrand,33.32,27.93,60,0
.goto Nagrand,35.87,23.93,60,0
.goto Nagrand,36.93,20.77,60,0
.goto Nagrand,35.46,19.31,60,0
.goto Nagrand,34.16,20.04,60,0
.goto Nagrand,33.01,20.84,60,0
.goto Nagrand,32.66,24.25,60,0
>>杀死|cRXP_ENEMY_Gutripper|r。抢走他的|cRXX_Loot_Eye。他顺时针巡逻，有时可能太高而拉不动。他跑得很快。
>>这项任务很困难。如果需要，为他找一个小组。如果你找不到一个团队或一个人，请跳过这一步。<< tbc/wotlk
.complete 9856,1 
.unitscan Gutripper
step
#questguide << !tbc
#label Beaks
#loop
.line Nagrand,35.97,29.37,35.71,18.67,32.69,22.30,33.39,26.11,30.88,32.97
.goto Nagrand,35.97,29.37,55,0
.goto Nagrand,35.71,18.67,55,0
.goto Nagrand,32.69,22.30,55,0
.goto Nagrand,33.39,26.11,55,0
.goto Nagrand,30.88,32.97,55,0
>>杀死|cRXP_ENEMY_Greater Windrocs|r。掠夺他们的|cRXP-Loot_Beak|r
.complete 10252,2 
.isOnQuest 10252
.mob Greater Windroc
step
#optional
#completewith Murkblood
.use 24560 >>在村民尸体上使用包中的|T135432:0|t[液体火火炬]
.complete 9874,1 
.target Sunspring Villager
step
#optional
#completewith StayCaptive
.goto Nagrand,33.2,46.6,0
>>杀死|cRXP_ENEMY_Murkblood Putrefiers|r、|cRXP_ENEMY_Scavengers|r和|cRXX_ENEMY_Raiders|r
.complete 9862,1 
.mob +Murkblood Putrifier
.complete 9878,1 
.mob +Murkblood Scavenger
.complete 9878,2 
.mob +Murkblood Raider
step
.goto Nagrand,30.83,42.36
>>杀死Murkblood的|cRXP_ENEMY_Ortor |r
.complete 9873,1 
.mob Ortor of Murkblood
step
.goto Nagrand,33.19,42.30
>>清除小屋周围的所有暴徒，确保你处于完全健康/魔法状态，然后再与里面的|cRXP_FRIENDLY_Kurenai Captive|r交谈 << !Rogue !Warrior !DK
>>清除小屋周围的所有暴徒，确保你完全健康，然后再与里面的|cRXP_FRIENDLY_Kurenai Captive|r交谈 << Rogue/Warrior/DK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库雷尼俘虏|r
.accept 9879 >>接任务: |cRXP_LOOT_卡达什图腾|r
.target Kurenai Captive
step
#label StayCaptive
.goto Nagrand,32.37,40.04,50,0
.goto Nagrand,31.57,38.77
>>护送|cRXP_FRIENDLY_Kurenai俘虏|r。准备好冷静下来，在岔路口附近伏击
.complete 9879,1 
.target Kurenai Captive
step
#label Murkblood
>>杀死|cRXP_ENEMY_Murkblood Putrefiers|r、|cRXP_ENEMY_Scavengers|r和|cRXX_ENEMY_Raiders|r
.complete 9862,1 
.mob +Murkblood Putrifier
.goto Nagrand,31.49,46.91,50,0
.goto Nagrand,32.98,46.84,50,0
.goto Nagrand,33.98,47.50,50,0
.goto Nagrand,34.28,45.97,50,0
.goto Nagrand,33.49,43.25,50,0
.goto Nagrand,32.24,43.46
.complete 9878,2 
.mob +Murkblood Raider
.goto Nagrand,31.48,42.47,50,0
.goto Nagrand,31.14,43.33,50,0
.goto Nagrand,32.10,46.26,50,0
.goto Nagrand,32.77,45.08,50,0
.goto Nagrand,33.31,42.50,50,0
.goto Nagrand,32.24,43.46
.complete 9878,1 
.mob +Murkblood Scavenger
.goto Nagrand,32.20,45.33,50,0
.goto Nagrand,33.31,44.25,50,0
.goto Nagrand,32.84,42.59,50,0
.goto Nagrand,33.23,40.93,50,0
.goto Nagrand,31.58,39.66,50,0
.goto Nagrand,30.66,41.29,50,0
.goto Nagrand,31.14,41.52,50,0
.goto Nagrand,32.24,43.46
step
#optional
#completewith Surgers
.goto Nagrand,33.17,48.36,50,0
.use 24560 >>在村民尸体上使用包中的|T135432:0|t[液体火火炬]
.complete 9874,1 
.target Sunspring Villager
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Lake Surgers|r << !Mage
>>杀死|cRXP_ENEMY_Lake Surgers|r。小心，因为他们对霜冻免疫 << Mage
.complete 9810,2 
.mob Lake Surger
step
>>杀死|cRXP_ENEMY_Watoosun的污染精华|r
.complete 9810,1 
.goto Nagrand,33.03,50.86
.mob Watoosun's Polluted Essence
step
#label Surgers
.goto Nagrand,30.98,50.56,60,0
.goto Nagrand,33.23,48.87,60,0
.goto Nagrand,35.17,46.01,60,0
.goto Nagrand,36.91,46.72,60,0
.goto Nagrand,33.26,54.42,60,0
.goto Nagrand,30.98,50.56
>>杀死|cRXP_ENEMY_Lake Surgers|r << !Mage
>>杀死|cRXP_ENEMY_Lake Surgers|r。小心，因为他们对霜冻免疫 << Mage
.complete 9810,2 
.mob Lake Surger
step
.goto Nagrand,33.17,48.36,50,0
.goto Nagrand,34.52,47.21,50,0
.goto Nagrand,34.96,46.15
.use 24560 >>在村民尸体上使用包中的|T135432:0|t[液体火火炬]
.complete 9874,1 
.target Sunspring Villager
step
#optional
#completewith next
.line Nagrand,26.34,51.07,25.93,53.93,25.27,51.74,24.45,50.91,23.69,49.61,24.47,49.04,23.93,48.94,24.36,46.98,23.77,44.47,25.33,41.39,25.72,40.82,26.35,39.23,28.22,38.16,28.35,37.22,28.12,35.92,29.35,34.24,30.07,34.90,30.64,35.79,30.65,37.70,28.90,38.17,28.49,39.43,27.84,42.01,27.25,45.30,26.91,46.66,26.65,48.17,26.34,51.07
>>杀死|cRXP_ENEMY_Bach'lor|r。抢夺他的|cRXX_Loot_Hoop|r。他逆时针巡逻。
>>这项任务很困难。如果需要，为他找一个小组。如果你找不到一个团队或一个人，请跳过这一步。<< tbc/wotlk
.complete 9859,1 
.unitscan Bach'lor
step
.goto Nagrand,27.33,43.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手琪玛|r
.turnin 9982 >>交任务: |cRXP_FRIENDLY_他叫奥图里斯......|r
.isOnQuest 9982
.target Altruis the Sufferer
step
#questguide << tbc/wotlk
.goto Nagrand,27.33,43.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_受难者奥图里斯|r
.accept 9991 >>接任务: |cRXP_LOOT_侦查大地|r
.timer 135,Surveying the Land RP
.target Altruis the Sufferer
.xp <66,1
step
#questguide << tbc/wotlk
.goto Nagrand,27.33,43.09
>>等飞机起飞
.turnin 9991 >>交任务: |cRXP_FRIENDLY_侦查大地|r
.accept 9999 >>接任务: |cRXP_WARN_争取时间|r
.target Altruis the Sufferer
.xp <66,1
step
#questguide << tbc/wotlk
#loop
.goto 1951/530,8987.400,-1346.100,60,0
.goto 1951/530,8975.500,-1357.300,60,0
.goto 1951/530,8853.800,-1347.800,60,0
.goto 1951/530,8987.400,-1346.100,0
.goto 1951/530,8975.500,-1357.300,0
.goto 1951/530,8853.800,-1347.800,0
>>杀死|cRXP_ENEMY_Gan'arg Tinkerer|r，|cRXD_ENEMY_Mo'arg工程师|r和|cRXP_ENEMY_Felguard退伍军人|r
.complete 9999,3 
.mob +Gan'arg Tinkerer
.complete 9999,2 
.mob +Mo'arg Engineer
.complete 9999,1 
.mob +Felguard Legionnaire
.xp <66,1
step
#questguide << tbc/wotlk
.goto 1951/530,8785.601,-1543.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_受难者奥图里斯|r
.target Altruis the Sufferer
.turnin 9999 >>交任务: |cRXP_FRIENDLY_争取时间|r
.accept 10001 >>接任务: |cRXP_WARN_主规划师|r
.xp <66,1
step
#questguide << tbc/wotlk
.goto 1951/530,8990.500,-1234.000
>>杀死|cRXP_ENEMY_主计划者|r并掠夺他的|cRXP-loot_蓝图|r
.complete 10001,1 
.xp <66,1
.mob Mo'arg Master Planner
step
#questguide << tbc/wotlk
.goto 1951/530,8785.500,-1545.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_受难者奥图里斯|r
.target Altruis the Sufferer
.turnin 10001 >>交任务: |cRXP_FRIENDLY_主规划师|r
.xp <66,1
step
#questguide << !tbc
#optional
#completewith Banthar
.goto Nagrand,35.2,61.2,0
>>杀死|cRXP_ENEMY_Aged Clefthofs|r。掠夺他们的|cRXX_Loot_Blubber|r
.complete 10252,3 
.isOnQuest 10252
.mob Aged Clefthoof
step
#questguide << !tbc
#optional
#completewith next
.goto Nagrand,24.37,41.81,0
>>杀死一个|cRXP_ENEMY_Mountain Gronn|r。掠夺它的|cRXX_Loot_Eyerball|r
.complete 10252,1 
.isOnQuest 10252
.unitscan Mountain Gronn
step
#label Bachlor
#loop
.goto Nagrand,26.34,51.07,60,0
.goto Nagrand,25.93,53.93,60,0
.goto Nagrand,25.27,51.74,60,0
.goto Nagrand,24.45,50.91,60,0
.goto Nagrand,23.69,49.61,60,0
.goto Nagrand,24.47,49.04,60,0
.goto Nagrand,23.93,48.94,60,0
.goto Nagrand,24.36,46.98,60,0
.goto Nagrand,23.77,44.47,60,0
.goto Nagrand,25.33,41.39,60,0
.goto Nagrand,25.72,40.82,60,0
.goto Nagrand,26.35,39.23,60,0
.goto Nagrand,28.22,38.16,60,0
.goto Nagrand,28.35,37.22,60,0
.goto Nagrand,28.12,35.92,60,0
.goto Nagrand,29.35,34.24,60,0
.goto Nagrand,30.07,34.90,60,0
.goto Nagrand,30.64,35.79,60,0
.goto Nagrand,30.65,37.70,60,0
.goto Nagrand,28.90,38.17,60,0
.goto Nagrand,28.49,39.43,60,0
.goto Nagrand,27.84,42.01,60,0
.goto Nagrand,27.25,45.30,60,0
.goto Nagrand,26.91,46.66,60,0
.goto Nagrand,26.65,48.17,60,0
.line Nagrand,26.34,51.07,25.93,53.93,25.27,51.74,24.45,50.91,23.69,49.61,24.47,49.04,23.93,48.94,24.36,46.98,23.77,44.47,25.33,41.39,25.72,40.82,26.35,39.23,28.22,38.16,28.35,37.22,28.12,35.92,29.35,34.24,30.07,34.90,30.64,35.79,30.65,37.70,28.90,38.17,28.49,39.43,27.84,42.01,27.25,45.30,26.91,46.66,26.65,48.17,26.34,51.07
>>杀死|cRXP_ENEMY_Bach'lor|r。抢夺他的|cRXX_Loot_Hoop|r。他逆时针巡逻。
>>这项任务很困难。如果需要，为他找一个小组。如果你找不到一个团队或一个人，请跳过这一步。<<tbc/wotlk
.complete 9859,1 
.unitscan Bach'lor
step
#questguide << !tbc
.goto Nagrand,24.37,41.81
>>杀死一个|cRXP_ENEMY_Mountain Gronn|r。掠夺它的|cRXX_Loot_Eyerball|r
.complete 10252,1 
.isOnQuest 10252
.unitscan Mountain Gronn
step
.goto 1951/530,8540.400,-2049.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德雷克|r
.target Shadrek
.accept 9914 >>接任务: |cRXP_LOOT_象牙生意|r
.turnin 9914 >>交任务: |cRXP_FRIENDLY_象牙生意|r
.itemcount 25463,3
step
.goto 1951/530,8562.300,-2085.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰赫|r
.target Gezhe
.turnin 9913 >>交任务: |cRXP_FRIENDLY_星界财团需要你！|r
.accept 9882 >>接任务: |cRXP_LOOT_偷盗贼的东西......能算偷么？|r
step
.goto 1951/530,8594.900,-2099.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟利德|r
.target Zerid
.accept 9900 >>接任务: |cRXP_LOOT_加瓦克希|r
.accept 9925 >>接任务: |cRXP_LOOT_安全问题|r
step
#optional
#completewith Voidspawns
>>杀死|cRXP_ENEMY_Wild Elekks|r。掠夺它们的|cRXX_Loot_TASK|r
.collect 25463,3,9914,1 
.unitscan Wild Elekk
step
#optional
#completewith Gava
>>杀死|cRXP_ENEMY_Raiders|r。掠夺他们的|cRXP_Loot_Crystals|r。也可以在地面上找到|cRXP-Loot_Cryptos|r
>>杀死|cRXP_ENEMY_Voidpawns|r
.complete 9882,1 
.mob +Vir'aani Raider
.complete 9925,1 
.mob +Voidspawn
step
#questguide << !tbc
.goto Nagrand,25.84,73.34,60,0
.goto Nagrand,27.73,74.09,60,0
.goto Nagrand,28.36,78.70,60,0
.goto Nagrand,32.07,81.44,60,0
.goto Nagrand,40.34,84.18
.use 24501 >>在|cRXP_ENEMY_Shattered Rumblers|r上使用|T135242:0|t[Gordawg's Boulder]生成古鲁克|r的|cRXD_ENEMY_Minions。杀死它们。移动时可以使用|T135242:0|tBoulder
.complete 9849,1 
.mob Shattered Rumbler
.mob Minion of Gurok
step
#label Gava
.goto Nagrand,42.39,73.49,50,0
.goto Nagrand,43.65,74.59,50,0
.goto Nagrand,43.47,72.86,50,0
.goto Nagrand,42.45,72.32,50,0
.goto Nagrand,41.53,71.33
>>杀死|cRXP_ENEMY_Gava'xi|r。他从小悬崖巡逻到稍北的水晶
.complete 9900,1 
.unitscan Gava'xi
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Voidpawns|r
.complete 9925,1 
.mob Voidspawn
step
#loop
.goto Nagrand,41.61,70.68,50,0
.goto Nagrand,36.88,66.96,50,0
.goto Nagrand,34.53,62.93,60,0
.goto Nagrand,30.53,76.12,60,0
.goto Nagrand,41.61,70.68,0
.goto Nagrand,36.88,66.96,0
.goto Nagrand,34.53,62.93,0
.goto Nagrand,30.53,76.12,0
>>杀死|cRXP_ENEMY_Raiders|r。掠夺他们的|cRXP_Loot_Crystals|r。也可以在地面上找到|cRXP-Loot_Cryptos|r
.complete 9882,1 
.mob Vir'aani Raider
step
#label Voidspawns
#loop
.line Nagrand,30.51,66.79,32.23,69.85,31.75,74.99,36.51,77.38,38.03,79.58,40.19,77.22,37.87,76.04,39.87,72.76,39.35,67.61,41.46,62.82,37.64,66.21,34.90,65.37,32.91,67.36,30.51,66.79
.goto Nagrand,30.51,66.79,60,0
.goto Nagrand,32.23,69.85,60,0
.goto Nagrand,31.75,74.99,60,0
.goto Nagrand,36.51,77.38,60,0
.goto Nagrand,38.03,79.58,60,0
.goto Nagrand,40.19,77.22,60,0
.goto Nagrand,37.87,76.04,60,0
.goto Nagrand,39.87,72.76,60,0
.goto Nagrand,39.35,67.61,60,0
.goto Nagrand,41.46,62.82,60,0
.goto Nagrand,37.64,66.21,60,0
.goto Nagrand,34.90,65.37,60,0
.goto Nagrand,32.91,67.36,60,0
.goto Nagrand,30.51,66.79,60,0
>>杀死|cRXP_ENEMY_Voidpawns|r
.complete 9925,1 
.mob Voidspawn
step
#optional
#completewith AerisL
>>杀死|cRXP_ENEMY_Banthar|r。为他的|cRXX_Loot_Horn|r抢劫他。他四处巡逻。
>>这项任务很困难。如果需要，为他找一个小组。如果你找不到一个团队或一个人，请跳过这一步。<<tbc/wotlk
.complete 9851,1 
.unitscan Banthar
step
#loop
.line Nagrand,44.13,76.74,35.70,58.91,29.60,61.89,33.11,77.90,44.13,76.74
.goto Nagrand,44.13,76.74,60,0
.goto Nagrand,35.70,58.91,60,0
.goto Nagrand,29.60,61.89,60,0
.goto Nagrand,33.11,77.90,60,0
.goto Nagrand,44.13,76.74,60,0
>>杀死|cRXP_ENEMY_Wild Elekks|r。掠夺它们的|cRXX_Loot_TASK|r
>>|cRXP_WARN_公牛Elekks不会丢下他们！|r
.collect 25463,3,9914,1 
.unitscan Wild Elekk
step
#label AerisL
.goto 1951/530,8595.000,-2100.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟利德|r
.target Zerid
.turnin 9900 >>交任务: |cRXP_FRIENDLY_加瓦克希|r
.turnin 9925 >>交任务: |cRXP_FRIENDLY_安全问题|r
step
.goto 1951/530,8563.800,-2086.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰赫|r
.target Gezhe
.turnin 9882 >>交任务: |cRXP_FRIENDLY_偷盗贼的东西......能算偷么？|r
step
.goto Nagrand,31.77,56.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德雷克|r
.accept 9914 >>接任务: |cRXP_LOOT_象牙生意|r
.turnin 9914 >>交任务: |cRXP_FRIENDLY_象牙生意|r
.target Shadrek
step
#loop
.line Nagrand,30.88,63.61,32.53,61.08,33.99,60.44,36.31,58.76,37.39,58.63,38.67,59.52,40.46,60.74,44.52,61.64,46.20,63.09,46.71,66.40,46.31,67.69,45.46,68.24,43.63,68.35,43.05,67.77,42.75,66.72,42.56,64.36,41.98,62.64,40.82,61.30,38.67,59.52
.goto Nagrand,30.88,63.61,50,0
.goto Nagrand,32.53,61.08,50,0
.goto Nagrand,33.99,60.44,50,0
.goto Nagrand,36.31,58.76,50,0
.goto Nagrand,37.39,58.63,50,0
.goto Nagrand,38.67,59.52,50,0
.goto Nagrand,40.46,60.74,50,0
.goto Nagrand,44.52,61.64,50,0
.goto Nagrand,46.20,63.09,50,0
.goto Nagrand,46.71,66.40,50,0
.goto Nagrand,46.31,67.69,50,0
.goto Nagrand,45.46,68.24,50,0
.goto Nagrand,43.63,68.35,50,0
.goto Nagrand,43.05,67.77,50,0
.goto Nagrand,42.75,66.72,50,0
.goto Nagrand,42.56,64.36,50,0
.goto Nagrand,41.98,62.64,50,0
.goto Nagrand,40.82,61.30,50,0
.goto Nagrand,38.67,59.52,50,0
>>杀死|cRXP_ENEMY_Banthar|r。为他的|cRXX_Loot_Horn|r抢劫他。他四处巡逻。
>>这项任务很困难。如果需要，为他找一个小组。如果你找不到一个团队或一个人，请跳过这一步。<<tbc/wotlk
.complete 9851,1 
.unitscan Banthar
step
#questguide << !tbc
#loop
.line Nagrand,30.88,63.61,32.53,61.08,33.99,60.44,36.31,58.76,37.39,58.63,38.67,59.52,40.46,60.74,44.52,61.64,46.20,63.09,46.71,66.40,46.31,67.69,45.46,68.24,43.63,68.35,43.05,67.77,42.75,66.72,42.56,64.36,41.98,62.64,40.82,61.30,38.67,59.52
.goto Nagrand,30.88,63.61,50,0
.goto Nagrand,32.53,61.08,50,0
.goto Nagrand,33.99,60.44,50,0
.goto Nagrand,36.31,58.76,50,0
.goto Nagrand,37.39,58.63,50,0
.goto Nagrand,38.67,59.52,50,0
.goto Nagrand,40.46,60.74,50,0
.goto Nagrand,44.52,61.64,50,0
.goto Nagrand,46.20,63.09,50,0
.goto Nagrand,46.71,66.40,50,0
.goto Nagrand,46.31,67.69,50,0
.goto Nagrand,45.46,68.24,50,0
.goto Nagrand,43.63,68.35,50,0
.goto Nagrand,43.05,67.77,50,0
.goto Nagrand,42.75,66.72,50,0
.goto Nagrand,42.56,64.36,50,0
.goto Nagrand,41.98,62.64,50,0
.goto Nagrand,40.82,61.30,50,0
.goto Nagrand,38.67,59.52,50,0
>>杀死|cRXP_ENEMY_Aged Clefthofs|r。掠夺他们的|cRXX_Loot_Blubber|r
.complete 10252,3 
.isOnQuest 10252
.unitscan Aged Clefthoof
step
#questguide << !tbc
.goto Nagrand,51.82,56.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者尼特林|r
.turnin 10252 >>交任务: |cRXP_FRIENDLY_亡者的视界|r
.isQuestComplete 10252
.target Nitrin the Learned
step
#questguide << !tbc
#sticky
#optional
.abandon 10252 >>放弃对死者的幻想
step << Shaman
#completewith next
.hs >>赫斯到特拉尔
step
#sticky
#label problem
.goto 1951/530,7286.700,-2622.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者普里鲁鲁克|r
.target Poli'lukluk the Wiser
.turnin 9878 >>交任务: |cRXP_FRIENDLY_解决问题|r
step
.goto 1951/530,7278.000,-2618.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mo'mor the Breaker
.turnin 9922 >>交任务: |cRXP_FRIENDLY_纳格兰的峡谷|r
.accept 10108 >>接任务: |cRXP_LOOT_外交手段|r
.target Mo'mor the Breaker
step
.goto 1951/530,7286.000,-2612.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知欧图布|r
.target Otonbu the Sage
.turnin 9874 >>交任务: |cRXP_FRIENDLY_阻止污染|r
step
#requires problem
.goto 1951/530,7270.600,-2568.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监护者莫布吉尔|r
.target Warden Moi'bff Jill
.accept 10476 >>接任务: |cRXP_LOOT_强悍的敌人|r
.turnin 10476 >>交任务: |cRXP_FRIENDLY_强悍的敌人|r
.itemcount 25433,10 
step
.goto 1951/530,7231.500,-2489.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷克隆|r
.target Arechron
.turnin 9873 >>交任务: |cRXP_FRIENDLY_奥托尔，我的老朋友......|r
.turnin 9924 >>交任务: |cRXP_FRIENDLY_考尔奇又走丢了！|r
.turnin 9879 >>交任务: |cRXP_FRIENDLY_卡达什图腾|r
.accept 9954 >>接任务: |cRXP_LOOT_考尔奇的赎金|r
step
.goto Nagrand,73.81,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰特瑞索·火刃|r
.complete 10108,1 
.skipgossip 18261,1
.target Lantresor of the Blade
step
.goto Nagrand,73.81,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰特瑞索·火刃|r
.turnin 10108 >>交任务: |cRXP_FRIENDLY_外交手段|r
.accept 9928 >>接任务: |cRXP_LOOT_欺诈所需的军备|r
.accept 9927 >>接任务: |cRXP_LOOT_无情的计谋|r
.target Lantresor of the Blade
step
#optional
#aldor
#completewith ksf1
>>杀死|cRXP_ENEMY_Kil'sorrow|r兽人。掠夺他们的|cRXP_Loot_Marks of Kil'jaeden|r，保存他们稍后进行任务
.collect 29425,10,10325,1 
step
#optional
#completewith next
.goto Nagrand,70.51,79.79,0
.use 25552 >>杀死|cRXP_ENEMY_Orcs|r。在他们的尸体上使用你袋子里的|T132484:0|t[Warmaul Ogre Banner]
>>偷走地上的|cRXP_PICK_木箱|r
.complete 9936,2 
.complete 9927,1 
.complete 9928,1 
.mob Kil'sorrow Spellbinder
.mob Kil'sorrow Cultist
.mob Kil'sorrow Deathsworn
.mob Kil'sorrow Invader
.mob Kil'sorrow Ritualist
.mob Kil'sorrow Agent
step
.goto Nagrand,70.98,81.48,30,0
.goto Nagrand,71.16,82.36
>>在堡垒内杀死|cRXP_ENEMY_Giselda|r
.complete 9936,1 
.unitscan Giselda the Crone
step
#label ksf1
#loop
.line Nagrand,71.70,80.65,72.14,82.16,71.70,79.25,70.26,79.11,69.46,79.66,68.34,82.79,69.64,81.65,70.83,80.61,71.70,80.65
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
.use 25552 >>杀死|cRXP_ENEMY_Orcs|r。在他们的尸体上使用你袋子里的|T132484:0|t[Warmaul Ogre Banner]
>>掠夺地上的木箱
.complete 9936,2 
.complete 9927,1 
.complete 9928,1 
.mob Kil'sorrow Spellbinder
.mob Kil'sorrow Cultist
.mob Kil'sorrow Deathsworn
.mob Kil'sorrow Invader
.mob Kil'sorrow Ritualist
.mob Kil'sorrow Agent
step
#aldor
#loop
.line Nagrand,71.70,80.65,72.14,82.16,71.70,79.25,70.26,79.11,69.46,79.66,68.34,82.79,69.64,81.65,70.83,80.61,71.70,80.65
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
.goto Nagrand,71.70,80.65,40,0
.goto Nagrand,72.14,82.16,40,0
.goto Nagrand,71.70,79.25,40,0
.goto Nagrand,70.26,79.11,40,0
.goto Nagrand,69.46,79.66,40,0
.goto Nagrand,68.34,82.79,40,0
.goto Nagrand,69.64,81.65,40,0
.goto Nagrand,70.83,80.61,40,0
>>杀死|cRXP_ENEMY_Kil'sorrow|r兽人。掠夺他们的|cRXP_Loot_Marks of Kil'jaeden|r，保存他们稍后进行任务
.collect 29425,10,10325,1 
.mob Kil'sorrow Spellbinder
.mob Kil'sorrow Cultist
.mob Kil'sorrow Deathsworn
.mob Kil'sorrow Invader
.mob Kil'sorrow Ritualist
.mob Kil'sorrow Agent
step
.goto Nagrand,73.81,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰特瑞索·火刃|r
.turnin 9928 >>交任务: |cRXP_FRIENDLY_欺诈所需的军备|r
.turnin 9927 >>交任务: |cRXP_FRIENDLY_无情的计谋|r
.accept 9931 >>接任务: |cRXP_LOOT_以牙还牙|r
.accept 9932 >>接任务: |cRXP_LOOT_尸证|r
.target Lantresor of the Blade
step
#sticky
#hidewindow
#label saved4a
#completewith Safari4
.subzone 3673 >>1
step
#requires saved4a
#label Saved4
#completewith Safari4
>>有时|cRXP_ENEMY_Gankly|r会出现在Safari中。这是一种罕见的事件
>>杀死|cRXP_ENEMY_Gankly|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉丝蒂·德米萨|r
.accept 9897 >>接任务: |cRXP_LOOT_我得救了！|r
.goto Nagrand,71.42,40.60,0
.unitscan Gankly Rottenfist
.target Kristen Dipswitch
step
#requires Saved4
#completewith Safari4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈罗德·兰恩|r
.turnin 9897 >>交任务: |cRXP_FRIENDLY_我得救了！|r
.goto Nagrand,71.38,40.62
.target Harold Lane
step
#sticky
#label talbuk3
.goto 1951/530,6350.300,-1455.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈罗德·兰恩|r
.target Harold Lane
.turnin 9859 >>交任务: |cRXP_FRIENDLY_狩猎塔布羊|r
.isQuestComplete 9859
step
#sticky
#label windroc3
.goto 1951/530,6342.000,-1451.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_“好儿子”沙度·远行者|r
.target Shado 'Fitz' Farstrider
.turnin 9856 >>交任务: |cRXP_FRIENDLY_狩猎风鹏|r
.isQuestComplete 9856
step
.goto 1951/530,6343.300,-1461.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.target Hemet Nesingwary
.turnin 9851 >>交任务: |cRXP_FRIENDLY_狩猎裂蹄牛|r
.isQuestComplete 9851
step
#requires windroc3
step
#requires talbuk3
#label Safari4
.goto Nagrand,71.52,40.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.accept 9852 >>接任务: |cRXP_LOOT_终极挑战|r
.isQuestTurnedIn 9856
.isQuestTurnedIn 9859
.isQuestTurnedIn 9851
.target Hemet Nesingwary
step
#optional
#questguide << !tbc
#completewith next
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈达乌|r
.turnin 9849 >>交任务: |cRXP_FRIENDLY_打碎外壳|r
.isQuestComplete 9849


.unitscan Gordawg
step
.goto 1951/530,6937.200,-782.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师鲁艾普|r
.target Elementalist Lo'ap
.turnin 9810 >>交任务: |cRXP_FRIENDLY_污染的灵魂|r
.turnin 9815 >>交任务: |cRXP_FRIENDLY_潜水|r
step
.goto 1951/530,6952.800,-782.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_元素师莫格|r
.target Elementalist Morgh
.turnin 9862 >>交任务: |cRXP_FRIENDLY_暗血腐蚀者|r
step
#questguide << !tbc
.goto Nagrand,62.19,22.60,50,0
.goto Nagrand,61.99,22.09,50,0
.goto Nagrand,61.28,22.24,50,0
.goto Nagrand,60.88,21.39,50,0
.goto Nagrand,60.38,20.88,50,0
.goto Nagrand,59.87,21.32,50,0
.goto Nagrand,59.58,22.48,50,0
.goto Nagrand,60.08,24.41,50,0
.goto Nagrand,60.57,25.04,50,0
.goto Nagrand,61.15,24.92,50,0
.goto Nagrand,61.72,24.54
.line Nagrand,62.19,22.60,61.99,22.09,61.28,22.24,60.88,21.39,60.38,20.88,59.87,21.32,59.58,22.48,60.08,24.41,60.57,25.04,61.15,24.92,61.72,24.54,62.19,22.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈达乌|r
.turnin 9849 >>交任务: |cRXP_FRIENDLY_打碎外壳|r

.unitscan Gordawg
step
#optional
#completewith Zorbo
.use 25555 >>杀死|cRXP_ENEMY_Orcs|r。在他们的尸体上使用你袋子里的|T132484:0|t[Kil'sorrow Banner]
.complete 9940,2 
.mob +Warmaul Shaman
.complete 9940,3 
.complete 9931,1 
.mob +Warmaul Reaver
step
#completewith next
.goto Nagrand,46.57,24.40
.cast 32408 >>在殡仪馆用包里的|T133680:0|t[湿羊毛毯]。杀死|cRXP_FRIENDLY_Saboteurs|r正在攻击的任何|cRXP_ENEMY_Ogres|r
.timer 62,Body of Evidence RP
.use 25658 

step
.goto Nagrand,46.57,24.40
>>杀死|cRXP_ENEMY_Ogres|r直到目标完成
.complete 9932,1 
step
#label Zorbo
.goto Nagrand,46.21,18.79,30,0
.goto Nagrand,46.49,18.18
>>杀死|cRXP_ENEMY_Zorbo|r
.complete 9940,1 
.mob Zorbo the Advisor
step
.goto Nagrand,49.22,21.66,50,0
.goto Nagrand,48.24,23.60,50,0
.goto Nagrand,46.59,24.43,50,0
.goto Nagrand,45.44,22.01,50,0
.goto Nagrand,43.65,21.51,50,0
.goto Nagrand,42.54,22.55
.use 25555 >>杀死|cRXP_ENEMY_Orcs|r。在他们的尸体上使用你袋子里的|T132484:0|t[Kil'sorrow Banner]
.complete 9940,2 
.mob +Warmaul Shaman
.complete 9940,3 
.complete 9931,1 
.mob +Warmaul Reaver
step
.goto Nagrand,42.77,20.73
>>寻找一组“血之环”任务线。有6个精英任务可以提供大量快速xp和一件武器，可以让你持续到70。只有当你的队伍准备好并且任务进度与你相同时才接受这个。(此任务行禁用自动接受)。如果找不到组，请跳过此步骤
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古尔戈索克|r
.accept 9962,1 >>接任务: |cRXP_WARN_鲜血竞技场：断蹄|r
.target Gurgthock
step
.goto Nagrand,43.66,20.37
>>在血环中杀死|cRXP_ENEMY_Brokentoe|r
.complete 9962,1 
.isOnQuest 9962
.mob Brokentoe
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨魔仆从伍迪|r
.turnin 9962 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：断蹄|r
.isQuestComplete 9962
.target Wodin the Troll-Servant
step
.goto Nagrand,42.77,20.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古尔戈索克|r
.accept 9967,1 >>接任务: |cRXP_WARN_鲜血竞技场：蓝色兄弟|r
.isQuestTurnedIn 9962
.target Gurgthock
step
.goto Nagrand,43.66,20.37
>>杀死血环中的|cRXP_ENEMY_Blue Brothers|r
.complete 9967,1 
.isOnQuest 9967
.mob Murkblood Twin
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨魔仆从伍迪|r
.turnin 9967 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：蓝色兄弟|r
.isQuestComplete 9967
.target Wodin the Troll-Servant
step
.goto Nagrand,42.77,20.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古尔戈索克|r
.accept 9970,1 >>接任务: |cRXP_WARN_鲜血竞技场：裂石之王洛卡达尔|r
.isQuestTurnedIn 9967
.target Gurgthock
step
.goto Nagrand,43.66,20.37
>>在血之环中杀死|cRXP_ENEMY_Rokdar破碎的领主|r
.complete 9970,1 
.isOnQuest 9970
.mob Rokdar the Sundered Lord
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨魔仆从伍迪|r
.turnin 9970 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：裂石之王洛卡达尔|r
.isQuestComplete 9970
.target Wodin the Troll-Servant
step
.goto Nagrand,42.77,20.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古尔戈索克|r
.accept 9972,1 >>接任务: |cRXP_WARN_鲜血竞技场：瑟克拉加斯|r
.isQuestTurnedIn 9970
.target Gurgthock
step
.goto Nagrand,43.66,20.37
>>杀死血环中的|cRXP_ENEMY_Skra'gath|r
.complete 9972,1 
.isOnQuest 9972
.mob Skra'gath
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨魔仆从伍迪|r
.turnin 9972 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：瑟克拉加斯|r
.isQuestComplete 9972
.target Wodin the Troll-Servant
step
.goto Nagrand,42.77,20.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古尔戈索克|r
.accept 9973,1 >>接任务: |cRXP_WARN_鲜血竞技场：战槌勇士|r
.isQuestTurnedIn 9972
.target Gurgthock
step
.goto Nagrand,43.66,20.37
>>Kill |cRXP_ENEMY_The Warmaul Champion|r in the Ring of Blood
.complete 9973,1 
.isOnQuest 9973
.mob Warmaul Champion
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨魔仆从伍迪|r
.turnin 9973 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：战槌勇士|r
.isQuestComplete 9973
.target Wodin the Troll-Servant
step
.goto Nagrand,42.77,20.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古尔戈索克|r
.accept 9977,1 >>接任务: |cRXP_WARN_鲜血竞技场：终极挑战|r
.isQuestTurnedIn 9973
.target Gurgthock
step
.goto Nagrand,43.43,20.57
>>杀死血环中的|cRXP_ENEMY_Mogor|r（两次）
.complete 9977,1 
.isOnQuest 9977
.mob Mogor
step
.goto Nagrand,42.77,20.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨魔仆从伍迪|r
.turnin 9977 >>交任务: |cRXP_FRIENDLY_鲜血竞技场：终极挑战|r
.isQuestComplete 9977
.target Wodin the Troll-Servant
step
#completewith Corki4
.goto Nagrand,26.50,22.70,0
>>偷走洞穴内外地面上的银|cRXP_PICK_Supply Crates|r
.complete 9956,1 
step
#completewith SupplyC
>>杀死|cRXP_ENEMY_Ogres|r。掠夺他们的|cRXX_Loot_Warbead|r
.collect 25433,10,10476,1 
.mob Warmaul Brute
.mob Warmaul Warlock
step
#optional
#completewith next
.goto Nagrand,28.69,30.85,40,0
.goto Nagrand,25.93,28.93,40,0
.goto Nagrand,24.57,24.66,40 >>沿着小路爬到山顶
.skill riding,225,1
step
#label Corki4
.goto Nagrand,29.54,26.06
>>进入山顶的南方食人魔洞穴。
>>|cRXP_FRIENDLY_Corki|r由|cRXP_WARN_Elite Ogre|r，|cRXP_ENEMY_Bufferlo|r保护。您|cRXP _WARN_DO NOT |r必须杀死|cRX _ENEMY_bufflo|r。只需与|cREXP_FRIENDLY_Corki| r交谈即可逃跑<<tbc/wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考尔奇|r
.turnin 9954 >>交任务: |cRXP_FRIENDLY_考尔奇的赎金|r
.target Corki
step
#questguide << tbc/wotlk
.goto Nagrand,29.54,26.06
>>进入山顶的南方食人魔洞穴。
>>|cRXP_FRIENDLY_Corki|r由|cRXP_WARN_Elite Ogre|r，|cRXP_ENEMY_Bufferlo|r保护。您|cRXP _WARN_DO NOT |r必须杀死|cRX _ENEMY_bufflo|r。只需与|cREXP_FRIENDLY_Corki| r交谈即可逃跑<<tbc/wotlk
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考尔奇|r
.accept 9955 >>接任务: |cRXP_LOOT_掠夺者考瓦尔|r
.target Corki
step
#questguide << tbc/wotlk
#completewith next
.flygoto Nagrand,27.55,11.22,45 >>飞到洞穴的后门
step
#questguide << tbc/wotlk
.goto Nagrand,25.38,15.31,30,0
.goto Nagrand,26.23,15.61,30,0
.goto Nagrand,25.91,13.72
>>杀死支柱|cRXP_ENEMY_Cho'war |r。抢走他的|cRXX_Loot_Key|r。这个任务很难。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。
.collect 25648,1,9955,1 
.mob Cho'war the Pillager
step
#questguide << tbc/wotlk
#label Corki4
.goto Nagrand,29.54,26.06
>>进入山顶的南方食人魔洞穴。单击|cRXP_FRIENDLY_Corki's |r Cage。
>>|cRXP_FRIENDLY_Corki|r由|cRXP_WARN_Elite Ogre|r，|cRXP_ENEMY_Bufferlo|r守卫。你必须杀死或分散他的注意力才能打开笼子 << tbc/wotlk
.complete 9955,1 
step
#label SupplyC
#loop
.groundgoto Nagrand,28.96,31.19,60,0
.groundgoto Nagrand,28.09,29.94,60,0
.goto Nagrand,24.71,30.48,50,0
.goto Nagrand,23.63,31.77,30,0
.goto Nagrand,23.14,29.32,50,0
.goto Nagrand,23.43,28.29,50,0
.goto Nagrand,24.67,27.54,50,0
.groundgoto Nagrand,26.42,29.74,40,0
.groundgoto Nagrand,24.60,24.92,40,0
.goto Nagrand,25.64,24.47,30,0
.goto Nagrand,27.24,23.87,30,0
.goto Nagrand,29.21,25.74,30,0
.goto Nagrand,25.81,20.33,50,0
.goto Nagrand,27.64,18.92,50,0
.groundgoto Nagrand,28.96,31.19,60,0
.groundgoto Nagrand,28.09,29.94,60,0
.goto Nagrand,24.71,30.48,50,0
.goto Nagrand,23.63,31.77,30,0
.goto Nagrand,23.14,29.32,50,0
.goto Nagrand,23.43,28.29,50,0
.goto Nagrand,24.67,27.54,50,0
.groundgoto Nagrand,26.42,29.74,40,0
.groundgoto Nagrand,24.60,24.92,40,0
.goto Nagrand,25.64,24.47,30,0
.goto Nagrand,27.24,23.87,30,0
.goto Nagrand,29.21,25.74,30,0
.goto Nagrand,25.81,20.33,50,0
.goto Nagrand,27.64,18.92,0
>>偷走洞穴内外地面上的银|cRXP_PICK_Supply Crates|r
.complete 9956,1 
step
#loop
.groundgoto Nagrand,28.96,31.19,60,0
.groundgoto Nagrand,28.09,29.94,60,0
.goto Nagrand,24.71,30.48,50,0
.goto Nagrand,23.63,31.77,30,0
.goto Nagrand,23.14,29.32,50,0
.goto Nagrand,23.43,28.29,50,0
.goto Nagrand,24.67,27.54,50,0
.groundgoto Nagrand,26.42,29.74,40,0
.groundgoto Nagrand,24.60,24.92,40,0
.goto Nagrand,25.64,24.47,30,0
.goto Nagrand,27.24,23.87,30,0
.goto Nagrand,29.21,25.74,30,0
.goto Nagrand,25.81,20.33,50,0
.goto Nagrand,27.64,18.92,50,0
.groundgoto Nagrand,28.96,31.19,60,0
.groundgoto Nagrand,28.09,29.94,60,0
.goto Nagrand,24.71,30.48,50,0
.goto Nagrand,23.63,31.77,30,0
.goto Nagrand,23.14,29.32,50,0
.goto Nagrand,23.43,28.29,50,0
.goto Nagrand,24.67,27.54,50,0
.groundgoto Nagrand,26.42,29.74,40,0
.groundgoto Nagrand,24.60,24.92,40,0
.goto Nagrand,25.64,24.47,30,0
.goto Nagrand,27.24,23.87,30,0
.goto Nagrand,29.21,25.74,30,0
.goto Nagrand,25.81,20.33,50,0
.goto Nagrand,27.64,18.92,0
>>杀死|cRXP_ENEMY_Ogres|r。掠夺他们的|cRXX_Loot_Warbead|r
.collect 25433,10,10476,1 
.mob Warmaul Brute
.mob Warmaul Warlock
step
#completewith next
.hs >>赫斯到特拉尔
step
#sticky
#label HuntKima
.goto Nagrand,53.69,68.70,40,0
.goto Nagrand,54.01,69.11,40,0
.goto Nagrand,54.33,70.32,40,0
.goto Nagrand,54.75,70.41,40,0
.goto Nagrand,54.97,70.91,40,0
.goto Nagrand,55.30,71.42,40,0
.goto Nagrand,55.70,72.60,40,0
.goto Nagrand,55.61,73.18,40,0
.goto Nagrand,54.71,73.30,40,0
.goto Nagrand,54.53,73.66,40,0
.goto Nagrand,54.53,72.64,40,0
.goto Nagrand,54.30,72.28,40,0
.goto Nagrand,53.71,72.24,40,0
.goto Nagrand,53.52,71.94,40,0
.goto Nagrand,53.82,71.30,40,0
.goto Nagrand,53.42,70.82,40,0
.goto Nagrand,52.93,70.80,40,0
.goto Nagrand,53.16,70.24,40,0
.goto Nagrand,53.56,70.43,40,0
.goto Nagrand,54.10,69.56,40,0
.goto Nagrand,54.03,69.16,40,0
.goto Nagrand,53.69,68.70,40,0
.line Nagrand,53.69,68.70,54.03,69.16,54.10,69.56,53.56,70.43,53.16,70.24,52.93,70.80,53.42,70.82,53.82,71.30,53.52,71.94,53.71,72.24,54.30,72.28,54.53,72.64,54.53,73.66,54.71,73.30,55.61,73.18,55.70,72.60,55.30,71.42,54.97,70.91,54.75,70.41,54.33,70.32,54.01,69.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手琪玛|r
.turnin 9956 >>交任务: |cRXP_FRIENDLY_被破坏的货车|r
.unitscan Huntress Kima
step
.goto 1951/530,7270.600,-2568.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监护者莫布吉尔|r
.target Warden Moi'bff Jill
.accept 10476 >>接任务: |cRXP_LOOT_强悍的敌人|r
.turnin 10476 >>交任务: |cRXP_FRIENDLY_强悍的敌人|r
.turnin 9936 >>交任务: |cRXP_FRIENDLY_通缉：巫婆吉塞尔达|r
.turnin 9940 >>交任务: |cRXP_FRIENDLY_通缉：顾问佐尔布|r
.accept 9938 >>接任务: |cRXP_LOOT_通缉：饥饿者杜恩|r << !tbc !wotlk
step
#optional << tbc/wotlk
#requires HuntKima
.goto 1951/530,7230.800,-2489.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷克隆|r
.target Arechron
.turnin 9955 >>交任务: |cRXP_FRIENDLY_掠夺者考瓦尔|r
.isQuestComplete 9955
step
>>杀死|cRXP_ENEMY_Tusker|r。为她掠夺她|cRXX_Loot_Heart|r
>>如果需要，你可以把她放回Telaar。她动作并不缓慢，但移动速度只有110%左右。这个任务很难。如果需要，为她找一个小组。如果你找不到一个团体或独自一人，请跳过这一步。<<tbc/wotlk
.goto Nagrand,44.50,65.24
.complete 9852,1 
.isOnQuest 9852
.mob Tusker
step << !tbc !wotlk
#loop
.goto Nagrand,46.6,61.4,60,0
.goto Nagrand,43.6,75.8,60,0
.goto Nagrand,34.4,78.0,60,0
.goto Nagrand,30.2,62.0,60,0
.goto Nagrand,40,60,90,0
.goto Nagrand,46.6,61.4,0
.goto Nagrand,43.6,75.8,0
.goto Nagrand,34.4,78.0,0
.goto Nagrand,30.2,62.0,0
.goto Nagrand,40,60,0
>>Kill |cRXP_ENEMY_Durn the Hungerer|r, he patrols around Oshu'gun
.complete 9938,1 
.mob Durn the Hungerer
step << Mage
#completewith next
.zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
.skill riding,<225,1
step
.goto Nagrand,73.81,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰特瑞索·火刃|r
.turnin 9931 >>交任务: |cRXP_FRIENDLY_以牙还牙|r
.turnin 9932 >>交任务: |cRXP_FRIENDLY_尸证|r
.accept 9933 >>接任务: |cRXP_LOOT_回到塔拉|r
.target Lantresor of the Blade
step
#completewith next
.hs >>赫斯到特拉尔
.cooldown item,6948,>2
step << !tbc !wotlk
.goto 1951/530,7270.600,-2569.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监护者莫布吉尔|r
.target Warden Moi'bff Jill
.turnin 9938 >>交任务: |cRXP_FRIENDLY_通缉：饥饿者杜恩|r
step
.goto Nagrand,55.48,68.70
>>返回Telaar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷克隆|r
.turnin 9933 >>交任务: |cRXP_FRIENDLY_回到塔拉|r
.target Arechron
step
#label Saved5
#completewith Safari5
>>有时|cRXP_ENEMY_Gankly|r会出现在Safari中。这是一种罕见的事件
>>杀死|cRXP_ENEMY_Gankly|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉丝蒂·德米萨|r
.accept 9897 >>接任务: |cRXP_LOOT_我得救了！|r
.goto Nagrand,71.42,40.60,0
.unitscan Gankly Rottenfist
.target Kristen Dipswitch
step
#requires Saved5
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈罗德·兰恩|r
.turnin 9897 >>交任务: |cRXP_FRIENDLY_我得救了！|r
.goto Nagrand,71.38,40.62
.target Harold Lane
step
#label Safari5
.goto Nagrand,71.52,40.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 9852 >>交任务: |cRXP_FRIENDLY_终极挑战|r
.isQuestComplete 9852
.target Hemet Nesingwary
step
#aldor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_圣光护卫者阿德因|r
.goto Shattrath City,30.72,34.63
.accept 10325 >>接任务: |cRXP_LOOT_基尔加丹印记|r
.turnin 10325 >>交任务: |cRXP_FRIENDLY_基尔加丹印记|r
.target Adyen the Lightwarden
.itemcount 29425,10
]])
RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 65-67 刀锋山
#version 5

#next 67-69 虚空风暴 << TBC
#next 67-67刀刃转弯 << !TBC
step
#completewith next
.goto Shattrath City,64.05,41.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努特拉尔|r
.fly Telredor >>飞往Telredor
.zoneskip Nagrand
.zoneskip Zangarmarsh
.skill riding,300,1
.target Nutral
step
#questguide << !tbc
.goto Zangarmarsh,68.3,49.4
>>返回Telredor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者安霍尔|r
.turnin 9801 >>交任务: |cRXP_FRIENDLY_收集材料|r
.isQuestComplete 9801
.target Anchorite Ahuurn
step
#optional
#completewith Moonwhisper
.goto Shattrath City,64.05,41.12,-1
.goto Zangarmarsh,67.83,51.46,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努特拉尔|r, |cRXP_FRIENDLY_蒙希|r
>>|cRXP_WARN_箭头将指向最近的飞行主管|r
.fly Orebor Harborage >>飞往Orebor Harborage
.skill riding,300,1
.target Nutral
.target Munci
step
.goto Zangarmarsh,41.21,28.68
>>前往Orebor Harborage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪莫斯·丹尼斯|r
.accept 9794 >>接任务: |cRXP_LOOT_禁止拆阅|r
.maxlevel 66,bemend	<< !tbc
.target Timothy Daniels
step
#label Moonwhisper
.goto Blade's Edge Mountains,32.20,91.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵蔻妮·月语|r
.accept 10927 >>接任务: |cRXP_LOOT_消灭洞穴蛛|r
.maxlevel 66,bemend	<< !tbc
.target Sentinel Moonwhisper
step
.goto Blade's Edge Mountains,34.61,88.05,40,0
.goto Blade's Edge Mountains,35.00,85.60,40,0
.goto Blade's Edge Mountains,36.83,83.44,40,0
.goto Blade's Edge Mountains,37.20,81.01
>>杀死|cRXP_ENEMY_Cavern爬网程序|r
>>|cRXP_WARN_你可以爬上洞穴|r
.complete 10927,1 
.isOnQuest 10927
.mob Cavern Crawler
step
>>前往希尔瓦纳尔
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基亚隆·夜刃|r, |cRXP_FRIENDLY_莉娜·月泉|r, The Wanted Poster, |cRXP_FRIENDLY_指挥官萨卡斯·天影|r
.turnin 9794 >>交任务: |cRXP_FRIENDLY_禁止拆阅|r
.goto Blade's Edge Mountains,35.97,67.76,30,0
.goto Blade's Edge Mountains,36.61,67.34
.target +Kialon Nightblade
.accept 10455 >>接任务: |cRXP_LOOT_危险的荒野|r
.goto Blade's Edge Mountains,36.21,67.13
.target +Rina Moonspring
.accept 10690 >>接任务: |cRXP_LOOT_兽穴之母|r
.goto Blade's Edge Mountains,36.61,67.29
.accept 10502 >>接任务: |cRXP_LOOT_血槌食人魔|r
.turnin 10927 >>交任务: |cRXP_FRIENDLY_消灭洞穴蛛|r
.goto Blade's Edge Mountains,36.28,66.24
.target +Commander Skyshadow
.maxlevel 66,bemend	<< !tbc
step
#completewith Lashh
.goto Blade's Edge Mountains,35.80,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板肖恩妮丝|r
.home >>将您的炉石设置为Sylvanaar
.maxlevel 66,bemend	<< !tbc
.target Innkeeper Shaunessy
step
.goto Blade's Edge Mountains,37.82,61.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃莫伦·叶影|r
.fp Sylvanaar >>获取Sylvanaar飞行路线
.maxlevel 66,bemend	<< !tbc
.target Amerun Leafshade
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Borgrim Stouthammer|r, |cRXP_FRIENDLY_Bronwyn Stouthammer|r inside and |cRXP_FRIENDLY_Daranelle, 他在外面
.accept 10511 >>接任务: |cRXP_LOOT_奇怪的美酒|r
.goto Blade's Edge Mountains,37.40,64.66
.target +Borgrim Stouthammer
.accept 10510 >>接任务: |cRXP_LOOT_进入德拉诺晶矿|r
.goto Blade's Edge Mountains,37.41,65.05
.target +Bronwyn Stouthammer
.accept 10555 >>接任务: |cRXP_LOOT_诡异的魔法|r
.goto Blade's Edge Mountains,37.07,65.62
.target +Daranelle
.maxlevel 66,bemend	<< !tbc
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Grovestalker Lynxes|r
.complete 10455,1 
.isOnQuest 10455
.mob Grovestalker Lynx
step
#label Lashh
.goto Blade's Edge Mountains,35.75,73.61,40,0
.goto Blade's Edge Mountains,34.23,75.61,40,0
.goto Blade's Edge Mountains,34.92,78.78,40,0
.goto Blade's Edge Mountains,35.72,75.07,40,0
.goto Blade's Edge Mountains,34.31,77.40
>>杀死|cRXP_ENEMY_Lashhan|r。掠夺他们的|cRXX_Loot_Features|r
.complete 10555,1 
.isOnQuest 10555
.mob Lashh'an Matriarch
.mob Lashh'an Talonite
.mob Lashh'an Windwalker
.mob Lashh'an Windwalker
step
.goto Blade's Edge Mountains,34.31,77.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_银色宝典|r
.turnin 10555 >>交任务: |cRXP_FRIENDLY_诡异的魔法|r
.accept 10556 >>接任务: |cRXP_LOOT_潦草的字迹|r
.maxlevel 66,bemend	<< !tbc
step
.goto Blade's Edge Mountains,35.23,77.31
.cast 36904 >>|cRXP_WARN_在召唤圈使用|r|T132926:0|t[羽毛之拳]|cRXP_WARN_|r
.use 30530
.isOnQuest 10556
step
.goto Blade's Edge Mountains,35.23,77.31,0
.goto Blade's Edge Mountains,36.94,79.00,50,0
.goto Blade's Edge Mountains,38.17,79.10,50,0
.goto Blade's Edge Mountains,37.94,73.50,50,0
.goto Blade's Edge Mountains,39.44,71.43,50,0
.goto Blade's Edge Mountains,41.51,67.91,50,0
.goto Blade's Edge Mountains,39.59,67.21,50,0
.goto Blade's Edge Mountains,37.84,71.74,50,0
.goto Blade's Edge Mountains,35.44,71.09
>>|cRXP_WARN_使用|r|T132926:0|t[一拳羽毛]|cRXP_WARN_后，一只|cRXP-FRIENDLY_Small Bird Companion|r会跟着你|r
>>|cRXP_WARN_请注意，如果您在坐骑上逃跑，|cRXP_FRIENDLY_Bird|r将跟不上您|r
>>杀死|cRXP_ENEMY_Grovestalker Lynxes|r
.complete 10455,1 
.isOnQuest 10455
.use 30530
.mob Grovestalker Lynx
.target Kaliri Totem
step
>>护送|cRXP_FRIENDLY_Bird|r返回西尔瓦纳尔
>>|cRXP_WARN_请注意，如果您在坐骑上逃跑，|cRXP_FRIENDLY_Bird|r将跟不上您|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达兰妮尔|r, |cRXP_FRIENDLY_莉娜·月泉|r
.turnin 10556 >>交任务: |cRXP_FRIENDLY_潦草的字迹|r
.goto Blade's Edge Mountains,37.07,65.62
.target +Daranelle
.turnin 10455 >>交任务: |cRXP_FRIENDLY_危险的荒野|r
.accept 10456 >>接任务: |cRXP_LOOT_徘徊的恶狼|r
.goto Blade's Edge Mountains,36.21,67.13
.target +Rina Moonspring
.use 30530
.target Kaliri Totem
.maxlevel 66,bemend	<< !tbc
step
#optional
#completewith next
.goto Blade's Edge Mountains,41.81,65.64,50,0
.goto Blade's Edge Mountains,48.40,65.00,50 >>过桥到参差不齐的山脊
.skill riding,225,1
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Thunderlord诅咒狼|r。掠夺它们的|cRXX_Loot_TAIL|r
.complete 10456,1 
.isOnQuest 10456
.mob Thunderlord Dire Wolf
step
.goto Blade's Edge Mountains,51.62,74.97
>>Kill |cRXP_ENEMY_Rema|r
.complete 10690,1 
.isOnQuest 10690
.mob Rema
step
#loop
.line Blade's Edge Mountains,51.93,73.59,51.99,72.57,52.51,71.54,52.53,69.57,55.12,68.14,54.67,65.56,52.94,67.62,51.69,66.58,50.94,65.14,50.61,60.12,49.31,62.79,50.28,67.75,49.33,69.22,50.32,70.41,51.93,73.59
.goto Blade's Edge Mountains,51.93,73.59,50,0
.goto Blade's Edge Mountains,51.99,72.57,50,0
.goto Blade's Edge Mountains,52.51,71.54,50,0
.goto Blade's Edge Mountains,52.53,69.57,50,0
.goto Blade's Edge Mountains,55.12,68.14,50,0
.goto Blade's Edge Mountains,54.67,65.56,50,0
.goto Blade's Edge Mountains,52.94,67.62,50,0
.goto Blade's Edge Mountains,51.69,66.58,50,0
.goto Blade's Edge Mountains,50.94,65.14,50,0
.goto Blade's Edge Mountains,50.61,60.12,50,0
.goto Blade's Edge Mountains,49.31,62.79,50,0
.goto Blade's Edge Mountains,50.28,67.75,50,0
.goto Blade's Edge Mountains,49.33,69.22,50,0
.goto Blade's Edge Mountains,50.32,70.41,50,0
.goto Blade's Edge Mountains,51.93,73.59,50,0
>>杀死|cRXP_ENEMY_Thunderlord诅咒狼|r。掠夺它们的|cRXX_Loot_TAIL|r
.complete 10456,1 
.isOnQuest 10456
.mob Thunderlord Dire Wolf
step
#optional
#completewith next
.goto Blade's Edge Mountains,56.09,72.09,50,0
.goto Blade's Edge Mountains,56.81,70.12,50,0
.goto Blade's Edge Mountains,57.72,70.31,50 >>沿着小路去托斯利车站
.skill riding,225,1
step
.goto Blade's Edge Mountains,61.16,70.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里普·派兹拉姆|r
.fp Toshley's Station >>获取Toshley站的飞行路线
.target Rip Pedalslam
step
#completewith SylHS
.hs >>赫斯致希尔瓦纳
.cooldown item,6948,>2
step
#optional
#completewith next
.goto Blade's Edge Mountains,61.16,70.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里普·派兹拉姆|r
.fly Sylvanaar >>飞往西尔瓦纳
.cooldown item,6948,<0
.target Rip Pedalslam
step
#label SylHS
>>返回希尔瓦纳尔
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官萨卡斯·天影|r, |cRXP_FRIENDLY_莉娜·月泉|r
.turnin 10690 >>交任务: |cRXP_FRIENDLY_兽穴之母|r
.goto Blade's Edge Mountains,36.28,66.24
.target +Commander Skyshadow
.turnin 10456 >>交任务: |cRXP_FRIENDLY_徘徊的恶狼|r
.accept 10457 >>接任务: |cRXP_LOOT_自我保护|r
.goto Blade's Edge Mountains,36.21,67.13
.target +Rina Moonspring
.maxlevel 66,bemend	<< !tbc
step
#loop
.line Blade's Edge Mountains,36.43,69.86,36.44,71.16,35.95,71.95,37.26,72.60,37.73,73.94,38.27,72.71,38.85,73.59,39.01.71.93,40.24,70.33,39.85,69.00,38.21,69.06,36.43,69.86
.goto Blade's Edge Mountains,36.43,69.86,30,0
.goto Blade's Edge Mountains,36.44,71.16,30,0
.goto Blade's Edge Mountains,35.95,71.95,30,0
.goto Blade's Edge Mountains,37.26,72.60,30,0
.goto Blade's Edge Mountains,37.73,73.94,30,0
.goto Blade's Edge Mountains,38.27,72.71,30,0
.goto Blade's Edge Mountains,38.85,73.59,30,0
.goto Blade's Edge Mountains,70.33,40.24,30,0
.goto Blade's Edge Mountains,69.00,39.85,30,0
.goto Blade's Edge Mountains,69.06,38.21,30,0
.goto Blade's Edge Mountains,69.86,36.43,30,0
>>单击地面上的|cRXP_PICK_Grove幼苗|r
.complete 10457,1 
.isOnQuest 10457
step
>>返回希尔瓦纳尔
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉娜·月泉|r
.turnin 10457 >>交任务: |cRXP_FRIENDLY_自我保护|r
.accept 10506 >>接任务: |cRXP_LOOT_严峻的形势|r
.goto Blade's Edge Mountains,36.21,67.13
.maxlevel 66,bemend	<< !tbc
.target Rina Moonspring
step
#optional
#completewith MineC
>>杀死|cRXP_ENEMY_Bloodmaul食人魔|r。掠夺|cRXX_ENEMY_ Bloodmaul酿酒师|r以获得他们的|cRXD_Loot_BBloodmaul Brutebane酿酒师|r
>>打开|cRXP_PICK_Bloodmaul啤酒桶|r。将它们洗劫一空，以获得|cRXP _Loot_Bloodmaul Brutebane啤酒桶|r
.use 30251 >>|cRXP_WARN_使用|r|T133852:0|t[Rina的缩小粉末]|cRXP_WARN_on|r|cRXP_ENEMY_Bloodmaul Wolves|r
.complete 10502,1 
.complete 10511,1 
.complete 10506,1 
.mob +Bloodmaul Dire Wolf
.isOnQuest 10502
.isOnQuest 10506
.isOnQuest 10511
.mob Bloodmaul Skirmisher
.mob Bloodmaul Geomancer
.mob Bloodmaul Lookout
.mob Bloodmaul Brewmaster
.mob Bloodmaul Shaman
.mob Bloodmaul Brute
.mob Bloodmaul Drudger
step
#completewith next
.goto Blade's Edge Mountains,42.48,83.51,40 >>进入矿井
step
#label MineC
.goto Blade's Edge Mountains,42.38,84.54,30,0
.goto Blade's Edge Mountains,41.15,85.56,30,0
.goto Blade's Edge Mountains,40.59,83.58,30,0
.goto Blade's Edge Mountains,39.73,83.35,30,0
.goto Blade's Edge Mountains,39.45,85.72,30,0
.goto Blade's Edge Mountains,40.09,85.42
>>杀死|cRXP_ENEMY_Bloodmaul Drudger|r。掠夺他们的|cRXX_Loot_Drenethyst水晶|r
>>|cRXP_WARN_|r|cRXP_LOOT_Draenethyst晶体|r|cRXP_WARN_也可能在矿井内被掠夺|r
.complete 10510,1 
.isOnQuest 10510
.mob Bloodmaul Drudger
step
#loop
.line Blade's Edge Mountains,46.38,76.02,47.76,74.83,46.81,79.64,45.90,77.84,44.37,82.35,43.36,81.29,41.88,83.17,42.07,79.05,43.73,77.33,42.78,73.28,46.38,76.02
.goto Blade's Edge Mountains,46.38,76.02,55,0
.goto Blade's Edge Mountains,47.76,74.83,55,0
.goto Blade's Edge Mountains,46.81,79.64,55,0
.goto Blade's Edge Mountains,45.90,77.84,55,0
.goto Blade's Edge Mountains,44.37,82.35,55,0
.goto Blade's Edge Mountains,43.36,81.29,55,0
.goto Blade's Edge Mountains,41.88,83.17,55,0
.goto Blade's Edge Mountains,42.07,79.05,55,0
.goto Blade's Edge Mountains,43.73,77.33,55,0
.goto Blade's Edge Mountains,42.78,73.28,55,0
.goto Blade's Edge Mountains,46.38,76.02,55,0
>>杀死|cRXP_ENEMY_Bloodmaul食人魔|r。掠夺|cRXX_ENEMY_ Bloodmaul酿酒师|r以获得他们的|cRXD_Loot_BBloodmaul Brutebane酿酒师|r
>>打开|cRXP_PICK_Bloodmaul啤酒桶|r。将它们洗劫一空，以获得|cRXP _Loot_Bloodmaul Brutebane啤酒桶|r
.use 30251 >>|cRXP_WARN_使用|r|T133852:0|t[Rina的缩小粉末]|cRXP_WARN_on|r|cRXP_ENEMY_Bloodmaul Wolves|r
.complete 10502,1 
.complete 10511,1 
.complete 10506,1 
.mob +Bloodmaul Dire Wolf
.isOnQuest 10502
.isOnQuest 10506
.isOnQuest 10511
.mob Bloodmaul Skirmisher
.mob Bloodmaul Geomancer
.mob Bloodmaul Lookout
.mob Bloodmaul Brewmaster
.mob Bloodmaul Shaman
.mob Bloodmaul Brute
.mob Bloodmaul Drudger
step
#completewith next
.hs >>赫斯致希尔瓦纳
.cooldown item,6948,>2
step
>>返回希尔瓦纳尔
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉娜·月泉|r, |cRXP_FRIENDLY_指挥官萨卡斯·天影|r, |cRXP_FRIENDLY_布隆薇·硬锤|r, |cRXP_FRIENDLY_伯格瑞姆·硬锤|r
.turnin 10506 >>交任务: |cRXP_FRIENDLY_严峻的形势|r
.goto Blade's Edge Mountains,36.21,67.13
.target +Rina Moonspring
.turnin 10502 >>交任务: |cRXP_FRIENDLY_血槌食人魔|r
.accept 10504 >>接任务: |cRXP_LOOT_刀塔食人魔|r
.goto Blade's Edge Mountains,36.28,66.24
.target +Commander Skyshadow
.turnin 10510 >>交任务: |cRXP_FRIENDLY_进入德拉诺晶矿|r
.goto Blade's Edge Mountains,37.41,65.05
.target +Bronwyn Stouthammer
.turnin 10511 >>交任务: |cRXP_FRIENDLY_奇怪的美酒|r
.accept 10512 >>接任务: |cRXP_LOOT_灌醉刀塔食人魔|r
.goto Blade's Edge Mountains,37.40,64.66
.target +Borgrim Stouthammer
.maxlevel 66,bemend	<< !tbc
step
#optional
#completewith BladeDrunk
>>杀死|cRXP_ENEMY_Bladespire食人魔|r
.complete 10504,1 
.isOnQuest 10504
.mob Bladespire Shaman
.mob Bladespire Cook
.mob Bladespire Champion
.mob Bladespire Sober Defender
.mob Bladespire Brute
step
#optional
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官乌里恩|r
>>|cRXP_WARN_你可以小心地跳下西尔瓦纳尔的北侧去接近她|r
.accept 10516 >>接任务: |cRXP_LOOT_守备官的困境|r
.skill riding,225,1
.maxlevel 66,bemend	<< !tbc
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官乌里恩|r
.accept 10516 >>接任务: |cRXP_LOOT_守备官的困境|r
.skill riding,<225,1
.maxlevel 66,bemend	<< !tbc
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,38.77,52.61
>>|cRXP_WARN_杀死离门最近的两个|cRXP_ENEMY_Ogres|r|r
>>|cRXP_WARN_使用|r|T132621:0|t[Brutebane Keg]|cRXP_WARN_to引诱|cRXP-ENEMY_Droggam|r远离精英守卫|r
>>杀死|cRXP_ENEMY_Droggam|r。掠夺他获得|cRXX_Loot_BLAD|r
.complete 10516,1 
.use 30353
.isOnQuest 10516
.mob Bladespire Shaman
.mob Bladespire Brute
.unitscan Droggam
step
.goto Blade's Edge Mountains,42.46,58.96
>>|cRXP_WARN_杀死离门最近的三个|cRXP_ENEMY_Ogres|r|r
>>|cRXP_WARN_使用|r|T132621:0|t[Brutebane Keg]|cRXP_WARN_to引诱|cRXP-ENEMY_Mugdorg|r远离精英守卫|r
>>杀死|cRXP_ENEMY_Mugdorg|r。掠夺他获得|cRXX_Loot_Shield |r
.complete 10516,2 
.use 30353
.isOnQuest 10516
.mob Bladespire Shaman
.mob Bladespire Brute
.unitscan Mugdorg
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官乌里恩|r
.turnin 10516 >>交任务: |cRXP_FRIENDLY_守备官的困境|r
.accept 10517 >>接任务: |cRXP_LOOT_高尔迪姆，你完蛋了......|r
.maxlevel 66,bemend	<< !tbc
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,39.38,49.06
>>|cRXP_WARN_杀死离门最近的三个|cRXP_ENEMY_Ogres|r|r
>>|cRXP_WARN_使用|r|T132621:0|t[Brutebane Keg]|cRXP_WARN_to引诱|cRXT_ENEMY_Gorr'Dim|r远离精英守卫|r
>>杀死|cRXP_ENEMY_Gorr'Dim|r。掠夺他获得|cRXP_Loot_Shield |r
.complete 10517,1 
.use 30353
.isOnQuest 10517
.mob Bladespire Shaman
.mob Bladespire Brute
.unitscan Gorr'Dim
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官乌里恩|r
.turnin 10517 >>交任务: |cRXP_FRIENDLY_高尔迪姆，你完蛋了......|r
.accept 10518 >>接任务: |cRXP_LOOT_插旗子|r
.maxlevel 66,bemend	<< !tbc
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,41.29,46.72
>>杀死|cRXP_ENEMY_Bladespire冠军|r。掠夺他的|cRXX_Loot_Barner|r
.complete 10518,1 
.isOnQuest 10518
.mob Bladespire Champion
step
#label BladeDrunk
#loop
.line Blade's Edge Mountains,43.48,46.85,41.40,46.63,39.81,49.22,38.90,52.64,38.44,56.05,38.99,57.99,40.23,58.34,42.32,58.35,42.57,54.37,42.11,52.30,47.50,52.35,49.61,50.17,42.91,48.97,43.48,46.85
.goto Blade's Edge Mountains,43.48,46.85,60,0
.goto Blade's Edge Mountains,41.40,46.63,60,0
.goto Blade's Edge Mountains,39.81,49.22,60,0
.goto Blade's Edge Mountains,38.90,52.64,60,0
.goto Blade's Edge Mountains,38.44,56.05,60,0
.goto Blade's Edge Mountains,38.99,57.99,60,0
.goto Blade's Edge Mountains,40.23,58.34,60,0
.goto Blade's Edge Mountains,42.32,58.35,60,0
.goto Blade's Edge Mountains,42.57,54.37,60,0
.goto Blade's Edge Mountains,42.11,52.30,60,0
.goto Blade's Edge Mountains,47.50,52.35,60,0
.goto Blade's Edge Mountains,49.61,50.17,60,0
.goto Blade's Edge Mountains,42.91,48.97,60,0
.goto Blade's Edge Mountains,43.48,46.85,60,0
>>|cRXP_WARN_使用|r|T132621:0|t[Brutebane Keg]|cRXP_WARN_near|cRXP_ENEMY_Ogres|r将他们灌醉|r
.complete 10512,1 
.use 30353
.isOnQuest 10512
.mob Bladespire Shaman
.mob Bladespire Cook
.mob Bladespire Champion
.mob Bladespire Sober Defender
.mob Bladespire Brute
step
#loop
.line Blade's Edge Mountains,43.48,46.85,41.40,46.63,39.81,49.22,38.90,52.64,38.44,56.05,38.99,57.99,40.23,58.34,42.32,58.35,42.57,54.37,42.11,52.30,47.50,52.35,49.61,50.17,42.91,48.97,43.48,46.85
.goto Blade's Edge Mountains,43.48,46.85,60,0
.goto Blade's Edge Mountains,41.40,46.63,60,0
.goto Blade's Edge Mountains,39.81,49.22,60,0
.goto Blade's Edge Mountains,38.90,52.64,60,0
.goto Blade's Edge Mountains,38.44,56.05,60,0
.goto Blade's Edge Mountains,38.99,57.99,60,0
.goto Blade's Edge Mountains,40.23,58.34,60,0
.goto Blade's Edge Mountains,42.32,58.35,60,0
.goto Blade's Edge Mountains,42.57,54.37,60,0
.goto Blade's Edge Mountains,42.11,52.30,60,0
.goto Blade's Edge Mountains,47.50,52.35,60,0
.goto Blade's Edge Mountains,49.61,50.17,60,0
.goto Blade's Edge Mountains,42.91,48.97,60,0
.goto Blade's Edge Mountains,43.48,46.85,60,0
>>杀死|cRXP_ENEMY_Bladespire食人魔|r
.complete 10504,1 
.isOnQuest 10504
.mob Bladespire Shaman
.mob Bladespire Cook
.mob Bladespire Champion
.mob Bladespire Sober Defender
.mob Bladespire Brute
step
.goto Blade's Edge Mountains,46.66,74.82
>>|cRXP_WARN_使用|r|T132484:0|t[Bladspire Banner]|cRXP_WARN_top the tower启动事件。你将不得不处理3波3个暴徒|r
>>|cRXP_WARN_使用斜坡末端的|r|T132621:0|t[Brutebane Keg]|cRXP_WARN_a将它们分开，一次只处理1或2个|cRXP-ENEMY_Ogres|r|r
>>|cRXP_WARN_请注意，|cRXP_ENEMY_Gurn|r在几秒钟后愤怒，将攻击速度提高300%，持续6秒钟，但在最后将其击晕，持续3秒钟。如果需要的话，你可以跳楼疗伤|r
.complete 10518,2 
.use 30416 
.use 30353
.isOnQuest 10518
.mob Gurn Grubnosh
step
#completewith next
.hs >>赫斯致希尔瓦纳
.cooldown item,6948,>2
step
>>返回希尔瓦纳尔
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官萨卡斯·天影|r, |cRXP_FRIENDLY_伯格瑞姆·硬锤|r
.turnin 10504 >>交任务: |cRXP_FRIENDLY_刀塔食人魔|r
.turnin 10518 >>交任务: |cRXP_FRIENDLY_插旗子|r
.accept 10580 >>接任务: |cRXP_LOOT_侏儒都去哪里了？|r
.goto Blade's Edge Mountains,36.28,66.24
.target +Commander Skyshadow
.turnin 10512 >>交任务: |cRXP_FRIENDLY_灌醉刀塔食人魔|r
.goto Blade's Edge Mountains,37.40,64.66
.target +Borgrim Stouthammer
.maxlevel 66,bemend	<< !tbc
step
#completewith Tally
.goto Blade's Edge Mountains,37.82,61.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃莫伦·叶影|r
.fly Toshley's Station >>飞往托斯利车站
.skill riding,300,1
.target Amerun Leafshade
step
#completewith TestTally
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉沙克·铁墙|r
.accept 10632 >>接任务: |cRXP_LOOT_锋利的牙齿|r
.maxlevel 66,bemend << !tbc
.target Razak Ironsides
step
#label Tally
>>前往Toshley车站
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_测量者尼克维克|r, |cRXP_FRIENDLY_塔利·萨普纳波|r
.accept 10608 >>接任务: |cRXP_LOOT_水晶剥石者的麻烦|r
.goto Blade's Edge Mountains,60.22,68.94
.target +尼克温克尔地铁侏儒
.accept 10557 >>接任务: |cRXP_LOOT_试飞：风动电容器|r
.goto Blade's Edge Mountains,60.28,68.39
.target +Tally Zapnabber
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,60.175,68.794
.gossipoption 92114 >>对话: |cRXP_FRIENDLY_拉雷·萨普纳波|r
.timer 48,Test Flight RP
.skipgossip
.isOnQuest 10557
.target Rally Zapnabber
step
#label TestTally
>>等待RP
.complete 10557,1 
.isOnQuest 10557
step
.goto Blade's Edge Mountains,55.11,72.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_R-3D0|r
.turnin 10580 >>交任务: |cRXP_FRIENDLY_侏儒都去哪里了？|r
.accept 10581 >>接任务: |cRXP_LOOT_废话连篇|r
.maxlevel 66,bemend << !tbc
.target R-3D0
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉沙克·铁墙|r
.accept 10632 >>接任务: |cRXP_LOOT_锋利的牙齿|r
.maxlevel 66,bemend << !tbc
.target Razak Ironsides
step
>>返回Toshley车站
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托什雷|r, |cRXP_FRIENDLY_塔利·萨普纳波|r, |cRXP_FRIENDLY_菲兹特·表针|r
.turnin 10581 >>交任务: |cRXP_FRIENDLY_废话连篇|r
.accept 10584 >>接任务: |cRXP_LOOT_能量转换器|r
.goto Blade's Edge Mountains,60.53,68.97
.target +Toshley
.turnin 10557 >>交任务: |cRXP_FRIENDLY_试飞：风动电容器|r
.accept 10710 >>接任务: |cRXP_LOOT_试飞：晶歌山脉|r
.goto Blade's Edge Mountains,60.28,68.39
.target +Tally Zapnabber
.accept 10609 >>接任务: |cRXP_LOOT_先有龙还是先有蛋？|r
.goto Blade's Edge Mountains,60.98,68.11
.target +Fizit "Doc" Clocktock
.maxlevel 66,bemend << !tbc
step
#completewith ToshStation
.goto Blade's Edge Mountains,60.98,68.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹特·表针|r
.home >>把你的炉石放在托斯利车站
.target Fizit "Doc" Clocktock
step
.use 30540 >>|cRXP_WARN_Use|r|T134939:0|t[Tally的弃权]
.collect 30539,1,10710,1 
.isOnQuest 10710
step
#requires ToshleyHS
#loop
.line Blade's Edge Mountains,57.94,60.39,58.24,59.08,58.54,57.48,57.74,57.20,57.51,55.84,58.14,55.17,56.95,55.01,56.45,59.74,57.94,60.39
.goto Blade's Edge Mountains,57.94,60.39,30,0
.goto Blade's Edge Mountains,58.24,59.08,30,0
.goto Blade's Edge Mountains,58.54,57.48,30,0
.goto Blade's Edge Mountains,57.74,57.20,30,0
.goto Blade's Edge Mountains,57.51,55.84,30,0
.goto Blade's Edge Mountains,58.14,55.17,30,0
.goto Blade's Edge Mountains,56.95,55.01,30,0
.goto Blade's Edge Mountains,56.45,59.74,30,0
.goto Blade's Edge Mountains,57.94,60.39,30,0
.use 30656 >>|cRXP_WARN_单击|r|cRXP_WARN_Power Converters |r|cRXP_WARN_to spawn |r| cRXP_ENEMY_Electromentals|r
>>|cRXP_WARN_在|cRXP_ENEMY_Electromentals|r上使用|r|T132488:0|t[Protovoltic Magneto Collector]| cRXP_WARN_on使其成为|r|cRXP_ENEMY_Encased Electromental|r
>>杀死|cRXP_ENEMY_Encased electrometals|r
.complete 10584,1 
.isOnQuest 10584
.mob Electromental
.mob Encased Electromental
step
#optional
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉沙克·铁墙|r
.accept 10632 >>接任务: |cRXP_LOOT_锋利的牙齿|r
.maxlevel 66,bemend << !tbc
.target Razak Ironsides
step
#label ToshStation
>>返回Toshley车站
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托什雷|r, |cRXP_FRIENDLY_晕乎乎的迪娜|r
.turnin 10584 >>交任务: |cRXP_FRIENDLY_能量转换器|r
.goto Blade's Edge Mountains,60.53,68.97
.target +Toshley
.accept 10620 >>接任务: |cRXP_LOOT_山脊上的危险|r
.goto Blade's Edge Mountains,60.40,68.75
.target +Dizzy Dina
.maxlevel 66,bemend << !tbc
step
#loop
.goto Blade's Edge Mountains,59.99,69.32,30,0
.goto Blade's Edge Mountains,60.28,68.98,30,0
.goto Blade's Edge Mountains,60.11,68.37,30,0
.goto Blade's Edge Mountains,59.81,68.29,30,0
.goto Blade's Edge Mountains,60.03,67.79,30,0
.goto Blade's Edge Mountains,60.31,68.23,30,0
.goto Blade's Edge Mountains,60.42,67.91,30,0
.goto Blade's Edge Mountains,60.54,68.76,30,0
.goto Blade's Edge Mountains,60.44,69.37,30,0
.line Blade's Edge Mountains,59.99,69.32,60.28,68.98,60.11,68.37,59.81,68.29,60.03,67.79,60.31,68.23,60.42,67.91,60.54,68.76,60.44,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉沙克·铁墙|r
.accept 10632 >>接任务: |cRXP_LOOT_锋利的牙齿|r
.unitscan Razak Ironsides
.maxlevel 66,bemend << !tbc
step
#completewith next
.goto Blade's Edge Mountains,60.175,68.794
.gossip 21461,1 >>对话: |cRXP_FRIENDLY_拉雷·萨普纳波|r
.timer 30,Test Flight RP
.isOnQuest 10710
step
>>等待RP
.goto Blade's Edge Mountains,60.175,68.794
.complete 10710,1 
.skipgossip 21461,1
.isOnQuest 10710
.target Rally Zapnabber
step
.goto Blade's Edge Mountains,67.71,72.74,50,0
.goto Blade's Edge Mountains,68.61,70.81,50,0
.goto Blade's Edge Mountains,69.40,66.26,50,0
.goto Blade's Edge Mountains,68.47,64.72,50,0
.goto Blade's Edge Mountains,66.98,63.63,50,0
.goto Blade's Edge Mountains,67.05,58.87,50,0
.goto Blade's Edge Mountains,67.90,49.98,50,0
.goto Blade's Edge Mountains,64.44,51.45,50,0
.goto Blade's Edge Mountains,62.32,52.92,50,0
.goto Blade's Edge Mountains,65.52,55.81
>>杀死|cRXP_ENEMY_Ridgespine跟踪者|r。|cRXP-WARN_他们在潜行，所以听潜行声|r
>>杀死|cRXP_ENEMY_Daggermaws|r。掠夺他们的|cRXX_Loot_Tethes|r
.complete 10632,1 
.mob +Daggermaw Lashtail
.complete 10620,1 
.mob +Ridgespine Stalker
.isOnQuest 10620
.isOnQuest 10632
step
#completewith next
.hs >>Hearth到Toshley车站
.cooldown item,6948,>2
step
#optional
#completewith next
>>单击|cRXP_PICK_Nether Drake Eggs |r以生成|cRXP_ENEMY_Nether Whelp|r
>>|cRXP_WARN_在生成的|cRXP_ENEMY_Nether Whelps|r上使用|r|T133869:0|t[Temporal Phase Modulator]|cRXP_WARN_on将其转换为|r|cRXX_ENEMY_Nether Drake|r
>>|cRXP_WARN_您可以使用|r|T133869:0|t[Temporal Phase Modulator]|cRXP_WARN_multiple times on the same |cRXP_ENEMY_Nether Drake|r将其更改为不同的类型|r
.complete 10609,1 
.mob +Proto-Nether Drake
.complete 10609,2 
.mob +Adolescent Nether Drake
.complete 10609,3 
.mob +Mature Nether Drake
.use 30742
.isOnQuest 10609
step
#loop
.line Blade's Edge Mountains,67.28,75.42,68.41,76.83,67.75,76.85,66.11,77.96,65.14,78.62,64.55,77.86,62.33,79.30,61.64,79.15,59.69,79.16,59.65,78.19,60.16,75.98,61.24,75.24,62.18,76.39,62.56,76.54,63.56,77.26,64.49,75.34,65.35,76.09,65.54,75.34,66.42,74.79,67.28,75.42
.goto Blade's Edge Mountains,67.28,75.42,40,0
.goto Blade's Edge Mountains,68.41,76.83,40,0
.goto Blade's Edge Mountains,67.75,76.85,40,0
.goto Blade's Edge Mountains,66.11,77.96,40,0
.goto Blade's Edge Mountains,65.14,78.62,40,0
.goto Blade's Edge Mountains,64.55,77.86,40,0
.goto Blade's Edge Mountains,62.33,79.30,40,0
.goto Blade's Edge Mountains,61.64,79.15,40,0
.goto Blade's Edge Mountains,59.69,79.16,40,0
.goto Blade's Edge Mountains,59.65,78.19,40,0
.goto Blade's Edge Mountains,60.16,75.98,40,0
.goto Blade's Edge Mountains,61.24,75.24,40,0
.goto Blade's Edge Mountains,62.18,76.39,40,0
.goto Blade's Edge Mountains,62.56,76.54,40,0
.goto Blade's Edge Mountains,63.56,77.26,40,0
.goto Blade's Edge Mountains,64.49,75.34,40,0
.goto Blade's Edge Mountains,65.35,76.09,40,0
.goto Blade's Edge Mountains,65.54,75.34,40,0
.goto Blade's Edge Mountains,66.42,74.79,40,0
.goto Blade's Edge Mountains,67.28,75.42,40,0
>>杀死|cRXP_ENEMY_Crystal Flayers|r
.complete 10608,1 
.isOnQuest 10608
.mob Crystal Flayer
step
#loop
.line Blade's Edge Mountains,67.28,75.42,68.41,76.83,67.75,76.85,66.11,77.96,65.14,78.62,64.55,77.86,62.33,79.30,61.64,79.15,59.69,79.16,59.65,78.19,60.16,75.98,61.24,75.24,62.18,76.39,62.56,76.54,63.56,77.26,64.49,75.34,65.35,76.09,65.54,75.34,66.42,74.79,67.28,75.42
.goto Blade's Edge Mountains,67.28,75.42,40,0
.goto Blade's Edge Mountains,68.41,76.83,40,0
.goto Blade's Edge Mountains,67.75,76.85,40,0
.goto Blade's Edge Mountains,66.11,77.96,40,0
.goto Blade's Edge Mountains,65.14,78.62,40,0
.goto Blade's Edge Mountains,64.55,77.86,40,0
.goto Blade's Edge Mountains,62.33,79.30,40,0
.goto Blade's Edge Mountains,61.64,79.15,40,0
.goto Blade's Edge Mountains,59.69,79.16,40,0
.goto Blade's Edge Mountains,59.65,78.19,40,0
.goto Blade's Edge Mountains,60.16,75.98,40,0
.goto Blade's Edge Mountains,61.24,75.24,40,0
.goto Blade's Edge Mountains,62.18,76.39,40,0
.goto Blade's Edge Mountains,62.56,76.54,40,0
.goto Blade's Edge Mountains,63.56,77.26,40,0
.goto Blade's Edge Mountains,64.49,75.34,40,0
.goto Blade's Edge Mountains,65.35,76.09,40,0
.goto Blade's Edge Mountains,65.54,75.34,40,0
.goto Blade's Edge Mountains,66.42,74.79,40,0
.goto Blade's Edge Mountains,67.28,75.42,40,0
>>单击|cRXP_PICK_Nether Drake Eggs |r以生成|cRXP_ENEMY_Nether Whelp|r
>>|cRXP_WARN_在生成的|cRXP_ENEMY_Nether Whelps|r上使用|r|T133869:0|t[Temporal Phase Modulator]|cRXP_WARN_on将其转换为|r|cRXX_ENEMY_Nether Drake|r
>>|cRXP_WARN_您可以使用|r|T133869:0|t[Temporal Phase Modulator]|cRXP_WARN_multiple times on the same |cRXP_ENEMY_Nether Drake|r将其更改为不同的类型|r
.use 30742
.isOnQuest 10609
.complete 10609,1 
.mob +Proto-Nether Drake
.complete 10609,2 
.mob +Adolescent Nether Drake
.complete 10609,3 
.mob +Mature Nether Drake
step
#completewith CrystalClear
.goto Blade's Edge Mountains,59.99,69.32,30,0
.goto Blade's Edge Mountains,60.28,68.98,30,0
.goto Blade's Edge Mountains,60.11,68.37,30,0
.goto Blade's Edge Mountains,59.81,68.29,30,0
.goto Blade's Edge Mountains,60.03,67.79,30,0
.goto Blade's Edge Mountains,60.31,68.23,30,0
.goto Blade's Edge Mountains,60.42,67.91,30,0
.goto Blade's Edge Mountains,60.54,68.76,30,0
.goto Blade's Edge Mountains,60.44,69.37
.line Blade's Edge Mountains,59.99,69.32,60.28,68.98,60.11,68.37,59.81,68.29,60.03,67.79,60.31,68.23,60.42,67.91,60.54,68.76,60.44,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉沙克·铁墙|r
.turnin 10632 >>交任务: |cRXP_FRIENDLY_锋利的牙齿|r
.unitscan Razak Ironsides
.maxlevel 66,bemend << !tbc
step
#questguide
>>返回Toshley车站
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_测量者尼克维克|r, |cRXP_FRIENDLY_晕乎乎的迪娜|r
.turnin 10608 >>交任务: |cRXP_FRIENDLY_水晶剥石者的麻烦|r
.accept 10594 >>接任务: |cRXP_LOOT_测量振荡频率|r
.goto Blade's Edge Mountains,60.22,68.94
.target +尼克温克尔地铁侏儒
.turnin 10620 >>交任务: |cRXP_FRIENDLY_山脊上的危险|r
.accept 10671 >>接任务: |cRXP_LOOT_不仅仅是一磅肉|r
.goto Blade's Edge Mountains,60.40,68.75
.target +Dizzy Dina
.maxlevel 66,bemend << !tbc
step
#label CrystalClear
>>返回Toshley车站
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_测量者尼克维克|r, |cRXP_FRIENDLY_晕乎乎的迪娜|r
.turnin 10608 >>交任务: |cRXP_FRIENDLY_水晶剥石者的麻烦|r
.accept 10594 >>接任务: |cRXP_LOOT_测量振荡频率|r
.goto Blade's Edge Mountains,60.22,68.94
.target +尼克温克尔地铁侏儒
.turnin 10620 >>交任务: |cRXP_FRIENDLY_山脊上的危险|r

.goto Blade's Edge Mountains,60.40,68.75
.target +Dizzy Dina
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,59.99,69.32,30,0
.goto Blade's Edge Mountains,60.28,68.98,30,0
.goto Blade's Edge Mountains,60.11,68.37,30,0
.goto Blade's Edge Mountains,59.81,68.29,30,0
.goto Blade's Edge Mountains,60.03,67.79,30,0
.goto Blade's Edge Mountains,60.31,68.23,30,0
.goto Blade's Edge Mountains,60.42,67.91,30,0
.goto Blade's Edge Mountains,60.54,68.76,30,0
.goto Blade's Edge Mountains,60.44,69.37
.line Blade's Edge Mountains,59.99,69.32,60.28,68.98,60.11,68.37,59.81,68.29,60.03,67.79,60.31,68.23,60.42,67.91,60.54,68.76,60.44,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉沙克·铁墙|r
.turnin 10632 >>交任务: |cRXP_FRIENDLY_锋利的牙齿|r
.unitscan Razak Ironsides
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,60.21,74.83
>>|cRXP_WARN_使用|r|T132995:0|t[Oscillating Frequency Scanners]|cRXP_WARN_to在地面上种植一根杆。你需要把他们排成一个五边形的队形，彼此相距40码。插完5根之后，站在它中间|r
.complete 10594,1 
.use 30701
.isOnQuest 10594
step
#questguide
>>返回Toshley车站
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉沙克·铁墙|r, |cRXP_FRIENDLY_塔利·萨普纳波|r, |cRXP_FRIENDLY_菲兹特·表针|r
Talk to Nickwinkle, Tally, and Fizit
.turnin 10594 >>交任务: |cRXP_FRIENDLY_测量振荡频率|r
.goto Blade's Edge Mountains,60.22,68.94
.target +尼克温克尔地铁侏儒
.turnin 10710 >>交任务: |cRXP_FRIENDLY_试飞：晶歌山脉|r
.accept 10711 >>接任务: |cRXP_LOOT_试飞：拉扎安码头|r
.goto Blade's Edge Mountains,60.28,68.39
.target +Tally Zapnabber
.turnin 10609 >>交任务: |cRXP_FRIENDLY_先有龙还是先有蛋？|r
.goto Blade's Edge Mountains,60.98,68.11
.target +Fizit "Doc" Clocktock
.maxlevel 66,bemend << !tbc
step
>>返回Toshley车站
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_测量者尼克维克|r, |cRXP_FRIENDLY_塔利·萨普纳波|r, |cRXP_FRIENDLY_菲兹特·表针|r
.turnin 10594 >>交任务: |cRXP_FRIENDLY_测量振荡频率|r
.goto Blade's Edge Mountains,60.22,68.94
.target +尼克温克尔地铁侏儒
.turnin 10710 >>交任务: |cRXP_FRIENDLY_试飞：晶歌山脉|r

.goto Blade's Edge Mountains,60.28,68.39
.target +Tally Zapnabber
.turnin 10609 >>交任务: |cRXP_FRIENDLY_先有龙还是先有蛋？|r
.goto Blade's Edge Mountains,60.98,68.11
.target +Fizit "Doc" Clocktock
.maxlevel 66,bemend << !tbc
step
#questguide
.goto Blade's Edge Mountains,60.175,68.794
.gossipoption 92112 >>对话: |cRXP_FRIENDLY_拉雷·萨普纳波|r
.timer 40,Test Flight RP
.skipgossip
.isOnQuest 10711
.target Rally Zapnabber
step
#questguide
.complete 10711,1 
.goto Blade's Edge Mountains,66.98,48.90,300 >>等待RP
.isOnQuest 10711
step
#questguide
.goto Blade's Edge Mountains,67.2,43.6
>>杀死|cRXP_ENEMY_Fiendling Flesh Beasts|r。掠夺它们的|cRXX_Loot_Flash|r
.complete 10671,1 
.isOnQuest 10671
.target Fiendling Flesh Beast
step
>>前往Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坦莫|r, |cRXP_FRIENDLY_护树者查恩|r
.accept 10567 >>接任务: |cRXP_LOOT_制造坠饰|r
.goto Blade's Edge Mountains,62.16,39.11
.target +Timeon
.accept 10682 >>接任务: |cRXP_LOOT_该谈判了......|r
.goto Blade's Edge Mountains,61.97,39.47
.target +Tree Warden Chawn
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,61.68,39.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲恩·叶影|r
.fp Evergrove >>获取Evergrove飞行路线
.target Fhyn Leafshadow
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古树莫斯伍德|r, |cRXP_FRIENDLY_指挥官海弗斯·石墙|r, |cRXP_FRIENDLY_法维瑟中尉|r, |cRXP_FRIENDLY_法拉蒂拉|r
.accept 10770 >>接任务: |cRXP_LOOT_灰烬中的小鬼|r
.accept 10771 >>接任务: |cRXP_LOOT_灰烬中的新生|r
.goto Blade's Edge Mountains,61.25,38.46
.target +Mosswood the Ancient
.accept 10795 >>接任务: |cRXP_LOOT_多古克|r
.goto Blade's Edge Mountains,61.98,37.98
.target +指挥官海弗斯·石墙
.accept 10796 >>接任务: |cRXP_LOOT_踏平血槌营地！|r
.goto Blade's Edge Mountains,61.98,37.94
.target +Lieutenant Fairweather
.accept 10753 >>接任务: |cRXP_WARN_清理荒野|r
.goto Blade's Edge Mountains,62.56,38.23
.target +Faradrella
.maxlevel 66,bemend << !tbc
step
#completewith Damaged
.goto Blade's Edge Mountains,62.86,38.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃蕾尔娅|r
.home >>将您的炉石设置为Evergrove
.maxlevel 66,bemend << !tbc
.target Innkeeper Aelerya
step
#completewith next
.goto Blade's Edge Mountains,65.43,39.76,40,0
.goto Blade's Edge Mountains,66.89,38.38,40 >>沿着山路跑
.skill riding,225,1
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Felyadded Scalewings |r和|cRXP_ENEMY_Daggermaws|r
.complete 10753,1 
.mob +Felsworn Scalewing
.complete 10753,2 
.mob +Felsworn Daggermaw
.isOnQuest 10753
step
#label Damaged
.goto Blade's Edge Mountains,69.23,37.45,60,0
.goto Blade's Edge Mountains,68.66,33.30,60,0
.goto Blade's Edge Mountains,71.75,32.63,60,0
.goto Blade's Edge Mountains,70.98,27.92
.use 31384 >>杀死|cRXP_ENEMY_Fel腐蚀者|r。掠夺他们的|T133133:0|t[|cRXP_Loot_损坏的面具|r]
>>|cRXP_WARN_使用|r|T133133:0|t[|cRXP_OOT_Damaged Mask|r]|cRXP-WARN_to开始任务|r
.complete 10753,3 
.collect 31384,1,10810,1 
.accept 10810 >>接任务: |cRXP_LOOT_损坏的面具|r
.unitscan Fel Corrupter
.isOnQuest 10753
step
#loop
.line Blade's Edge Mountains,68.77,34.63,68.31,30.34,70.65,30.50,70.91,26.73,73.67,26.67,73.39,30.11,71.84,34.87,68.77,34.63
.goto Blade's Edge Mountains,68.77,34.63,60,0
.goto Blade's Edge Mountains,68.31,30.34,60,0
.goto Blade's Edge Mountains,70.65,30.50,60,0
.goto Blade's Edge Mountains,70.91,26.73,60,0
.goto Blade's Edge Mountains,73.67,26.67,60,0
.goto Blade's Edge Mountains,73.39,30.11,60,0
.goto Blade's Edge Mountains,71.84,34.87,60,0
.goto Blade's Edge Mountains,68.77,34.63,60,0
>>杀死|cRXP_ENEMY_Felyadded Scalewings |r和|cRXP_ENEMY_Daggermaws|r
.complete 10753,1 
.mob +Felsworn Scalewing
.complete 10753,2 
.mob +Felsworn Daggermaw
.isOnQuest 10753
step
#completewith next
>>杀死|cRXP_ENEMY_Scorch Imps|r
.complete 10770,1 
.isOnQuest 10770
.mob Scorch Imp
step
.use 31300 >>|cRXP_WARN_在|r|cRXP_PICK_火山土上使用|r|T134059:0|t[铁根种子]|cRXP-WARN_|r
.complete 10771,1 
.goto Blade's Edge Mountains,71.66,22.38
.complete 10771,2 
.goto Blade's Edge Mountains,71.61,20.31
.complete 10771,3 
.goto Blade's Edge Mountains,71.59,18.50
.isOnQuest 10771
step
#loop
.line Blade's Edge Mountains,70.65,18.63,70.63,20.56,70.65,22.68,71.06,23.80,71.92,24.64,72.31,22.97,71.71,21.21,73.06,20.10,73.44,18.06,70.65,18.63
.goto Blade's Edge Mountains,70.65,18.63,50,0
.goto Blade's Edge Mountains,70.63,20.56,50,0
.goto Blade's Edge Mountains,70.65,22.68,50,0
.goto Blade's Edge Mountains,71.06,23.80,50,0
.goto Blade's Edge Mountains,71.92,24.64,50,0
.goto Blade's Edge Mountains,72.31,22.97,50,0
.goto Blade's Edge Mountains,71.71,21.21,50,0
.goto Blade's Edge Mountains,73.06,20.10,50,0
.goto Blade's Edge Mountains,73.44,18.06,50,0
.goto Blade's Edge Mountains,70.65,18.63,50,0
>>杀死|cRXP_ENEMY_Scorch Imps|r
.complete 10770,1 
.isOnQuest 10770
.mob Scorch Imp
step
#completewith next
.hs >>赫斯到埃弗格罗夫
.cooldown item,6948,>2
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法拉蒂拉|r, |cRXP_FRIENDLY_古树莫斯伍德|r, |cRXP_FRIENDLY_欧玛利·萨普纳波|r
.turnin 10753 >>交任务: |cRXP_FRIENDLY_清理荒野|r
.goto Blade's Edge Mountains,62.56,38.23
.target +Faradrella
.turnin 10770 >>交任务: |cRXP_FRIENDLY_灰烬中的小鬼|r
.turnin 10771 >>交任务: |cRXP_FRIENDLY_灰烬中的新生|r
.goto Blade's Edge Mountains,61.25,38.46
.target +Mosswood the Ancient
.turnin 10810 >>交任务: |cRXP_FRIENDLY_损坏的面具|r
.accept 10812 >>接任务: |cRXP_LOOT_神秘的面具|r
.goto Blade's Edge Mountains,62.66,40.38
.target +O'Mally Zapnabber
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荒野之王安塔里恩|r
.turnin 10812 >>交任务: |cRXP_FRIENDLY_神秘的面具|r
.accept 10819 >>接任务: |cRXP_LOOT_魔誓防毒面具|r
.maxlevel 66,bemend << !tbc
.target Wildlord Antelarion
step
#completewith next
.equip 1,10819 >>|cRXP_WARN_配备|r|T133133:0|t[带面罩的防毒面具]|cRXP_WARN_to，以便能够与|r|cRXP-FRIENDLY_Legion通信器通话|r
.use 10819
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Legion Communicator|r with your |T133133:0|t[Felsworn Gas Mask] equipped
.goto Blade's Edge Mountains,73.27,40.03
.turnin 10819 >>交任务: |cRXP_FRIENDLY_魔誓防毒面具|r
.accept 10820 >>接任务: |cRXP_LOOT_欺骗敌人|r
.use 31366
.maxlevel 66,bemend << !tbc
step
#loop
.line Blade's Edge Mountains,74.28,38.54,75.39,39.66,74.93,40.17,75.30,41.73,74.22,42.56,73.77,41.02,74.28,38.54
.goto Blade's Edge Mountains,74.28,38.54,40,0
.goto Blade's Edge Mountains,75.39,39.66,40,0
.goto Blade's Edge Mountains,74.93,40.17,40,0
.goto Blade's Edge Mountains,75.30,41.73,40,0
.goto Blade's Edge Mountains,74.22,42.56,40,0
.goto Blade's Edge Mountains,73.77,41.02,40,0
.goto Blade's Edge Mountains,74.28,38.54,40,0
>>|cRXP_WARN_重新装备普通头盔|r
>>杀死|cRXP_ENEMY_Doomforge服务员|r和|cRXX_ENEMY_Engineers |r
.complete 10820,1 
.mob +Doomforge Attendant
.complete 10820,2 
.mob +Doomforge Engineer
.isOnQuest 10820
step
#completewith next
.equip 1,10819 >>|cRXP_WARN_配备|r|T133133:0|t[带面罩的防毒面具]|cRXP_WARN_to，以便能够与|r|cRXP-FRIENDLY_Legion通信器通话|r
.use 10819
step
.goto Blade's Edge Mountains,73.27,40.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Legion Communicator|r with your |T133133:0|t[Felsworn Gas Mask] equipped
.turnin 10820 >>交任务: |cRXP_FRIENDLY_欺骗敌人|r
.accept 10821 >>接任务: |cRXP_LOOT_你玩完了！|r
.maxlevel 66,bemend << !tbc

step
#loop
.line Blade's Edge Mountains,73.63,39.14,72.82,40.35,72.90,40.76,72.92,41.50,72.90,41.96,73.36,42.46,73.39,43.64,74.38,41.90,74.01,38.52,73.63,39.14
.goto Blade's Edge Mountains,73.63,39.14,40,0
.goto Blade's Edge Mountains,72.82,40.35,40,0
.goto Blade's Edge Mountains,72.90,40.76,40,0
.goto Blade's Edge Mountains,72.92,41.50,40,0
.goto Blade's Edge Mountains,72.90,41.96,40,0
.goto Blade's Edge Mountains,73.36,42.46,40,0
.goto Blade's Edge Mountains,73.39,43.64,40,0
.goto Blade's Edge Mountains,74.38,41.90,40,0
.goto Blade's Edge Mountains,74.01,38.52,40,0
.goto Blade's Edge Mountains,73.63,39.14,40,0
>>杀死|cRXP_ENEMY_Anger Guards|r。偷走它们|cRXD_Loot_Camp Anger Keys|r
>>|cRXP_WARN_尚未单击任何|cRXP_WARN_Belisk|r|r
.collect 31536,5,10821,1 
.isOnQuest 10821
.mob Anger Guard
step
#completewith Doomcryer
#label FirstO
.goto Blade's Edge Mountains,73.53,43.51
.cast 38746 >>单击|cRXP_PICK_First方尖碑|r
>>|cRXP_WARN_*如果无法单击，请跳过此步骤|r
.isOnQuest 10821
step
#completewith Doomcryer
#requires FirstO
#label SecondO
.goto Blade's Edge Mountains,73.82,41.03
.cast 38746 >>单击|cRXP_PICK_Second方尖碑|r
>>|cRXP_WARN_*如果无法单击，请跳过此步骤|r
.isOnQuest 10821
step
#completewith Doomcryer
#requires SecondO
#label ThirdO
.goto Blade's Edge Mountains,73.94,39.89
.cast 38746 >>单击|cRXP_PICK_Third方尖碑|r
>>|cRXP_WARN_*如果无法单击，请跳过此步骤|r
.isOnQuest 10821
step
#completewith Doomcryer
#requires ThirdO
#label FourthO
.goto Blade's Edge Mountains,75.45,40.52
.cast 38746 >>单击|cRXP_PICK_Fourth Obelisk|r
>>|cRXP_WARN_*如果无法单击，请跳过此步骤|r
.isOnQuest 10821
step
#completewith Doomcryer
#requires FourthO
.goto Blade's Edge Mountains,75.33,41.74
.cast 38746 >>单击|cRXP_PICK_Fifth Obelisk|r
>>|cRXP_WARN_*如果无法单击，请跳过此步骤|r
.timer 30,Doomcryer Spawn
.isOnQuest 10821
step
#label Doomcryer
.goto Blade's Edge Mountains,74.32,42.52
>>点击营地周围的|cRXP_PICK_Five Obelisk|r，召唤|cRXP_ENEMY_Doomcryer|r
>>杀死|cRXP_ENEMY_Doomcryer|r
>>|cRXP_ENEMY_Doomcryer|r|cRXP_WARN_可能会受到许多人群控制能力的影响，如减速和恐惧|r
>>|cRXP_WARN_这个任务很难。如果需要，为她找一个小组。如果你找不到一个团体或独自一人，请跳过这一步|r
.complete 10821,1 
.isOnQuest 10821
.mob Doomcryer
step
#completewith Nuaar
.hs >>赫斯到埃弗格罗夫
.cooldown item,6948,>2
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荒野之王安塔里恩|r
.turnin 10821 >>交任务: |cRXP_FRIENDLY_你玩完了！|r
.isQuestComplete 10821
.maxlevel 66,bemend << !tbc
.target Wildlord Antelarion
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荒野之王安塔里恩|r
.accept 10910 >>接任务: |cRXP_LOOT_死亡之门|r
.isQuestTurnedIn 10821
.maxlevel 66,bemend << !tbc
.target Wildlord Antelarion
step
#label Nuaar
.line Blade's Edge Mountains,62.82,25.94,63.12,27.41,63.34,27.87,63.28,28.37,62.73,28.77,62.45,29.31,62.37,29.65,62.44,31.66,62.11,33.34,61.80,34.00,61.43,34.10,60.61,33.98,60.12,34.47,60.01,34.80,60.08,35.15,59.90,35.72,59.60,36.07,59.11,36.21,58.96,36.61,58.65,36.91,58.18,36.96,57.90,37.34,57.84,37.81,59.13,39.47,59.90,40.27,60.51,40.90,61.50,42.02,61.78,42.41,62.62,43.95,62.97,45.05,63.06,46.38
63.06,46.38
.goto Blade's Edge Mountains,63.06,46.38,60,0
.goto Blade's Edge Mountains,62.97,45.05,60,0
.goto Blade's Edge Mountains,62.62,43.95,60,0
.goto Blade's Edge Mountains,61.78,42.41,60,0
.goto Blade's Edge Mountains,61.50,42.02,60,0
.goto Blade's Edge Mountains,60.51,40.90,60,0
.goto Blade's Edge Mountains,59.90,40.27,60,0
.goto Blade's Edge Mountains,59.13,39.47,60,0
.goto Blade's Edge Mountains,57.84,37.81,60,0
.goto Blade's Edge Mountains,57.90,37.34,60,0
.goto Blade's Edge Mountains,58.18,36.96,60,0
.goto Blade's Edge Mountains,58.65,36.91,60,0
.goto Blade's Edge Mountains,58.96,36.61,60,0
.goto Blade's Edge Mountains,59.11,36.21,60,0
.goto Blade's Edge Mountains,59.60,36.07,60,0
.goto Blade's Edge Mountains,59.90,35.72,60,0
.goto Blade's Edge Mountains,60.08,35.15,60,0
.goto Blade's Edge Mountains,60.01,34.80,60,0
.goto Blade's Edge Mountains,60.12,34.47,60,0
.goto Blade's Edge Mountains,60.61,33.98,60,0
.goto Blade's Edge Mountains,61.80,34.00,60,0
.goto Blade's Edge Mountains,62.11,33.34,60,0
.goto Blade's Edge Mountains,62.44,31.66,60,0
.goto Blade's Edge Mountains,62.37,29.65,60,0
.goto Blade's Edge Mountains,62.45,29.31,60,0
.goto Blade's Edge Mountains,62.73,28.77,60,0
.goto Blade's Edge Mountains,63.28,28.37,60,0
.goto Blade's Edge Mountains,63.34,27.87,60,0
.goto Blade's Edge Mountains,63.12,27.41,60,0
.goto Blade's Edge Mountains,62.82,25.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头努埃尔|r
>>|cRXP_FRIENDLY_监督Nuaar|r|cRXP_WARN_巡视鲁昂威尔的Wyrmcult营地|r
.complete 10682,1 
.unitscan Overseer Nuaar
.skipgossip
.isOnQuest 10682
step
>>返回Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护树者查恩|r, |cRXP_FRIENDLY_萨米亚·因克林|r
.turnin 10682 >>交任务: |cRXP_FRIENDLY_该谈判了......|r
.accept 10713 >>接任务: |cRXP_LOOT_......谈判不成就动手！|r
.goto Blade's Edge Mountains,61.97,39.47
.target +Tree Warden Chawn
.accept 10717 >>接任务: |cRXP_LOOT_偷猎|r
.goto Blade's Edge Mountains,61.94,39.45
.target +Samia Inkling
.maxlevel 66,bemend << !tbc
step
#completewith next
#loop
.line Blade's Edge Mountains,63.61,34.11,65.32,34.83,65.52,31.59,65.32,29.29,63.99,31.39,63.61,34.11
.goto Blade's Edge Mountains,63.61,34.11,50,0
.goto Blade's Edge Mountains,65.32,34.83,50,0
.goto Blade's Edge Mountains,65.52,31.59,50,0
.goto Blade's Edge Mountains,65.32,29.29,50,0
.goto Blade's Edge Mountains,63.99,31.39,50,0
.goto Blade's Edge Mountains,63.61,34.11,50,0
>>杀死|cRXP_ENEMY_Ruuan'ok|r。掠夺他们的|cRXX_Loot_爪|r
.collect 30704,6,10567,1 
.isOnQuest 10567
.mob Ruuan'ok Cloudgazer
.mob Ruuan'ok Skyfury
.mob Ruuan'ok Ravenguard
.mob Ruuan'ok Matriarch
step
.goto Blade's Edge Mountains,64.48,33.09
.use 30704 >>|cRXP_WARN_使用绿色圆圈中的|r|T134295:0|t[Ruuan'ok爪]|cRXP_WARN_in召唤乌鸦的|r| cRXP_ENEMY_Harbinger|r
>>杀死乌鸦的|cRXP_ENEMY_Harbinger |r。掠夺他的|cRXX_Loot_Pendint|r
.cast 37426
.timer 8,Creating the Pendant RP
.complete 10567,1 
.isOnQuest 10567
.mob Harbinger of the Raven
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Wyrmcult Hewers|r和|cRXD_ENEMY_Wyrmcult偷猎者|r。为|T134942:0|t[|cRXP_Loot_Meeting Note|r]掠夺它们
.use 31120 >>|cRXP_WARN_使用|r|T134942:0|t[|cRXP_OOT_Meeting备注|r]|cRXP-WARN_to开始任务|r
.collect 31120,1,10719,1 
.accept 10719 >>接任务: |cRXP_LOOT_你拿到记录了吗？|r
.isOnQuest 10713
step
#loop
.line Blade's Edge Mountains,59.62,38.72,57.43,39.14,57.71,37.76,59.10,36.09,59.93,35.16,60.82,33.54,62.10,32.35,61.78,27.86,62.89,25.82,63.56,27.91,62.10,32.35,61.55,34.48,60.09,36.97,59.62,38.72
.goto Blade's Edge Mountains,59.62,38.72,50,0
.goto Blade's Edge Mountains,57.43,39.14,50,0
.goto Blade's Edge Mountains,57.71,37.76,50,0
.goto Blade's Edge Mountains,59.10,36.09,50,0
.goto Blade's Edge Mountains,59.93,35.16,50,0
.goto Blade's Edge Mountains,60.82,33.54,50,0
.goto Blade's Edge Mountains,62.10,32.35,50,0
.goto Blade's Edge Mountains,61.78,27.86,50,0
.goto Blade's Edge Mountains,62.89,25.82,50,0
.goto Blade's Edge Mountains,63.56,27.91,50,0
.goto Blade's Edge Mountains,62.10,32.35,50,0
.goto Blade's Edge Mountains,61.55,34.48,50,0
.goto Blade's Edge Mountains,60.09,36.97,50,0
.goto Blade's Edge Mountains,59.62,38.72,50,0
>>杀死|cRXP_ENEMY_Wyrmcult偷猎者|r和|cRXD_ENEMY_Wyrmcult Hewers|r。掠夺|cRXP_ENEMY_偷猎者|r|cRXP_OOT_Nets|r
.complete 10717,1 
.mob +Wyrmcult Poacher
.mob +Wyrmcult Hewer
.complete 10713,1 
.mob +Wyrmcult Hewer
.isOnQuest 10713
step
#loop
.line Blade's Edge Mountains,59.62,38.72,57.43,39.14,57.71,37.76,59.10,36.09,59.93,35.16,60.82,33.54,62.10,32.35,61.78,27.86,62.89,25.82,63.56,27.91,62.10,32.35,61.55,34.48,60.09,36.97,59.62,38.72
.goto Blade's Edge Mountains,59.62,38.72,50,0
.goto Blade's Edge Mountains,57.43,39.14,50,0
.goto Blade's Edge Mountains,57.71,37.76,50,0
.goto Blade's Edge Mountains,59.10,36.09,50,0
.goto Blade's Edge Mountains,59.93,35.16,50,0
.goto Blade's Edge Mountains,60.82,33.54,50,0
.goto Blade's Edge Mountains,62.10,32.35,50,0
.goto Blade's Edge Mountains,61.78,27.86,50,0
.goto Blade's Edge Mountains,62.89,25.82,50,0
.goto Blade's Edge Mountains,63.56,27.91,50,0
.goto Blade's Edge Mountains,62.10,32.35,50,0
.goto Blade's Edge Mountains,61.55,34.48,50,0
.goto Blade's Edge Mountains,60.09,36.97,50,0
.goto Blade's Edge Mountains,59.62,38.72,50,0
>>杀死|cRXP_ENEMY_Wyrmcult Hewers|r和|cRXD_ENEMY_Wyrmcult偷猎者|r。为|T134942:0|t[|cRXP_Loot_Meeting Note|r]掠夺它们
.use 31120 >>|cRXP_WARN_使用|r|T134942:0|t[|cRXP_OOT_Meeting备注|r]|cRXP-WARN_to开始任务|r
.collect 31120,1,10719,1 
.accept 10719 >>接任务: |cRXP_LOOT_你拿到记录了吗？|r
.isOnQuest 10713
.mob Wyrmcult Hewer
.mob Wyrmcult Poacher
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_Bloodmaul Maulers|r和|cRXD_ENEMY_blodmaul Warlocks|r
.complete 10796,1 
.mob +Bloodmaul Mauler
.complete 10796,2 
.mob +Bloodmaul Warlock
.isOnQuest 10796
step
.goto Blade's Edge Mountains,54.80,24.71,30,0
.goto Blade's Edge Mountains,55.15,24.05
>>|cRXP_WARN_上楼去|r
.use 31363 >>杀死|cRXP_ENEMY_Dorgok|r。掠夺他以获得|T134451:0|t[|cRXP-Loot_ Gronn的青睐|r]
>>|cRXP_WARN_使用|r|T134451:0|t[|cRXP_LOOT_ Gronn的收藏夹|r]|cRXP_WARN_开始任务|r
.complete 10795,1 
.collect 31363,1,10797,1 
.accept 10797 >>接任务: |cRXP_LOOT_戈隆的信物|r
.isOnQuest 10796
.mob Dorgok
step
#loop
.line Blade's Edge Mountains,57.05,27.86,55.30,27.11,55.18,24.26,56.40,22.11,57.70,24.45,56.91,25.87,57.93,29.95,54.68,33.92,57.05,27.86
.goto Blade's Edge Mountains,57.05,27.86,50,0
.goto Blade's Edge Mountains,55.30,27.11,50,0
.goto Blade's Edge Mountains,55.18,24.26,50,0
.goto Blade's Edge Mountains,56.40,22.11,50,0
.goto Blade's Edge Mountains,57.70,24.45,50,0
.goto Blade's Edge Mountains,56.91,25.87,50,0
.goto Blade's Edge Mountains,57.93,29.95,50,0
.goto Blade's Edge Mountains,54.68,33.92,50,0
.goto Blade's Edge Mountains,57.05,27.86,50,0
>>杀死|cRXP_ENEMY_Bloodmaul Maulers|r和|cRXD_ENEMY_blodmaul Warlocks|r
.complete 10796,1 
.mob +Bloodmaul Mauler
.complete 10796,2 
.mob +Bloodmaul Warlock
.isOnQuest 10796
step
#completewith Evergrove2
.goto Blade's Edge Mountains,59.12,32.12,40,0
.goto Blade's Edge Mountains,60.38,28.77,40,0
.goto Blade's Edge Mountains,61.54,29.73,40 >>沿着山路骑行
.cooldown item,6948,<0
.skill riding,225,1
step
#optional
#completewith next
.hs >>赫斯到埃弗格罗夫
.cooldown item,6948,>2
step
#label Evergrove2
>>返回Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法维瑟中尉|r, |cRXP_FRIENDLY_指挥官海弗斯·石墙|r, |cRXP_FRIENDLY_坦莫|r, |cRXP_FRIENDLY_护树者查恩|r, |cRXP_FRIENDLY_萨米亚·因克林|r
.turnin 10796 >>交任务: |cRXP_FRIENDLY_踏平血槌营地！|r
.goto Blade's Edge Mountains,61.98,37.94
.target +Lieutenant Fairweather
.turnin 10795 >>交任务: |cRXP_FRIENDLY_多古克|r
.turnin 10797 >>交任务: |cRXP_FRIENDLY_戈隆的信物|r
.accept 10798 >>接任务: |cRXP_LOOT_拜访男爵|r
.goto Blade's Edge Mountains,61.98,37.98
.target +指挥官海弗斯·石墙
.turnin 10567 >>交任务: |cRXP_FRIENDLY_制造坠饰|r
.accept 10607 >>接任务: |cRXP_LOOT_乌鸦之神的低语|r
.goto Blade's Edge Mountains,62.16,39.11
.target +Timeon
.turnin 10713 >>交任务: |cRXP_FRIENDLY_......谈判不成就动手！|r
.turnin 10719 >>交任务: |cRXP_FRIENDLY_你拿到记录了吗？|r
.accept 10894 >>接任务: |cRXP_LOOT_龙颅观察者|r
.goto Blade's Edge Mountains,61.97,39.47
.target +Tree Warden Chawn
.turnin 10717 >>交任务: |cRXP_FRIENDLY_偷猎|r
.accept 10747 >>接任务: |cRXP_LOOT_拜龙教的龙崽|r
.goto Blade's Edge Mountains,61.94,39.45
.target +Samia Inkling
.maxlevel 66,bemend << !tbc
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨博迈恩男爵|r
.turnin 10798 >>交任务: |cRXP_FRIENDLY_拜访男爵|r
.accept 10799 >>接任务: |cRXP_LOOT_进入沸土峡谷|r
.maxlevel 66,bemend << !tbc
.target Baron Sablemane
step
#loop
.line Blade's Edge Mountains,51.18,37.94,48.99,41.05,49.28,44.96,47.16,45.03,45.19,47.89,44.82,44.78,47.03,43.18,48.99,41.05
.goto Blade's Edge Mountains,51.18,37.94,50,0
.goto Blade's Edge Mountains,48.99,41.05,50,0
.goto Blade's Edge Mountains,49.28,44.96,50,0
.goto Blade's Edge Mountains,47.16,45.03,50,0
.goto Blade's Edge Mountains,45.19,47.89,50,0
.goto Blade's Edge Mountains,44.82,44.78,50,0
.goto Blade's Edge Mountains,47.03,43.18,50,0
.goto Blade's Edge Mountains,48.99,41.05,50,0
>>杀死|cRXP_ENEMY_Young地壳爆发|r和|cRXP_ENEMY_Greater地壳爆发|r.掠夺它们的|cRXD_Loot_Venom Glands|r
.complete 10799,1 
.isOnQuest 10799
.mob Greater Crust Burster
.mob Young Crust Burster
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨博迈恩男爵|r
.turnin 10799 >>交任务: |cRXP_FRIENDLY_进入沸土峡谷|r
.accept 10800 >>接任务: |cRXP_LOOT_晚安，戈隆|r
.maxlevel 66,bemend << !tbc
.target Baron Sablemane
step
#completewith next
.cast 38510 >>|cRXP_WARN_使用|r|T132858:0|t[Sablemane's安眠药]|cRXP_WARN_on|r|cRXP-ENEMY_Grulloc|r
.use 31403
.isOnQuest 10800
.target Grulloc
step
.goto Blade's Edge Mountains,60.90,47.77
>>|cRXP_WARN_如果|r|T132858:0|t[安眠药]|cRXP_WARN_resists，请在|r|cRXP_ENEMY_Grulloc |r|cRXP_WARN_again|r上使用。将|cRXD_ENEMY_Grulloc旁边的|cRXP_Loot_Sack |r洗劫一空|r
.complete 10800,1 
.use 31403
.isOnQuest 10800
.target Grulloc
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨博迈恩男爵|r
.turnin 10800 >>交任务: |cRXP_FRIENDLY_晚安，戈隆|r
.accept 10801 >>接任务: |cRXP_LOOT_这是个陷阱！|r
.maxlevel 66,bemend << !tbc
.target Baron Sablemane
step << !Shaman
#completewith Evergrove3
.goto Blade's Edge Mountains,58.64,46.20,40,0
.goto Blade's Edge Mountains,59.95,44.60,40,0
.goto Blade's Edge Mountains,58.50,43.70,40,0
.goto Blade's Edge Mountains,59.40,42.14,40 >>沿着山路骑行
.cooldown item,6948,<0
.skill riding,225,1
step << Shaman
#completewith next
.hs >>赫斯到埃弗格罗夫
.cooldown item,6948,>2
step
#label Evergrove3
>>返回Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官海弗斯·石墙|r, |cRXP_FRIENDLY_法维瑟中尉|r
.turnin 10801 >>交任务: |cRXP_FRIENDLY_这是个陷阱！|r
.accept 10802 >>接任务: |cRXP_LOOT_食龙者高格鲁姆|r
.goto Blade's Edge Mountains,61.98,37.98
.target +指挥官海弗斯·石墙
.accept 10803 >>接任务: |cRXP_LOOT_砾石营地的食人魔|r
.goto Blade's Edge Mountains,61.98,37.94
.target +Lieutenant Fairweather
.maxlevel 66,bemend << !tbc
step
#completewith Evergrove3
.goto Blade's Edge Mountains,55.90,39.76,60,0
.goto Blade's Edge Mountains,59.40,42.14,40 >>过桥
.skill riding,225,1
step
.goto Blade's Edge Mountains,50.35,36.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_观察者希德·月影|r
.turnin 10894 >>交任务: |cRXP_FRIENDLY_龙颅观察者|r
.accept 10893 >>接任务: |cRXP_LOOT_德莱卡·长尾|r
.maxlevel 66,bemend << !tbc
.target Watcher Moonshade
step
>>杀死隧道内的|cRXP_ENEMY_Draaca长尾|r
.goto Blade's Edge Mountains,46.03,32.93,40,0
.goto Blade's Edge Mountains,45.81,32.90,40,0
.goto Blade's Edge Mountains,44.78,32.07
.complete 10893,1 
.unitscan Draaca Longtail
.isOnQuest 10893
step
.goto Blade's Edge Mountains,49.92,35.92,20,0
.goto Blade's Edge Mountains,50.35,36.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_观察者希德·月影|r
.turnin 10893 >>交任务: |cRXP_FRIENDLY_德莱卡·长尾|r
.accept 10722 >>接任务: |cRXP_LOOT_黑翼集会所|r
.maxlevel 66,bemend << !tbc
.target Watcher Moonshade
step
#optional
#completewith Prophecy
>>杀死|cRXP_ENEMY_Grishna|r。为|T136210:0|t[|cRXP-Loot_Orb of the Grishna |r]掠夺它们
.use 31489 >>|cRXP_WARN_使用|r|T136210:0|t[|cRXP_LOOT_Orb of the Grishna |r]|cRXT_WARN_to开始任务|r
.collect 31489,1,10825,1 
.accept 10825 >>接任务: |cRXP_LOOT_神秘的宝珠|r
.isOnQuest 10607
.mob Grishna Falconwing
.mob Grishna Harbinger
.mob Grishna Matriarch
.mob Grishna Scorncrow
step
#optional
#completewith Prophecy
+杀死|cRXP_ENEMY_Grishna|r
>>|cRXP_WARN_当他们死去时，站在他们旁边，等待获得|r|T132188:0|t[理解渡鸦语]|cRXP_WARN_buff的机会，这是接收|r|cRX_PICK_Propheces所需的|r
.aura 37642
.aura 37466
.isOnQuest 10607
.mob Grishna Falconwing
.mob Grishna Harbinger
.mob Grishna Matriarch
.mob Grishna Scorncrow
step
>>|cRXP_WARN_前往Grishnath中的|cRXP_PICK_Propheces|r接收它们|r
.complete 10607,4 
.goto Blade's Edge Mountains,40.18,23.02
.complete 10607,3 
.goto Blade's Edge Mountains,40.67,18.63
.isOnQuest 10607
step
#completewith next
.goto Blade's Edge Mountains,40.61,17.46,20,0
.goto Blade's Edge Mountains,39.92,16.42,20,0
.goto Blade's Edge Mountains,39.02,17.25,20 >>|cRXP_WARN_爬上西侧的树平台。过桥，然后单击|r|cRXP_PICK_Prophecy|r
.skill riding,225,1
step
>>|cRXP_WARN_转到树平台上的|cRXP_PICK_Prophecy|r|r
.complete 10607,1 
.goto Blade's Edge Mountains,39.02,17.25
.isOnQuest 10607
step
#completewith next
.goto Blade's Edge Mountains,41.08,18.18,20,0
.goto Blade's Edge Mountains,42.35,19.18,20,0
.goto Blade's Edge Mountains,42.47,21.63,20 >>|cRXP_WARN_爬上东侧的树平台。过桥，走下一层楼，然后单击|r|cRXP_PICK_Prophecy|r
.skill riding,225,1
step
#label Prophecy
>>|cRXP_WARN_转到树平台底层的|cRXP_PICK_Prophecy|r|r
.goto Blade's Edge Mountains,42.47,21.63
.complete 10607,2 
.isOnQuest 10607
step
#loop
.line Blade's Edge Mountains,42.30,24.63,41.37,20.69,39.96,22.83,38.41,20.01,39.33,17.50,40.80,17.74,42.15,18.55,42.73,21.32,42.30,24.63
.goto Blade's Edge Mountains,42.30,24.63,60,0
.goto Blade's Edge Mountains,41.37,20.69,60,0
.goto Blade's Edge Mountains,39.96,22.83,60,0
.goto Blade's Edge Mountains,38.41,20.01,60,0
.goto Blade's Edge Mountains,39.33,17.50,60,0
.goto Blade's Edge Mountains,40.80,17.74,60,0
.goto Blade's Edge Mountains,42.15,18.55,60,0
.goto Blade's Edge Mountains,42.73,21.32,60,0
.goto Blade's Edge Mountains,42.30,24.63,60,0
>>杀死|cRXP_ENEMY_Grishna|r。为|T136210:0|t[|cRXP-Loot_Orb of the Grishna |r]掠夺它们
.use 31489 >>|cRXP_WARN_使用|r|T136210:0|t[|cRXP_LOOT_Orb of the Grishna |r]|cRXT_WARN_to开始任务|r
.collect 31489,1,10825,1 
.accept 10825 >>接任务: |cRXP_LOOT_神秘的宝珠|r
.isOnQuest 10607
.mob Grishna Falconwing
.mob Grishna Harbinger
.mob Grishna Matriarch
.mob Grishna Scorncrow
step
#optional
#completewith Plant
>>杀死|cRXP_ENEMY_Boulder'mok Brutes|r和|cRXX_ENEMY_Boulder'mok萨满|r
.complete 10803,1 
.mob +Boulder'mok Brute
.complete 10803,2 
.mob +Boulder'mok Shaman
.isOnQuest 10803
step
#loop
.line Blade's Edge Mountains,31.88,21.40,31.59,22.91,30.89,24.19,29.49,23.96,30.41,22.68,30.38,21.06,31.19,19.79,31.88,21.40
.goto Blade's Edge Mountains,31.88,21.40,60,0
.goto Blade's Edge Mountains,31.59,22.91,60,0
.goto Blade's Edge Mountains,30.89,24.19,60,0
.goto Blade's Edge Mountains,29.49,23.96,60,0
.goto Blade's Edge Mountains,30.41,22.68,60,0
.goto Blade's Edge Mountains,30.38,21.06,60,0
.goto Blade's Edge Mountains,31.19,19.79,60,0
.goto Blade's Edge Mountains,31.88,21.40,60,0
>>杀死|cRXP_ENEMY_Boulder'mok食人魔|r。掠夺他们的|cRXX_Loot_Totems|r
.collect 31754,3,10802,1 
.isOnQuest 10802
.mob Boulder'mok Chieftain
.mob Boulder'mok Brute
.mob Boulder'mok Shaman
step
#completewith next
.goto Blade's Edge Mountains,30.58,22.18
.cast 39264 >>|cRXP_WARN_单击|cRXP_PICK_Gorgrom祭坛|r启动RP|r
.timer 12,Gorgrom RP
.isOnQuest 10802
step
#label Plant
.goto Blade's Edge Mountains,30.64,22.13
.use 31754 >>|cRXP_WARN_Wait for the short RP|r
>>|cRXP_WARN_当|cRXP_ENEMY_Gorgrom|r死亡时，对其使用|r|T132352:0|t[Grisly Totems]|cRXP-WARN_on 3次|r
.complete 10802,1 
.isOnQuest 10802
.mob Gorgrom the Dragon-Eater
step
#loop
.line Blade's Edge Mountains,31.88,21.40,31.59,22.91,30.89,24.19,29.49,23.96,30.41,22.68,30.38,21.06,31.19,19.79,31.88,21.40
.goto Blade's Edge Mountains,31.88,21.40,60,0
.goto Blade's Edge Mountains,31.59,22.91,60,0
.goto Blade's Edge Mountains,30.89,24.19,60,0
.goto Blade's Edge Mountains,29.49,23.96,60,0
.goto Blade's Edge Mountains,30.41,22.68,60,0
.goto Blade's Edge Mountains,30.38,21.06,60,0
.goto Blade's Edge Mountains,31.19,19.79,60,0
.goto Blade's Edge Mountains,31.88,21.40,60,0
>>杀死|cRXP_ENEMY_Boulder'mok Brutes|r和|cRXX_ENEMY_Boulder'mok萨满|r
.complete 10803,1 
.mob +Boulder'mok Brute
.complete 10803,2 
.mob +Boulder'mok Shaman
.isOnQuest 10803
step
#loop
.line Blade's Edge Mountains,30.77,31.59,31.05,33.60,33.35,32.28,33.10,30.99,30.77,31.59
.goto Blade's Edge Mountains,30.77,31.59,50,0
.goto Blade's Edge Mountains,31.05,33.60,50,0
.goto Blade's Edge Mountains,33.35,32.28,50,0
.goto Blade's Edge Mountains,33.10,30.99,50,0
.goto Blade's Edge Mountains,30.77,31.59,50,0
>>杀死|cRXP_ENEMY_Wyrmcult|r。掠夺他们的|cRXX_Loot_服装碎片|r
.collect 31121,3,10747,1 
.isOnQuest 10722
.mob Wyrmcult Acolyte
.mob Wyrmcult Blessed
.mob Wyrmcult Zealot
.mob Wyrmcult Scout
step
#completewith Scraps
.goto Blade's Edge Mountains,32.04,33.87,20 >>进入黑翼湾
step
#optional
#completewith Kolphis
>>|cRXP_WARN_使用|r|T134325:0|t[Blachhelp-Net]|cRXP_WARN_on|r|cRXP_ENEMY_Wyrmcult Blackhhelps|r
>>|cRXP_WARN_你可以踩在洞穴里的蛋上产卵更多|r|cRXP_ENEMY_Wyrmcult Blackhelps|r
.complete 10747,1 
.use 31129
.isOnQuest 10747
.mob Wyrmcult Blackwhelp
step
#label Scraps
.goto Blade's Edge Mountains,32.25,34.77,30,0
.goto Blade's Edge Mountains,33.90,34.36,30,0
.goto Blade's Edge Mountains,31.55,36.03,40,0
.goto Blade's Edge Mountains,31.85,37.27,30,0
.goto Blade's Edge Mountains,32.25,34.77,30,0
.goto Blade's Edge Mountains,33.90,34.36,30,0
.goto Blade's Edge Mountains,31.55,36.03,40,0
.goto Blade's Edge Mountains,31.85,37.27,30,0
>>杀死|cRXP_ENEMY_Wyrmcult|r。掠夺他们的|cRXX_Loot_服装碎片|r
>>|cRXP_WARN_如果需要，你可以在外面多呆一会儿|r
.collect 31121,5,10747,1 
.isOnQuest 10722
.mob Wyrmcult Acolyte
.mob Wyrmcult Blessed
.mob Wyrmcult Zealot
.mob Wyrmcult Scout
step
.use 31121 >>|cRXP_WARN_使用|r|T132911:0|t[服装碎片]|cRXP_WARN_制作|r|T132760:0|t[监督伪装]
.collect 31122,1,10747,1 
.isOnQuest 10722
step
.cast 38157 >>|cRXP_WARN_使用|r|T132760:0|t[监督者伪装]
.use 31122
.isOnQuest 10722
step
#label Kolphis
.goto Blade's Edge Mountains,32.66,37.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库尔菲斯·暗鳞|r
>>|cRXP_WARN_小心伪装只持续3分钟|r
.complete 10722,1 
.use 31122
.skipgossip
.isOnQuest 10722
.target Kolphis Darkscale
step
.goto Blade's Edge Mountains,33.62,37.14,30,0
.goto Blade's Edge Mountains,33.64,35.63,30,0
.goto Blade's Edge Mountains,33.92,34.33,30,0
.goto Blade's Edge Mountains,31.41,36.29,30,0
.goto Blade's Edge Mountains,33.62,37.14,30,0
.goto Blade's Edge Mountains,33.64,35.63,30,0
.goto Blade's Edge Mountains,33.92,34.33,30,0
.goto Blade's Edge Mountains,31.41,36.29
>>|cRXP_WARN_使用|r|T134325:0|t[Blachhelp-Net]|cRXP_WARN_on|r|cRXP_ENEMY_Wyrmcult Blackhhelps|r
>>|cRXP_WARN_你可以不加掩饰地踩在洞穴里的蛋上产卵|r|cRXP_ENEMY_Blackhelps|r
.complete 10747,1 
.use 31129
.isOnQuest 10747
.mob Wyrmcult Blackwhelp
step
#completewith next
.hs >>赫斯到埃弗格罗夫
step
#questguide
>>返回Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法维瑟中尉|r, |cRXP_FRIENDLY_指挥官海弗斯·石墙|r, |cRXP_FRIENDLY_坦莫|r, |cRXP_FRIENDLY_护树者查恩|r, |cRXP_FRIENDLY_萨米亚·因克林|r
.turnin 10803 >>交任务: |cRXP_FRIENDLY_砾石营地的食人魔|r
.goto Blade's Edge Mountains,61.98,37.94
.target +Lieutenant Fairweather
.turnin 10802 >>交任务: |cRXP_FRIENDLY_食龙者高格鲁姆|r
.accept 10818 >>接任务: |cRXP_LOOT_萨博迈恩男爵的邀请|r
.goto Blade's Edge Mountains,61.98,37.98
.target +指挥官海弗斯·石墙
.turnin 10607 >>交任务: |cRXP_FRIENDLY_乌鸦之神的低语|r
.goto Blade's Edge Mountains,62.16,39.11
.target +Timeon
.turnin 10722 >>交任务: |cRXP_FRIENDLY_黑翼集会所|r
.turnin 10825 >>交任务: |cRXP_FRIENDLY_神秘的宝珠|r
.accept 10748 >>接任务: |cRXP_LOOT_玛克纳尔必须死！|r
.accept 10829 >>接任务: |cRXP_LOOT_通知特维布尔|r
.goto Blade's Edge Mountains,61.97,39.47
.target +Tree Warden Chawn
.turnin 10747 >>交任务: |cRXP_FRIENDLY_拜龙教的龙崽|r
.goto Blade's Edge Mountains,61.94,39.45
.target +Samia Inkling
.maxlevel 66,bemend << !tbc
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法维瑟中尉|r, |cRXP_FRIENDLY_指挥官海弗斯·石墙|r, |cRXP_FRIENDLY_坦莫|r, |cRXP_FRIENDLY_护树者查恩|r, |cRXP_FRIENDLY_萨米亚·因克林|r
.turnin 10803 >>交任务: |cRXP_FRIENDLY_砾石营地的食人魔|r
.goto Blade's Edge Mountains,61.98,37.94
.target +Lieutenant Fairweather
.turnin 10802 >>交任务: |cRXP_FRIENDLY_食龙者高格鲁姆|r

.goto Blade's Edge Mountains,61.98,37.98
.target +指挥官海弗斯·石墙
.turnin 10607 >>交任务: |cRXP_FRIENDLY_乌鸦之神的低语|r
.goto Blade's Edge Mountains,62.16,39.11
.target +Timeon
.turnin 10722 >>交任务: |cRXP_FRIENDLY_黑翼集会所|r
.turnin 10825 >>交任务: |cRXP_FRIENDLY_神秘的宝珠|r


.goto Blade's Edge Mountains,61.97,39.47
.target +Tree Warden Chawn
.turnin 10747 >>交任务: |cRXP_FRIENDLY_拜龙教的龙崽|r
.goto Blade's Edge Mountains,61.94,39.45
.target +Samia Inkling
.maxlevel 66,bemend << !tbc
step
#completewith Signal
.goto Blade's Edge Mountains,61.68,39.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲恩·叶影|r
.fly Toshley >>飞往托斯利车站
.skill riding,300,1
.isQuestTurnedIn 10821
.target Fhyn Leafshadow
step
#questguide
>>前往Toshley车站
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔利·萨普纳波|r, |cRXP_FRIENDLY_晕乎乎的迪娜|r
.turnin 10711 >>交任务: |cRXP_FRIENDLY_试飞：拉扎安码头|r
.goto Blade's Edge Mountains,60.28,68.39
.turnin 10671 >>交任务: |cRXP_FRIENDLY_不仅仅是一磅肉|r
.goto Blade's Edge Mountains,60.40,68.75
.maxlevel 66,bemend << !tbc
.target Tally Zapnabber
.target Dizzy Dina
step
#optional
#completewith Signal
.goto Blade's Edge Mountains,64.31,70.67
>>|cRXP_WARN_小心地从托什利车站东边跳到死亡之门|r
.cast 38782 >>|cRXP_WARN_使用|r|T135815:0|t[德鲁伊信号]|cRXP_WARN_to在死亡之门召唤一个|cRXP-FRIENDLY_Evergrove德鲁伊|r|r
.timer 18,Druid Signal RP
.skill riding,225,1
.isOnQuest 10910
step
#completewith next
.goto Blade's Edge Mountains,64.31,70.67
.cast 38782 >>|cRXP_WARN_使用|r|T135815:0|t[德鲁伊信号]|cRXP_WARN_to在死亡之门召唤一个|cRXP-FRIENDLY_Evergrove德鲁伊|r|r
.timer 18,Druid Signal RP
.skill riding,<225,1
.isOnQuest 10910
step
#label Signal
.goto Blade's Edge Mountains,64.31,70.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_常青林德鲁伊|r
.turnin 10910 >>交任务: |cRXP_FRIENDLY_死亡之门|r
.accept 10904 >>接任务: |cRXP_LOOT_收集邪能炮弹|r
.use 31763
.isQuestTurnedIn 10821
.maxlevel 66,bemend << !tbc
.target Evergrove Druid
step
#loop
.line Blade's Edge Mountains,63.79,70.87,63.76,68.70,63.08,66.67,62.35,61.39,61.57,59.57,63.39,59.88,63.07,63.93,64.96,67.57,63.79,70.87
.goto Blade's Edge Mountains,63.79,70.87,45,0
.goto Blade's Edge Mountains,63.76,68.70,45,0
.goto Blade's Edge Mountains,63.08,66.67,45,0
.goto Blade's Edge Mountains,62.35,61.39,45,0
.goto Blade's Edge Mountains,61.57,59.57,45,0
.goto Blade's Edge Mountains,63.39,59.88,45,0
.goto Blade's Edge Mountains,63.07,63.93,45,0
.goto Blade's Edge Mountains,64.96,67.57,45,0
.goto Blade's Edge Mountains,63.79,70.87,45,0
>>杀死|cRXP_ENEMY_Deathforge|r和|cRXP_ENEMY_Death Demons |r。掠夺他们的|cRXD_Loot_Cannoballs|r
.complete 10904,1 
.isOnQuest 10904
.mob Death's Might
.mob Death's Watch
.mob Deathforge Over-Smith
.mob Deathforge Technician
step
#completewith next
.goto Blade's Edge Mountains,64.81,68.32,-1
.goto Blade's Edge Mountains,61.96,60.29,-1
.cast 38782 >>|cRXP_WARN_使用|r|T135815:0|t[德鲁伊信号]|cRXP_WARN_to在死亡之门召唤一个|cRXP-FRIENDLY_Evergrove德鲁伊|r|r
.timer 18,Druid Signal RP
.isOnQuest 10904
step
.goto Blade's Edge Mountains,64.81,68.32,-1
.goto Blade's Edge Mountains,61.96,60.29,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_常青林德鲁伊|r
.turnin 10904 >>交任务: |cRXP_FRIENDLY_收集邪能炮弹|r
.accept 10911 >>接任务: |cRXP_LOOT_开火！|r
.isQuestTurnedIn 10821
.maxlevel 66,bemend << !tbc
.target Evergrove Druid
step
>>|cRXP_WARN_使用|r|T136030:0|t[归化弹药]|cRXP_WARN_to控制|r|cRXP-ENEMY_Fel大炮|r
>>|cRXP_WARN_施法|r|T135803:0|t[曲门上的火炮]（1）|cRXP_WARN_to在防御的同时摧毁|cRXT_ENEMY_Warp-Gates|r|r
.complete 10911,1 
.goto Blade's Edge Mountains,64.81,68.32,-1
.complete 10911,2 
.goto Blade's Edge Mountains,61.96,60.29,-1
.isOnQuest 10911
.isQuestTurnedIn 10821
.use 31807
step
#completewith next
.goto Blade's Edge Mountains,62.50,60.17
.cast 38782 >>|cRXP_WARN_使用|r|T135815:0|t[德鲁伊信号]|cRXP_WARN_to在死亡之门召唤一个|cRXP-FRIENDLY_Evergrove德鲁伊|r|r
.timer 18,Druid Signal RP
.isOnQuest 10911
step
.goto Blade's Edge Mountains,62.50,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_常青林德鲁伊|r
.turnin 10911 >>交任务: |cRXP_FRIENDLY_开火！|r
.accept 10912 >>接任务: |cRXP_LOOT_犬王|r
.isQuestTurnedIn 10821
.maxlevel 66,bemend << !tbc
.target Evergrove Druid
step
.goto Blade's Edge Mountains,63.62,59.11
.use 31809 >>|cRXP_WARN_使用|r|T133749:0|t[Evergrove Wand]|cRXP_WARN_to召唤|cRXP-FRIENDLY_Evergorve Ancients|r。他们将帮助你对抗|r|cRXP_ENEMY_Baelmon猎犬大师|r
>>杀死猎犬大师|cRXP_ENEMY_Baelmon |r
>>|cRXP_WARN_这个任务很难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r <<tbc/wotlk
.complete 10912,1 
.use 31809
.isQuestTurnedIn 10821
.isOnQuest 10912
.mob Baelmon the Hound-Master
step
#completewith HoundMaster
.goto Blade's Edge Mountains,61.15,70.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里普·派兹拉姆|r
.fly Evergrove >>飞往埃弗格罗夫
.cooldown item,6948,<0
.skill riding,225,1
.isQuestTurnedIn 10821
.target Rip Pedalslam
step
#optional
#completewith next
.hs >>赫斯到埃弗格罗夫
.cooldown item,6948,>2
.isQuestTurnedIn 10821
step
#label HoundMaster
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荒野之王安塔里恩|r
.turnin 10912 >>交任务: |cRXP_FRIENDLY_犬王|r
.isQuestComplete 10912
.maxlevel 66,bemend << !tbc
.target Wildlord Antelarion
step
.abandon 10912 >>抛弃猎犬大师
step << skip
.goto Blade's Edge Mountains,60.3,68.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔利·萨普纳波|r
.accept 10712 >>接任务: |cRXP_LOOT_试飞：卢安荒野|r
.target Tally Zapnabber
step << skip
.goto Blade's Edge Mountains,60.2,68.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔利·萨普纳波|r
.complete 10712,1 
>>重要事项：在飞行过程中使用行李中的物品
.complete 10712,2 
.target Tally Zapnabber
step << skip
.goto Blade's Edge Mountains,62.7,40.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧玛利·萨普纳波|r
.turnin 10712 >>交任务: |cRXP_FRIENDLY_试飞：卢安荒野|r
.target O'Mally Zapnabber
step
#questguide
#label Treebole
.goto Blade's Edge Mountains,37.1,22.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特维布尔|r
.turnin 10829 >>交任务: |cRXP_FRIENDLY_通知特维布尔|r
.accept 10830 >>接任务: |cRXP_LOOT_树人的驱魔|r
.maxlevel 66,bemend << !tbc
.target Treebole
step
#questguide
#completewith leafbeardE
.goto Blade's Edge Mountains,34.3,19.8
.goto Blade's Edge Mountains,40.3,23.0,0
.goto Blade's Edge Mountains,40.0,22.8,0
.goto Blade's Edge Mountains,40.2,20.6,0
.goto Blade's Edge Mountains,39.3,17.4,0
.goto Blade's Edge Mountains,41.3,21.9,0
>>杀死|cRXP_ENEMY_Dire Ravens|r。掠夺它们的|cRXX_Loot_Pinefeatures|r
>>将|cRXP_Loot_Grishnath Orbs|r洗劫一空
.collect 31495,5 
.collect 31517,5 
.maxlevel 66,bemend << !tbc
.mob Dire Raven
step
#questguide
#label leafbeardE
.goto Blade's Edge Mountains,34.3,19.8
>>|cRXP_WARN_使用|r|T136210:0|t[Grishnath Orb]|cRXP_WARN_and|r|T132915:0|t[Dire Pinfeath]|cRX P_WARN_to创建|r|T1 32920:0|t[驱魔羽毛]
>>|cRXP_WARN_在|r|cRXP_ENEMY_Raven的木耳上使用|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Koi-Koi精灵后，|cRXD_ENEMY_Raven的木耳|r将变得友好|r
.use 31518
.use 31495
.complete 10830,1 
.maxlevel 66,bemend << !tbc
.mob Raven's Wood Leafbeard
.mob Koi-Koi Spirit
step
#questguide
.goto Blade's Edge Mountains,37.1,22.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特维布尔|r
.turnin 10830 >>交任务: |cRXP_FRIENDLY_树人的驱魔|r
.maxlevel 66,bemend << !tbc
.target Treebole
step
#questguide
.goto Blade's Edge Mountains,33.7,35.9
>>跑到布莱克林湾的后面
>>杀死|cRXP_ENEMY_Maxnar灰烬|r
.complete 10748,1 
.maxlevel 66,bemend << !tbc
.mob Maxnar the Ashmaw
step
#questguide
.goto Blade's Edge Mountains,62.0,39.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护树者查恩|r
.turnin 10748 >>交任务: |cRXP_FRIENDLY_玛克纳尔必须死！|r
.maxlevel 66,bemend << !tbc
.target Tree Warden Chawn
step
#label bemend
]])
RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 67-68 虚空风暴
#version 5
#displayname 67-69 虚空风暴 << !tbc !wotlk
#next 69-70 影月谷 (奥尔多) << TBC
#next RXP大灾变60-80（A）\68-71呼啸峡湾 << !TBC
step
#include RXPGuides\67-68 虚空风暴
]])
RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#questguide << !tbc
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 67-69 虚空风暴
#version 5
#next 69-70 影月谷 (奥尔多) << TBC
#next 68-71 嚎风峡湾 << !TBC
step
#include RXPGuides\67-69 虚空风暴
]])
RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 67-67刀刃转弯
#version 5
#next 67-68 虚空风暴
#defaultfor !tbc
step
+由于你现在已经达到67级（或更高级别），并且已经完成了你当前的所有刀刃目标，向导现在将在将你送往虚空之城之前提交所有剩余任务。
*Click the box here to begin this process
.isQuestAvailable 10912
.xp 67,1

step
#optional
#completewith next
.goto Shattrath City,64.05,41.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努特拉尔|r
.fly Telredor >>飞往Telredor
.zoneskip Nagrand
.zoneskip Zangarmarsh
.skill riding,300,1
.target Nutral
step
#questguide << !tbc
.goto Zangarmarsh,68.3, 49.4
>>返回Telredor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者安霍尔|r
.turnin 9801 >>交任务: |cRXP_FRIENDLY_收集材料|r
.isQuestComplete 9801
.target Anchorite Ahuurn
step
#optional
#completewith Moonwhisper
.goto Shattrath City,64.05,41.12,-1
.goto Zangarmarsh,67.83,51.46,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努特拉尔|r, |cRXP_FRIENDLY_蒙希|r
>>|cRXP_WARN_箭头将指向最近的飞行主管|r
.fly Orebor Harborage >>飞往Orebor Harborage
.skill riding,300,1
.target Nutral
.target Munci
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基亚隆·夜刃|r
.turnin 9794 >>交任务: |cRXP_FRIENDLY_禁止拆阅|r
.goto Blade's Edge Mountains,35.97,67.76,30,0
.goto Blade's Edge Mountains,36.61,67.34
.isQuestComplete 9794
.target Kialon Nightblade
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官萨卡斯·天影|r
.turnin 10927 >>交任务: |cRXP_FRIENDLY_消灭洞穴蛛|r
.goto Blade's Edge Mountains,36.28,66.24
.isQuestComplete 10927
.target Commander Skyshadow
step
.goto Blade's Edge Mountains,34.31,77.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_银色宝典|r
.turnin 10555 >>交任务: |cRXP_FRIENDLY_诡异的魔法|r
.isQuestComplete 10555
step
#completewith next
.goto Blade's Edge Mountains,35.23,77.31
.cast 36904 >>在召唤圈使用你包里的羽毛拳
.use 30530
.isOnQuest 10556
step
.goto Blade's Edge Mountains,37.07,65.62
>>使用|T132926:0|t呼吸器后，一只|cRXP_FRIENDLY_Small Bird Companion|r将跟随您四处走动
>>|cRXP_WARN_注意|r如果你在坐骑上逃跑，|cRXP_FRIENDLY_Bird|r就跟不上你了
>>护送|cRXP_FRIENDLY_Bird|r返回|cRXP_FRIENDLY_Daranelle|r
.complete 10556,1 
.isOnQuest 10556
.target Daranelle
step
#label Scratches
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达兰妮尔|r
.turnin 10556 >>交任务: |cRXP_FRIENDLY_潦草的字迹|r
.goto Blade's Edge Mountains,37.07,65.62
.isQuestComplete 10556
.target Daranelle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉娜·月泉|r
.turnin 10455 >>交任务: |cRXP_FRIENDLY_危险的荒野|r
.goto Blade's Edge Mountains,36.21,67.13
.isQuestComplete 10455
.target Rina Moonspring
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官萨卡斯·天影|r
.turnin 10690 >>交任务: |cRXP_FRIENDLY_兽穴之母|r
.goto Blade's Edge Mountains,36.28,66.24
.isQuestComplete 10690
.target Commander Skyshadow
step
#label SylHS
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉娜·月泉|r
.turnin 10456 >>交任务: |cRXP_FRIENDLY_徘徊的恶狼|r
.goto Blade's Edge Mountains,36.21,67.13
.isQuestComplete 10456
.target Rina Moonspring
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉娜·月泉|r
.turnin 10457 >>交任务: |cRXP_FRIENDLY_自我保护|r
.isQuestComplete 10457
.target Rina Moonspring
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉娜·月泉|r
.turnin 10506 >>交任务: |cRXP_FRIENDLY_严峻的形势|r
.goto Blade's Edge Mountains,36.21,67.13
.isQuestComplete 10506
.target Rina Moonspring
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官萨卡斯·天影|r
.turnin 10502 >>交任务: |cRXP_FRIENDLY_血槌食人魔|r
.goto Blade's Edge Mountains,36.28,66.24
.isQuestComplete 10502
.target Commander Skyshadow
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆薇·硬锤|r
.turnin 10510 >>交任务: |cRXP_FRIENDLY_进入德拉诺晶矿|r
.goto Blade's Edge Mountains,37.41,65.05
.isQuestComplete 10510
.target Bronwyn Stouthammer
step
#label Borgrim2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯格瑞姆·硬锤|r
.turnin 10511 >>交任务: |cRXP_FRIENDLY_奇怪的美酒|r
.goto Blade's Edge Mountains,37.40,64.66
.isQuestComplete 10511
.target Borgrim Stouthammer
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官乌里恩|r
.turnin 10516 >>交任务: |cRXP_FRIENDLY_守备官的困境|r
.accept 10517 >>接任务: |cRXP_LOOT_高尔迪姆，你完蛋了......|r
.isQuestComplete 10516
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官乌里恩|r
.accept 10517 >>接任务: |cRXP_LOOT_高尔迪姆，你完蛋了......|r
.isQuestTurnedIn 10516
.target Vindicator Vuuleen
step
.goto Blade's Edge Mountains,39.38,49.06
>>杀死离门最近的两个|cRXP_ENEMY_Ogres|r，然后用包里的|T132621:0|t[Brutebane Keg]引诱|cRXX_ENEMY_Gorr'Dim|r远离精英守卫。杀了他
.complete 10517,1 
.isOnQuest 10517
.mob Bladespire Shaman
.mob Bladespire Brute
.mob Gorr'Dim
step
.goto Blade's Edge Mountains,44.01,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官乌里恩|r
.turnin 10517 >>交任务: |cRXP_FRIENDLY_高尔迪姆，你完蛋了......|r
.isQuestComplete 10517
.target Vindicator Vuuleen
step
#completewith BorgrimT
.hs >>赫斯致希尔瓦纳
.cooldown item,6948,>2
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官萨卡斯·天影|r
.turnin 10504 >>交任务: |cRXP_FRIENDLY_刀塔食人魔|r
.goto Blade's Edge Mountains,36.28,66.24
.isQuestComplete 10504
.target Commander Skyshadow
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官萨卡斯·天影|r
.turnin 10518 >>交任务: |cRXP_FRIENDLY_插旗子|r
.goto Blade's Edge Mountains,36.28,66.24
.isQuestComplete 10518
.target Commander Skyshadow
step
#label BorgrimT
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯格瑞姆·硬锤|r
.turnin 10512 >>交任务: |cRXP_FRIENDLY_灌醉刀塔食人魔|r
.goto Blade's Edge Mountains,37.40,64.66
.isQuestComplete 10512
.target Borgrim Stouthammer
step
.goto Blade's Edge Mountains,55.11,72.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_R-3D0|r
.turnin 10580 >>交任务: |cRXP_FRIENDLY_侏儒都去哪里了？|r
.accept 10581 >>接任务: |cRXP_LOOT_废话连篇|r
.isQuestComplete 10580
.target R-3D0
step
.goto Blade's Edge Mountains,55.11,72.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_R-3D0|r
.accept 10581 >>接任务: |cRXP_LOOT_废话连篇|r
.isQuestTurnedIn 10580
.target R-3D0
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托什雷|r
.turnin 10581 >>交任务: |cRXP_FRIENDLY_废话连篇|r
.goto Blade's Edge Mountains,60.53,68.97
.isQuestComplete 10581
.target Toshley
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔利·萨普纳波|r
.turnin 10557 >>交任务: |cRXP_FRIENDLY_试飞：风动电容器|r
.goto Blade's Edge Mountains,60.28,68.39
.isQuestComplete 10557
.target Tally Zapnabber
step
#label ToshStation
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托什雷|r
.turnin 10584 >>交任务: |cRXP_FRIENDLY_能量转换器|r
.goto Blade's Edge Mountains,60.53,68.97
.isQuestComplete 10584
.target Toshley
step
#completewith CrystalClear
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉沙克·铁墙|r
.turnin 10632 >>交任务: |cRXP_FRIENDLY_锋利的牙齿|r
.isQuestComplete 10632
.target Razak Ironsides
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_测量者尼克维克|r
.turnin 10608 >>交任务: |cRXP_FRIENDLY_水晶剥石者的麻烦|r
.goto Blade's Edge Mountains,60.22,68.94
.isQuestComplete 10608
.target 尼克温克尔地铁侏儒
step
#label CrystalClear
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_晕乎乎的迪娜|r
.turnin 10620 >>交任务: |cRXP_FRIENDLY_山脊上的危险|r
.goto Blade's Edge Mountains,60.40,68.75
.isQuestComplete 10620
.target Dizzy Dina
step
.goto Blade's Edge Mountains,59.99,69.32,30,0
.goto Blade's Edge Mountains,60.28,68.98,30,0
.goto Blade's Edge Mountains,60.11,68.37,30,0
.goto Blade's Edge Mountains,59.81,68.29,30,0
.goto Blade's Edge Mountains,60.03,67.79,30,0
.goto Blade's Edge Mountains,60.31,68.23,30,0
.goto Blade's Edge Mountains,60.42,67.91,30,0
.goto Blade's Edge Mountains,60.54,68.76,30,0
.goto Blade's Edge Mountains,60.44,69.37
.line Blade's Edge Mountains,59.99,69.32,60.28,68.98,60.11,68.37,59.81,68.29,60.03,67.79,60.31,68.23,60.42,67.91,60.54,68.76,60.44,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉沙克·铁墙|r
.turnin 10632 >>交任务: |cRXP_FRIENDLY_锋利的牙齿|r
.isQuestComplete 10632
.target Razak Ironsides
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_测量者尼克维克|r
.turnin 10594 >>交任务: |cRXP_FRIENDLY_测量振荡频率|r
.goto Blade's Edge Mountains,60.22,68.94
.isQuestComplete 10594
.target 尼克温克尔地铁侏儒
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔利·萨普纳波|r
.turnin 10710 >>交任务: |cRXP_FRIENDLY_试飞：晶歌山脉|r
.goto Blade's Edge Mountains,60.28,68.39
.isQuestComplete 10710
.target Tally Zapnabber
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹特·表针|r
.turnin 10609 >>交任务: |cRXP_FRIENDLY_先有龙还是先有蛋？|r
.goto Blade's Edge Mountains,60.98,68.11
.isQuestComplete 10609
.target Fizit "Doc" Clocktock
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法拉蒂拉|r
.turnin 10753 >>交任务: |cRXP_FRIENDLY_清理荒野|r
.goto Blade's Edge Mountains,62.56,38.23
.isQuestComplete 10753
.target Faradrella
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古树莫斯伍德|r
.turnin 10770 >>交任务: |cRXP_FRIENDLY_灰烬中的小鬼|r
.goto Blade's Edge Mountains,61.25,38.46
.isQuestComplete 10770
.target Mosswood the Ancient
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古树莫斯伍德|r
.turnin 10771 >>交任务: |cRXP_FRIENDLY_灰烬中的新生|r
.goto Blade's Edge Mountains,61.25,38.46
.isQuestComplete 10771
.target Mosswood the Ancient
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧玛利·萨普纳波|r
.turnin 10810 >>交任务: |cRXP_FRIENDLY_损坏的面具|r
.accept 10812 >>接任务: |cRXP_LOOT_神秘的面具|r
.goto Blade's Edge Mountains,62.66,40.38
.isQuestComplete 10810
.target O'Mally Zapnabber
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧玛利·萨普纳波|r
.accept 10812 >>接任务: |cRXP_LOOT_神秘的面具|r
.goto Blade's Edge Mountains,62.66,40.38
.isQuestTurnedIn 10810
.target O'Mally Zapnabber
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荒野之王安塔里恩|r
.turnin 10812 >>交任务: |cRXP_FRIENDLY_神秘的面具|r
.isQuestComplete 10812
.target Wildlord Antelarion
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荒野之王安塔里恩|r
.accept 10819 >>接任务: |cRXP_LOOT_魔誓防毒面具|r
.isQuestTurnedIn 10812
.target Wildlord Antelarion
step
#completewith next
.cast 38448 >>将|T133133:0|t[费里德防毒面具]装在包里，以便能够与|cRXP_FRIENDLY_Legion Communicator通话|r

step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Legion Communicator|r with your |T133133:0|t[Felsworn Gas Mask] equipped
.goto Blade's Edge Mountains,73.27,40.03
.turnin 10819 >>交任务: |cRXP_FRIENDLY_魔誓防毒面具|r
.isQuestComplete 10819

step
#completewith next
.cast 38448 >>将|T133133:0|t[费里德防毒面具]装在包里，以便能够与|cRXP_FRIENDLY_Legion Communicator通话|r

step
.goto Blade's Edge Mountains,73.27,40.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Legion Communicator|r with your |T133133:0|t[Felsworn Gas Mask] equipped
.turnin 10820 >>交任务: |cRXP_FRIENDLY_欺骗敌人|r
.isQuestComplete 10820

step
#completewith Nuaar
.hs >>赫斯到埃弗格罗夫
.cooldown item,6948,>2
step
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荒野之王安塔里恩|r
.turnin 10821 >>交任务: |cRXP_FRIENDLY_你玩完了！|r
.isQuestComplete 10821
.target Wildlord Antelarion
step
#label Nuaar
.line Blade's Edge Mountains,62.82,25.94,63.12,27.41,63.34,27.87,63.28,28.37,62.73,28.77,62.45,29.31,62.37,29.65,62.44,31.66,62.11,33.34,61.80,34.00,61.43,34.10,60.61,33.98,60.12,34.47,60.01,34.80,60.08,35.15,59.90,35.72,59.60,36.07,59.11,36.21,58.96,36.61,58.65,36.91,58.18,36.96,57.90,37.34,57.84,37.81,59.13,39.47,59.90,40.27,60.51,40.90,61.50,42.02,61.78,42.41,62.62,43.95,62.97,45.05,63.06,46.38
63.06,46.38
.goto Blade's Edge Mountains,63.06,46.38,60,0
.goto Blade's Edge Mountains,62.97,45.05,60,0
.goto Blade's Edge Mountains,62.62,43.95,60,0
.goto Blade's Edge Mountains,61.78,42.41,60,0
.goto Blade's Edge Mountains,61.50,42.02,60,0
.goto Blade's Edge Mountains,60.51,40.90,60,0
.goto Blade's Edge Mountains,59.90,40.27,60,0
.goto Blade's Edge Mountains,59.13,39.47,60,0
.goto Blade's Edge Mountains,57.84,37.81,60,0
.goto Blade's Edge Mountains,57.90,37.34,60,0
.goto Blade's Edge Mountains,58.18,36.96,60,0
.goto Blade's Edge Mountains,58.65,36.91,60,0
.goto Blade's Edge Mountains,58.96,36.61,60,0
.goto Blade's Edge Mountains,59.11,36.21,60,0
.goto Blade's Edge Mountains,59.60,36.07,60,0
.goto Blade's Edge Mountains,59.90,35.72,60,0
.goto Blade's Edge Mountains,60.08,35.15,60,0
.goto Blade's Edge Mountains,60.01,34.80,60,0
.goto Blade's Edge Mountains,60.12,34.47,60,0
.goto Blade's Edge Mountains,60.61,33.98,60,0
.goto Blade's Edge Mountains,61.80,34.00,60,0
.goto Blade's Edge Mountains,62.11,33.34,60,0
.goto Blade's Edge Mountains,62.44,31.66,60,0
.goto Blade's Edge Mountains,62.37,29.65,60,0
.goto Blade's Edge Mountains,62.45,29.31,60,0
.goto Blade's Edge Mountains,62.73,28.77,60,0
.goto Blade's Edge Mountains,63.28,28.37,60,0
.goto Blade's Edge Mountains,63.34,27.87,60,0
.goto Blade's Edge Mountains,63.12,27.41,60,0
.goto Blade's Edge Mountains,62.82,25.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头努埃尔|r
>>他在Ruuan Weald的Wyrmcult营地巡逻
.complete 10682,1 
.unitscan Overseer Nuaar
.skipgossip
.isOnQuest 10682
step
>>返回Evergrove。与Chawn交谈
.turnin 10682 >>交任务: |cRXP_FRIENDLY_该谈判了......|r
.goto Blade's Edge Mountains,61.97,39.47
.isQuestComplete 10682
.target Tree Warden Chawn
step
>>返回Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官海弗斯·石墙|r
.turnin 10795 >>交任务: |cRXP_FRIENDLY_多古克|r
.goto Blade's Edge Mountains,61.98,37.98
.isQuestComplete 10795
.target 指挥官海弗斯·石墙
step
>>返回Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官海弗斯·石墙|r
.turnin 10797 >>交任务: |cRXP_FRIENDLY_戈隆的信物|r
.goto Blade's Edge Mountains,61.98,37.98
.isQuestComplete 10797
.target 指挥官海弗斯·石墙
step
>>返回Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法维瑟中尉|r
.turnin 10796 >>交任务: |cRXP_FRIENDLY_踏平血槌营地！|r
.goto Blade's Edge Mountains,61.98,37.94
.isQuestComplete 10796
.target Lieutenant Fairweather
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坦莫|r
.turnin 10567 >>交任务: |cRXP_FRIENDLY_制造坠饰|r
.goto Blade's Edge Mountains,62.16,39.11
.isQuestComplete 10567
.target Timeon
step
.goto Blade's Edge Mountains,61.97,39.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护树者查恩|r, |cRXP_FRIENDLY_萨米亚·因克林|r
.turnin 10713 >>交任务: |cRXP_FRIENDLY_......谈判不成就动手！|r
.isQuestComplete 10713
.target Tree Warden Chawn
step
.goto Blade's Edge Mountains,61.97,39.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护树者查恩|r
.turnin 10719 >>交任务: |cRXP_FRIENDLY_你拿到记录了吗？|r
.target Tree Warden Chawn
.isQuestComplete 10719
step
.goto Blade's Edge Mountains,61.94,39.45
.turnin 10717 >>交任务: |cRXP_FRIENDLY_偷猎|r
.isQuestComplete 10717
.target Samia Inkling
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨博迈恩男爵|r
.turnin 10798 >>交任务: |cRXP_FRIENDLY_拜访男爵|r
.isQuestComplete 10798
.target Baron Sablemane
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨博迈恩男爵|r
.turnin 10799 >>交任务: |cRXP_FRIENDLY_进入沸土峡谷|r
.isQuestComplete 10799
.target Baron Sablemane
step
.goto Blade's Edge Mountains,53.25,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨博迈恩男爵|r
.turnin 10800 >>交任务: |cRXP_FRIENDLY_晚安，戈隆|r
.isQuestComplete 10800
.target Baron Sablemane
step
#label Evergrove3
>>返回Evergrove
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官海弗斯·石墙|r
.turnin 10801 >>交任务: |cRXP_FRIENDLY_这是个陷阱！|r
.goto Blade's Edge Mountains,61.98,37.98
.isQuestComplete 10801
.target 指挥官海弗斯·石墙
step
.goto Blade's Edge Mountains,50.35,36.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_观察者希德·月影|r
.turnin 10894 >>交任务: |cRXP_FRIENDLY_龙颅观察者|r
.isQuestComplete 10894
.target Watcher Moonshade
step
.goto Blade's Edge Mountains,50.35,36.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_观察者希德·月影|r
.accept 10893 >>接任务: |cRXP_LOOT_德莱卡·长尾|r
.isQuestTurnedIn 10894
.target Watcher Moonshade
step
>>杀死隧道内的|cRXP_ENEMY_Draaca|r
.goto Blade's Edge Mountains,46.03,32.93,40,0
.goto Blade's Edge Mountains,45.81,32.90,40,0
.goto Blade's Edge Mountains,44.78,32.07
.complete 10893,1 
.unitscan Draaca Longtail
.isOnQuest 10893
step
.goto Blade's Edge Mountains,49.92,35.92,20,0
.goto Blade's Edge Mountains,50.35,36.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_观察者希德·月影|r
.turnin 10893 >>交任务: |cRXP_FRIENDLY_德莱卡·长尾|r
.isQuestComplete 10893
.target Watcher Moonshade
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法维瑟中尉|r
.turnin 10803 >>交任务: |cRXP_FRIENDLY_砾石营地的食人魔|r
.goto Blade's Edge Mountains,61.98,37.94
.isQuestComplete 10803
.target Lieutenant Fairweather
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官海弗斯·石墙|r
.turnin 10802 >>交任务: |cRXP_FRIENDLY_食龙者高格鲁姆|r
.goto Blade's Edge Mountains,61.98,37.98
.isQuestComplete 10802
.target 指挥官海弗斯·石墙
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坦莫|r
.turnin 10607 >>交任务: |cRXP_FRIENDLY_乌鸦之神的低语|r
.goto Blade's Edge Mountains,62.16,39.11
.isQuestComplete 10607
.target Timeon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护树者查恩|r
.turnin 10722 >>交任务: |cRXP_FRIENDLY_黑翼集会所|r
.goto Blade's Edge Mountains,61.97,39.47
.isQuestComplete 10722
.target Tree Warden Chawn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护树者查恩|r
.turnin 10825 >>交任务: |cRXP_FRIENDLY_神秘的宝珠|r
.goto Blade's Edge Mountains,61.97,39.47
.isQuestComplete 10825
.target Tree Warden Chawn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨米亚·因克林|r
.turnin 10747 >>交任务: |cRXP_FRIENDLY_拜龙教的龙崽|r
.goto Blade's Edge Mountains,61.94,39.45
.isQuestComplete 10747
.target Samia Inkling
step
#completewith next
.goto Blade's Edge Mountains,64.81,68.32,-1
.goto Blade's Edge Mountains,61.96,60.29,-1
.cast 38782 >>使用您包中的|T135815:0|t[德鲁伊信号]召唤一个|cRXP_FRIENDLY_Evergrove德鲁伊|r
.timer 18,Druid Signal RP
.isQuestComplete 10904
step
.goto Blade's Edge Mountains,64.81,68.32,-1
.goto Blade's Edge Mountains,61.96,60.29,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_常青林德鲁伊|r
.turnin 10904 >>交任务: |cRXP_FRIENDLY_收集邪能炮弹|r
.isQuestComplete 10904
.target Evergrove Druid
step
#completewith next
.goto Blade's Edge Mountains,62.50,60.17
.cast 38782 >>使用您包中的|T135815:0|t[德鲁伊信号]召唤一个|cRXP_FRIENDLY_Evergrove德鲁伊|r
.timer 18,Druid Signal RP
.isOnQuest 10911
step
.goto Blade's Edge Mountains,62.50,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_常青林德鲁伊|r
.turnin 10911 >>交任务: |cRXP_FRIENDLY_开火！|r
.accept 10912 >>接任务: |cRXP_LOOT_犬王|r
.isQuestTurnedIn 10821
.target Evergrove Druid
step
#completewith next
.goto Blade's Edge Mountains,63.62,59.11
.use 31809 >>使用您包中的|T133749:0|t[Evergrove Wand]召唤|cRXP_FRIENDLY_Evergorve Ancients|r。他们将帮助您战斗|cRXP_ENEMY_Baelmon |r
>>杀死|cRXP_ENEMY_Baelmon|r
.isOnQuest 10912
.mob Baelmon the Hound-Master
step
.goto Blade's Edge Mountains,63.62,59.11
>>杀死猎犬大师|cRXP_ENEMY_Baelmon |r. 这项任务很困难。如果需要，为他找一个小组。如果你找不到一个团队或一个人，请跳过这一步。
.complete 10912,1 
.use 31809
.isQuestTurnedIn 10821
.isOnQuest 10912
.target Baelmon the Hound-Master
step
#label HoundMaster
.goto Blade's Edge Mountains,62.53,39.91,40,0
.goto Blade's Edge Mountains,62.00,40.21,40,0
.goto Blade's Edge Mountains,61.45,39.73,40,0
.goto Blade's Edge Mountains,61.28,38.77,40,0
.goto Blade's Edge Mountains,62.20,38.15,40,0
.goto Blade's Edge Mountains,62.69,39.13
.line Blade's Edge Mountains,62.53,39.91,62.00,40.21,61.45,39.73,61.28,38.77,62.20,38.15,62.69,39.13,62.53,39.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_荒野之王安塔里恩|r
.turnin 10912 >>交任务: |cRXP_FRIENDLY_犬王|r
.isQuestComplete 10912
.target Wildlord Antelarion
step
.abandon 10912 >>抛弃猎犬大师
]])
RXPGuides.RegisterGuide([[
#cata
#Cata
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 68-71 嚎风峡湾
#version 5
#next 71-73 北风苔原
#questguide << !wotlk
step
#completewith HowlingTP
.cast 387060 >>|cRXP_WARN_使用|r|T134943:0|t[传送卷轴：Menethil Harbor]|cRXP_WARN_to传送到Menethil Harbor|r
.use 199335
.zoneskip Wetlands
.zoneskip HowlingFjord
.itemcount 199335,1
step
.goto Shattrath City,56.32,36.96 << !Mage
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r << !Mage
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r << Mage
.zoneskip Wetlands
.zoneskip HowlingFjord
.itemcount 199335,<1
step
#completewith next
.goto Ironforge,55.51,47.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands>>飞到湿地
.zoneskip Wetlands
.zoneskip HowlingFjord
.itemcount 199335,<1
.target Gryth Thurden
step
#label HowlingTP
.goto Wetlands,4.52,57.28
.zone HowlingFjord >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁丁·法隆|r
>>请求|cRXP_FRIENDLY_Ludin|r传送到瓦尔加德
.skipgossip
.target Ludin Farrow
step
#label Dock
.goto HowlingFjord,60.80,62.50
>>|cRXP_WARN_看到码头就跳下船|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛卡洛伊|r
.accept 11228 >>接任务: |cRXP_LOOT_冰冻的地狱……|r
.target Macalroy
step
.goto HowlingFjord,60.36,60.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keller|r
.turnin 11228 >>交任务: |cRXP_FRIENDLY_冰冻的地狱……|r
.accept 11243 >>接任务: |cRXP_LOOT_如果瓦加德失守……|r
.target Vice Admiral Keller
step << skip
#completewith next
.goto HowlingFjord,60.11,61.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托里克|r
.vendor >>如果需要，购买弹药
.target Torik
step
.goto HowlingFjord,58.66,59.65,50,0
.goto HowlingFjord,57.33,58.20,50,0
.goto HowlingFjord,59.00,56.65,50,0
.goto HowlingFjord,59.00,59.93
>>杀死|cRXP_ENEMY_Dragonflayer入侵者|r和|cRXP_ENEMY_Draonflayer蠕虫|r
.complete 11243,1 
.mob Dragonflayer Invader
.mob Dragonflayer Worg
step
.goto HowlingFjord,60.57,61.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keller|r
.turnin 11243 >>交任务: |cRXP_FRIENDLY_如果瓦加德失守……|r
.accept 11244 >>接任务: |cRXP_LOOT_营救行动|r
.target Vice Admiral Keller
step
.goto HowlingFjord,58.90,56.28,40,0
.goto HowlingFjord,57.1,56.7,40,0
.goto HowlingFjord,58.90,56.28,40,0
.goto HowlingFjord,57.1,56.7
>>单击|cRXP_LOOT_Ceremonial Dragonflayer Harpoon|r营救|cRXP_FRIENDLY_Impaled Valgarde Scouts|r
.complete 11244,1 
.target Impaled Valgarde Scout
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Keller, |cRXP_FRIENDLY_贝尔塔德·米科索夫|r, |cRXP_FRIENDLY_智者索拉留斯|r
.turnin 11244 >>交任务: |cRXP_FRIENDLY_营救行动|r
.accept 11255 >>接任务: |cRXP_LOOT_龙颅村的囚犯|r
.goto HowlingFjord,60.57,61.30
.accept 11273 >>接任务: |cRXP_LOOT_协会的发现|r
.goto HowlingFjord,60.17,61.03
.accept 11333 >>接任务: |cRXP_LOOT_进入灵魂世界|r
.goto HowlingFjord,59.80,61.47
.target Vice Admiral Keller
.target Beltrand McSorf
.target Thoralius the Wise
step
#completewith Ares
.goto HowlingFjord,58.6,63.1,15,0
.goto HowlingFjord,58.39,62.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板哈吉尔·拉格拉斯|r
.home >>将您的炉石设置为Valgarde
>>|cRXP_BUY_如果需要，购买新的食物/水|r
.target Innkeeper Hazel Lagras
step
.goto HowlingFjord,59.79,63.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普莉希拉·冬风|r
.fp Valgarde >>获取Valgard飞行路线
.target Pricilla Winterwind
step
.goto HowlingFjord,60.12,62.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守卫队长索雷克|r
.accept 11420 >>接任务: |cRXP_LOOT_报复之路|r
.target Guard Captain Zorek
step
#questguide
#completewith next
>>掠夺沉船上的|cRXP_Loot_试剂袋|r
.complete 11333,1 
step
#questguide
.goto HowlingFjord,62.7,58.0,60,0
.goto HowlingFjord,62.5,60.9,60,0
.goto HowlingFjord,61.5,58.4,60,0
.goto HowlingFjord,62.0,56.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈洛德·拉格拉斯|r, He walks along the bottom of the water
.accept 11443 >>接任务: |cRXP_LOOT_匕鞘湾潜水行动|r
.unitscan Harold Lagras
step << !Druid !Warlock
#questguide
#completewith next
.cast 50002 >>装备|T133151:0|t[潜水头盔]
.use 34082
step
#questguide
#completewith next
.goto HowlingFjord,62.7,57.4,0
>>掠夺|cRXP_Loot_Valgarde补给箱|r
.complete 11443,1 
step
.goto HowlingFjord,62.07,57.64,-1
.goto HowlingFjord,62.39,59.32,-1
>>掠夺沉船上的|cRXP_Loot_试剂袋|r
.complete 11333,1 
step
#questguide
.goto HowlingFjord,61.8,56.2,50,0
.goto HowlingFjord,62.73,61.58,50,0
.goto HowlingFjord,62.3,60.9,50,0
.goto HowlingFjord,61.1,57.7
>>掠夺|cRXP_Loot_Valgarde补给箱|r
.complete 11443,1 
step
#questguide
.goto HowlingFjord,62.7,58.0,60,0
.goto HowlingFjord,62.5,60.9,60,0
.goto HowlingFjord,61.5,58.4,60,0
.goto HowlingFjord,62.0,56.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈洛德·拉格拉斯|r, He walks along the bottom of the water
.turnin 11443 >>交任务: |cRXP_FRIENDLY_匕鞘湾潜水行动|r
.unitscan Harold Lagras
step
.goto HowlingFjord,59.80,61.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者索拉留斯|r
.turnin 11333 >>交任务: |cRXP_FRIENDLY_进入灵魂世界|r
.accept 11343 >>接任务: |cRXP_LOOT_伊米隆的回响|r
.target Thoralius the Wise
step
#completewith next
.goto HowlingFjord,57.9,53.6,60,0
.goto HowlingFjord,58.8,54.2,0
.goto HowlingFjord,58.7,52.7,0
.goto HowlingFjord,59.9,53.1,0
.goto HowlingFjord,59.4,51.3,0
.goto HowlingFjord,57.9,51.4,0
>>杀死|cRXP_ENEMY_Dragonflyer死亡编织者|r，|cRXD_ENEMY_ DragonflyerHarpooners|r，| cRXP__ENEMY_Dragnflyer部落人|r和|cRXP_ENEMY_Draonflyers Thanes |r。抢走他们的|T134242:0|t[|cRXP_Loot_DDragonflyers笼子钥匙|r]
>>|cRXP_WARN_使用|r|T134242:0|t[|cRXP_LOOT_Dragonflayer阀笼键|r]|cRXP_WARN_on the |cRXP_FRIENDLY_Captured Valgarde|r阀笼|r
.collect 33308,3,11255,1,-1
.complete 11255,1 
.mob Dragonflayer Death Weaver
.mob Dragonflayer Harpooner
.mob Dragonflayer Tribesman
.mob Dragonflayer Thane
step
.goto HowlingFjord,59.19,54.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家普罗伊|r
.turnin 11273 >>交任务: |cRXP_FRIENDLY_协会的发现|r
.accept 11274 >>接任务: |cRXP_LOOT_塞德也许已经死了|r
.target Pulroy the Archaeologist
step
.goto HowlingFjord,58.70,52.68,30,0
.goto HowlingFjord,59.94,53.17,30,0
.goto HowlingFjord,59.44,51.28,30,0
.goto HowlingFjord,57.86,51.31,30,0
.goto HowlingFjord,57.76,53.35,30,0
.goto HowlingFjord,56.44,54.33
>>杀死|cRXP_ENEMY_Dragonflyer死亡编织者|r，|cRXD_ENEMY_ DragonflyerHarpooners|r，| cRXP__ENEMY_Dragnflyer部落人|r和|cRXP_ENEMY_Draonflyers Thanes |r。抢走他们的|T134242:0|t[|cRXP_Loot_DDragonflyers笼子钥匙|r]
>>|cRXP_WARN_使用|r|T134242:0|t[|cRXP_LOOT_Dragonflayer阀笼键|r]|cRXP_WARN_on the |cRXP_FRIENDLY_Captured Valgarde|r阀笼|r
.collect 33308,3,11255,1,-1
.complete 11255,1 
.mob Dragonflayer Death Weaver
.mob Dragonflayer Harpooner
.mob Dragonflayer Tribesman
.mob Dragonflayer Thane
step
#questguide
#completewith next
.goto HowlingFjord,56.4,55.1,30 >>前往|cRXP_FRIENDLY_Valory|r
step
#questguide
.goto HowlingFjord,55.95,55.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斥候瓦罗瑞|r
.accept 11251 >>接任务: |cRXP_LOOT_跑腿侦查|r
.target Scout Valory
step
.goto HowlingFjord,60.57,61.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keller|r
.turnin 11255 >>交任务: |cRXP_FRIENDLY_龙颅村的囚犯|r
.accept 11290 >>接任务: |cRXP_LOOT_掠龙作战计划|r
.target Vice Admiral Keller
step
.goto HowlingFjord,56.63,52.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞德|r, the corpse on the ground
.turnin 11274 >>交任务: |cRXP_FRIENDLY_塞德也许已经死了|r
.accept 11276 >>接任务: |cRXP_LOOT_失踪的两人……|r
.target Zedd
step
#completewith next
.goto HowlingFjord,55.69,52.58,20 >>进入洞穴
step
.goto HowlingFjord,55.69,52.58
>>掠夺墙上的|cRXP_Loot_DDragonflayer作战计划|r
.complete 11290,1 
step
#completewith next
.goto HowlingFjord,56.60,48.97,30 >>穿过你上方的桥，然后沿着小路进入乌特加德地下墓穴
>>|cRXP_WARN_你也可以从洞穴北侧跳上去，完全跳过大桥，以免被人下马|r
.skill coldweatherflying,1,1
step
#completewith next
.goto HowlingFjord,56.05,49.20,20,0
.goto HowlingFjord,56.3,51.8,25 >>沿着蜿蜒的小路进入乌特加德地下墓穴
step
.goto HowlingFjord,56.94,53.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗菲尔德|r
.turnin 11276 >>交任务: |cRXP_FRIENDLY_失踪的两人……|r
.accept 11277 >>接任务: |cRXP_LOOT_堕落的深渊|r
.target Glorenfeld
step
#completewith Ares
.goto HowlingFjord,57.7,56.6,0
>>在地上偷走|cRXP_Loot_Wymskull Tablet|r
.complete 11277,1 
step
#completewith next
.goto HowlingFjord,57.7,56.2,30 >>前往|cRXP_FRIENDLY_Ares|r
step
.goto HowlingFjord,59.34,55.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ares|r
>>|cRXP_WARN_这个意志探索会给你一个10分钟计时器的增益|r
.accept 11288 >>接任务: |cRXP_LOOT_闪耀的圣光|r
.target Ares the Oathbound
step
.goto HowlingFjord,59.26,55.37
>>将|cRXP_Loot_Harpoon操作手册|r洗劫一空
.complete 11420,1 
step
#completewith next
.goto HowlingFjord,56.3,56.8,50,0
.goto HowlingFjord,57.1,55.7,20 >>一路走下楼梯。直接穿过|cRXP_ENEMY_Ghouls|r进入底层的房间
step
.goto HowlingFjord,56.64,53.43
>>掠夺地上的|cRXP_Loot_圣物|r
.complete 11288,1 
step
#completewith next
.goto HowlingFjord,56.83,57.16,15,0
.goto HowlingFjord,56.43,56.48,15 >>返回楼上|cRXP_FRIENDLY_Ares|r
step
#label Ares
.goto HowlingFjord,59.34,55.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ares|r
.turnin 11288 >>交任务: |cRXP_FRIENDLY_闪耀的圣光|r
.accept 11289 >>接任务: |cRXP_LOOT_荣耀的指引|r
.target Ares the Oathbound
step
.goto HowlingFjord,56.94,53.76,40,0
.goto HowlingFjord,59.34,55.42,40,0
.goto HowlingFjord,56.94,53.76,40,0
.goto HowlingFjord,59.34,55.42,40,0
.goto HowlingFjord,56.94,53.76
>>在地上偷走|cRXP_Loot_Wymskull Tablet|r
.complete 11277,1 
step
.goto HowlingFjord,56.94,53.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗菲尔德|r
.turnin 11277 >>交任务: |cRXP_FRIENDLY_堕落的深渊|r
.accept 11299 >>接任务: |cRXP_LOOT_审判竞技场|r
.target Glorenfeld
step
#completewith next
.goto HowlingFjord,57.0,56.3,45 >>走下一层楼梯，前往|cRXP_FRIENDLY_Daegarn|r
step
.goto HowlingFjord,55.72,57.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戴加恩|r
.turnin 11299 >>交任务: |cRXP_FRIENDLY_审判竞技场|r
.accept 11300 >>接任务: |cRXP_LOOT_扫平竞技场|r
.target Daegarn
step
.goto HowlingFjord,54.94,57.38
>>杀死进入|cRXP_WARN_Ring|r审判区的|cRXP_ENEMY_Gladiators|r，直到暴力者|cRXP-ENEMY_Oluf|r进入
>>杀死暴力分子|cRXP_ENEMY_Oluf|r。偷走他掉在地上的|cRXX_Loot_Acient密码|r
.complete 11300,1 
.mob Firjus the Soul Crusher
.mob Jlarborn the Strategist
.mob Yorus the Flesh Harvester
.mob Oluf the Violent
step
#completewith next
.goto HowlingFjord,57.18,55.59,15 >>前往|cRXP_FRIENDLY_Glorenfeld|r
step
.goto HowlingFjord,56.94,53.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗菲尔德|r
.turnin 11300 >>交任务: |cRXP_FRIENDLY_扫平竞技场|r
.accept 11278 >>接任务: |cRXP_LOOT_返回瓦加德|r
.target Glorenfeld
step
#completewith next
.hs >>瓦尔加德要塞之炉
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊鲁伦·图布雷勋爵|r, |cRXP_FRIENDLY_守卫队长索雷克|r, Keller, |cRXP_FRIENDLY_贝尔塔德·米科索夫|r
.turnin 11289 >>交任务: |cRXP_FRIENDLY_荣耀的指引|r
.goto HowlingFjord,59.74,62.44
.turnin 11420 >>交任务: |cRXP_FRIENDLY_报复之路|r
.accept 11426 >>接任务: |cRXP_LOOT_寻找控制器|r
.goto HowlingFjord,60.12,62.43
.turnin 11290 >>交任务: |cRXP_FRIENDLY_掠龙作战计划|r
.accept 11291 >>接任务: |cRXP_LOOT_前往西部卫戍要塞！|r
.goto HowlingFjord,60.57,61.30
.turnin 11278 >>交任务: |cRXP_FRIENDLY_返回瓦加德|r
.accept 11448 >>接任务: |cRXP_LOOT_探险者协会哨站|r
.goto HowlingFjord,60.17,61.03
.target Lord Irulon Trueblade
.target Vice Admiral Keller
.target Beltrand McSorf
.target Guard Captain Zorek
step
#completewith SecretsW
.goto HowlingFjord,60.1,53.4,70,0
.goto HowlingFjord,60.8,51.1,0
>>杀死|cRXP_ENEMY_Dragonflayer鱼叉|r。掠夺它们以获得|cRXP-Loot_鱼叉控制机制|r
.complete 11426,1 
.mob Dragonflayer Harpooner
step
#completewith next
.goto HowlingFjord,60.28,50.51
.cast 42786 >>|cRXP_WARN_使用|r|T132845:0|t[香炉]|cRXP_WARN_out|r
.use 33637
step
#label SecretsW
.goto HowlingFjord,60.13,50.75,10 >>|cRXP_WARN_进入大楼|r。|cRXP_WARN_等待RP事件结束|r
>>|cRXP_WARN_不要回到外面，否则你必须点击|r|T135867:0|t[伊米隆的回声]|cRXP_WARN_Buff|r，|cRXP-WARN_然后使用|r|T132845:0|t[Incense Burner]|cRXP_WARN_gain|r
.timer 47,Secrets of Wyrmskull RP
.goto HowlingFjord,60.13,50.75
.use 33637
.complete 11343,1 
step
.goto HowlingFjord,60.8,51.1,15,0
.goto HowlingFjord,60.1,53.4
>>|cRXP_WARN_点击您的|r|T135867:0|t[Ymiron]|cRXP_WARN_buff|r
>>杀死|cRXP_ENEMY_Dragonflayer鱼叉|r。掠夺它们以获得|cRXP-Loot_鱼叉控制机制|r
.complete 11426,1 
.mob Dragonflayer Harpooner
step
#questguide
#completewith next
.goto HowlingFjord,60.7,48.9,25 >>沿路径上行至|cRXP_FRIENDLY_Mordun|r
step
#questguide
.goto HowlingFjord,59.56,48.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordun|r
>>|cRXP_WARN_单击您的|r|T135867:0|t[Ymiron]|cRXP_WARN_buff（如果您还有）|r
.turnin 11251 >>交任务: |cRXP_FRIENDLY_跑腿侦查|r


.target Defender Mordun
step << skip
#completewith next
.hs >>从赫斯到瓦尔加德
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者索拉留斯|r, |cRXP_FRIENDLY_守卫队长索雷克|r
.turnin 11343 >>交任务: |cRXP_FRIENDLY_伊米隆的回响|r
.accept 11344 >>接任务: |cRXP_LOOT_尼弗莱瓦的痛苦|r
.goto HowlingFjord,59.80,61.47
.turnin 11426 >>交任务: |cRXP_FRIENDLY_寻找控制器|r
.accept 11427 >>接任务: |cRXP_LOOT_约格莫夫·冰锤中尉|r
.vehicle >>让守卫队长索雷克搭个便车
.timer 30,Fly to Icehammer
.goto HowlingFjord,60.12,62.43
.skipgossip
.target Thoralius the Wise
.target Guard Captain Zorek
step
#completewith next
.goto HowlingFjord,64.43,46.95,90 >>前往|cRXP_FRIENDLY_Lieutent Icehammer |r
step
.goto HowlingFjord,64.43,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约格莫夫·冰锤中尉|r
.turnin 11427 >>交任务: |cRXP_FRIENDLY_约格莫夫·冰锤中尉|r
.accept 11429 >>接任务: |cRXP_LOOT_不倒的军旗！|r
.target Lieutenant Icehammer
step
.goto HowlingFjord,64.81,39.95
.use 34051 >>|cRXP_WARN_使用|r|T132486:0|t[联盟旗帜]|cRXP_WARN_ear|r|cRXP-PICK_Bonfire|r
>>杀死|cRXP_ENEMY_Winterskorn|r攻击者
.complete 11429,2 
.cast 44117
.timer 60,Banner Defended
.complete 11429,1 
.mob Winterskorn Defender
.mob Winterskorn Bonegrinder
step
.goto HowlingFjord,64.43,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约格莫夫·冰锤中尉|r
.turnin 11429 >>交任务: |cRXP_FRIENDLY_不倒的军旗！|r
.accept 11430 >>接任务: |cRXP_LOOT_鱼叉指挥官雅弗斯|r
.target Lieutenant Icehammer
step
.goto HowlingFjord,65.15,56.58
>>杀死|cRXP_ENEMY_Yavus|r内部
.complete 11430,1 
.mob Harpoon Master Yavus
step
#completewith next
.goto HowlingFjord,68.95,54.44
.cast 43466 >>|cRXP_WARN_使用|r|T132845:0|t[香炉]|cRXP_WARN_in Nifflevar|r
.timer 68,Secrets of Nifflevar RP
.use 33774
step
.goto HowlingFjord,68.95,54.44
>>|cRXP_WARN_等待RP|r
.complete 11344,1 
.use 33774
step
#completewith next
.goto HowlingFjord,74.95,65.41,100 >>前往探险家联盟前哨
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦瓦德|r, |cRXP_FRIENDLY_沃尔特|r, |cRXP_FRIENDLY_驯鹰大师希达尔格|r
.turnin 11448 >>交任务: |cRXP_FRIENDLY_探险者协会哨站|r
.accept 11474 >>接任务: |cRXP_LOOT_悬崖上的麻烦|r
.goto HowlingFjord,74.95,65.41
.turnin 11474 >>交任务: |cRXP_FRIENDLY_悬崖上的麻烦|r
.accept 11475 >>接任务: |cRXP_LOOT_必需的工具|r
.goto HowlingFjord,75.05,65.52
.accept 11460 >>接任务: |cRXP_LOOT_获得信任|r
.goto HowlingFjord,75.27,64.97
.target Stanwad
.target Walt
.target Hidalgo the Master Falconer
step
#completewith next
.goto HowlingFjord,75.80,64.56
>>打开一个|cRXP_PICK_Loose Rock|r。将其作为|cRXP_Loot_Fjord Grub|r
.collect 34102,1,11460,1 
step
.goto HowlingFjord,75.24,64.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_岩石猎鹰|r
.complete 11460,1 
.skipgossip
.target Rock Falcon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驯鹰大师希达尔格|r
.goto HowlingFjord,75.27,64.97
.turnin 11460 >>交任务: |cRXP_FRIENDLY_获得信任|r
.accept 11465 >>接任务: |cRXP_LOOT_被袭击的车队|r
.target Hidalgo the Master Falconer
step
#completewith next
.groundgoto HowlingFjord,74.67,56.35,80,0
.groundgoto HowlingFjord,74.42,53.15,70,0
.groundgoto HowlingFjord,76.51,50.18,70,0
.goto HowlingFjord,78.80,48.86,100 >>Travel to Ivald's Ruin
step
.goto HowlingFjord,78.80,48.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_东尼|r
.accept 11477 >>接任务: |cRXP_LOOT_不自量力？|r

.target Donny
step
#completewith next
.goto HowlingFjord,77.0,47.2,0
>>杀死|cRXP_ENEMY_Iron符文工兵|r、|cRXD_ENEMY_ Iron符文歼击手|r和|cRXP_ENEMY_Iron符文圣者|r
.complete 11477,2 
.complete 11477,1 
.complete 11477,3 
.mob Iron Rune Laborer
.mob Iron Rune Destroyer
.mob Iron Rune Sage
step
.goto HowlingFjord,79.00,47.56
>>在木制平台上抢劫|cRXP_Loot_建筑工具|r
.complete 11475,1 
step
>>杀死|cRXP_ENEMY_Iron符文工兵|r、|cRXD_ENEMY_ Iron符文歼击手|r和|cRXP_ENEMY_Iron符文圣者|r
.complete 11477,2 
.goto HowlingFjord,79.1,46.3,30,0
.goto HowlingFjord,78.0,46.5,30,0
.goto HowlingFjord,78.0,48.4
.complete 11477,1 
.goto HowlingFjord,77.3,49.0,25,0
.goto HowlingFjord,77.2,45.6,25,0
.goto HowlingFjord,79.6,45.5
.complete 11477,3 
.goto HowlingFjord,77.8,46.3,-1
.goto HowlingFjord,79.5,47.2,-1
.mob Iron Rune Laborer
.mob Iron Rune Destroyer
.mob Iron Rune Sage
step
.goto HowlingFjord,78.80,48.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_东尼|r
.turnin 11477 >>交任务: |cRXP_FRIENDLY_不自量力？|r
.target Donny
step
#completewith next
.groundgoto HowlingFjord,76.51,50.18,70,0
.groundgoto HowlingFjord,74.42,53.15,70,0
.groundgoto HowlingFjord,74.67,56.35,80,0
.goto HowlingFjord,75.05,65.52,100 >>前往探险家联盟前哨
step
.goto HowlingFjord,75.05,65.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃尔特|r
.turnin 11475 >>交任务: |cRXP_FRIENDLY_必需的工具|r
.accept 11483 >>接任务: |cRXP_LOOT_我们可以重建它|r
.accept 11484 >>接任务: |cRXP_LOOT_我们有技术|r
.target Walt
step
#completewith Turkey
.goto HowlingFjord,73.49,66.08,40,0
.goto HowlingFjord,69.6,67.2
>>杀死|cRXP_ENEMY_Shoveltusk|r。掠夺他们的|cRXX_Loot_Pristine Hide|r
.complete 11484,1 
.mob Shoveltusk
.mob Shoveltusk Calf
.mob Shoveltusk Stag
step
.goto HowlingFjord,70.71,68.31,10,0
.goto HowlingFjord,70.53,68.13,10,0
.goto HowlingFjord,69.56,66.62,10,0
.goto HowlingFjord,68.67,66.92,10,0
.goto HowlingFjord,68.82,66.38
>>打开|cRXP_PICK_Loose Rocks|r。为|cRXP_Loot_Fjord Grubs|r掠夺它们
.collect 34102,5,11465,1 
step
#label Turkey
.use 34111 >>|cRXP_WARN_使用|r|T132598:0|t[训练有素的岩石猎鹰]|cRXP_WARN_while you have a |cRXP-LOOT_Grub|r to capture a |r|cRXP_ENEMY_Fjord Turkey|r
.collect 34102,5,11465,1,-1 
.complete 11465,1 
.goto HowlingFjord,69.19,64.68
.target Fjord Turkey
step
.goto HowlingFjord,70.02,67.61,40,0
.goto HowlingFjord,68.91,69.88
>>杀死|cRXP_ENEMY_Shoveltusk|r。掠夺他们的|cRXX_Loot_Pristine Hide|r
.complete 11484,1 
.mob Shoveltusk
.mob Shoveltusk Calf
.mob Shoveltusk Stag
step
.goto HowlingFjord,64.43,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约格莫夫·冰锤中尉|r
.turnin 11430 >>交任务: |cRXP_FRIENDLY_鱼叉指挥官雅弗斯|r
.accept 11421 >>接任务: |cRXP_LOOT_扫射龙颅村|r
.target Lieutenant Icehammer
step
#completewith next
.goto HowlingFjord,64.57,40.97,100 >>Travel to Baleheim
step
.goto HowlingFjord,64.57,40.97
>>地面上的|cRXP_Loot_工业强度绳索|r
.complete 11483,2 
step
#completewith 11
.goto HowlingFjord,67.9,53.5,0
>>杀死|cRXP_ENEMY_Dragonflayer Warriors|r和|cRXD_ENEMY_ DragonflayerRune Seers|r。掠夺它们以获得|cRXP_Loot_钢肋|r
.complete 11484,2 
.mob Dragonflayer Warrior
.mob Dragonflayer Rune-Seer
step
.goto HowlingFjord,67.58,52.25
>>将|cRXP_Loot_Large Barrel|r从地上偷走
.complete 11483,1 
step
#completewith next
.goto HowlingFjord,64.73,52.65,80 >>前往Niffelvar悬崖表面
step
.goto HowlingFjord,64.73,52.65
.vehicle >>|cRXP_WARN_使用|r|T133572:0|t[鱼叉控制机构]|cRXP_WARN_on a|r|cRX_PICK_Vrykul鱼叉枪|r
.use 34032
step
>>|cRXP_WARN_Cast|r|T135826:0|t[凶猛的鱼叉]（1）|cRXP_WARN_to摧毁长屋、码头和储存设施|r
>>|cRXP_WARN_施法|r|T135825:0|t[长枪]（2）|cRXP_WARN_to击杀进攻方|r|cRXT_ENEMY_Dragonflyer Defenders|r
>>|cRXP_ENEMY_当你摧毁建筑物时，蜻蜓防御者|r|cRXP_WARN_将产生|r
.complete 11421,2 
.complete 11421,3 
.complete 11421,4 
.complete 11421,1 
.use 34032
.mob Dragonflayer Defender
step
#label 11
.goto HowlingFjord,64.43,46.95
>>|cRXP_WARN_退出鱼叉|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约格莫夫·冰锤中尉|r
.turnin 11421 >>交任务: |cRXP_FRIENDLY_扫射龙颅村|r
.accept 11436 >>接任务: |cRXP_LOOT_冲浪去！|r
.target Lieutenant Icehammer
step
.goto HowlingFjord,67.1,55.4,50,0
.goto HowlingFjord,67.86,53.30,50,0
.goto HowlingFjord,68.72,52.36,50,0
.goto HowlingFjord,69.14,55.60,50,0
.goto HowlingFjord,67.64,56.45,50,0
.goto HowlingFjord,67.86,53.30
>>杀死|cRXP_ENEMY_Dragonflayer Warriors|r和|cRXD_ENEMY_ DragonflayerRune Seers|r。掠夺它们以获得|cRXP_Loot_钢肋|r
.complete 11484,2 
.mob Dragonflayer Warrior
.mob Dragonflayer Rune-Seer
step
#completewith next
.goto HowlingFjord,65.23,57.22,60 >>前往大楼阳台
step
#completewith next
.goto HowlingFjord,65.23,57.22
.vehicle >>单击|cRXP_PICK_Large Harpoon Lever|r
.timer 14,Ride the Harpoon
step
.goto HowlingFjord,60.03,62.09
>>乘鱼叉返回Valgard要塞
.complete 11436,1 
step
.goto HowlingFjord,60.12,62.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守卫队长索雷克|r
.turnin 11436 >>交任务: |cRXP_FRIENDLY_冲浪去！|r
.target Guard Captain Zorek
step
.goto HowlingFjord,59.80,61.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者索拉留斯|r
.turnin 11344 >>交任务: |cRXP_FRIENDLY_尼弗莱瓦的痛苦|r
.target Thoralius the Wise
step
.goto HowlingFjord,60.84,61.58
.gossipoption 93511 >>对话: |cRXP_FRIENDLY_米克高维尔|r
>>|cRXP_WARN_选择第二个选项：“Walt让我去买一些深色的铁锭”|r
>>|cRXP_WARN_拿到锭后别再和他说话|r
.complete 11483,3 
.skipgossip
.target McGoyver
step
#completewith next
.goto HowlingFjord,63.4,64.7,40,0
.goto HowlingFjord,65.5,65.1,40 >>向东穿过水面。沿着小山路骑行
.skill coldweatherflying,1,1
step
#completewith next
.goto HowlingFjord,75.05,65.52,100 >>前往探险家联盟前哨
step
#label OutpostX
.goto HowlingFjord,75.05,65.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃尔特|r
.turnin 11483 >>交任务: |cRXP_FRIENDLY_我们可以重建它|r
.turnin 11484 >>交任务: |cRXP_FRIENDLY_我们有技术|r
.accept 11485 >>接任务: |cRXP_LOOT_铁符文构造体与你：火箭跳|r
.target Walt
step
#completewith next
.goto HowlingFjord,75.12,65.51
.vehicle >>单击|cRXP_PICK_Work Bench|r
.skipgossip
step
.goto HowlingFjord,75.15,65.43
>>|cRXP_WARN_施法|r|T133031:0|t[火箭跳跃]（1）|cRXP_WARN_to跳到地面上的另一符文|r
.complete 11485,1 
step
>>|cRXP_WARN_退出铁符文构造|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驯鹰大师希达尔格|r, |cRXP_FRIENDLY_沃尔特|r
.turnin 11465 >>交任务: |cRXP_FRIENDLY_被袭击的车队|r
.accept 11468 >>接任务: |cRXP_LOOT_鹰隼之战|r
.goto HowlingFjord,75.27,64.97
.turnin 11485 >>交任务: |cRXP_FRIENDLY_铁符文构造体与你：火箭跳|r
.accept 11489 >>接任务: |cRXP_LOOT_铁符文构造体与你：收集数据|r
.goto HowlingFjord,75.05,65.52
.target Walt
.target Hidalgo the Master Falconer
step
#completewith next
.goto HowlingFjord,75.12,65.51
.vehicle >>单击|cRXP_PICK_Work Bench|r
.skipgossip
step
.goto HowlingFjord,74.82,65.74
>>走在|cRXP_PICK_Blue Crystal|r的顶部
>>|cRXP_WARN_Cast|r|T133594:0|t[收集数据]（1）|cRXP_WARN_to通道并收集数据|r
.complete 11489,1 
step
.goto HowlingFjord,75.05,65.52
>>|cRXP_WARN_退出铁符文构造|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃尔特|r
.turnin 11489 >>交任务: |cRXP_FRIENDLY_铁符文构造体与你：收集数据|r
.accept 11491 >>接任务: |cRXP_LOOT_铁符文构造体与你：唬骗|r
.target Walt
step
#completewith next
.goto HowlingFjord,75.12,65.51
.vehicle >>单击|cRXP_PICK_Work Bench|r
.skipgossip
step
.goto HowlingFjord,74.80,65.27
>>在|cRXP_FRIENDLY_Lebronski的|r|cRXP_PICK_Rug|r上行走
>>|cRXP_WARN_铸造|r|T135740:0|t[钝]（1）|cRXP_WARN_twice|r
.complete 11491,1 
.target Lebronski
step
.goto HowlingFjord,75.05,65.52
>>|cRXP_WARN_退出铁符文构造|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃尔特|r
.turnin 11491 >>交任务: |cRXP_FRIENDLY_铁符文构造体与你：唬骗|r
.accept 11494 >>接任务: |cRXP_LOOT_闪电圣物|r
.accept 11495 >>接任务: |cRXP_LOOT_轰鸣的雷霆|r
.target Walt
step
#completewith next
.goto HowlingFjord,75.12,65.51
.vehicle >>单击|cRXP_PICK_Work Bench|r
.skipgossip
step
.goto HowlingFjord,72.6,67.9,60,0
.goto HowlingFjord,72.12,70.40,10,0
.goto HowlingFjord,74.33,70.82,15 >>穿着Golem套装前往贝尔贡的挖掘现场|cRXP_WARN_Cast|r|T135740:0|t[Browff]（3）|cRXP_WARN_if a|cRXP_ENEMY_Dwarf|r曾质疑过您的|r|cRXT_FRIENDLY_Golem|r|cRXP_WARN_。登上木台，|r|T133031:0|t[火箭跳跃]（1）|cRXP_WRN_on |cRX_PICK_middle符文|r。避开|r|cRXP_ENEMY_Rampaging Earth Elements|r
step
#completewith next
.goto HowlingFjord,71.4,72.3,0
>>|cRXP_WARN_铸造|r|T133594:0|t[Collect Data]（2）|cRXP_WARN_当您在|r|cRX_PICK_small blue crystal|r|cRXP_WARN_to通道收集|r| cRXP_ICK_Rune Data时|r
>>|cRXP_WARN_演员阵容|r|T135740:0|t[虚张声势]（3）|cRXP_WARN_if a|cRXP_ENEMY_Dwarf|r曾质疑过您的|cRXT_FRIENDLY_Golem|r
>>避免|r|cRXP_ENEMY_Rampaging地球元素|r
.complete 11494,1 
step
.goto HowlingFjord,73.4,70.3,20,0
.goto HowlingFjord,71.5,69.4,18 >>|cRXP_WARN_进入洞穴。洞穴行进到一半时，RP事件将触发|r
>>|cRXP_WARN_等待RP|r
.timer 46,Thundering Cave RP
.goto HowlingFjord,71.5,69.4
.complete 11495,1 
step
.goto HowlingFjord,71.4,72.3,30,0
.goto HowlingFjord,72.6,75.2,50,0
.goto HowlingFjord,73.4,72.0,50,0
.goto HowlingFjord,73.2,73.4
>>|cRXP_WARN_跑出洞穴|r.|cRXP_WARN_跌落到地面和下面的木平台上|r
>>|cRXP_WARN_铸造|r|T133594:0|t[Collect Data]（2）|cRXP_WARN_当您在|r|cRX_PICK_small blue crystal|r|cRXP_WARN_to通道收集|r| cRXP_ICK_Rune Data时|r
>>|cRXP_WARN_演员阵容|r|T135740:0|t[虚张声势]（3）|cRXP_WARN_if a|cRXP_ENEMY_Dwarf|r曾质疑过您的|cRXT_FRIENDLY_Golem|r
>>避免|r|cRXP_ENEMY_Rampaging地球元素|r
.complete 11494,1 
step
#completewith next
.goto HowlingFjord,73.20,73.37,8,0
.goto HowlingFjord,71.97,70.10,30 >>|cRXP_WARN_投掷|r|T133031:0|t[火箭跳跃]（1）|cRXP_WARN_在挖掘现场底部两个帐篷附近的符文上跳回顶部|r
step
.goto HowlingFjord,68.59,68.71,50,0
.goto HowlingFjord,68.01,63.80,50,0
.goto HowlingFjord,70.89,63.24,50,0
.goto HowlingFjord,74.20,59.48
>>|cRXP_WARN_退出铁符文构造|r
>>打开|cRXP_PICK_Loose Rocks|r。为|cRXP_Loot_Fjord Grubs|r掠夺它们
.use 34121 >>|cRXP_WARN_使用|r|T132598:0|t[训练有素的岩石猎鹰]|cRXP_WARN_while you have a |cRXP-LOOT_Grub|r to capture a |r|cRXP_ENEMY_Fjord Hawk|r
>>|cRXP_WARN_你可以发现这些栖息在岩石顶部或大约50码高的空中|r
.collect 34102,10,11468,1,-1 
.complete 11468,1 
.target Fjord Hawk
step
#completewith next
.goto HowlingFjord,75.27,64.97,100 >>前往探险家联盟前哨
step
.goto HowlingFjord,75.27,64.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驯鹰大师希达尔格|r
.turnin 11468 >>交任务: |cRXP_FRIENDLY_鹰隼之战|r
.accept 11470 >>接任务: |cRXP_LOOT_鸟类可不管什么荣耀！|r
.target Hidalgo the Master Falconer
step
#completewith next
.goto HowlingFjord,76.70,67.78,60 >>前往Vrykul Hawk Roost
step
#completewith next
.goto HowlingFjord,76.70,67.78
.cast 50019 >>|cRXP_WARN_使用|r|T132598:0|t[训练有素的岩石猎鹰]|cRXP_WARN_at |r|cRX_PICK_Hawk Roost|r
.use 34124
step
.goto HowlingFjord,76.70,67.78
.use 34124 >>|cRXP_WARN_从东面的悬崖上往下潜|r
>>|cRXP_WARN_铸造|r|T132834:0|t[清道夫]（1）|cRXP_WARN_to开始收集|r|cRXD_LOOT_Fjord Hawk蛋|r
>>|cRXP_WARN_施法|r|T132172:0|t[Soar]（2）|cRXP_WARN_on冷却以移动更快|r
>>|cRXP_WARN_施法|r|T132927:0|t[逃跑]（3）|cRXP_WARN_to暂时迷惑敌人|r|cRXP-enemy_Hawk|r
>>|cRXP_WARN_如果您的|cRXP_FRIENDLY_Falcon|r死亡，请使用|r|T132598:0|t[训练有素的岩石猎鹰]|cRXP_WARN_again|r
.complete 11470,1 
stepm
>>|cRXP_WARN_退出鸟群|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驯鹰大师希达尔格|r, |cRXP_FRIENDLY_沃尔特|r
.turnin 11470 >>交任务: |cRXP_FRIENDLY_鸟类可不管什么荣耀！|r
.goto HowlingFjord,75.27,64.97
.turnin 11495 >>交任务: |cRXP_FRIENDLY_轰鸣的雷霆|r
.turnin 11494 >>交任务: |cRXP_FRIENDLY_闪电圣物|r
.accept 11501 >>接任务: |cRXP_LOOT_东边来的消息|r
.goto HowlingFjord,75.05,65.52
.target Walt
.target Hidalgo the Master Falconer
step
#completewith next
.goto HowlingFjord,75.05,65.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃尔特|r

.vehicle >>飞到Westguard Keep
.timer 106,News From the East RP

.skipgossip
.target Walt
step
#completewith RootC
.goto HowlingFjord,30.9,42.0,15,0
.goto HowlingFjord,30.86,41.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celeste|r
.home >>将您的炉石设置为Westguard Keep
.target Innkeeper Celeste Goodhutch
step
.goto HowlingFjord,31.17,40.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师凯图·黑罐|r
.accept 11155 >>接任务: |cRXP_LOOT_又是铲齿鹿汤？|r
.target Chef Kettleblack
step
.goto HowlingFjord,28.84,44.13
>>|cRXP_WARN_去Westguard Keep的主房间|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adams|r
.turnin 11291 >>交任务: |cRXP_FRIENDLY_前往西部卫戍要塞！|r
.turnin 11501 >>交任务: |cRXP_FRIENDLY_东边来的消息|r
.accept 11157 >>接任务: |cRXP_LOOT_邪恶之巢|r
.target Captain Adams
step << skip
.goto HowlingFjord,28.9,42.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派特洛夫|r
.accept 11153 >>接任务: |cRXP_LOOT_冲破封锁|r
.target Bombardier Petrov

step << skip
.goto HowlingFjord,20.9,48.5
.use 33098 >>使用|T133710:0|t[Petrov的集束炸弹]摧毁船上的|cRXP_ENEMY_Cannons|r和|cRXX_ENEMY_Pirates|r
.complete 11153,2 
.complete 11153,1 
.mob Blockade Captain
.mob Blockade Pirate
step << skip
.goto HowlingFjord,28.9,42.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派特洛夫|r
.turnin 11153 Turn in Break the Blockade
.target Bombardier Petrov
step
>>退出Keep
.goto HowlingFjord,31.26,43.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fp Westguard Keep >>叫西卫队，保持飞行路线
.target Greer Orehammer
step
.goto HowlingFjord,33.98,43.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ely|r
.accept 11190 >>接任务: |cRXP_LOOT_非标准炮弹|r
.target Cannoneer Ely
step
#completewith next
.goto HowlingFjord,40.5,41.3,0
>>杀死|cRXP_ENEMY_Shoveltusk|r。掠夺它们的|cRXP_Loot_Meat|r
.complete 11155,1 
.mob Shoveltusk
.mob Shoveltusk Calf
.mob Shoveltusk Stag
step
#loop
.line HowlingFjord,35.78,40.45,38.89,40.27,39.95,42.16,37.70,44.50,35.74,44.74,35.33,49.67,34.54,51.57,33.48,47.74
.goto HowlingFjord,35.78,40.45,60,0
.goto HowlingFjord,38.89,40.27,60,0
.goto HowlingFjord,39.95,42.16,60,0
.goto HowlingFjord,37.70,44.50,60,0
.goto HowlingFjord,35.74,44.74,60,0
.goto HowlingFjord,35.33,49.67,60,0
.goto HowlingFjord,34.54,51.57,60,0
.goto HowlingFjord,33.48,47.74,60,0
>>在地面上掠夺|cRXP_Loot_Westguard炮弹|r
.complete 11190,1 
step
#loop
.line HowlingFjord,35.78,40.45,38.89,40.27,39.95,42.16,37.70,44.50,35.74,44.74,35.33,49.67,34.54,51.57,33.48,47.74
.goto HowlingFjord,35.78,40.45,60,0
.goto HowlingFjord,38.89,40.27,60,0
.goto HowlingFjord,39.95,42.16,60,0
.goto HowlingFjord,37.70,44.50,60,0
.goto HowlingFjord,35.74,44.74,60,0
.goto HowlingFjord,35.33,49.67,60,0
.goto HowlingFjord,34.54,51.57,60,0
.goto HowlingFjord,33.48,47.74,60,0
>>杀死|cRXP_ENEMY_Shoveltusk|r。掠夺它们的|cRXP_Loot_Meat|r
.complete 11155,1 
.mob Shoveltusk
.mob Shoveltusk Calf
.mob Shoveltusk Stag
step
#completewith RootC
.goto HowlingFjord,40.6,48.5,0
>>杀死|cRXP_ENEMY_Proto Whelps|r
.complete 11157,2 
.mob Proto-Whelp
step
#completewith RootC
.goto HowlingFjord,39.1,48.2,0
>>杀死|cRXP_ENEMY_Proto-Drake Egg|r
.complete 11157,1 
.mob Proto-Drake Egg
step
.goto HowlingFjord,36.57,48.63,-1
.goto HowlingFjord,41.16,49.41,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_灰烬龙巢古树|r
.accept 11182 >>接任务: |cRXP_LOOT_问题的根源|r
.target Ember Clutch Ancient
step
#completewith next
>>杀死|cRXP_ENEMY_Dragonflayer处理程序|r
.complete 11182,1 
.mob Dragonflayer Handler
step
>>杀死建筑物内的|cRXP_ENEMY_Skeld Drakeson|r
.complete 11182,2 
.goto HowlingFjord,41.46,52.34
.mob Skeld Drakeson
step
>>杀死|cRXP_ENEMY_Dragonflayer处理程序|r
.complete 11182,1 
.goto HowlingFjord,40.37,52.23,45,0
.goto HowlingFjord,41.29,53.09,45,0
.goto HowlingFjord,42.48,54.07,45,0
.goto HowlingFjord,40.37,52.23,45,0
.goto HowlingFjord,42.48,54.07
.mob Dragonflayer Handler
step
#label RootC
.goto HowlingFjord,41.16,49.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_灰烬龙巢古树|r
.turnin 11182 >>交任务: |cRXP_FRIENDLY_问题的根源|r
.target Ember Clutch Ancient
step
#completewith next
.goto HowlingFjord,40.6,48.5,0
>>杀死|cRXP_ENEMY_Proto Whelps|r
.complete 11157,2 
.mob Proto-Whelp
step
#loop
.line HowlingFjord,41.15,50.78,39.44,51.32,37.67,51.03,36.66,48.95,37.90,47.94,39.63,48.40,41.42,49.93
.goto HowlingFjord,41.15,50.78,60,0
.goto HowlingFjord,39.44,51.32,60,0
.goto HowlingFjord,37.67,51.03,60,0
.goto HowlingFjord,36.66,48.95,60,0
.goto HowlingFjord,37.90,47.94,60,0
.goto HowlingFjord,39.63,48.40,60,0
.goto HowlingFjord,41.42,49.93,60,0
>>杀死|cRXP_ENEMY_Proto-Drake Egg|r
.complete 11157,1 
.mob Proto-Drake Egg
step
#loop
.line HowlingFjord,41.15,50.78,39.44,51.32,37.67,51.03,36.66,48.95,37.90,47.94,39.63,48.40,41.42,49.93
.goto HowlingFjord,41.15,50.78,60,0
.goto HowlingFjord,39.44,51.32,60,0
.goto HowlingFjord,37.67,51.03,60,0
.goto HowlingFjord,36.66,48.95,60,0
.goto HowlingFjord,37.90,47.94,60,0
.goto HowlingFjord,39.63,48.40,60,0
.goto HowlingFjord,41.42,49.93,60,0
>>杀死|cRXP_ENEMY_Proto Whelps|r
.complete 11157,2 
.mob Proto-Whelp
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <69,1
step << Druid
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 26982 >>训练你的职业技能
.xp <69,1
.target Loganaar

step << DK
#completewith next
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <69,1
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49928 >>训练你的职业技能
.xp <69,1
.target Amal'thazad

step << Mage
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <69,1
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 27125 >>训练你的职业技能
.xp <69,1
.target Elsharin
.target Jennea Cannon

step
#completewith next
.hs >>西城卫队要塞的火炉
step
.goto HowlingFjord,31.17,40.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师凯图·黑罐|r
.turnin 11155 >>交任务: |cRXP_FRIENDLY_又是铲齿鹿汤？|r
.target Chef Kettleblack
step
>>|cRXP_WARN_去Westguard Keep的主房间|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Adams, |cRXP_FRIENDLY_法师中尉玛利斯特|r
.turnin 11157 >>交任务: |cRXP_FRIENDLY_邪恶之巢|r
.accept 11187 >>接任务: |cRXP_LOOT_法师中尉玛利斯特|r
.goto HowlingFjord,28.84,44.13
.turnin 11187 >>交任务: |cRXP_FRIENDLY_法师中尉玛利斯特|r
.accept 11188 >>接任务: |cRXP_LOOT_一错再错……|r
.goto HowlingFjord,28.94,44.19
.target Mage-Lieutenant Malister
.target Captain Adams
step
.goto HowlingFjord,33.98,43.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ely|r
.turnin 11190 >>交任务: |cRXP_FRIENDLY_非标准炮弹|r
.target Cannoneer Ely
step
#loop
.line HowlingFjord,41.15,50.78,39.44,51.32,37.67,51.03,36.66,48.95,37.90,47.94,39.63,48.40,41.42,49.93
.goto HowlingFjord,41.15,50.78,60,0
.goto HowlingFjord,39.44,51.32,60,0
.goto HowlingFjord,37.67,51.03,60,0
.goto HowlingFjord,36.66,48.95,60,0
.goto HowlingFjord,37.90,47.94,60,0
.goto HowlingFjord,39.63,48.40,60,0
.goto HowlingFjord,41.42,49.93,60,0
.use 33119 >>|cRXP_WARN_在Ember离合器上方的空气中使用|r|T135463:0|t[恶意冰霜棒]|cRXP_WARN_on|cRXP_ENEMY_Proto-Drakes|r|r
>>杀死|cRXP_ENEMY_Proto-Drakes|r
.complete 11188,1 
.mob Proto-Drake
step << Shaman
#completewith next
.hs >>Hearth返回Westguard Keep
step
>>|cRXP_WARN_去Westguard Keep的主房间|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法师中尉玛利斯特|r, Adams
.turnin 11188 >>交任务: |cRXP_FRIENDLY_一错再错……|r
.goto HowlingFjord,28.94,44.19
.accept 11199 >>接任务: |cRXP_LOOT_向斥候诺勒斯报到|r
.goto HowlingFjord,28.84,44.13
.target Mage-Lieutenant Malister
.target Captain Adams
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工兵斯迪尔林|r, Abigail
.accept 11218 >>接任务: |cRXP_LOOT_危险！爆炸品！|r
.goto HowlingFjord,29.11,41.78
.accept 11224 >>接任务: |cRXP_LOOT_骡子和货物|r
.goto HowlingFjord,31.62,41.50
.target Sapper Steelring
.target Explorer Abigail
step
.goto HowlingFjord,32.3,46.7
.abandon 11153 >>放弃如果你捡到了就打破封锁
step
.goto HowlingFjord,32.27,46.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_隆克|r
.accept 11573 >>接任务: |cRXP_LOOT_卡玛古的奥弗斯|r
.target Lunk-tusk
step
.goto HowlingFjord,44.47,57.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斥候诺勒斯|r
.turnin 11199 >>交任务: |cRXP_FRIENDLY_向斥候诺勒斯报到|r
.accept 11202 >>接任务: |cRXP_LOOT_任务：永恒的烈焰|r
.target Scout Knowles
step
.use 33164 >>|cRXP_WARN_在Halgrind边界附近使用|r|T135432:0|t[Ever burning Torch]|cRXP_WARN_on|cRXP-WARN_Lague Tank|r|r
.complete 11202,1 
.goto HowlingFjord,48.50,55.85
.complete 11202,2 
.goto HowlingFjord,48.13,52.77
.complete 11202,3 
.goto HowlingFjord,51.17,50.27
.complete 11202,4 
.goto HowlingFjord,51.42,57.60
step
.goto HowlingFjord,44.47,57.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斥候诺勒斯|r
.turnin 11202 >>交任务: |cRXP_FRIENDLY_任务：永恒的烈焰|r
.accept 11327 >>接任务: |cRXP_LOOT_任务：夺回包裹|r
.target Scout Knowles
step
#completewith next
.goto HowlingFjord,50.75,53.89,200 >>Travel to Halgrind
step
.goto HowlingFjord,50.75,53.89
>>将|cRXP_Loot_药剂师包裹|r洗劫一空
.complete 11327,1 
step
.goto HowlingFjord,44.47,57.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斥候诺勒斯|r
.turnin 11327 >>交任务: |cRXP_FRIENDLY_任务：夺回包裹|r
.accept 11328 >>接任务: |cRXP_LOOT_任务：被遗忘者的情报|r
.target Scout Knowles
step
.goto HowlingFjord,40.29,60.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus|r
.turnin 11573 >>交任务: |cRXP_FRIENDLY_卡玛古的奥弗斯|r
.accept 11504 >>接任务: |cRXP_LOOT_亡者复生！|r
.target Orfus of Kamagua
step
#completewith next
.goto HowlingFjord,57.68,77.54,200 >>前往盾山
step
#completewith next
>>打开|cRXP_PICK_碎片堆|r。将其打开以寻找|cRXP_Loot_Fengir的线索|r
.complete 11504,1 
.goto HowlingFjord,57.68,77.54
step
#completewith next
>>打开|cRXP_PICK_Unlocked胸脯|r。为|cRXP _Loot_Rodin的线索进行掠夺|r
.complete 11504,2 
.goto HowlingFjord,59.23,76.97
step
#completewith next
>>打开|cRXP_PICK_Long Tail Feather|r。为|cRXP _Loot_Isuldof线索|r进行掠夺
.complete 11504,3 
.goto HowlingFjord,59.80,79.40
step
>>打开|cRXP_PICK_Cannonball |r。为|cRXP _Loot_Windan的线索而抢劫它|r
.complete 11504,4 
.goto HowlingFjord,61.98,80.05
step
.goto HowlingFjord,40.29,60.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus|r
.turnin 11504 >>交任务: |cRXP_FRIENDLY_亡者复生！|r
.accept 11507 >>接任务: |cRXP_LOOT_卡玛古的长者阿图伊克|r
.target Orfus of Kamagua
step
#completewith next
+|cRXP_WARN_如果你刚刚错过了电梯|r，|T135992:0|t下降，|cRXP_WARN_然后爬起来，朝下面的地面跳去|r << Mage
+|cRXP_WARN_如果你错过了电梯|r，|cRXP_WARN_跳进水里，游到你西面的岛屿大陆|r << !Mage
>>|cRXP_WARN_否则|r，|cRXP_WARN_wait for the lift |r。|cRXP-WARN_Take it to the island|r
.skill coldweatherflying,1,1
step
#completewith next
.goto HowlingFjord,25.02,56.96,150 >>前往卡马瓜
step
.goto HowlingFjord,25.02,56.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_长者阿图伊克|r
.turnin 11507 >>交任务: |cRXP_FRIENDLY_卡玛古的长者阿图伊克|r
.accept 11508 >>接任务: |cRXP_LOOT_格雷兹克斯·斯宾德斯纳普|r
.accept 11456 >>接任务: |cRXP_LOOT_难民的食物|r
.target Elder Atuik
step
.goto HowlingFjord,24.66,57.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基普·特斯基普|r
.fp Kamagua >>获取卡玛古飞行路线
.target Kip Trawlskip
step
#completewith Eagle
.goto HowlingFjord,25.39,59.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护理员伊克尼克|r
.home >>将您的炉石设置为卡玛古
.target Caregiver Iqniq
step
.goto HowlingFjord,27.38,60.93,60,0
.goto HowlingFjord,28.76,65.49,60,0
.goto HowlingFjord,29.60,69.05,60,0
.goto HowlingFjord,32.72,66.13,60,0
.goto HowlingFjord,30.77,61.94,60,0
.goto HowlingFjord,30.72,58.88,60,0
.goto HowlingFjord,28.81,58.18,60,0
.goto HowlingFjord,27.38,60.93,60,0
.goto HowlingFjord,28.76,65.49,60,0
.goto HowlingFjord,29.60,69.05,60,0
.goto HowlingFjord,32.72,66.13,60,0
.goto HowlingFjord,30.77,61.94,60,0
.goto HowlingFjord,30.72,58.88,60,0
.goto HowlingFjord,28.81,58.18
>>杀死|cRXP_ENEMY_Island Shoveltusk|r。掠夺它们的|cRXX_Loot_Meat|r
.complete 11456,1 
.mob Island Shoveltusk
step
.goto HowlingFjord,25.02,56.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_长者阿图伊克|r
.turnin 11456 >>交任务: |cRXP_FRIENDLY_难民的食物|r
.accept 11457 >>接任务: |cRXP_LOOT_卡玛古的武装|r
.target Elder Atuik
step
.goto HowlingFjord,29.77,54.75,50,0
.goto HowlingFjord,26.1,53.4,50,0
.goto HowlingFjord,26.1,66.2,50,0
.goto HowlingFjord,26.1,68.2,50,0
.goto HowlingFjord,28.0,67.0,50,0
.goto HowlingFjord,29.4,54.8
>>杀死|cRXP_ENEMY_Frostwing Chimaeras|r。掠夺它们的|cRXX_Loot_Horns|r
.complete 11457,1 
.mob Frostwing Chimaera
step
.goto HowlingFjord,25.02,56.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_长者阿图伊克|r
.turnin 11457 >>交任务: |cRXP_FRIENDLY_卡玛古的武装|r
.accept 11458 >>接任务: |cRXP_LOOT_伊斯卡尔的复仇|r
.target Elder Atuik
step
.goto HowlingFjord,23.08,62.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷兹克斯·斯宾德斯纳普|r
.turnin 11508 >>交任务: |cRXP_FRIENDLY_格雷兹克斯·斯宾德斯纳普|r
.accept 11509 >>接任务: |cRXP_LOOT_“银月”哈瑞|r
.target Grezzix Spindlesnap
step
#completewith next
.goto HowlingFjord,23.10,62.57
.vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lou|r in the rowboat. He will take you to Scalawag Point
.skipgossip
.timer 90,Street "Cred" RP
.skill coldweatherflying,1,1
.target Lou the Cabin Boy
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry|r and |cRXP_FRIENDLY_Terry|r
.turnin 11509 >>交任务: |cRXP_FRIENDLY_“银月”哈瑞|r
.accept 11510 >>接任务: |cRXP_LOOT_斯库德|r
.goto HowlingFjord,35.09,80.94
.accept 11434 >>接任务: |cRXP_LOOT_被遗忘的宝藏|r
.goto HowlingFjord,35.60,80.22
.target "Silvermoon" Harry
.target Handsome Terry
.skill coldweatherflying,1,1
step
#completewith next
.goto HowlingFjord,35.09,80.94,150 >>前往Scalawag点
.skill coldweatherflying,<1,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry|r and |cRXP_FRIENDLY_Terry|r
.turnin 11509 >>交任务: |cRXP_FRIENDLY_“银月”哈瑞|r
.accept 11510 >>接任务: |cRXP_LOOT_斯库德|r
.goto HowlingFjord,35.09,80.94
.accept 11434 >>接任务: |cRXP_LOOT_被遗忘的宝藏|r
.goto HowlingFjord,35.60,80.22
.target "Silvermoon" Harry
.target Handsome Terry
.skill coldweatherflying,<1,1
step
#completewith next
.goto HowlingFjord,37.75,79.58,70 >>在船上驶向|cRXP_FRIENDLY_Scuttle|r
step
.goto HowlingFjord,37.75,79.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scuttle|r
.accept 11469 >>接任务: |cRXP_LOOT_制作肥皂的原料|r
.target Scuttle Frostprow
step
#completewith next
.use 34076 >>|cRXP_WARN_使用|r|T134339:0|t[鱼鳔]|cRXP_WARN_给自己|r|cRXP-WARN_3分钟的水呼吸|r << !Warlock !Druid
>>|cRXP_WARN_演员阵容|r|T136148:0|t[屏息]|cRXP_WARN_on yourself|r << Warlock
>>杀死|cRXP_ENEMY_“滑板车”|r。掠夺他获得|cRXX_Loot_Scrying Crystal|r
>>|cRXP_ENEMY_“滑板车”|r|cRXP_WARN_是一只在水中巡逻的兽人|r
.complete 11510,1 
.unitscan "Scoodles"
step
>>在水下的船只上掠夺|cRXP_Loot_Ingle Figury|r和|cRXX_Loot_Amani Vase|r
>>|cRXP_WARN_|cRXP_LOOT_Eagle雕像|r在二楼|r
.complete 11434,2 
.goto HowlingFjord,37.75,84.63,-1
.complete 11434,1 
.goto HowlingFjord,37.14,85.51,-1
step
#loop
.line HowlingFjord,35.80,84.66,35.66,86.12,37.53,86.30,38.93,86.15,39.57,85.79,39.46,84.50,38.33,83.70,37.41,83.83,36.07,84.75
.goto HowlingFjord,35.80,84.66,90,0
.goto HowlingFjord,35.66,86.12,90,0
.goto HowlingFjord,37.53,86.30,90,0
.goto HowlingFjord,38.93,86.15,90,0
.goto HowlingFjord,39.57,85.79,90,0
.goto HowlingFjord,39.46,84.50,90,0
.goto HowlingFjord,38.33,83.70,90,0
.goto HowlingFjord,37.41,83.83,90,0
.goto HowlingFjord,36.07,84.75,90,0
.use 34076 >>|cRXP_WARN_使用|r|T134339:0|t[鱼鳔]|cRXP_WARN_给自己|r|cRXP-WARN_3分钟的水呼吸|r << !Warlock !Druid
>>|cRXP_WARN_演员阵容|r|T136148:0|t[屏息]|cRXP_WARN_on yourself|r << Warlock
>>杀死|cRXP_ENEMY_“滑板车”|r。掠夺他获得|cRXX_Loot_Scrying Crystal|r
>>|cRXP_ENEMY_“滑板车”|r|cRXP_WARN_是一只在水中巡逻的兽人|r
.complete 11510,1 
.unitscan "Scoodles"
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Harry, Terry, |cRXP_FRIENDLY_塔鲁克|r
.turnin 11510 >>交任务: |cRXP_FRIENDLY_斯库德|r
.accept 11511 >>接任务: |cRXP_LOOT_风暴愤怒法杖|r
.accept 11512 >>接任务: |cRXP_LOOT_伊斯多弗的冰冷之心|r
.accept 11519 >>接任务: |cRXP_LOOT_失落的古神之盾|r
.accept 11567 >>接任务: |cRXP_LOOT_克瓦迪尔上古甲胄|r
.goto HowlingFjord,35.09,80.94
.turnin 11434 >>交任务: |cRXP_FRIENDLY_被遗忘的宝藏|r
.accept 11455 >>接任务: |cRXP_LOOT_金币的芳香|r
.goto HowlingFjord,35.60,80.22
.accept 11464 >>接任务: |cRXP_LOOT_赌债|r
.goto HowlingFjord,36.33,80.48
.target "Silvermoon" Harry
.target Handsome Terry
.target Taruk
step
#completewith next
.goto HowlingFjord,35.09,80.94
.gossipoption 93516 >>Talk to |cRXP_FRIENDLY_Harry|r to turn him hostile
.skipgossip
.isOnQuest 11464
.target "Silvermoon" Harry
step
.goto HowlingFjord,35.09,80.94
>>|cRXP_WARN_攻击|cRXP_ENEMY_Harry|r至20%生命值。不要杀了他|r
.gossipoption 93102 >>Talk to |cRXP_FRIENDLY_Harry|r once he submits
.complete 11464,1 
.skipgossip
.isOnQuest 11464
.target "Silvermoon" Harry
step
.goto HowlingFjord,36.33,80.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔鲁克|r
.turnin 11464 >>交任务: |cRXP_FRIENDLY_赌债|r
.accept 11466 >>接任务: |cRXP_LOOT_嗜酒的杰克|r
.target Taruk
step
#completewith next
.goto HowlingFjord,35.3,80.2,20,0
.goto HowlingFjord,35.6,79.6,15,0
.goto HowlingFjord,35.31,79.59,10 >>前往酒店内的|cRXP_FRIENDLY_Olga|r
.isOnQuest 11466
step
#completewith next
.goto HowlingFjord,35.31,79.59
.gossipoption 93104 >>对话: Olga, |cRXP_FRIENDLY_杰克|r
.skipgossip 24639,1,1
.timer 32,Jack Likes His Drink RP
.isOnQuest 11466
.target Olga, the Scalawag Wench
step
.goto HowlingFjord,35.48,79.38
>>|cRXP_WARN_等待RP|r
.gossipoption 93103 >>对话: |cRXP_FRIENDLY_杰克|r
.complete 11466,1 
.skipgossip
.isOnQuest 11466
.target Jack Adams
step
.goto HowlingFjord,36.33,80.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔鲁克|r
.turnin 11466 >>交任务: |cRXP_FRIENDLY_嗜酒的杰克|r
.accept 11467 >>接任务: |cRXP_LOOT_死人的债务|r
.target Taruk
step
#completewith next
.goto HowlingFjord,36.8,77.6,60 >>从Scalawag Point向北行驶
.skill coldweatherflying,1,1
step
.goto HowlingFjord,35.40,78.20,60,0
.goto HowlingFjord,34.04,79.30,60,0
.goto HowlingFjord,33.55,82.27,60,0
.goto HowlingFjord,32.69,78.83,60,0
.goto HowlingFjord,34.25,76.36,60,0
.goto HowlingFjord,32.38,75.01,60,0
.goto HowlingFjord,35.40,78.20,60,0
.goto HowlingFjord,34.04,79.30,60,0
.goto HowlingFjord,33.55,82.27,60,0
.goto HowlingFjord,32.69,78.83,60,0
.goto HowlingFjord,34.25,76.36,60,0
.goto HowlingFjord,32.38,75.01
>>杀死|cRXP_ENEMY_Rabid Brown Bear|r。掠夺它们的|cRXX_Loot_MASK|r
.complete 11455,1 
.mob Rabid Brown Bear
step
.goto HowlingFjord,31.35,79.16,40,0
.goto HowlingFjord,31.37,78.00
>>杀死水中的|cRXP_ENEMY_Big Roy|r。抢劫他的|cRXP_Loot_Blubber|r
.complete 11469,1 
.unitscan Big Roy
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Terry, |cRXP_FRIENDLY_塞吉|r
.turnin 11455 >>交任务: |cRXP_FRIENDLY_金币的芳香|r
.accept 11473 >>接任务: |cRXP_LOOT_叛徒|r
.goto HowlingFjord,35.60,80.22
.turnin 11473 >>交任务: |cRXP_FRIENDLY_叛徒|r
.accept 11459 >>接任务: |cRXP_LOOT_塞吉说……|r
.goto HowlingFjord,35.55,80.63
.target Handsome Terry
.target Zeh'gehn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terry|r
.turnin 11459 >>交任务: |cRXP_FRIENDLY_塞吉说……|r
.accept 11476 >>接任务: |cRXP_LOOT_呱呱叫的和刮东西的|r
.goto HowlingFjord,35.60,80.22
.target Handsome Terry
step
.goto HowlingFjord,35.59,81.71
>>在地上抢劫一只|cRXP_Loot_Scalawag Frog|r
.complete 11476,1 
.target Scalawag Frog
step
.goto HowlingFjord,35.09,80.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry|r
>>从他那里买一把闪亮的小刀
.complete 11476,2 

.target "Silvermoon" Harry
step
.goto HowlingFjord,35.55,80.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞吉|r
.turnin 11476 >>交任务: |cRXP_FRIENDLY_呱呱叫的和刮东西的|r
.timer 22,A Carver and a Croaker RP
.target Zeh'gehn
step
.goto HowlingFjord,35.55,80.63
>>|cRXP_WARN_Wait for the RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞吉|r
.accept 11479 >>接任务: |cRXP_LOOT_“火柴腿”丹|r
.target Zeh'gehn
step
#completewith next
.goto HowlingFjord,35.95,83.60,50 >>在船上驶向|cRXP_FRIENDLY_“Crowleag”Dan |r
.isOnQuest 11479
step
#completewith next
.goto HowlingFjord,35.95,83.60
.gossipoption 93398 >>对话: |cRXP_FRIENDLY_“火柴腿”丹|r
.timer 7,"Crowleg" Dan RP
.skipgossip
.isOnQuest 11479
.target "Crowleg" Dan
step
.goto HowlingFjord,35.95,83.60
>>|cRXP_WARN_等待RP|r
>>杀死|cRXP_ENEMY_“乌鸦腿”丹|r
.complete 11479,1 
.skipgossip
.mob "Crowleg" Dan
step
.goto HowlingFjord,35.60,80.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terry|r
.turnin 11479 >>交任务: |cRXP_FRIENDLY_“火柴腿”丹|r
.accept 11480 >>接任务: |cRXP_LOOT_见见二把手|r
.target Handsome Terry
step
.goto HowlingFjord,35.27,80.19,10,0
.goto HowlingFjord,35.57,79.58,10,0
.goto HowlingFjord,35.15,79.50,10,0
.goto HowlingFjord,35.49,79.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安妮·波恩|r
.turnin 11480 >>交任务: |cRXP_FRIENDLY_见见二把手|r
.accept 11471 >>接任务: |cRXP_LOOT_取而代之|r
.target Annie Bonn
step
.goto HowlingFjord,37.75,79.58
>>|cRXP_WARN_上木板到船上|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scuttle|r
.turnin 11469 >>交任务: |cRXP_FRIENDLY_制作肥皂的原料|r
.target Scuttle Frostprow
step
.goto HowlingFjord,37.86,74.77
>>|cRXP_WARN_在岛上等待飞船的到来。往返4分钟|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔雷斯船长|r
.turnin 11519 >>交任务: |cRXP_FRIENDLY_失落的古神之盾|r
.accept 11527 >>接任务: |cRXP_LOOT_慈悲修女号上的叛变|r
.skill coldweatherflying,1,1
.target Captain Ellis
step
.goto HowlingFjord,37.54,75.20,60,0
.goto HowlingFjord,34.99,74.24,60,0
.goto HowlingFjord,33.40,71.96,60,0
.goto HowlingFjord,34.89,68.13,60,0
.goto HowlingFjord,36.41,67.14,60,0
.goto HowlingFjord,37.85,68.04,60,0
.goto HowlingFjord,38.65,70.91,60,0
.goto HowlingFjord,39.20,73.29,60,0
.goto HowlingFjord,40.66,75.70,60,0
.goto HowlingFjord,41.49,76.64,60,0
.goto HowlingFjord,42.80,77.53,60,0
.goto HowlingFjord,45.76,79.84,60,0
.goto HowlingFjord,46.09,82.37,60,0
.goto HowlingFjord,43.90,83.87,60,0
.goto HowlingFjord,38.86,80.19,60,0
.goto HowlingFjord,37.98,77.29,60,0
.goto HowlingFjord,37.93,75.95,60,0
.goto HowlingFjord,37.54,75.20
.line HowlingFjord,37.54,75.20,37.93,75.95,37.98,77.29,38.86,80.19,43.90,83.87,46.09,82.37,45.76,79.84,42.80,77.53,41.49,76.64,40.66,75.70,39.20,73.29,38.65,70.91,37.85,68.04,36.41,67.14,34.89,68.13,33.40,71.96,34.99,74.24,37.54,75.20
>>|cRXP_WARN_飞上移动的飞船|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔雷斯船长|r
.turnin 11519 >>交任务: |cRXP_FRIENDLY_失落的古神之盾|r
.accept 11527 >>接任务: |cRXP_LOOT_慈悲修女号上的叛变|r
.skill coldweatherflying,<1,1
.target Captain Ellis
step
>>|cRXP_WARN_下到船的底层|r
>>杀死|cRXP_ENEMY_多肉海狗|r。掠夺它们的|cRXD_Loot_爆破粉|r
.complete 11527,1 
.mob Mutinous Sea Dog
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔雷斯船长|r
.turnin 11527 >>交任务: |cRXP_FRIENDLY_慈悲修女号上的叛变|r
.accept 11529 >>接任务: |cRXP_LOOT_索罗夫的宝藏|r
.target Captain Ellis
step
>>|cRXP_WARN_向|cRXP_FRIENDLY_位于船顶层甲板前端的大炮|r移动|r
>>|cRXP_WARN_等待船只靠近海岸线|cRXP_ENEMY_Sorlof|r|r
>>|cRXP_WARN_多次点击|cRXP_FRIENDLY_The Big Gun|r，对|r|cRXP_ENEMY_Sorlof造成重创|r
>>杀死|cRXP_ENEMY_Sorlof|r。在地面上掠夺|cRXP_Loot_Sorlof的战利品|r
.complete 11529,1 
.unitscan Sorlof
.target The Big Gun
step
.goto HowlingFjord,37.54,75.20,60,0
.goto HowlingFjord,34.99,74.24,60,0
.goto HowlingFjord,33.40,71.96,60,0
.goto HowlingFjord,34.89,68.13,60,0
.goto HowlingFjord,36.41,67.14,60,0
.goto HowlingFjord,37.85,68.04,60,0
.goto HowlingFjord,38.65,70.91,60,0
.goto HowlingFjord,39.20,73.29,60,0
.goto HowlingFjord,40.66,75.70,60,0
.goto HowlingFjord,41.49,76.64,60,0
.goto HowlingFjord,42.80,77.53,60,0
.goto HowlingFjord,45.76,79.84,60,0
.goto HowlingFjord,46.09,82.37,60,0
.goto HowlingFjord,43.90,83.87,60,0
.goto HowlingFjord,38.86,80.19,60,0
.goto HowlingFjord,37.98,77.29,60,0
.goto HowlingFjord,37.93,75.95,60,0
.goto HowlingFjord,37.54,75.20
.line HowlingFjord,37.54,75.20,37.93,75.95,37.98,77.29,38.86,80.19,43.90,83.87,46.09,82.37,45.76,79.84,42.80,77.53,41.49,76.64,40.66,75.70,39.20,73.29,38.65,70.91,37.85,68.04,36.41,67.14,34.89,68.13,33.40,71.96,34.99,74.24,37.54,75.20
>>|cRXP_WARN_飞上移动的飞船|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔雷斯船长|r
.turnin 11529 >>交任务: |cRXP_FRIENDLY_索罗夫的宝藏|r
.accept 11530 >>接任务: |cRXP_LOOT_古神之盾|r
.skill coldweatherflying,<1,1
.target Captain Ellis
step
#completewith next
.goto HowlingFjord,34.02,64.24,100 >>Travel to Iskaal
>>|cRXP_WARN_铸造|T135863:0|t[水上漫步]横渡大洋|r << Shaman
>>|cRXP_WARN_铸造|T237528:0|t【霜道】横渡大洋|r << DK
.skill coldweatherflying,1,1
step << skip 
#completewith next
.cast 47455 >>|cRXP_WARN_使用|r|T134229:0|t[卡马瓜之角]|cRXP_WARN_to召唤一个|cRXP-FRIENDLY_Tuskarr|r来增加你的伤害|r
.use 36777
.skill coldweatherflying,1,1
step
#loop
.line HowlingFjord,34.59,63.39,33.91,64.27,33.59,63.13,34.24,62.22
.goto HowlingFjord,34.59,63.39,55,0
.goto HowlingFjord,33.91,64.27,55,0
.goto HowlingFjord,33.59,63.13,55,0
.goto HowlingFjord,34.24,62.22,55,0
>>杀死|cRXP_ENEMY_疯狂的北海奴隶|r
.complete 11458,1 
.mob Crazed Northsea Slaver
.skill coldweatherflying,1,1
step
#completewith next
.goto HowlingFjord,34.94,63.68,20,0
.goto HowlingFjord,35.37,64.74,12,0
.goto HowlingFjord,35.46,63.78,9 >>跑到船上，到达最底层 << !Shaman !DK
.goto HowlingFjord,35.46,63.78,9 >>跑到船上，到达最底层 << Shaman/DK
>>|cRXP_WARN_避开|cRXP_ENEMY_Abdul|r。他在顶层甲板巡逻|r
.unitscan Abdul the Insane
.skill coldweatherflying,1,1
step
.goto HowlingFjord,35.27,64.84
>>底层的战利品|cRXP_Loot_风暴之怒之杖|r
.complete 11511,1 
.unitscan Abdul the Insane
.skill coldweatherflying,1,1
step
#completewith next
.goto HowlingFjord,35.37,64.74,12,0
.goto HowlingFjord,35.46,63.78,9 >>前往伊斯卡尔。飞上飞船。转到最底层
>>|cRXP_WARN_避开|cRXP_ENEMY_Abdul|r。他在船的顶层甲板巡逻|r
.skill coldweatherflying,<1,1
.unitscan Abdul the Insane
step
.goto HowlingFjord,35.27,64.84
>>底层的战利品|cRXP_Loot_风暴之怒之杖|r
.complete 11511,1 
.skill coldweatherflying,<1,1
.unitscan Abdul the Insane
step << skip 
#completewith next
.cast 47455 >>|cRXP_WARN_使用|r|T134229:0|t[卡马瓜之角]|cRXP_WARN_to召唤一个|cRXP-FRIENDLY_Tuskarr|r来增加你的伤害|r
.use 36777
.skill coldweatherflying,<1,1
step
#loop
.line HowlingFjord,34.59,63.39,33.91,64.27,33.59,63.13,34.24,62.22
.goto HowlingFjord,34.59,63.39,55,0
.goto HowlingFjord,33.91,64.27,55,0
.goto HowlingFjord,33.59,63.13,55,0
.goto HowlingFjord,34.24,62.22,55,0
>>杀死|cRXP_ENEMY_疯狂的北海奴隶|r
.complete 11458,1 
.mob Crazed Northsea Slaver
.skill coldweatherflying,<1,1
step
#completewith next
.goto HowlingFjord,29.26,60.70,30 >>穿过你上面的桥
.skill coldweatherflying,1,1
step
.goto HowlingFjord,32.70,60.21
>>|cRXP_WARN_单击地面上的|cRXP_PICK_Dirt Mound|r|cRXP_ENEMY_Black Conrad的幽灵|r和2|cRXP__ENEMY_Spectral Sailors|r将产生|r
>>杀死|cRXP_ENEMY_Black Conrad的鬼魂|r。掠夺他的|cRXX_Loot_宝藏|r
.complete 11467,1 
.mob Black Conrad's Ghost
step
#completewith next
.hs >>哈斯到卡玛古
step
.goto HowlingFjord,25.02,56.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_长者阿图伊克|r
.turnin 11458 >>交任务: |cRXP_FRIENDLY_伊斯卡尔的复仇|r
.target Elder Atuik
step << skip
.goto HowlingFjord,24.59,58.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿努尼克|r
.daily 11472 >>接任务: |cRXP_LOOT_心心相印……|r
.accept 12118 >>接任务: |cRXP_LOOT_前往莫亚基港口|r
.target Anuniaq
step << skip
.goto HowlingFjord,29.6,73.8
.use 40946 >>使用|cRXP_WRN_Ref Fish|r学校上的|T134325:0|t[Anuniq's Net]，或杀死|cRXP_ENEMY_Great Reef Shark|r，收集8条|cRXT_PICK_Reef Fish|r
.collect 34127,8 
.mob Great Reef Shark
step << skip
.goto HowlingFjord,31.2,74.8,30,0
.goto HowlingFjord,30.96,71.85
.use 34127 >>在|cRXP_ENEMY_Reef Bull|r的最大范围内投掷|T133895:0|t[美味的礁鱼]，它现在会到达你所站的位置
>>|cRXP_WARN_把它带到海岸线另一边的一头礁牛上面|r
>>|cRXP_WARN_如果您用完|r|T133895:0|t[Tasty Reef Fish]|cRXP_WARN_get7-8，请再试一次|r
.complete 11472,1 
.target Reef Bull
.target Reef Cow
step << skip
#completewith Armor
.destroy 34127 >>摧毁: |cRXP_ENEMY_美味的暗礁鱼|r, 它在你的背包中. 不再需要它了
step
#completewith next
.goto HowlingFjord,33.61,75.92,20,0
.goto HowlingFjord,33.80,78.01,30,0
.goto HowlingFjord,33.57,78.18,12 >>进入加文礁洞穴
step
.goto HowlingFjord,33.44,78.19
>>杀死|cRXP_ENEMY_“疯狂”乔纳·斯特林|r
>>|cRXP_WARN_不要对|cRXP_ENEMY_“疯狂”Jonah Sterling |r使用任何主要冷却。之后|r|cRXX_ENEMY_Hozzer需要它们|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_“疯子”乔纳·斯特林后从窗户掉下来|r
>>杀死|cRXP_ENEMY_Hozzer|r。掠夺他获得|cRXD_Loot_Spyglass|r。|cRXT_WARN_在此处使用所有冷却|r
>>|cRXP_WARN_这个任务非常困难。如果需要，找一个小组。如果你找不到团体或单人，请跳过此步骤|r
.complete 11471,1 
.mob "Mad" Jonah Sterling
.mob Hozzer
step
.goto HowlingFjord,32.34,78.67
>>|cRXP_WARN_跑到加文礁洞的尽头|r
>>在地上偷走|cRXP_Loot_伊索尔多夫的冰冻之心|r
.complete 11512,1 
step
#completewith next
.goto HowlingFjord,33.6,75.6,30 >>|cRXP_WARN_在洞穴一侧跳墙走捷径|r。|cRXP_WARN_这是高度可选的，但可以节省约20秒|r
.link https://www.youtube.com/watch?v=QbvHRC0nIds >>|cRXP_WARN_单击此处|r
step
#completewith next
.goto HowlingFjord,33.6,75.8,20,0
.goto HowlingFjord,36.33,80.48,100 >>前往Scalawag点
step
.goto HowlingFjord,36.33,80.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔鲁克|r
.turnin 11467 >>交任务: |cRXP_FRIENDLY_死人的债务|r
.target Taruk
step
.goto HowlingFjord,35.27,80.19,10,0
.goto HowlingFjord,35.57,79.58,10,0
.goto HowlingFjord,35.15,79.50,10,0
.goto HowlingFjord,35.49,79.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安妮·波恩|r
.turnin 11471 >>交任务: |cRXP_FRIENDLY_取而代之|r
.isQuestComplete 11471
.target Annie Bonn
step
#completewith next
.goto HowlingFjord,36.09,81.60
.vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰雅|r
.timer 90,The Ancient Armor of the Kvaldir RP
.skipgossip
.target Alanya

step
#label Armor
.goto HowlingFjord,82.33,74.81,12,0
.goto HowlingFjord,81.77,73.91
>>|cRXP_WARN_上船旅行。转到最底层|r
>>在底层掠夺|cRXP_Loot_克瓦尔迪尔|r的古代盔甲
.complete 11567,1 
step
#completewith next
#label Alanya2
.goto HowlingFjord,80.87,75.11
.vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈瑞的轰炸机|r
.timer 65,The Ancient Armor of the Kvaldir RP
.skipgossip
.target Harry's Bomber

step
.goto HowlingFjord,37.86,74.77
>>|cRXP_WARN_在岛上等待飞船的到来。往返4分钟|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔雷斯船长|r
.turnin 11529 >>交任务: |cRXP_FRIENDLY_索罗夫的宝藏|r
.accept 11530 >>接任务: |cRXP_LOOT_古神之盾|r
.skill coldweatherflying,1,1
.target Captain Ellis
step
#completewith next
.goto HowlingFjord,42.07,67.72,15 >>前往西风电梯。把它带到顶部
.skill coldweatherflying,1,1
step
.goto HowlingFjord,40.29,60.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus|r
.turnin 11511 >>交任务: |cRXP_FRIENDLY_风暴愤怒法杖|r
.turnin 11567 >>交任务: |cRXP_FRIENDLY_克瓦迪尔上古甲胄|r
.turnin 11530 >>交任务: |cRXP_FRIENDLY_古神之盾|r
.turnin 11512 >>交任务: |cRXP_FRIENDLY_伊斯多弗的冰冷之心|r
.accept 11568 >>接任务: |cRXP_LOOT_安息|r
.target Orfus of Kamagua
step
#completewith next
.goto HowlingFjord,57.68,77.54,200 >>前往盾山
step
#completewith next
.use 34624 >>|cRXP_WARN_使用|r|T133667:0|t[Bundle of Vrykul Artifacts]|cRXP_WARN_while next |r|cRXP-ENEMY_Fengir the Disgrated|r
.complete 11568,1 
.goto HowlingFjord,57.68,77.54
step
#completewith next
.use 34624 >>|cRXP_WARN_使用|r|T133667:0|t[Bundle of Vrykul Artifacts]|cRXP_WARN_while旁边的|r|cRXP-ENEMY_Rodin the Reckless|r
.complete 11568,2 
.goto HowlingFjord,59.23,76.97
step
#completewith next
.use 34624 >>|cRXP_WARN_使用|r|T133667:0|t[Bundle of Vrykul Artifacts]|cRXP_WARN_while旁边的|r|cRXP_ENEMY_Isuldorf Iceheart|r
.complete 11568,3 
.goto HowlingFjord,59.80,79.40
step
.use 34624 >>|cRXP_WARN_在Kvaldir的|r|cRXP_ENEMY_Windan旁边使用|r|T133667:0|t[Vrykul工件束]|cRXP-WARN_while|r
.complete 11568,4 
.goto HowlingFjord,61.98,80.05
step
.goto HowlingFjord,40.29,60.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus|r
.turnin 11568 >>交任务: |cRXP_FRIENDLY_安息|r
.accept 11572 >>接任务: |cRXP_LOOT_返回阿图伊克身边|r
.target Orfus of Kamagua
step
#completewith next
+|cRXP_WARN_如果你刚刚错过了电梯，|r|T135992:0|t[慢速下降]|cRXP_WARN_，然后爬起来，朝下面的地面跳去|r << Mage
+|cRXP_WARN_如果你只是错过了电梯，就跳进水里游到卡马瓜|r << !Mage
>>|cRXP_WARN_否则，等待电梯。把它带到岛上|r
.skill coldweatherflying,1,1
step
#completewith next
.goto HowlingFjord,25.02,56.96,250 >>前往卡马瓜
step << skip
.goto HowlingFjord,24.59,58.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿努尼克|r
.turnin 11472 >>交任务: |cRXP_FRIENDLY_心心相印……|r
.isQuestComplete 11472
.target Anuniaq
step
.goto HowlingFjord,25.02,56.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_长者阿图伊克|r
.turnin 11572 >>交任务: |cRXP_FRIENDLY_返回阿图伊克身边|r
.target Elder Atuik
step
#completewith next
.goto HowlingFjord,24.66,57.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基普·特斯基普|r
.fly Westguard Keep >>飞到Westguard Keep
.target Kip Trawlskip
step
.goto HowlingFjord,30.9,42.0,15,0
.goto HowlingFjord,30.77,41.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝比·鲁诺兹|r
.turnin 11328 >>交任务: |cRXP_FRIENDLY_任务：被遗忘者的情报|r
.accept 11330 >>接任务: |cRXP_LOOT_绝对……没问题！|r
.target Peppy Wrongnozzle
step
#completewith next
.goto HowlingFjord,29.36,44.05,15,0
.goto HowlingFjord,29.46,43.39,10 >>进入Westguard Keep。打开大门，下到监狱
step
.goto HowlingFjord,29.46,43.39
.use 33627 >>|cRXP_WARN_在|r|cRXP_ENEMY_Dragonflyer Vrykul Prisoner上使用|r|T134799:0|t[Peppy’s Special Mix]|cRXP-WARN_on|r
.complete 11330,1 
.mob Dragonflayer Vrykul Prisoner
step
#completewith Rotgill
.goto HowlingFjord,30.9,42.0,15,0
.goto HowlingFjord,30.86,41.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celeste|r
.home >>将您的炉石设置为Westguard Keep
.target Innkeeper Celeste Goodhutch
step
.goto HowlingFjord,30.77,41.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝比·鲁诺兹|r
.turnin 11330 >>交任务: |cRXP_FRIENDLY_绝对……没问题！|r
.accept 11331 >>接任务: |cRXP_LOOT_你去告诉他……嗝儿！|r
.target Peppy Wrongnozzle
step
>>|cRXP_WARN_去Westguard Keep的主房间|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Adams, |cRXP_FRIENDLY_法师中尉玛利斯特|r
.goto HowlingFjord,28.84,44.13
.turnin 11331 >>交任务: |cRXP_FRIENDLY_你去告诉他……嗝儿！|r
.accept 11332 >>接任务: |cRXP_LOOT_任务：瘟疫罐！|r
.target Captain Adams
.target Mage-Lieutenant Malister
step
#completewith next
.goto HowlingFjord,31.26,43.97
.gossipoption 93430 >>前往: |cRXP_PICK_暴风城|r. He will send you on the bombing run
.skipgossip
.target Greer Orehammer
.isOnQuest 11332

step
.goto HowlingFjord,51.2,68.5,-1
.goto HowlingFjord,52.4,68.2,-1
.goto HowlingFjord,53.1,66.7,-1
.goto HowlingFjord,53.9,68.1,-1
.goto HowlingFjord,52.8,65.6,-1
.use 33634 >>|cRXP_WARN_使用|r|T133717:0|t[Orehammer的精确炸弹]|cRXP_WARN_on the |cRX_PICK_Green Plague Tank|r in New Agamand|r
.complete 11332,1 
step
.goto HowlingFjord,28.84,44.13
>>|cRXP_WARN_去Westguard Keep的主房间|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adams|r
.turnin 11332 >>交任务: |cRXP_FRIENDLY_任务：瘟疫罐！|r
.accept 11248 >>接任务: |cRXP_LOOT_行动代号：斯克恩之怒|r
.target Captain Adams
step
#sticky
.destroy 33634 >>摧毁: |cRXP_ENEMY_岩锤的精确炸弹|r, 它在你的背包中. 不再需要它了
step
.goto HowlingFjord,30.63,42.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军需官布雷文|r
.accept 11406 >>接任务: |cRXP_LOOT_一切必须准备就绪|r
.target Quartermaster Brevin
step
#completewith next
.groundgoto HowlingFjord,32.13,38.62,50,0
.goto HowlingFjord,30.05,28.58,150 >>Travel to Steel Gate
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Moonleaf, |cRXP_FRIENDLY_工程师菲纳特|r, Irena
.accept 11322 >>接任务: |cRXP_LOOT_净化|r
.goto HowlingFjord,30.05,28.58
.accept 11154 >>接任务: |cRXP_LOOT_吓出它们的……|r
.goto HowlingFjord,30.15,28.69
.accept 11393 >>接任务: |cRXP_LOOT_探险者亚伦在哪里？|r
.accept 11176 >>接任务: |cRXP_LOOT_工程的进展|r
.goto HowlingFjord,30.28,28.64
.target Watcher Moonleaf
.target Engineer Feknut
.target Overseer Irena Stonemantle
step
.goto HowlingFjord,30.81,28.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Chief|r
.turnin 11176 >>交任务: |cRXP_FRIENDLY_工程的进展|r
.accept 11390 >>接任务: |cRXP_LOOT_我有飞行器！|r
.target Steel Gate Chief Archaeologist
step
#completewith next
.goto HowlingFjord,30.88,28.18
.vehicle >>|cRXP_WARN_进入|r|cRXP_FRIENDLY_Steel Gate Flying Machine|r
.target Steel Gate Flying Machine
step

.waypoint HowlingFjord,30.9,25.7,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE

.goto HowlingFjord,30.75,27.76 
>>|cRXP_WARN_铸造|r|T135623:0|t[抓钩]（1）|cRXP_WARN_on|cRX_PICK_文物袋|r在地下|r
>>|cRXP_WARN_将|cRXP_PICK_文物袋|r降落到上方起重机支撑的平台上。平台上有一个红色箭头，标记下车位置
>>|cRXP_WARN_重复此过程3次|r
.complete 11390,1 
step
>>|cRXP_WARN_退出|r|cRXP_FRIENDLY_钢门飞行机|r
.goto HowlingFjord,30.81,28.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Chief|r
.turnin 11390 >>交任务: |cRXP_FRIENDLY_我有飞行器！|r
.daily 11391 >>接任务: |cRXP_LOOT_钢铁之门的巡逻兵|r
.target Steel Gate Chief Archaeologist
step
#completewith next
.goto HowlingFjord,30.88,28.18
.vehicle >>|cRXP_WARN_进入|r|cRXP_FRIENDLY_Steel Gate Flying Machine|r
.target Steel Gate Flying Machine
step
.goto HowlingFjord,31.20,26.53
>>|cRXP_WARN_等待Gargoyle攻击开始|r
>>杀死|cRXP_ENEMY_Gjalerbron Gargoyles|r
>>|cRXP_WARN_施法|r|T134273:0|t[火箭]（2）|cRXP_WARN_to瞬杀|r|cRXP-ENEMY_Gjalerbron Gargoyles|r
>>|cRXP_WARN_铸造|r|T132383:0|t[机关枪]（1）|cRXP_WARN_on |cRXD_ENEMY_Gjalerbron Gargoyles|r当|r|T134273:0|t[Rockets]|cRXT_WARN_are on cooling|r
>>|cRXP_WARN_铸造|r|T135788:0|t[助推器]（4）|cRXP_WARN_飞得更快|r
.complete 11391,1 
.isOnQuest 11391
.mob Gjalerbron Gargoyle
step
.goto HowlingFjord,30.81,28.56
>>|cRXP_WARN_退出|r|cRXP_FRIENDLY_钢门飞行机|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Chief|r
.turnin 11391 >>交任务: |cRXP_FRIENDLY_钢铁之门的巡逻兵|r
.isQuestComplete 11391
.target Steel Gate Chief Archaeologist
step
#completewith next
.groundgoto HowlingFjord,33.8,33.8,50,0
.groundgoto HowlingFjord,33.7,36.4,60,0
.goto HowlingFjord,31.0,36.5,60 >>Travel to Whisper Gulch
step
#completewith next
.goto HowlingFjord,33.5,38.9,0
>>|cRXP_WARN_当你在15码以内自动/向哨声峡谷的|cRXP_FRIENDLY_Abanded Pack Muls|r开火时|r
.complete 11224,1 
.emote raise,23977
.target Abandoned Pack Mule
step
.goto HowlingFjord,31.0,36.5,60,0
.goto HowlingFjord,32.00,33.39,60,0
.goto HowlingFjord,31.0,36.5,60,0
.goto HowlingFjord,33.63,36.61,60,0
.goto HowlingFjord,36.02,36.65,60,0
.goto HowlingFjord,31.0,36.5,60,0
.goto HowlingFjord,32.00,33.39,60,0
.goto HowlingFjord,31.0,36.5
.use 33190 >>|cRXP_WARN_使用|r|T133711:0|t[Stelling's Foolproof Dynamite]|cRXP_WARN_on the |cRX_PICK_Ore Veines|r scattering through|r|cRXP_WARN_Hisper Gulch|r
>>掠夺之后在地面上产生的|cRXP_Loot_Hisper峡谷宝石|r和|cRXD_Loot_Hesper峡谷矿石碎片|r
.complete 11218,1 
.complete 11218,2 
step
.goto HowlingFjord,31.0,36.5,60,0
.goto HowlingFjord,32.00,33.39,60,0
.goto HowlingFjord,31.0,36.5,60,0
.goto HowlingFjord,33.63,36.61,60,0
.goto HowlingFjord,36.02,36.65,60,0
.goto HowlingFjord,31.0,36.5,60,0
.goto HowlingFjord,32.00,33.39,60,0
.goto HowlingFjord,31.0,36.5
>>|cRXP_WARN_当你在15码以内自动/向哨声峡谷的|cRXP_FRIENDLY_Abanded Pack Muls|r开火时|r
.complete 11224,1 
.emote raise,23977
.target Abandoned Pack Mule
step
#completewith next
.goto HowlingFjord,24.24,32.46,150 >>前往奇尔米尔海岸
.skill coldweatherflying,<1,1
step
.goto HowlingFjord,24.25,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_探险者亚伦|r
.turnin 11393 >>交任务: |cRXP_FRIENDLY_探险者亚伦在哪里？|r
.accept 11394 >>接任务: |cRXP_LOOT_比鱼人更恶臭……|r
.target Explorer Jaren
.skill coldweatherflying,<1,1
step
#completewith next
.goto HowlingFjord,24.24,32.46,150 >>小心地从悬崖上掉下来。前往奇尔米尔海岸
.skill coldweatherflying,1,1
step
.goto HowlingFjord,24.25,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_探险者亚伦|r
.turnin 11393 >>交任务: |cRXP_FRIENDLY_探险者亚伦在哪里？|r
.accept 11394 >>接任务: |cRXP_LOOT_比鱼人更恶臭……|r
.target Explorer Jaren
.skill coldweatherflying,1,1
step
#completewith next
.goto HowlingFjord,21.85,24.21,0
>>杀死|cRXP_ENEMY_Nectechs|r，|cRXT_ENEMY_Servitor Shades|r、|cRXD_ENEMY_Unstable Mur'ghoul|r、| cRXP__ENEMY_Mur'ghul Fleshaers|r和|cRXP_ENEMY_Mur'ghoul Corruptors|r
.complete 11394,1 
.mob Unstable Mur'ghoul
.mob Mur'ghoul Flesheater
.mob Servitor Shade
.mob Necrotech
.mob Rotgill
.mob Mur'ghoul Corrupter
step
.goto HowlingFjord,22.71,31.13,45,0
.goto HowlingFjord,22.08,31.85,45,0
.goto HowlingFjord,21.85,28.22,45,0
.goto HowlingFjord,20.64,28.60,45,0
.goto HowlingFjord,22.08,31.85,45,0
.goto HowlingFjord,22.71,31.13,45,0
.goto HowlingFjord,21.85,28.22
.use 33961 >>杀死|cRXP_ENEMY_Nectechs|r，|cRXD_ENEMY_Servitor Shades|r、|cRXT_ENEMY_Unstable Mur'ghouls|r、| cRXP__ENEMY_Mur'ghul Fleshaers|r和|cRXP_ENEMY_Mur'sghoul Corrupters |r。为|T135483:0|t[|cRXP_Loot_Surge Device |r]掠夺它们
>>|cRXP_WARN_使用|T135483:0|t[|cRXP_LOOT_Surge设备|r]开始任务|r
.collect 33961,1,11395 
.accept 11395 >>接任务: |cRXP_LOOT_天灾装置|r
.mob Servitor Shade
.mob Necrotech
.mob Unstable Mur'ghoul
.mob Mur'ghoul Flesheater
.mob Mur'ghoul Corrupter
step
#completewith MoreScourge
.goto HowlingFjord,24.25,32.46,55 >>前往|cRXP_FRIENDLY_Jaren|r
step
.goto HowlingFjord,24.25,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_探险者亚伦|r
.turnin 11395 >>交任务: |cRXP_FRIENDLY_天灾装置|r
.turnin 11394 >>交任务: |cRXP_FRIENDLY_比鱼人更恶臭……|r
.accept 11396 >>接任务: |cRXP_LOOT_关闭护盾|r
.isQuestComplete 11394
.target Explorer Jaren
step
#label MoreScourge
.goto HowlingFjord,24.25,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_探险者亚伦|r
.turnin 11395 >>交任务: |cRXP_FRIENDLY_天灾装置|r
.accept 11396 >>接任务: |cRXP_LOOT_关闭护盾|r
.target Explorer Jaren
step
#completewith Rotgill
.goto HowlingFjord,21.8,24.2
>>杀死|cRXP_ENEMY_Nectechs|r，|cRXT_ENEMY_Servitor Shades|r、|cRXD_ENEMY_Unstable Mur'ghoul|r、| cRXP__ENEMY_Mur'ghul Fleshaers|r和|cRXP_ENEMY_Mur'ghoul Corruptors|r
.complete 11394,1 
.mob Unstable Mur'ghoul
.mob Mur'ghoul Flesheater
.mob Servitor Shade
.mob Necrotech
.mob Mur'ghoul Corrupter
step
.goto HowlingFjord,22.69,31.15,20,0
.goto HowlingFjord,21.92,28.75,20,0
.goto HowlingFjord,21.51,24.61,20,0
.goto HowlingFjord,21.75,22.46
.use 33960 >>|cRXP_WARN_通道|r|T135483:0|t[冲刷晶体控制器]|cRXP_WARN_on|r|cRXP-ENEMY_Scourging Crystals|r
>>激活|r后杀死|cRXP_ENEMY_Scourging Crystals|r
>>|cRXP_WARN_确保你是杀死它的人，而不是你的宠物，因为如果你的宠物杀死了它，你就不会得到信用|r << Warlock/DK/Hunter
.complete 11396,1 
.mob Scourging Crystal
step
.goto HowlingFjord,19.78,22.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_老冰鳞|r
.accept 11422 >>接任务: |cRXP_LOOT_腐鳃的三叉戟|r
.target Old Icefin
step
#label Rotgill
.goto HowlingFjord,24.9,36.2,70,0
.goto HowlingFjord,22.4,32.9,70,0
.goto HowlingFjord,24.9,36.2
>>杀死|cRXP_ENEMY_Rotgill|r。掠夺他的|cRXX_Loot_Trident|r
.complete 11422,1 
.unitscan Rotgill
step
.goto HowlingFjord,22.9,30.7
>>杀死|cRXP_ENEMY_Nectechs|r，|cRXT_ENEMY_Servitor Shades|r、|cRXD_ENEMY_Unstable Mur'ghoul|r、| cRXP__ENEMY_Mur'ghul Fleshaers|r和|cRXP_ENEMY_Mur'ghoul Corruptors|r
.complete 11394,1 
.mob Unstable Mur'ghoul
.mob Mur'ghoul Flesheater
.mob Servitor Shade
.mob Necrotech
.mob Rotgill
.mob Mur'ghoul Corrupter
step
.goto HowlingFjord,24.25,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_探险者亚伦|r
.turnin 11396 >>交任务: |cRXP_FRIENDLY_关闭护盾|r
.turnin 11394 >>交任务: |cRXP_FRIENDLY_比鱼人更恶臭……|r
.target Explorer Jaren
step
.goto HowlingFjord,19.78,22.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_老冰鳞|r
.turnin 11422 >>交任务: |cRXP_FRIENDLY_腐鳃的三叉戟|r
.target Old Icefin
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <70,1
step << Druid
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 26990 >>训练你的职业技能
.xp <70,1
.target Loganaar
step << DK
#completewith next
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <70,1
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 45463 >>训练你的职业技能
.xp <70,1
.target Amal'thazad
step << Mage
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <70,1
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 27126 >>训练你的职业技能
.xp <70,1
.target Elsharin
.target Jennea Cannon
step
#completewith next
.goto HowlingFjord,31.6,41.5
.hs >>西城卫队要塞的火炉
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工兵斯迪尔林|r, Abigail
.turnin 11218 >>交任务: |cRXP_FRIENDLY_危险！爆炸品！|r
.accept 11240 >>接任务: |cRXP_LOOT_疯人的头领|r
.goto HowlingFjord,29.11,41.78
.turnin 11224 >>交任务: |cRXP_FRIENDLY_骡子和货物|r
.goto HowlingFjord,31.62,41.50
.target Explorer Abigail
.target Sapper Steelring
step
#completewith next
.goto HowlingFjord,60.27,18.69,100 >>前往维尔德瓦尔堡
step
.goto HowlingFjord,60.27,18.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christopher|r
.accept 11329 >>接任务: |cRXP_LOOT_想尽办法！|r

.target Christopher Sloan
step
#loop
.line HowlingFjord,60.72,19.11,62.64,19.75,64.57,21.43,66.27,21.66,67.69,20.05,65.84,18.98,63.99,18.14
.goto HowlingFjord,60.72,19.11,60,0
.goto HowlingFjord,62.64,19.75,60,0
.goto HowlingFjord,64.57,21.43,60,0
.goto HowlingFjord,66.27,21.66,60,0
.goto HowlingFjord,67.69,20.05,60,0
.goto HowlingFjord,65.84,18.98,60,0
.goto HowlingFjord,63.99,18.14,60,0
>>|cRXP_WARN_打开卡尔德米尔湖的|cRXP_PICK_Water Plants|r。|cRXP_ENEMY_Northern Barbfish|r有30%的几率产卵|r
>>杀死|cRXP_ENEMY_Northern Barbfish|r。掠夺|cRXD_Loot_Nortern Barbfish |r
.complete 11329,1 
.mob Northern Barbfish

step
.goto HowlingFjord,60.27,18.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christopher|r
.turnin 11329 >>交任务: |cRXP_FRIENDLY_想尽办法！|r
.accept 11410 >>接任务: |cRXP_LOOT_逃走的大鱼|r
.target Christopher Sloan
step << Shaman
.goto HowlingFjord,60.05,16.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹姆斯|r
.fp Fort Wildervar >>获取Fort Wildervar飞行路线
.target James Ormsby
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头科尔贝|r, Maeve, |cRXP_FRIENDLY_勘测员贝瓦尔|r, |cRXP_FRIENDLY_研究员艾德兰|r, |cRXP_FRIENDLY_吉尔|r, |cRXP_FRIENDLY_猎户杰森|r
.accept 11284 >>接任务: |cRXP_LOOT_隔壁的雪人|r
.goto HowlingFjord,60.18,15.61
.accept 11302 >>接任务: |cRXP_LOOT_神秘的冰雪树妖|r
.goto HowlingFjord,61.83,17.20
.accept 11346 >>接任务: |cRXP_LOOT_符文之书|r
.goto HowlingFjord,62.28,17.22
.accept 11355 >>接任务: |cRXP_LOOT_巨人的迁徙|r
.goto HowlingFjord,62.58,16.52
.turnin 11406 >>交任务: |cRXP_FRIENDLY_一切必须准备就绪|r
.accept 11269 >>接任务: |cRXP_LOOT_羽绒披风|r
.goto HowlingFjord,62.60,16.82
.accept 11292 >>接任务: |cRXP_LOOT_陷阱中的猎物|r
.goto HowlingFjord,62.66,16.80
.target Foreman Colbey
.target Lieutenant Maeve
.target Prospector Belvar
.target Researcher Aderan
.target Gil Grisert
.target Trapper Jethan
step
#completewith next
.goto HowlingFjord,63.96,19.57,75 >>前往卡尔德米尔湖中心
step
.goto HowlingFjord,63.96,19.57
>>|cRXP_WARN_使用|r|T134030:0|t[新鲜Barbfish鱼饵]|cRXP_WARN_在卡尔德米尔湖中心的水下沉船上召唤|r|cRXP-ENEMY_Frostfin|r
>>杀死|cRXP_ENEMY_Frostfin|r
.use 34013
.complete 11410,1 
.mob Frostfin
step
#completewith Witherleaf
.goto HowlingFjord,56.0,27.4,0
>>将|cRXP_Loot_Spotted Hippogryph打倒在地
>>|cRXP_WARN_它们看起来像Hippogryph羽毛|r
.complete 11269,1 
step
.goto HowlingFjord,67.61,23.75,50,0
.goto HowlingFjord,69.87,21.91,50,0
.goto HowlingFjord,70.31,24.20,50,0
.goto HowlingFjord,70.84,22.81,50,0
.goto HowlingFjord,72.00,23.04
>>杀死|cRXP_ENEMY_Iron符文绑定器|r和|cRXX_ENEMY_Iron符文石头调用器|r。掠夺它们的|T134937:0|t[|cRXP_Loot_符文之书-第1章|r]，|T134938:0|t[|cRXD_Loot_符文之书–第2章|r]and |T134943:0|t[]
.collect 33778,1,11346,1 
.collect 33779,1,11346,1 
.collect 33780,1,11346,1 
.mob Iron Rune Binder
.mob Iron Rune Stonecaller
step
.goto HowlingFjord,61.49,22.86
>>|cRXP_WARN_使用|r|T134937:0|t[|cRXP_OOT_符文之书-第1章|r]|cRXP_WARN_，|r|T134938:0|t[|cRXD_OOT_符文之书–第2章|r]|cRXP_WARN_or|r|T134943:0|t[| cRXP_LOOT_符文之册-第3章|r][cRXP_WARN_|r
.complete 11346,1 
.use 33778 
.use 33779 
.use 33780 
step
#completewith Witherleaf
.goto HowlingFjord,56.0,27.4,0
>>打开|cRXP_PICK_Sprung陷阱|r。为|cRXP _Loot_Trapped Prey|r掠夺它们
>>杀死|cRXP_ENEMY_Prowling Worgs|r，打开|cRX_PICK_Sprung陷阱|r时可能会产卵。掠夺它们以获取它们的|cRXP_Loot_Trapped Prey|r
.complete 11292,1 
.unitscan Trapped Animal
.mob Prowling Worg
step
.goto HowlingFjord,61.49,22.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁莉尔蕾|r
.turnin 11302 >>交任务: |cRXP_FRIENDLY_神秘的冰雪树妖|r
.accept 11313 >>接任务: |cRXP_LOOT_冰之精魂|r
.target Lurielle
step
.goto HowlingFjord,59.7,23.3,70,0
.goto HowlingFjord,60.2,20.7,70,0
.goto HowlingFjord,63.4,23.7,70,0
.goto HowlingFjord,62.9,25.9,70,0
.goto HowlingFjord,59.7,23.3,70,0
.goto HowlingFjord,60.2,20.7,70,0
.goto HowlingFjord,63.4,23.7
>>杀死|cRXP_ENEMY_Ice元素|r。掠夺它们的|cRXX_Loot_Icy核心|r
.complete 11313,1 
.mob Ice Elemental
step
.goto HowlingFjord,61.49,22.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁莉尔蕾|r
.turnin 11313 >>交任务: |cRXP_FRIENDLY_冰之精魂|r
.accept 11315 >>接任务: |cRXP_LOOT_野蛮之藤|r
.accept 11314 >>接任务: |cRXP_LOOT_堕落的姐妹|r
.target Lurielle
step
.goto HowlingFjord,53.2,28.1,60,0
.goto HowlingFjord,51.2,29.1,60,0
.goto HowlingFjord,50.3,26.5,60,0
.goto HowlingFjord,52.0,26.0,60,0
.goto HowlingFjord,53.2,28.1,60,0
.goto HowlingFjord,51.2,29.1,60,0
.goto HowlingFjord,50.3,26.5,60,0
.goto HowlingFjord,52.0,26.0
>>|cRXP_WARN_攻击|cRXP_ENEMY_冷却睡莲|r到60%或更低的生命值，使其变弱|r
>>|cRXP_WARN_使用|r|T133299:0|t[Lurielle's Pendant]|cRXP_WARN_on|cRXP_ENEMY_Chill Nymph|r释放它们|r
>>杀死|cRXP_ENEMY_Scarlet Ivys|r
.use 33606
.complete 11314,1 
.complete 11315,1 
.mob Chill Nymph
.mob Scarlet Ivy
step
#completewith next
.goto HowlingFjord,61.49,22.86,100 >>前往|cRXP_FRIENDLY_Lurielle|r
step
.goto HowlingFjord,61.49,22.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁莉尔蕾|r
.turnin 11315 >>交任务: |cRXP_FRIENDLY_野蛮之藤|r
.turnin 11314 >>交任务: |cRXP_FRIENDLY_堕落的姐妹|r
.accept 11316 >>接任务: |cRXP_LOOT_扭曲之林|r
.accept 11319 >>接任务: |cRXP_LOOT_暗魂守护者的种子|r
.target Lurielle
step
#completewith next
.goto HowlingFjord,60.27,18.69,100 >>前往维尔德瓦尔堡
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Christopher, |cRXP_FRIENDLY_勘测员贝瓦尔|r
.turnin 11410 >>交任务: |cRXP_FRIENDLY_逃走的大鱼|r
.goto HowlingFjord,60.27,18.69
.turnin 11346 >>交任务: |cRXP_FRIENDLY_符文之书|r
.accept 11349 >>接任务: |cRXP_LOOT_掌控符文|r
.goto HowlingFjord,62.28,17.22
.target Christopher Sloan
.target Prospector Belvar
step
.goto HowlingFjord,52.2,16.5,60,0
.goto HowlingFjord,52.5,19.7,60,0
.goto HowlingFjord,54.5,18.2,60,0
.goto HowlingFjord,52.2,16.5,60,0
.goto HowlingFjord,52.5,19.7,60,0
.goto HowlingFjord,54.5,18.2
>>杀死|cRXP_ENEMY_Thornvine爬行器|r和|cRXX_ENEMY_Spores|r
>>|cRXP_WARN_使用|r|T133268:0|t[Enchanted Ice Core]|cRXP_WARN_on|cRXP-ENEMY_Spore|r尸体|r
>>|cRXP_WARN_关注|cRXP_ENEMY_Spores |r作为|r|T133268:0|t[魔法冰芯]|cRXP-WARN_has 15秒冷却时间|r
.use 33607
.complete 11319,1 
.complete 11316,1 
.mob Spore
.mob Thornvine Creeper
step
.goto HowlingFjord,61.49,22.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁莉尔蕾|r
.turnin 11316 >>交任务: |cRXP_FRIENDLY_扭曲之林|r
.turnin 11319 >>交任务: |cRXP_FRIENDLY_暗魂守护者的种子|r
.accept 11428 >>接任务: |cRXP_LOOT_凋零之叶|r
.target Lurielle
step
.goto HowlingFjord,67.54,23.33
>>将|cRXP_Loot_铁符文雕刻工具|r洗劫一空
.complete 11349,1 
step
#completewith next
.goto HowlingFjord,53.2,17.7,100 >>前往扭曲的峡谷
step
#label Witherleaf
.goto HowlingFjord,53.2,17.7,50,0
.goto HowlingFjord,53.8,17.2,50,0
.goto HowlingFjord,53.9,15.6,50,0
.goto HowlingFjord,54.2,17.3,50,0
.goto HowlingFjord,53.3,18.7,50,0
.goto HowlingFjord,55.2,17.3,50,0
.goto HowlingFjord,54.2,17.3
>>杀死|cRXP_ENEMY_Keeper Winterleaf|r
.complete 11428,1 
.unitscan Keeper Witherleaf
step
#completewith next
.goto HowlingFjord,56.0,27.4,0
>>将|cRXP_Loot_Spotted Hippogryph打倒在地
>>|cRXP_WARN_它们看起来像Hippogryph羽毛|r
.complete 11269,1 
step
.goto HowlingFjord,50.4,12.8,50,0
.goto HowlingFjord,61.5,22.8,50,0
.goto HowlingFjord,59.51,26.77,50,0
.goto HowlingFjord,53.94,21.02
>>打开|cRXP_PICK_Sprung陷阱|r。为|cRXP _Loot_Trapped Prey|r掠夺它们
>>杀死|cRXP_ENEMY_Prowling Worgs|r，打开|cRX_PICK_Sprung陷阱|r时可能会产卵。掠夺它们以获取它们的|cRXP_Loot_Trapped Prey|r
.complete 11292,1 
.unitscan Trapped Animal
.mob Prowling Worg
step
.goto HowlingFjord,50.4,12.8,50,0
.goto HowlingFjord,61.5,22.8,50,0
.goto HowlingFjord,59.51,26.77,50,0
.goto HowlingFjord,53.94,21.02
>>将|cRXP_Loot_Spotted Hippogryph打倒在地
>>|cRXP_WARN_它们看起来像Hippogryph羽毛|r
.complete 11269,1 
step
.goto HowlingFjord,56.3,14.0,70,0
.goto HowlingFjord,57.7,7.9,70,0
.goto HowlingFjord,65.67,2.68,50,0
.goto HowlingFjord,61.10,1.98
>>杀死|cRXP_ENEMY_Frosthorn公羊|r。掠夺它们的|cRXX_Loot_坚韧公羊肉|r
.collect 33352,4 
.mob Frosthorn Ram
step
.goto HowlingFjord,61.10,1.98
>>|cRXP_WARN_使用|r|T134025:0|t[坚韧的公羊肉]|cRXP_WARN_to将它们组合成|r|cRXP-LOOT_巨型野提粉|r
.use 33352
.collect 33477,1 
step
.goto HowlingFjord,61.10,1.98
>>|cRXP_WARN_单击山顶上的|cRXP_PICK_Frostblade Shrine|r|r << !Druid !Shaman
>>|cRXP_WARN_单击山顶上的|cRXP_PICK_Frostblade Shrine|r。确保你没有变形|r << Druid
>>|cRXP_WARN_点击山顶上的|cRXP_PICK_Frostblade Shrine|r。确保您不在|r|T136095:0|t[幽灵狼]中 << Shaman
>>杀死|cRXP_ENEMY_你内心产生的混乱|r
.complete 11322,1 
.mob Your Inner Turmoil
step
#completewith next
.goto HowlingFjord,59.8,13.7,100 >>|cRXP_WARN_使用您刚刚收到的|r|T135992:0|t[慢速下降]|cRXP_WARN_BUFF，在没有安装或使用MOVESPEED缓冲区的情况下跳下至Fort Wildervar|r
.skill coldweatherflying,1,1
step
#completewith next
.goto HowlingFjord,59.8,13.7,30 >>进入Wildervar矿场
step
.goto HowlingFjord,59.8,13.7,20,0
.goto HowlingFjord,60.46,11.89
.use 33477
>>|cRXP_WARN_使用|r|T134054:0|t[Giant Yeti Meal]|cRXP_WARN_next到|r|cRXP-ENEMY_Shatterhorn|r
>>杀死|cRXP_ENEMY_Shatterhorn|r
.complete 11284,1 
.mob Shatterhorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开矿井。与|cRXP_FRIENDLY_Colbey|r、|cRXP_FRIENDLY_Jethan|r和|cRXP-FRIENDLY _Gil|r交谈
.turnin 11284 >>交任务: |cRXP_FRIENDLY_隔壁的雪人|r
.goto HowlingFjord,60.18,15.61
.turnin 11292 >>交任务: |cRXP_FRIENDLY_陷阱中的猎物|r
.goto HowlingFjord,62.66,16.80
.turnin 11269 >>交任务: |cRXP_FRIENDLY_羽绒披风|r
.accept 11418 >>接任务: |cRXP_LOOT_我们叫他钢羽|r
.goto HowlingFjord,62.60,16.82
.target Foreman Colbey
.target Trapper Jethan
.target Gil Grisert
step
.goto HowlingFjord,62.2,16.6
.use 34026 >>目标|cRXP_ENEMY_Steelflowe|r
>>|cRXP_WARN_使用|r|T135225:0|t[Feathered Charm]|cRXP_WARN_to监视她|r
>>|cRXP_WARN_等待目标完成|r
.complete 11418,1 
.unitscan Steelfeather

step
>>|cRXP_WARN_单击|r|T135225:0|t[羽毛符]|cRXP_WARN_buff|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉尔|r, |cRXP_FRIENDLY_勘测员贝瓦尔|r
.turnin 11418 >>交任务: |cRXP_FRIENDLY_我们叫他钢羽|r
.goto HowlingFjord,62.60,16.82
.turnin 11349 >>交任务: |cRXP_FRIENDLY_掌控符文|r
.accept 11348 >>接任务: |cRXP_LOOT_命令符文|r
.goto HowlingFjord,62.28,17.22
.target Gil Grisert
.target Prospector Belvar
step
.goto HowlingFjord,61.49,22.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁莉尔蕾|r
.turnin 11428 >>交任务: |cRXP_FRIENDLY_凋零之叶|r
.target Lurielle
step
.goto HowlingFjord,70.41,23.92,20,0
.goto HowlingFjord,71.95,23.22
>>|cRXP_WARN_使用|r|T134425:0|t[命令符文]|cRXP_WARN_on a neutral |cRXP-ENEMY_Stone Giant|r来控制它|r
.use 33796
.complete 11348,1 
.target Stone Giant
step
#completewith next
.goto HowlingFjord,70.0,29.6,0
.goto HowlingFjord,72.7,18.5,0
.goto HowlingFjord,66.8,25.1,0
>>|cRXP_WARN_您现在拥有一只|cRXP_FRIENDLY_Stone Giant|r宠物|r
.use 33806 >>杀死|cRXP_ENEMY_Runed Stone Giants|r
>>|cRXP_WARN_在他们的尸体上使用|r|T134708:0|t[Runseeking Pick]|cRXP_WARN_on|r
.complete 11355,1 
.mob Runed Stone Giant
step
.goto HowlingFjord,71.85,24.56
>>杀死|cRXP_ENEMY_Binder谋杀案|r
.complete 11348,2 
.mob Binder Murdis
step
.goto HowlingFjord,70.0,29.6,60,0
.goto HowlingFjord,72.7,18.5,60,0
.goto HowlingFjord,66.8,25.1,60,0
.goto HowlingFjord,68.09,29.03,60,0
.goto HowlingFjord,70.0,29.6
>>|cRXP_WARN_您现在拥有一只|cRXP_FRIENDLY_Stone Giant|r宠物|r
.use 33806 >>杀死|cRXP_ENEMY_Runed Stone Giants|r
>>|cRXP_WARN_在他们的尸体上使用|r|T134708:0|t[Runseeking Pick]|cRXP_WARN_on|r
.complete 11355,1 
.mob Runed Stone Giant
.use 33796
step
#completewith next
.goto HowlingFjord,62.58,16.52,100 >>前往维尔德瓦尔堡
step
.goto HowlingFjord,62.58,16.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_研究员艾德兰|r
>>|cRXP_WARN_请勿在|cRXP_FRIENDLY_Belvar|r上交车，否则会丢失宠物|r
.turnin 11355 >>交任务: |cRXP_FRIENDLY_巨人的迁徙|r
.accept 11358 >>接任务: |cRXP_LOOT_破碎石板|r
.target Researcher Aderan
step
.goto HowlingFjord,71.64,17.65
.use 33819 >>|cRXP_WARN_在|r|cRXP_PICK_Broken Tablet上使用|r|T134424:0|t[符文样本]|cRXP-WARN_|r
>>|cRXP_WARN_等待RP|r
.cast 43692
.timer 23,The Lodestone RP
.complete 11358,1 
.use 33796
step
.goto HowlingFjord,62.58,16.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_研究员艾德兰|r
>>|cRXP_WARN_请勿在|cRXP_FRIENDLY_Belvar|r上交车，否则会丢失宠物|r
.turnin 11358 >>交任务: |cRXP_FRIENDLY_破碎石板|r
.accept 11359 >>接任务: |cRXP_LOOT_击败麦加利斯|r
.target Researcher Aderan

step
.goto HowlingFjord,69.4,11.5,70,0
.goto HowlingFjord,66.1,9.4
.use 33796 >>|cRXP_WARN_如果您丢失了宠物，请使用|r|T134425:0|t[命令符文]|cRXP_WARN_on a neutral |cRXP-ENEMY_Stone Giant|r|r
>>用你的|cRXP_FRIENDLY_Stone Giant|r杀死|cRXP_ENEMY_Megalith|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
.complete 11359,1 
.use 33796
.mob Megalith
step
#completewith end
#label Megalith2
.goto HowlingFjord,62.58,16.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_研究员艾德兰|r
.turnin 11359 >>交任务: |cRXP_FRIENDLY_击败麦加利斯|r
.isQuestComplete 11359
.target Researcher Aderan
step
.goto HowlingFjord,62.28,17.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘测员贝瓦尔|r
.turnin 11348 >>交任务: |cRXP_FRIENDLY_命令符文|r
.target Prospector Belvar
step << !Shaman
#requires Megalith2
.goto HowlingFjord,60.1,16.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹姆斯|r
.fp Fort Wildervar >>获取Fort Wildervar飞行路线
.fly Westguard Keep >>飞到Westguard Keep
.target James Ormsby
step << Shaman
#requires Megalith2
#completewith next
.hs >>西城卫队要塞的火炉
step
#completewith next
.goto HowlingFjord,31.2,35.6,100 >>Travel to Whisper Gulch
.skill coldweatherflying,<1,1
step
.goto HowlingFjord,31.2,35.6,40,0
.goto HowlingFjord,32.0,33.3
>>杀死|cRXP_ENEMY_Squeg Idolhunter|r
.complete 11240,1 
.unitscan Squeeg Idolhunter
.skill coldweatherflying,<1,1
step
#completewith next
.goto HowlingFjord,31.2,35.6,40,0
.goto HowlingFjord,32.0,33.3,30 >>前往Whisper Gulch。小心往下跳
.skill coldweatherflying,1,1
step
.goto HowlingFjord,31.2,35.6,40,0
.goto HowlingFjord,32.0,33.3
>>杀死|cRXP_ENEMY_Squeg Idolhunter|r
.complete 11240,1 
.unitscan Squeeg Idolhunter
.skill coldweatherflying,1,1
step
#completewith next
.groundgoto HowlingFjord,33.75,35.89,50,0
.goto HowlingFjord,30.1,28.6,100 >>Travel to Steel Gate
step
.goto HowlingFjord,30.06,28.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moonleaf|r
.turnin 11322 >>交任务: |cRXP_FRIENDLY_净化|r
.accept 11325 >>接任务: |cRXP_LOOT_座狼的伪装|r
.target Watcher Moonleaf
step
.goto HowlingFjord,30.81,20.76,40,0
.use 33129 >>|cRXP_WARN_Use|r|T133715:0|t[Feknut’s Firecrackers]|cRXP_WARN_underthe|cRXP_ENEMY_Darkcaw Bat|r在空中|r掠夺掉在它们下面的|cRXP_Loot_Dakclaw Guano|r
>>|cRXP_WARN_如果你掠夺得足够快，你可以避免与他们战斗|r
.complete 11154,1 
.mob Darkclaw Bat

step
#completewith next
.goto HowlingFjord,29.45,6.51,150 >>Travel to Rivenwood
step
#completewith next
.goto HowlingFjord,29.45,6.51
.cast 43369 >>|cRXP_WARN_在接近洞穴之前使用|r|T132203:0|t[Worg Disguise]|cRXP_WARN_b。这将使所有|cRXP_ENEMY_Worgs|r友好|r
.use 33618
step
.goto HowlingFjord,29.68,5.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔芬|r
>>|cRXP_WARN_不要受到伤害或施放任何法术|r
.turnin 11325 >>交任务: |cRXP_FRIENDLY_座狼的伪装|r
.accept 11414 >>接任务: |cRXP_LOOT_兄弟的背叛|r
.use 33618
.target Ulfang
step
.goto HowlingFjord,26.11,21.22,60,0
.goto HowlingFjord,27.12,21.69,60,0
.goto HowlingFjord,28.04,23.84,60,0
.goto HowlingFjord,28.40,23.76,60,0
.goto HowlingFjord,28.87,23.27,60,0
.goto HowlingFjord,28.96,22.66,60,0
.goto HowlingFjord,28.69,21.91,60,0
.goto HowlingFjord,27.37,21.08,60,0
.goto HowlingFjord,26.83,19.75,60,0
.goto HowlingFjord,26.45,19.58,60,0
.goto HowlingFjord,26.08,19.92
>>|cRXP_WARN_单击|r|T132203:0|t[蠕虫伪装]|cRXP_WARN_buff|r
>>杀死|cRXP_ENEMY_Bjomolf|r。|cRXP-WARN_他顺时针巡逻|r
.line HowlingFjord,26.08,19.92,26.45,19.58,26.83,19.75,27.37,21.08,28.69,21.91,28.96,22.66,28.87,23.27,28.40,23.76,28.04,23.84,27.12,21.69,26.11,21.22,26.08,19.92
.complete 11414,1 
.unitscan Bjomolf
step
.goto HowlingFjord,33.81,29.12,60,0
.goto HowlingFjord,33.68,29.77,60,0
.goto HowlingFjord,34.00,30.78,60,0
.goto HowlingFjord,34.53,31.43,60,0
.goto HowlingFjord,34.98,31.52,60,0
.goto HowlingFjord,35.24,31.40,60,0
.goto HowlingFjord,35.79,30.11,60,0
.goto HowlingFjord,35.82,29.61,60,0
.goto HowlingFjord,35.74,29.22,60,0
.goto HowlingFjord,35.49,28.86,60,0
.goto HowlingFjord,34.99,28.66
.line HowlingFjord,34.99,28.66,35.49,28.86,35.74,29.22,35.82,29.61,35.79,30.11,35.24,31.40,34.98,31.52,34.53,31.43,34.00,30.78,33.68,29.77,33.81,29.12,34.99,28.66
>>杀死|cRXP_ENEMY_Varg|r.|cRXP-WARN_他顺时针巡逻|r
.complete 11414,2 
.unitscan Varg
step
#completewith next
.goto HowlingFjord,29.45,6.51,250 >>Travel to Rivenwood
step
#completewith next
.goto HowlingFjord,29.45,6.51
.cast 43369 >>|cRXP_WARN_在接近洞穴之前使用|r|T132203:0|t[Worg Disguise]|cRXP_WARN_b。这将使所有|cRXP_ENEMY_Worgs|r友好|r
.use 33618
step
.goto HowlingFjord,29.68,5.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔芬|r
>>|cRXP_WARN_不要受到伤害或施放任何法术|r
.turnin 11414 >>交任务: |cRXP_FRIENDLY_兄弟的背叛|r
.accept 11416 >>接任务: |cRXP_LOOT_巨鹰之眼|r
.use 33618
.target Ulfang
step
#completewith next
.goto HowlingFjord,44.3,26.2,200 >>|cRXP_WARN_点击|r|T132203:0|t[蠕虫伪装]|cRXP_WARN_buff|r前往斯科恩
step
#completewith next
.cast 43042 >>|cRXP_WARN_使用|r|T135438:0|t[Westguard Command Insignia]|cRXP_WARN_to召唤一名|r|cRXP-FRIENDLY_Westguard中士|r
.use 33311
step
.goto HowlingFjord,44.3,26.2
.use 33311 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Sergeant|r
.turnin 11248 >>交任务: |cRXP_FRIENDLY_行动代号：斯克恩之怒|r
.accept 11245 >>接任务: |cRXP_LOOT_危险的塔楼|r
.accept 11246 >>接任务: |cRXP_LOOT_可怕而必要的手段|r
.accept 11247 >>接任务: |cRXP_LOOT_燃烧吧，斯克恩，燃烧吧！|r
.target Westguard Sergeant
step
#completewith Dismember
.goto HowlingFjord,44.9,34.7,0
.use 33310 >>杀死|cRXP_ENEMY_Winterskorn|r.|cRXP_WARN_Use|r|T135662:0|t[中士的马切特]|cRXP-WARN_on他们的尸体|r
.complete 11246,1 
.mob Winterskorn Berserker
.mob Winterskorn Elder
.mob Winterskorn Raider
.mob Winterskorn Shield-Maiden
.mob Winterskorn Tribesman
.mob Winterskorn Warrior
.mob Winterskorn Woodsman



step
#completewith SETower
.goto HowlingFjord,44.9,34.7,0
.use 33314 >>杀死|cRXP_ENEMY_Winterskorn|r。掠夺他们的|T136244:0|t[|cRXP-Loot_Vrykul提升卷轴|r]
>>|cRXP_WARN_使用|T136244:0|t[|cRXP_LOOT_Vrykul提升卷轴|r]开始任务|r
.collect 33314,1,11249,1 
.accept 11249 >>接任务: |cRXP_LOOT_阻止升华！|r
.mob Winterskorn Berserker
.mob Winterskorn Elder
.mob Winterskorn Raider
.mob Winterskorn Shield-Maiden
.mob Winterskorn Tribesman
.mob Winterskorn Warrior
.mob Winterskorn Woodsman



step
.goto HowlingFjord,43.66,28.57
.use 33321 >>|cRXP_WARN_在建筑物内使用|r|T135434:0|t[中士的火炬]|cRXP_WARN_and|r|T132863:0|t[Sergeant‘s Flare]|cRXP_WARN_while in the building|r
.use 33323
.complete 11247,1 
.complete 11245,1 

step
.use 33321 >>|cRXP_WARN_在建筑物内使用|r|T135434:0|t[中士的火炬]|cRXP_WARN_|r
.complete 11247,2 
.goto HowlingFjord,46.39,28.13
.complete 11247,3 
.goto HowlingFjord,45.93,30.71
step
#label SETower
.use 33323 >>|cRXP_WARN_在发射塔外使用|r|T132863:0|t[Sergeant’s Flare]|cRXP_WARN_while。它有90码的射程|r
.complete 11245,2 
.goto HowlingFjord,46.72,32.82
.complete 11245,4 
.goto HowlingFjord,47.10,36.87
step
.goto HowlingFjord,45.62,35.34,60,0
.goto HowlingFjord,43.85,35.60,60,0
.goto HowlingFjord,44.68,32.16,60,0
.goto HowlingFjord,44.10,29.17,60,0
.goto HowlingFjord,45.37,27.39,60,0
.goto HowlingFjord,46.17,32.24
.use 33314 >>杀死|cRXP_ENEMY_Winterskorn|r。掠夺他们的|T136244:0|t[|cRXP-Loot_Vrykul提升卷轴|r]
>>|cRXP_WARN_使用|T136244:0|t[|cRXP_LOOT_Vrykul提升卷轴|r]开始任务|r
.collect 33314,1,11249,1 
.accept 11249 >>接任务: |cRXP_LOOT_阻止升华！|r
.mob Winterskorn Berserker
.mob Winterskorn Elder
.mob Winterskorn Raider
.mob Winterskorn Shield-Maiden
.mob Winterskorn Tribesman
.mob Winterskorn Warrior
.mob Winterskorn Woodsman



step
#completewith next
.goto HowlingFjord,44.84,34.93
.cast 43089 >>|cRXP_WARN_使用|r|T136244:0|t[Vrykul提升卷轴]|cRXP_WARN_at|cRX_PICK_Thane的Pyre|r召唤|r|cRXP_ENEMY_Halfdan the Ice Hearted|r
.use 33314
step
#label Dismember
.goto HowlingFjord,44.98,35.92
.use 33339 >>Kill |cRXP_ENEMY_Halfdan the Ice-Hearted|r
.complete 11249,1 
.mob Halfdan the Ice-Hearted
step
.goto HowlingFjord,45.62,35.34,60,0
.goto HowlingFjord,43.85,35.60,60,0
.goto HowlingFjord,44.68,32.16,60,0
.goto HowlingFjord,44.10,29.17,60,0
.goto HowlingFjord,45.37,27.39,60,0
.goto HowlingFjord,46.17,32.24
.use 33310 >>杀死|cRXP_ENEMY_Winterskorn|r.|cRXP_WARN_Use|r|T135662:0|t[中士的马切特]|cRXP-WARN_on他们的尸体|r
.complete 11246,1 
.mob Winterskorn Berserker
.mob Winterskorn Elder
.mob Winterskorn Raider
.mob Winterskorn Shield-Maiden
.mob Winterskorn Tribesman
.mob Winterskorn Warrior
.mob Winterskorn Woodsman



step
.goto HowlingFjord,43.11,36.15
.use 33323 >>|cRXP_WARN_在发射塔外使用|r|T132863:0|t[Sergeant’s Flare]|cRXP_WARN_while。它有90码的射程|r
.complete 11245,3 
step
#completewith next
.cast 43042 >>|cRXP_WARN_使用|r|T135438:0|t[Westguard Command Insignia]|cRXP_WARN_to召唤一名|r|cRXP-FRIENDLY_Westguard中士|r
.use 33311
step
.goto HowlingFjord,44.41,35.84
.use 33311 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Sergeant|r
.turnin 11245 >>交任务: |cRXP_FRIENDLY_危险的塔楼|r
.turnin 11246 >>交任务: |cRXP_FRIENDLY_可怕而必要的手段|r
.turnin 11247 >>交任务: |cRXP_FRIENDLY_燃烧吧，斯克恩，燃烧吧！|r
.accept 11250 >>接任务: |cRXP_LOOT_向斯克恩的征服者致敬！|r
.target Westguard Sergeant
step
#completewith next
.goto HowlingFjord,41.47,37.70,100 >>前往瀑布底部
>>|cRXP_WARN_小心下山|r
.skill coldweatherflying,1,1
step
.goto HowlingFjord,41.47,37.70
>>|cRXP_WARN_点击|cRXP_PICK_Talonshrike的蛋|r召唤|r|cRXP_ENEMY_Talonshrika|r
>>杀死|cRXP_ENEMY_Talonshrike|r。掠夺他获得|cRXX_Loot_鹰之眼|r
.complete 11416,1 
.cast 3365
.timer 13,Eyes of the Eagle RP
.mob Talonshrike
step << Shaman
#completewith next
.hs >>西城卫队要塞的火炉
step
#completewith next
.goto HowlingFjord,28.84,44.13,200 >>前往Westguard Keep
step
>>|cRXP_WARN_去Westguard Keep的主房间|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Adams, |cRXP_FRIENDLY_莱瓦里安神父|r
.turnin 11250 >>交任务: |cRXP_FRIENDLY_向斯克恩的征服者致敬！|r
.accept 11235 >>接任务: |cRXP_LOOT_亚勒伯龙的麻烦|r
.goto HowlingFjord,28.84,44.13
.turnin 11249 >>交任务: |cRXP_FRIENDLY_阻止升华！|r
.accept 11231 >>接任务: |cRXP_LOOT_钥匙和牢笼|r
.goto HowlingFjord,28.86,43.97
.target Captain Adams
.target Father Levariol
step
.goto HowlingFjord,29.11,41.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工兵斯迪尔林|r
.turnin 11240 >>交任务: |cRXP_FRIENDLY_疯人的头领|r
.target Sapper Steelring
step
.goto HowlingFjord,35.8,11.4
.abandon 12171 >>放弃叛徒和叛国
step
#completewith next
.goto HowlingFjord,35.30,17.31,200 >>Travel to Gjalerbron
step
#completewith next
.goto HowlingFjord,35.8,11.4,0
.use 33289 >>杀死|cRXP_ENEMY_Gjalerbron战士|r，|cRXD_ENEMY_G睡眠守护者|r和|cRXP_ENEMY_ G符文铸造者|r。掠夺他们的|T134941:0|t[|cRXP_Loot_GjalerbronAttack Plans|r]
>>|cRXP_WARN_使用|T134941:0|t[|cRXP_LOOT_Gjalerbron攻击计划|r]开始任务|r
.collect 33289,1,11237,1 
.accept 11237 >>接任务: |cRXP_LOOT_亚勒伯龙攻击计划|r
.mob Gjalerbron Warrior
.mob Gjalerbron Sleep-Watcher
.mob Gjalerbron Rune-Caster
step
.goto HowlingFjord,35.8,18.1,60,0
.goto HowlingFjord,34.5,14.4,60,0
.goto HowlingFjord,36.9,11.4,60,0
.goto HowlingFjord,35.9,9.8,60,0
.goto HowlingFjord,33.5,12.0,60,0
.goto HowlingFjord,31.1,13.1,60,0
.goto HowlingFjord,35.8,18.1,60,0
.goto HowlingFjord,34.5,14.4,60,0
.goto HowlingFjord,36.9,11.4,60,0
.goto HowlingFjord,35.9,9.8,60,0
.goto HowlingFjord,33.5,12.0,60,0
.goto HowlingFjord,31.1,13.1,60,0
.goto HowlingFjord,35.8,18.1,60,0
.goto HowlingFjord,34.5,14.4
>>杀死|cRXP_ENEMY_Gjalerbron勇士|r，|cRXD_ENEMY_Sleep-Watchers |r和|cRXX_ENEMY_gjalerbronRune Casters |r。抢走他们的|cRXT_Loot_Gjalerbron-Cage钥匙|r。|cRXP_WARN_Open |cRX_PICK_Gjalerstron Cages|r to free |r|cRXC_FRIENDLY_Gjalerbron Prisons|r
>>|cRXP_WARN_如果您掠夺了一把|cRXP_loot_LLarge Gjalerbron笼子钥匙|r，您可以用它打开第二层中间的|cRXT_PICK_Llarge Gjarrbron笼子|r|r
.complete 11235,1 
.complete 11235,2 
.complete 11235,3 
.collect 33290,1,11231,1,1 
.collect 33284,10,11231,1,-1 
.complete 11231,1 
.mob Gjalerbron Warrior
.mob Gjalerbron Sleep-Watcher
.mob Gjalerbron Rune-Caster
.target Gjalerbron Prisoner
step
.goto HowlingFjord,35.8,18.1,60,0
.goto HowlingFjord,34.5,14.4,60,0
.goto HowlingFjord,36.9,11.4,60,0
.goto HowlingFjord,35.9,9.8,60,0
.goto HowlingFjord,33.5,12.0,60,0
.goto HowlingFjord,31.1,13.1,60,0
.goto HowlingFjord,35.8,18.1,60,0
.goto HowlingFjord,34.5,14.4,60,0
.goto HowlingFjord,36.9,11.4,60,0
.goto HowlingFjord,35.9,9.8,60,0
.goto HowlingFjord,33.5,12.0,60,0
.goto HowlingFjord,31.1,13.1,60,0
.goto HowlingFjord,35.8,18.1,60,0
.goto HowlingFjord,34.5,14.4
.use 33289 >>杀死|cRXP_ENEMY_Gjalerbron战士|r，|cRXD_ENEMY_G睡眠守护者|r和|cRXP_ENEMY_ G符文铸造者|r。掠夺他们的|T134941:0|t[|cRXP_Loot_GjalerbronAttack Plans|r]
>>|cRXP_WARN_使用|T134941:0|t[|cRXP_LOOT_Gjalerbron攻击计划|r]开始任务|r
.collect 33289,1,11237,1 
.accept 11237 >>接任务: |cRXP_LOOT_亚勒伯龙攻击计划|r
.mob Gjalerbron Warrior
.mob Gjalerbron Sleep-Watcher
.mob Gjalerbron Rune-Caster
step
#completewith next
.goto HowlingFjord,29.45,6.51
.cast 43369 >>|cRXP_WARN_在接近洞穴之前使用|r|T132203:0|t[Worg Disguise]|cRXP_WARN_b。这将使所有|cRXP_ENEMY_Worgs|r友好|r
.use 33618
step
.goto HowlingFjord,29.68,5.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔芬|r
>>|cRXP_WARN_不要受到伤害或施放任何法术|r
.turnin 11416 >>交任务: |cRXP_FRIENDLY_巨鹰之眼|r
.accept 11326 >>接任务: |cRXP_LOOT_头狼|r
.use 33618
.target Ulfang
step
.goto HowlingFjord,29.37,15.93,50,0
.goto HowlingFjord,29.40,15.45,50,0
.goto HowlingFjord,29.19,14.57,50,0
.goto HowlingFjord,28.52,13.93,50,0
.goto HowlingFjord,28.25,13.04,50,0
.goto HowlingFjord,28.50,11.04,50,0
.goto HowlingFjord,28.30,9.85,50,0
.goto HowlingFjord,27.63,8.33,50,0
.goto HowlingFjord,27.27,8.00,50,0
.goto HowlingFjord,26.91,8.08,50,0
.goto HowlingFjord,26.69,8.37,50,0
.goto HowlingFjord,26.47,9.37,50,0
.goto HowlingFjord,26.42,10.65,50,0
.goto HowlingFjord,26.98,12.96,50,0
.goto HowlingFjord,26.94,14.56,50,0
.goto HowlingFjord,28.53,17.25,50,0
.goto HowlingFjord,29.30,16.81,50,0
.goto HowlingFjord,29.53,17.47,50,0
.goto HowlingFjord,29.42,17.83,50,0
.goto HowlingFjord,29.44,18.18,50,0
.goto HowlingFjord,29.76,18.57,50,0
.goto HowlingFjord,30.44,18.32,50,0
.goto HowlingFjord,30.68,18.09,50,0
.goto HowlingFjord,30.75,17.67,50,0
.goto HowlingFjord,29.37,15.93
.line HowlingFjord,30.75,17.67,30.68,18.09,30.44,18.32,29.94,18.43,29.76,18.57,29.44,18.18,29.42,17.83,29.53,17.47,29.30,16.81,28.53,17.25,26.94,14.56,26.98,12.96,26.42,10.65,26.47,9.37,26.69,8.37,26.91,8.08,27.27,8.00,27.63,8.33,28.30,9.85,28.50,11.04,28.25,13.04,28.52,13.93,29.19,14.57,29.40,15.45,29.37,15.93,30.75,17.67
>>杀死|cRXP_ENEMY_Garwal|r.|cRXP-WARN_他顺时针巡逻|r
>>|cRXP_WARN_确保你有|r|T132150:0|t[Eyes of the Eagle]|cRXP_WARN_buff，否则他将不可见|r|cRXP-WARN_I如果你失去了buff，放弃任务并重新获得它|r
.complete 11326,1 
.unitscan Garwal
step
#completewith next
.goto HowlingFjord,30.05,28.58
>>向|cRXP_FRIENDLY_Moonleaf|r请求另一个伪装
.complete 11326,2 
.skipgossip 24273,2
.target Watcher Moonleaf
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Moonleaf, |cRXP_FRIENDLY_工程师菲纳特|r
.turnin 11326 >>交任务: |cRXP_FRIENDLY_头狼|r
.goto HowlingFjord,30.05,28.58
.turnin 11154 >>交任务: |cRXP_FRIENDLY_吓出它们的……|r
.goto HowlingFjord,30.15,28.69
.target Watcher Moonleaf
.target Engineer Feknut
step
#completewith next
.goto HowlingFjord,28.84,44.13,200 >>前往Westguard Keep
step
>>|cRXP_WARN_去Westguard Keep的主房间|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Adams, |cRXP_FRIENDLY_莱瓦里安神父|r, |cRXP_FRIENDLY_法师中尉玛利斯特|r
.turnin 11235 >>交任务: |cRXP_FRIENDLY_亚勒伯龙的麻烦|r
.accept 11236 >>接任务: |cRXP_LOOT_通灵主宰麦森|r
.goto HowlingFjord,28.84,44.13
.turnin 11231 >>交任务: |cRXP_FRIENDLY_钥匙和牢笼|r
.accept 11239 >>接任务: |cRXP_LOOT_为圣光效力|r
.goto HowlingFjord,28.86,43.97
.turnin 11237 >>交任务: |cRXP_FRIENDLY_亚勒伯龙攻击计划|r
.accept 11238 >>接任务: |cRXP_LOOT_冰霜巨龙和它的主人|r
.accept 11432 >>接任务: |cRXP_LOOT_休眠的巨人|r
.goto HowlingFjord,28.94,44.19
.target Captain Adams
.target Father Levariol
.target Mage-Lieutenant Malister
step
.goto HowlingFjord,38.7,12.7
.abandon 12171 >>放弃叛徒和叛国
step
#completewith next
.goto HowlingFjord,38.79,13.08,300 >>Travel to Gjalerbron
step
#completewith Glacion
.goto HowlingFjord,38.7,12.7,0
>>杀死|cRXP_ENEMY_亡灵|r。掠夺他们的|cRXD_Loot_觉醒之杖|r
.collect 34083,5,11432,1 
.mob Necrolord
step
#completewith Necrolord
.goto HowlingFjord,39.6,7.8,0
>>杀死|cRXP_ENEMY_Putrid Wights|r
.complete 11239,3 
.mob Putrid Wight
step
#completewith Wight
.goto HowlingFjord,33.7,10.0,0
>>杀死|cRXP_ENEMY_Deathless Watchers|r
.complete 11239,1 
.mob Deathless Watcher
step
.groundgoto HowlingFjord,35.33,13.69,70,0
.groundgoto HowlingFjord,38.23,10.45,70,0
.goto HowlingFjord,38.79,13.08
.use 34090 >>杀死|cRXP_ENEMY_Necro霸王梅珍|r。掠夺他|T134946:0|t[|cRXP-Loot_Mezhen的著作|r]
>>|cRXP_WARN_使用|T134946:0|t[|cRXP_LOOT_Mezhen的写作|r]开始任务|r
.complete 11236,1 
.collect 34090,1,11452 
.accept 11452 >>接任务: |cRXP_LOOT_沉睡的国王|r
.mob Necro Overlord Mezhen
step
#completewith next
.goto HowlingFjord,39.90,7.46,40 >>Enter Winter's Terrace
step
.goto HowlingFjord,39.6,7.8,40,0
.goto HowlingFjord,40.88,6.49
>>杀死|cRXP_ENEMY_Queen Angerboda|r
.complete 11452,1 
.mob Queen Angerboda
step
#completewith next
.goto HowlingFjord,39.45,7.99,30 >>Exit Winter's Terrace
step
#label Glacion
.goto HowlingFjord,36.46,7.35
>>杀死|cRXP_ENEMY_Wymcaller Vile|r。为他的|cRXX_Loot_Horn|r抢劫他
.complete 11238,1 
.complete 11238,3 
.mob Wyrmcaller Vile
step
.goto HowlingFjord,36.46,7.35
.use 33282 >>|cRXP_WARN_使用|r|T134228:0|t[Wyrmcaller's Horn]|cRXP_WARN_to call |r|cRXP-ENEMY_Glacion|r
>>|cRXP_WARN_着陆需要|cRXP_ENEMY_Glacion|r 20-35秒|r
>>杀死|cRXP_ENEMY_Glacion|r
.complete 11238,2 
.cast 42817
.timer 20,Glacion RP
.mob Glacion
step
#label Necrolord
.goto HowlingFjord,38.64,12.83,70,0
.goto HowlingFjord,36.88,15.78,70,0
.goto HowlingFjord,33.15,9.22,70,0
.goto HowlingFjord,38.64,12.83,70,0
.goto HowlingFjord,36.88,15.78,70,0
.goto HowlingFjord,33.15,9.22,70,0
.goto HowlingFjord,38.64,12.83
>>杀死|cRXP_ENEMY_亡灵|r。掠夺他们的|cRXD_Loot_觉醒之杖|r
.collect 34083,5,11432,1 
.mob Necrolord
step
#label Wight
.goto HowlingFjord,38.64,12.83,70,0
.goto HowlingFjord,36.88,15.78,70,0
.goto HowlingFjord,33.15,9.22,70,0
.goto HowlingFjord,38.64,12.83,70,0
.goto HowlingFjord,36.88,15.78,70,0
.goto HowlingFjord,33.15,9.22,70,0
.goto HowlingFjord,38.64,12.83
>>杀死|cRXP_ENEMY_Putrid Wights|r
.complete 11239,3 
.unitscan Putrid Wight
step
.goto HowlingFjord,38.64,12.83,70,0
.goto HowlingFjord,36.88,15.78,70,0
.goto HowlingFjord,33.15,9.22,70,0
.goto HowlingFjord,38.64,12.83,70,0
.goto HowlingFjord,36.88,15.78,70,0
.goto HowlingFjord,33.15,9.22,70,0
.goto HowlingFjord,38.64,12.83
>>杀死|cRXP_ENEMY_Deathless Watchers|r
.complete 11239,1 
.mob Deathless Watcher
step
#completewith next
.goto HowlingFjord,34.52,13.09,25 >>Enter The Waking Halls
step
.goto HowlingFjord,34.52,13.09,25,0
.goto HowlingFjord,35.18,11.86,20,0
.goto HowlingFjord,34.63,10.03,20,0
.goto HowlingFjord,32.68,8.99
.use 34083 >>杀死|cRXP_ENEMY_可怕的恐怖|r
>>|cRXP_WARN_引导|r|T135480:0|t[觉醒棒]|cRXP_WARN_on|cRXP_ENEMY_Dormant Vrykuls|r杀死它们|r
>>|cRXP_WARN_小心点，因为|r|cRXP_ENEMY_Fearsome Horrors|r|cRXP_WARN_可能会中断|r|T135480:0|t[觉醒棒]|cRXP-WARN_通道|r
.complete 11239,2 
.collect 34083,5,11433,1,-1
.complete 11432,1 
.mob Fearsome Horror
.mob Dormant Vrykul
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <71,1
step << Druid
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48442 >>训练你的职业技能
.xp <71,1
.target Loganaar
step << skip
#completewith next
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <71,1
step << skip
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.trainer >>训练你的职业技能
.xp <71,1
.target Amal'thazad

step << skip
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <71,1
step << skip
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 43023 >>训练你的职业技能
.xp <71,1
.target Elsharin
.target Jennea Cannon

step
#completewith next
.hs >>西城卫队要塞的火炉
step
#label end
>>|cRXP_WARN_去Westguard Keep的主房间|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法师中尉玛利斯特|r, Adams, |cRXP_FRIENDLY_莱瓦里安神父|r
.turnin 11238 >>交任务: |cRXP_FRIENDLY_冰霜巨龙和它的主人|r
.turnin 11432 >>交任务: |cRXP_FRIENDLY_休眠的巨人|r
.goto HowlingFjord,28.94,44.19
.turnin 11236 >>交任务: |cRXP_FRIENDLY_通灵主宰麦森|r
.turnin 11452 >>交任务: |cRXP_FRIENDLY_沉睡的国王|r
.goto HowlingFjord,28.84,44.13
.turnin 11239 >>交任务: |cRXP_FRIENDLY_为圣光效力|r
.goto HowlingFjord,28.86,43.97
.target Mage-Lieutenant Malister
.target Captain Adams
.target Father Levariol
step
.abandon 12171 >>放弃叛徒和叛国
step << Mage
#completewith MaTraining
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 27126 >>训练你的职业技能
.xp <70,1
.target Elsharin
.target Jennea Cannon
step << Mage
#label MaTraining
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 43023 >>训练你的职业技能
.xp <71,1
.target Elsharin
.target Jennea Cannon
step << !Mage
.cast 387064 >>|cRXP_WARN_使用|r|T134943:0|t[传送卷轴：暴风港]|cRXP_WARN_to传送到暴风|r
.use 199336
.itemcount 199336,1
step << !Mage
#completewith next
.goto HowlingFjord,31.26,43.98
.zone Stormwind City >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Valgarde >>飞往瓦尔加德。或者，支付|T626001:0|t|cFF3FC7EBMage|r购买暴风城入口
.zoneskip Stormwind City
.zoneskip Wetlands
.itemcount 199336,<1
.target Greer Orehammer
step << !Mage
#completewith next
.goto HowlingFjord,61.31,62.57
.zone Wetlands >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_湿地|r
.zoneskip Stormwind City
.zoneskip Wetlands
.skipgossip
.itemcount 199336,<1
.target Basil Crowe
step << !Mage
#completewith next
.goto Wetlands,9.49,59.69
.zone Stormwind City >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Stormwind City >>飞往暴风城
.zoneskip Stormwind City
.itemcount 199336,<1
.target Shellei Brondir
step << Shaman
.goto Stormwind City,61.9,84.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知安布洛尔|r
.train 25472 >>训练你的职业技能
.xp <70,1
.target Farseer Umbrua
step << Shaman
.goto Stormwind City,61.9,84.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知安布洛尔|r
.train 58699 >>训练你的职业技能
.xp <71,1
.target Farseer Umbrua
step
.goto Stormwind City,61.4,70.0,12,0
.goto Stormwind City,61.2,70.7,12,0
.goto Stormwind City,61.6,70.7
>>|cRXP_WARN_如果价格便宜，可以从拍卖行购买|r|T237290:0|t[过充电容器]|cRXP_WARN_。这是以后XP中的一个小提升。如果太贵，跳过这一步|r
.collect 39682,1 
step << Warlock
#completewith WLTraining
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走进屠宰羔羊，下楼去
step << Warlock
.goto Stormwind City,25.3,78.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Ursula, |cRXP_FRIENDLY_德米赛特·克劳斯|r, |cRXP_FRIENDLY_山达尔|r
.train 27260 >>训练你的职业技能
.xp <70,1
.target Ursula Deline
.target Demisette Cloyce
.target Sandahl
step << Warlock
#label WLTraining
.goto Stormwind City,25.3,78.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Ursula, |cRXP_FRIENDLY_德米赛特·克劳斯|r, |cRXP_FRIENDLY_山达尔|r
.train 47812 >>训练你的职业技能
.xp <71,1
.target Ursula Deline
.target Demisette Cloyce
.target Sandahl
step << Paladin/Priest
#completewith PaPrTraining
.goto Stormwind City,52.9,50.9,20 >>进入暴风大教堂
step << Paladin
.goto Stormwind City,49.8,48.5,20,0
.goto Stormwind City,38.6,32.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 31884 >>训练你的职业技能
.xp <70,1
.target Arthur the Faithful
.target Katherine the Pure
step << Paladin
#label PaPrTraining
.goto Stormwind City,49.8,48.5,20,0
.goto Stormwind City,38.6,32.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 54428 >>训练你的职业技能
.xp <71,1
.target Arthur the Faithful
.target Katherine the Pure
step << Priest
#label PaPrTraining
.goto Stormwind City,38.5,26.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
.train 25368 >>训练你的职业技能
.xp <70,1
.target Brother Joshua

step << Hunter
.goto Stormwind City,67.3,37.1,15,0
.goto Stormwind City,67.3,36.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.train 27019 >>训练你的职业技能
.xp <70,1
.target Einris Brightspear
step << Hunter
.goto Stormwind City,67.3,37.1,15,0
.goto Stormwind City,67.3,36.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.train 49051 >>训练你的职业技能
.xp <71,1
.target Einris Brightspear
step << skip
.goto Stormwind City,74.6,52.8 << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.train 51724 >>训练你的职业技能
.xp <71,1
.target Osborne the Night Man

step << Warrior
.goto Stormwind City,77.7,64.3,15,0
.goto Stormwind City,80.1,61.5,15,0
.goto Stormwind City,81.4,59.5,15,0
.goto Stormwind City,78.6,45.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 25236 >>训练你的职业技能
.xp <70,1
.target Wu Shen
.target Ilsa Corbin

]])
RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#questguide << !tbc
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 69-70 影月谷 (奥尔多)
#version 5
#aldor
step
.goto Shattrath City,24.2,29.8
>>从您的银行取款萨格拉斯/费尔军火标记
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊沙娜|r
.accept 10420 >>接任务: |cRXP_LOOT_净化之光|r
.turnin 10420 >>交任务: |cRXP_FRIENDLY_净化之光|r


.target Ishanah
step
.goto Shattrath City,30.9,34.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_圣光护卫者阿德因|r
.accept 10653 >>接任务: |cRXP_LOOT_萨格拉斯印记|r
.turnin 10653 >>交任务: |cRXP_FRIENDLY_萨格拉斯印记|r
.target Adyen the Lightwarden
step
.goto Shattrath City,64.1,41.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努特拉尔|r
.fly Allerian Stronghold >>飞向Allerian据点
.target Nutral
step << skip
.goto Terokkar Forest,50.8,54.7
>>前往灯火之墓，使用走廊尽头的古墓遗址
>>保护古墓守护者
.turnin 10842 >>交任务: |cRXP_FRIENDLY_复仇的灵魂|r
.target Draenei Tomb Guardian
step
#sticky
.zone Shadowmoon Valley >>前往: |cRXP_PICK_影月谷|r
step
.goto Shadowmoon Valley,39.5,53.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r

.accept 10562 >>接任务: |cRXP_LOOT_兵临城下！|r
.target Wing Commander Nuainn
step
.goto Shadowmoon Valley,40.8,52.3
>>杀死|cRXP_ENEMY_无间道攻击者|r
.complete 10562,1 
.mob Infernal Attacker
step
.goto Shadowmoon Valley,39.6,53.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10562 >>交任务: |cRXP_FRIENDLY_兵临城下！|r
.accept 10563 >>接任务: |cRXP_LOOT_前往军团要塞|r
.target Wing Commander Nuainn
step
.goto Shadowmoon Valley,38.8,54.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫骑士基尔兰|r
.accept 10569 >>接任务: |cRXP_LOOT_斯克瑟隆废墟|r
.target Gryphonrider Kieran
step << skip
.goto Shadowmoon Valley,38.2,54.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Wanted Poster|r
.accept 10648 >>接任务: |cRXP_LOOT_通缉：乌鲁洛斯，影月谷的祸患|r
step
.goto Shadowmoon Valley,37.6,55.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布鲁贝克·雷足|r
.fp Wildhammer Stronghold >>获取野锤寨飞行路线
.target Brubeck Stormfoot
step
#sticky
.goto Shadowmoon Valley,36.8,54.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_仲裁者索鲁斯|r
.accept 10642 >>接任务: |cRXP_LOOT_要塞中的幽灵|r
.target Zorus the Judicator
step
.goto Shadowmoon Valley,36.6,55.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺姆斯|r
.accept 10661 >>接任务: |cRXP_LOOT_美味的脾脏！|r
.target Gnomus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大领主尤雷加尔|r, |cRXP_FRIENDLY_大地治愈者索弗鲁斯|r
.goto Shadowmoon Valley,36.3,57.0
.accept 10703 >>接任务: |cRXP_LOOT_穿好你的盔甲......|r
.accept 10772 >>接任务: |cRXP_LOOT_征服之路|r
.accept 10680 >>接任务: |cRXP_LOOT_古尔丹之手|r
.target Thane Yoregar
.target Earthmender Sophurus
step
.goto Shadowmoon Valley,37.1,58.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德雷格·掠云|r
.home >>将您的炉石设置为野锤寨
.target Dreg Cloudsweeper
step << !Shaman
#sticky
#label smv1
.goto Shadowmoon Valley,32.9,40.4,0
>>杀死|cRXP_ENEMY_Shadowmoon Valley野生动物|r（Diemetradons不算在内）
>>杀死|cRXP_ENEMY_Diemetradons |r。掠夺他们的|cRXX_Loot_Felfire Spleens|r
>>地面收集|cRXP_PICK_Ever-burning Ash|r
.complete 10703,1 
.complete 10642,1 
.complete 10661,1 
.mob Scorchshell Pincer
.mob Felboar
.mob Vilewing Chimaera
.mob Shadow Serpent
.mob Felfire Diemetradon
step << Shaman
#sticky
#label smv1
.goto Shadowmoon Valley,32.9,40.4,0
>>杀死|cRXP_ENEMY_Shadowmoon Valley野生动物|r（Diemetradons不算在内）
.complete 10703,1 
.mob Scorchshell Pincer
.mob Felboar
.mob Vilewing Chimaera
.mob Shadow Serpent
step
.goto Shadowmoon Valley,23.6,37.0
.use 30638 >>在阳台顶部的包中使用|T132763:0|t[方块魔术]
.complete 10563,1 
step
.hs >>火炉到野锤寨
step
.goto Shadowmoon Valley,39.5,53.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10563 >>交任务: |cRXP_FRIENDLY_前往军团要塞|r
.accept 10572 >>接任务: |cRXP_LOOT_制造炸弹|r
.target Wing Commander Nuainn
step << Shaman
.goto Shadowmoon Valley,29.9,38.1
>>杀死|cRXP_ENEMY_Diemetradons |r。掠夺他们的|cRXX_Loot_Felfire Spleens|r
>>地面收集|cRXP_PICK_Ever-burning Ash|r
.complete 10642,1 
.complete 10661,1 
.mob Felfire Diemetradon
step << !Shaman
#sticky
#completewith next
.use 30756 >>如果你看到他，杀死|cRXP_ENEMY_Oversear Ripsaw|r。掠夺他的|cRXP_Loot_Shard|r。点击你包里的|T135241:0|t[Ilidari Bane Shard]
.collect 30756,1,10621
.accept 10621 >>接任务: |cRXP_LOOT_伊利达雷斩除碎片|r
.unitscan Overseer Ripsaw
step << !Shaman
.goto Shadowmoon Valley,22.3,35.6
>>掠夺被绿光环绕的|cRXP_PICK_Armor Plate|r
.complete 10572,2 
step << Shaman
#requires smv1
#sticky
#completewith next
.use 30756 >>如果你看到他，杀死|cRXP_ENEMY_Oversear Ripsaw|r。掠夺他的|cRXP_Loot_Shard|r。点击你包里的|T135241:0|t[Ilidari Bane Shard]
.collect 30756,1,10621
.accept 10621 >>接任务: |cRXP_LOOT_伊利达雷斩除碎片|r
.unitscan Overseer Ripsaw
step << Shaman
#requires smv1
.goto Shadowmoon Valley,22.3,35.6
>>掠夺被绿光环绕的|cRXP_PICK_Armor Plate|r
.complete 10572,2 
step
.goto Shadowmoon Valley,21.5,35.9,30,0
.goto Shadowmoon Valley,26.0,35.5,30,0
.use 30756 >>杀死|cRXP_ENEMY_Oversear Ripsaw|r。抢夺他的|cRXX_Loot_Shard|r。点击你包里的|T135241:0|t[Ilidari Bane Shard]
.collect 30756,1,10621
.accept 10621 >>接任务: |cRXP_LOOT_伊利达雷斩除碎片|r
.unitscan Overseer Ripsaw
step
.goto Shadowmoon Valley,26.3,41.2
>>在小池塘底部偷走|cRXP_PICK_Power Core |r
.complete 10572,1 
step << !Shaman
#requires smv1
.goto Shadowmoon Valley,39.5,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10572 >>交任务: |cRXP_FRIENDLY_制造炸弹|r
.accept 10564 >>接任务: |cRXP_LOOT_炸毁地狱火！|r
.target Wing Commander Nuainn
step << Shaman
.hs >>火炉到野锤寨
step << Shaman
.goto Shadowmoon Valley,39.5,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10572 >>交任务: |cRXP_FRIENDLY_制造炸弹|r
.accept 10564 >>接任务: |cRXP_LOOT_炸毁地狱火！|r
.target Wing Commander Nuainn
step
#sticky
.goto Shadowmoon Valley,36.8,55.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_仲裁者索鲁斯|r
.turnin 10642 >>交任务: |cRXP_FRIENDLY_要塞中的幽灵|r
.accept 10643 >>接任务: |cRXP_LOOT_影月先驱者|r
.unitscan Zorus the Judicator
step
.goto Shadowmoon Valley,36.6,55.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺姆斯|r
.turnin 10661 >>交任务: |cRXP_FRIENDLY_美味的脾脏！|r
.accept 10677 >>接任务: |cRXP_LOOT_第二道菜......|r
.target Gnomus
step
.goto Shadowmoon Valley,36.9,54.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥丁·雷拳|r
.turnin 10621 >>交任务: |cRXP_FRIENDLY_伊利达雷斩除碎片|r
.target Ordinn Thunderfist
step
.goto Shadowmoon Valley,36.3,57.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大领主尤雷加尔|r
.turnin 10703 >>交任务: |cRXP_FRIENDLY_穿好你的盔甲......|r
.target Thane Yoregar
step
.goto Shadowmoon Valley,37.2,55.3
.use 30719 >>在您的行李中配备|T133149:0|t[Spectrecles]
>>杀死|cRXP_ENEMY_Shadowmoon Harbingers|r
.complete 10643,1 
.mob Shadowmoon Harbinger
step
.goto Shadowmoon Valley,36.7,55.2
>>|cRXP_WARN_装备你的普通头盔！|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_仲裁者索鲁斯|r
.turnin 10643 >>交任务: |cRXP_FRIENDLY_影月先驱者|r
.accept 10644 >>接任务: |cRXP_LOOT_塔隆-血魔的传说|r
.unitscan Zorus the Judicator
step
.goto Shadowmoon Valley,42.2,45.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大地治愈者托洛克|r
.turnin 10680 >>交任务: |cRXP_FRIENDLY_古尔丹之手|r
.accept 10458 >>接任务: |cRXP_LOOT_愤怒的火灵和地灵|r
.target Earthmender Torlok
step
.goto Shadowmoon Valley,46.7,46.1
.use 30094 >>使用您包中的|T135462:0|t[灵魂图腾]并杀死图腾旁边的|cRXP_ENEMY_火元素|r和|cRXX_ENEMY_土元素|r
.complete 10458,1 
.complete 10458,2 
.mob Enraged Fire Spirit
.mob Enraged Earth Spirit
step
.goto Shadowmoon Valley,42.1,45.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大地治愈者托洛克|r
.turnin 10458 >>交任务: |cRXP_FRIENDLY_愤怒的火灵和地灵|r
.accept 10480 >>接任务: |cRXP_LOOT_愤怒的水灵|r
.target Earthmender Torlok
step
.goto Shadowmoon Valley,38.0,32.1
>>杀死|cRXP_ENEMY_Dark秘会鹰眼|r、|cRXD_ENEMY_Ravenguard|r和|cRXP_ENEMY_Shadowmancers|r。掠夺他们的|cRXT_OOT_Journals|r
.complete 10569,1 
.complete 10569,2 
.complete 10569,3 
.mob Dark Conclave Hawkeye
.mob Dark Conclave Ravenguard
.mob Dark Conclave Shadowmancer
step
#sticky
#completewith gizzard
.goto Shadowmoon Valley,51.4,27.5,0
>>杀死该区域东部熔岩流周围的|cRXP_ENEMY_Greater Felfire Diemetradons|r
.complete 10677,1 
>>这个任务的掉落率非常低，如果你在最初几次杀戮中没有得到它，跳过这一步
.mob Greater Felfire Diemetradon
step
.goto Shadowmoon Valley,51.4,27.5
.use 30094 >>使用您包中的|T135462:0|t[精灵图腾]并杀死图腾旁边的|cRXP_ENEMY_Water Elements|r
.complete 10480,1 
.mob Enraged Water Spirit
step
.goto Shadowmoon Valley,61.2,29.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大主教欧纳拉|r, |cRXP_FRIENDLY_守备官奥鲁门|r
.accept 10619 >>接任务: |cRXP_LOOT_灰舌氏族|r
.accept 10587 >>接任务: |cRXP_LOOT_卡拉波训练场|r
.target Exarch Onaala
.target Vindicator Aluumen
step
.goto Shadowmoon Valley,62.6,28.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者希拉|r
.accept 10568 >>接任务: |cRXP_LOOT_巴尔里石板|r
.target Anchorite Ceyla
step
.goto Shadowmoon Valley,63.3,30.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂克斯|r
.fp Altar of Sha'tar >>获得沙塔飞行路线的祭坛
.target Maddix
step
.goto Shadowmoon Valley,60.0,35.6
>>杀死区域内的|cRXP_ENEMY_Ashtongues|r。掠夺|cRX_PICK_Baa'ri碎片|r
.complete 10568,1 
.complete 10619,1 
.complete 10619,2 
.complete 10619,3 
.mob Ashtongue Handler
.mob Ashtongue Warrior
.mob Ashtongue Shaman
step
.goto Shadowmoon Valley,61.3,29.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官奥鲁门|r
.turnin 10619 >>交任务: |cRXP_FRIENDLY_灰舌氏族|r
.accept 10816 >>接任务: |cRXP_LOOT_夺回圣地|r
.target Vindicator Aluumen
step
.goto Shadowmoon Valley,62.5,28.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者希拉|r
.turnin 10568 >>交任务: |cRXP_FRIENDLY_巴尔里石板|r
.accept 10571 >>接任务: |cRXP_LOOT_长者奥洛努|r
.target Anchorite Ceyla
step
.goto Shadowmoon Valley,57.2,33.0
>>杀死阳台顶部的|cRXP_ENEMY_Oronu|r
.complete 10571,1 
.mob Oronu the Elder
step
.goto Shadowmoon Valley,62.5,28.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者希拉|r
.turnin 10571 >>交任务: |cRXP_FRIENDLY_长者奥洛努|r
.accept 10574 >>接任务: |cRXP_LOOT_灰舌腐蚀者|r
.target Anchorite Ceyla
step << !Shaman
#completewith next
.goto Shadowmoon Valley,63.3,30.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂克斯|r
.fly Wildhammer Stronghold >>飞到野锤寨
.target Maddix
step << Shaman
.hs Wildhammer Stronghold >>火炉到野锤寨
step
#label gizzard
.isQuestComplete 10677
.goto Shadowmoon Valley,36.5,55.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺姆斯|r
.turnin 10677 >>交任务: |cRXP_FRIENDLY_第二道菜......|r
.target Gnomus
step
.goto Shadowmoon Valley,36.5,55.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺姆斯|r
.accept 10678 >>接任务: |cRXP_LOOT_主菜！|r
.isQuestTurnedIn 10677
.target Gnomus
step
.goto Shadowmoon Valley,38.8,54.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫骑士基尔兰|r
.turnin 10569 >>交任务: |cRXP_FRIENDLY_斯克瑟隆废墟|r
.accept 10759 >>接任务: |cRXP_LOOT_寻找逃亡者|r
.target Gryphonrider Kieran
step
.goto Shadowmoon Valley,35.3,39.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10759 >>交任务: |cRXP_FRIENDLY_寻找逃亡者|r
.accept 10777 >>接任务: |cRXP_LOOT_阿斯迦的图腾|r
.unitscan Parshah
step
.goto Shadowmoon Valley,39.7,29.7
>>杀死|cRXP_ENEMY_Asghar|r。掠夺他的|cRXX_Loot_Totam|r
.complete 10777,1 
.mob Asghar
step
.goto Shadowmoon Valley,35.3,39.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10777 >>交任务: |cRXP_FRIENDLY_阿斯迦的图腾|r
.accept 10778 >>接任务: |cRXP_LOOT_莉安丝魔棒|r
.unitscan Parshah
step
.goto Shadowmoon Valley,42.2,45.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大地治愈者托洛克|r
.turnin 10480 >>交任务: |cRXP_FRIENDLY_愤怒的水灵|r
.accept 10481 >>接任务: |cRXP_LOOT_愤怒的气灵|r
.target Earthmender Torlok
step
.goto Shadowmoon Valley,52.17,58.45
>>跑上山，慢慢前进，直到完成任务目标
.complete 10772,1
step
.goto Shadowmoon Valley,51.0,59.1
.use 31310 >>在航路点位置使用行李中的|T135619:0|t[野锤火炬枪]召唤一名|cRXP_FRIENDLY_Wildhammer鹰头狮骑士|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蛮锤狮鹫骑士|r
.turnin 10772 >>交任务: |cRXP_FRIENDLY_征服之路|r
.accept 10773 >>接任务: |cRXP_LOOT_扫清道路|r
.target Wildhammer Gryphon Rider
step
.goto Shadowmoon Valley,47.5,71.7
>>杀死|cRXP_ENEMY_EclipseArchmages|r、|cRXD_ENEMY_Bloodwarders|r和|cRXP_ENEMY_Centurions|r
.complete 10778,1 
>>打开营地后面的箱子
.complete 10778,2 
.mob Eclipsion Archmage
.mob Eclipsion Bloodwarder
.mob Eclipsion Centurion
step
#sticky
#label air
.goto Shadowmoon Valley,62.7,62.1,60,0
.use 30094 >>使用您包中的|T135462:0|t[精灵图腾]并杀死图腾旁边的|cRXP_ENEMY_Air Elements|r
.complete 10481,1 
.mob Enraged Air Spirit
step
.goto Shadowmoon Valley,58.2,70.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_上古影月之魂|r
.turnin 10644 >>交任务: |cRXP_FRIENDLY_塔隆-血魔的传说|r

.accept 10635 >>接任务: |cRXP_LOOT_占卜：血魔的披风|r
.accept 10636 >>接任务: |cRXP_LOOT_占卜：血魔的权杖|r
.target Ancient Shadowmoon Spirit
step
.goto Shadowmoon Valley,57.1,73.6
>>摧毁保护|cRXP_ENEMY_Haalum|r的图腾。杀死并掠夺他的|cRXX_loot_Medallion碎片|r
.complete 10574,2 
.mob Haalum
step
#requires air
#sticky
>>每当你穿过主干道时，装备你的|T133149:0|t[Spectrecles]寻找卡拉博尔的|cRXP_ENEMY_Ghostrider|r。他们以逆时针方向巡逻该区域
>>为|cRXP_OOT_Gorefield的Trunchon|r掠夺它们
.complete 10636,1
.mob Ghostrider of Karabor
step
#requires air
.goto Shadowmoon Valley,56.1,44.3
>>杀死|cRXP_ENEMY_Felspine the Greater|r。掠夺他|cRXD_Loot_Felspine的隐藏物|r
.complete 10678,1 
.isOnQuest 10678
.mob Felspine the Greater
step
.goto Shadowmoon Valley,51.1,52.9
>>摧毁保护|cRXP_ENEMY_Eykenen|r的图腾。杀死并掠夺他的|cRXP_loot_Medallion碎片|r
.complete 10574,1 
.mob Eykenen
step
.goto Shadowmoon Valley,42.2,45.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大地治愈者托洛克|r
.turnin 10481 >>交任务: |cRXP_FRIENDLY_愤怒的气灵|r
.accept 10513 >>接任务: |cRXP_LOOT_欧鲁诺克-裂心|r
.target Earthmender Torlok
step
.goto Shadowmoon Valley,35.2,40.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10778 >>交任务: |cRXP_FRIENDLY_莉安丝魔棒|r
.accept 10780 >>接任务: |cRXP_LOOT_斯克瑟隆羽毛|r
.unitscan Parshah
step
.goto Shadowmoon Valley,22.7,39.9
.use 30614 >>在地上的绿色圆圈处，用袋子里的炸弹
.complete 10564,1 
step
.hs >>火炉到野锤寨
step
.goto Shadowmoon Valley,39.5,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10564 >>交任务: |cRXP_FRIENDLY_炸毁地狱火！|r
.accept 10573 >>接任务: |cRXP_LOOT_死亡熔炉|r
.target Wing Commander Nuainn
step
.goto Shadowmoon Valley,40.5,41.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊万·蛮翼|r
.turnin 10573 >>交任务: |cRXP_FRIENDLY_死亡熔炉|r
.accept 10582 >>接任务: |cRXP_LOOT_暗影议会的爪牙|r
.target Stormer Ewan Wildwing
step
#completewith next
.goto Shadowmoon Valley,40.16,38.23,15 >>从北部入口进入死亡堡
step
.goto Shadowmoon Valley,40.3,38.1
>>杀死|cRXP_ENEMY_死亡锻造守护者|r和|cRXX_ENEMY_召唤师|r
.complete 10582,1 
.complete 10582,2 
.mob Deathforge Guardian
.mob Deathforge Summoner
step
.goto Shadowmoon Valley,40.5,41.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊万·蛮翼|r
.turnin 10582 >>交任务: |cRXP_FRIENDLY_暗影议会的爪牙|r
.accept 10583 >>接任务: |cRXP_LOOT_弗兰尼斯的命运|r
.accept 10585 >>接任务: |cRXP_LOOT_召唤之厅|r
.target Stormer Ewan Wildwing
step
#completewith next
.goto Shadowmoon Valley,40.16,38.23,15 >>从北部入口进入死亡堡
step
.goto Shadowmoon Valley,34.7,39.9
>>杀死|cRXP_ENEMY_Deathforge Smiths|r和|cRXP_ENEMY_Deathforge Tinkers|r。掠夺它们以获得|cRXD_Loot_元素置换器|r
.complete 10585,2 
>>单击走廊尽头的死矮人以获取|cRXP_PICK_Flanis的背包|r
.complete 10583,1 
.mob Deathforge Smith
.mob Deathforge Tinkerer
step
.goto Shadowmoon Valley,37.8,38.3
.use 30672>>跳下桥，在召唤点使用包中的|T135470:0|t[元素置换器]
.complete 10585,1 
step
.goto Shadowmoon Valley,40.4,41.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊万·蛮翼|r
.turnin 10583 >>交任务: |cRXP_FRIENDLY_弗兰尼斯的命运|r
.turnin 10585 >>交任务: |cRXP_FRIENDLY_召唤之厅|r
.accept 10586 >>接任务: |cRXP_LOOT_击败战争使者！|r
.target Stormer Ewan Wildwing
step
.goto Shadowmoon Valley,39.0,46.7
>>从顶部入口进入影堡，穿过锁着的大门
>>杀死|cRXP_ENEMY_Warbringer Razun|r。掠夺他获得|cRXX_Loot_Razuun的命令|r
.complete 10586,1 
.complete 10586,2 
.mob Warbringer Razuun
step
.goto Shadowmoon Valley,48.3,39.5
>>摧毁保护|cRXP_ENEMY_Uylaru|r的图腾。杀死并掠夺他的|cRXX_loot_Medallion碎片|r
.complete 10574,4 
.mob Uylaru
step
.goto Shadowmoon Valley,49.9,23.0
>>摧毁保护|cRXP_ENEMY_Lakaan|r的图腾。杀死并掠夺他的|cRXX_loot_Medallion碎片|r
.complete 10574,3 
.mob Lakaan
step
.goto Shadowmoon Valley,54.0,23.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧鲁诺克·裂心|r
.turnin 10513 >>交任务: |cRXP_FRIENDLY_欧鲁诺克-裂心|r
.accept 10514 >>接任务: |cRXP_LOOT_历经沧桑......|r
.target Oronok Torn-heart
step
.goto Shadowmoon Valley,54.0,16.0
.use 30462 >>站在地上的小植物上，用|T132161:0|t[Oronok的野猪哨声]让附近的野猪挖出块茎
.complete 10514,1 
step
.goto Shadowmoon Valley,53.9,23.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧鲁诺克·裂心|r
.turnin 10514 >>交任务: |cRXP_FRIENDLY_历经沧桑......|r
.accept 10515 >>接任务: |cRXP_LOOT_严厉的教训|r
.target Oronok Torn-heart
step
.goto Shadowmoon Valley,56.6,17.0
>>右键单击摧毁|cRXP_ENEMY_Ravenous Flayer Egg|r。小心周围巡逻的精英
.complete 10515,1 
step
.goto Shadowmoon Valley,53.9,23.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧鲁诺克·裂心|r
.turnin 10515 >>交任务: |cRXP_FRIENDLY_严厉的教训|r
.accept 10519 >>接任务: |cRXP_LOOT_诅咒密码 - 真相和历史|r
.complete 10519,1 
.skipgossip
.target Oronok Torn-heart
step
.goto Shadowmoon Valley,53.9,23.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧鲁诺克·裂心|r
.turnin 10519 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 真相和历史|r
.accept 10521 >>接任务: |cRXP_LOOT_格洛姆托，欧鲁诺克之子|r
.accept 10527 >>接任务: |cRXP_LOOT_阿托尔，欧鲁诺克之子|r
.accept 10546 >>接任务: |cRXP_LOOT_伯拉克，欧鲁诺克之子|r
.target Oronok Torn-heart
step
.goto Shadowmoon Valley,62.5,28.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者希拉|r
.turnin 10574 >>交任务: |cRXP_FRIENDLY_灰舌腐蚀者|r
.accept 10575 >>接任务: |cRXP_LOOT_守望者的牢笼|r
.target Anchorite Ceyla
step << !Shaman
#completewith next
.goto Shadowmoon Valley,63.3,30.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂克斯|r
.fly Wildhammer Stronghold >>飞到野锤寨
.target Maddix
step << Shaman
.hs >>火炉到野锤寨
step
.goto Shadowmoon Valley,36.6,55.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺姆斯|r
.turnin 10678 >>交任务: |cRXP_FRIENDLY_主菜！|r
.isOnQuest 10678
.target Gnomus
step
.goto Shadowmoon Valley,39.5,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10586 >>交任务: |cRXP_FRIENDLY_击败战争使者！|r
.accept 10589 >>接任务: |cRXP_LOOT_控制权|r
.target Wing Commander Nuainn
step
.goto Shadowmoon Valley,47.5,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.turnin 10546 >>交任务: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.accept 10547 >>接任务: |cRXP_LOOT_血蓟交易......|r
.target Borak, Son of Oronok
step
.goto Shadowmoon Valley,43.5,57.4
>>掠夺地面上的|cRXP_PICK_Sketh'lon羽毛|r
.complete 10780,1 
>>将|cRXP_PICK_烂鸡蛋|r从地上偷走。要小心，因为他们会在抢劫时损坏你
.complete 10547,1 
step
.goto Shadowmoon Valley,35.2,40.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10780 >>交任务: |cRXP_FRIENDLY_斯克瑟隆羽毛|r
.accept 10782 >>接任务: |cRXP_LOOT_为杖头充能|r
.unitscan Parshah
step
.goto Shadowmoon Valley,42.8,45.0
.use 31360 >>装备|T135160:0|t[未完成的头饰]饰品，并在祭坛中央使用
.complete 10782,1 
step
.goto Shadowmoon Valley,35.2,40.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10782 >>交任务: |cRXP_FRIENDLY_为杖头充能|r
.accept 10808 >>接任务: |cRXP_LOOT_阻止黑暗教团|r
.unitscan Parshah
step
.goto Shadowmoon Valley,24.7,36.4
>>杀死|cRXP_ENEMY_Mo'arg武器制造者|r。掠夺他们以获得|cRXX_Loot_Rionion远程搬运工控制|r
.complete 10589,1 
.mob Mo'arg Weaponsmith
step
.goto Shadowmoon Valley,29.6,50.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿托尔的灵魂|r
.turnin 10527 >>交任务: |cRXP_FRIENDLY_阿托尔，欧鲁诺克之子|r
.accept 10528 >>接任务: |cRXP_LOOT_恶魔的水晶牢笼|r
.target Ar'tor, Son of Oronok
step
.goto Shadowmoon Valley,28.0,47.7
>>杀死|cRXP_ENEMY_Painmaster Gabissa|r。掠夺她获得|cRXP_Loot_水晶钥匙|r
.complete 10528,1 
.mob Painmistress Gabrissa
step
.goto Shadowmoon Valley,29.6,50.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿托尔的灵魂|r
.turnin 10528 >>交任务: |cRXP_FRIENDLY_恶魔的水晶牢笼|r
.accept 10537 >>接任务: |cRXP_LOOT_洛恩戈鲁，裂心之弓|r
.target Ar'tor, Son of Oronok
step
.goto Shadowmoon Valley,30.5,50.0
>>杀死|cRXP_ENEMY_Illidari|r。掠夺它们以获得|cRXP_Loot_Bow|r
.complete 10537,1 
.mob Illidari Dreadbringer
.mob Illidari Painlasher
.mob Illidari Shadowstalker
.mob Illidari Shocktrooper
step
.goto Shadowmoon Valley,29.5,50.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿托尔的灵魂|r
.turnin 10537 >>交任务: |cRXP_FRIENDLY_洛恩戈鲁，裂心之弓|r
.accept 10540 >>接任务: |cRXP_LOOT_诅咒密码 - 阿托尔的命令|r
.target Spirit of Ar'tor
step
.goto Shadowmoon Valley,29.5,57.5
>>当|cRXP_FRIENDLY_Ar'tor的|r精神跟随你时，向东南方向行进，在这一地区漫步，直到|cRXP_FRIENDLY_spirit of Ar'tor |r召唤|cRXT_ENEMY_Veneratus the Many|r
.complete 10540,1 
>>做好长期战斗的准备，|cRXP_ENEMY_Veneratus the Many|r的健康状况是普通暴徒的3倍
>>杀死|cRXP_ENEMY_Veneratus the Many|r
.mob Veneratus the Many
.target Spirit of Ar'tor
step
.goto Shadowmoon Valley,29.5,50.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿托尔的灵魂|r
.turnin 10540 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 阿托尔的命令|r
.accept 10541 >>接任务: |cRXP_LOOT_诅咒密码 - 第二块碎片|r
.target Spirit of Ar'tor
step
.goto Shadowmoon Valley,39.5,53.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10589 >>交任务: |cRXP_FRIENDLY_控制权|r
.accept 10766 >>接任务: |cRXP_LOOT_登陆场：灾难|r
.target Wing Commander Nuainn
step
.goto Shadowmoon Valley,40.7,60.1
.use 31386 >>用袋子里的|T135225:0|t[帕沙赫的职员]停止仪式
.complete 10808,1 
step
.goto Shadowmoon Valley,35.2,40.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10808 >>交任务: |cRXP_FRIENDLY_阻止黑暗教团|r
.unitscan Parshah
step
.goto Shadowmoon Valley,25.5,36.3,50 >>进入军团守卫传送机
step
.goto Shadowmoon Valley,40.9,22.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普雷西|r
.turnin 10766 >>交任务: |cRXP_FRIENDLY_登陆场：灾难|r
.accept 10606 >>接任务: |cRXP_LOOT_魔能机甲维修窍门大全|r
.target Plexi
step
.goto Shadowmoon Valley,39.4,19.6
>>杀死|cRXP_ENEMY_ Gutrick医生|r。为|cRXX_Loot_ Fel Reaver维护的艺术|r偷他的胸部
.complete 10606,2
.complete 10606,1 
.mob Doctor Gutrick
step
.goto Shadowmoon Valley,40.8,22.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普雷西|r
.turnin 10606 >>交任务: |cRXP_FRIENDLY_魔能机甲维修窍门大全|r
.accept 10612 >>接任务: |cRXP_LOOT_狂暴的魔能机甲|r
.target Plexi
step
.goto Shadowmoon Valley,40.8,21.7
>>解散您的宠物 << Hunter/Warlock
>>使用控制台控制|cRXP_FRIENDLY_Fel Reaver|r，并使用它销毁|cRXP_ENEMY_Infernals|r
.complete 10612,1 
.mob Deathforged Infernal
step
.goto Shadowmoon Valley,40.8,22.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普雷西|r
.turnin 10612 >>交任务: |cRXP_FRIENDLY_狂暴的魔能机甲|r
.accept 10744 >>接任务: |cRXP_LOOT_胜利的消息|r
.target Plexi
step
.goto Shadowmoon Valley,44.6,23.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格洛姆托，欧鲁诺克之子|r
.turnin 10521 >>交任务: |cRXP_FRIENDLY_格洛姆托，欧鲁诺克之子|r
.accept 10522 >>接任务: |cRXP_LOOT_诅咒密码 - 格洛姆托的命令|r
.target Grom'tor, Son of Oronok
step
.goto Shadowmoon Valley,46.0,28.2
>>杀死|cRXP_ENEMY_Coilskar Nagas|r。掠夺他们的|cRXD_Loot_Coilskar胸脯钥匙|r
>>打开箱子，直到你掠夺了诅咒密码的|cRXP_PICK_第一个片段|r
.complete 10522,1 
.mob Coilskar Defender
.mob Coilskar Muckwatcher
.mob Coilskar Myrmidon
.mob Coilskar Siren
.mob Coilskar Sorceress
.mob Coilskar Waterkeeper
step
.goto Shadowmoon Valley,44.6,23.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格洛姆托，欧鲁诺克之子|r
.turnin 10522 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 格洛姆托的命令|r
.accept 10523 >>接任务: |cRXP_LOOT_诅咒密码 - 第一块碎片|r
.target Grom'tor, Son of Oronok
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂克斯|r, |cRXP_FRIENDLY_布鲁贝克·雷足|r
>>|cRXP_WARN_箭头将指向最近的飞行主管|r
.fly Shattrath >>飞往沙塔斯城
.goto Shadowmoon Valley,37.6,55.3,-1
.goto Shadowmoon Valley,63.3,30.4,-1
.target Maddix
.target Brubeck Stormfoot
step
.goto Shattrath City,64.1,69.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暴食者托比亚斯|r
.turnin 10547 >>交任务: |cRXP_FRIENDLY_血蓟交易......|r
.accept 10550 >>接任务: |cRXP_LOOT_一捆血蓟|r
.target Tobias the Filth Gorger
step
#completewith next
.hs >>火炉到野锤寨
step
.goto Shadowmoon Valley,35.7,57.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库德兰·蛮锤|r
.turnin 10744 >>交任务: |cRXP_FRIENDLY_胜利的消息|r
.target Kurdran Wildhammer
step
.goto Shadowmoon Valley,47.5,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.turnin 10550 >>交任务: |cRXP_FRIENDLY_一捆血蓟|r
.accept 10570 >>接任务: |cRXP_LOOT_血蓟瘾君子|r
.target Borak, Son of Oronok
step
.goto Shadowmoon Valley,48.9,57.4
.use 30616 >>在桥的尽头把血蓟束放在你的袋子里
.complete 10570,1 
step
.goto Shadowmoon Valley,47.6,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.turnin 10570 >>交任务: |cRXP_FRIENDLY_血蓟瘾君子|r
.accept 10576 >>接任务: |cRXP_LOOT_影月谷的乔装者|r
.target Borak, Son of Oronok
step
.goto Shadowmoon Valley,49.6,62.2
>>杀死|cRXP_ENEMY_Eclipse|r。掠夺他们的|cRXX_Loot_Armor|r
.complete 10576,1 
.mob Eclipsion Archmage
.mob Eclipsion Blood Knight
.mob Eclipsion Bloodwarder
.mob Eclipsion Centurion
step
.goto Shadowmoon Valley,47.6,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.turnin 10576 >>交任务: |cRXP_FRIENDLY_影月谷的乔装者|r
.accept 10577 >>接任务: |cRXP_LOOT_伊利丹的信使......|r
.target Borak, Son of Oronok
step
.goto Shadowmoon Valley,46.5,71.9
.use 30639 >>在您的包中使用|T133564:0|t[血精灵伪装]
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_总指挥官卢斯克|r
.skipgossip
.target Grand Commander Ruusk
.complete 10577,1 
step
.goto Shadowmoon Valley,47.5,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.turnin 10577 >>交任务: |cRXP_FRIENDLY_伊利丹的信使......|r
.accept 10578 >>接任务: |cRXP_LOOT_诅咒密码 - 伯拉克的命令|r
.target Borak, Son of Oronok
step
#completewith next
.goto Shadowmoon Valley,37.6,55.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布鲁贝克·雷足|r
.fly the Altar of Sha'tar >>飞到沙塔祭坛
.target Brubeck Stormfoot
step
.goto Shadowmoon Valley,64.5,39.9
>>将您的|T133149:0|t[Spectrecles]装备在您的包中
>>杀死|cRXP_ENEMY_Karabor的神职人员|r。掠夺他们|cRXX_Loot_Gorefield的斗篷|r
.complete 10635,1 
.mob Cleric of Karabor
step << Druid/70
.goto Shadowmoon Valley,67.3,38.2
>>杀死|cRXP_ENEMY_Shadowmoon杀手|r、|cRXD_ENEMY_Darkwavers|r和|cRXP_ENEMY_Chosen |r
>>如果你没有飞行坐骑，跳过这个任务
.complete 10816,1 
.complete 10816,2 
.complete 10816,3 
.mob Shadowmoon Slayer
.mob Shadowmoon Chosen
.mob Shadowmoon Darkweaver
step << Druid/70
.goto Shadowmoon Valley,67.6,36.2
.use 31239 >>杀死|cRXP_ENEMY_Smith Gorlunk|r。抢他的|cRXX_Loot_Key Mold|r。点击你包里的|T134459:0|t[Primed Key Mold]
>>如果你没有飞行坐骑，跳过这个任务
.collect 31239,1,10754 
.accept 10754 >>接任务: |cRXP_LOOT_堡垒的钥匙|r
.unitscan Smith Gorlunk
step << Druid/70
.goto Shadowmoon Valley,68.8,49.2
>>杀死|cRXP_ENEMY_恶魔猎人启动|r和|cRXX_ENEMY_恶魔猎人恳求者|r。掠夺他们的|cRXD_Loot_Sunfury眼镜|r
>>如果你没有飞行坐骑，跳过这个任务
.complete 10587,1 
.mob Demon Hunter Supplicant
.mob Demon Hunter Initiate
step << Druid/70
.goto Shadowmoon Valley,61.2,29.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大主教欧纳拉|r, |cRXP_FRIENDLY_守备官奥鲁门|r
.turnin 10587 >>交任务: |cRXP_FRIENDLY_卡拉波训练场|r
.accept 10637 >>接任务: |cRXP_LOOT_必要的混乱|r
.turnin 10816 >>交任务: |cRXP_FRIENDLY_夺回圣地|r
.target Exarch Onaala
.target Vindicator Aluumen
step << Druid/70
.goto Shadowmoon Valley,69.7,51.3
>>杀死|cRXP_ENEMY_Sunfury Warlocks|r。掠夺它们以获得|cRXX_Loot_恶魔解除组织卷轴|r
.use 30811 >>在|cRXP_ENEMY_Azaloth|r上使用|T134937:0|t[恶魔解除诅咒卷轴]
.collect 30811,1 
.complete 10637,1 
.mob Sunfury Warlock
.mob Azaloth
step
.goto Shadowmoon Valley,57.3,49.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨诺鲁|r
.turnin 10575 >>交任务: |cRXP_FRIENDLY_守望者的牢笼|r
.accept 10622 >>接任务: |cRXP_LOOT_忠诚的证明|r
.target Sanoru
step
.goto Shadowmoon Valley,57.8,50.3
>>杀死|cRXP_ENEMY_Zandras|r
.complete 10622,1 
.mob Zandras
step
.goto Shadowmoon Valley,57.4,49.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨诺鲁|r
.turnin 10622 >>交任务: |cRXP_FRIENDLY_忠诚的证明|r
.accept 10628 >>接任务: |cRXP_LOOT_阿卡玛|r
.target Sanoru
step
.goto Shadowmoon Valley,58.1,48.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿卡玛|r
.turnin 10628 >>交任务: |cRXP_FRIENDLY_阿卡玛|r
.accept 10705 >>接任务: |cRXP_LOOT_先知乌达鲁|r
.target Akama
step
>>装备你的|T133149:0|t[Spectrecles]寻找卡拉博尔|r的|cRXP_ENEMY_Ghostriders。他们沿着主干道巡逻。为|cRXP_OOT_Gorefield的Trunchon|r掠夺它们
.complete 10636,1 
.mob Ghostrider of Karabor
step
.goto Shadowmoon Valley,58.2,70.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_上古影月之魂|r
.turnin 10635 >>交任务: |cRXP_FRIENDLY_占卜：血魔的披风|r
.turnin 10636 >>交任务: |cRXP_FRIENDLY_占卜：血魔的权杖|r
.target Ancient Shadowmoon Spirit
step << Druid/70
.goto Shadowmoon Valley,61.2,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大主教欧纳拉|r
.turnin 10637 >>交任务: |cRXP_FRIENDLY_必要的混乱|r
.accept 10640 >>接任务: |cRXP_LOOT_奥图里斯|r
.target Exarch Onaala
]])
RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#questguide << !tbc
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 69-70 影月谷 (占星者)
#version 5
#scryer
step
.goto Shattrath City,45.29,81.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师菲亚琳|r
.accept 10656 >>接任务: |cRXP_LOOT_日怒徽记|r
.turnin 10656 >>交任务: |cRXP_FRIENDLY_日怒徽记|r
.target Magistrix Fyalenn
step
.goto Shattrath City,42.89,91.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知沃雷塔尔|r
.accept 10416 >>接任务: |cRXP_LOOT_能量的聚合|r
.turnin 10416 >>交任务: |cRXP_FRIENDLY_能量的聚合|r
.target Voren'thal the Seer
step
.goto Shattrath City,64.1,41.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努特拉尔|r
.fly Allerian Stronghold >>飞向Allerian据点
.target Nutral
step << skip
.goto Terokkar Forest,50.8,54.7
>>前往灯火之墓，使用走廊尽头的古墓遗址
>>保护古墓守护者
.turnin 10842 >>交任务: |cRXP_FRIENDLY_复仇的灵魂|r
.target Draenei Tomb Guardian
step
#sticky
.zone Shadowmoon Valley >>前往: |cRXP_PICK_影月谷|r
step
.goto Shadowmoon Valley,39.5,53.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r

.accept 10562 >>接任务: |cRXP_LOOT_兵临城下！|r
.target Wing Commander Nuainn
step
.goto Shadowmoon Valley,38.8,54.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫骑士基尔兰|r
.accept 10569 >>接任务: |cRXP_LOOT_斯克瑟隆废墟|r
.target Gryphonrider Kieran
step
.goto Shadowmoon Valley,38.2,54.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Wanted Poster|r
.accept 10648 >>接任务: |cRXP_LOOT_通缉：乌鲁洛斯，影月谷的祸患|r
step
.goto Shadowmoon Valley,37.6,55.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布鲁贝克·雷足|r
.fp Wildhammer Stronghold >>获取野锤寨飞行路线
.target Brubeck Stormfoot
step
#sticky
.goto Shadowmoon Valley,36.8,54.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_仲裁者索鲁斯|r
.accept 10642 >>接任务: |cRXP_LOOT_要塞中的幽灵|r
.target Zorus the Judicator
step
.goto Shadowmoon Valley,36.6,55.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺姆斯|r
.accept 10661 >>接任务: |cRXP_LOOT_美味的脾脏！|r
.target Gnomus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大领主尤雷加尔|r, |cRXP_FRIENDLY_大地治愈者索弗鲁斯|r
.goto Shadowmoon Valley,36.3,57.0
.accept 10703 >>接任务: |cRXP_LOOT_穿好你的盔甲......|r
.accept 10772 >>接任务: |cRXP_LOOT_征服之路|r
.accept 10680 >>接任务: |cRXP_LOOT_古尔丹之手|r
.target Thane Yoregar
.target Earthmender Sophurus
step
.goto Shadowmoon Valley,37.1,58.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德雷格·掠云|r
.home >>将您的炉石设置为野锤寨
.target Dreg Cloudsweeper
step
.goto Shadowmoon Valley,40.8,52.3
>>杀死|cRXP_ENEMY_无间道攻击者|r
.complete 10562,1 
.mob Infernal Attacker
step
.goto Shadowmoon Valley,39.6,53.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10562 >>交任务: |cRXP_FRIENDLY_兵临城下！|r
.accept 10563 >>接任务: |cRXP_LOOT_前往军团要塞|r
.target Wing Commander Nuainn
step
#sticky
#label smv1
.goto Shadowmoon Valley,32.9,40.4,0
>>杀死|cRXP_ENEMY_Shadowmoon Valley野生动物|r（Diemetradons不算在内）
.complete 10703,1 
>>杀死|cRXP_ENEMY_Diemetradons |r。掠夺他们的|cRXX_Loot_Felfire Spleens|r
>>地面收集|cRXP_PICK_Ever-burning Ash|r
.complete 10642,1 
.complete 10661,1 
.mob Scorchshell Pincer
.mob Felboar
.mob Vilewing Chimaera
.mob Shadow Serpent
.mob Felfire Diemetradon
step
.goto Shadowmoon Valley,23.6,37.0
.use 30638 >>在阳台顶部的包中使用|T132763:0|t[方块魔术]
.complete 10563,1 
step
.goto Shadowmoon Valley,39.5,53.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10563 >>交任务: |cRXP_FRIENDLY_前往军团要塞|r
.accept 10572 >>接任务: |cRXP_LOOT_制造炸弹|r
.target Wing Commander Nuainn
step
.goto Shadowmoon Valley,22.3,35.6
>>掠夺被绿光环绕的|cRXP_PICK_Armor Plate|r
.complete 10572,2 
step
.use 30756 >>杀死|cRXP_ENEMY_Oversear Ripsaw|r。抢夺他的|cRXX_Loot_Shard|r。点击你包里的|T135241:0|t[Ilidari Bane Shard]
.collect 30756,1,10621
.accept 10621 >>接任务: |cRXP_LOOT_伊利达雷斩除碎片|r
.unitscan Overseer Ripsaw
step
.goto Shadowmoon Valley,26.3,41.2
>>在小池塘底部偷走|cRXP_PICK_Power Core |r
.complete 10572,1 
step
#requires smv1
.goto Shadowmoon Valley,39.5,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10572 >>交任务: |cRXP_FRIENDLY_制造炸弹|r
.accept 10564 >>接任务: |cRXP_LOOT_炸毁地狱火！|r
.target Wing Commander Nuainn
step
#sticky
.goto Shadowmoon Valley,36.8,55.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_仲裁者索鲁斯|r
.turnin 10642 >>交任务: |cRXP_FRIENDLY_要塞中的幽灵|r
.accept 10643 >>接任务: |cRXP_LOOT_影月先驱者|r
.unitscan Zorus the Judicator
step
.goto Shadowmoon Valley,36.6,55.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺姆斯|r
.turnin 10661 >>交任务: |cRXP_FRIENDLY_美味的脾脏！|r
.accept 10677 >>接任务: |cRXP_LOOT_第二道菜......|r
.target Gnomus
step
.goto Shadowmoon Valley,36.9,54.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥丁·雷拳|r
.turnin 10621 >>交任务: |cRXP_FRIENDLY_伊利达雷斩除碎片|r
.target Ordinn Thunderfist
step
.goto Shadowmoon Valley,36.3,57.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大领主尤雷加尔|r
.turnin 10703 >>交任务: |cRXP_FRIENDLY_穿好你的盔甲......|r
.target Thane Yoregar
step
.goto Shadowmoon Valley,37.2,55.3
.use 30719 >>在您的行李中配备|T133149:0|t[Spectrecles]
>>杀死|cRXP_ENEMY_Shadowmoon Harbingers|r
.complete 10643,1 
.mob Shadowmoon Harbinger
step
.goto Shadowmoon Valley,36.7,55.2
>>|cRXP_WARN_装备你的普通头盔！|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_仲裁者索鲁斯|r
.turnin 10643 >>交任务: |cRXP_FRIENDLY_影月先驱者|r
.accept 10644 >>接任务: |cRXP_LOOT_塔隆-血魔的传说|r
.unitscan Zorus the Judicator
step
.goto Shadowmoon Valley,42.2,45.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大地治愈者托洛克|r
.turnin 10680 >>交任务: |cRXP_FRIENDLY_古尔丹之手|r
.accept 10458 >>接任务: |cRXP_LOOT_愤怒的火灵和地灵|r
.target Earthmender Torlok
step
.goto Shadowmoon Valley,46.7,46.1
.use 30094 >>使用您包中的|T135462:0|t[灵魂图腾]并杀死图腾旁边的|cRXP_ENEMY_火元素|r和|cRXX_ENEMY_土元素|r
.complete 10458,1 
.complete 10458,2 
.mob Enraged Fire Spirit
.mob Enraged Earth Spirit
step
.goto Shadowmoon Valley,42.1,45.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大地治愈者托洛克|r
.turnin 10458 >>交任务: |cRXP_FRIENDLY_愤怒的火灵和地灵|r
.accept 10480 >>接任务: |cRXP_LOOT_愤怒的水灵|r
.target Earthmender Torlok
step
.goto Shadowmoon Valley,52.17,58.45
>>跑上山，慢慢前进，直到完成任务目标
.complete 10772,1
step
.goto Shadowmoon Valley,51.0,59.1
.use 31310 >>在航路点位置使用行李中的|T135619:0|t[野锤火炬枪]召唤一名|cRXP_FRIENDLY_Wildhammer鹰头狮骑士|r
.turnin 10772 >>交任务: |cRXP_FRIENDLY_征服之路|r
.accept 10773 >>接任务: |cRXP_LOOT_扫清道路|r
.target Wildhammer Gryphon Rider
step
.goto Shadowmoon Valley,54.7,58.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劝诫者瓦伦|r
.accept 10807 >>接任务: |cRXP_LOOT_灰舌破碎者|r
.target Varen the Reclaimer
step
.goto Shadowmoon Valley,56.3,57.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷索尔|r
.fp Sanctum of the Stars >>获得星际庇护所飞行路线
.target Alieshor
step
.goto Shadowmoon Valley,55.8,58.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞萨·射日者|r
.accept 10687 >>接任务: |cRXP_LOOT_卡拉波训练场|r
.target Larissa Sunstrike
step
.goto Shadowmoon Valley,56.3,59.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师塞里斯|r
.accept 10683 >>接任务: |cRXP_LOOT_巴尔里石板|r
.target Arcanist Thelis
step
.goto Shadowmoon Valley,60.0,35.6
>>杀死区域内的|cRXP_ENEMY_Ashtongues|r。掠夺|cRX_PICK_Baa'ri碎片|r
.complete 10683,1 
.complete 10807,1 
.complete 10807,2 
.complete 10807,3 
.mob Ashtongue Handler
.mob Ashtongue Warrior
.mob Ashtongue Shaman
step
#sticky
#completewith gizzard
.goto Shadowmoon Valley,51.4,27.5,0
>>杀死该区域东部熔岩流周围的|cRXP_ENEMY_Greater Felfire Diemetradons|r
.complete 10677,1 
>>这个任务有一个超低的下降率。如果你在最初几次杀戮中没有得到它，跳过这一步
.mob Greater Felfire Diemetradon
step
.goto Shadowmoon Valley,49.7,24.2
.use 30094 >>使用您包中的|T135462:0|t[精灵图腾]并杀死图腾旁边的|cRXP_ENEMY_Water Elements|r
.complete 10480,1 
.mob Enraged Water Spirit
step
.goto Shadowmoon Valley,38.8,31.6
>>杀死|cRXP_ENEMY_Dark秘会鹰眼|r、|cRXD_ENEMY_Ravenguard|r和|cRXP_ENEMY_Shadowmancers|r。掠夺他们的|cRXT_OOT_Journals|r
.complete 10569,1 
.complete 10569,2 
.complete 10569,3 
.mob Dark Conclave Hawkeye
.mob Dark Conclave Ravenguard
.mob Dark Conclave Shadowmancer
step
.goto Shadowmoon Valley,22.7,39.9
.use 30614 >>在地上的绿色圆圈处，用袋子里的炸弹
.complete 10564,1 
step
.hs >>火炉到野锤寨
step
#label gizzard
.isQuestComplete 10677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺姆斯|r
.goto Shadowmoon Valley,36.5,55.3
.turnin 10677 >>交任务: |cRXP_FRIENDLY_第二道菜......|r
.target Gnomus
step
.goto Shadowmoon Valley,36.5,55.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺姆斯|r
.accept 10678 >>接任务: |cRXP_LOOT_主菜！|r
.isQuestTurnedIn 10677
.target Gnomus
step
.goto Shadowmoon Valley,38.8,54.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫骑士基尔兰|r
.turnin 10569 >>交任务: |cRXP_FRIENDLY_斯克瑟隆废墟|r
.accept 10759 >>接任务: |cRXP_LOOT_寻找逃亡者|r
.target Gryphonrider Kieran
step
.goto Shadowmoon Valley,39.5,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10564 >>交任务: |cRXP_FRIENDLY_炸毁地狱火！|r
.accept 10573 >>接任务: |cRXP_LOOT_死亡熔炉|r
.target Wing Commander Nuainn
step
.goto Shadowmoon Valley,42.2,45.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大地治愈者托洛克|r
.turnin 10480 >>交任务: |cRXP_FRIENDLY_愤怒的水灵|r
.accept 10481 >>接任务: |cRXP_LOOT_愤怒的气灵|r
.target Earthmender Torlok
step
.goto Shadowmoon Valley,35.3,39.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10759 >>交任务: |cRXP_FRIENDLY_寻找逃亡者|r
.accept 10777 >>接任务: |cRXP_LOOT_阿斯迦的图腾|r
.unitscan Parshah
step
.goto Shadowmoon Valley,40.5,41.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊万·蛮翼|r
.turnin 10573 >>交任务: |cRXP_FRIENDLY_死亡熔炉|r
.accept 10582 >>接任务: |cRXP_LOOT_暗影议会的爪牙|r
.target Stormer Ewan Wildwing
step
.goto Shadowmoon Valley,40.3,38.1
>>杀死|cRXP_ENEMY_死亡锻造守护者|r和|cRXX_ENEMY_召唤师|r
.complete 10582,1 
.complete 10582,2 
.mob Deathforge Guardian
.mob Deathforge Summoner
step
.goto Shadowmoon Valley,40.5,41.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊万·蛮翼|r
.turnin 10582 >>交任务: |cRXP_FRIENDLY_暗影议会的爪牙|r
.accept 10583 >>接任务: |cRXP_LOOT_弗兰尼斯的命运|r
.accept 10585 >>接任务: |cRXP_LOOT_召唤之厅|r
.target Stormer Ewan Wildwing
step
#completewith next
.goto Shadowmoon Valley,40.16,38.23,15 >>从北部入口进入死亡堡
step
.goto Shadowmoon Valley,34.7,39.9
>>杀死|cRXP_ENEMY_Deathforge Smiths|r和|cRXP_ENEMY_Deathforge Tinkers|r。掠夺它们以获得|cRXD_Loot_元素置换器|r
.complete 10585,2 
>>单击走廊尽头的死矮人以获取|cRXP_PICK_Flanis的背包|r
.complete 10583,1 
.mob Deathforge Smith
.mob Deathforge Tinkerer
step
.goto Shadowmoon Valley,37.8,38.3
.use 30672>>跳下桥，在召唤点使用包中的|T135470:0|t[元素置换器]
.complete 10585,1 
step
.goto Shadowmoon Valley,40.4,41.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊万·蛮翼|r
.turnin 10583 >>交任务: |cRXP_FRIENDLY_弗兰尼斯的命运|r
.turnin 10585 >>交任务: |cRXP_FRIENDLY_召唤之厅|r
.accept 10586 >>接任务: |cRXP_LOOT_击败战争使者！|r
.target Stormer Ewan Wildwing
step
.goto Shadowmoon Valley,39.0,46.7
>>从顶部入口进入影堡，穿过锁着的大门
>>杀死|cRXP_ENEMY_Warbringer Razun|r。掠夺他获得|cRXX_Loot_Razuun的命令|r
.complete 10586,1 
.complete 10586,2 
.mob Warbringer Razuun
step
.goto Shadowmoon Valley,39.7,29.7
>>杀死|cRXP_ENEMY_Asghar|r。掠夺他的|cRXX_Loot_Totam|r
.complete 10777,1 
.mob Asghar
step
.goto Shadowmoon Valley,35.3,39.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10777 >>交任务: |cRXP_FRIENDLY_阿斯迦的图腾|r
.accept 10778 >>接任务: |cRXP_LOOT_莉安丝魔棒|r
.unitscan Parshah
step
.goto Shadowmoon Valley,39.5,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10586 >>交任务: |cRXP_FRIENDLY_击败战争使者！|r
.accept 10589 >>接任务: |cRXP_LOOT_控制权|r
.target Wing Commander Nuainn
step
.goto Shadowmoon Valley,47.5,71.7
>>杀死|cRXP_ENEMY_EclipseArchmages|r、|cRXD_ENEMY_Bloodwarders|r和|cRXP_ENEMY_Centurions|r
.complete 10778,1 
>>打开营地后面的箱子
.complete 10778,2 
.mob Eclipsion Archmage
.mob Eclipsion Bloodwarder
.mob Eclipsion Centurion
step
.goto Shadowmoon Valley,54.8,58.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劝诫者瓦伦|r
.turnin 10807 >>交任务: |cRXP_FRIENDLY_灰舌破碎者|r
.accept 10817 >>接任务: |cRXP_LOOT_严厉的报复|r
.target Varen the Reclaimer
step
.goto Shadowmoon Valley,56.3,59.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师塞里斯|r
.turnin 10683 >>交任务: |cRXP_FRIENDLY_巴尔里石板|r
.accept 10684 >>接任务: |cRXP_LOOT_长者奥洛努|r
.target Arcanist Thelis
step
.goto Shadowmoon Valley,56.1,44.3
>>杀死|cRXP_ENEMY_Felspine the Greater|r。掠夺他|cRXD_Loot_Felspine的隐藏物|r
.complete 10678,1 
.isOnQuest 10678
.mob Felspine the Greater
step
.goto Shadowmoon Valley,57.2,32.9
>>杀死阳台顶部的|cRXP_ENEMY_Oronu|r
.complete 10684,1 
.mob Oronu the Elder
step
.goto Shadowmoon Valley,56.2,59.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师塞里斯|r
.turnin 10684 >>交任务: |cRXP_FRIENDLY_长者奥洛努|r
.accept 10685 >>接任务: |cRXP_LOOT_灰舌腐蚀者|r
.target Arcanist Thelis
step
#sticky
#label air
.goto Shadowmoon Valley,62.7,62.1,60,0
.use 30094 >>使用您包中的|T135462:0|t[精灵图腾]并杀死图腾旁边的|cRXP_ENEMY_Air Elements|r
.complete 10481,1 
.mob Enraged Air Spirit
step
.goto Shadowmoon Valley,58.3,70.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_上古影月之魂|r
.turnin 10644 >>交任务: |cRXP_FRIENDLY_塔隆-血魔的传说|r
.accept 10634 >>接任务: |cRXP_LOOT_占卜：血魔的护甲|r
.accept 10635 >>接任务: |cRXP_LOOT_占卜：血魔的披风|r
.accept 10636 >>接任务: |cRXP_LOOT_占卜：血魔的权杖|r
.target Ancient Shadowmoon Spirit
step
.goto Shadowmoon Valley,57.1,73.7
>>摧毁保护|cRXP_ENEMY_Haalum|r的图腾。杀死并掠夺他的|cRXX_loot_Medallion碎片|r
.complete 10685,2 
.mob Haalum
step
#requires air
#sticky
>>每当你穿过主干道时，装备你的|T133149:0|t[Spectrecles]寻找卡拉博尔的|cRXP_ENEMY_Ghostrider|r。他们以逆时针方向巡逻该区域
>>为|cRXP_OOT_Gorefield的Trunchon|r掠夺它们
.complete 10636,1
.mob Ghostrider of Karabor
step
#requires air
.goto Shadowmoon Valley,51.2,52.8
>>摧毁保护|cRXP_ENEMY_Eykenen|r的图腾。杀死并掠夺他的|cRXP_loot_Medallion碎片|r
.complete 10685,1 
.mob Eykenen
step
.goto Shadowmoon Valley,48.3,39.6
>>摧毁保护|cRXP_ENEMY_Uylaru|r的图腾。杀死并掠夺他的|cRXX_loot_Medallion碎片|r
.complete 10685,4 
.mob Uylaru
step
.goto Shadowmoon Valley,42.2,45.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大地治愈者托洛克|r
.turnin 10481 >>交任务: |cRXP_FRIENDLY_愤怒的气灵|r
.accept 10513 >>接任务: |cRXP_LOOT_欧鲁诺克-裂心|r
.target Earthmender Torlok
step
.goto Shadowmoon Valley,35.2,40.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10778 >>交任务: |cRXP_FRIENDLY_莉安丝魔棒|r
.accept 10780 >>接任务: |cRXP_LOOT_斯克瑟隆羽毛|r
.unitscan Parshah
step
.goto Shadowmoon Valley,24.7,36.4
>>杀死|cRXP_ENEMY_Mo'arg武器制造者|r。掠夺他们以获得|cRXX_Loot_Rionion远程搬运工控制|r
.complete 10589,1 
.mob Mo'arg Weaponsmith
step
.goto Shadowmoon Valley,39.5,53.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_空军指挥官努埃恩|r
.turnin 10589 >>交任务: |cRXP_FRIENDLY_控制权|r
.accept 10766 >>接任务: |cRXP_LOOT_登陆场：灾难|r
.target Wing Commander Nuainn
step
.goto Shadowmoon Valley,36.6,55.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺姆斯|r
.turnin 10678 >>交任务: |cRXP_FRIENDLY_主菜！|r
.isOnQuest 10678
.target Gnomus
step
.goto Shadowmoon Valley,43.7,58.0
>>掠夺地面上的|cRXP_PICK_Sketh'lon羽毛|r
.complete 10780,1 
step
.goto Shadowmoon Valley,35.2,40.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10780 >>交任务: |cRXP_FRIENDLY_斯克瑟隆羽毛|r
.accept 10782 >>接任务: |cRXP_LOOT_为杖头充能|r
.unitscan Parshah
step
.goto Shadowmoon Valley,42.8,45.0
.use 31360 >>装备|T135160:0|t[未完成的头饰]饰品，并在祭坛中央使用
.complete 10782,1 
step
.goto Shadowmoon Valley,35.2,40.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10782 >>交任务: |cRXP_FRIENDLY_为杖头充能|r
.accept 10808 >>接任务: |cRXP_LOOT_阻止黑暗教团|r
.unitscan Parshah
step
#sticky
#completewith next
.goto Shadowmoon Valley,25.5,36.3,42
>>进入军团守卫传送机
step
.goto Shadowmoon Valley,40.9,22.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普雷西|r
.turnin 10766 >>交任务: |cRXP_FRIENDLY_登陆场：灾难|r
.accept 10606 >>接任务: |cRXP_LOOT_魔能机甲维修窍门大全|r
.target Plexi
step
.goto Shadowmoon Valley,39.4,19.6
>>杀死|cRXP_ENEMY_ Gutrick医生|r。为|cRXX_Loot_ Fel Reaver维护的艺术|r偷他的胸部
.complete 10606,2
.complete 10606,1 
.mob Doctor Gutrick
step
.goto Shadowmoon Valley,40.8,22.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普雷西|r
.turnin 10606 >>交任务: |cRXP_FRIENDLY_魔能机甲维修窍门大全|r
.accept 10612 >>接任务: |cRXP_LOOT_狂暴的魔能机甲|r
.target Plexi
step
.goto Shadowmoon Valley,40.8,21.7
>>解散您的宠物 << Hunter/Warlock
>>使用控制台控制|cRXP_FRIENDLY_Fel Reaver|r，并使用它销毁|cRXP_ENEMY_Infernals|r
.complete 10612,1 
.mob Deathforged Infernal
step
.goto Shadowmoon Valley,40.8,22.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普雷西|r
.turnin 10612 >>交任务: |cRXP_FRIENDLY_狂暴的魔能机甲|r
.accept 10744 >>接任务: |cRXP_LOOT_胜利的消息|r
.target Plexi
step
.goto Shadowmoon Valley,49.9,23.0
>>摧毁保护|cRXP_ENEMY_Lakaan|r的图腾。杀死并掠夺他的|cRXX_loot_Medallion碎片|r
.complete 10685,3 
.mob Lakaan
step
.goto Shadowmoon Valley,54.0,23.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧鲁诺克·裂心|r
.turnin 10513 >>交任务: |cRXP_FRIENDLY_欧鲁诺克-裂心|r
.accept 10514 >>接任务: |cRXP_LOOT_历经沧桑......|r
.target Oronok Torn-heart
step
.goto Shadowmoon Valley,54.0,16.0
.use 30462 >>站在地上的小植物上，用|T132161:0|t[Oronok的野猪哨声]让附近的野猪挖出块茎
.complete 10514,1 
step
.goto Shadowmoon Valley,53.9,23.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧鲁诺克·裂心|r
.turnin 10514 >>交任务: |cRXP_FRIENDLY_历经沧桑......|r
.accept 10515 >>接任务: |cRXP_LOOT_严厉的教训|r
.target Oronok Torn-heart
step
.goto Shadowmoon Valley,56.6,17.0
>>右键单击摧毁|cRXP_ENEMY_Ravenous Flayer Egg|r。小心周围巡逻的精英
.complete 10515,1 
step
.goto Shadowmoon Valley,53.9,23.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧鲁诺克·裂心|r
.turnin 10515 >>交任务: |cRXP_FRIENDLY_严厉的教训|r
.accept 10519 >>接任务: |cRXP_LOOT_诅咒密码 - 真相和历史|r
.complete 10519,1 
.skipgossip
.target Oronok Torn-heart
step
.goto Shadowmoon Valley,53.9,23.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧鲁诺克·裂心|r
.turnin 10519 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 真相和历史|r
.accept 10521 >>接任务: |cRXP_LOOT_格洛姆托，欧鲁诺克之子|r
.accept 10527 >>接任务: |cRXP_LOOT_阿托尔，欧鲁诺克之子|r
.accept 10546 >>接任务: |cRXP_LOOT_伯拉克，欧鲁诺克之子|r
.target Oronok Torn-heart
step
.goto Shadowmoon Valley,44.6,23.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格洛姆托，欧鲁诺克之子|r
.turnin 10521 >>交任务: |cRXP_FRIENDLY_格洛姆托，欧鲁诺克之子|r
.accept 10522 >>接任务: |cRXP_LOOT_诅咒密码 - 格洛姆托的命令|r
.target Grom'tor, Son of Oronok
step
.goto Shadowmoon Valley,46.0,28.2
>>杀死|cRXP_ENEMY_Coilskar Nagas|r。掠夺他们的|cRXD_Loot_Coilskar胸脯钥匙|r
>>打开箱子，直到你掠夺了诅咒密码的|cRXP_PICK_第一个片段|r
.complete 10522,1 
.mob Coilskar Defender
.mob Coilskar Muckwatcher
.mob Coilskar Myrmidon
.mob Coilskar Siren
.mob Coilskar Sorceress
.mob Coilskar Waterkeeper
step
.goto Shadowmoon Valley,44.6,23.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格洛姆托，欧鲁诺克之子|r
.turnin 10522 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 格洛姆托的命令|r
.accept 10523 >>接任务: |cRXP_LOOT_诅咒密码 - 第一块碎片|r
.target Grom'tor, Son of Oronok
step
.hs >>火炉到野锤寨
step
.goto Shadowmoon Valley,35.7,57.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库德兰·蛮锤|r
.turnin 10744 >>交任务: |cRXP_FRIENDLY_胜利的消息|r
.target Kurdran Wildhammer
step
.goto Shadowmoon Valley,47.5,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.turnin 10546 >>交任务: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.accept 10547 >>接任务: |cRXP_LOOT_血蓟交易......|r
.target Borak, Son of Oronok
step
.goto Shadowmoon Valley,40.7,60.1
.use 31386 >>用袋子里的|T135225:0|t[帕沙赫的职员]停止仪式
.complete 10808,1 
step
.goto Shadowmoon Valley,45.1,57.4
>>将|cRXP_PICK_烂鸡蛋|r从地上偷走。要小心，因为他们会在抢劫时损坏你
.complete 10547,1 
step
.goto Shadowmoon Valley,35.2,40.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕沙恩|r
.turnin 10808 >>交任务: |cRXP_FRIENDLY_阻止黑暗教团|r
.unitscan Parshah
step
.goto Shadowmoon Valley,29.6,50.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿托尔的灵魂|r
.turnin 10527 >>交任务: |cRXP_FRIENDLY_阿托尔，欧鲁诺克之子|r
.accept 10528 >>接任务: |cRXP_LOOT_恶魔的水晶牢笼|r
.target Ar'tor, Son of Oronok
step
.goto Shadowmoon Valley,28.0,47.7
>>杀死|cRXP_ENEMY_Painmaster Gabissa|r。掠夺她获得|cRXP_Loot_水晶钥匙|r
.complete 10528,1 
.mob Painmistress Gabrissa
step
.goto Shadowmoon Valley,29.6,50.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿托尔的灵魂|r
.turnin 10528 >>交任务: |cRXP_FRIENDLY_恶魔的水晶牢笼|r
.accept 10537 >>接任务: |cRXP_LOOT_洛恩戈鲁，裂心之弓|r
.target Ar'tor, Son of Oronok
step
.goto Shadowmoon Valley,30.5,50.0
>>杀死|cRXP_ENEMY_Illidari|r。掠夺它们以获得|cRXP_Loot_Bow|r
.complete 10537,1 
.mob Illidari Dreadbringer
.mob Illidari Painlasher
.mob Illidari Shadowstalker
.mob Illidari Shocktrooper
step
.goto Shadowmoon Valley,29.5,50.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿托尔的灵魂|r
.turnin 10537 >>交任务: |cRXP_FRIENDLY_洛恩戈鲁，裂心之弓|r
.accept 10540 >>接任务: |cRXP_LOOT_诅咒密码 - 阿托尔的命令|r
.target Spirit of Ar'tor
step
.goto Shadowmoon Valley,29.5,57.5
>>当|cRXP_FRIENDLY_Ar'tor的|r精神跟随你时，向东南方向行进，在这一地区漫步，直到|cRXP_FRIENDLY_spirit of Ar'tor |r召唤|cRXT_ENEMY_Veneratus the Many|r
.complete 10540,1 
>>做好长期战斗的准备，|cRXP_ENEMY_Veneratus the Many|r的健康状况是普通暴徒的3倍
.mob Veneratus the Many
.target Spirit of Ar'tor
step
.goto Shadowmoon Valley,29.5,50.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿托尔的灵魂|r
.turnin 10540 >>交任务: |cRXP_FRIENDLY_诅咒密码 - 阿托尔的命令|r
.accept 10541 >>接任务: |cRXP_LOOT_诅咒密码 - 第二块碎片|r
.target Spirit of Ar'tor
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂克斯|r, |cRXP_FRIENDLY_布鲁贝克·雷足|r
>>|cRXP_WARN_箭头将指向最近的飞行主管|r
.fly Shattrath >>飞往沙塔斯城
.goto Shadowmoon Valley,37.6,55.3,-1
.goto Shadowmoon Valley,63.3,30.4,-1
.target Maddix
.target Brubeck Stormfoot
step
.goto Shattrath City,64.1,69.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暴食者托比亚斯|r
.turnin 10547 >>交任务: |cRXP_FRIENDLY_血蓟交易......|r
.accept 10550 >>接任务: |cRXP_LOOT_一捆血蓟|r
.target Tobias the Filth Gorger
step
#completewith next
.goto Shattrath City,64.05,41.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努特拉尔|r
.fly Wildhammer Stronghold >>飞到野锤寨
.target Nutral
step
.goto Shadowmoon Valley,47.5,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.turnin 10550 >>交任务: |cRXP_FRIENDLY_一捆血蓟|r
.accept 10570 >>接任务: |cRXP_LOOT_血蓟瘾君子|r
.target Borak, Son of Oronok
step
.goto Shadowmoon Valley,48.9,57.4
.use 30616 >>在桥的尽头把血蓟束放在你的袋子里
.complete 10570,1 
step
.goto Shadowmoon Valley,47.6,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.turnin 10570 >>交任务: |cRXP_FRIENDLY_血蓟瘾君子|r
.accept 10576 >>接任务: |cRXP_LOOT_影月谷的乔装者|r
.target Borak, Son of Oronok
step
.goto Shadowmoon Valley,49.6,62.2
>>杀死|cRXP_ENEMY_Eclipse|r。掠夺他们的|cRXX_Loot_Armor|r
.complete 10576,1 
.mob Eclipsion Archmage
.mob Eclipsion Blood Knight
.mob Eclipsion Bloodwarder
.mob Eclipsion Centurion
step
.goto Shadowmoon Valley,47.6,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.turnin 10576 >>交任务: |cRXP_FRIENDLY_影月谷的乔装者|r
.accept 10577 >>接任务: |cRXP_LOOT_伊利丹的信使......|r
.target Borak, Son of Oronok
step
.goto Shadowmoon Valley,46.5,71.9
.use 30639 >>在您的包中使用|T133564:0|t[血精灵伪装]
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_总指挥官卢斯克|r
.skipgossip
.target Grand Commander Ruusk
.complete 10577,1 
step
.goto Shadowmoon Valley,47.5,57.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r
.turnin 10577 >>交任务: |cRXP_FRIENDLY_伊利丹的信使......|r
.accept 10578 >>接任务: |cRXP_LOOT_诅咒密码 - 伯拉克的命令|r
.target Borak, Son of Oronok
step
.goto Shadowmoon Valley,56.3,59.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师塞里斯|r
.turnin 10685 >>交任务: |cRXP_FRIENDLY_灰舌腐蚀者|r
.accept 10686 >>接任务: |cRXP_LOOT_守望者的牢笼|r
.target Arcanist Thelis
step
.goto Shadowmoon Valley,56.3,59.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伦德玛尔|r
.home >>把你的炉石放在星辰庇护所
.target Roldemar
step
.goto Shadowmoon Valley,57.3,49.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨诺鲁|r
.turnin 10686 >>交任务: |cRXP_FRIENDLY_守望者的牢笼|r
.accept 10622 >>接任务: |cRXP_LOOT_忠诚的证明|r
.target Sanoru
step
.goto Shadowmoon Valley,57.8,50.3
>>杀死|cRXP_ENEMY_Zandras|r
.complete 10622,1 
.mob Zandras
step
.goto Shadowmoon Valley,57.4,49.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨诺鲁|r
.turnin 10622 >>交任务: |cRXP_FRIENDLY_忠诚的证明|r
.accept 10628 >>接任务: |cRXP_LOOT_阿卡玛|r
.target Sanoru
step
.goto Shadowmoon Valley,58.1,48.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿卡玛|r
.turnin 10628 >>交任务: |cRXP_FRIENDLY_阿卡玛|r
.accept 10705 >>接任务: |cRXP_LOOT_先知乌达鲁|r
.target Akama
step
.goto Shadowmoon Valley,64.5,39.9
>>将您的|T133149:0|t[Spectrecles]装备在您的包中
>>杀死|cRXP_ENEMY_Karabor的神职人员|r。掠夺他们|cRXX_Loot_Gorefield的斗篷|r
.complete 10635,1 
.mob Cleric of Karabor
step << Druid/70
.goto Shadowmoon Valley,68.8,49.2
>>杀死|cRXP_ENEMY_恶魔猎人启动|r和|cRXX_ENEMY_恶魔猎人恳求者|r。掠夺他们的|cRXD_Loot_Sunfury眼镜|r
>>如果你没有飞行坐骑，跳过这个任务
.complete 10687,1 
.mob Demon Hunter Supplicant
.mob Demon Hunter Initiate
step << Druid/70
.goto Shadowmoon Valley,55.8,58.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞萨·射日者|r
.turnin 10687 >>交任务: |cRXP_FRIENDLY_卡拉波训练场|r
.accept 10688 >>接任务: |cRXP_LOOT_必要的混乱|r
.target Larissa Sunstrike
step << Druid/70
.goto Shadowmoon Valley,69.8,51.5
>>杀死|cRXP_ENEMY_Sunfury Warlocks|r。掠夺它们以获得|cRXX_Loot_恶魔解除组织卷轴|r
.use 30811 >>在|cRXP_ENEMY_Azaloth|r上使用|T134937:0|t[恶魔解除诅咒卷轴]
.collect 30811,1 
.complete 10688,1 
.mob Sunfury Warlock
.mob Azaloth
step << Druid/70
.goto Shadowmoon Valley,67.4,38.0
>>杀死|cRXP_ENEMY_Shadowmoon杀手|r、|cRXD_ENEMY_Darkwavers|r和|cRXP_ENEMY_Chosen |r
>>如果你没有飞行坐骑，跳过这个任务
.complete 10817,1 
.complete 10817,2 
.complete 10817,3 
.mob Shadowmoon Slayer
.mob Shadowmoon Chosen
.mob Shadowmoon Darkweaver
step << Druid/70
.goto Shadowmoon Valley,67.6,36.2
.use 31239 >>杀死|cRXP_ENEMY_Smith Gorlunk|r。抢他的|cRXX_Loot_Key Mold|r。点击你包里的|T134459:0|t[Primed Key Mold]
>>如果你没有飞行坐骑，跳过这个任务
.collect 31239,1,10754 
.accept 10754 >>接任务: |cRXP_LOOT_堡垒的钥匙|r
.unitscan Smith Gorlunk
step
.hs >>通往星星圣地的心
step << Druid/70
.goto Shadowmoon Valley,55.8,58.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞萨·射日者|r
.turnin 10688 >>交任务: |cRXP_FRIENDLY_必要的混乱|r
.accept 10689 >>接任务: |cRXP_LOOT_奥图里斯|r
.target Larissa Sunstrike
step
.goto Shadowmoon Valley,54.8,58.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劝诫者瓦伦|r
.turnin 10817 >>交任务: |cRXP_FRIENDLY_严厉的报复|r
.target Varen the Reclaimer
step
>>装备你的|T133149:0|t[Spectrecles]寻找卡拉博尔|r的|cRXP_ENEMY_Ghostriders。他们沿着主干道巡逻。为|cRXP_OOT_Gorefield的Trunchon|r掠夺它们
.complete 10636,1 
.mob Ghostrider of Karabor
step
.goto Shadowmoon Valley,58.2,70.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_上古影月之魂|r
.turnin 10635 >>交任务: |cRXP_FRIENDLY_占卜：血魔的披风|r
.turnin 10636 >>交任务: |cRXP_FRIENDLY_占卜：血魔的权杖|r
.mob Ancient Shadowmoon Spirit
]])
RXPGuides.RegisterGuide([[
#version 5
#cata
#Cata
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 71-73 北风苔原
#version 5
#displayname 69-73 Borean Tundra << !wotlk
#next 72-74龙骨荒野；73-75灰熊丘陵 << wotlk
#next 73-74 Dragonblight << !wotlk
step
.goto 1453/0,1407.6,-8291.2 << !wotlk
.goto StormwindNew,43.5,52.7,70,0 << wotlk
.goto StormwindNew,18.47,26.49 << wotlk
>>前往暴风港
.zone BoreanTundra >>乘船前往Borean Tundra << !wotlk
.zone BoreanTundra >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丽莎·坦纳|r << wotlk
.skipgossip << wotlk
.target Leesha Tannerby << wotlk
step
#completewith enlist
.goto BoreanTundra,58.97,68.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师托马斯|r
.fp Valiance Keep >>获取Valiance保持飞行路线
.target Tomas Riverwell
step
#completewith Hawthorn5
.groundgoto BoreanTundra,58.5,68.3,15,0
.goto BoreanTundra,58.29,68.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹姆斯|r
.home >>将您的炉石设置为Valiance Keep
>>|cRXP_BUY_如果需要，购买新的食物/水|r
.target James Deacon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_征募官布莱瑟|r, |cRXP_FRIENDLY_罗里克·玛克雷尔|r
.accept 11672 >>接任务: |cRXP_LOOT_应征入伍|r
.goto BoreanTundra,57.85,67.60
.accept 13088 >>接任务: |cRXP_LOOT_诺森德的厨师|r
.goto BoreanTundra,57.93,71.54
.skill cooking,<350,1
.target Recruitment Officer Blythe
.target Rollick MacKreel
step
#label enlist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_征募官布莱瑟|r
.accept 11672 >>接任务: |cRXP_LOOT_应征入伍|r
.goto BoreanTundra,57.85,67.60
.target Recruitment Officer Blythe
step
#optional
#completewith next
.goto BoreanTundra,57.1,71.8,15,0
.goto BoreanTundra,57.2,72.3,15,0
.goto BoreanTundra,56.67,72.64,10 >>Travel into the Keep
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿洛斯将军|r
.turnin 11672 >>交任务: |cRXP_FRIENDLY_应征入伍|r
.accept 11727 >>接任务: |cRXP_LOOT_英雄的时代|r
.goto BoreanTundra,56.67,72.64
.target General Arlos
step
#completewith next
.goto BoreanTundra,56.87,71.29,20 >>退出Keep
step
.goto 114/571,5321.100,2223.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈默希尔中士|r
.target Sergeant Hammerhill
.turnin 11727 >>交任务: |cRXP_FRIENDLY_英雄的时代|r
.accept 11797 >>接任务: |cRXP_LOOT_虫临城下|r
step
.goto 114/571,5400.100,2248.800
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_医师哈索恩|r
.target Medic Hawthorn
.accept 11789 >>接任务: |cRXP_LOOT_急需帮助的士兵|r
step
.goto BoreanTundra,53.5,69.1,70,0
.goto BoreanTundra,53.1,72.8,60,0
.goto BoreanTundra,52.29,70.53,60,0
.goto BoreanTundra,53.90,67.07,60,0
.goto BoreanTundra,54.85,65.09
>>杀死|cRXP_ENEMY_Crypt爬网程序|r
.complete 11797,1 
.mob Crypt Crawler
step
.goto BoreanTundra,56.36,69.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈默希尔中士|r
.turnin 11797 >>交任务: |cRXP_FRIENDLY_虫临城下|r
.accept 11889 >>接任务: |cRXP_LOOT_空中的虫子|r
.target Sergeant Hammerhill
step
.goto BoreanTundra,54.8,70.2,40,0
.goto BoreanTundra,54.83,71.43,40,0
.goto BoreanTundra,54.8,70.2
.use 35278 >>|cRXP_WARN_使用|r|T134325:0|t[加固网]|cRXP_WARN_to击落飞行的|r|cRXP-ENEMY_Scourged Flamesspitters|r
>>杀死|cRXP_ENEMY_Scourged喷火器|r
.complete 11889,1 
.mob Scourged Flamespitter
step
.goto BoreanTundra,56.36,69.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈默希尔中士|r
.turnin 11889 >>交任务: |cRXP_FRIENDLY_空中的虫子|r
.accept 11897 >>接任务: |cRXP_LOOT_炸毁虫孔|r
.target Sergeant Hammerhill
step
#completewith next
.goto BoreanTundra,56.96,68.75,10 >>前往风暴破坏者。前往较低级别
step
>>打开|cRXP_PICK_急救用品|r。将其洗劫一空，寻找|cRXP _Loot_Hawthorn的抗毒液|r
>>单击|cRXP_PICK_Cultist Shrine|r
.complete 11789,1 
.goto BoreanTundra,57.50,69.27
.accept 11920 >>接任务: |cRXP_LOOT_隐藏的诅咒教徒|r
.goto BoreanTundra,57.56,69.13
step
#completewith next
.goto BoreanTundra,56.96,68.75,10 >>向|cRXP_FRIENDLY_Captain“Lefty”|r和|cRXP-FRIENDLY_Admiral Cantlefree|r行进
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_“左撇子”鲁格塞尔船长|r, |cRXP_FRIENDLY_海军上将坎特蕾布莉|r
.turnin 11920 >>交任务: |cRXP_FRIENDLY_隐藏的诅咒教徒|r
.goto BoreanTundra,57.83,69.20
.target +Captain "Lefty" Lugsail
.accept 11791 >>接任务: |cRXP_LOOT_通知阿洛斯|r
.target +Admiral Cantlebree
.goto BoreanTundra,57.79,69.19
step
#completewith next
.goto BoreanTundra,57.1,71.8,15,0
.goto BoreanTundra,57.2,72.3,15,0
.goto BoreanTundra,56.67,72.64,10 >>Travel into the Keep
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿洛斯将军|r, |cRXP_FRIENDLY_顾问塔尔伯特|r, |cRXP_FRIENDLY_先驱者乌尔雷|r
.turnin 11791 >>交任务: |cRXP_FRIENDLY_通知阿洛斯|r
.goto BoreanTundra,56.67,72.64
.target +General Arlos
.accept 12141 >>接任务: |cRXP_LOOT_外交任务|r
.goto BoreanTundra,56.72,72.62
.target +Counselor Talbot
.accept 11792 >>接任务: |cRXP_LOOT_圣光的敌人|r
.target +Harbinger Vurenn
.goto BoreanTundra,56.60,72.46
step
#completewith next
.goto BoreanTundra,56.87,71.29,20 >>退出Keep
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawthorn|r
.turnin 11789 >>交任务: |cRXP_FRIENDLY_急需帮助的士兵|r
.goto BoreanTundra,55.00,68.91
.target Medic Hawthorn
step
.goto BoreanTundra,54.08,63.73,-1
.goto BoreanTundra,54.77,63.08,-1
.use 35704 >>|cRXP_WARN_使用|r|T133713:0|t[燃烧炸药]|cRXP_WARN_at |r|cRX_PICK_Northern沉孔|r
.complete 11897,2 
step
#loop
.line BoreanTundra,54.04,62.42,53.84,60.33,55.25,63.43,54.04,62.42
.goto BoreanTundra,54.04,62.42,40,0
.goto BoreanTundra,53.84,60.33,40,0
.goto BoreanTundra,55.25,63.43,40,0
.goto BoreanTundra,54.04,62.42,40,0
>>杀死|cRXP_ENEMY_Cultist亡灵|r。掠夺他们的|cRXP_Loot_公报|r
.complete 11792,1 
.mob Cultist Necrolyte
step
.goto BoreanTundra,50.46,71.38,-1
.goto BoreanTundra,50.88,72.29,-1
.use 35704 >>|cRXP_WARN_使用|r|T133713:0|t[燃烧炸药]|cRXP_WARN_at |r|cRX_PICK_Southern沉孔|r
.complete 11897,1 
step
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁克|r
.turnin 12141 >>交任务: |cRXP_FRIENDLY_外交任务|r
.accept 11613 >>接任务: |cRXP_LOOT_卡鲁克的誓言|r
.target Karuk
step
#completewith Karuk2
#label CTPrisoner2
.goto BoreanTundra,44.10,77.90,50,0
>>杀死|cRXP_ENEMY_Skadir长船手|r和|cRXD_ENEMY_Riplash Myrmidon|r周围的|cRXP_FRIENDLY_捕获的Tuskarr囚犯|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_囚徒|r
>>|cRXP_WARN_如果|cRXP_FRONDLY_Prisoner|r不存在，则忽略此项|r
.accept 12471 >>接任务: |cRXP_LOOT_残忍的科瓦迪尔|r
.unitscan Captured Tuskarr Prisoner
step
#loop
.goto BoreanTundra,44.08,78.16,50,0
.goto BoreanTundra,46.02,79.49,50,0
.goto BoreanTundra,46.80,80.74,50,0
.goto BoreanTundra,48.40,79.83,50,0
.goto BoreanTundra,50.33,78.08,50,0
.goto BoreanTundra,48.22,76.00,50,0
.goto BoreanTundra,47.69,77.59,50,0
.goto BoreanTundra,44.08,78.16,50,0
.goto BoreanTundra,46.02,79.49,50,0
.goto BoreanTundra,46.80,80.74,50,0
.goto BoreanTundra,48.40,79.83,50,0
.goto BoreanTundra,50.33,78.08,50,0
.goto BoreanTundra,48.22,76.00,50,0
.goto BoreanTundra,47.69,77.59,0
>>杀死|cRXP_ENEMY_Skadir长船手|r和|cRXX_ENEMY_斯卡迪尔突袭者|r
.complete 11613,2 
.mob +Skadir Longboatsman
.complete 11613,1 
.mob +Skadir Raider
step
#optional
#completewith end
#requires CTPrisoner2
#label Cruelty2
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁克|r
.turnin 12471 >>交任务: |cRXP_FRIENDLY_残忍的科瓦迪尔|r
.isOnQuest 12471
.target Karuk
step
#label Karuk2
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁克|r
.turnin 11613 >>交任务: |cRXP_FRIENDLY_卡鲁克的誓言|r
.accept 11619 >>接任务: |cRXP_LOOT_残忍的贾梅尔|r
.target Karuk
step
#optional
#requires Cruelty2
#completewith next
.groundgoto BoreanTundra,46.3,78.8,20,0
.goto BoreanTundra,46.42,78.23,15 >>Travel into the Cave
step
.goto BoreanTundra,46.42,78.23
>>杀死|cRXP_ENEMY_Gamel the Crumal|r in the cave
.complete 11619,1 
.mob Gamel the Cruel
step
#optional
#completewith Karuk3
#label CTPrisoner3
.goto BoreanTundra,44.10,77.90,50,0
>>杀死|cRXP_ENEMY_Skadir长船手|r和|cRXD_ENEMY_Riplash Myrmidon|r周围的|cRXP_FRIENDLY_捕获的Tuskarr囚犯|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_囚徒|r
>>|cRXP_WARN_如果|cRXP_FRONDLY_Prisoner|r不存在，则忽略此项|r
.accept 12471 >>接任务: |cRXP_LOOT_残忍的科瓦迪尔|r
.unitscan Captured Tuskarr Prisoner
step
#optional
#completewith end
#requires CTPrisoner3
#label Cruelty3
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁克|r
.turnin 12471 >>交任务: |cRXP_FRIENDLY_残忍的科瓦迪尔|r
.isOnQuest 12471
.target Karuk
step
#label Karuk3
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁克|r
.turnin 11619 >>交任务: |cRXP_FRIENDLY_残忍的贾梅尔|r
.accept 11620 >>接任务: |cRXP_LOOT_父亲的话|r
.target Karuk
step
#optional
#completewith Veehja
#label CTPrisoner4
.goto BoreanTundra,44.10,77.90,50,0
>>杀死|cRXP_ENEMY_Skadir长船手|r和|cRXD_ENEMY_Riplash Myrmidon|r周围的|cRXP_FRIENDLY_捕获的Tuskarr囚犯|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_囚徒|r
>>|cRXP_WARN_如果|cRXP_FRONDLY_Prisoner|r不存在，则忽略此项|r
.accept 12471 >>接任务: |cRXP_LOOT_残忍的科瓦迪尔|r
.unitscan Captured Tuskarr Prisoner
step
#optional
#completewith end
#requires CTPrisoner4
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁克|r
.turnin 12471 >>交任务: |cRXP_FRIENDLY_残忍的科瓦迪尔|r
.isOnQuest 12471
.target Karuk
step << wotlk
.goto BoreanTundra,43.60,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维赫亚|r << DK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维赫亚|r, Fish Oil << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维赫亚|r, Elixir of Water Walking << !Shaman !DK
.turnin 11620 >>交任务: |cRXP_FRIENDLY_父亲的话|r
.accept 11625 >>接任务: |cRXP_LOOT_纳兹亚的三叉戟|r
.itemcount 17058,5 << Shaman
.itemcount 8827,5 << !Shaman !DK
.skill coldweatherflying,1,1
.target Veehja
step
#label Veehja2
.goto BoreanTundra,43.60,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维赫亚|r
.turnin 11620 >>交任务: |cRXP_FRIENDLY_父亲的话|r
.accept 11625 >>接任务: |cRXP_LOOT_纳兹亚的三叉戟|r
.skill coldweatherflying,<1,1
.target Veehja
step
#label Veehja
.goto BoreanTundra,43.60,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维赫亚|r
.turnin 11620 >>交任务: |cRXP_FRIENDLY_父亲的话|r
.target Veehja
step
#requires Veehja2
#completewith next
.groundgoto BoreanTundra,53.7,91.1,40,0
.goto BoreanTundra,54.85,88.78,100 >>前往激流废墟
.isOnQuest 11625
step

.goto BoreanTundra,55.03,88.51
>>杀死|cRXP_ENEMY_Ragnar Drakkarlund|r。为他的|cRXX_Loot_Trident|r而掠夺他
.complete 11625,1 
.isOnQuest 11625
.mob Ragnar Drakkarlund
step
.goto BoreanTundra,43.63,80.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维赫亚|r
.turnin 11625 >>交任务: |cRXP_FRIENDLY_纳兹亚的三叉戟|r
.isQuestComplete 11625
.target Veehja
step
.goto BoreanTundra,43.63,80.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维赫亚|r
.accept 11626 >>接任务: |cRXP_LOOT_使者|r
.isQuestTurnedIn 11625
.target Veehja
step
.goto BoreanTundra,51.90,88.46
.use 35850 >>|cRXP_WARN_使用|r|T135127:0|t[纳兹詹三叉戟]|cRXP_WARN_to在水下对|cRXP-ENEMY_Leviroth|r造成重大伤害|r
>>杀死|cRXP_ENEMY_Leviroth|r
.complete 11626,1 
.isQuestTurnedIn 11625
.mob Leviroth
step
#completewith Karuk5
#label CTPrisoner5
.goto BoreanTundra,44.10,77.90,50,0
>>杀死|cRXP_ENEMY_Skadir长船手|r和|cRXD_ENEMY_Riplash Myrmidon|r周围的|cRXP_FRIENDLY_捕获的Tuskarr囚犯|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_囚徒|r
>>|cRXP_WARN_如果|cRXP_FRONDLY_Prisoner|r不存在，则忽略此项|r
.accept 12471 >>接任务: |cRXP_LOOT_残忍的科瓦迪尔|r
.unitscan Captured Tuskarr Prisoner
.mob Skadir Longboatsman
.isQuestTurnedIn 11625
step
#completewith end
#requires CTPrisoner5
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁克|r
.turnin 12471 >>交任务: |cRXP_FRIENDLY_残忍的科瓦迪尔|r
.isOnQuest 12471
.target Karuk
step
#label Karuk5
.goto BoreanTundra,47.13,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁克|r
.turnin 11626 >>交任务: |cRXP_FRIENDLY_使者|r
.isQuestTurnedIn 11625
.target Karuk
step
#completewith Oculus
.hs >>心与心保持一致
step
#completewith Oculus
.goto BoreanTundra,57.1,71.8,15,0
.goto BoreanTundra,57.2,72.3,15,0
.goto BoreanTundra,56.67,72.64,10 >>Travel into the Keep
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Vurenn|r, |cRXP_FRIENDLY_Rollick|r, |cRXP_FRIENDLY_Hammerhill|r, |cRXP_FRIENDLY_Mark|r, and |cRXP_FRIENDLY_Skyhopper, 他在外面
.turnin 11792 >>交任务: |cRXP_FRIENDLY_圣光的敌人|r
.accept 11793 >>接任务: |cRXP_LOOT_继续调查|r
.goto BoreanTundra,56.60,72.46
.turnin 13088 >>交任务: |cRXP_FRIENDLY_诺森德的厨师|r
.goto BoreanTundra,57.93,71.54
.turnin 11897 >>交任务: |cRXP_FRIENDLY_炸毁虫孔|r
.accept 11928 >>接任务: |cRXP_LOOT_致远郡|r
.goto BoreanTundra,56.36,69.58
.accept 11927 >>接任务: |cRXP_LOOT_坊间的传言|r
.goto BoreanTundra,56.77,69.51
.accept 11707 >>接任务: |cRXP_LOOT_迫在眉睫|r
.goto BoreanTundra,58.84,68.72
.isQuestComplete 13088
.skill cooking,<350,1
.target Sergeant Hammerhill
.target Harbinger Vurenn
.target Rollick MacKreel
.target Mark Hanes
.target Airman Skyhopper
step
.goto 114/571,5305.900,2112.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先驱者乌尔雷|r
.target Harbinger Vurenn
.turnin 11792 >>交任务: |cRXP_FRIENDLY_圣光的敌人|r
.accept 11793 >>接任务: |cRXP_LOOT_继续调查|r
step
.goto 114/571,5321.000,2223.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈默希尔中士|r
.target Sergeant Hammerhill
.turnin 11897 >>交任务: |cRXP_FRIENDLY_炸毁虫孔|r
.accept 11928 >>接任务: |cRXP_LOOT_致远郡|r
step
.goto 114/571,5296.800,2225.700
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克·汉斯|r
.target Mark Hanes
.accept 11927 >>接任务: |cRXP_LOOT_坊间的传言|r
step
.goto 114/571,5179.900,2255.900
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_飞行员斯凯霍布尔|r
.target Airman Skyhopper
.accept 11707 >>接任务: |cRXP_LOOT_迫在眉睫|r
step
.goto BoreanTundra,58.5,68.3,15,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Midge|r, then |cRXP_FRIENDLY_Leryssa|r and |cRXP_FRIENDLY_Yaala, 他在楼上
.accept 11575 >>接任务: |cRXP_LOOT_千钧一发|r
.goto BoreanTundra,58.41,67.79
.target +Midge
.turnin 11927 >>交任务: |cRXP_FRIENDLY_坊间的传言|r
.accept 11599 >>接任务: |cRXP_LOOT_萨萨里安，我的哥哥|r
.goto BoreanTundra,58.4,67.6,15,0
.goto BoreanTundra,58.75,68.36
.target +Leryssa
.turnin 11793 >>交任务: |cRXP_FRIENDLY_继续调查|r
.accept 11794 >>接任务: |cRXP_LOOT_猎杀行动|r
.target +Vindicator Yaala
.goto BoreanTundra,58.55,67.29
step
#label Oculus
.use 35125 >>|cRXP_WARN_使用|r|T134335:0|t[驱魔人的眼睛]|cRXP_WARN_用|r|T135895:0|t[Righteous Vision]增强自己
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_ENEMY_“咸鱼”约翰·索普|r, |cRXP_ENEMY_汤姆·海格尔|r, Guard Mitchels
.complete 11794,3 
.goto BoreanTundra,58.57,67.13
.mob +"Salty" John Thorpe
.complete 11794,1 
.goto BoreanTundra,59.26,68.19
.mob +Tom Hegger
.complete 11794,2 
.goto BoreanTundra,56.9,72.2,12,0
.goto BoreanTundra,56.72,71.83
.mob +Guard Mitchells
.skipgossip 25248,2
.skipgossip 25827,1
.skipgossip 25828,1
.skipgossip
.timer 13,The Hunt is On RP
step
#completewith next
.goto BoreanTundra,58.21,62.82,70 >>前往法希尔
step
.goto BoreanTundra,58.21,62.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald|r
.turnin 11928 >>交任务: |cRXP_FRIENDLY_致远郡|r
.accept 11901 >>接任务: |cRXP_LOOT_军队？什么军队？|r
.target Gerald Green
step
#completewith next
.goto BoreanTundra,56.7,57.2,40 >>Enter Farshire Mine
step
.goto BoreanTundra,56.81,55.56
>>单击地面上的|cRXP_PICK_Plaged Grain|r
.turnin 11901 >>交任务: |cRXP_FRIENDLY_军队？什么军队？|r
.accept 11902 >>接任务: |cRXP_LOOT_致命的谷物|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Gerald, Jeremiah, |cRXP_FRIENDLY_温蒂·达伦|r
.turnin 11902 >>交任务: |cRXP_FRIENDLY_致命的谷物|r
.accept 11903 >>接任务: |cRXP_LOOT_战斗的时刻|r
.goto BoreanTundra,58.21,62.82
.target +Gerald Green
.accept 11908 >>接任务: |cRXP_LOOT_参考资料|r
.target +Jeremiah Hawning
.goto BoreanTundra,58.19,62.98
.accept 11913 >>接任务: |cRXP_LOOT_万无一失|r
.target +Wendy Darren
.goto BoreanTundra,58.28,62.77
step
#completewith next
.use 35491 >>|cRXP_WARN_使用|r|T135432:0|t[Wendy’s Torch]|cRXP_WARN_to燃烧|r|cRXP-PICK_Farshire谷物|r
>>杀死|cRXP_ENEMY_瘟疫拾荒者|r
.complete 11913,1 
.complete 11903,1 
.mob +Plagued Scavenger
step
.goto BoreanTundra,55.75,58.32
>>偷走|cRXP_Loot_Fields，Factories and Workshop |r，它看起来像燃烧的房子里的一本红书
.complete 11908,1 
step
#loop
.line BoreanTundra,56.84,61.57,55.59,62.11,54.56,60.67,55.89,60.80,55.32,59.32,55.81,57.69,56.83,58.39,56.84,61.57
.goto BoreanTundra,56.84,61.57,50,0
.goto BoreanTundra,55.59,62.11,50,0
.goto BoreanTundra,54.56,60.67,50,0
.goto BoreanTundra,55.89,60.80,50,0
.goto BoreanTundra,55.32,59.32,50,0
.goto BoreanTundra,55.81,57.69,50,0
.goto BoreanTundra,56.83,58.39,50,0
.goto BoreanTundra,56.84,61.57,50,0
.use 35491 >>|cRXP_WARN_使用|r|T135432:0|t[Wendy’s Torch]|cRXP_WARN_to燃烧|r|cRXP-PICK_Farshire谷物|r
>>杀死|cRXP_ENEMY_瘟疫拾荒者|r
.complete 11913,1 
.complete 11903,1 
.mob +Plagued Scavenger
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温蒂·达伦|r, Gerald, Jeremiah
.turnin 11913 >>交任务: |cRXP_FRIENDLY_万无一失|r
.target +Wendy Darren
.goto BoreanTundra,58.28,62.77,-1
.turnin 11903 >>交任务: |cRXP_FRIENDLY_战斗的时刻|r
.accept 11904 >>接任务: |cRXP_LOOT_劳动的果实|r
.goto BoreanTundra,58.21,62.82,-1
.target +Gerald Green
.turnin 11908 >>交任务: |cRXP_FRIENDLY_参考资料|r
.accept 12035 >>接任务: |cRXP_LOOT_重新装配|r
.target +Jeremiah Hawning
.goto BoreanTundra,58.19,62.98,-1
step
.goto BoreanTundra,58.30,61.20,40,0
.goto BoreanTundra,56.52,62.19,40,0
.goto BoreanTundra,58.30,61.20
.use 35943 >>杀死|cRXP_ENEMY_Harvest Collectors|r.|cRXP-WARN_Use|r|T134520:0|t[Jeremiah的工具]|cRXP_WARN_on their尸体|r
.complete 12035,1 
.mob Harvest Collector
step
#completewith next
.goto BoreanTundra,56.7,57.2,40 >>Enter Farshire Mine
step
.goto BoreanTundra,56.04,55.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William's|r corpse
.turnin 11599 >>交任务: |cRXP_FRIENDLY_萨萨里安，我的哥哥|r
.accept 11600 >>接任务: |cRXP_LOOT_威廉·奥雷顿之死|r
.target William Allerton
step
.goto BoreanTundra,57.99,53.54
>>杀死|cRXP_ENEMY_Captain Jacobs|r。抢走他|cRXP_Loot_CCart释放密钥|r
.collect 35705,1,11904,1 
.unitscan Captain Jacobs
step
.goto BoreanTundra,57.18,54.65
>>单击|cRXP_FRIENDLY_Ore Cart|r旁边的|cRXP_PICK_Cart Release控制杆|r
.complete 11904,1 
step
#completewith next
.goto BoreanTundra,56.7,57.2,40,0
.goto BoreanTundra,58.21,62.82,80 >>前往|cRXP_FRIENDLY_Ggerald |r和|cRXP-FRIENDLY_Jeremiah |r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald|r and |cRXP_FRIENDLY_Jeremiah|r
.turnin 11904 >>交任务: |cRXP_FRIENDLY_劳动的果实|r
.accept 11962 >>接任务: |cRXP_LOOT_最后一批矿石|r
.target +Gerald Green
.goto BoreanTundra,58.21,62.82
.turnin 12035 >>交任务: |cRXP_FRIENDLY_重新装配|r
.goto BoreanTundra,58.19,62.98
.target +Jeremiah Hawning
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda|r
.turnin 11962 >>交任务: |cRXP_FRIENDLY_最后一批矿石|r
.accept 11963 >>接任务: |cRXP_LOOT_给致远郡的武器|r
.goto BoreanTundra,57.32,66.64
.target Hilda Stoneforge
step
.goto BoreanTundra,58.75,68.42
>>|cRXP_WARN_跳上推车，然后跳到窗户的底部边缘|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉蕾萨|r
.turnin 11600 >>交任务: |cRXP_FRIENDLY_威廉·奥雷顿之死|r
.accept 11601 >>接任务: |cRXP_LOOT_柳暗花明|r
.target Leryssa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: James|r and then |cRXP_FRIENDLY_Yaala, 他在楼上
.turnin 11601 >>交任务: |cRXP_FRIENDLY_柳暗花明|r
.accept 11603 >>接任务: |cRXP_LOOT_酒中的真相|r
.target +James Deacon
.goto BoreanTundra,58.29,68.05
.turnin 11794 >>交任务: |cRXP_FRIENDLY_猎杀行动|r
.target +Vindicator Yaala
.goto BoreanTundra,58.55,67.29
step
.goto BoreanTundra,58.21,62.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald|r
.turnin 11963 >>交任务: |cRXP_FRIENDLY_给致远郡的武器|r
.accept 11965 >>接任务: |cRXP_LOOT_集结的钟声！|r
.target Gerald Green
step
#completewith next
.goto BoreanTundra,57.32,59.39,30 >>进入法希尔钟楼
step
.goto BoreanTundra,57.32,59.39
>>|cRXP_WARN_稍稍跑上楼梯|r
>>单击悬挂在天花板上的|cRXP_PICK_Bell Rope|r
.complete 11965,1 
step
.goto BoreanTundra,58.21,62.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald|r
.turnin 11965 >>交任务: |cRXP_FRIENDLY_集结的钟声！|r
.target Gerald Green
step
#completewith next
.goto BoreanTundra,57.05,44.32,120 >>前往D.E.H.T.A.营地
step
.goto BoreanTundra,57.05,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊拉索留斯|r
.accept 11864 >>接任务: |cRXP_WARN_决战奈辛瓦里|r
.turnin 11864 >>交任务: |cRXP_FRIENDLY_决战奈辛瓦里|r
.accept 11866 >>接任务: |cRXP_LOOT_敌人的耳环|r
.accept 11876 >>接任务: |cRXP_LOOT_帮助弱小|r
.target Arch Druid Lathorius
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兽穴卫士凯林格|r, |cRXP_FRIENDLY_扎扎|r, |cRXP_FRIENDLY_圣职者塞妮丝|r
.accept 11865 >>接任务: |cRXP_LOOT_死不足惜|r
.goto BoreanTundra,56.79,44.04
.target +Zaza
.accept 11869 >>接任务: |cRXP_LOOT_欢乐的蚌壳|r
.goto BoreanTundra,57.33,44.08
.target +Hierophant Cenius
.accept 11884 >>接任务: |cRXP_LOOT_尼达尔，犀牛之王……|r
.goto BoreanTundra,57.17,43.59,7,0
.goto BoreanTundra,57.33,44.08,7,0
.goto BoreanTundra,57.05,44.32,7,0
.goto BoreanTundra,56.79,44.04
.target +巢穴守望者基林格
step
#completewith LastTrap
.goto BoreanTundra,55.9,47.4,0
>>杀死|cRXP_ENEMY_掠夺疯狂的偷猎者|r。掠夺他们的|cRXX_Loot_Ears|r
.complete 11866,1 
.mob Loot Crazed Poacher
.mob Loot Crazed Diver
step
#label LastTrap
#loop
.goto BoreanTundra,56.2,46.1,60,0
.goto BoreanTundra,57.7,46.4,60,0
.goto BoreanTundra,57.9,48.7,60,0
.goto BoreanTundra,56.5,50.2,60,0
.goto BoreanTundra,57.6,52.1,60,0
.goto BoreanTundra,57.6,52.1,0
>>|cRXP_WARN_使用地面上的|r|T134263:0|t[假毛皮堆]|cRXP_WARN_on |cRX_PICK_Caribou陷阱|r|r
.use 35127 >>|cRXP_WARN_Do NOT wait for the RP|r
.complete 11865,1
.isOnQuest 11865
step
#loop
.goto BoreanTundra,51.7,47.0,70,0
.goto BoreanTundra,52.3,44.8,70,0
.goto BoreanTundra,52.9,43.0,70,0
.goto BoreanTundra,50.0,44.1,70,0
.goto BoreanTundra,50.0,44.1,0
>>杀死|cRXP_ENEMY_掠夺疯狂潜水员|r。掠夺他们的|cRXX_Loot_Ears|r
>>|cRXP_WARN_现在不要刻意收集所有|cRXP_LOOT_Ears|r。您稍后会收集更多|r
.complete 11869,1 
.collect 35188,15,11866,1,1 
.mob Loot Crazed Diver
step
#optional
#completewith next
>>杀死|cRXP_ENEMY_毛犀牛矩阵|r，|cRXD_ENEMY_毛犀牛公牛|r和|cRXP_ENEMY_羊毛犀牛小牛|r。掠夺它们的|cRXP_Loot_冷冻肉|r
.complete 13088,1 
.isOnQuest 13088
.mob Wooly Rhino Matriarch
.mob Wooly Rhino Calf
.mob Wooly Rhino Bull
step
#loop
.goto BoreanTundra,48.6,40.0,50,0
.goto BoreanTundra,44.9,45.7,50,0
.goto BoreanTundra,46.7,45.6,50,0
.goto BoreanTundra,48.6,40.0,50,0
.goto BoreanTundra,44.9,45.7,0
.goto BoreanTundra,48.6,40.0,0
>>杀死|cRXP_ENEMY_Nedar，犀牛之王|r和|cRXD_ENEMY_“午餐盒”|r。先杀死|cRX P_ENEMY_“午餐箱”|r
.complete 11884,2 
.complete 11884,1 
.unitscan Nedar, Lord of Rhinos
.mob "Lunchbox"
step
.goto BoreanTundra,48.6,40.0,50,0
.goto BoreanTundra,44.9,45.7,50,0
.goto BoreanTundra,46.7,45.6,50,0
.goto BoreanTundra,44.9,45.7,0
.goto BoreanTundra,48.6,40.0
>>杀死|cRXP_ENEMY_毛犀牛矩阵|r，|cRXD_ENEMY_毛犀牛公牛|r和|cRXP_ENEMY_羊毛犀牛小牛|r。掠夺它们的|cRXP_Loot_冷冻肉|r
.complete 13088,1 
.isOnQuest 13088
.mob Wooly Rhino Matriarch
.mob Wooly Rhino Calf
.mob Wooly Rhino Bull
step
#completewith next
.goto BoreanTundra,45.33,34.62,100 >>前往琥珀色壁架
step
#sticky
#label ALFP
.goto BoreanTundra,45.33,34.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏雷斯塔兹|r
.fp Amber Ledge >>获取琥珀色Ledge飞行路径
.target Surristrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员多纳森|r, Garren
.turnin 11575 >>交任务: |cRXP_FRIENDLY_千钧一发|r
.accept 11587 >>接任务: |cRXP_LOOT_越狱|r
.goto BoreanTundra,45.26,33.35
.target +Librarian Donathan
.accept 11576 >>接任务: |cRXP_LOOT_监视裂谷：悬崖异常|r
.goto BoreanTundra,44.98,33.38
.target +Librarian Garren
step
#requires ALFP
#completewith next
.goto BoreanTundra,54.29,36.09,100 >>前往Coldrock采石场
step

>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊塔鲁克|r, Atkanok, the stone
.accept 11612 >>接任务: |cRXP_LOOT_夺回采掘场|r
.goto BoreanTundra,54.29,36.09
.accept 11605 >>接任务: |cRXP_LOOT_海象人的先祖|r
.goto BoreanTundra,54.63,35.88
.target Etaruk
step
.goto BoreanTundra,55.5,41.1,60,0
.goto BoreanTundra,55.3,38.4,60,0
.goto BoreanTundra,57.6,38.4,60,0
.goto BoreanTundra,59.5,31.3,60,0
.goto BoreanTundra,55.4,27.7,60,0
.goto BoreanTundra,53.3,28.0,60,0
.goto BoreanTundra,56.8,37.7
.use 35228 >>|cRXP_WARN_使用|r|T133539:0|t[D.E.H.t.A.Trap Smasher]|cRXP_WARN_to free|r|cRXT_FRIENDLY_Trapped Mammoth Calves|r
>>|cRXP_WARN_Do NOT wait for the RP|r
.complete 11876,1,7 
.target Trapped Mammoth Calf
step
.goto BoreanTundra,55.5,41.1,60,0
.goto BoreanTundra,55.3,38.4,60,0
.goto BoreanTundra,57.6,38.4,60,0
.goto BoreanTundra,59.5,31.3,60,0
.goto BoreanTundra,55.4,27.7,60,0
.goto BoreanTundra,53.3,28.0,60,0
.goto BoreanTundra,56.8,37.7
.cast 46201 >>|cRXP_WARN_使用|r|T133539:0|t[D.E.H.t.A.Trap Smasher]|cRXP_WARN_to free|r|cRXT_FRIENDLY_Trapped Mammoth Calves|r
>>|cRXP_WARN_Do NOT wait for the RP|r
.use 35228
.isOnQuest 11876
.target Trapped Mammoth Calf
step
>>|cRXP_WARN_如果你有|T132311:0|t[动物血]的debuff，跳进水里把它移走，或者等它过期后再进入营地，否则守卫会攻击你|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兽穴卫士凯林格|r, |cRXP_FRIENDLY_圣职者塞妮丝|r, |cRXP_FRIENDLY_大德鲁伊拉索留斯|r, |cRXP_FRIENDLY_扎扎|r
.turnin 11869 >>交任务: |cRXP_FRIENDLY_欢乐的蚌壳|r
.accept 11870 >>接任务: |cRXP_LOOT_遗弃海岸|r
.goto BoreanTundra,57.33,44.08
.turnin 11876 >>交任务: |cRXP_FRIENDLY_帮助弱小|r
.goto BoreanTundra,57.05,44.32
.turnin 11865 >>交任务: |cRXP_FRIENDLY_死不足惜|r
.accept 11868 >>接任务: |cRXP_LOOT_驯鹿杀手之死|r
.goto BoreanTundra,56.79,44.04
.target +Zaza
.turnin 11884 >>交任务: |cRXP_FRIENDLY_尼达尔，犀牛之王……|r
.goto BoreanTundra,57.17,43.59,20,0
.goto BoreanTundra,57.33,44.08,15,0
.goto BoreanTundra,57.05,44.32,15,0
.goto BoreanTundra,56.79,44.04
.target +巢穴守望者基林格
.target Hierophant Cenius
.target Arch Druid Lathorius
step
.goto BoreanTundra,57.2,56.5
>>Kill |cRXP_ENEMY_Karen "I Don't Caribou" the Culler|r
.complete 11868,1 
.mob Karen "I Don't Caribou" the Culler
step
.goto BoreanTundra,57.80,55.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liandra|r
.turnin 11870 >>交任务: |cRXP_FRIENDLY_遗弃海岸|r
.accept 11871 >>接任务: |cRXP_LOOT_不可容忍|r
.target Hierophant Liandra
step
#completewith Liandra
.goto BoreanTundra,60.8,63.1,0
>>杀死|cRXP_ENEMY_Northsea暴徒|r和|cRXP_ENEMY_North sea雇佣军|r。掠夺他们的|cRXD_Loot_Ears|r
.complete 11866,1 
.mob Northsea Mercenary
.mob Northsea Thug
step
.goto BoreanTundra,59.2,55.6,50,0
.goto BoreanTundra,58.6,58.3,50,0
.goto BoreanTundra,60.3,58.0,50,0
.goto BoreanTundra,59.7,60.5,50,0
.goto BoreanTundra,60.0,64.1,50,0
.goto BoreanTundra,61.8,63.5
>>在地面上掠夺|cRXP_Loot_动物零件运输|r
.complete 11871,1 
step
#label Liandra
.goto BoreanTundra,57.80,55.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liandra|r
.turnin 11871 >>交任务: |cRXP_FRIENDLY_不可容忍|r
.accept 11872 >>接任务: |cRXP_LOOT_罪恶的蛤蜊主宰……|r
.target Hierophant Liandra
step
.goto BoreanTundra,59.2,55.6,50,0
.goto BoreanTundra,58.6,58.3,50,0
.goto BoreanTundra,60.3,58.0,50,0
.goto BoreanTundra,59.7,60.5,50,0
.goto BoreanTundra,60.0,64.1,50,0
.goto BoreanTundra,61.8,63.5
>>杀死|cRXP_ENEMY_Northsea暴徒|r和|cRXP_ENEMY_North sea雇佣军|r。掠夺他们的|cRXD_Loot_Ears|r
.complete 11866,1 
.mob Northsea Mercenary
.mob Northsea Thug
step
#sticky
#label wine
.goto BoreanTundra,61.90,65.67
>>在水下打开|cRXP_PICK_Wine Crate|r。为|cRXP_Loot_Kul Tiras葡萄酒|r掠夺它
.complete 11603,1 
step
.goto BoreanTundra,61.0,66.5,30,0
.goto BoreanTundra,62.5,66.2
>>在水下杀死|cRXP_ENEMY_Clam Master K|r
.complete 11872,1 
.unitscan Clam Master K
step
#requires wine
#completewith next
.goto BoreanTundra,58.5,68.2,100 >>Travel to Valiance Keep
step

.goto BoreanTundra,58.53,68.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_老人科布恩|r
.turnin 11603 >>交任务: |cRXP_FRIENDLY_酒中的真相|r
.accept 11604 >>接任务: |cRXP_LOOT_逃兵|r
.target Old Man Colburn

step
.goto BoreanTundra,57.93,71.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗里克·玛克雷尔|r
.turnin 13088 >>交任务: |cRXP_FRIENDLY_诺森德的厨师|r
.isQuestComplete 13088
.skill cooking,<350,1
.target Rollick MacKreel
step
#completewith next
.goto BoreanTundra,56.9,72.2,10 >>前往Valiance监狱
step
.goto BoreanTundra,56.68,71.44
>>跑下楼梯去监狱
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brau|r
.turnin 11604 >>交任务: |cRXP_FRIENDLY_逃兵|r
.accept 11932 >>接任务: |cRXP_LOOT_懦夫和蠢货|r
.target Private Brau
step
#completewith next
.goto BoreanTundra,56.9,72.2,10,0
.goto BoreanTundra,58.97,68.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师托马斯|r
.fly Amber Ledge >>飞到琥珀色壁架
.target Tomas Riverwell
step
>>杀死|cRXP_ENEMY_贝里尔法师猎人|r。掠夺他们一个|T134242:0|t[|cRXP-Loot_Beril监狱钥匙|r]
>>|cRXP_WARN_使用|r|T134242:0|t[|cRXP_LOOT_Berry监狱密钥|r]|cRXP_WARN_on a|r|cRX_PICK_Arcane监狱|r
>>|cRXP_WARN_继续打开|cRXP_PICK_Arcane Prisons|r，直到成功保存|r|cRXP _FRIENDLY_Arcane Prison|r
.collect 34688,1,11587,0x1,-1 
#loop
.line BoreanTundra,42.60,36.75,40.43,39.16,41.78,42.53,42.60,36.75
.goto BoreanTundra,42.60,36.75,20,0
.goto BoreanTundra,40.43,39.16,20,0
.goto BoreanTundra,41.78,42.53,20,0
.goto BoreanTundra,42.60,36.75,20,0
.complete 11587,1 
.goto BoreanTundra,42.60,36.75,40,0
.goto BoreanTundra,40.43,39.16,40,0
.goto BoreanTundra,41.78,42.53
.mob Beryl Mage Hunter
step
#completewith next
.groundgoto BoreanTundra,45.03,37.97,60,0
.goto BoreanTundra,45.26,33.35,50 >>前往|cRXP_FRIENDLY_Donathan|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员多纳森|r
.turnin 11587 >>交任务: |cRXP_FRIENDLY_越狱|r
.accept 11590 >>接任务: |cRXP_LOOT_调查|r
.goto BoreanTundra,45.26,33.35
.target Librarian Donathan
step
.goto BoreanTundra,43.2,36.6,60,0
.goto BoreanTundra,41.6,37.4
.use 34691 >>|cRXP_WARN_伤害a|cRXP_ENEMY_Beryl魔法师|r至50%或更低的生命值。不要杀死|r|cRXP_ENEMY_Beryl魔法师|r
>>|cRXP_WARN_引导|r|T133273:0|t[Arcane Binder]|cRXP_WARN_to在|cRXP_ENEMY_Beryl魔法师|r被削弱后捕获它|r
.complete 11590,1 
.mob Beryl Sorcerer
step
#completewith next
.groundgoto BoreanTundra,45.03,37.97,60,0
.goto BoreanTundra,45.26,33.35,50 >>前往|cRXP_FRIENDLY_Donathan|r
>>|cRXP_WARN_您可以忽略|cRXP_ENEMY_Beryl魔法师|r。它将继续跟随您|r
step
.goto BoreanTundra,45.26,33.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员多纳森|r
.turnin 11590 >>交任务: |cRXP_FRIENDLY_调查|r
.accept 11646 >>接任务: |cRXP_LOOT_苔原上的审讯|r
.target Librarian Donathan
step
#completewith next
.goto BoreanTundra,46.60,32.94,40 >>进入法师塔。跑到一楼
step
.goto BoreanTundra,46.32,32.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员诺曼提斯|r
.turnin 11646 >>交任务: |cRXP_FRIENDLY_苔原上的审讯|r
.accept 11648 >>接任务: |cRXP_LOOT_说服的艺术|r
.target Librarian Normantis
step
.goto BoreanTundra,46.33,32.92
.use 34811 >>|cRXP_WARN_使用|r|T135470:0|t[神经针刺器]|cRXP_WARN_在|cRXD__ENEMY_Imprinsoned Beryl Sorcere|r上|cRXP_FIRENDLY_Normantis|r旁边的|r|T135470:0 |t，直到目标完成|r
.complete 11648,1 
.mob Imprisoned Beryl Sorcerer
step
.goto BoreanTundra,46.32,32.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员诺曼提斯|r
.turnin 11648 >>交任务: |cRXP_FRIENDLY_说服的艺术|r
.accept 11663 >>接任务: |cRXP_LOOT_分享情报|r
.target Librarian Normantis
step
.goto BoreanTundra,45.26,33.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员多纳森|r, 他在外面
.turnin 11663 >>交任务: |cRXP_FRIENDLY_分享情报|r
.accept 11671 >>接任务: |cRXP_LOOT_与时间赛跑|r
.target Librarian Donathan
step
#completewith next
.goto BoreanTundra,41.30,41.79,70,0
.goto BoreanTundra,39.85,42.18,50,0 << !Shaman !DK
.goto BoreanTundra,38.46,43.37,50,0 << !Shaman !DK
.goto BoreanTundra,35.15,43.52,50,0 << !Shaman !DK
.goto BoreanTundra,34.44,42.35,50 >>Travel to The Westrift
>>|cRXP_WARN_铸|T135863:0|t[水上漫步]过水|r << Shaman
>>|cRXP_WARN_铸|T237528:0|t【霜道】渡水|r << DK
.skill coldweatherflying,1,1
step
.goto BoreanTundra,34.44,42.35
.use 34669 >>|cRXP_WARN_使用|r|T133015:0|t[Arcanometer]|cRXP_WARN_at地面上的|cRX_PICK_Cleftcliff异常|r|r
.complete 11576,1 
.skill coldweatherflying,1,1
step
#completewith next
.goto BoreanTundra,34.44,42.35,100 >>Travel to The Westrift
.skill coldweatherflying,<1,1
step
.goto BoreanTundra,34.44,42.35
.use 34669 >>|cRXP_WARN_使用|r|T133015:0|t[Arcanometer]|cRXP_WARN_at地面上的|cRX_PICK_Cleftcliff异常|r|r
.complete 11576,1 
.skill coldweatherflying,<1,1
step
#completewith next
.goto BoreanTundra,35.15,43.52,40,0 << !Shaman !DK
.goto BoreanTundra,38.46,43.37,50,0 << !Shaman !DK
.goto BoreanTundra,39.85,42.18,50,0 << !Shaman !DK
.goto BoreanTundra,41.30,41.79,70,0
.goto BoreanTundra,41.80,39.16,100 >>返回贝丽尔角
>>|cRXP_WARN_铸|T135863:0|t[水上漫步]过水|r << Shaman
>>|cRXP_WARN_铸|T237528:0|t【霜道】渡水|r << DK
.skill coldweatherflying,1,1
step
#completewith next
.cast 45780 >>|cRXP_WARN_使用|r|T133709:0|t[铍盾雷管]|cRXP_WARN_to禁用|cRXP-ENEMY_Inquisitor Salrand的|r盾|r
.use 34897
.skill coldweatherflying,1,1
step
.goto BoreanTundra,41.80,39.16
.use 34897 >>杀死|cRXP_ENEMY_Inquisitor Salrand|r。抢劫|cRX_PICK_Salrand的锁箱|r，她为了|cRXP_Loot_Sallrand的坏钥匙而掉在地上|r
.complete 11671,1 
.mob Inquisitor Salrand
.skill coldweatherflying,1,1
step
#completewith next
.goto BoreanTundra,41.80,39.16,100 >>Travel to Beryl Point
.skill coldweatherflying,<1,1
step
#completewith next
.cast 45780 >>|cRXP_WARN_使用|r|T133709:0|t[铍盾雷管]|cRXP_WARN_to禁用|cRXP-ENEMY_Inquisitor Salrand的|r盾|r
.use 34897
.skill coldweatherflying,<1,1
step
.goto BoreanTundra,41.80,39.16
.use 34897 >>杀死|cRXP_ENEMY_Inquisitor Salrand|r。抢劫|cRX_PICK_Salrand的锁箱|r，她为了|cRXP_Loot_Sallrand的坏钥匙而掉在地上|r
.complete 11671,1 
.mob Inquisitor Salrand
.skill coldweatherflying,<1,1
step
#completewith next
.groundgoto BoreanTundra,45.03,37.97,60,0
.goto BoreanTundra,45.26,33.35,60 >>前往琥珀色壁架
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Garren, |cRXP_FRIENDLY_图书馆员多纳森|r, |cRXP_FRIENDLY_苏雷斯塔兹|r
.turnin 11576 >>交任务: |cRXP_FRIENDLY_监视裂谷：悬崖异常|r
.accept 11582 >>接任务: |cRXP_LOOT_监视裂谷：峭壁断层|r
.goto BoreanTundra,44.98,33.38
.turnin 11671 >>交任务: |cRXP_FRIENDLY_与时间赛跑|r
.accept 11679 >>接任务: |cRXP_LOOT_重铸钥匙|r
.goto BoreanTundra,45.26,33.35
.turnin 11679 >>交任务: |cRXP_FRIENDLY_重铸钥匙|r
.accept 11680 >>接任务: |cRXP_LOOT_准备飞翔|r
.goto BoreanTundra,45.33,34.62
.target Librarian Donathan
.target Librarian Garren
.target Surristrasz
step
.goto BoreanTundra,46.38,37.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战斗法师安斯姆|r
.turnin 11680 >>交任务: |cRXP_FRIENDLY_准备飞翔|r
.accept 11681 >>接任务: |cRXP_LOOT_营救艾瓦诺尔|r
.timer 53,Rescuing Evanor RP
.target Warmage Anzim
step
.goto BoreanTundra,43.01,43.86,-1
.goto BoreanTundra,46.37,32.39,-1
>>|cRXP_WARN_等待飞行和RP完成。一旦所有RP完成，你将被传送到任务回合|r
>>|cRXP_WARN_如果事件没有开始，放弃拯救埃文并再次接受它|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师艾瓦诺尔|r
.turnin 11681 >>交任务: |cRXP_FRIENDLY_营救艾瓦诺尔|r
.accept 11682 >>接任务: |cRXP_LOOT_苏雷斯塔兹|r
.target Archmage Evanor
step
.goto BoreanTundra,43.83,29.41
>>|cRXP_WARN_小心地下山或跳进下面的水里|r
.use 34669 >>|cRXP_WARN_使用|r|T133015:0|t[Arcanometer]|cRXP_WARN_at海底的|cRX_PICK_Sundered Chasm|r|r
.complete 11582,1 
.skill coldweatherflying,1,1
step
.goto BoreanTundra,43.83,29.41
>>|cRXP_WARN_飞入下面的水中|r
.use 34669 >>|cRXP_WARN_使用|r|T133015:0|t[Arcanometer]|cRXP_WARN_at海底的|cRX_PICK_Sundered Chasm|r|r
.complete 11582,1 
.skill coldweatherflying,<1,1
step
#completewith next
.groundgoto BoreanTundra,45.5,31.2,20,0
.groundgoto BoreanTundra,47.12,29.16,20,0
.goto BoreanTundra,50.07,30.72,80 >>前往Coldrock采石场
step
#completewith next
.goto BoreanTundra,54.1,34.5,0,0
.goto BoreanTundra,52.0,30.6,0
.goto BoreanTundra,50.9,33.4,0
>>杀死|cRXP_ENEMY_贝里尔寻宝者|r
.complete 11612,1 
.mob Beryl Treasure Hunter
step
>>单击地面上|cRXP_PICK_“Elder Kesuk”|r、|cRX_PICK_“Elder Takret”|r和|cRXP_PICK_”Elder Sagani“|r的标记
.complete 11605,1 
.goto BoreanTundra,50.86,32.43
.complete 11605,3 
.goto BoreanTundra,52.31,31.13
.complete 11605,2 
.goto BoreanTundra,52.81,34.02
step
.goto BoreanTundra,54.1,34.5,70,0
.goto BoreanTundra,52.0,30.6,70,0
.goto BoreanTundra,50.9,33.4,70,0
.goto BoreanTundra,54.1,34.5
>>杀死|cRXP_ENEMY_贝里尔寻宝者|r
.complete 11612,1 
.mob Beryl Treasure Hunter
step
.goto BoreanTundra,54.63,35.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atkanok|r
.turnin 11605 >>交任务: |cRXP_FRIENDLY_海象人的先祖|r
.accept 11607 >>接任务: |cRXP_LOOT_失落的灵魂|r
step
.goto BoreanTundra,54.29,36.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊塔鲁克|r
.turnin 11612 >>交任务: |cRXP_FRIENDLY_夺回采掘场|r
.accept 11617 >>接任务: |cRXP_LOOT_别让他们逃了！|r
.target Etaruk
step
#label cores
#completewith coresEnd
.waypoint BoreanTundra,51.7,31.6,15,0
.waypoint BoreanTundra,52.3,31.0,40,0
.waypoint BoreanTundra,51.0,32.3,40,0
.goto BoreanTundra,51.7,31.6,0,0
>>杀死|cRXP_ENEMY_Berry猎犬|r。掠夺它们的|T134337:0|t[|cRXP-Loot_恶意核心|r]
.use 34711 >>|cRXP_WARN_使用|r|T134337:0|t[|cRXP_LOOT_恶意核心|r]|cRXT_WARN_on |cRXP_FRIENDLY_Kaskala工匠|r和|r|cRXP-FRIENDLY_KaskalaShaman|r
.collect 34711,6,11607,0x3,-1 
.complete 11607,1 
.complete 11607,2 
.mob Beryl Hound
step
.goto BoreanTundra,52.6,35.5
>>杀死|cRXP_ENEMY_Beryl回收者|r。掠夺他们的|T133717:0|t[|cRXP-Loot_Gnomish手榴弹|r]
>>|cRXP_WARN_站在悬崖边|r
.use 34772 >>|cRXP_WARN_使用|r|T133717:0|t[|cRXP_LOOT_Gnomish手榴弹|r]|cRXP_WARN_to摧毁|r|cRX_PICK_East平台|r
.collect 34772,3,11617,0x7,-1 
.complete 11617,1 
.mob Beryl Reclaimer
step
.goto BoreanTundra,50.3,34.1
>>杀死|cRXP_ENEMY_Beryl回收者|r。掠夺他们的|T133717:0|t[|cRXP-Loot_Gnomish手榴弹|r]
>>|cRXP_WARN_站在悬崖边|r
.use 34772 >>|cRXP_WARN_使用|r|T133717:0|t[|cRXP_LOOT_Gnomish手榴弹|r]|cRXP_WARN_to摧毁|r|cRX_PICK_West平台|r
.collect 34772,3,11617,0x7,-1 
.complete 11617,3 
.mob Beryl Reclaimer
step
#label North
.goto BoreanTundra,52.6,32.4
>>杀死|cRXP_ENEMY_Beryl回收者|r。掠夺他们的|T133717:0|t[|cRXP-Loot_Gnomish手榴弹|r]
>>|cRXP_WARN_站在|r|cRXP_PICK_North平台正下方|r
.use 34772 >>|cRXP_WARN_使用|r|T133717:0|t[|cRXP_LOOT_Gnomish手榴弹|r]|cRXP_WARN_to摧毁|r|cRX_PICK_North平台|r
.collect 34772,3,11617,0x7,-1 
.complete 11617,2 
.mob Beryl Reclaimer
step
#requires cores
#label coresEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Atkanok, |cRXP_FRIENDLY_伊塔鲁克|r
.turnin 11607 >>交任务: |cRXP_FRIENDLY_失落的灵魂|r
.accept 11609 >>接任务: |cRXP_LOOT_寻找古器|r
.goto BoreanTundra,54.63,35.88
.turnin 11617 >>交任务: |cRXP_FRIENDLY_别让他们逃了！|r
.accept 11623 >>接任务: |cRXP_LOOT_拜访馆长|r
.goto BoreanTundra,54.29,36.09
.target Etaruk
step
#completewith next
.goto BoreanTundra,51.2,36.5,50,0
.goto BoreanTundra,52.9,32.6,0
>>将|cRXP_Loot_Tuskarr仪式物品|r洗劫一空
>>|cRXP_WARN_它们看起来像白色和蓝色的熏香器或砧|r
.complete 11609,1 
step
.goto BoreanTundra,50.1,32.6
>>杀死|cRXP_ENEMY_策展人Insivius|r
.complete 11623,1 
.mob Curator Insivius
step
.goto BoreanTundra,52.9,32.6,70,0
.goto BoreanTundra,53.9,35.0,70,0
.goto BoreanTundra,50.9,33.2
>>将|cRXP_Loot_Tuskarr仪式物品|r洗劫一空
>>|cRXP_WARN_它们看起来像白色和蓝色的熏香器或砧|r
.complete 11609,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Atkanok, |cRXP_FRIENDLY_伊塔鲁克|r
.turnin 11609 >>交任务: |cRXP_FRIENDLY_寻找古器|r
.accept 11610 >>接任务: |cRXP_LOOT_先祖的回归|r
.goto BoreanTundra,54.63,35.88
.turnin 11623 >>交任务: |cRXP_FRIENDLY_拜访馆长|r
.goto BoreanTundra,54.29,36.09
.target Etaruk
step
.use 34715 >>|cRXP_WARN_使用|r|T134378:0|t[Tuskarr仪式对象]|cRXP_WARN_next到|cRX_PICK_“Elder Sagani”|r、|cRXP_ICK_|r
>>|cRXP_WARN_Do NOT wait for the RP|r
.complete 11610,2 
.goto BoreanTundra,52.81,34.04
.complete 11610,3 
.goto BoreanTundra,52.32,31.15
.complete 11610,1 
.goto BoreanTundra,50.85,32.40
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atkanok|r
.turnin 11610 >>交任务: |cRXP_FRIENDLY_先祖的回归|r
.goto BoreanTundra,54.63,35.88
step
#completewith next
.goto BoreanTundra,57.05,44.32,120 >>前往D.E.H.T.A.营地
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎扎|r, |cRXP_FRIENDLY_大德鲁伊拉索留斯|r, |cRXP_FRIENDLY_圣职者塞妮丝|r
.turnin 11868 >>交任务: |cRXP_FRIENDLY_驯鹿杀手之死|r
.goto BoreanTundra,56.80,44.04
.turnin 11866 >>交任务: |cRXP_FRIENDLY_敌人的耳环|r
.accept 11878 >>接任务: |cRXP_LOOT_库诺克的智慧|r
.goto BoreanTundra,57.05,44.32
.turnin 11872 >>交任务: |cRXP_FRIENDLY_罪恶的蛤蜊主宰……|r
.goto BoreanTundra,57.33,44.08
.target Hierophant Cenius
.target Zaza
.target Arch Druid Lathorius
step << skip
.goto BoreanTundra,57.0,44.3,0
.goto BoreanTundra,59.25,30.83
>>护送|cRXP_FRIENDLY_Mamuth小牛|r向北到|cRXP_FRIENDLY_Khu'Nok|r。|cRXP-WARN_不要超出渲染范围（100码），因为这会使小牛|r散开。
>>|cRXP_WARN_如果小牛逃跑，放弃并从|r|cRXP_FRIENDLY_Lathorius手中夺回任务|r
.complete 11878,1 
.target Khu'nok the Behemoth
.target Arch Druid Lathorius
step
#completewith next
.goto BoreanTundra,59.43,30.38,80 >>前往|cRXP_FRIENDLY_Khu'nok|r
step
.goto BoreanTundra,59.43,30.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨兽库诺克|r
.turnin 11878 >>交任务: |cRXP_FRIENDLY_库诺克的智慧|r
.accept 11879 >>接任务: |cRXP_LOOT_猛犸毁灭者卡奥|r
.target Khu'nok the Behemoth
step
#completewith next
.goto BoreanTundra,53.7,24.4
.vehicle >>单击|cRXP_FRIENDLY_Wooly Mammoth Bull|r安装
.unitscan Wooly Mammoth Bull
step
.goto BoreanTundra,53.84,24.08
>>Engage |cRXP_ENEMY_Kaw the Mammoth Destroyer|r by running near him
>>|cRXP_WARN_施法|r|T132337:0|t[猛犸冲锋]（2）|cRXP_WARN_造成伤害并眩晕3秒|r
>>|cRXP_WARN_施法|r|T132255:0|t[Mammoth Trample]（1）|cRXP_WARN_在近战范围内造成显著伤害|r
>>|cRXP_WARN_或者，如果你的伤害很高，你可以在下马时更快地杀死猛犸毁灭者|cRXP_ENEMY_Kaw|r
>>杀死|cRXP_ENEMY_Kaw的猛犸驱逐舰|r。拆除地面上的|cRXP_FRIENDLY_Wooly猛犸牛|r。抢劫|cRXD_Loot_Kaw的战争戟|r
.complete 11879,1 
.mob Kaw the Mammoth Destroyer
step
#completewith next
.goto BoreanTundra,56.56,20.07,100 >>前往Fizzcrank Airstrip
step
.goto BoreanTundra,56.56,20.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fp Fizzcrank >>获取Fizzcrank Airstrip飞行路线
.target Kara Thricestar
step
#completewith next
.goto BoreanTundra,57.05,44.32,120 >>前往D.E.H.T.A.营地
step
.goto BoreanTundra,57.05,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lathorious|r
.turnin 11879 >>交任务: |cRXP_FRIENDLY_猛犸毁灭者卡奥|r
.accept 11892 >>接任务: |cRXP_LOOT_刺杀哈罗德·兰恩|r
.target Arch Druid Lathorius
step
.goto BoreanTundra,49.90,41.50
.use 35293 >>杀死|cRXP_ENEMY_Harold Lane|r
>>|cRXP_WARN_使用|r|T134229:0|t[Cenarion Horn]|cRXP_WARN_召唤|cRXP_FRIENDLY_Stamping Mammoths|r，这将对|cRXT_ENEMY_Harold Lane|r造成重大伤害。远离他放置的任何陷阱
>>|cRXP_WARN_这个任务很难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
.complete 11892,1 
.unitscan Harold Lane
.isOnQuest 11892
step
.goto BoreanTundra,57.05,44.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lathorious|r
.turnin 11892 >>交任务: |cRXP_FRIENDLY_刺杀哈罗德·兰恩|r
.isQuestComplete 11892
.target Arch Druid Lathorius
step
#sticky
#label AbandonAss
.goto BoreanTundra,63.8,46.1
.abandon 11892 >>放弃对哈罗德·莱恩的刺杀
step
#completewith next
.goto BoreanTundra,63.80,46.12,80 >>前往卡斯卡拉
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿泰卡|r, |cRXP_FRIENDLY_乌泰克|r
.turnin 11932 >>交任务: |cRXP_FRIENDLY_懦夫和蠢货|r
.accept 12086 >>接任务: |cRXP_LOOT_卡库特之子|r
.accept 11949 >>接任务: |cRXP_LOOT_战斗到底！|r
.goto BoreanTundra,63.80,46.12
.daily 11945 >>接任务: |cRXP_LOOT_做最坏的打算|r
.goto BoreanTundra,63.95,45.72
.target Ataika
.target Utaik
step
#requires AbandonAss
#completewith Raiders
.goto BoreanTundra,66.2,45.9,0
.goto BoreanTundra,63.7,52.2,0
>>在地面上掠夺|cRXP_Loot_Kaskala供应品|r
.complete 11945,1 
.isOnQuest 11945
step << !DK
#requires AbandonAss
.goto BoreanTundra,67.3,47.7,60,0
.goto BoreanTundra,63.61,53.93
>>杀死|cRXP_ENEMY_Kvaldir突袭者|r
.complete 11949,1 
.skill coldweatherflying,1,1
.mob Kvaldir Raider
step
#requires AbandonAss
#label Raiders
.goto BoreanTundra,67.3,47.7,60,0
.goto BoreanTundra,63.61,53.93,60,0
.goto BoreanTundra,66.38,55.90,60,0
.goto BoreanTundra,67.96,56.69
>>杀死|cRXP_ENEMY_Kvaldir突袭者|r
.complete 11949,1 
.skill coldweatherflying,<1,1 << !DK
.mob Kvaldir Raider
step
.goto BoreanTundra,67.3,47.7,60,0
.goto BoreanTundra,63.61,53.93,60,0
.goto BoreanTundra,66.38,55.90,60,0
.goto BoreanTundra,67.96,56.69
>>在地面上掠夺|cRXP_Loot_Kaskala供应品|r
.complete 11945,1 
.isOnQuest 11945
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿泰卡|r, |cRXP_FRIENDLY_乌泰克|r
.turnin 11949 >>交任务: |cRXP_FRIENDLY_战斗到底！|r
.accept 11950 >>接任务: |cRXP_LOOT_穆希特的智慧|r
.goto BoreanTundra,63.80,46.12
.turnin 11945 >>交任务: |cRXP_FRIENDLY_做最坏的打算|r
.goto BoreanTundra,63.95,45.72
.isOnQuest 11945
.target Ataika
.target Utaik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿泰卡|r
.turnin 11949 >>交任务: |cRXP_FRIENDLY_战斗到底！|r
.accept 11950 >>接任务: |cRXP_LOOT_穆希特的智慧|r
.goto BoreanTundra,63.80,46.12
.target Ataika
step
#completewith next
.goto BoreanTundra,67.21,54.86,100 >>向|cRXP_FRIENDLY_Muahit|r行进
step
.goto BoreanTundra,67.21,54.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_长者穆希特|r
.turnin 11950 >>交任务: |cRXP_FRIENDLY_穆希特的智慧|r
.accept 11961 >>接任务: |cRXP_LOOT_神灵的眷顾|r
.target Elder Muahit
step
.goto BoreanTundra,67.65,50.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iruk's|r corpse underwater
.complete 11961,1 
.skipgossip
.target Iruk
step
.goto BoreanTundra,67.21,54.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_长者穆希特|r
.turnin 11961 >>交任务: |cRXP_FRIENDLY_神灵的眷顾|r
.accept 11968 >>接任务: |cRXP_LOOT_情势扭转|r
.target Elder Muahit
step
.goto BoreanTundra,67.41,56.87
>>杀死|cRXP_ENEMY_Heigarr恐怖|r
>>|cRXP_WARN_如果他的健康状况低于50%，你第一次可能不会得到赞扬|r
.complete 11968,1 
.unitscan Heigarr the Horrible
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_长者穆希特|r, |cRXP_FRIENDLY_霍塔瓦|r
.turnin 11968 >>交任务: |cRXP_FRIENDLY_情势扭转|r
.goto BoreanTundra,67.21,54.86
.accept 12117 >>接任务: |cRXP_LOOT_前往莫亚基港口|r
.goto BoreanTundra,67.27,54.86
.target Elder Muahit
.target Hotawa
step << skip
.goto BoreanTundra,78.5,51.5
>>前往Unu'pe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔克·迪弗斯巴克|r
.fp Unu'pe >>获取Unu'pe飞行路线
.target Bilko Driftspark
step
#completewith next
.goto BoreanTundra,82.01,46.42,100 >>前往死亡看台
step
.goto BoreanTundra,82.01,46.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venn|r
.turnin 12086 >>交任务: |cRXP_FRIENDLY_卡库特之子|r
.accept 11944 >>接任务: |cRXP_LOOT_我们被包围了！|r
.target Corporal Venn
step
#level 71
.goto BoreanTundra,82.17,46.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Casey|r
.accept 12157 >>接任务: |cRXP_LOOT_失踪的信使|r
.target Private Casey
step
.goto BoreanTundra,81.46,43.80,50,0
.goto BoreanTundra,82.78,43.69,50,0
.goto BoreanTundra,83.24,40.40,50,0
.goto BoreanTundra,81.46,43.80
>>杀死|cRXP_ENEMY_Ziggurat防御者|r
.complete 11944,1 
.mob Ziggurat Defender
step
.goto BoreanTundra,82.01,46.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venn|r
.turnin 11944 >>交任务: |cRXP_FRIENDLY_我们被包围了！|r
.accept 12088 >>接任务: |cRXP_LOOT_死亡骑士萨萨里安|r
.target Corporal Venn
step
#completewith next
.goto BoreanTundra,84.7,41.0,30 >>前往Ziggurat内的|cRXP_FRIENDLY_Thassarian|r
step
.goto BoreanTundra,84.80,41.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 12088 >>交任务: |cRXP_FRIENDLY_死亡骑士萨萨里安|r
.accept 11956 >>接任务: |cRXP_LOOT_寻找护命匣|r
.target Thassarian
step
.goto BoreanTundra,85.40,33.34
>>单击水下的|cRXP_PICK_Frozen Phylactery|r以召唤|cRXP_ENEMY_Phylactery守护者|r
>>杀死|cRXP_ENEMY_Phylactery守护者|r。为|cRXD_Loot_Tanathal的Phylactery|r掠夺它
.complete 11956,1 
.mob Phylactery Guardian
step
.goto BoreanTundra,84.80,41.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 11956 >>交任务: |cRXP_FRIENDLY_寻找护命匣|r
.accept 11938 >>接任务: |cRXP_LOOT_争取时间|r
.target Thassarian
step
.goto BoreanTundra,84.42,32.06,60,0
.goto BoreanTundra,83.35,30.70,60,0
.goto BoreanTundra,85.28,28.18,60,0
.goto BoreanTundra,86.85,28.94,60,0
.goto BoreanTundra,88.14,27.45,60,0
.goto BoreanTundra,84.49,24.31,60,0
.goto BoreanTundra,85.7,27.3
.use 35944 >>杀死|cRXP_ENEMY_En'kilah|r
>>|cRXP_WARN_使用|r|T133730:0|t[Lurid的骨头]|cRXP_WARN_to召唤|cRXP_FRIENDLY_Lurid|r来帮助您杀死|r|cRXP-ENEMY_En'kilah|r
.complete 11938,1 
.mob En'kilah Necromancer
.mob En'kilah Abomination
.mob En'kilah Crypt Fiend
.mob En'kilah Gargoyle
.mob En'kilah Ghoul
.mob En'kilah Necrolord
step
.goto BoreanTundra,84.80,41.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 11938 >>交任务: |cRXP_FRIENDLY_争取时间|r
.accept 11942 >>接任务: |cRXP_LOOT_通行之语|r
.target Thassarian
step
#completewith next
.groundgoto BoreanTundra,85.0,28.9,70,0
.goto BoreanTundra,88.59,28.30,40 >>前往恩基拉痛苦的顶峰
step
.goto BoreanTundra,89.38,28.86
>>杀死|cRXP_ENEMY_神秘网|r以释放|cRXX_ENEMY_Talet Kha|r
>>杀死|cRXP_ENEMY_大祭司Talet Kha|r。掠夺他的|cRXX_Loot_Sollo|r
.complete 11942,3 
.mob High Priest Talet-Kha
.mob Mystical Webbing
.mob En'kilah Crypt Fiend
step
#completewith next
.groundgoto BoreanTundra,87.7,22.0,40,0
.goto BoreanTundra,88.68,21.72,25 >>前往恩基拉的血之尖塔。从侧门进入
step
.goto BoreanTundra,88.05,20.94
>>杀死|cRXP_ENEMY_大祭司Andorath|r。掠夺他的|cRXX_Loot_Sollow|r
.complete 11942,1 
.mob High Priest Andorath
step
#completewith next
.goto BoreanTundra,84.2,21.8,40 >>前往衰退的顶峰
step
.goto BoreanTundra,83.9,20.5
>>杀死|cRXP_ENEMY_En'kilah亡灵法师|r以释放|cRXX_ENEMY_Naferset大祭司|r
>>杀死|cRXP_ENEMY_大祭司纳弗塞特|r。掠夺他的|cRXX_Loot_Sollow|r
.complete 11942,2 
.mob High Priest Naferset
.mob En'kilah Necromancer
step
.goto BoreanTundra,84.80,41.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 11942 >>交任务: |cRXP_FRIENDLY_通行之语|r
.accept 12019 >>接任务: |cRXP_LOOT_最后的义务|r
.target Thassarian
step
#completewith next
.goto BoreanTundra,86.5,28.7,15 >>|cRXP_WARN_把传送机带到天空中的Ziggurat|r
.goto BoreanTundra,86.7,30.2,8 >>|cRXP_WARN_使用第一个传送机后，直接在您第一次进入的绿色圆圈上方使用第二个（蓝色）传送机|r
.isOnQuest 12019
step
.goto BoreanTundra,86.64,31.38
.gossipoption 93099 >>对话: |cRXP_FRIENDLY_萨萨里安|r
.timer 142,Last Rites RP
.skipgossip
.target Thassarian
.isOnQuest 12019
step
>>杀死|cRXP_ENEMY_瓦兰纳尔王子|r
>>|cRXP_WARN_让|cRXP_FRIENDLY_Thassarian|r坦克|cRXP-ENEMY_Prince Valanar|r持续几秒钟，然后再开始造成伤害|r
>>|cRXP_WARN_BOWARE|r|T136157:0|t[灵魂偏转]
>>|cRXP_WARN_此debuf|cRXP_ENEMY_Prince Valanar|r适用于您，反映您在6秒内造成的100%伤害。在此期间停止攻击。如果你有DoT's ON |cRXP_ENEMY_Prince Valanar|r，它们也会被反射|r
>>|cRXP_WARN_这个任务很难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
.complete 12019,1 
.goto BoreanTundra,86.7,30.2
.mob Prince Valanar
step
.goto BoreanTundra,86.80,30.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨萨里安|r
.turnin 12019 >>交任务: |cRXP_FRIENDLY_最后的义务|r
.target Thassarian
step
#completewith next
.goto BoreanTundra,86.96,28.93,12,0
.goto BoreanTundra,86.96,28.93,10 >>|cRXP_WARN_把传送机放在地上|r
step
#completewith next
.groundgoto BoreanTundra,85.15,28.46,50,0
.goto Dragonblight,29.15,55.32,150 >>龙灯星空之旅
step
.goto Dragonblight,29.15,55.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕蕾娜·银云|r
.fp Stars' Rest >>获取星星的休息飞行路径
.target Palena Silvercloud
step
.goto Dragonblight,28.83,56.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_信使兰森|r
>>|cRXP_WARN_不接受下一个任务|r
.turnin 12157 >>交任务: |cRXP_FRIENDLY_失踪的信使|r
.isOnQuest 12157
.target Courier Lanson
step
#completewith GarrenM
.hs >>心与心保持一致
step
#completewith GarrenM
.goto BoreanTundra,44.98,33.38,100 >>前往琥珀色壁架
.skill coldweatherflying,<1,1
step
#completewith GarrenM
.goto BoreanTundra,58.97,68.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师托马斯|r
.fly Amber Ledge >>飞到琥珀色壁架
.skill coldweatherflying,1,1
.skill riding,300,1
.target Tomas Riverwell
step
#label GarrenM
.goto BoreanTundra,44.98,33.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren|r
.turnin 11582 >>交任务: |cRXP_FRIENDLY_监视裂谷：峭壁断层|r
.accept 12728 >>接任务: |cRXP_LOOT_监视裂谷：冬鳞洞穴|r
.target Librarian Garren
step 
.goto BoreanTundra,45.33,34.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏雷斯塔兹|r
>>|cRXP_WARN_这会把你送到科尔德拉。这次飞行需要1米2秒|r
.turnin 11682 >>交任务: |cRXP_FRIENDLY_苏雷斯塔兹|r
.accept 11733 >>接任务: |cRXP_LOOT_飞越裂谷|r
.timer 62,Coldarra flight
.target Surristrasz
step
#completewith next
.goto BoreanTundra,45.33,34.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏雷斯塔兹|r
.fly Coldarra >>飞往考拉达
.target Surristrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师伯林纳德|r, |cRXP_FRIENDLY_莱洛拉斯|r, |cRXP_FRIENDLY_图书馆员塞尔拉|r
.turnin 11733 >>交任务: |cRXP_FRIENDLY_飞越裂谷|r
.accept 11900 >>接任务: |cRXP_LOOT_监测数据|r
.accept 11910 >>接任务: |cRXP_LOOT_古树的秘密|r
.goto BoreanTundra,32.94,34.40
.accept 11918 >>接任务: |cRXP_LOOT_基本的训练|r
.goto BoreanTundra,33.32,34.54
.accept 11912 >>接任务: |cRXP_LOOT_冰冷的草莓|r
.goto BoreanTundra,33.49,34.38
.target Archmage Berinand
.target Raelorasz
.target Librarian Serrah
step
#sticky
#completewith Weaver1
>>杀死|cRXP_ENEMY_Coldarra法术编织者|r
>>打开|cRXP_PICK_Frostberry|r。将其洗劫一空
.complete 11918,1 
.complete 11912,1 
.mob Coldarra Spellweaver
step
.goto BoreanTundra,32.69,27.79,70,0
.goto BoreanTundra,33.45,25.68,70,0
.goto BoreanTundra,33.73,29.97,70,0
.goto BoreanTundra,31.54,28.28,70,0
.goto BoreanTundra,34.79,26.95
.use 35648 >>杀死|cRXP_ENEMY_Coldarra Spellbinders |r。掠夺他们的|T134923:0|t[|cRXP-Loot_闪烁碎片|r]
>>|cRXP_WARN_使用|T134923:0|t[|cRXP_LOOT_闪烁碎片|r]开始任务|r
.collect 35648,1,11941,1 
.accept 11941 >>接任务: |cRXP_LOOT_奇怪……|r
.mob Coldarra Spellbinder
step
.goto BoreanTundra,33.31,34.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱洛拉斯|r
.turnin 11941 >>交任务: |cRXP_FRIENDLY_奇怪……|r
.accept 11943 >>接任务: |cRXP_LOOT_牢笼|r
.target Raelorasz
step
#completewith splinters
>>杀死|cRXP_ENEMY_Glacial Ancients|r和|cRXX_ENEMY_Magic-bond Ancients |r。掠夺他们的|cRXD_Loot_Splinters|r
.complete 11910,1 
.complete 11910,2 
.mob Glacial Ancient
.mob Magic-bound Ancient
step
.goto BoreanTundra,28.81,34.91,-1
.goto BoreanTundra,28.25,35.04,-1
>>单击地面上的|cRXP_PICK_Coldarra地质监视器|r
.complete 11900,2 
step
.goto BoreanTundra,24.14,29.60
>>杀死|cRXP_ENEMY_Warbringer Goredrak|r。掠夺他的|cRXX_Loot_Energy Core |r
.complete 11943,1 
.mob Warbringer Goredrak
step
.goto BoreanTundra,22.36,24.21,-1
.goto BoreanTundra,22.62,23.42,-1
>>单击地面上的|cRXP_PICK_Coldarra地质监视器|r
.complete 11900,4 
step
.goto BoreanTundra,27.32,20.41
>>杀死|cRXP_ENEMY_Cerulean|r将军。掠夺他的|cRXX_Loot_Prison Casing|r
.complete 11943,2 
.mob General Cerulean
step
#label Weaver1
.goto BoreanTundra,31.25,20.18,-1
.goto BoreanTundra,31.72,20.57,-1
>>单击地面上的|cRXP_PICK_Coldarra地质监视器|r
.complete 11900,3 
step
#sticky
#label berries2
#loop
.goto BoreanTundra,33.7,23.1,100,0
.goto BoreanTundra,34.3,31.2,100,0
.goto BoreanTundra,24.4,35.2,100,0
.goto BoreanTundra,21.5,26.9,100,0
.goto BoreanTundra,21.5,26.9,0
.goto BoreanTundra,24.4,35.2,0
.goto BoreanTundra,34.3,31.2,0
.goto BoreanTundra,33.7,23.1,0
>>杀死|cRXP_ENEMY_Coldarra法术编织者|r
.complete 11918,1 
.mob Coldarra Spellweaver
step
#loop
.goto BoreanTundra,33.7,23.1,100,0
.goto BoreanTundra,34.3,31.2,100,0
.goto BoreanTundra,24.4,35.2,100,0
.goto BoreanTundra,21.5,26.9,100,0
.goto BoreanTundra,21.5,26.9,0
.goto BoreanTundra,24.4,35.2,0
.goto BoreanTundra,34.3,31.2,0
.goto BoreanTundra,33.7,23.1,0
>>打开|cRXP_PICK_Frostberry|r。将其洗劫一空
.complete 11912,1 
step
#completewith next
.goto BoreanTundra,33.49,34.38,100 >>Travel to Transitus
step
#requires berries2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员塞尔拉|r, |cRXP_FRIENDLY_莱洛拉斯|r
.turnin 11912 >>交任务: |cRXP_FRIENDLY_冰冷的草莓|r
.accept 11914 >>接任务: |cRXP_LOOT_保持隐蔽|r
.goto BoreanTundra,33.49,34.38
.turnin 11918 >>交任务: |cRXP_FRIENDLY_基本的训练|r
.accept 11936 >>接任务: |cRXP_LOOT_蓝龙的卵|r
.turnin 11943 >>交任务: |cRXP_FRIENDLY_牢笼|r
.goto BoreanTundra,33.32,34.54
.target Raelorasz
.target Librarian Serrah
step
.use 35671 >>|cRXP_WARN_使用|r|T133836:0|t[强化奥术监狱]|cRXP_WARN_to召唤|r|cRXP-FRIENDLY_Keristrasza|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉斯塔萨|r
.accept 11946 >>接任务: |cRXP_LOOT_克莉斯塔萨|r
.turnin 11946 >>交任务: |cRXP_FRIENDLY_克莉斯塔萨|r
.accept 11951 >>接任务: |cRXP_LOOT_诱饵|r
.target Keristrasza
step
#completewith next
#loop
.line BoreanTundra,28.69,30.93,30.12,28.57,29.84,24.39,27.68,22.32,25.25,24.59,25.39,28.67
.goto BoreanTundra,28.69,30.93,40,0
.goto BoreanTundra,30.12,28.57,40,0
.goto BoreanTundra,29.84,24.39,40,0
.goto BoreanTundra,27.68,22.32,40,0
.goto BoreanTundra,25.25,24.59,40,0
.goto BoreanTundra,25.39,28.67,40,0
>>打开|cRXP_PICK_Crystallized Mana|r。掠夺它们以获取|cRXP_Loot_Crystallized马纳碎片|r
.complete 11951,1 
step
.goto BoreanTundra,29.5,30.81,90,0
.goto BoreanTundra,28.7,33.6,70,0
.goto BoreanTundra,27.5,31.3,70,0
.goto BoreanTundra,24.9,31.2,70,0
.goto BoreanTundra,25.2,24.2
>>杀死|cRXP_ENEMY_Coldarra Wyrmkins|r。掠夺他们的|T132394:0|t[|cRXP-Loot_冻结斧头|r]
.collect 35586,5,11936,1 
.mob Coldarra Wyrmkin
step
#loop
.line BoreanTundra,28.69,30.93,30.12,28.57,29.84,24.39,27.68,22.32,25.25,24.59,25.39,28.67
.goto BoreanTundra,28.69,30.93,40,0
.goto BoreanTundra,30.12,28.57,40,0
.goto BoreanTundra,29.84,24.39,40,0
.goto BoreanTundra,27.68,22.32,40,0
.goto BoreanTundra,25.25,24.59,40,0
.goto BoreanTundra,25.39,28.67,40,0
>>打开|cRXP_PICK_Crystallized Mana|r。掠夺它们以获取|cRXP_Loot_Crystallized马纳碎片|r
.complete 11951,1 
step
#sticky
#label reading
.goto BoreanTundra,28.31,28.46
>>单击地面上的|cRXP_PICK_Coldarra地质监视器|r
.complete 11900,1 
step
#label splinters
.goto BoreanTundra,29.3,27.4,50,0
.goto BoreanTundra,28.2,24.4,50,0
.goto BoreanTundra,26.2,25.4,50,0
.goto BoreanTundra,26.04,27.72,50,0
.goto BoreanTundra,28.31,28.46,50,0
.goto BoreanTundra,29.3,27.4,50,0
.goto BoreanTundra,28.2,24.4,50,0
.goto BoreanTundra,26.2,25.4,50,0
.goto BoreanTundra,26.04,27.72,50,0
.goto BoreanTundra,28.31,28.46
>>杀死|cRXP_ENEMY_Arcane Serpent|r。掠夺它们的|cRXX_Loot_Essences|r
>>|cRXP_WARN_在|r|cRXP_PICK_Blue Dragon Eggs上使用|r|T132394:0|t[|cRXP_LOOT_冻结斧头|r]|cRXP-WARN_|r
.collect 35586,5,11936,1,-1 
.complete 11936,1 
.complete 11914,1 
.mob Arcane Serpent
step
#requires reading
.goto BoreanTundra,30.1,23.4,70,0
.goto BoreanTundra,32.6,28.2,70,0
.goto BoreanTundra,28.0,33.5,70,0
.goto BoreanTundra,25.0,30.6,70,0
.goto BoreanTundra,25.5,35.6
>>杀死|cRXP_ENEMY_Glacial Ancients|r和|cRXX_ENEMY_Magic-bond Ancients |r。掠夺他们的|cRXD_Loot_Splinters|r
.complete 11910,1 
.complete 11910,2 
.mob Glacial Ancient
.mob Magic-bound Ancient
step
.use 35671 >>|cRXP_WARN_使用|r|T133836:0|t[强化奥术监狱]|cRXP_WARN_to召唤|r|cRXP-FRIENDLY_Keristrasza|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉斯塔萨|r
>>|cRXP_WARN_如果丢失，请与|cRXP_FRIENDLY_Raelorasz|r联系以获取新的|r
.turnin 11951 >>交任务: |cRXP_FRIENDLY_诱饵|r
.accept 11957 >>接任务: |cRXP_LOOT_莎拉苟萨的末日|r
.target Keristrasza
.target Raelorasz
step
.gossipoption 93094 >>对话: |cRXP_FRIENDLY_克莉斯塔萨|r
.skipgossip
.target Keristrasza
.use 35671
.isOnQuest 11957
step
#completewith next
.goto BoreanTundra,21.30,22.44
.cast 46793 >>|cRXP_WARN_使用|r|T132866:0|t[奥术力量聚焦]|cRXP_WARN_to召唤|r|cRXP-ENEMY_Saragosa|r
.timer 21,Saragosa's End RP
.use 35690
step
>>杀死|cRXP_ENEMY_Saragosa|r。为她掠夺她|cRXX_OOT_Corpse|r
.complete 11957,1 
.goto BoreanTundra,22.07,22.65
.use 35690
.skipgossip
.mob Saragosa
step
.use 35671 >>|cRXP_WARN_使用|r|T133836:0|t[强化奥术监狱]|cRXP_WARN_to召唤|r|cRXP-FRIENDLY_Keristrasza|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉斯塔萨|r
.turnin 11957 >>交任务: |cRXP_FRIENDLY_莎拉苟萨的末日|r
.accept 11967 >>接任务: |cRXP_LOOT_集结红龙|r
.goto BoreanTundra,21.57,22.55
.cooldown item,6948,>2
.target Keristrasza
step
.use 35671 >>|cRXP_WARN_使用|r|T133836:0|t[强化奥术监狱]|cRXP_WARN_to召唤|r|cRXP-FRIENDLY_Keristrasza|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉斯塔萨|r
.turnin 11957 >>交任务: |cRXP_FRIENDLY_莎拉苟萨的末日|r
.accept 11967 >>接任务: |cRXP_LOOT_集结红龙|r
.goto BoreanTundra,21.57,22.55
.skill coldweatherflying,1,1
.target Keristrasza

step
#questguide
.goto BoreanTundra,21.6,22.5,0
>>|cRXP_WARN_请勿骑回Transitus|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉斯塔萨|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员塞尔拉|r, |cRXP_FRIENDLY_莱洛拉斯|r, |cRXP_FRIENDLY_大法师伯林纳德|r
.turnin 11914 >>交任务: |cRXP_FRIENDLY_保持隐蔽|r
.goto BoreanTundra,33.49,34.38
.turnin 11967 >>交任务: |cRXP_FRIENDLY_集结红龙|r
.turnin 11936 >>交任务: |cRXP_FRIENDLY_蓝龙的卵|r
.accept 11969 >>接任务: |cRXP_LOOT_触动陷阱|r
.accept 11919 >>接任务: |cRXP_LOOT_猎龙|r
.goto BoreanTundra,33.32,34.54
.turnin 11900 >>交任务: |cRXP_FRIENDLY_监测数据|r
.turnin 11910 >>交任务: |cRXP_FRIENDLY_古树的秘密|r
.goto BoreanTundra,32.94,34.40
.skipgossip
.isOnQuest 11967
.target Keristrasza
.target Archmage Berinand
.target Raelorasz
.target Librarian Serrah
step
#questguide
.goto BoreanTundra,21.6,22.5,0
>>飞回Transitus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员塞尔拉|r, |cRXP_FRIENDLY_莱洛拉斯|r, |cRXP_FRIENDLY_大法师伯林纳德|r
.turnin 11914 >>交任务: |cRXP_FRIENDLY_保持隐蔽|r
.goto BoreanTundra,33.49,34.38
.turnin 11936 >>交任务: |cRXP_FRIENDLY_蓝龙的卵|r
.accept 11919 >>接任务: |cRXP_LOOT_猎龙|r
.goto BoreanTundra,33.32,34.54
.turnin 11900 >>交任务: |cRXP_FRIENDLY_监测数据|r
.turnin 11910 >>交任务: |cRXP_FRIENDLY_古树的秘密|r
.goto BoreanTundra,32.94,34.40
.skipgossip
.target Archmage Berinand
.target Raelorasz
.target Librarian Serrah
step
.goto BoreanTundra,21.6,22.5,0
>>|cRXP_WARN_请勿骑回Transitus|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉斯塔萨|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员塞尔拉|r, |cRXP_FRIENDLY_莱洛拉斯|r, |cRXP_FRIENDLY_大法师伯林纳德|r
.turnin 11914 >>交任务: |cRXP_FRIENDLY_保持隐蔽|r
.goto BoreanTundra,33.49,34.38
.turnin 11967 >>交任务: |cRXP_FRIENDLY_集结红龙|r
.turnin 11936 >>交任务: |cRXP_FRIENDLY_蓝龙的卵|r
.goto BoreanTundra,33.32,34.54
.turnin 11900 >>交任务: |cRXP_FRIENDLY_监测数据|r
.turnin 11910 >>交任务: |cRXP_FRIENDLY_古树的秘密|r
.goto BoreanTundra,32.94,34.40
.skipgossip
.isOnQuest 11967
.target Keristrasza
.target Archmage Berinand
.target Raelorasz
.target Librarian Serrah
step
>>飞回Transitus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员塞尔拉|r, |cRXP_FRIENDLY_莱洛拉斯|r, |cRXP_FRIENDLY_大法师伯林纳德|r
.turnin 11914 >>交任务: |cRXP_FRIENDLY_保持隐蔽|r
.goto BoreanTundra,33.49,34.38
.turnin 11936 >>交任务: |cRXP_FRIENDLY_蓝龙的卵|r
.goto BoreanTundra,33.32,34.54
.turnin 11900 >>交任务: |cRXP_FRIENDLY_监测数据|r
.turnin 11910 >>交任务: |cRXP_FRIENDLY_古树的秘密|r
.goto BoreanTundra,32.94,34.40
.skill coldweatherflying,<1,1
.target Archmage Berinand
.target Raelorasz
.target Librarian Serrah
step
.use 35671 >>|cRXP_WARN_使用|r|T133836:0|t[强化奥术监狱]|cRXP_WARN_to召唤|r|cRXP-FRIENDLY_Keristrasza|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克莉斯塔萨|r
.turnin 11957 >>交任务: |cRXP_FRIENDLY_莎拉苟萨的末日|r
.accept 11967 >>接任务: |cRXP_LOOT_集结红龙|r
.goto BoreanTundra,21.57,22.55
.skill coldweatherflying,<1,1
.target Keristrasza
step
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱洛拉斯|r
.turnin 11967 >>交任务: |cRXP_FRIENDLY_集结红龙|r
.accept 11969 >>接任务: |cRXP_LOOT_触动陷阱|r
.goto BoreanTundra,33.32,34.54
.target Raelorasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱洛拉斯|r
.turnin 11967 >>交任务: |cRXP_FRIENDLY_集结红龙|r
.goto BoreanTundra,33.32,34.54
.skill coldweatherflying,<1,1
.target Raelorasz

step
#questguide
.goto BoreanTundra,25.34,21.82
.cast 62272 >>|cRXP_WARN_使用|r|T132862:0|t[Raelorasz'Spark]|cRXP_WARN_next到|r|cRX_PICK_Signal Fire|r
.timer 195,Springing the Trap RP
>>|cRXP_WARN_等待RP|r
.use 44950
.complete 11969,1 
.isOnQuest 11969
step
#questguide
#completewith next
+|cRXP_WARN_卸载|cRXP_FRIENDLY_Keristrasza|r，然后铸造|T135992:0|t[慢速下降]|r << Mage
+|cRXP_WARN_当你靠近地面时，拆除|cRXP_FRIENDLY_Keristrasza|r，然后施放|T135928:0|t[Levitate]|r << Priest
+|cRXP_WARN_当你靠近地面时，拆除|cRXP_FRIENDLY_Keristrasza|r，然后施放|T135896:0|t[神盾]或|T135964:0|t][保护之手]|r << Paladin
.itemcount 17056,1 << Mage/Priest
step
#questguide
#completewith next
.goto BoreanTundra,21.91,30.45
.use 35506 >>|cRXP_WARN_寻找在Coldarra西北边缘飞行的|cRXP_ENEMY_Nexus Drake Hatchling|r|r
.cast 46607 >>|cRXP_WARN_使用|r|T135134:0|t[Raelorasz的长矛]|cRXP_WARN_on a|cRXP-ENEMY_Nexus Drake Hatchling|r捕获它|r
>>|cRXP_WARN_不要杀死|r|cRXP_ENEMY_Nexus Drake孵化器|r
.unitscan Nexus Drake Hatchling
.isOnQuest 11919
step
#questguide
.goto BoreanTundra,33.28,34.47
>>将|cRXP_FRIENDLY_Nexus Drake Hatchling|r带回Transitus中的|cRXP_RIENDLY_Raelorasz|r
>>|cRXP_WARN_|cRXP_FRIENDLY_Nexus Drake Hatchling|r将与您的移动速度相匹配|r
.complete 11919,1 
.target Raelorasz
.isOnQuest 11919
step
#questguide
.goto BoreanTundra,33.32,34.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱洛拉斯|r
.turnin 11919 >>交任务: |cRXP_FRIENDLY_猎龙|r
.turnin 11969 >>交任务: |cRXP_FRIENDLY_触动陷阱|r
.accept 11931 >>接任务: |cRXP_LOOT_破译密码|r
.daily 11940 >>接任务: |cRXP_LOOT_猎龙|r
.target Raelorasz
step
#questguide
#completewith next
.goto BoreanTundra,32.72,27.88,0
>>杀死|cRXP_ENEMY_Coldarra Spellbinders |r。掠夺他们的|cRXD_Loot_Shimering符文|r
.complete 11931,1 
.mob Coldarra Spellbinder
step
#questguide
.goto BoreanTundra,32.72,27.88
>>杀死|cRXP_ENEMY_Inquisitor Caleras|r。掠夺他获得|cRXP_Loot_AAzure Codex|r
.complete 11931,2 
.mob Inquisitor Caleras
step
#questguide
.goto BoreanTundra,21.91,30.45
.use 35506 >>|cRXP_WARN_寻找在Coldarra西北边缘飞行的|cRXP_ENEMY_Nexus Drake Hatchling|r|r
.cast 46607 >>|cRXP_WARN_使用|r|T135134:0|t[Raelorasz的长矛]|cRXP_WARN_on a|cRXP-ENEMY_Nexus Drake Hatchling|r捕获它|r
>>|cRXP_WARN_不要杀死|r|cRXP_ENEMY_Nexus Drake孵化器|r
.unitscan Nexus Drake Hatchling
.isOnQuest 11940
step
#questguide
.goto BoreanTundra,32.69,27.79,70,0
.goto BoreanTundra,33.45,25.68,70,0
.goto BoreanTundra,33.73,29.97,70,0
.goto BoreanTundra,31.54,28.28,70,0
.goto BoreanTundra,34.79,26.95
>>杀死|cRXP_ENEMY_Coldarra Spellbinders |r。掠夺他们的|cRXD_Loot_Shimering符文|r
.complete 11931,1 
.mob Coldarra Spellbinder
step
#questguide
.goto BoreanTundra,33.28,34.47
>>将|cRXP_FRIENDLY_Nexus Drake Hatchling|r带回Transitus中的|cRXP_RIENDLY_Raelorasz|r
>>|cRXP_WARN_|cRXP_FRIENDLY_Nexus Drake Hatchling|r将与您的移动速度相匹配|r
.complete 11940,1 
.target Raelorasz
.isOnQuest 11940
step
#questguide
.goto BoreanTundra,33.32,34.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱洛拉斯|r
.turnin 11931 >>交任务: |cRXP_FRIENDLY_破译密码|r
.turnin -11940 >>交任务: |cRXP_FRIENDLY_猎龙|r
.target Raelorasz

step
#completewith next
.goto BoreanTundra,33.13,34.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战斗法师阿达米|r
.fly Fizzcrank >>飞往Fizzcrank机场
.target Warmage Adami
step
#completewith ED
.goto BoreanTundra,57.12,18.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_查莉·诺斯托|r
.home >>将您的Hearthstone设置为Fizzcrank Airstrip
.target "Charlie" Northtop
step
.goto BoreanTundra,56.98,18.71
>>|cRXP_WARN_乘电梯直达|r|cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11707 >>交任务: |cRXP_FRIENDLY_迫在眉睫|r
.accept 11708 >>接任务: |cRXP_LOOT_机械侏儒|r
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,56.98,18.71
.gossipoption 93085 >>Talk to |cRXP_FRIENDLY_Fizzcrank|r to hear his tale
.skipgossip
.isOnQuest 11708
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,56.98,18.71
.gossipoption 93086 >>Talk to |cRXP_FRIENDLY_Fizzcrank|r to hear his tale
.skipgossip
.isOnQuest 11708
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,56.98,18.71
.gossipoption 93088 >>Talk to |cRXP_FRIENDLY_Fizzcrank|r to hear his tale
.skipgossip 25590,2
.isOnQuest 11708
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,56.98,18.71
.gossipoption 93090 >>Talk to |cRXP_FRIENDLY_Fizzcrank|r to hear his tale
.skipgossip 25590,2
.isOnQuest 11708
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,56.98,18.71
.gossipoption 93225 >>Talk to |cRXP_FRIENDLY_Fizzcrank|r to hear his tale
.skipgossip 25590,2
.isOnQuest 11708
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,56.98,18.71
.gossipoption 93227 >>Talk to |cRXP_FRIENDLY_Fizzcrank|r to hear his tale
.skipgossip 25590,2
.isOnQuest 11708
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,56.98,18.71
.gossipoption 93229 >>Talk to |cRXP_FRIENDLY_Fizzcrank|r to hear his tale
.skipgossip 25590,2
.isOnQuest 11708
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,56.98,18.71
.gossipoption 93231 >>Talk to |cRXP_FRIENDLY_Fizzcrank|r to hear his tale
.skipgossip 25590,2
.isOnQuest 11708
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,56.98,18.71
.gossipoption 93233 >>Talk to |cRXP_FRIENDLY_Fizzcrank|r to hear his tale
.skipgossip 25590,2
.isOnQuest 11708
.complete 11708,1 
.target Fizzcrank Fullthrottle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Jinky, |cRXP_FRIENDLY_墨尔杜·旋轮|r, Crafty
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11708 >>交任务: |cRXP_FRIENDLY_机械侏儒|r
.accept 11712 >>接任务: |cRXP_LOOT_物质转换注射器|r
.goto BoreanTundra,57.44,18.73
.accept 11704 >>接任务: |cRXP_LOOT_国王姆嘎姆嘎|r
.accept 11710 >>接任务: |cRXP_LOOT_转换器怎么了？|r
.goto BoreanTundra,57.52,18.62
.accept 11645 >>接任务: |cRXP_LOOT_恶心的雪地狗头人！|r
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
.target Jinky Twizzlefixxit
.target Mordle Cogspinner
.target Crafty Wobblesprocket
step
#questguide << !Druid !Shaman !Druid
#completewith Bonker
.goto BoreanTundra,57.3,13.1,0
.goto BoreanTundra,56.2,12.1,0
.goto BoreanTundra,55.0,13.1,0
.goto BoreanTundra,53.1,13.9,0
>>地面上的战利品|cRXP_Loot_Crafty的东西|r
.complete 11645,1 

step
#questguide << !Druid !Shaman !Druid
#completewith CStuff
.goto BoreanTundra,53.8,13.8,30 >>Enter the Magmoth Cave
step
#questguide << !Druid !Shaman !Druid
.goto BoreanTundra,53.8,13.8,40,0
.goto BoreanTundra,55.57,12.58
>>下拉到|cRXP_FRIENDLY_Bonker|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托格沃特|r
.accept 11673 >>接任务: |cRXP_LOOT_带我出去！|r
.target Bonker Togglevolt
step
#questguide << !Druid !Shaman !Druid
.goto BoreanTundra,53.8,13.8
>>|cRXP_WARN_护送|cRXP_FRIENDLY_Bonker|r就在Magmoth洞穴外|r
.complete 11673,1 
step
#label CStuff
.goto BoreanTundra,54.9,15.7,50,0
.goto BoreanTundra,57.3,13.1,50,0
.goto BoreanTundra,56.2,12.1,50,0
.goto BoreanTundra,55.0,13.1,50,0
.goto BoreanTundra,53.1,13.9
>>地面上的战利品|cRXP_Loot_Crafty的东西|r
.complete 11645,1 
.target Bonker Togglevolt
step
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|cRXP_WARN_乘电梯直达|r|cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11673 >>交任务: |cRXP_FRIENDLY_带我出去！|r
.isQuestComplete 11673
.target Fizzcrank Fullthrottle
step
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11645 >>交任务: |cRXP_FRIENDLY_恶心的雪地狗头人！|r
.accept 11650 >>接任务: |cRXP_LOOT_还要一些东西……|r
.itemcount 39682,1 
.target Crafty Wobblesprocket
step
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11645 >>交任务: |cRXP_FRIENDLY_恶心的雪地狗头人！|r
.target Crafty Wobblesprocket
step
#completewith next
.goto BoreanTundra,61.6,15.0,0
.goto BoreanTundra,59.4,17.6,0
.goto BoreanTundra,58.2,23.4,0
.goto BoreanTundra,63.5,22.4,0
.goto BoreanTundra,64.5,18.2,0
.use 34984 >>杀死|cRXP_ENEMY_Defendo-tank 66Ds|r，|cRXD_ENEMY_Scavenge-bot 004-A8s|r和|cRXP_ENEMY_Sentry-bot 57 Ks|r。掠夺它们|T134429:0|t[|cRXP_Loot_超声波螺丝刀|r]
>>|cRXP_WARN_使用|T134429:0|t[|cRXP_LOOT_超声波螺丝刀|r]开始任务|r
.collect 34984,1,11729,1
.accept 11729 >>接任务: |cRXP_LOOT_超声波螺丝刀|r
.mob Sentry-bot 57-K
.mob Scavenge-bot 004-A8
.mob Defendo-tank 66D


step
.goto BoreanTundra,61.7,20.9,70,0
.goto BoreanTundra,65.2,17.9,70,0
.goto BoreanTundra,64.2,23.2
.use 34973 >>杀死|cRXP_ENEMY_Fizzcrank机械侏儒|r.|cRXP-WARN_使用|r|T136093:0|t[重新诅咒透明质注入]|cRXP_WARN_在他们的尸体上|r
>>将|cRXP_Loot_Fizzcrank备件|r洗劫一空
.complete 11712,1 
.complete 11710,1 
.mob Fizzcrank Mechagnome
step
#questguide
.goto BoreanTundra,61.6,15.0,70,0
.goto BoreanTundra,59.4,17.6,70,0
.goto BoreanTundra,58.2,23.4,70,0
.goto BoreanTundra,63.5,22.4,70,0
.goto BoreanTundra,64.5,18.2
.use 34984 >>杀死|cRXP_ENEMY_Defendo-tank 66Ds|r，|cRXD_ENEMY_Scavenge-bot 004-A8s|r和|cRXP_ENEMY_Sentry-bot 57 Ks|r。掠夺它们|T134429:0|t[|cRXP_Loot_超声波螺丝刀|r]
>>|cRXP_WARN_使用|T134429:0|t[|cRXP_LOOT_超声波螺丝刀|r]开始任务|r
.collect 34984,1,11729,1
.accept 11729 >>接任务: |cRXP_LOOT_超声波螺丝刀|r
.mob Sentry-bot 57-K
.mob Scavenge-bot 004-A8
.mob Defendo-tank 66D


step
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Crafty, |cRXP_FRIENDLY_墨尔杜·旋轮|r, Jinky
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11729 >>交任务: |cRXP_FRIENDLY_超声波螺丝刀|r
.accept 11730 >>接任务: |cRXP_LOOT_主与仆|r
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
.turnin 11710 >>交任务: |cRXP_FRIENDLY_转换器怎么了？|r
.accept 11692 >>接任务: |cRXP_LOOT_寻找比希|r
.goto BoreanTundra,57.52,18.62
.turnin 11712 >>交任务: |cRXP_FRIENDLY_物质转换注射器|r
.accept 11788 >>接任务: |cRXP_LOOT_左膀右臂|r
.goto BoreanTundra,57.44,18.73
.target Jinky Twizzlefixxit
.target Mordle Cogspinner
.target Crafty Wobblesprocket
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Crafty, |cRXP_FRIENDLY_墨尔杜·旋轮|r, Jinky
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11729 >>交任务: |cRXP_FRIENDLY_超声波螺丝刀|r

.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
.turnin 11710 >>交任务: |cRXP_FRIENDLY_转换器怎么了？|r
.accept 11692 >>接任务: |cRXP_LOOT_寻找比希|r
.goto BoreanTundra,57.52,18.62
.turnin 11712 >>交任务: |cRXP_FRIENDLY_物质转换注射器|r
.accept 11788 >>接任务: |cRXP_LOOT_左膀右臂|r
.goto BoreanTundra,57.44,18.73
.target Jinky Twizzlefixxit
.target Mordle Cogspinner
.target Crafty Wobblesprocket
step
#completewith ED
.goto BoreanTundra,61.6,15.0,70,0
.goto BoreanTundra,59.4,17.6,70,0
.goto BoreanTundra,58.2,23.4,70,0
.goto BoreanTundra,63.5,22.4,70,0
.goto BoreanTundra,64.5,18.2
.use 34984 >>杀死|cRXP_ENEMY_Defendo-tank 66Ds|r，|cRXD_ENEMY_Scavenge-bot 004-A8s|r和|cRXP_ENEMY_Sentry-bot 57 Ks|r。掠夺它们|T134429:0|t[|cRXP_Loot_超声波螺丝刀|r]
>>|cRXP_WARN_使用|T134429:0|t[|cRXP_LOOT_超声波螺丝刀|r]开始任务|r
.collect 34984,1,11729,1
.accept 11729 >>接任务: |cRXP_LOOT_超声波螺丝刀|r
.mob Sentry-bot 57-K
.mob Scavenge-bot 004-A8
.mob Defendo-tank 66D


step
#questguide
#completewith ED
.use 35116 >>杀死|cRXP_ENEMY_Defendo-tank 66Ds|r，|cRXX_ENEMY_Scavenge-bot 004-A8s|r和|cRXD_ENEMY_Sentry-bot 57 Ks|r |cRXP_WARN_Use|r|T134429:0|t[|cRXP_OOT_超声波螺丝刀|r]|cRXT_WARN_on their body|r
.complete 11730,1 
.mob Sentry-bot 57-K
.mob Scavenge-bot 004-A8
.mob Defendo-tank 66D


step
.goto BoreanTundra,60.24,20.39
>>点击|cRXP_PICK_West Point Station Valve|r调用|cRXP_ENEMY_Twonky |r
>>杀死|cRXP_ENEMY_Twonky |r
.complete 11788,1 
.mob Twonky
step
.goto BoreanTundra,63.68,22.50
>>点击|cRXP_PICK_Mid Point Station Valve|r调用|cRXP_ENEMY_Max Blasto|r
>>杀死|cRXP_ENEMY_Max Blasto|r
.complete 11788,3 
.mob Max Blasto
step
.goto BoreanTundra,64.40,23.14
>>地面上的织机|cRXP_OOT_Crafty的工具|r
.complete 11650,1 
.itemcount 39682,1 
.isOnQuest 11650
step
#label ED
.goto BoreanTundra,65.41,17.51
>>点击|cRXP_PICK_North Point Station Valve|r调用|cRXP_ENEMY_ED-210|r
>>杀死|cRXP_ENEMY_ED-210|r
.complete 11788,2 
.mob ED-210
step
#questguide
.goto BoreanTundra,61.0,17.0,70,0
.goto BoreanTundra,58.5,20.8,70,0
.goto BoreanTundra,63.1,21.7
.use 35116 >>杀死|cRXP_ENEMY_Defendo-tank 66Ds|r、|cRXP_ENEMY_Scavenge-bot 004-A8s|r和|cRXD_ENEMY_Sentry-bot 57 Ks|r
>>|cRXP_WARN_在尸体上使用|r|T134429:0|t[|cRXP_OOT_超声波螺丝刀|r]|cRXP-WARN_|r
.complete 11730,1 
.mob Sentry-bot 57-K
.mob Scavenge-bot 004-A8
.mob Defendo-tank 66D


step
#completewith next
.goto BoreanTundra,73.42,18.78,100 >>前往Talramas附近的|cRXP_FRIENDLY_Bixie|r
step
.goto BoreanTundra,73.42,18.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比希·钳柄|r
.turnin 11692 >>交任务: |cRXP_FRIENDLY_寻找比希|r
.accept 11693 >>接任务: |cRXP_LOOT_好极了……天灾猛犸人！|r
.target Bixie Wrenchshanker
step
.goto BoreanTundra,82.0,29.3,70,0
.goto BoreanTundra,71.8,15.6,70,0
.goto BoreanTundra,82.0,29.3,70,0
.goto BoreanTundra,71.8,15.6
>>杀死|cRXP_ENEMY_瘟疫麦格纳陶洛斯|r
.complete 11693,1 
.mob Plagued Magnataur
step
.goto BoreanTundra,73.42,18.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比希·钳柄|r
.turnin 11693 >>交任务: |cRXP_FRIENDLY_好极了……天灾猛犸人！|r
.accept 11694 >>接任务: |cRXP_LOOT_山洞中的瘟疫|r
.target Bixie Wrenchshanker
step
#completewith next
.goto BoreanTundra,74.77,14.10,70 >>Enter the Den of Dying
step
.goto BoreanTundra,74.77,14.10
.use 34915 >>|cRXP_WARN_用|r|T133590:0|t[痹邪抑散]|cRXP_WARN_|r
.complete 11694,1 
step
.goto BoreanTundra,73.42,18.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比希·钳柄|r
.turnin 11694 >>交任务: |cRXP_FRIENDLY_山洞中的瘟疫|r
.accept 11697 >>接任务: |cRXP_LOOT_丁奇跑进浮空城了！|r
.accept 11698 >>接任务: |cRXP_LOOT_顺便清理天灾士兵|r
.target Bixie Wrenchshanker
step
#completewith Tinky
.goto BoreanTundra,69.3,14.1,0
>>杀死|cRXP_ENEMY_Talramas亡灵|r
.complete 11698,1 
.mob Cult Plaguebringer
.mob Doctor Razorgrin
.mob Lich-Lord Chillwinter
.mob Talramas Abomination
.mob Bone Warrior
.mob Festering Ghoul
step
#completewith next
.goto BoreanTundra,68.7,15.3,60 >>前往Talramas内部的|cRXP_FRIENDLY_Tinky|r
step
.goto BoreanTundra,68.7,15.3,70,0
.goto BoreanTundra,69.89,14.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinky|r
.turnin 11697 >>交任务: |cRXP_FRIENDLY_丁奇跑进浮空城了！|r
.accept 11699 >>接任务: |cRXP_LOOT_我被困在笼子里了……|r
.target Tinky Wickwhistle
step
#completewith Gyroscope
.goto BoreanTundra,68.97,14.76,0
>>杀死|cRXP_ENEMY_Festering Ghoul|r。掠夺他们的|cRXX_Loot_Christ|r
.complete 11699,1 
.mob Festering Ghoul
step
.goto BoreanTundra,68.7,15.3,40,0
.goto BoreanTundra,68.1,11.6,60,0
.goto BoreanTundra,69.4,11.4,40,0
.goto BoreanTundra,69.08,13.26,30,0
.goto BoreanTundra,69.64,13.88
>>|cRXP_WARN_从外部前往塔拉玛斯山顶|r
>>杀死|cRXP_ENEMY_Lich-Lord Chillwinter|r。掠夺他以获得|cRXD_Loot_Surgestone|r
.complete 11699,3 
.mob Lich-Lord Chillwinter
step
#label Gyroscope
.goto BoreanTundra,69.88,13.33
>>|cRXP_WARN_下降到中心坑|r
>>杀死|cRXP_ENEMY_Razorgrin医生|r。掠夺他以获得|cRXX_Loot_陀螺仪|r
.complete 11699,2 
.mob Doctor Razorgrin
step
.goto BoreanTundra,71.2,15.0,70,0
.goto BoreanTundra,68.2,16.9,70,0
.goto BoreanTundra,67.2,12.5,70,0
.goto BoreanTundra,69.7,13.8
>>杀死|cRXP_ENEMY_Festering Ghoul|r。掠夺他们的|cRXX_Loot_Christ|r
.complete 11699,1 
.mob Festering Ghoul
step
#label Tinky
.goto BoreanTundra,69.89,14.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinky|r
.turnin 11699 >>交任务: |cRXP_FRIENDLY_我被困在笼子里了……|r
.accept 11700 >>接任务: |cRXP_LOOT_通知比希|r
.target Tinky Wickwhistle
step
.goto BoreanTundra,71.2,15.0,70,0
.goto BoreanTundra,68.2,16.9,70,0
.goto BoreanTundra,67.2,12.5,70,0
.goto BoreanTundra,69.7,13.8
>>杀死|cRXP_ENEMY_Talramas亡灵|r
.complete 11698,1 
.mob Cult Plaguebringer
.mob Doctor Razorgrin
.mob Lich-Lord Chillwinter
.mob Talramas Abomination
.mob Bone Warrior
.mob Festering Ghoul
step
.goto BoreanTundra,73.42,18.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比希·钳柄|r
.turnin 11698 >>交任务: |cRXP_FRIENDLY_顺便清理天灾士兵|r
.turnin 11700 >>交任务: |cRXP_FRIENDLY_通知比希|r
.accept 11701 >>接任务: |cRXP_LOOT_返回机场|r
.target Bixie Wrenchshanker
step << Druid wotlk
#completewith DruidTrain
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <71,1
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48442 >>训练你的职业技能
.xp <71,1
.target Loganaar
step << Druid wotlk
#label DruidTrain
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48464 >>训练你的职业技能
.xp <72,1
.target Loganaar
step << DK wotlk
#completewith next
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <72,1
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49940 >>训练你的职业技能
.xp <72,1
.target Amal'thazad
step << Mage wotlk
#completewith MageTrain
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <71,1
step << Mage wotlk
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 43023 >>训练你的职业技能
.xp <71,1
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
#label MageTrain
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42930 >>训练你的职业技能
.xp <72,1
.target Elsharin
.target Jennea Cannon
step
#completewith next
.hs >>Hearth to Fizzcrank机场
step
.goto BoreanTundra,56.95,18.75
>>|cRXP_WARN_乘电梯直达|r|cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11701 >>交任务: |cRXP_FRIENDLY_返回机场|r
.accept 11725 >>接任务: |cRXP_LOOT_寻找“尾旋”|r
.target Fizzcrank Fullthrottle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11729 >>交任务: |cRXP_FRIENDLY_超声波螺丝刀|r
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
.isOnQuest 11729
.target Crafty Wobblesprocket
step
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11730 >>交任务: |cRXP_FRIENDLY_主与仆|r
.goto BoreanTundra,57.51,18.72,30,0
.goto BoreanTundra,58.2,18.3
.target Crafty Wobblesprocket
step
.goto BoreanTundra,65.25,28.78
>>点击|cRXP_PICK_South Point Station Valve|r调用|cRXP_ENEMY_the Grinder|r
>>杀死|cRXP_ENEMY_升级机|r
.complete 11788,4 
.mob The Grinder
step
#completewith next
.goto BoreanTundra,61.68,35.79,130 >>前往烫水池
step
#label Iggy
.goto BoreanTundra,61.68,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy|r
.turnin 11725 >>交任务: |cRXP_FRIENDLY_寻找“尾旋”|r
.accept 11726 >>接任务: |cRXP_LOOT_一点辣椒|r
.target Iggy "Tailspin" Cogtoggle
step
.goto BoreanTundra,64.9,41.2,70,0
.goto BoreanTundra,67.1,40.6,70,0
.goto BoreanTundra,68.7,42.2
>>杀死|cRXP_ENEMY_Gorloc Gibberer|r、|cRXD_ENEMY_Gorloc Steam Belcher|r和|cRXX_ENEMY_ Gorloc Waddlers|r。掠夺它们的|cRXP_Loot_Packes|r
.complete 11726,1 
.mob Gorloc Gibberer
.mob Gorloc Steam Belcher
.mob Gorloc Waddler
step
#completewith next
.goto BoreanTundra,81.5,42.5,100 >>Travel to Frozen Reach
.isOnQuest 11650
step
.goto BoreanTundra,81.5,42.5
>>杀死|cRXP_ENEMY_Rocknar|r。掠夺他的|cRXX_Loot_Grit|r
.complete 11650,3 
.itemcount 39682,1 
.isOnQuest 11650
.mob Rocknar
step
.goto BoreanTundra,61.68,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy|r
.turnin 11726 >>交任务: |cRXP_FRIENDLY_一点辣椒|r
.accept 11728 >>接任务: |cRXP_LOOT_狼的排泄物|r
.target Iggy "Tailspin" Cogtoggle
step
.goto BoreanTundra,60.95,32.94
.use 35121 >>|cRXP_WARN_使用|r|T134045:0|t[Wolf Bait]|cRXP_WARN_on|cRXP_ENEMY_Oil-stained Wolves|r|cRXP-WARN_Wait等待RP|r
>>打开|cRXP_PICK_Wolf Dropping|r。为|cRXP_Loot_Micfilm|r抓取它
.complete 11728,1 
.mob Oil-stained Wolf
step
.goto BoreanTundra,61.68,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy|r
.turnin 11728 >>交任务: |cRXP_FRIENDLY_狼的排泄物|r
.accept 11795 >>接任务: |cRXP_LOOT_紧急情况守则：第8章，第2节，第3段|r
.target Iggy "Tailspin" Cogtoggle
step
.goto BoreanTundra,62.94,35.81,40,0
.goto BoreanTundra,61.53,38.76,40,0
.goto BoreanTundra,60.56,38.44,40,0
.goto BoreanTundra,60.67,35.80,40,0
.goto BoreanTundra,61.35,33.82,40,0
.goto BoreanTundra,62.79,32.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the dead |cRXP_FRIENDLY_Fizzcrank Recon Pilots|r. Loot them for their |cRXP_LOOT_Pilot's Insignias|r
.complete 11795,1 
.skipgossip
.target Fizzcrank Recon Pilot
step
.goto BoreanTundra,61.68,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy|r
.turnin 11795 >>交任务: |cRXP_FRIENDLY_紧急情况守则：第8章，第2节，第3段|r
.accept 11796 >>接任务: |cRXP_LOOT_紧急情况守则：第8章，第2节，第4段|r
.target Iggy "Tailspin" Cogtoggle
step
.use 35224 >>|cRXP_WARN_使用|r|T135488:0|t[应急火炬]|cRXP_WARN_对|r|cRXP-PICK_Flying Machines的残骸进行处理|r
.complete 11796,3 
.goto BoreanTundra,60.85,33.63
.complete 11796,2 
.goto BoreanTundra,61.07,40.01
.complete 11796,1 
.goto BoreanTundra,63.40,36.95
step
#label Iggy2
.goto BoreanTundra,61.68,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy|r
.turnin 11796 >>交任务: |cRXP_FRIENDLY_紧急情况守则：第8章，第2节，第4段|r
.accept 11873 >>接任务: |cRXP_LOOT_通知菲兹兰克|r
.target Iggy "Tailspin" Cogtoggle
step << Shaman
#completewith next
.hs >>Hearth to Fizzcrank机场
step << Shaman
.goto BoreanTundra,57.01,18.68
>>|cRXP_WARN_乘电梯直达|r|cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11873 >>交任务: |cRXP_FRIENDLY_通知菲兹兰克|r
.target Fizzcrank Fullthrottle
step << !Shaman
#completewith next
.goto BoreanTundra,57.46,18.79,100 >>前往Fizzcrank Airstrip
step
.goto BoreanTundra,57.46,18.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky|r
.turnin 11788 >>交任务: |cRXP_FRIENDLY_左膀右臂|r
.accept 11798 >>接任务: |cRXP_LOOT_机甲专家麦卡佐德|r
.target Jinky Wingnut
step
#completewith next
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.accept 11653 >>接任务: |cRXP_LOOT_大块头|r
.target Crafty Wobblesprocket
step
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11650 >>交任务: |cRXP_FRIENDLY_还要一些东西……|r
.isQuestComplete 11650
.target Crafty Wobblesprocket
step
#completewith next
.goto BoreanTundra,54.2,13.1,60 >>Enter the Magmoth Cave
.isOnQuest 11653
step
.goto BoreanTundra,54.2,13.1,70,0
.goto BoreanTundra,55.1,12.0
.use 34812 >>|cRXP_WARN_使用|r|T133037:0|t[Crafty的缩短爆破机]|cRXP_WARN_on|cRXP_ENEMY_Magmoth Crushers |r和|r|cRXD_ENEMY_Mates of Magmothregar|r
.complete 11653,1 
.isQuestTurnedIn 11650
.mob Magmoth Crusher
.mob Mate of Magmothregar
step
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11653 >>交任务: |cRXP_FRIENDLY_大块头|r
.accept 11658 >>接任务: |cRXP_LOOT_B计划|r
.isQuestTurnedIn 11650
.target Crafty Wobblesprocket
step << !Shaman
.goto BoreanTundra,57.01,18.68
>>|cRXP_WARN_乘电梯直达|r|cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11873 >>交任务: |cRXP_FRIENDLY_通知菲兹兰克|r
.target Fizzcrank Fullthrottle
step
#completewith next
.goto BoreanTundra,49.3,21.4,0
.goto BoreanTundra,50.4,24.7,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_ENEMY_Dead Caravan Guards|r and |cRXP_ENEMY_Dead Caravan Workers|r. Loot them for their |cRXP_LOOT_Outfits|r
.complete 11658,1 
.skipgossip
.isQuestTurnedIn 11650
.mob Dead Caravan Guard
.mob Dead Caravan Worker
step
.goto BoreanTundra,49.59,26.68
>>掠夺地面上的|cRXP_Loot_战歌旗|r
.complete 11658,2 
.isQuestTurnedIn 11650
step
.goto BoreanTundra,49.3,21.4,70,0
.goto BoreanTundra,50.4,24.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_ENEMY_Dead Caravan Guards|r and |cRXP_ENEMY_Dead Caravan Workers|r. Loot them for their |cRXP_LOOT_Outfits|r
.complete 11658,1 
.skipgossip
.isQuestTurnedIn 11650
.mob Dead Caravan Guard
.mob Dead Caravan Worker
step
#completewith next
.goto BoreanTundra,57.06,20.12,100 >>前往Fizzcrank Airstrip
.isQuestTurnedIn 11650
step
.goto BoreanTundra,57.06,20.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿布尼·扭矩|r
.accept 11713 >>接任务: |cRXP_LOOT_侦查虫孔|r
.target Abner Fizzletorque
step
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11658 >>交任务: |cRXP_FRIENDLY_B计划|r
.accept 11670 >>接任务: |cRXP_LOOT_是兽人干的！真的！|r
.isQuestTurnedIn 11650
.target Crafty Wobblesprocket
step 
#completewith next
.goto BoreanTundra,54.2,13.3
.use 34871 >>|cRXP_WARN_Open | r | T133647:0 | t[工匠的袋子]| cRXP_WARN_for|r | T132485:0 | t[| cRXD_OOT_Warsong Banner | r]| cRXP_WARN_and | r | T134475:0 | r[| cRXP_OOT_Warsong兽人伪装| r]
.isQuestTurnedIn 11650
.collect 34869,1,11670,1 
.collect 34870,1,11670,1 
step
.goto BoreanTundra,54.2,13.3,40,0
.goto BoreanTundra,55.6,12.1
.use 34870 >>|cRXP_WARN_在Magmoth洞穴中使用|r|T134475:0|t[|cRXP_LOOT_Warsong兽人伪装|r]|cRXP_WARN_in|r
.complete 11670,2 
.isQuestTurnedIn 11650
step
.goto BoreanTundra,55.6,12.1
.use 34869 >>杀死Magmoth内部的|cRXP_ENEMY_Magmothregar|r|cRXP_WARN_在他的尸体上使用|r|T132485:0|t[|cRXP_LOOT_战歌旗|r]|cRXP_WARN_
.complete 11670,1 
.isQuestTurnedIn 11650
.mob Magmothregar
step
#questguide
.goto BoreanTundra,55.6,12.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托格沃特|r
.accept 11673 >>接任务: |cRXP_LOOT_带我出去！|r
.isQuestTurnedIn 11650
.target Bonker Togglevolt
step
#questguide
.goto BoreanTundra,53.8,13.8
>>护送|cRXP_FRIENDLY_Bonker|r离开洞穴
.complete 11673,1 
.isQuestTurnedIn 11650
.target Bonker Togglevolt
step
#completewith next
.goto BoreanTundra,64.43,23.40,100 >>前往Fizzcrank泵站
.isOnQuest 11798
step
#completewith next
.groundgoto BoreanTundra,65.62,22.95,20,0
.groundgoto BoreanTundra,64.87,24.14,15,0
.groundgoto BoreanTundra,64.71,22.93,15,0
.goto BoreanTundra,64.53,23.42
>>|cRXP_WARN_走进顶层的小房子|r
.cast 3365 >>单击表格顶部的|cRXP_PICK_齿轮管理员手册|r，调用|cRXP-ENEMY_Mechazod|r
.timer 51,The Gearmaster RP
.isOnQuest 11798
step
.goto BoreanTundra,64.54,23.26
|cRXP_WARN_Wait out his RP|r
>>杀死|cRXP_ENEMY_Mechazod|r。掠夺他的|cRXX_Loot_Head|r
.complete 11798,1 
.complete 11798,2 
.mob Gearmaster Mechazod
step
#completewith next
.goto BoreanTundra,66.25,32.13,100 >>前往间歇泉场
step
#label Sinkhole
.use 34920 >>|cRXP_WARN_当站在|r|cRXP_PICK_Sinkholes的边缘时，使用|r|T134269:0|t[间歇泉场地图]|cRXP-WARN_|r
.complete 11713,3 
.goto BoreanTundra,66.25,32.13
.complete 11713,2 
.goto BoreanTundra,69.51,32.80
.complete 11713,1 
.goto BoreanTundra,70.24,36.36
step << Druid wotlk
#completewith DruidTrain2
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <71,1
.cooldown item,6948,>2
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48442 >>训练你的职业技能
.xp <71,1
.cooldown item,6948,>2
.target Loganaar
step << Druid wotlk
#label DruidTrain2
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48464 >>训练你的职业技能
.xp <72,1
.cooldown item,6948,>2
.target Loganaar
step << DK wotlk
#completewith DKTraining3
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <72,1
.cooldown item,6948,>2
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49940 >>训练你的职业技能
.xp <72,1
.cooldown item,6948,>2
.target Amal'thazad
step << DK wotlk
#label DKTraining3
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49904 >>训练你的职业技能
.xp <73,1
.cooldown item,6948,>2
.target Amal'thazad
step << Mage wotlk
#completewith MageTrain2
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <71,1
.cooldown item,6948,>2
step << Mage wotlk
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 43023 >>训练你的职业技能
.xp <71,1
.cooldown item,6948,>2
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
#label MageTrain2
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42930 >>训练你的职业技能
.xp <72,1
.cooldown item,6948,>2
.target Elsharin
.target Jennea Cannon
step
#completewith GearM
.hs >>Hearth to Fizzcrank机场
.cooldown item,6948,>2
step
.goto BoreanTundra,57.04,18.60
>>|cRXP_WARN_乘电梯直达|r|cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11798 >>交任务: |cRXP_FRIENDLY_机甲专家麦卡佐德|r
.isQuestTurnedIn 11673
.target Fizzcrank Fullthrottle
step
#label GearM
.goto BoreanTundra,57.04,18.60
>>|cRXP_WARN_乘电梯直达|r|cRXP_FRIENDLY_Fizzcrank|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank|r
.turnin 11798 >>交任务: |cRXP_FRIENDLY_机甲专家麦卡佐德|r
.turnin 11673 >>交任务: |cRXP_FRIENDLY_带我出去！|r
.target Fizzcrank Fullthrottle
step
#questguide << !wotlk
.goto BoreanTundra,57.08,20.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿布尼·扭矩|r
.turnin 11713 >>交任务: |cRXP_FRIENDLY_侦查虫孔|r
.accept 11715 >>接任务: |cRXP_LOOT_石油资源|r
.target Abner Fizzletorque
step << !wotlk
.goto BoreanTundra,57.08,20.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿布尼·扭矩|r
.turnin 11713 >>交任务: |cRXP_FRIENDLY_侦查虫孔|r
.target Abner Fizzletorque
step
.goto BoreanTundra,57.1,19.0,20,0
.goto BoreanTundra,57.0,18.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty|r
>>|cRXP_FRIENDLY_巧夺天工|r|cRXP_WARN_trols the outside|r
.turnin 11670 >>交任务: |cRXP_FRIENDLY_是兽人干的！真的！|r
.isQuestComplete 11670
.target Crafty Wobblesprocket
step
#questguide << !wotlk
.goto BoreanTundra,56.8,26.2,70,0
.goto BoreanTundra,62.4,29.4,70,0
.goto BoreanTundra,61.8,36.0
.use 34975 >>|cRXP_WARN_在地面上使用|r|T132997:0|t[便携式集油器]|cRXP_WARN_on|cRX_PICK_Oil Patches|r|r
.complete 11715,1 
step
#completewith next
.goto BoreanTundra,43.50,13.97,120 >>前往Winterfin疗养院
step
.goto BoreanTundra,43.50,13.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_国王姆嘎姆嘎|r
.accept 11571 >>接任务: |cRXP_LOOT_学习沟通|r
.turnin 11704 >>交任务: |cRXP_FRIENDLY_国王姆嘎姆嘎|r
.target King Mrgl-Mrgl
step
.goto BoreanTundra,43.0,18.1,60,0
.goto BoreanTundra,42.5,15.4
.use 34598 >>在水下杀死|cRXP_ENEMY_Scalder|r|cRXP_WARN_Use|r|T134431:0|t[国王的空海螺]|cRXP_WARN_on其尸体|r
>>|cRXP_ENEMY_Scalder|r|cRXP_WARN_控制海床|r
.complete 11571,1 
.unitscan Scalder
step
.goto BoreanTundra,43.50,13.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_国王姆嘎姆嘎|r
.turnin 11571 >>交任务: |cRXP_FRIENDLY_学习沟通|r
.accept 11559 >>接任务: |cRXP_LOOT_冬鳞鱼人的贸易|r
.target King Mrgl-Mrgl
step
.goto BoreanTundra,40.5,15.8,70,0
.goto BoreanTundra,41.6,18.9
>>杀死|cRXP_ENEMY_Winterfin预言家|r、|cRXX_ENEMY_Winterfin Shoresterikers|r和|cRXP_ENEMY_温特fin Warriors|r。掠夺他们的|cRXD_Loot_温特finClam|r
>>|cRXP_WARN_Alternative |r将|cRXP_OOT_Winterfin Clam|r洗劫一空
>>|cRXP_WARN_它们通常在Murloc小屋旁边发现，但很难发现|r
.complete 11559,1 
.mob Winterfin Oracle
.mob Winterfin Shorestriker
.mob Winterfin Warrior
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_呀噜咕噜|r, |cRXP_FRIENDLY_国王姆嘎姆嘎|r, |cRXP_FRIENDLY_吧咕姆咕|r
.turnin 11559 >>交任务: |cRXP_FRIENDLY_冬鳞鱼人的贸易|r
.goto BoreanTundra,43.04,13.82
.accept 11560 >>接任务: |cRXP_LOOT_救救蝌蚪！|r
.goto BoreanTundra,43.50,13.97
.accept 11561 >>接任务: |cRXP_LOOT_就是他们！|r
.goto BoreanTundra,42.82,13.65
.target Brglmurgl
.target Ahlurglgr
.target King Mrgl-Mrgl
step
#completewith next
.goto BoreanTundra,41.0,15.6,0
.goto BoreanTundra,41.3,19.0,0
.goto BoreanTundra,39.2,18.3,0
.goto BoreanTundra,37.6,15.9,0
>>杀死|cRXP_ENEMY_Winterfin预言家|r、|cRXP_ENEMY_Winterfin Shoresterikers|r和|cRXX_ENEMY_温特fin Warriors|r
>>|cRXP_WARN_Do not prioritize this|r
.complete 11561,1 
.mob Winterfin Oracle
.mob Winterfin Shorestriker
.mob Winterfin Warrior
step
#sticky
#label tadpoles
.goto BoreanTundra,41.0,15.6,40,0
.goto BoreanTundra,41.3,19.0,40,0
.goto BoreanTundra,39.2,18.3,40,0
.goto BoreanTundra,37.6,15.9,40,0
.goto BoreanTundra,41.0,15.6,40,0
.goto BoreanTundra,41.3,19.0,40,0
.goto BoreanTundra,40.04,19.80,40,0
.goto BoreanTundra,39.2,18.3,40,0
.goto BoreanTundra,37.6,15.9
>>单击|cRXP_PICK_Cages|r以重新捕获|cRXP_FRIENDLY_Winterfin蝌蚪|r
>>|cRXP_WARN_你可能需要进入冬鳍洞穴了解更多|r
.complete 11560,1 
.target Winterfin Tadpole
step
.goto BoreanTundra,40.04,19.80
.use 34669 >>|cRXP_WARN_在Winterfin洞穴入口处使用|r|T133015:0|t[Arcanometer]|cRXP_WARN_|r
.complete 12728,1 
step
#completewith end
#requires tadpoles
#label Murloc2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吧咕姆咕|r
.turnin 11561 >>交任务: |cRXP_FRIENDLY_就是他们！|r
.goto BoreanTundra,42.82,13.65,0,0
.isQuestComplete 11561
.target Brglmurgl
step
#requires tadpoles
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_国王姆嘎姆嘎|r
.turnin 11560 >>交任务: |cRXP_FRIENDLY_救救蝌蚪！|r
.accept 11562 >>接任务: |cRXP_LOOT_我被敲竹杠了！|r
.goto BoreanTundra,43.50,13.97
.target King Mrgl-Mrgl
step
#requires Murloc2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_姆姆咕咕|r, |cRXP_FRIENDLY_屠夫布咕布噜|r
.turnin 11562 >>交任务: |cRXP_FRIENDLY_我被敲竹杠了！|r
.accept 11563 >>接任务: |cRXP_LOOT_咕噜咕噜呜啦哇啦！|r
.goto BoreanTundra,41.98,12.77
.accept 11564 >>接任务: |cRXP_LOOT_美味炖鲸肉|r
.goto BoreanTundra,42.03,13.16
.target Mrmrglmr
.target Brglmurgl
step
#completewith next
.goto BoreanTundra,38.0,9.5,0
.goto BoreanTundra,36.4,8.8,0
.goto BoreanTundra,37.4,6.3,0
.goto BoreanTundra,39.3,8.3,0
>>杀死|cRXP_ENEMY_Glimmer Bay兽人|r。掠夺他们的|cRXX_Loot_Blubbers|r
.complete 11564,1 
.mob Glimmer Bay Orca
step
.goto BoreanTundra,38.0,9.5,70,0
.goto BoreanTundra,36.4,8.8,70,0
.goto BoreanTundra,37.4,6.3,70,0
.goto BoreanTundra,39.3,8.3
>>杀死|cRXP_ENEMY_Glrggl|r。抢走他的|cRXP_Loot_Head |r。|cRXP-WARN_他逆时针绕着两座北方冰山巡逻|r
.complete 11563,1 
.unitscan Glrggl
step
.goto BoreanTundra,40.1,12.2,70,0
.goto BoreanTundra,39.3,6.7,70,0
.goto BoreanTundra,36.0,8.1
>>杀死|cRXP_ENEMY_Glimmer Bay兽人|r。掠夺他们的|cRXX_Loot_Blubbers|r
.complete 11564,1 
.mob Glimmer Bay Orca
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_姆姆咕咕|r, |cRXP_FRIENDLY_屠夫布咕布噜|r, |cRXP_FRIENDLY_国王姆嘎姆嘎|r
.turnin 11563 >>交任务: |cRXP_FRIENDLY_咕噜咕噜呜啦哇啦！|r
.accept 11565 >>接任务: |cRXP_LOOT_备用的鱼人服|r
.goto BoreanTundra,41.98,12.77
.turnin 11564 >>交任务: |cRXP_FRIENDLY_美味炖鲸肉|r
.goto BoreanTundra,42.03,13.16
.turnin 11565 >>交任务: |cRXP_FRIENDLY_备用的鱼人服|r
.accept 11566 >>接任务: |cRXP_LOOT_决不投降！|r
.goto BoreanTundra,43.50,13.97
.target King Mrgl-Mrgl
.target Mrmrglmr
.target Cleaver Bmurglbrm
step
#completewith next
.goto BoreanTundra,37.84,23.23,165 >>Enter Winterfin Caverns
step
#completewith Lurgglbr
.goto BoreanTundra,41.0,15.6,0
.goto BoreanTundra,41.3,19.0,0
.goto BoreanTundra,39.2,18.3,0
.goto BoreanTundra,37.6,15.9,0
>>杀死|cRXP_ENEMY_Winterfin预言家|r、|cRXP_ENEMY_Winterfin Shoresterikers|r和|cRXX_ENEMY_温特fin Warriors|r
>>|cRXP_WARN_Do not prioritize this|r
.complete 11561,1 
.mob Winterfin Oracle
.mob Winterfin Shorestriker
.mob Winterfin Warrior
step
.goto BoreanTundra,37.84,23.23
>>|cRXP_WARN_一旦你进入Winterfin洞穴，请坚持左侧|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_咕啦咕啦|r
>>|cRXP_WARN_请勿与|r|cRXP_FRIENDLY_Lurgglbr|r|cRXP_WARN_yet交谈|r
.accept 11569 >>接任务: |cRXP_LOOT_钥匙管理者呜啦咕噜|r
.target Glrglrglr
step
.goto BoreanTundra,38.0,22.2,12,0
.goto BoreanTundra,39.0,22.7,30,0
.goto BoreanTundra,39.8,22.5,30,0
.goto BoreanTundra,39.3,23.7
>>|cRXP_WARN_Run down the ramp below|r
>>杀死|cRXP_ENEMY_Keymaster Urmgrgl|r。掠夺他的|cRXX_Loot_Key|r
.complete 11569,1 
.unitscan Keymaster Urmgrgl
step
#completewith next
.goto BoreanTundra,37.0,21.8,40,0
.goto BoreanTundra,36.9,24.0,40 >>前往Winterfin洞穴的尽头
step
.goto BoreanTundra,37.55,27.53
>>杀死|cRXP_ENEMY_Claximus|r。掠夺他的|cRXD_Loot_爪|r
.complete 11566,1 
.mob Claximus
step
#completewith next
.goto BoreanTundra,36.80,23.22,40,0
.goto BoreanTundra,37.87,21.52,25,0
.goto BoreanTundra,37.84,23.23,30 >>向入口附近的|cRXP_FRIENDLY_Glrglrglr|r行驶
step
.goto BoreanTundra,37.84,23.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_咕啦咕啦|r
.turnin 11569 >>交任务: |cRXP_FRIENDLY_钥匙管理者呜啦咕噜|r
.target Glrglrglr
step
#questguide
.goto BoreanTundra,37.72,23.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_噜呱吧呱|r
.accept 11570 >>接任务: |cRXP_LOOT_逃离冬鳞洞穴|r
.target Lurgglbr
step
#questguide
#label Lurgglbr
.goto BoreanTundra,39.9,19.8,40,0
.goto BoreanTundra,39.6,18.1,40,0
.goto BoreanTundra,41.36,16.32
>>护送|cRXP_FRIENDLY_Lurgglbr|r。|cRXP_WARN_Try杀死他可能会遇到的|cRXP _ENEMY_Murlocs|r，这样他就不会浪费时间停下来攻击|r
.complete 11570,1 
.target Lurgglbr
step
.goto BoreanTundra,41.0,15.6,70,0
.goto BoreanTundra,41.3,19.0,70,0
.goto BoreanTundra,39.2,18.3,70,0
.goto BoreanTundra,37.6,15.9
>>杀死|cRXP_ENEMY_Winterfin预言家|r、|cRXP_ENEMY_Winterfin Shoresterikers|r和|cRXX_ENEMY_温特fin Warriors|r
.complete 11561,1 
.mob Winterfin Oracle
.mob Winterfin Shorestriker
.mob Winterfin Warrior
step
.goto BoreanTundra,42.82,13.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吧咕姆咕|r
.turnin 11561 >>交任务: |cRXP_FRIENDLY_就是他们！|r
.target Brglmurgl
step
#label Murliver
.goto BoreanTundra,43.04,13.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_呀噜咕噜|r
.vendor >>尽可能多地购买|T134800:0|t[鼠肝油]
.itemcount 34597,2
.isQuestTurnedIn 11559
.target Ahlurglgr
step
#questguide
.goto BoreanTundra,43.50,13.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_国王姆嘎姆嘎|r
.turnin 11566 >>交任务: |cRXP_FRIENDLY_决不投降！|r
.turnin 11570 >>交任务: |cRXP_FRIENDLY_逃离冬鳞洞穴|r
.target King Mrgl-Mrgl
step
.goto BoreanTundra,43.50,13.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_国王姆嘎姆嘎|r
.turnin 11566 >>交任务: |cRXP_FRIENDLY_决不投降！|r
.target King Mrgl-Mrgl
step << Druid wotlk
#requires Murliver
#completewith DruidTrain3
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <71,1
.cooldown item,6948,>2
step << Druid wotlk
#requires Murliver
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48442 >>训练你的职业技能
.xp <71,1
.cooldown item,6948,>2
.target Loganaar
step << Druid wotlk
#requires Murliver
#label DruidTrain3
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48464 >>训练你的职业技能
.xp <72,1
.cooldown item,6948,>2
.target Loganaar
step << DK wotlk
#requires Murliver
#completewith next
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <72,1
.cooldown item,6948,>2
step << DK wotlk
#requires Murliver
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49940 >>训练你的职业技能
.xp <72,1
.cooldown item,6948,>2
.target Amal'thazad
step << Mage wotlk
#requires Murliver
#completewith MageTrain3
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <71,1
.cooldown item,6948,>2
step << Mage wotlk
#requires Murliver
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 43023 >>训练你的职业技能
.xp <71,1
.cooldown item,6948,>2
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
#requires Murliver
#label MageTrain3
.goto StormwindNew,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42930 >>训练你的职业技能
.xp <72,1
.cooldown item,6948,>2
.target Elsharin
.target Jennea Cannon
step << (Shaman/DK/Mage/Druid) wotlk
#completewith next
.hs >>Hearth to Fizzcrank机场
.cooldown item,6948,>2
step << (!Shaman !DK !Mage !Druid) wotlk
#completewith next
.goto BoreanTundra,57.02,20.12,150 >>前往Fizzcrank Airstrip
step
#questguide << !wotlk
.goto BoreanTundra,57.02,20.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿布尼·扭矩|r
.turnin 11715 >>交任务: |cRXP_FRIENDLY_石油资源|r
.accept 11718 >>接任务: |cRXP_LOOT_猛犸的毛皮|r
.target Abner Fizzletorque
step
#questguide << !wotlk
.goto BoreanTundra,53.55,21.34,70,0
.goto BoreanTundra,53.6,31.2,70,0
.goto BoreanTundra,52.9,40.5,70,0
.goto BoreanTundra,53.55,21.34
>>杀死|cRXP_ENEMY_长毛象|r，|cRXX_ENEMY_长毛象公牛|r和|cRXP_ENEMY_猛犸小牛|r。掠夺它们的|cRXD_Loot_Hides|r
.complete 11718,1 
.mob Mammoth Calf
.mob Wooly Mammoth
.mob Wooly Mammoth Bull
step
#completewith next
.groundgoto BoreanTundra,48.4,36.4,50,0
.goto BoreanTundra,44.98,33.38,50 >>前往琥珀色壁架
step
.goto BoreanTundra,44.98,33.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren|r
.turnin 12728 >>交任务: |cRXP_FRIENDLY_监视裂谷：冬鳞洞穴|r
.target Librarian Garren
step
#questguide << !wotlk
#completewith next
.goto BoreanTundra,45.33,34.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏雷斯塔兹|r
.fly Fizzcrank >>飞往Fizzcrank机场
.target Surristrasz
step
#questguide << !wotlk
.goto BoreanTundra,57.05,20.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿布尼·扭矩|r
.turnin 11718 >>交任务: |cRXP_FRIENDLY_猛犸的毛皮|r
.accept 11723 >>接任务: |cRXP_LOOT_天摇地动！|r
.target Abner Fizzletorque
step
#questguide << !wotlk
#completewith next
.goto BoreanTundra,70.20,36.40,120 >>前往间歇泉场
.isOnQuest 11723
step
#questguide << !wotlk
#completewith next
.goto BoreanTundra,70.20,36.40
.cast 46017 >>|cRXP_WARN_使用|r|T133015:0|t[Shake-n-Quake 5000控制单元]|cRXP_WARN_next到|cRX_PICK_Sinkhole |r来召唤|r|cRXP_ENEMY_Lord Kryxix|r
.use 34981
.timer 36,Deploy the Shake-n-Quake! RP
step
#questguide << !wotlk
.goto BoreanTundra,69.78,36.46
>>|cRXP_WARN_等待RP |r
>>杀死|cRXP_ENEMY_Lord Kryxix|r
.complete 11723,1 
.complete 11723,2 
.use 34981
.mob Lord Kryxix
step
#questguide << !wotlk
#completewith next
.goto BoreanTundra,57.09,20.07,150 >>前往Fizzcrank Airstrip
step
#questguide << !wotlk
#label end
.goto BoreanTundra,57.09,20.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿布尼·扭矩|r
.turnin 11723 >>交任务: |cRXP_FRIENDLY_天摇地动！|r
.target Abner Fizzletorque
step << (Shaman/Warlock/Paladin/Hunter/Rogue/Warrior) wotlk
#completewith next
.goto BoreanTundra,56.56,20.07
.zone Stormwind City >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Valiance Keep >>飞到Valiance Keep。或者，支付|T626001:0|t|cFF3FC7EBMage|r购买暴风城入口
.zoneskip Elwynn Forest
.zoneskip Stormwind City
.target Kara Thricestar
step << (Shaman/Warlock/Paladin/Hunter/Rogue/Warrior) wotlk
#completewith ShamanTrain << Shaman
#completewith next << !Shaman
.goto BoreanTundra,59.70,69.26
.zone Stormwind City >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.zoneskip Elwynn Forest
.skipgossip
.target Nelno Copperbeam
step << Shaman wotlk
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知安布洛尔|r
.train 58801 >>训练你的职业技能
.xp <71,1
.target Farseer Umbrua
step << Shaman wotlk
#label ShamanTrain
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知安布洛尔|r
.train 49237 >>训练你的职业技能
.xp <73,1
.target Farseer Umbrua
step << Warlock wotlk
.goto StormwindNew,42.26,81.77,20,0
.goto StormwindNew,40.64,84.94,15,0
.goto StormwindNew,39.88,84.19
>>走进屠宰羔羊，下楼去
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Ursula, |cRXP_FRIENDLY_德米赛特·克劳斯|r, |cRXP_FRIENDLY_山达尔|r
.train 47812 >>训练你的职业技能
.xp <71,1
.target Ursula Deline
.target Demisette Cloyce
.target Sandahl
step << Paladin wotlk
.goto StormwindNew,52.9,50.9,20,0
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 54428 >>训练你的职业技能
.xp <71,1
.target Arthur the Faithful
.target Katherine the Pure
step << Hunter wotlk
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.train 49051 >>训练你的职业技能
.xp <71,1
.target Einris Brightspear
step << Rogue wotlk
.goto StormwindNew,77.42,65.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.train 48667 >>训练你的职业技能
.xp <73,1
.target Osborne the Night Man
step << Warrior wotlk
.goto StormwindNew,78.31,63.53,15,0
.goto StormwindNew,81.66,59.50,15,0
.goto StormwindNew,80.56,59.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 47470 >>训练你的职业技能
.xp <73,1
.target Wu Shen
.target Ilsa Corbin
step << (Shaman/Warlock/Paladin/Hunter/Rogue/Warrior) wotlk
#completewith next
.hs >>Hearth to Fizzcrank机场
.zoneskip BoreanTundra
step
#completewith next
.goto BoreanTundra,45.33,34.54,-1
.goto BoreanTundra,56.57,20.08,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡拉·芒星|r, |cRXP_FRIENDLY_苏雷斯塔兹|r
.fly Stars >>飞到星星的休息处
.target Surristrasz
.target Kara Thricestar
step
.goto Dragonblight,12.16,55.22
.zone Dragonblight >>前往: |cRXP_PICK_龙骨荒野|r
step << wotlk
#xprate >1.499
.goto Dragonblight,28.84,56.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_信使兰森|r
.accept 12171 >>接任务: |cRXP_LOOT_叛徒的名单|r
.target Courier Lanson
step << wotlk
#xprate >1.499
.goto Dragonblight,29.16,55.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕蕾娜·银云|r
>>|cRXP_WARN_Accepting this quest will send you flying to eastern Dragonblight|r
.turnin 12171 >>交任务: |cRXP_FRIENDLY_叛徒的名单|r
.accept 12174 >>接任务: |cRXP_LOOT_高级指挥官哈尔弗·维姆班恩|r
.timer 88,Westguard Keep Flight
.target Palena Silvercloud
step << wotlk
#xprate >1.499
.goto Dragonblight,77.08,49.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗尼·威尔斯|r
.fp Wintergarde Keep >>获取Wintergarde Keep飞行路线
.target Rodney Wells
step << wotlk
#xprate >1.499
.goto Dragonblight,78.59,48.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
.turnin 12174 >>交任务: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
.target High Commander Halford Wyrmbane
step << wotlk
#xprate >1.499
.xp <73,1
#label Hills
.goto Dragonblight,77.13,50.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
>>|cRXP_WARN_Accepting this quest will send you flying to Grizzly Hills|r
.accept 12511 >>接任务: |cRXP_LOOT_丘陵援兵|r
.timer 150,飞往琥珀旅馆
.target Gryphon Commander Urik
step << wotlk
#xprate >1.499
.zone Grizzly Hills >>前往: |cRXP_PICK_灰熊丘陵|r
]])
RXPGuides.RegisterGuide([[
#cata
#Cata
#xprate <1.5 << wotlk
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 72-74 龙骨荒野
#version 5
#next 73-75 灰熊丘陵
#xprate <1.5 << wotlk
#questguide << !wotlk
step
#label pt1start
#completewith DBStart
.goto Dragonblight,29.18,55.32,200 >>明星休息之旅
step
.goto Dragonblight,29.18,55.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕蕾娜·银云|r
.fp Stars' Rest >>获取星星的休息飞行路径
.target Palena Silvercloud
step
#label DBStart
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Modera, |cRXP_FRIENDLY_典狱官朱蒂·月歌|r
.accept 12000 >>接任务: |cRXP_LOOT_寻找线索|r
.goto Dragonblight,29.00,55.45
.accept 12166 >>接任务: |cRXP_LOOT_艾露恩的火油|r
.goto Dragonblight,29.18,55.65
.target Image of Archmage Modera
.target Warden Jodi Moonsong
step
.goto Dragonblight,28.83,56.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_信使兰森|r
>>|cRXP_WARN_不接受下一个任务|r
.turnin 12157 >>交任务: |cRXP_FRIENDLY_失踪的信使|r
.isOnQuest 12157
.target Courier Lanson
step
#completewith Trader
.goto Dragonblight,28.89,56.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺哈因|r
.home >>让你的炉石得到星星的休息
.target Naohain
step
.goto Dragonblight,31.9,45.9,70,0
.goto Dragonblight,28.8,51.5,70,0
.goto Dragonblight,23.8,50.0,70,0
.goto Dragonblight,28.8,51.5,70,0
.goto Dragonblight,31.9,45.9
.use 36956 >>杀死|cRXP_ENEMY_Blighted Elks |r和|cRXX_ENEMY_Rabid Grizzlies|r |cRXP_WARN_Use the |r|T135777:0|t[精灵的液体之火]|cRXD_WARN_on their body|r
.complete 12166,1 
.mob +Blighted Elk
.complete 12166,2 
.mob +Rabid Grizzly
step
#completewith next
.goto Dragonblight,24.19,60.06,100 >>前往月球花园
step
#sticky
#label moonshadow
.goto Dragonblight,24.19,60.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟尼安·月影|r
.accept 12006 >>接任务: |cRXP_LOOT_上层精灵的愤怒|r
.target Ethenial Moonshadow
step
.goto Dragonblight,22.7,58.1,70,0
.goto Dragonblight,23.3,61.3,70,0
.goto Dragonblight,25.9,58.7,70,0
.goto Dragonblight,22.75,57.36,70,0
.goto Dragonblight,21.62,54.84,70,0
.goto Dragonblight,24.72,54.84,70,0
.goto Dragonblight,22.7,58.1
.use 35792 >>掠夺|cRXP_FRIENDLY_Dead法师猎人|r用于他们的|T133641:0|t[|cRXP _Loot_Mage Hunter的个人效果|r]
>>打开他们的|T133641:0|t[|cRXP_LOOT_Mage Hunter的个人物品|r]，直到您收到|cRX_PICK_Moonrest Gardens Plans|r
.complete 12000,1 
.target Dead Mage Hunter
step
#requires moonshadow
#completewith next
.goto Dragonblight,29.00,55.45,100 >>明星休息之旅
step
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin 12000 >>交任务: |cRXP_FRIENDLY_寻找线索|r
.accept 12004 >>接任务: |cRXP_LOOT_阻碍协议|r
.target Image of Archmage Modera
step
.goto Dragonblight,29.18,55.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_典狱官朱蒂·月歌|r
.turnin 12166 >>交任务: |cRXP_FRIENDLY_艾露恩的火油|r
.accept 12167 >>接任务: |cRXP_LOOT_消灭教徒|r
.target Warden Jodi Moonsong
step
#completewith next
.groundgoto Dragonblight,28.2,45.9,50,0
.groundgoto Dragonblight,27.7,45.6,40,0
.goto Dragonblight,25.96,45.19,60 >>前往冰雾村
step
.goto Dragonblight,23.7,46.1,50,0
.goto Dragonblight,26.7,42.8,50,0
.goto Dragonblight,26.1,42.7,30,0
.goto Dragonblight,26.1,44.1,40,0
.goto Dragonblight,23.8,44.2,40,0
.goto Dragonblight,25.7,38.1,40,0
.goto Dragonblight,25.48,41.66
.use 36958 >>杀死|cRXP_ENEMY_Anub'ar邪教分子|r。掠夺他们的|cRXP_Loot_Cultist套装|r和|T133330:0|t[|cRXD_Loot_The Favor of Zangus|r]
>>|cRXP_WARN_使用|T133330:0|t[|cRXP_LOOT_The Favor of Zangus|r]开始任务|r
.complete 12167,1 
.collect 36958,1,12168
.accept 12168 >>接任务: |cRXP_LOOT_扎古斯的礼物|r
.mob Anub'ar Cultist
step
#completewith next
.goto Dragonblight,29.18,55.65,100 >>明星休息之旅
step
.goto Dragonblight,29.18,55.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_典狱官朱蒂·月歌|r
.turnin 12167 >>交任务: |cRXP_FRIENDLY_消灭教徒|r
.turnin 12168 >>交任务: |cRXP_FRIENDLY_扎古斯的礼物|r
.accept 12169 >>接任务: |cRXP_LOOT_高阶教徒|r
.target Warden Jodi Moonsong
step
#completewith next
.goto Dragonblight,26.15,49.48,15 >>掉进纳君的坑里
step
.goto Dragonblight,28.85,49.72
>>在纳军坑中杀死|cRXP_ENEMY_High Cultist Zangus|r
.complete 12169,1 
.mob High Cultist Zangus
step
#completewith Trader
.hs >>星辰安息之炉
.cooldown item,6948,>2
step
#completewith Trader
.goto Dragonblight,26.9,49.5,30,0
.goto Dragonblight,26.7,48.7,15,0
.goto Dragonblight,26.3,49.0,25 >>Exit The Pit of Narjun
.cooldown item,6948,<0
step << skip
.goto Dragonblight,29.18,55.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_典狱官朱蒂·月歌|r
.turnin 12169 >>交任务: |cRXP_FRIENDLY_高阶教徒|r
.target Warden Jodi Moonsong
step
#completewith moonrest
>>杀死|cRXP_ENEMY_Surge Needle Sorcers|r，|cRXD_ENEMY_MoonrestStalkers|r，| cRXP__ENEMY_Focus Wizards|r和|cRXP_ENEMY_Dragonlight法师猎人|r
.complete 12006,1 
.mob Surge Needle Sorcerer
.mob Moonrest Stalker
.mob Focus Wizard
.mob Dragonblight Mage Hunter
step
#label Trader
.goto Dragonblight,18.39,58.89
>>杀死|cRXP_ENEMY_Wind Trader Mu'Fah|r。掠夺他获得|cRXX_Loot_LUENTS|r
.complete 12004,1 
.mob Wind Trader Mu'fah
step
.goto Dragonblight,19.46,58.03
.use 36742 >>杀死|cRXP_ENEMY_Goramosh|r。掠夺他的|cRXD_Loot_Scales|r和|T134889:0|t[|cRXX_Loot_Goramosh的奇异装置|r]
>>|cRXP_WARN_使用|T134889:0|t[|cRXP_LOOT_Goramosh的奇异装置|r]开始任务|r
.complete 12004,2 
.collect 36742,1,12055 
.accept 12055 >>接任务: |cRXP_LOOT_奇怪的设备|r
.mob Goramosh
step
#completewith next
.goto Dragonblight,29.00,55.45,100 >>明星休息之旅
step
#label moonrest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Modera, |cRXP_FRIENDLY_典狱官朱蒂·月歌|r
.turnin 12004 >>交任务: |cRXP_FRIENDLY_阻碍协议|r
.turnin 12055 >>交任务: |cRXP_FRIENDLY_奇怪的设备|r
.accept 12060 >>接任务: |cRXP_LOOT_投影和计划|r
.goto Dragonblight,29.00,55.45
.turnin 12169 >>交任务: |cRXP_FRIENDLY_高阶教徒|r
.goto Dragonblight,29.18,55.65
.target Image of Archmage Modera
.target Warden Jodi Moonsong
step
#completewith next
.goto Dragonblight,25.4,56.2,60 >>前往月球花园
step
#completewith Observe
>>杀死|cRXP_ENEMY_Surge Needle Sorcers|r，|cRXD_ENEMY_MoonrestStalkers|r，| cRXP__ENEMY_Focus Wizards|r和|cRXP_ENEMY_Dragonlight法师猎人|r
.complete 12006,1 
.mob Surge Needle Sorcerer
.mob Moonrest Stalker
.mob Focus Wizard
.mob Dragonblight Mage Hunter
step
.goto Dragonblight,25.4,56.2,-1
.cast 47097 >>|cRXP_WARN_使用|r|T134889:0|t[Surge Needle Teleporter]|cRXP_WARN_to传送到Surge Need|r
.goto Dragonblight,19.59,59.77,-1
.use 36747
.isOnQuest 12060
step
#label Observe
.goto Dragonblight,19.79,59.82
>>|cRXP_WARN_稍微向平台中心移动以完成目标|r
.complete 12060,1 
.use 36747
step
#completewith Atrocity
.cast 47097 >>|cRXP_WARN_使用|r|T134889:0|t[Surge Needle Teleporter]|cRXP_WARN_to向下传送|r
.use 36747
step
.goto Dragonblight,20.96,55.17,70,0
.goto Dragonblight,21.73,60.34,70,0
.goto Dragonblight,19.80,61.84,70,0
.goto Dragonblight,17.54,58.47,70,0
.goto Dragonblight,20.96,55.17,70,0
.goto Dragonblight,21.73,60.34,70,0
.goto Dragonblight,19.36,62.30
>>杀死|cRXP_ENEMY_Surge Needle Sorcers|r，|cRXD_ENEMY_MoonrestStalkers|r，| cRXP__ENEMY_Focus Wizards|r和|cRXP_ENEMY_Dragonlight法师猎人|r
.complete 12006,1 
.mob Surge Needle Sorcerer
.mob Moonrest Stalker
.mob Focus Wizard
.mob Dragonblight Mage Hunter
step
#label Atrocity
.goto Dragonblight,24.19,60.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟尼安·月影|r
.turnin 12006 >>交任务: |cRXP_FRIENDLY_上层精灵的愤怒|r
.accept 12013 >>接任务: |cRXP_LOOT_阿坎尼姆斯的终结|r
.target Ethenial Moonshadow
step
.groundgoto Dragonblight,20.63,60.86,30,0
.goto Dragonblight,20.03,59.74
>>杀死|cRXP_ENEMY_Arcanimus|r
.complete 12013,1 
.mob Arcanimus
step
.goto Dragonblight,24.19,60.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟尼安·月影|r
.turnin 12013 >>交任务: |cRXP_FRIENDLY_阿坎尼姆斯的终结|r
.target Ethenial Moonshadow
step
#completewith next
.goto Dragonblight,29.00,55.45,100 >>明星休息之旅
step
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin 12060 >>交任务: |cRXP_FRIENDLY_投影和计划|r
.accept 12065 >>接任务: |cRXP_LOOT_海岸上的魔法焦点|r
.target Image of Archmage Modera
step
.goto Dragonblight,26.32,64.85
.use 36756 >>杀死|cRXP_ENEMY_Captain Emmy Malin|r。为她掠夺她|cRXP_Loot_Ring|r和|T133469:0|t[|cRXP-Loot_Malin Captain’s Letter|r]
>>|cRXP_WARN_使用|T133469:0|t[|cRXP_LOOT_马林船长的信|r]开始任务|r
.collect 36751,1,12065,1
.collect 36756,1,12067
.accept 12067 >>接任务: |cRXP_LOOT_一封家书|r
.mob Captain Emmy Malin
step
.goto Dragonblight,26.54,65.08
.use 36751 >>|cRXP_WARN_在|r|cRXP_PICK_Ley Line Focus上使用|r|T133377:0|t[Ley-Line Focus Control Ring]|cRXP-WARN_on|r
>>|cRXP_WARN_一旦铸造完成，您就可以开始安装|r
.complete 12065,1 
step
#completewith next
.groundgoto Dragonblight,25.09,60.98,50,0
.goto Dragonblight,29.00,55.45,100 >>明星休息之旅
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Modera, |cRXP_FRIENDLY_指挥官塞雅·蓝钢|r
.turnin 12065 >>交任务: |cRXP_FRIENDLY_海岸上的魔法焦点|r
.accept 12083 >>接任务: |cRXP_LOOT_森林上空|r
.goto Dragonblight,29.00,55.45
.turnin 12067 >>交任务: |cRXP_FRIENDLY_一封家书|r
.goto Dragonblight,29.04,55.42
.target Image of Archmage Modera
.target Commander Saia Azuresteel
step
.goto Dragonblight,28.73,57.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨蕾德亚娜|r
.accept 12092 >>接任务: |cRXP_LOOT_强化古树|r
.target Sarendryana
step
.goto Dragonblight,33.8,60.2,70,0
.goto Dragonblight,36.2,61.7,70,0
.goto Dragonblight,30.6,66.7,70,0
.goto Dragonblight,34.3,68.3,70,0
.goto Dragonblight,29.8,71.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woodland Walkers|r to receive their |T134882:0|t[|cRXP_LOOT_Barks of the Walkers|r]
>>如果他们变得敌对，杀死|cRXP_ENEMY_Woodland Walkers|r。掠夺他们的|T134882:0|t[|cRXP_Loot_Barks of the Walkers|r]
.use 36786 >>|cRXP_WARN_使用|r|T134882:0|t[|cRXP_LOOT_Barks of the Walkers |r]|cRXP-WARN_on|r|cRXT_FRIENDLY_Lothalor Ancients|r
.collect 36786,3,12092,1,-1 
.complete 12092,1 
.skipgossip
.mob Woodlands Walker
.target Lothalor Ancient
step
#completewith next
.goto Dragonblight,33.1,71.5,60,0
.goto Dragonblight,32.4,72.7,60,0
.goto Dragonblight,31.5,72.0,60,0
.goto Dragonblight,31.9,70.4
>>杀死|cRXP_ENEMY_Ta'zinni中尉|r。抢走他的|T133312:0|t[|cRXP-Loot_Ley-Line焦点控制护身符|r]
>>|cRXP_ENEMY_Lieutenant Ta'zinni|r |cRXP_WARN_patrols the Lothalor Woodlands|r
.collect 36779,1,12083,1 
.unitscan Lieutenant Ta'zinni
step
.goto Dragonblight,32.2,71.4
.use 36779 >>|cRXP_WARN_使用|r|T133312:0|t[|cRXP_LOOT_Ley Line Focus Control Amulet|r]|cRXP_WARN_on the |r|cRX_PICK_Ley Line Focus|r
>>|cRXP_WARN_一旦铸造完成，您就可以开始安装|r
.complete 12083,1 
step
#completewith next
.goto Dragonblight,28.73,57.10,100 >>明星休息之旅
step
.goto Dragonblight,28.73,57.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨蕾德亚娜|r
.turnin 12092 >>交任务: |cRXP_FRIENDLY_强化古树|r
.target Sarendryana
step
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin 12083 >>交任务: |cRXP_FRIENDLY_森林上空|r
.accept 12098 >>接任务: |cRXP_LOOT_搜索因度雷村|r
.target Image of Archmage Modera
step
#completewith next
.goto Dragonblight,40.25,66.85,70 >>Travel to Lake Indu'le
step
.goto Dragonblight,40.25,66.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法师指挥官伊文斯塔|r
.turnin 12098 >>交任务: |cRXP_FRIENDLY_搜索因度雷村|r
.accept 12107 >>接任务: |cRXP_LOOT_魔网能量线的终端|r
.target Mage-Commander Evenstar
step
.goto Dragonblight,39.79,67.03
.use 36815 >>|cRXP_WARN_在水下使用|r|T133442:0|t[|cRXP_LOOT_Ley线焦点控制符|r]|cRXT_WARN_on |cRX_PICK_Ley线焦点|r|r
.complete 12107,1 
step
#completewith Konani
.goto Dragonblight,48.52,74.39,100 >>前往莫亚基港口
.skill coldweatherflying,<1,1
step
#completewith next
.goto Dragonblight,48.52,74.39,100 >>前往莫亚基港口
>>|cRXP_WARN_当你接近莫阿基港时，从悬崖上掉下来时要小心|r
.skill coldweatherflying,1,1
step
#completewith Konani
#label MoaFP
.goto Dragonblight,48.52,74.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cid|r
.fp Moa'ki >>获得莫亚基港口航线
.target Cid Flounderfix
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎手莫伊|r, |cRXP_FRIENDLY_长者库纳尼|r
.daily 11960 >>接任务: |cRXP_LOOT_未来的种子|r
.goto Dragonblight,48.25,74.35
.accept 11958 >>接任务: |cRXP_LOOT_不要浪费|r
.turnin 12117 >>交任务: |cRXP_FRIENDLY_前往莫亚基港口|r
.goto Dragonblight,48.00,74.87
.isOnQuest 12117
.target Trapper Mau'i
.target Elder Ko'nani
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎手莫伊|r, |cRXP_FRIENDLY_长者库纳尼|r
.daily 11960 >>接任务: |cRXP_LOOT_未来的种子|r
.goto Dragonblight,48.25,74.35
.accept 11958 >>接任务: |cRXP_LOOT_不要浪费|r
.turnin 12118 >>交任务: |cRXP_FRIENDLY_前往莫亚基港口|r
.goto Dragonblight,48.00,74.87
.isOnQuest 12118
.target Trapper Mau'i
.target Elder Ko'nani

step
#label Konani
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎手莫伊|r, |cRXP_FRIENDLY_长者库纳尼|r
.daily 11960 >>接任务: |cRXP_LOOT_未来的种子|r
.goto Dragonblight,48.25,74.35
.accept 11958 >>接任务: |cRXP_LOOT_不要浪费|r
.goto Dragonblight,48.00,74.87
.target Trapper Mau'i
.target Elder Ko'nani

step
#completewith next
.goto Dragonblight,52.92,65.64,20 >>前往Azure龙之林
step
.goto Dragonblight,52.92,65.64
>>观察天蓝龙纹
.complete 12107,2 
step
#requires MoaFP
#loop
.line Dragonblight,49.07,63.26,47.35,64.41,47.33,61.52,44.89,61.37,45.24,63.72,43.85,68.47,42.64,71.91,44.57,71.43,46.01,68.68,47.33,64.45,49.07,63.26
.goto Dragonblight,49.07,63.26,55,0
.goto Dragonblight,47.35,64.41,55,0
.goto Dragonblight,47.33,61.52,55,0
.goto Dragonblight,44.89,61.37,55,0
.goto Dragonblight,45.24,63.72,55,0
.goto Dragonblight,43.85,68.47,55,0
.goto Dragonblight,42.64,71.91,55,0
.goto Dragonblight,44.57,71.43,55,0
.goto Dragonblight,46.01,68.68,55,0
.goto Dragonblight,47.33,64.45,55,0
.goto Dragonblight,49.07,63.26,55,0
>>杀死|cRXP_ENEMY_雪花Glade Den妈妈s|r，|cRXD_ENEMY_Snowfall Reavers|r，| cRXP__ENEMY_Snowball Shaman |r和|cRXP_ENEMY_斯诺福尔Wolvar|r。掠夺她们的|cRXP_Loot_货物|r
>>抢劫|cRXP_Loot_Snowfall Glade Pups|r.|cRXD_WARN_Do NOT kill they|r
.complete 11958,1 
.complete 11960,1 
.isOnQuest 11960
.target 雪花Glade Den妈妈
.target Snowfall Glade Reaver
.target Snowfall Glade Shaman
.target Snowfall Glade Wolvar
.target Snowfall Glade Pup
step
#requires MoaFP
#loop
.line Dragonblight,49.07,63.26,47.35,64.41,47.33,61.52,44.89,61.37,45.24,63.72,43.85,68.47,42.64,71.91,44.57,71.43,46.01,68.68,47.33,64.45,49.07,63.26
.goto Dragonblight,49.07,63.26,55,0
.goto Dragonblight,47.35,64.41,55,0
.goto Dragonblight,47.33,61.52,55,0
.goto Dragonblight,44.89,61.37,55,0
.goto Dragonblight,45.24,63.72,55,0
.goto Dragonblight,43.85,68.47,55,0
.goto Dragonblight,42.64,71.91,55,0
.goto Dragonblight,44.57,71.43,55,0
.goto Dragonblight,46.01,68.68,55,0
.goto Dragonblight,47.33,64.45,55,0
.goto Dragonblight,49.07,63.26,55,0
>>杀死|cRXP_ENEMY_雪花Glade Den妈妈s|r，|cRXD_ENEMY_Snowfall Reavers|r，| cRXP__ENEMY_Snowball Shaman |r和|cRXP_ENEMY_斯诺福尔Wolvar|r。掠夺她们的|cRXP_Loot_货物|r
.complete 11958,1 
.target 雪花Glade Den妈妈
.target Snowfall Glade Reaver
.target Snowfall Glade Shaman
.target Snowfall Glade Wolvar
step
#completewith next
.goto Dragonblight,48.25,74.35,100 >>前往莫亚基港口
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎手莫伊|r, |cRXP_FRIENDLY_长者库纳尼|r
.turnin 11960 >>交任务: |cRXP_FRIENDLY_未来的种子|r
.goto Dragonblight,48.25,74.35
.turnin 11958 >>交任务: |cRXP_FRIENDLY_不要浪费|r
.accept 11959 >>接任务: |cRXP_LOOT_消灭洛根|r
.goto Dragonblight,48.00,74.87
.target Trapper Mau'i
.target Elder Ko'nani
step
.use 35688 >>杀死|cRXP_ENEMY_Loguhn|r。为|T136168:0|t[|cRXP_Loot_Loguhn|r]掠夺他
>>|cRXP_WARN_使用|r|T136168:0|t[|cRXP_OOT_Loguhn|r]的血液
.collect 35688,1,11959,1 
.goto Dragonblight,46.34,59.13
.complete 11959,1 
.goto Dragonblight,48.03,74.82
.unitscan Loguhn
step
#completewith next
.goto Dragonblight,48.00,74.87,100 >>前往莫亚基港口
step
.goto Dragonblight,48.00,74.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_长者库纳尼|r
.turnin 11959 >>交任务: |cRXP_FRIENDLY_消灭洛根|r
.target Elder Ko'nani
step
#questguide << !wotlk
.goto Dragonblight,48.00,76.15,20,0
.goto Dragonblight,47.69,76.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图尔凯|r
.accept 12009 >>接任务: |cRXP_LOOT_图尔凯的螃蟹陷阱|r
.target Tua'kea
step
.goto Dragonblight,49.15,75.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师图阿鲁|r
.accept 12028 >>接任务: |cRXP_LOOT_灵魂视界|r
.target Toalu'u the Mystic
step
.goto Dragonblight,48.94,75.75
.use 35907 >>|cRXP_WARN_使用|r|T132859:0|t[Toalu'u的灵香]|cRXP_WARN_next to |r|cRX_PICK_Toalu'u的Brazier|r
>>|cRXP_WARN_等待RP|r
.cast 47190
.timer 160,Spiritual Insight RP
.complete 12028,1 
step
.goto Dragonblight,49.15,75.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师图阿鲁|r
.turnin 12028 >>交任务: |cRXP_FRIENDLY_灵魂视界|r
.accept 12030 >>接任务: |cRXP_LOOT_长者玛纳洛|r
.target Toalu'u the Mystic
step
#completewith Kili
.cast 48359 >>|cRXP_WARN_Use|r|T132822:0|t[Tua'kea的呼吸膀胱]
.use 37265
step
#completewith next
.use 38351 >>|cRXP_WARN_使用|r|T134800:0|t[Murliver Oil]|cRXP_WARN_to提高游泳速度|r
.itemcount 38351,1
.isQuestTurnedIn 11559
step
#questguide << !wotlk
#completewith Kili
.goto Dragonblight,46.5,76.2,0
>>在海底掠夺|cRXP_Loot_Tua'kea螃蟹陷阱|r
.complete 12009,1 
step
.goto Dragonblight,47.72,79.99
>>单击海底的|cRXP_PICK_Wrecked Crab Trap|r
.accept 12011 >>接任务: |cRXP_LOOT_大麻烦的征兆|r
step
.goto Dragonblight,47.7,76.6,20,0
.goto Dragonblight,47.99,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图尔凯|r
.turnin 12011 >>交任务: |cRXP_FRIENDLY_大麻烦的征兆|r
.accept 12016 >>接任务: |cRXP_LOOT_诱饵|r
.target Tua'kea
step << !Shaman !DK wotlk
#completewith next
.use 38351 >>|cRXP_WARN_使用|r|T134800:0|t[Murliver Oil]|cRXP_WARN_to提高游泳速度|r
.itemcount 38351,1
.isQuestTurnedIn 11559
step
#label Kili
.goto Dragonblight,43.9,82.7,60,0
.goto Dragonblight,42.00,79.86
>>杀死|cRXP_ENEMY_Kilioua|r。掠夺他的|cRXX_Loot_Pickers|r
.complete 12016,1 
.unitscan Kili'ua
step << wotlk
#completewith next
.use 38351 >>|cRXP_WARN_使用|r|T134800:0|t[Murliver Oil]|cRXP_WARN_to提高游泳速度|r
.itemcount 38351,1
.isQuestTurnedIn 11559
step
#questguide << !wotlk
#loop
.line Dragonblight,44.59,80.85,45.88,81.77,46.31,80.21,45.33,79.80,44.60,79.57,45.53,78.37,46.03,78.29,46.15,76.58,46.66,75.83,46.61,77.50,47.15,78.65,48.33,78.85,45.88,81.77
.goto Dragonblight,44.59,80.85,45,0
.goto Dragonblight,45.88,81.77,45,0
.goto Dragonblight,46.31,80.21,45,0
.goto Dragonblight,45.33,79.80,45,0
.goto Dragonblight,44.60,79.57,45,0
.goto Dragonblight,45.53,78.37,45,0
.goto Dragonblight,46.03,78.29,45,0
.goto Dragonblight,46.15,76.58,45,0
.goto Dragonblight,46.66,75.83,45,0
.goto Dragonblight,46.61,77.50,45,0
.goto Dragonblight,47.15,78.65,45,0
.goto Dragonblight,48.33,78.85,45,0
.goto Dragonblight,45.88,81.77,45,0
.use 37265 >>在海底掠夺|cRXP_Loot_Tua'kea螃蟹陷阱|r
.complete 12009,1 
step
#questguide << !wotlk
.goto Dragonblight,47.7,76.6,20,0
.goto Dragonblight,47.99,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图尔凯|r
.turnin 12009 >>交任务: |cRXP_FRIENDLY_图尔凯的螃蟹陷阱|r
.turnin 12016 >>交任务: |cRXP_FRIENDLY_诱饵|r
.accept 12017 >>接任务: |cRXP_LOOT_鱼钩上的肉|r
.target Tua'kea
step << !wotlk
.goto Dragonblight,47.7,76.6,20,0
.goto Dragonblight,47.99,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图尔凯|r
.turnin 12016 >>交任务: |cRXP_FRIENDLY_诱饵|r
.accept 12017 >>接任务: |cRXP_LOOT_鱼钩上的肉|r
.target Tua'kea
step
.goto Dragonblight,46.74,78.18
.use 35838 >>|cRXP_WARN_使用|r|T134036:0|t[屠的诱饵]|cRXP_WARN_on|cRX_PICK_屠的鱼钩|r水下召唤|r|cRXP_ENEMY_屠|r
>>杀死|cRXP_ENEMY_Tu'u'gwar|r
.cast 47159
.timer 35,Meat on the Hook RP
.complete 12017,1 
.mob Tu'u'gwar
step
.goto Dragonblight,47.99,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图尔凯|r
.turnin 12017 >>交任务: |cRXP_FRIENDLY_鱼钩上的肉|r
.target Tua'kea
step
#completewith next
.groundgoto Dragonblight,48.5,67.8,50,0
.goto Dragonblight,36.63,64.96,50 >>北上Indu'le村
step
.goto Dragonblight,36.63,64.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Elder Mana'loa, Don't kill any |cRXP_ENEMY_Indu'le
.turnin 12030 >>交任务: |cRXP_FRIENDLY_长者玛纳洛|r
.accept 12031 >>接任务: |cRXP_LOOT_解脱和安息|r
.target Elder Mana'loa
step
.goto Dragonblight,36.5,65.5,50,0
.goto Dragonblight,37.0,70.8,50,0
.goto Dragonblight,42.1,71.1,50,0
.goto Dragonblight,41.4,63.7
>>杀死|cRXP_ENEMY_Indu'le神秘人|r、|cRXD_ENEMY_Indu'le勇士|r和|cRXP_ENEMY_Indu'le渔夫|r
.complete 12031,1 
.mob Indu'le Mystic
.mob Indu'le Warrior
.mob Indu'le Fisherman
step
#questguide << !wotlk
.goto Dragonblight,36.63,64.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Mana'loa|r
.turnin 12031 >>交任务: |cRXP_FRIENDLY_解脱和安息|r
.accept 12032 >>接任务: |cRXP_LOOT_海洋女神|r
.target Elder Mana'loa
step << !wotlk
.goto Dragonblight,36.63,64.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Mana'loa|r
.turnin 12031 >>交任务: |cRXP_FRIENDLY_解脱和安息|r
.target Elder Mana'loa
step
#questguide << !wotlk
#completewith next
.groundgoto Dragonblight,34.5,80.1,40,0
.groundgoto Dragonblight,35.1,82.5,40,0
.goto Dragonblight,33.91,83.22,40 >>前往Briny Pinnacle
step
#questguide << !wotlk
.waypoint Dragonblight,34.11,84.76,-47098,wpbuff,UNIT_AURA
.goto Dragonblight,33.96,83.49
>>单击|cRXP_PICK_深渊之珠|r
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_一旦你有了|r|T135895:0|t[Oacha'noa's Compulsion]|cRXP_WARN_buff，就跳进水里|r|cRXP-FRIENDLY_Oacha'no|r
.cast 3365
.timer 40,Oach'a'noa RP
.complete 12032,1 
.target Oacha'noa
step << Druid wotlk
#completewith DruidTrain1
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <72,1
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48464 >>训练你的职业技能
.xp <72,1
.target Loganaar
step << Druid wotlk
#label DruidTrain1
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 53307 >>训练你的职业技能
.xp <74,1
.target Loganaar
step << DK wotlk
#completewith DKTrain1
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <72,1
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49940 >>训练你的职业技能
.xp <72,1
.target Amal'thazad
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49904 >>训练你的职业技能
.xp <73,1
.target Amal'thazad
step << DK wotlk
#label DKTrain1
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49929 >>训练你的职业技能
.xp <74,1
.target Amal'thazad
step << Mage wotlk
#completewith MageTrain1
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <72,1
step << Mage wotlk
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42930 >>训练你的职业技能
.xp <72,1
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 43019 >>训练你的职业技能
.xp <73,1
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
#label MageTrain1
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42939 >>训练你的职业技能
.xp <74,1
.target Elsharin
.target Jennea Cannon
step
#label pt1end
#completewith next
.hs >>星辰安息之炉
step
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin 12107 >>交任务: |cRXP_FRIENDLY_魔网能量线的终端|r
.accept 12119 >>接任务: |cRXP_LOOT_拜见巨龙女王|r
.target Image of Archmage Modera
step
#label pt2start
.goto Dragonblight,28.84,56.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_信使兰森|r
.accept 12171 >>接任务: |cRXP_LOOT_叛徒的名单|r
.target Courier Lanson
step
.goto Dragonblight,29.18,55.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕蕾娜·银云|r
.turnin 12171 >>交任务: |cRXP_FRIENDLY_叛徒的名单|r
.accept 12174 >>接任务: |cRXP_LOOT_高级指挥官哈尔弗·维姆班恩|r
.timer 88,Westguard Keep Flight
>>|cRXP_WARN_Accepting this quest will send you flying to eastern Dragonblight|r
.target Palena Silvercloud
step
#completewith next
.goto Dragonblight,77.08,49.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗尼·威尔斯|r
.fp Wintergarde Keep>>获取Wintergarde Keep飞行路线
.target Rodney Wells
step
.goto Dragonblight,78.59,48.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
.turnin 12174 >>交任务: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
.accept 12235 >>接任务: |cRXP_LOOT_纳克萨玛斯与暮冬城的陷落|r
.target High Commander Halford Wyrmbane
step
.goto Dragonblight,77.10,50.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
.turnin 12235 >>交任务: |cRXP_FRIENDLY_纳克萨玛斯与暮冬城的陷落|r
.accept 12237 >>接任务: |cRXP_LOOT_拯救暮冬城平民|r
.target Gryphon Commander Urik
step
#completewith next
.goto Dragonblight,77.13,49.78
.vehicle 27258 >>|cRXP_WARN_使用|r|T132161:0|t[Wintergarde Gryphon Whistle]|cRXP_WARN_to挂载|r|cRXP-FRIENDLY_Gryphon|r
.use 37287
step
.waypoint Dragonblight,86.38,50.91,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
>>|cRXP_WARN_飞往Carrion Fields|r
>>|cRXP_WARN_铸造|r|T134148:0|t[营救村民]（1）|cRXP_WARN_to pick up |cRXT_FRIENDLY_Helpless Villages|r一次只能pick一个|r
>>|cRXP_WARN_铸造|r|T134149:0|t[送村民]（2）|cRXP_WARN_to将他们送至|r|cRXP-FRIENDLY_Urik|r
>>|cRXP_WARN_施法|r|T132172:0|t[Soar]（3）|cRXP_WARN_on冷却以飞得更快|r
.complete 12237,1 
.goto Dragonblight,77.13,49.78
.use 37287
.target Helpless Wintergarde Villager
step
.goto Dragonblight,77.10,50.12
>>|cRXP_WARN_拆除鹰头狮|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
.turnin 12237 >>交任务: |cRXP_FRIENDLY_拯救暮冬城平民|r
.accept 12251 >>接任务: |cRXP_LOOT_向高级指挥官复命|r
.target Gryphon Commander Urik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r, Windstryke
.turnin 12251 >>交任务: |cRXP_FRIENDLY_向高级指挥官复命|r
.accept 12253 >>接任务: |cRXP_LOOT_拯救暮冬城的平民|r
.accept 12275 >>接任务: |cRXP_LOOT_破坏专家斯林奇|r
.goto Dragonblight,78.47,48.28
.accept 12258 >>接任务: |cRXP_LOOT_亡者的命运|r
.goto Dragonblight,78.64,48.18
.target High Commander Halford Wyrmbane
.target Commander Lynore Windstryke
step
.goto Dragonblight,79.15,47.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_幻象师瑟里格|r
.accept 12282 >>接任务: |cRXP_LOOT_往日的烙印|r
.target Zelig the Visionary
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Quarterflash, |cRXP_FRIENDLY_李奥瑞克·冯·泽尔迪格公爵|r
.turnin 12275 >>交任务: |cRXP_FRIENDLY_破坏专家斯林奇|r
.accept 12276 >>接任务: |cRXP_LOOT_寻找斯林奇|r
.accept 12272 >>接任务: |cRXP_LOOT_流血的矿石|r
.goto Dragonblight,77.84,50.29
.accept 12269 >>接任务: |cRXP_LOOT_我们的矿洞？休想！|r
.goto Dragonblight,77.80,50.34
.target Siege Engineer Quarterflash
.target Highlord Leoric Von Zeldig
step
#completewith chief
.goto Dragonblight,77.47,51.41,10,0
.goto Dragonblight,77.41,51.84,10,0
.goto Dragonblight,77.47,51.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊露希亚·卢恩|r
.home >>将您的炉石设置为Wintergarde Keep
.target Illusia Lune
step
.goto Dragonblight,77.34,51.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t单击|cRXP_FRIENDLY_The Wanted Poster|r
.accept 12438 >>接任务: |cRXP_LOOT_悬赏：克留格·碎誓者|r
.accept 12441 >>接任务: |cRXP_LOOT_通缉：高阶萨满祭司德金·血爪|r
.accept 12442 >>接任务: |cRXP_LOOT_悬赏：先锋军指挥官尤斯图斯|r
step
#completewith next
.groundgoto Dragonblight,78.84,48.23,50,0
.goto Dragonblight,79.6,50.5,15 >>进入市政厅
step
#label orb
#sticky
.goto Dragonblight,79.6,50.5,10,0
.goto Dragonblight,78.86,50.88
>>|cRXP_WARN_在市政厅走上楼梯|r
>>在二楼织机|cRXP_Loot_ScreatingOrb|r
.complete 12282,1 
step
.goto Dragonblight,78.98,51.61,60,0
.goto Dragonblight,79.83,51.69,60,0
.goto Dragonblight,80.89,51.51,60,0
.goto Dragonblight,80.70,48.22,60,0
.goto Dragonblight,79.89,52.17
>>杀死|cRXP_ENEMY_Vengeful Geists|r周围的|cRXP_FRIENDLY_Trapped Wintergarde村民|r
.complete 12258,1 
.complete 12253,1 
.mob Vengeful Geist
step
#completewith next
.goto Dragonblight,80.21,44.87,15 >>前往温特加德矿场。从下矿井进入
step
#sticky
#label mine
.goto Dragonblight,78.9,42.1,0,0
>>杀死|cRXP_ENEMY_Risen Wintergarde矿工|r。掠夺他们的|cRXP_Loot_Cards|r
>>|cRXP_ENEMY_Wintergarde防守队员|r|cRXP_WARN_不要放弃他们|r
>>掠夺地面上的|cRXP_Loot_奇异矿石|r
.complete 12269,1 
.complete 12272,1 
.mob Risen Wintergarde Miner
step
.goto Dragonblight,81.53,42.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_破坏专家斯林奇|r
.turnin 12276 >>交任务: |cRXP_FRIENDLY_寻找斯林奇|r
.accept 12277 >>接任务: |cRXP_LOOT_阻绝邪恶|r
.target Slinkin the Demo-gnome
step
.goto Dragonblight,80.74,41.31
>>掠夺地面上的|T133717:0|t[|cRXP_Loot_温特加德地雷炸弹|r]
.collect 37465,1,12277,1
step
.goto Dragonblight,80.14,45.35
.cast 48741 >>|cRXP_WARN_使用|r|T133717:0|t[|cRXP_OOT_Wintergarde地雷炸弹|r]|cRXP-WARN_at下部矿井入口|r

.use 37465
.isOnQuest 12277
step
.goto Dragonblight,80.42,44.95
.cast 48741 >>|cRXP_WARN_使用|r|T133717:0|t[|cRXP_OOT_Wintergarde地雷炸弹|r]|cRXP-WARN_at上部矿井入口|r

.use 37465
.isOnQuest 12277
step
.groundgoto Dragonblight,81.54,48.75,50,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r and |cRXP_FRIENDLY_Windstryke|r
.turnin 12253 >>交任务: |cRXP_FRIENDLY_拯救暮冬城的平民|r
.accept 12309 >>接任务: |cRXP_LOOT_找到杜尔库！|r
.goto Dragonblight,78.58,48.20
.turnin 12258 >>交任务: |cRXP_FRIENDLY_亡者的命运|r
.goto Dragonblight,78.64,48.18
.target High Commander Halford Wyrmbane
.target Commander Lynore Windstryke
step
.goto Dragonblight,79.15,47.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_幻象师瑟里格|r
.turnin 12282 >>交任务: |cRXP_FRIENDLY_往日的烙印|r
.accept 12287 >>接任务: |cRXP_LOOT_欧瑞克·图哈特|r
.target Zelig the Visionary
step
.goto Dragonblight,77.81,50.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Quarterflash, |cRXP_FRIENDLY_李奥瑞克·冯·泽尔迪格公爵|r
.turnin 12272 >>交任务: |cRXP_FRIENDLY_流血的矿石|r
.turnin 12277 >>交任务: |cRXP_FRIENDLY_阻绝邪恶|r
.accept 12281 >>接任务: |cRXP_LOOT_天灾战争机器的奥秘|r
.goto Dragonblight,77.84,50.29
.turnin 12269 >>交任务: |cRXP_FRIENDLY_我们的矿洞？休想！|r
.goto Dragonblight,77.80,50.34
.target Siege Engineer Quarterflash
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,78.54,48.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12281 >>交任务: |cRXP_FRIENDLY_天灾战争机器的奥秘|r
.target High Commander Halford Wyrmbane
step
#completewith next
.goto Dragonblight,79.06,53.21,50 >>前往温特加德地穴的|cRXP_FRIENDLY_Durkon|r
step
.goto Dragonblight,79.06,53.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑兵杜尔库|r
.turnin 12309 >>交任务: |cRXP_FRIENDLY_找到杜尔库！|r
.accept 12311 >>接任务: |cRXP_LOOT_贵族的陵墓|r
.target Cavalier Durkon
step
.goto Dragonblight,78.62,52.28
>>|cRXP_WARN_进入冬花园地穴|r
>>杀死|cRXP_ENEMY_亡灵诅咒|r
>>单击地面上的|cRXP_PICK_Flesh-bound Tome|r
.complete 12311,1 
.accept 12312 >>接任务: |cRXP_LOOT_天灾的秘密|r
.mob Necrolord Amarion
step
#label pt2end
.goto Dragonblight,79.06,53.21
>>|cRXP_WARN_Exit Wintergarde Crypt|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑兵杜尔库|r
.turnin 12311 >>交任务: |cRXP_FRIENDLY_贵族的陵墓|r
.turnin 12312 >>交任务: |cRXP_FRIENDLY_天灾的秘密|r
.accept 12319 >>接任务: |cRXP_LOOT_血之魔典|r
.target Cavalier Durkon
step
.goto Dragonblight,78.56,48.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12319 >>交任务: |cRXP_FRIENDLY_血之魔典|r
.accept 12320 >>接任务: |cRXP_LOOT_破译魔典|r
.target High Commander Halford Wyrmbane
step
#completewith next
.groundgoto Dragonblight,78.2,46.7,40,0
.goto Dragonblight,76.81,47.51,40 >>Travel to the Keep
step
.goto Dragonblight,76.81,47.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Eligor|r
.accept 12464 >>接任务: |cRXP_LOOT_我的老对手|r
.target Commander Eligor Dawnbringer
step
.goto Dragonblight,76.99,47.92,12,0
.goto Dragonblight,76.82,47.52
>>|cRXP_WARN_进入楼下的监狱|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_审讯员哈尔拉德|r
.turnin 12320 >>交任务: |cRXP_FRIENDLY_破译魔典|r
.accept 12321 >>接任务: |cRXP_LOOT_正义的审判|r
.timer 184,A Righteous Sermon RP
.target Inquisitor Hallard
step
.goto Dragonblight,78.2,47.2
>>|cRXP_WARN_退出Keep|r
>>|cRXP_WARN_在箭头指向的地方等待|cRXP_FRIENDLY_Inquisitor Hallard|r传递他的正义圣训|r
>>|cRXP_WARN_如果你走得太远，任务失败了，回去重新拾起它|r
>>|cRXP_WARN_他用时2分55秒。这段时间你可以休息一下|r
.complete 12321,1 
step
.goto Dragonblight,78.48,48.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12321 >>交任务: |cRXP_FRIENDLY_正义的审判|r
.accept 12325 >>接任务: |cRXP_LOOT_进入敌占区|r
.target High Commander Halford Wyrmbane
step
#completewith next
.goto Dragonblight,77.20,49.54,-1
.goto Dragonblight,89.68,46.36,-1
.vehicle >>登上一座|cRXP_FRIENDLY_Wintergarde鹰头狮|r飞往托尔森的哨所
.timer 40,Into Hostile Territory RP
.target Wintergarde Gryphon
.skill coldweatherflying,1,1
step
.goto Dragonblight,89.68,46.36
>>|cRXP_WARN_等待飞往Thorson's Post的航班|r
>>|cRXP_WARN_当你靠近地面时，点击|r|T135992:0|t[降落伞]|cRXP_WARN_buff|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥古斯特公爵|r
.turnin 12325 >>交任务: |cRXP_FRIENDLY_进入敌占区|r
.accept 12326 >>接任务: |cRXP_LOOT_蒸汽坦克行动|r
.target Duke August Foehammer
.skill coldweatherflying,1,1
step
.goto Dragonblight,89.68,46.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥古斯特公爵|r
.turnin 12325 >>交任务: |cRXP_FRIENDLY_进入敌占区|r
.accept 12326 >>接任务: |cRXP_LOOT_蒸汽坦克行动|r
.target Duke August Foehammer
step
.goto Dragonblight,90.1,52.7
>>杀死|cRXP_ENEMY_Kreug誓言破坏者|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
.complete 12438,1 
.mob Kreug Oathbreaker
step
#completewith next
.goto Dragonblight,89.8,46.8,10,0
.goto Dragonblight,89.7,45.6
.vehicle 27587 >>输入|cRXP_FRIENDLY_Alliance蒸汽罐|r
.target Alliance Steam Tank
step
>>|cRXP_WARN_施法|r|T135836:0|t[冰炮]（1）|cRXP_WARN_and|r|T135834:0|t[冰狱]（2）|cRX P_WARN_to杀死|r|cRX _ ENEMY_Scourge|r
>>|cRXP_WARN_铸造|r|T134165:0|t[放下侏儒]（3）|cRXP_WARN_when到|cRXT_ENEMY_Plague Wagons|r旁边破坏它们。一次只能破坏1|cRXP_ENEMY_Plague Wagon|r|r
>>|cRXP_WARN_如果|cRXP_FRIENDLY_Gnome|r停止破坏|cRXP_ENEMY_Plague Wagon|r，返回|cRXP_RIENDLY_Foehammer|r并获取一个新的|cRXP_RIENDLY_Tank|r|r
.goto Dragonblight,87.25,50.97
.complete 12326,1 
.cast 49109
.timer 15,Plague Wagon Sabotage RP
.mob Plague Wagon
step
#completewith next
.goto Dragonblight,85.60,49.90,20 >>冬季花园陵墓之旅
>>|cRXP_WARN_待在|r|cRXP_FRIENDLY_联盟蒸汽罐中|r
step
.goto Dragonblight,85.60,49.90
>>|cRXP_WARN_铸造|r|T135942:0|t[送兵]（4）|cRXP_WARN_在冬园陵墓入口处|r
.complete 12326,2 
step
#completewith next
.goto Dragonblight,86.18,50.26,12 >>进入温特加德陵墓
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r and |cRXP_FRIENDLY_Yord|r inside the Mausoleum
.turnin 12326 >>交任务: |cRXP_FRIENDLY_蒸汽坦克行动|r
.accept 12455 >>接任务: |cRXP_LOOT_随风散落|r
.goto Dragonblight,85.94,50.87
.accept 12462 >>接任务: |cRXP_LOOT_深入陵园|r
.goto Dragonblight,85.86,51.03
.target Ambo Cash
.target Yord "Calamity" Icebeard
step
#completewith next
.goto Dragonblight,86.16,50.18,12 >>退出Wintergarde陵墓
step
.goto Dragonblight,83.3,46.4,70,0
.goto Dragonblight,83.4,51.0,70,0
.goto Dragonblight,89.1,53.0,70,0
.goto Dragonblight,83.4,51.0
>>打开|cRXP_PICK_Wintergarde弹药箱|r。为|cRXP-Loot_Wentgarde弹药|r掠夺它们
.complete 12455,1 
step
#completewith next
.goto Dragonblight,85.60,49.90,15,0
.goto Dragonblight,86.18,50.26,12 >>进入温特加德陵墓
step
.goto Dragonblight,85.94,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r
.turnin 12455 >>交任务: |cRXP_FRIENDLY_随风散落|r
.accept 12457 >>接任务: |cRXP_LOOT_重机枪与你|r
.target Ambo Cash
step
.goto Dragonblight,86.24,51.06
#completewith next
.vehicle >>进入|cRXP_FRIENDLY_Chain Gun|r
step
.goto Dragonblight,86.24,51.06
>>|cRXP_WARN_演员阵容|r|T132351:0|t[喊出受伤的士兵]（2）|cRXP_WARN_to为安全起见进行|cRXT_FRIENDLY_Soldier|r跑步|r
>>|cRXP_WARN_施法|r|T136186:0|t[第七军团链枪]（1）|cRXP_WARN_to杀死攻击|r|cRXP_FIRENDLY_Soldier的|cRXT_ENEMY_Undad|r|r
.complete 12457,1 
step
>>|cRXP_WARN_退出|r|cRXP_FRIENDLY_Chain枪|r
.goto Dragonblight,85.94,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r
.turnin 12457 >>交任务: |cRXP_FRIENDLY_重机枪与你|r
.accept 12463 >>接任务: |cRXP_LOOT_找到普兰比尔德！|r
.target Ambo Cash
step
.goto Dragonblight,85.7,51.7,12,0
>>|cRXP_WARN_深入陵墓|r
>>杀死|cRXP_ENEMY_亡灵X'avius|r和|cRXX_ENEMY_亡灵Horus|r
>>杀死|cRXP_ENEMY_Naxxramas Scourge|r
.complete 12462,2 
.mob +Necrolord X'avius
.goto Dragonblight,84.35,51.01
.complete 12462,1 
.mob +Necrolord Horus
.complete 12462,3 
.goto Dragonblight,86.69,52.91
.mob Tattered Abomination
.mob Scourge Technician
.mob Leprous Servant
.mob Naxxramas Dreadguard
.mob Naxxramas Shade
.mob Dreadbone Construct
.mob Wailing Soul
step
.goto Dragonblight,85.86,51.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yord|r
.turnin 12462 >>交任务: |cRXP_FRIENDLY_深入陵园|r
.target Yord "Calamity" Icebeard
step
.goto Dragonblight,84.17,54.68
>>|cRXP_WARN_下到陵墓后面。进入右后角的小隧道|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兰比尔德|r
.turnin 12463 >>交任务: |cRXP_FRIENDLY_找到普兰比尔德！|r
.accept 12465 >>接任务: |cRXP_LOOT_普兰比尔德的日记|r
.target Plunderbeard
step
.goto Dragonblight,84.0,56.1,20,0
.goto Dragonblight,83.4,55.1,20,0
.goto Dragonblight,82.2,54.0
>>|cRXP_WARN_继续到隧道的尽头|r
>>杀死|cRXP_ENEMY_Dreadbone构造|r和|cRXP_ENEMY_Wailing Souls|r。掠夺它们的|cRXD_Loot_Journal Pages|r
.complete 12465,1 
.complete 12465,2 
.complete 12465,3 
.complete 12465,4 
.mob Dreadbone Construct
.mob Wailing Soul
step
.goto Dragonblight,80.9,51.9,20,0
.goto Dragonblight,81.55,50.70,20 >>|cRXP_WARN_继续穿过陵墓，从另一个入口出去|r
.isOnQuest 12465
step
#completewith next
.goto Dragonblight,85.60,49.90,15,0
.goto Dragonblight,86.18,50.26,12 >>进入温特加德陵墓
step
.goto Dragonblight,85.94,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo|r in the Mausoleum
.turnin 12465 >>交任务: |cRXP_FRIENDLY_普兰比尔德的日记|r
.accept 12466 >>接任务: |cRXP_LOOT_追击冰雪风暴：第七军团前线|r
.target Ambo Cash
step
#completewith next
.goto Dragonblight,86.16,50.18,12,0
.goto Dragonblight,85.73,49.99,12 >>退出Wintergarde陵墓
step
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12287 >>交任务: |cRXP_FRIENDLY_欧瑞克·图哈特|r
.accept 12290 >>接任务: |cRXP_LOOT_黑暗草|r
.target Orik Trueheart
step
#label chief
#sticky
.goto Dragonblight,90.67,72.89
>>杀死|cRXP_ENEMY_High萨满血爪|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
>>|cRXP_WARN_施法|r|T136075:0|t[清除]|cRXP_WARN_当他有嗜血欲望时|r << Shaman
>>|cRXP_WARN_施法|r|T135894:0|t[驱散魔法]|cRXP_WARN_当他有嗜血欲望时|r << Priest
.complete 12441,1 
.mob High Shaman Bloodpaw
step
.goto Dragonblight,89.2,65.4,70,0
.goto Dragonblight,90.2,74.6,70,0
.goto Dragonblight,89.28,65.60,70,0
.goto Dragonblight,90.22,72.24
>>在地面上抢劫|cRXP_Loot_Murkweed|r
.complete 12290,1 
step
#requires chief
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12290 >>交任务: |cRXP_FRIENDLY_黑暗草|r
.accept 12291 >>接任务: |cRXP_LOOT_被遗忘的故事|r
.target Orik Trueheart
step
#completewith next
.goto Dragonblight,87.1,67.3,100 >>前往被遗忘的海岸
step
>>|cRXP_WARN_使用|r|T134711:0|t[Murkweed Elixir]|cRXP_WARN_at the Forgotten Shore|r
.use 37570 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被遗忘的农夫|r, |cRXP_FRIENDLY_被遗忘的火枪手|r, |cRXP_FRIENDLY_被遗忘的骑士|r, |cRXP_FRIENDLY_被遗忘的步兵|r
.complete 12291,1 
.goto Dragonblight,87.1,67.3
.complete 12291,2 
.goto Dragonblight,86.2,67.5
.complete 12291,3 
.goto Dragonblight,86.6,68.6,50,0
.goto Dragonblight,85.1,69.7
.complete 12291,4 
.goto Dragonblight,85.2,68.5
.skipgossip
.target Forgotten Peasant
.target Forgotten Rifleman
.target Forgotten Knight
.target Forgotten Footman
step
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12291 >>交任务: |cRXP_FRIENDLY_被遗忘的故事|r
.accept 12301 >>接任务: |cRXP_LOOT_真相会让我们解脱|r
.target Orik Trueheart
step
#completewith next
.goto Dragonblight,86.80,66.19,100 >>前往被遗忘的海岸
step
.goto Dragonblight,86.80,66.19
.use 37577 >>|cRXP_WARN_使用|r|T134334:0|t[Orik's Crystally Orb]|cRXP_WARN_当站在地上的蓝色|cRX_PICK_Forgotten Ruines|r旁边时|r
>>|cRXP_WARN_等待RP|r
.cast 48866
.timer 129,The Truth Shall Set Us Free RP
.complete 12301,1 
step
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12301 >>交任务: |cRXP_FRIENDLY_真相会让我们解脱|r
.accept 12305 >>接任务: |cRXP_LOOT_离别的思绪|r
.target Orik Trueheart
step << Shaman
#completewith next
.hs >>温特加尔德要塞的壁炉
.cooldown item,6948,>2
step << !Shaman
#completewith next
.goto Dragonblight,79.15,47.17,100 >>前往Wintergarde Keep
step
.goto Dragonblight,79.15,47.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_幻象师瑟里格|r
.turnin 12305 >>交任务: |cRXP_FRIENDLY_离别的思绪|r
.accept 12475 >>接任务: |cRXP_LOOT_隐藏的秘密|r
.target Zelig the Visionary
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r and |cRXP_FRIENDLY_Windstryke|r
.accept 12477 >>接任务: |cRXP_WARN_救赎之路|r
.goto Dragonblight,78.58,48.20
.accept 12476 >>接任务: |cRXP_LOOT_血色十字军归来？|r
.goto Dragonblight,78.64,48.18
.target High Commander Halford Wyrmbane
.target Commander Lynore Windstryke
step
#completewith Iustus
.goto Dragonblight,84.7,37.1,0,0
>>杀死|cRXP_ENEMY_Onslaught步兵|r、|cRXD_ENEMY_On slaught童子军|r和|cRXP_ENEMY_ OnslaughtMasons|r。掠夺它们以获得|cRXT_Loot_救赎之路|r
.complete 12476,1 
.complete 12477,1 
.mob Onslaught Infantry
.mob Onslaught Scout
.mob Onslaught Mason
.mob Onslaught Commander Iustus
.mob Scarlet Highlord Daion
step
.goto Dragonblight,87.57,38.13
>>掠夺表顶部的|cRXP_PICK_Onslaught Map|r
.complete 12475,1 
step
#label Iustus
.goto Dragonblight,87.4,38.1
>>|cRXP_WARN_Travel up the Tower|r
>>杀死|cRXP_ENEMY_Commander Iustus|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
.complete 12442,1 
.mob Onslaught Commander Iustus
step
#label scarlet
.goto Dragonblight,87.39,35.30,70,0
.goto Dragonblight,84.58,37.12,70,0
.goto Dragonblight,84.21,40.99,70,0
.goto Dragonblight,86.37,40.31,70,0
.goto Dragonblight,87.85,40.92
>>杀死|cRXP_ENEMY_Onslaught步兵|r、|cRXD_ENEMY_On slaught童子军|r和|cRXP_ENEMY_ OnslaughtMasons|r。掠夺它们以获得|cRXT_Loot_救赎之路|r
.complete 12476,1 
.complete 12477,1 
.mob Onslaught Infantry
.mob Onslaught Scout
.mob Onslaught Mason
.mob Onslaught Commander Iustus
.mob Scarlet Highlord Daion
step << Shaman
#completewith next
.hs >>温特加尔德要塞的壁炉
.cooldown item,6948,>2
step << !Shaman
#requires scarlet
#completewith next
.goto Dragonblight,79.15,47.17,100 >>前往Wintergarde Keep
step
.goto Dragonblight,79.15,47.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_幻象师瑟里格|r
.turnin 12475 >>交任务: |cRXP_FRIENDLY_隐藏的秘密|r
.accept 12478 >>接任务: |cRXP_LOOT_霜之哀伤洞穴|r
.target Zelig the Visionary
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r and |cRXP_FRIENDLY_Windstryke|r
.turnin 12477 >>交任务: |cRXP_FRIENDLY_救赎之路|r
.goto Dragonblight,78.58,48.20
.turnin 12476 >>交任务: |cRXP_FRIENDLY_血色十字军归来？|r
.goto Dragonblight,78.64,48.18
.target High Commander Halford Wyrmbane
.target Commander Lynore Windstryke
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥瑞克·冯·泽尔迪格公爵|r
.turnin 12438 >>交任务: |cRXP_FRIENDLY_悬赏：克留格·碎誓者|r
.turnin 12441 >>交任务: |cRXP_FRIENDLY_通缉：高阶萨满祭司德金·血爪|r
.turnin 12442 >>交任务: |cRXP_FRIENDLY_悬赏：先锋军指挥官尤斯图斯|r
.isQuestComplete 12438
.isQuestComplete 12441
.isQuestComplete 12442
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥瑞克·冯·泽尔迪格公爵|r
.turnin 12438 >>交任务: |cRXP_FRIENDLY_悬赏：克留格·碎誓者|r
.turnin 12441 >>交任务: |cRXP_FRIENDLY_通缉：高阶萨满祭司德金·血爪|r
.isQuestComplete 12438
.isQuestComplete 12441
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥瑞克·冯·泽尔迪格公爵|r
.turnin 12438 >>交任务: |cRXP_FRIENDLY_悬赏：克留格·碎誓者|r
.turnin 12442 >>交任务: |cRXP_FRIENDLY_悬赏：先锋军指挥官尤斯图斯|r
.isQuestComplete 12438
.isQuestComplete 12442
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥瑞克·冯·泽尔迪格公爵|r
.turnin 12441 >>交任务: |cRXP_FRIENDLY_通缉：高阶萨满祭司德金·血爪|r
.turnin 12442 >>交任务: |cRXP_FRIENDLY_悬赏：先锋军指挥官尤斯图斯|r
.isQuestComplete 12441
.isQuestComplete 12442
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥瑞克·冯·泽尔迪格公爵|r
.turnin 12438 >>交任务: |cRXP_FRIENDLY_悬赏：克留格·碎誓者|r
.isQuestComplete 12438
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥瑞克·冯·泽尔迪格公爵|r
.turnin 12441 >>交任务: |cRXP_FRIENDLY_通缉：高阶萨满祭司德金·血爪|r
.isQuestComplete 12441
.target Highlord Leoric Von Zeldig
step
.goto Dragonblight,77.80,50.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥瑞克·冯·泽尔迪格公爵|r
.turnin 12442 >>交任务: |cRXP_FRIENDLY_悬赏：先锋军指挥官尤斯图斯|r
.isQuestComplete 12442
.target Highlord Leoric Von Zeldig
step
#completewith Audience
>>放弃你无法完成的精英任务
.abandon 12438 >>被通缉的遗弃者：克鲁格宣誓者
.abandon 12441 >>通缉弃兵：高萨满血锯
.abandon 12442 >>通缉犯：被杀指挥官伊乌斯托斯
step
#completewith Audience
.goto Dragonblight,74.8,51.6,50,0
.goto Dragonblight,60.36,51.59,100 >>前往Wyrmrest Temple
step
.goto Dragonblight,60.32,51.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟斯塔兹|r
.fp Wyrmrest >>获得Wyrmrest Temple飞行路线
.target Nethestrasz
step
#label Audience
.goto Dragonblight,57.91,54.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔里奥斯塔兹|r
.turnin 12119 >>交任务: |cRXP_FRIENDLY_拜见巨龙女王|r
.accept 12766 >>接任务: |cRXP_LOOT_与你们的大使相谈|r
.target Tariolstrasz
step
#completewith next
.goto Dragonblight,57.91,54.17
.gossipoption 93560 >>对话: |cRXP_FRIENDLY_塔里奥斯塔兹|r
.timer 19,Flight to top of Wyrmrest Temple
.skill coldweatherflying,1,1
.target Tariolstrasz
step
>>|cRXP_WARN_Atop Wyrmrest寺|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊萨里奥斯|r, |cRXP_FRIENDLY_克罗米|r, |cRXP_FRIENDLY_纳莉丝|r
.accept 12458 >>接任务: |cRXP_LOOT_鞭笞者的种子|r
.goto Dragonblight,59.60,54.47
.accept 12470 >>接任务: |cRXP_LOOT_永恒之龙的秘密|r
.goto Dragonblight,60.00,54.51
.accept 12447 >>接任务: |cRXP_LOOT_黑曜石巨龙圣地|r
.goto Dragonblight,60.07,54.20
.target Nalice
.target Chromie
.target Lord Itharius
step
#completewith next
.goto Dragonblight,59.51,53.33
.gossipoption 93074 >>对话: |cRXP_FRIENDLY_托拉斯塔萨|r
.timer 19,Flight to bottom of Wyrmrest Temple
.skill coldweatherflying,1,1
.target Torastrasza
step
#completewith next
.groundgoto Dragonblight,69.87,45.71,30,0
.goto Dragonblight,71.1,39.5,100 >>青铜龙之旅
step
.goto Dragonblight,71.1,39.5
>>|cRXP_WARN_使用|r|T133018:0|t[永恒沙漏]|cRXP_WARN_。保护它不受入射波的影响|r
.cast 49890
.timer 175,Hourglass of Eternity
.complete 12470,1 
.use 37923
.mob Infinite Assailant
.mob Infinite Destroyer
.mob Infinite Chrono-Magus
step
#completewith next
.goto Dragonblight,64.74,27.93,100 >>前往第7军团前线
step
.goto Dragonblight,64.74,27.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军团司令泰拉里安|r
.turnin 12466 >>交任务: |cRXP_FRIENDLY_追击冰雪风暴：第七军团前线|r
.accept 12467 >>接任务: |cRXP_LOOT_追击冰雪风暴：塞尔赞的护命匣|r
.target Legion Commander Tyralion
step
.goto Dragonblight,64.61,27.45
.gossipoption 93435 >>对话: |cRXP_FRIENDLY_“龙饵”|r, |cRXP_ENEMY_冰雪风暴|r
.skipgossip
.timer 45,Chasing Icestorm: Thel'zan's Phylactery RP
.isOnQuest 12467
.target "Wyrmbait"
step
#label Pest
.goto Dragonblight,64.60,27.46,8,0
.goto Dragonblight,64.47,26.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜埃尼|r
.accept 12142 >>接任务: |cRXP_LOOT_害虫控制|r
.target Duane
step
.goto Dragonblight,63.8,27.5
>>|cRXP_WARN_等待|cRXP_ENEMY_Icestorm|r被鱼叉钩住|r
>>杀死|cRXP_ENEMY_Icestrom|r。抢走掉在地上的|cRXP-Loot_Phylactery|r
.complete 12467,1 
.mob Icestorm
step
#requires Pest
.goto Dragonblight,70.20,32.71,0
.goto Dragonblight,70.20,32.71,60,0
.goto Dragonblight,65.30,42.60,60,0
.goto Dragonblight,70.20,32.71,60,0
.goto Dragonblight,65.30,42.60
>>杀死|cRXP_ENEMY_雪地狂热者|r、|cRXP_ENEMY_雪地门徒|r和|cRXX_ENEMY_Snowplane萨满|r
>>杀死|cRXP_ENEMY_Magnataur族长|r、|cRXD_ENEMY_MAGataur幼崽|r和|cRXP_ENEMY_麦格纳陶字母|r
.complete 12142,1 
.complete 12142,2 
.mob Snowplain Zealot
.mob Snowplain Shaman
.mob Snowplain Disciple
.mob Magnataur Patriarch
.mob Magnataur Youngling
.mob Magnataur Alpha
step
#completewith next
.goto Dragonblight,64.74,27.93,100 >>前往第7军团前线
step
.goto Dragonblight,64.47,26.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜埃尼|r
.turnin 12142 >>交任务: |cRXP_FRIENDLY_害虫控制|r
.accept 12143 >>接任务: |cRXP_LOOT_峡谷追击|r
.target Duane
step
#label Chilltusk
.goto Dragonblight,72.0,27.5,60,0
.goto Dragonblight,72.41,28.86
>>杀死|cRXP_ENEMY_Chilltusk|r。掠夺他的|T134229:0|t[|cRXP_Loot_徽章战号|r]
>>|cRXP_WARN_使用|T134229:0|t[|cRXP_LOOT_徽章战号|r]开始任务|r
>>|cRXP_ENEMY_峡谷内的Chilltusk|r|cRXP_WARN_trols|r
.complete 12143,1 
.collect 36855,1,12146
.accept 12146 >>接任务: |cRXP_LOOT_奇怪的符号|r
.use 36855
.unitscan Chilltusk
step
.goto Dragonblight,71.1,39.5
>>青铜龙之旅
>>|cRXP_WARN_使用|r|T133018:0|t[永恒沙漏]|cRXP_WARN_。保护它不受入射波的影响|r
.cast 49890
.timer 175,Hourglass of Eternity
.complete 12470,1 
.use 37923
.mob Infinite Assailant
.mob Infinite Destroyer
.mob Infinite Chrono-Magus
step
#completewith next
.goto Dragonblight,74.3,23.6,60 >>前往霜之丘
step
.goto Dragonblight,74.3,23.6,50,0
.goto Dragonblight,75.08,20.21
.use 37933 >>|cRXP_WARN_使用|r|T134334:0|t[Zelig's Scrying Orb]|cRXP_WARN_at |r|cRX_PICK_Frostmourne祭坛|r
>>|cRXP_WARN_等待RP|r
.cast 49817
.timer 110,Frostmourne Cavern RP
.complete 12478,1 
step << Druid wotlk
#completewith DruidTrain2
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <72,1
step << Druid wotlk
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48464 >>训练你的职业技能
.xp <72,1
.target Loganaar
step << Druid wotlk
#label DruidTrain2
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 53307 >>训练你的职业技能
.xp <74,1
.target Loganaar
step << DK wotlk
#completewith DKTrain2
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <72,1
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49940 >>训练你的职业技能
.xp <72,1
.target Amal'thazad
step << DK wotlk
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49904 >>训练你的职业技能
.xp <73,1
.target Amal'thazad
step << DK wotlk
#label DKTrain2
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49929 >>训练你的职业技能
.xp <74,1
.target Amal'thazad
step << Mage wotlk
#completewith MageTrain2
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <72,1
step << Mage wotlk
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42930 >>训练你的职业技能
.xp <72,1
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 43019 >>训练你的职业技能
.xp <73,1
.target Elsharin
.target Jennea Cannon
step << Mage wotlk
#label MageTrain2
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42939 >>训练你的职业技能
.xp <74,1
.target Elsharin
.target Jennea Cannon
step
#completewith next
.hs >>温特加尔德要塞的壁炉
step
.goto Dragonblight,78.55,48.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12467 >>交任务: |cRXP_FRIENDLY_追击冰雪风暴：塞尔赞的护命匣|r
.accept 12472 >>接任务: |cRXP_LOOT_终结|r
.target High Commander Halford Wyrmbane
step
.goto Dragonblight,79.15,47.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_幻象师瑟里格|r
.turnin 12478 >>交任务: |cRXP_FRIENDLY_霜之哀伤洞穴|r
.target Zelig the Visionary
step
#completewith next
.goto Dragonblight,81.9,50.7,20 >>进入温特加德陵墓
step
.goto Dragonblight,81.19,50.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军团司令尤瑞克|r
.turnin 12472 >>交任务: |cRXP_FRIENDLY_终结|r
.accept 12473 >>接任务: |cRXP_LOOT_结束和开始|r
.timer 115,Thel'zan Summon RP
.target Legion Commander Yorik
step
.goto Dragonblight,80.98,50.63
>>|cRXP_WARN_等待RP|r
>>杀死|cRXP_ENEMY_Thel'zan the Duskbringer|r
>>|cRXP_ENEMY_Thel'zan the Duskbringer|r |cRXP_WARN_hits hard, so let the |cRXP_FRIENDLY_7th Legion|r tank him|r
.complete 12473,1 
.mob Thel'zan the Duskbringer
step
#completewith next
.goto Dragonblight,82.06,50.73,20 >>退出Wintergarde陵墓
step
.goto Dragonblight,78.58,48.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halford|r
.turnin 12473 >>交任务: |cRXP_FRIENDLY_结束和开始|r
.accept 12474 >>接任务: |cRXP_LOOT_前往弗塔根要塞！|r
.target High Commander Halford Wyrmbane
step
#completewith DWard
.goto Dragonblight,77.01,49.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗尼·威尔斯|r
.fly Wyrmrest >>飞往温姆雷斯特神庙
.skill coldweatherflying,1,1
.skill riding,300,1
.target Rodney Wells
step
#completewith next
.goto Dragonblight,59.80,54.24,200 >>前往Wyrmrest Temple
step
#completewith DWard
.goto Dragonblight,59.80,54.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德米斯塔兹|r
>>|cRXP_FRIENDLY_Demestrasz|r|cRXP_WARN_i在寺庙的地面上|r
.home >>把你的炉石放在温姆雷斯特神庙
.target Demestrasz
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳莉耶尔·图布雷|r, |cRXP_FRIENDLY_奥拉斯塔萨|r
>>|cRXP_FRIENDLY_Lauriel|r|cRXP_WARN_an和|cRXP_FRIENDLY_Aurastrasza|r在寺庙的地面上|r
.turnin 12766 >>交任务: |cRXP_FRIENDLY_与你们的大使相谈|r
.accept 12460 >>接任务: |cRXP_LOOT_前往红玉巨龙圣地|r
.goto Dragonblight,60.00,55.09
.turnin 12146 >>交任务: |cRXP_FRIENDLY_奇怪的符号|r
.accept 12148 >>接任务: |cRXP_LOOT_独一无二|r
.goto Dragonblight,60.02,55.20
.target Lauriel Trueblade
.target Aurastrasza
step
.goto Dragonblight,53.7,60.0,60,0
.goto Dragonblight,50.8,59.1,60,0
.goto Dragonblight,49.1,57.8,60,0
.goto Dragonblight,53.7,60.0
>>杀死|cRXP_ENEMY_Bonesunder|r。掠夺他的|cRXX_Loot_Horn|r
>>|cRXP_WARN_避免他的|r|T136105:0|t[骨裂]|cRXP_WARN_在他开始铸造时移开|r
>>|cRXP_ENEMY_Bonesunder|r|cRXP_WARN_trols轻微|r
.complete 12148,1 
.unitscan Bonesunder
step
#completewith next
.goto Dragonblight,52.21,50.04,60 >>前往|cRXP_FRIENDLY_Ceristrasz|r
step
.goto Dragonblight,52.21,50.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞雷斯塔兹|r
.turnin 12460 >>交任务: |cRXP_FRIENDLY_前往红玉巨龙圣地|r
.accept 12416 >>接任务: |cRXP_LOOT_白热化的战斗|r
.target Ceristrasz
step
.goto Dragonblight,50.34,52.20,-1
.goto Dragonblight,52.34,46.66,-1
>>杀死|cRXP_ENEMY_冰冷食尸鬼攻击者|r、|cRXD_ENEMY_冰冷盖斯特攻击者|r和一名|cRXP_ENEMY_寒冷诅咒攻击者|r
>>|cRXP_WARN_暴徒一波接一波地来。它们可以在任务给予者的南方或北方繁殖，所以请注意你的聊天|r
>>|cRXP_FRIENDLY_Captain Iskandar|r |cRXP_WARN_will announce where they are coming from. You can follow him around if you get stuck|r
.complete 12416,1 
.complete 12416,2 
.complete 12416,3 
.mob Frigid Ghoul Attacker
.mob Frigid Geist Attacker
.mob Frigid Abomination Attacker
.target Captain Iskandar
step
.goto Dragonblight,52.21,50.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞雷斯塔兹|r
.turnin 12416 >>交任务: |cRXP_FRIENDLY_白热化的战斗|r
.accept 12417 >>接任务: |cRXP_LOOT_重归尘土|r
.target Ceristrasz
step
.goto Dragonblight,48.7,48.9,60,0
.goto Dragonblight,47.5,47.6,60,0
.goto Dragonblight,49.2,45.0,80,0
.goto Dragonblight,45.5,47.2,80,0
.goto Dragonblight,46.1,52.6,80,0
.goto Dragonblight,49.3,49.7
>>在地上抢劫|T133944:0|t[|cRXP_Loot_红宝石橡子|r]|cRXP_WARN_它们看起来像红色的小晶体|r
.use 37727 >>|cRXP_WARN_使用|r|T133944:0|t[|cRXP_LOOT_Ruby Acorns|r]|cRXP_WARN_on的尸体|r|cRXP _FRIENDLY_Ruby Keepers|r
.collect 37727,6,12417,1,-1 
.complete 12417,1 
.target Ruby Keeper
step
.goto Dragonblight,52.21,50.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞雷斯塔兹|r
.turnin 12417 >>交任务: |cRXP_FRIENDLY_重归尘土|r
.accept 12418 >>接任务: |cRXP_LOOT_烈焰之地|r
.target Ceristrasz
step
#completewith next
.goto Dragonblight,48.2,50.2,0
.goto Dragonblight,48.4,48.2,0
.goto Dragonblight,47.0,47.5,0
.goto Dragonblight,46.6,49.9,0
>>杀死|cRXP_ENEMY_冰冷亡灵法师|r
.complete 12418,1 
.mob Frigid Necromancer
step
.goto Dragonblight,47.89,49.64,30,0
.goto Dragonblight,47.64,48.97
>>|cRXP_WARN_走进巨大的树干|r
>>杀死|cRXP_ENEMY_Dahlia Suntouch|r。为她掠夺她|T133302:0|t[|cRXP-Loot_LRuby胸针|r]
>>|cRXP_WARN_使用|T133302:0|t[|cRXP_LOOT_Ruby胸针|r]开始任务|r
.complete 12418,2 
.collect 37833,1,12419
.accept 12419 >>接任务: |cRXP_LOOT_红玉巨龙圣地的命运|r
.use 37833
.mob Dahlia Suntouch
step
.goto Dragonblight,48.2,50.2,60,0
.goto Dragonblight,48.4,48.2,60,0
.goto Dragonblight,47.0,47.5,60,0
.goto Dragonblight,46.6,49.9
>>杀死|cRXP_ENEMY_冰冷亡灵法师|r
.complete 12418,1 
.mob Frigid Necromancer
step
.goto Dragonblight,52.21,50.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞雷斯塔兹|r
.turnin 12418 >>交任务: |cRXP_FRIENDLY_烈焰之地|r
.accept 12768 >>接任务: |cRXP_LOOT_龙眠神殿的执事|r
.target Ceristrasz
step
#completewith next
.goto Dragonblight,37.1,31.8,45 >>前往Neltharion的Maw
step
.goto Dragonblight,35.21,30.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟里纳尔|r
.turnin 12447 >>交任务: |cRXP_FRIENDLY_黑曜石巨龙圣地|r
.accept 12261 >>接任务: |cRXP_LOOT_无路可逃|r
.accept 12262 >>接任务: |cRXP_LOOT_驱逐天灾|r
.target Serinar
step
#completewith next
.goto Dragonblight,37.1,31.8,45 >>退出Neltharion的Maw
step
#completewith next
.goto Dragonblight,39.13,31.87,0
>>杀死|cRXP_ENEMY_燃烧深度的亡灵|r和|cRXX_ENEMY_Smoldering Skeletons|r
.complete 12262,1 
.complete 12262,2 
.mob Burning Depths Necrolyte
.mob Smoldering Skeleton
step
#label DWard
.goto Dragonblight,41.4,31.9
>>|cRXP_WARN_使用|r|T135824:0|t[破坏性病房]|cRXP_WARN_保护它不受入射波的影响|r
.complete 12261,1 
.cast 48711
.timer 80,Destructive Ward RP
.use 37445
step
.goto Dragonblight,39.52,31.21,70,0
.goto Dragonblight,37.87,33.74,70,0
.goto Dragonblight,40.00,32.18,70,0
.goto Dragonblight,37.16,31.75
>>杀死|cRXP_ENEMY_燃烧深度的亡灵|r和|cRXX_ENEMY_Smoldering Skeletons|r
.complete 12262,1 
.complete 12262,2 
.mob Burning Depths Necrolyte
.mob Smoldering Skeleton
step
#completewith next
.goto Dragonblight,37.1,31.8,45 >>前往内尔塔里昂Maw的|cRXP_FRIENDLY_Serinar|r
step
.goto Dragonblight,35.21,30.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟里纳尔|r
.turnin 12261 >>交任务: |cRXP_FRIENDLY_无路可逃|r
.turnin 12262 >>交任务: |cRXP_FRIENDLY_驱逐天灾|r
.accept 12263 >>接任务: |cRXP_LOOT_敌人的意图|r
.target Serinar
step << !Gnome/!Female
#completewith next
+|cRXP_WARN_当你开始向洞穴前进时，跳上侧面的|r“|cRXP_WARN_exit route|r”|cRXP-WARN_on。这将为你每次成功跳起来节省45秒|r
.link https://www.youtube.com/watch?v=xYKP3ECePVw >>|cRXP_WARN_单击此处|r
step
.goto Dragonblight,34.9,32.0,30,0
.goto Dragonblight,34.2,31.4,30,0
.goto Dragonblight,32.2,31.4,30,0
.goto Dragonblight,31.68,30.96
>>|cRXP_WARN_深入内尔塔里翁的Maw，近距离观察衰变中的|cRXP_ENEMY_Rothin|r。穿过熔岩而不是穿过中心以避免与暴徒作战|r
.complete 12263,1 
step
.goto Dragonblight,35.21,30.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟里纳尔|r
.turnin 12263 >>交任务: |cRXP_FRIENDLY_敌人的意图|r
.accept 12264 >>接任务: |cRXP_LOOT_扫荡诅咒教派|r
.accept 12265 >>接任务: |cRXP_LOOT_污染的能量|r
.target Serinar
step << !Gnome/!Female
#completewith next
+|cRXP_WARN_当你开始向洞穴前进时，跳上侧面的|r“|cRXP_WARN_exit route|r”|cRXP-WARN_on。这将为你每次成功跳起来节省45秒|r
.link https://www.youtube.com/watch?v=xYKP3ECePVw >>|cRXP_WARN_单击此处|r
step
.goto Dragonblight,32.8,30.5,50,0
.goto Dragonblight,33.7,28.7,50,0
.goto Dragonblight,31.9,28.1,50,0
.goto Dragonblight,30.7,29.0,50,0
.goto Dragonblight,31.8,30.6,50,0
.goto Dragonblight,34.1,26.2
>>杀死|cRXP_ENEMY_燃烧深度亡灵巫师|r，|cRXP_ENEMY_Smoldering Constructs|r和|cRXX_ENEMY_Smoldering Geists|r
>>单击地面上的|cRXP_PICK_亡灵符文|r
.complete 12264,1 
.complete 12264,2 
.complete 12264,3 
.complete 12265,1 
.mob Burning Depths Necromancer
.mob Smoldering Construct
.mob Smoldering Geist
step
.goto Dragonblight,35.21,30.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟里纳尔|r
.turnin 12264 >>交任务: |cRXP_FRIENDLY_扫荡诅咒教派|r
.turnin 12265 >>交任务: |cRXP_FRIENDLY_污染的能量|r
.accept 12267 >>接任务: |cRXP_LOOT_奈萨里奥的烈焰|r
.target Serinar
step << !Gnome/!Female
#completewith next
+|cRXP_WARN_当你开始向洞穴前进时，跳上侧面的|r“|cRXP_WARN_exit route|r”|cRXP-WARN_on。这将为你每次成功跳起来节省45秒|r
.link https://www.youtube.com/watch?v=xYKP3ECePVw >>|cRXP_WARN_单击此处|r
step
.goto Dragonblight,34.9,32.0,30,0
.goto Dragonblight,34.2,31.4,30,0
.goto Dragonblight,32.2,31.4,30,0
>>|cRXP_WARN_在衰变中使用|r|T134807:0|t[Neltharion's Flame]|cRXP_WARN_near|r|cRXP-ENEMY_Roth|r
>>杀死|cRXP_ENEMY_Rothin衰变|r
.complete 12267,1 
.goto Dragonblight,31.9,31.3
.complete 12267,2 
.goto Dragonblight,31.43,31.01
.use 37539
.mob Rothin the Decaying
step
.goto Dragonblight,35.21,30.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟里纳尔|r
.turnin 12267 >>交任务: |cRXP_FRIENDLY_奈萨里奥的烈焰|r
.accept 12266 >>接任务: |cRXP_LOOT_毁灭的故事|r
.target Serinar
step
#completewith next
.goto Dragonblight,35.13,31.65
.goto Dragonblight,42.26,29.65,50 >>|cRXP_WARN_跳到手的最大手指上。注销，然后重新登录|r
.link https://www.youtube.com/watch?v=0r54ZZ1o0W8 >>|cRXP_WARN_单击此处|r
step
.goto Dragonblight,39.51,25.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derek|r
.fp Fordragon Hold >>获取Fordragon Hold飞行路线
.target Derek Rammel
step
.goto Dragonblight,37.81,23.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
.turnin 12474 >>交任务: |cRXP_FRIENDLY_前往弗塔根要塞！|r
.accept 12495 >>接任务: |cRXP_LOOT_巨龙女王的指引|r
.target Highlord Bolvar Fordragon
step
#completewith next
.hs >>壁炉到温姆雷斯特神庙
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉斯塔萨|r, |cRXP_FRIENDLY_塔里奥斯塔兹|r
>>|cRXP_FRIENDLY_Aurastrasza|r|cRXP_WARN_and|cRXP_FRIENDLY_Tarialstrasz|r在寺庙的地面上|r
.turnin 12148 >>交任务: |cRXP_FRIENDLY_独一无二|r
.accept 12149 >>接任务: |cRXP_LOOT_强大的猛犸人|r
.goto Dragonblight,60.02,55.20
.turnin 12768 >>交任务: |cRXP_FRIENDLY_龙眠神殿的执事|r
.accept 12123 >>接任务: |cRXP_LOOT_通知女王|r
.goto Dragonblight,57.91,54.17
.target Aurastrasza
.target Tariolstrasz
step
#completewith next
.goto Dragonblight,57.91,54.17
.gossipoption 93560 >>对话: |cRXP_FRIENDLY_塔里奥斯塔兹|r
.timer 19,Flight to top of Wyrmrest Temple
.skill coldweatherflying,1,1
.target Tariolstrasz
step
>>|cRXP_WARN_Atop Wyrmrest寺|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳莉丝|r, |cRXP_FRIENDLY_克罗米|r, |cRXP_FRIENDLY_阿莱克丝塔萨|r
.turnin 12266 >>交任务: |cRXP_FRIENDLY_毁灭的故事|r
.goto Dragonblight,60.06,54.18
.turnin 12470 >>交任务: |cRXP_FRIENDLY_永恒之龙的秘密|r

.goto Dragonblight,59.99,54.50
.turnin 12495 >>交任务: |cRXP_FRIENDLY_巨龙女王的指引|r
.accept 12497 >>接任务: |cRXP_LOOT_迦拉克隆与天灾军团|r
.turnin 12123 >>交任务: |cRXP_FRIENDLY_通知女王|r
.accept 12435 >>接任务: |cRXP_LOOT_向德弗雷斯塔兹领主报到|r
.goto Dragonblight,59.83,54.66
.turnin 12419 >>交任务: |cRXP_FRIENDLY_红玉巨龙圣地的命运|r
.goto Dragonblight,59.79,54.70
.target Nalice
.target Chromie
.target Alexstrasza the Life-Binder
step
.goto Dragonblight,59.51,53.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托拉斯塔萨|r
.turnin 12497 >>交任务: |cRXP_FRIENDLY_迦拉克隆与天灾军团|r
.accept 12498 >>接任务: |cRXP_LOOT_红龙之翼|r
.target Torastrasza
step
#completewith Bloodfeast
+|cRXP_WARN_使用|r|T134124:0|t[龙女王的红宝石灯塔]|cRXP_WARN_从此点开始穿过龙之光的中心|r
.use 38302
.skill coldweatherflying,1,1
step
#sticky
#label lashers
.goto Dragonblight,64.87,73.49,0,0
>>杀死|cRXP_ENEMY_Emerald Lashers|r。掠夺他们的|cRXD_Loot_Seeds|r
.complete 12458,1 
.mob Emerald Lasher
step
.goto Dragonblight,63.7,76.0,60,0
.goto Dragonblight,62.5,74.5,60,0
.goto Dragonblight,62.8,72.1,60,0
.goto Dragonblight,64.9,72.3,60,0
.goto Dragonblight,64.7,76.4,60,0
.goto Dragonblight,62.8,72.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护园者尼瑟拉|r
>>|cRXP_FRIENDLY_Nisera|r|cRXP_WARN_上路|r
.accept 12454 >>接任务: |cRXP_LOOT_生命的循环|r
.unitscan Nishera the Garden Keeper
step
.goto Dragonblight,64.4,71.5,70,0
.goto Dragonblight,65.4,75.4,70,0
.goto Dragonblight,62.2,75.4
>>杀死|cRXP_ENEMY_翡翠天爪|r
.complete 12454,1 
.mob Emerald Skytalon
step
.goto Dragonblight,63.7,76.0,60,0
.goto Dragonblight,62.5,74.5,60,0
.goto Dragonblight,62.8,72.1,60,0
.goto Dragonblight,64.9,72.3,60,0
.goto Dragonblight,64.7,76.4,60,0
.goto Dragonblight,62.8,72.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护园者尼瑟拉|r
>>|cRXP_FRIENDLY_Nisera|r|cRXP_WARN_上路|r
.turnin 12454 >>交任务: |cRXP_FRIENDLY_生命的循环|r
.accept 12456 >>接任务: |cRXP_LOOT_奥雷托斯的羽毛|r
.unitscan Nishera the Garden Keeper
step
.goto Dragonblight,64.7,77.0
.use 37881 >>|cRXP_WARN_使用|r|T136087:0|t[Skytalon Molts]|cRXP_WARN_to将栖息在你面前山丘上的绿色守护者|r打倒|r
>>杀死|cRXP_ENEMY_Alystros the Verdant Keeper|r。为|cRXX_Loot_Plume|r掠夺它
>>|cRXP_WARN_这个任务非常困难。如果需要，可以为它找一个小组。如果你找不到团体或单人，请跳过此步骤|r
.complete 12456,1 
.mob Alystros the Verdant Keeper
step
.goto Dragonblight,63.7,76.0,60,0
.goto Dragonblight,62.5,74.5,60,0
.goto Dragonblight,62.8,72.1,60,0
.goto Dragonblight,64.9,72.3,60,0
.goto Dragonblight,64.7,76.4,60,0
.goto Dragonblight,62.8,72.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护园者尼瑟拉|r
>>|cRXP_FRIENDLY_Nisera|r|cRXP_WARN_上路|r
.turnin 12456 >>交任务: |cRXP_FRIENDLY_奥雷托斯的羽毛|r
.unitscan Nishera the Garden Keeper
.isQuestComplete 12456
step
.abandon 12456 >>放弃芦荟的羽毛
step
#requires lashers
#completewith next
.groundgoto Dragonblight,66.42,73.52,30,0
.groundgoto Dragonblight,68.40,67.76,30,0
.goto Dragonblight,65.92,70.48,55 >>退出翡翠龙之林
step
#label Bloodfeast
.goto Dragonblight,65.92,70.48,20,0
.goto Dragonblight,67.40,70.74,20,0
.goto Dragonblight,65.92,70.48
>>杀死|cRXP_ENEMY_血腥盛宴|r
.complete 12149,2 
.unitscan Bloodfeast
step
#completewith Abbendis
.vehicle >>|cRXP_WARN_使用|r|T134124:0|t[龙女王的红宝石灯塔]|cRXP_WARN_直接飞往阿本迪斯教堂，避免与|r|cRXP-ENEMY_Onslaught交战|r
.use 38302
.skill coldweatherflying,1,1
step
#completewith next
.goto Dragonblight,70.90,75.98,35 >>走进新哈特格伦教堂
.skill coldweatherflying,<1,1
step
#label Abbendis
.goto Dragonblight,71.08,77.84
>>杀死|cRXP_ENEMY_High General Abbendis|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为她找一个小组。如果你找不到一个团体或独自一人，请跳过这一步|r
.complete 12464,1 
.mob High General Abbendis
step
#completewith next
.goto Dragonblight,66.0,51.5,80 >>前往龙灯中心的黎明之镜
.skill coldweatherflying,<1,1
step
.goto Dragonblight,66.0,51.5,70,0
.goto Dragonblight,67.9,50.1,70,0
.goto Dragonblight,69.2,51.4
>>杀死|cRXP_ENEMY_Iceshafter|r
>>|cRXP_WARN_当他开始投掷碎片时，避开他的|r|T135851:0|t[投掷碎片]|cRXP_WARN_|r
>>|cRXP_ENEMY_冰碎|r|cRXP_WARN_漫游结冰湖面的北侧|r
.complete 12149,1 
.unitscan Iceshatter
.skill coldweatherflying,<1,1
step
#completewith next
.goto Dragonblight,68.85,72.52,25,0
.goto Dragonblight,69.09,71.68,15,0
.goto Dragonblight,68.70,71.34
.cast 50426 >>从墙上的缝隙退出New Hearthglen
.vehicle >>|cRXP_WARN_直接移动到航路点所在的位置，然后使用|r|T134124:0|t[Ruby Beacon of the Dragon Queen]|cRXP_WARN_to挂载|r
.use 38302
.skill coldweatherflying,1,1
step
.goto Dragonblight,66.0,51.5,70,0
.goto Dragonblight,67.9,50.1,70,0
.goto Dragonblight,69.2,51.4
>>|cRXP_WARN_当您到达|r|cRXP_ENEMY_Iceshash时，请卸载|cRXP_FRIENDLY_Wyrmrest Vanquisher|r|r
>>杀死|cRXP_ENEMY_Iceshafter|r
>>|cRXP_WARN_当他开始投掷碎片时，避开他的|r|T135851:0|t[投掷碎片]|cRXP_WARN_|r
>>|cRXP_ENEMY_冰碎|r|cRXP_WARN_漫游结冰湖面的北侧|r
.complete 12149,1 
.unitscan Iceshatter
.skill coldweatherflying,1,1
step
#completewith Shredder
+|cRXP_WARN_从这一点开始，您可以连续使用|r|T134124:0|t[龙女王的红宝石灯塔]|cRXP_WARN_to飞越龙之光的中心|r
.use 38302
.skill coldweatherflying,1,1
step << skip
.goto Dragonblight,71.1,39.5
>>骑马前往青铜龙之剑。在你的袋子里放上永恒沙漏，然后保护它免受海浪的侵袭。目标应在2米55秒后完成
>>由于某些原因，这个任务与前一个任务的功能不同，所以你不能像以前那样干酪/跳过它
.complete 13343,1 
.use 44450
step
.goto Dragonblight,68.3,43.1,70,0
.goto Dragonblight,67.5,39.5,70,0
.goto Dragonblight,68.6,36.4
>>杀死|cRXP_ENEMY_Drakegore|r
>>|cRXP_ENEMY_Drakegore|r|cRXP_WARN_trols轻微|r
.complete 12149,3 
.unitscan Drakegore
step
#completewith next
.hs >>壁炉到温姆雷斯特神庙
.cooldown item,6948,>2
step << skip
>>返回寺庙顶部
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.turnin 13343 >>交任务: |cRXP_FRIENDLY_永恒之龙的秘密，再来一次|r
.goto Dragonblight,59.99,54.50
.target Chromie
step
.goto Dragonblight,60.02,55.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉斯塔萨|r
>>|cRXP_FRIENDLY_Aurastrasza|r|cRXP_WARN_i在寺庙的地面上|r
.turnin 12149 >>交任务: |cRXP_FRIENDLY_强大的猛犸人|r
.accept 12150 >>接任务: |cRXP_LOOT_隐居的铭语师|r
.target Aurastrasza
step
.goto Dragonblight,73.27,50.55
>>攻击|cRXP_ENEMY_Dregmar Runebrand|r。|cRXP-WARN_He将在20%生命值时提交|r
>>|cRXP_WARN_离开|r|T135826:0|t[爆炸符文]|cRXP_WARN_你下面的地方。它们在4秒后引爆，造成巨大的火灾伤害|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
.complete 12150,1 
.mob Dregmar Runebrand
step
#completewith next
.goto Dragonblight,64.47,26.36,100 >>前往第7军团前线
step
.goto Dragonblight,64.47,26.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜埃尼|r
.turnin 12143 >>交任务: |cRXP_FRIENDLY_峡谷追击|r
.target Duane
step << skip
#sticky
.goto Dragonblight,58.02,39.16,0,0
>>寻找一个在龙荒周围飞行的|cRXP_ENEMY_Frost Wyrm|r，然后在上面使用|T134339:0|t[自然之怒的种子]并杀死它。如果你在拉动它们时遇到困难，请使用|T134124:0|t[龙女王的红宝石灯塔]召唤一个飞行坐骑。
.complete 12459,1 
.use 37887
.use 38302
.isOnQuest 12459
.unitscan Reanimated Frost Wyrm
.mob Weakened Reanimated Frost Wyrm
step << skip
#questguide
.goto Dragonblight,48.44,24.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Goblin|r corpse on the ground
.accept 12469 >>接任务: |cRXP_LOOT_退回发件人|r
.target Nozzlerust Supply Runner
step
#completewith NozzleP
.goto Dragonblight,54.46,23.60,100 >>至喷嘴防尘柱的行程
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔弗|r, |cRXP_FRIENDLY_希弗里克斯|r, |cRXP_FRIENDLY_辛克|r
>>|cRXP_FRIENDLY_Narf|r|cRXP_WARN_trols轻微|r
.accept 12043 >>接任务: |cRXP_LOOT_诺兹拉斯的防御|r
.goto Dragonblight,54.46,23.60
.accept 12045 >>接任务: |cRXP_LOOT_刨冰|r
.goto Dragonblight,54.70,23.25
.turnin 12469 >>交任务: |cRXP_FRIENDLY_退回发件人|r
.accept 12044 >>接任务: |cRXP_LOOT_囤积矿石|r
.goto Dragonblight,55.02,23.42
.isOnQuest 12469
.target Narf
.target Zivlix
.target Xink
step
#label NozzleP
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔弗|r, |cRXP_FRIENDLY_希弗里克斯|r, |cRXP_FRIENDLY_辛克|r
>>|cRXP_FRIENDLY_Narf|r|cRXP_WARN_trols轻微|r
.accept 12043 >>接任务: |cRXP_LOOT_诺兹拉斯的防御|r
.goto Dragonblight,54.46,23.60
.accept 12045 >>接任务: |cRXP_LOOT_刨冰|r
.goto Dragonblight,54.70,23.25
.accept 12044 >>接任务: |cRXP_LOOT_囤积矿石|r
.goto Dragonblight,55.02,23.42
.target Narf
.target Zivlix
.target Xink
step
.goto Dragonblight,53.6,20.3,70,0
.goto Dragonblight,57.3,16.8,70,0
.goto Dragonblight,55.0,18.8,70,0
.goto Dragonblight,47.2,18.6
>>杀死|cRXP_ENEMY_Crystally Ice Elements|r。掠夺它们的|cRXP_Loot_Shard Clusters|r
.complete 12045,1 
.mob Crystalline Ice Elemental
step
#completewith next
.goto Dragonblight,54.46,31.18,100 >>前往龙的荒原
step
.goto Dragonblight,54.46,31.18
>>|cRXP_WARN_使用|r|T134124:0|t[龙王的红宝石灯塔]|cRXP_WARN_并安装|r|cRXP-FRIENDLY_Wyrmrest Vanquisher|r
>>|cRXP_WARN_铸造|r|T135808:0|t[完成火球]（2）|cRXP_WARN_to kill|r|cRXT_ENEMY_Thiassi the Lightning Bringer|r
>>下马后杀死|cRXP_ENEMY_大亡灵安条克|r。偷走掉在地上的安条克的镰刀
.complete 12498,2 
.use 38302
.mob Thiassi the Lightning Bringer
.mob Grand Necrolord Antiok
step
.goto Dragonblight,55.78,34.34
>>|cRXP_WARN_再次使用|r|T134124:0|t[Ruby Beacon of the Dragon Queen]|cRXP_WARN_to安装|cRXP-FRIENDLY_Wyrmrest Vanquisher|r|r
>>|cRXP_WARN_施法|r|T135808:0|t[燃烧火球]（2）|cRXP_WARN_to kill|r|cRXP-ENEMY_废物清除剂|r
>>|cRXP_WARN_施法|r|T132278:0|t[吞噬食尸鬼]（3）|cRXP_WARN_当在近战范围内时|r|cRXP-ENEMY_废物清道夫|r|cRXP_WARN_恢复生命值和法力|r
.complete 12498,1 
.use 38302
.mob Wastes Scavenger
step
.goto Dragonblight,56.22,27.17,60,0
.goto Dragonblight,59.04,31.16,60,0
.goto Dragonblight,59.26,31.84,60,0
.goto Dragonblight,56.22,27.17,60,0
.goto Dragonblight,59.04,31.16,60,0
.goto Dragonblight,59.26,31.84
>>|cRXP_WARN_卸下|r|cRXP_FRIENDLY_Wyrmrest Vanquisher|r
>>杀死|cRXP_ENEMY_废物任务主管|r和|cRXX_ENEMY_废物挖掘者|r
>>在地面上掠夺|cRXP_Loot_复合矿|r
.complete 12043,1 
.complete 12043,2 
.complete 12044,1 
.mob Wastes Taskmaster
.mob Wastes Digger
step
#completewith next
.goto Dragonblight,55.0,23.9,100 >>至喷嘴防尘柱的行程
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳尔弗|r, |cRXP_FRIENDLY_希弗里克斯|r, |cRXP_FRIENDLY_辛克|r
>>|cRXP_FRIENDLY_Narf|r|cRXP_WARN_trols轻微|r
.turnin 12043 >>交任务: |cRXP_FRIENDLY_诺兹拉斯的防御|r
.goto Dragonblight,55.0,23.9,20,0
.goto Dragonblight,54.50,23.70
.turnin 12045 >>交任务: |cRXP_FRIENDLY_刨冰|r
.accept 12046 >>接任务: |cRXP_LOOT_柔软的包装|r
.goto Dragonblight,54.70,23.25
.turnin 12044 >>交任务: |cRXP_FRIENDLY_囤积矿石|r
.goto Dragonblight,55.02,23.42
.target Narf
.target Zivlix
.target Xink
step
.goto Dragonblight,53.9,26.2,70,0
.goto Dragonblight,51.1,26.3,70,0
.goto Dragonblight,51.1,24.0,70,0
.goto Dragonblight,53.9,26.2
>>杀死|cRXP_ENEMY_Jormungar隧道兵|r和|cRXP_ENEMY_Dragonbone秃鹰|r。掠夺它们的|cRXD_Loot_Hides|r
.complete 12046,1 
.mob Dragonbone Condor
.mob Jormungar Tunneler
step
#completewith next
.goto Dragonblight,54.70,23.25,100 >>至喷嘴防尘柱的行程
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希弗里克斯|r, |cRXP_FRIENDLY_辛克|r
.turnin 12046 >>交任务: |cRXP_FRIENDLY_柔软的包装|r
.accept 12047 >>接任务: |cRXP_LOOT_不会融化的东西|r
.goto Dragonblight,54.70,23.25
.accept 12049 >>接任务: |cRXP_LOOT_难以下咽|r
.goto Dragonblight,55.02,23.42
.target Zivlix
.target Xink
step
#sticky
#label bonechunks
.goto Dragonblight,57.3,24.1,70,0
.goto Dragonblight,59.6,26.0,70,0
.goto Dragonblight,60.7,28.1,70,0
.goto Dragonblight,62.9,29.3,70,0
.goto Dragonblight,53.0,25.7,70,0
.goto Dragonblight,51.3,26.5,70,0
.goto Dragonblight,57.3,24.1,70,0
.goto Dragonblight,59.6,26.0,70,0
.goto Dragonblight,60.7,28.1
>>将|cRXP_Loot_Splined Bone Chunks|r掠夺到地面上
>>|cRXP_WARN_它们是在《龙荒》中巨大的龙骨周围发现的|r
.complete 12047,1 
step
.goto Dragonblight,58.4,23.2
>>|cRXP_WARN_攻击一个|cRXP_ENEMY_Hulking Jormungar|r至80%生命值以削弱它。会弹出一条黄色消息，上面写着“Hulking Jordan步履蹒跚…”|r
>>|cRXP_WARN_一旦削弱，使用|r|T133715:0|t|cRXP_WEARN_on the |cRXP_ENEMY_Hulking Jormungar|r将其炸毁|r
>>之后将|cRXP_Loot_烤约旦肉|r洗劫一空
.use 36732
.complete 12049,1 
.mob Hulking Jormungar
step
#requires bonechunks
#completewith next
.goto Dragonblight,54.70,23.25,100 >>至喷嘴防尘柱的行程
step
#label Shredder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希弗里克斯|r, |cRXP_FRIENDLY_辛克|r, |cRXP_FRIENDLY_纳尔弗|r
>>|cRXP_FRIENDLY_Narf|r|cRXP_WARN_trols轻微|r
.turnin 12047 >>交任务: |cRXP_FRIENDLY_不会融化的东西|r
.goto Dragonblight,54.70,23.25
.turnin 12049 >>交任务: |cRXP_FRIENDLY_难以下咽|r
.accept 12050 >>接任务: |cRXP_LOOT_抢木材|r
.goto Dragonblight,55.02,23.42
.accept 12052 >>接任务: |cRXP_LOOT_该死的鹰身人！|r
.goto Dragonblight,55.0,23.9,20,0
.goto Dragonblight,54.50,23.70
.target Narf
.target Zivlix
.target Xink
step
#label harpies
>>|cRXP_WARN_使用|r|T133015:0|t[Xink的碎纸机控制装置]|cRXP_WARN_to控制|r|cRXP-FRIENDLY_Xink的碎纸机|r
>>|cRXP_WARN_铸|r|T132407:0|t[扭刃]（1）|cRXP_WARN_and|r|T134427:0|t|发射锯片]（2）|cRX P_WARN_to kill|cRX _ENEMY_Coldwind Harpies|r和Coldwind的|r|cRX ENEMY_Mistress|r
>>|cRXP_WARN_施法|r|T136222:0|t[Hustle]（3）|cRXP_WARN_to移动得更快|r
>>|cRXP_WARN_铸造|r|T135769:0|t[紧急修理包]（4）|cRXP_WARN_to heal|r|cRXP-FRIENDLY_Xink碎纸机|r
>>|cRXP_WARN_铸造|r|T135437:0|t[收集木材]（6）|cRXP_WARN_on |cRX_PICK_Coldwind Trees|r以收获|r|cRXP_LOOT_Coldwind木材|r
>>|cRXP_WARN_你也可以杀死|cRXP_ENEMY_Coldwind Harpies|r，而不在|r|cRXP-FRIENDLY_Xink的碎纸机内|r
.complete 12052,1 
.goto Dragonblight,45.8,12.5,70,0
.goto Dragonblight,44.6,7.8,70,0
.goto Dragonblight,46.6,10.5
.complete 12052,2 
.goto Dragonblight,47.3,18.6,70,0
.goto Dragonblight,52.8,19.1
.complete 12050,1 
.goto Dragonblight,47.3,18.6,70,0
.goto Dragonblight,52.8,19.1
.use 36734
.use 38302
.unitscan Mistress of the Coldwind
.mob Coldwind Waste Huntress
.mob Coldwind Witch
step
#completewith StiffN
+|cRXP_WARN_从这一点开始，您可以连续使用|r|T134124:0|t[龙女王的红宝石灯塔]|cRXP_WARN_to飞越龙之光的中心|r
.use 38302
.skill coldweatherflying,1,1
step
#requires harpies
#completewith next
.goto Dragonblight,55.02,23.42,100 >>至喷嘴防尘柱的行程
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛克|r, |cRXP_FRIENDLY_纳尔弗|r
>>|cRXP_FRIENDLY_Narf|r|cRXP_WARN_trols轻微|r
.turnin 12050 >>交任务: |cRXP_FRIENDLY_抢木材|r
.goto Dragonblight,55.02,23.42
.turnin 12052 >>交任务: |cRXP_FRIENDLY_该死的鹰身人！|r
.accept 12112 >>接任务: |cRXP_LOOT_艰难的沟通|r
.goto Dragonblight,55.0,23.9,20,0
.goto Dragonblight,54.50,23.70
.target Narf
.target Xink
step
#completewith next
.goto Dragonblight,59.40,18.19,100 >>前往水晶Vice
>>|cRXP_WARN_穿过峡谷往下走|r
step
#label StiffN
.goto Dragonblight,59.40,18.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_佐特|r
.turnin 12112 >>交任务: |cRXP_FRIENDLY_艰难的沟通|r
.accept 12075 >>接任务: |cRXP_LOOT_采集样本|r
.target Zort
step
#completewith next
.goto Dragonblight,59.8,15.5,60,0
.goto Dragonblight,57.3,12.4,60,0
.goto Dragonblight,56.13,11.90,60 >>进入冰心洞穴
step
.goto Dragonblight,56.13,11.90
>>掠夺|cRXP_FRIENDLY_Ravaged Crystal Ice Giant |r以获取|cRXP_Loot_ Rockmeal样品|r
.complete 12075,1 
.target Ravaged Crystalline Ice Giant
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_佐特|r
.goto Dragonblight,59.40,18.19
.turnin 12075 >>交任务: |cRXP_FRIENDLY_采集样本|r
.accept 12076 >>接任务: |cRXP_LOOT_恶心的生意|r
.target Zort
step
.goto Dragonblight,58.97,17.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坚不可摧的科查尔|r
.accept 12079 >>接任务: |cRXP_LOOT_践踏大地|r
.target Ko'char the Unbreakable
step
.goto Dragonblight,60.24,16.51
>>|cRXP_WARN_Agro an|cRXP_ENEMY_Ice Heart Jormungar|r。将它们坦克化，直到你受到它们的影响|r|T136007:0|t[腐蚀性尖刺]|cRXP-WARN_debuff|r
>>|cRXP_WARN_一旦您有了|r|T136007:0|t[腐蚀性尖刺]|cRXP_WARN_debuff，请使用|r|T134436:0|t[Zort’s Scraper]|cRX P_WARN_to收集它。重复两次|r
.complete 12076,1 
.use 36775
.mob Ice Heart Jormungar Spawn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_佐特|r, |cRXP_FRIENDLY_坚不可摧的科查尔|r, |cRXP_FRIENDLY_佐特|r
.turnin 12076 >>交任务: |cRXP_FRIENDLY_恶心的生意|r
.accept 12077 >>接任务: |cRXP_LOOT_主动示好|r
.goto Dragonblight,59.40,18.19
.turnin 12077 >>交任务: |cRXP_FRIENDLY_主动示好|r
.accept 12080 >>接任务: |cRXP_LOOT_冰虫之母|r
.goto Dragonblight,58.97,17.82
.accept 12078 >>接任务: |cRXP_LOOT_抓虫子|r
.goto Dragonblight,59.40,18.19
.target Zort
.target Ko'char the Unbreakable
step
#completewith next
.goto Dragonblight,59.8,15.5,60,0
.goto Dragonblight,57.18,12.17,100 >>进入冰心洞穴
step
#completewith next
.goto Dragonblight,53.8,11.4,60,0
.goto Dragonblight,52.7,17.3,60 >>前往洞穴尽头的|cRXP_ENEMY_Rattlebore|r
step
#sticky
#label JormungarCave
.goto Crystalsong Forest,31.97,75.86,0,0
>>杀死|cRXP_ENEMY_Ice Heart Jormungar喂食器|r
>>|cRXP_WARN_使用|r|T132762:0|t[Strurdy Crates]|cRXP_WARN_on|cRXX_ENEMY_Ice Heart Jormungar Spawns|r捕获它们|r之后在地上掠夺|cRXP_Loot_捕获的Jormungar繁殖|r
.complete 12079,1 
.complete 12078,1 
.use 36771
.mob Ice Heart Jormungar Feeder
.mob Ice Heart Jormungar Spawn
step
.goto Dragonblight,50.68,17.79
>>|cRXP_WARN_Use|r|T134873:0|t[Zort的保护药剂]|cRXP_WARN_to保护自己免受|r|T136007:0|t[腐蚀性尖刺]的伤害
>>杀死|cRXP_ENEMY_Rattlebore|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
.complete 12080,1 
.mob Rattlebore
.use 36770
step
#requires JormungarCave
#completewith next
.goto Dragonblight,49.86,16.61,-1
.goto Dragonblight,46.39,21.56,-1
>>|cRXP_WARN_跳到其中一块|cRXP_PICK_Large Blue Rocks|r上。注销，然后返回|r
.vehicle >>|cRXP_WARN_再次使用|r|T134124:0|t[龙王的红宝石灯塔]|cRXP_WARN_登上|cRXP-FRIENDLY_Wyrmrest Vanquisher|r飞往|cRXP_FRIENDLY_Zort|r和|r|cRXP_FRIENDLY _Ko'char|r
.link https://www.youtube.com/watch?v=oRQQMuodz4A >>|cRXP_WARN_单击此处|r
.use 38302
step
#requires JormungarCave
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_佐特|r, |cRXP_FRIENDLY_坚不可摧的科查尔|r
.turnin 12078 >>交任务: |cRXP_FRIENDLY_抓虫子|r
.goto Dragonblight,59.40,18.19
.turnin 12079 >>交任务: |cRXP_FRIENDLY_践踏大地|r
.turnin -12080 >>交任务: |cRXP_FRIENDLY_冰虫之母|r
.goto Dragonblight,58.97,17.82
.target Zort
.target Ko'char the Unbreakable
step
#sticky
#label RBWorm
.abandon 12080 >>放弃真正的大蠕虫
step << Druid
#completewith DruidTrain3
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <74,1
step << Druid
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 53307 >>训练你的职业技能
.xp <74,1
.target Loganaar
step << Druid
#label DruidTrain3
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48440 >>训练你的职业技能
.xp <75,1
.target Loganaar
step << DK
#completewith DKTrain3
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <73,1
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49904 >>训练你的职业技能
.xp <73,1
.target Amal'thazad
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49929 >>训练你的职业技能
.xp <74,1
.target Amal'thazad
step << DK
#label DKTrain3
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49923 >>训练你的职业技能
.xp <75,1
.target Amal'thazad
step << Druid/DK
#completewith Runemaster
.hs >>壁炉到温姆雷斯特神庙
.cooldown item,6948,>2
step
#completewith Runemaster
.goto Dragonblight,60.02,55.20,100 >>前往Wyrmrest Temple
step
#completewith wings
+|cRXP_WARN_从这一点开始，您可以使用包中的|r|T134124:0|t[Ruby Beacon of the Dragon Queen]|cRXP_WARN_in来召唤一座飞行坐骑穿过龙之光的中心|r
.use 38302
.skill coldweatherflying,1,1
step
#label Runemaster
.goto Dragonblight,60.02,55.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉斯塔萨|r
>>|cRXP_FRIENDLY_Aurastrasza|r|cRXP_WARN_i在寺庙的地面上|r
.turnin 12150 >>交任务: |cRXP_FRIENDLY_隐居的铭语师|r
.accept 12151 >>接任务: |cRXP_LOOT_暴虐的酋长|r
.target Aurastrasza
step
#completewith next
.goto Dragonblight,57.2,76.0,100 >>前往Azure龙之林以南
step
#requires RBWorm
.goto Dragonblight,57.2,76.0
>>|cRXP_WARN_使用|r|T134229:0|t[纹章战号]|cRXP_WARN_to召唤|r|cRXP-ENEMY_Grom'霹雳弹|r
>>杀死|cRXP_ENEMY_Grom'tar the Thunderringer |r。掠夺他的|cRXX_Loot_Head |r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
.complete 12151,1 
.use 36864
.mob Grom'thar the Thunderbringer
step
#completewith next
.goto Dragonblight,60.02,55.20,100 >>前往Wyrmrest Temple
step
.goto Dragonblight,60.02,55.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉斯塔萨|r
>>|cRXP_FRIENDLY_Aurastrasza|r|cRXP_WARN_i在寺庙的地面上|r
.turnin 12151 >>交任务: |cRXP_FRIENDLY_暴虐的酋长|r
.target Aurastrasza
step
#label wings
.use 38302 >>|cRXP_WARN_再次使用|r|T134124:0|t[Ruby Beacon of the Dragon Queen]|cRXP_WARN_to登上|cRXP_FRIENDLY_Wyrmrest Vanquisher|r，飞到Wyrmrest Temple的顶部|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿莱克丝塔萨|r, |cRXP_FRIENDLY_伊萨里奥斯|r
.turnin 12498 >>交任务: |cRXP_FRIENDLY_红龙之翼|r
.accept 12499 >>接任务: |cRXP_LOOT_返回安加萨|r
.goto Dragonblight,59.83,54.66
.turnin 12458 >>交任务: |cRXP_FRIENDLY_鞭笞者的种子|r

.goto Dragonblight,59.60,54.46
.target Alexstrasza the Life-Binder
.target Lord Itharius
step
#completewith next
.goto Dragonblight,59.51,53.33
.gossipoption 93073 >>对话: |cRXP_FRIENDLY_托拉斯塔萨|r
.timer 25,Flight to Devrestrasz
.skill coldweatherflying,1,1
.isOnQuest 12435
.target Torastrasza
step
.goto Dragonblight,59.24,54.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrestrasz|r
>>|cRXP_FRIENDLY_Devrestrasz|r|cRXP_WARN_i在寺庙的中间层|r
.turnin 12435 >>交任务: |cRXP_FRIENDLY_向德弗雷斯塔兹领主报到|r
.daily 12372 >>接任务: |cRXP_LOOT_保卫龙眠神殿|r
.target Lord Devrestrasz
step
.goto Dragonblight,58.35,55.22,-1
.goto Dragonblight,58.28,53.73,-1
>>|cRXP_WARN_在与|r|cRXP_FRIENDLY_Wyrmrest Defender交谈之前先卸载|r
.gossipoption 93574 >>装载|cRXP_FRIENDLY_Wyrmrest Defender |r
>>|cRXP_FRIENDLY_Wyrmrest防御者|r|cRXP_WARN_are在神庙的中间层|r
.isOnQuest 12372
.target Wyrmrest Defender
step
#completewith next
>>|cRXP_WARN_施法|r|T135789:0|t[破坏Azure龙之林的稳定]（5）|cRXP_WARN_在地面附近的|cRX_PICK_Skybeam|r上以破坏Azure龙的稳定|r
.complete 12372,3 
.goto Dragonblight,55.34,66.20
.isOnQuest 12372
step
>>|cRXP_WARN_铸造|r|T135812:0|t[火焰之息]（1）|cRXP_WARN_and|r|T135817:0|t[自焚]（2）|cRX P_WARN_to kill|cRX _ENEMY_Azure龙|r和|r|cRX|r
>>|cRXP_WARN_铸造|r|T135953:0|t[续订]（3）|cRXP_WARN_to治疗您的|r|cRXP-FRIENDLY_Wyrmrest Defender|r
>>|cRXP_WARN_施法|r|T135788:0|t[灼热速度]（4）|cRXP_WARN_on冷却以移动得更快|r
>>|cRXP_WARN_当暴徒死亡时，确保你在离他们100码以内，否则你不会得到赞扬|r
.complete 12372,1 
.goto Dragonblight,55.2,54.3,100,0
.goto Dragonblight,61.4,61.1,100,0
.goto Dragonblight,55.2,66.7
.complete 12372,2 
.goto Dragonblight,55.2,54.3,100,0
.goto Dragonblight,61.4,61.1,100,0
.goto Dragonblight,55.2,66.7
.isOnQuest 12372
.mob Azure Dragon
.mob Azure Drake
.skipgossip
step
>>|cRXP_WARN_施法|r|T135789:0|t[破坏Azure龙之林的稳定]（5）|cRXP_WARN_在地面附近的|cRX_PICK_Skybeam|r上以破坏Azure龙的稳定|r
.complete 12372,3 
.goto Dragonblight,55.34,66.20
.isOnQuest 12372
step
>>|cRXP_WARN_铸造|r|T135812:0|t[火焰之息]（1）|cRXP_WARN_and|r|T135817:0|t[自焚]（2）|cRX P_WARN_to kill|cRX _ENEMY_Azure龙|r和|r|cRX|r
>>|cRXP_WARN_铸造|r|T135953:0|t[续订]（3）|cRXP_WARN_to治疗您的|r|cRXP-FRIENDLY_Wyrmrest Defender|r
>>|cRXP_WARN_施法|r|T135788:0|t[灼热速度]（4）|cRXP_WARN_on冷却以移动得更快|r
>>|cRXP_WARN_当暴徒死亡时，确保你在离他们100码以内，否则你不会得到赞扬|r
.complete 12372,1 
.goto Dragonblight,55.2,54.3,100,0
.goto Dragonblight,61.4,61.1,100,0
.goto Dragonblight,55.2,66.7
.complete 12372,2 
.goto Dragonblight,55.2,54.3,100,0
.goto Dragonblight,61.4,61.1,100,0
.goto Dragonblight,55.2,66.7
.isOnQuest 12372
.mob Azure Dragon
.mob Azure Drake
step
#completewith next
.goto Dragonblight,49.15,75.65,100 >>|cRXP_WARN_乘坐|r|cRXP_FRIENDLY_Wyrmrest Defender飞往莫阿基港|r
>>|cRXP_WARN_铸造|r|T135788:0|t[Blazing Speed]（4）|cRXP_WARN_if it available|r
.isOnQuest 12372
step
.goto Dragonblight,49.15,75.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师图阿鲁|r
.turnin 12032 >>交任务: |cRXP_FRIENDLY_海洋女神|r
.isQuestComplete 12032
.target Toalu'u the Mystic
step
#completewith next
.goto Dragonblight,48.52,74.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cid|r
.fly Wyrmrest Temple >>飞往温姆雷斯特神庙
.target Cid Flounderfix
.skill coldweatherflying,1,1
.skill riding,300,1
step
#completewith DWT
.goto Dragonblight,57.91,54.17
.gossipoption 93559 >>对话: |cRXP_FRIENDLY_塔里奥斯塔兹|r
.timer 16,Flight to Devrestrasz
.skill coldweatherflying,1,1
.isOnQuest 12372
.target Tariolstrasz
step
#completewith next
.goto Dragonblight,59.24,54.32,200 >>前往Wyrmrest Temple
.skill coldweatherflying,<1,1
step
#label DWT
.goto Dragonblight,59.24,54.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrestrasz|r
>>|cRXP_FRIENDLY_Devrestrasz|r|cRXP_WARN_i在寺庙的中间层|r
.turnin 12372 >>交任务: |cRXP_FRIENDLY_保卫龙眠神殿|r
.isOnQuest 12372
.target Lord Devrestrasz
step
#completewith Angrathar
.goto Dragonblight,60.32,51.55
>>|cRXP_WARN_降落到飞行主管那里。施法|r|T135896:0|t【神盾】|cRXP_WARN_or |r|T135964:0|t（护手）|cRXP-WARN_to不死于坠落伤害|r << Paladin
>>|cRXP_WARN_下拉至飞行管理员。小心不要因跌落而死亡|r << !Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟斯塔兹|r
.fly Fordragon >>飞到Fordragon Hold
.target Nethestrasz
.skill coldweatherflying,1,1
step
#completewith next
.goto Dragonblight,37.81,23.41,100 >>前往Fordragon Hold
.skill coldweatherflying,<1,1
step
#label Angrathar
.groundgoto Dragonblight,37.0,25.1,30,0
.goto Dragonblight,37.81,23.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
>>|cRXP_WARN_如果你不想看电影，准备好按Escape|r
.turnin 12499 >>交任务: |cRXP_FRIENDLY_返回安加萨|r
.target Highlord Bolvar Fordragon
step << !Druid !DK
.goto Dragonblight,38.42,19.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿莱克丝塔萨|r
.accept 13347 >>接任务: |cRXP_LOOT_浴火重生|r
.target Alexstrasza the Life-Binder
step << !Druid !DK
.goto Dragonblight,38.01,19.64
>>地面上的掠夺者|cRXP_PICK_Fordragon的盾牌|r
.complete 13347,1 
step << Mage
.goto Dragonblight,37.77,23.43
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 43019 >>训练你的职业技能
.xp <73,1
.target Elsharin
.target Jennea Cannon
step << Mage
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42939 >>训练你的职业技能
.xp <74,1
.target Elsharin
.target Jennea Cannon
step << Mage
.goto Stormwind City,49.55,85.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42955 >>训练你的职业技能
.xp <75,1
.target Elsharin
.target Jennea Cannon
step << !Druid !DK !Mage
#completewith next
.goto Dragonblight,39.51,25.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derek|r
.fly Valiance Keep >>飞到Valiance Keep。或者，支付|T626001:0|t|cFF3FC7EBMage|r购买暴风城入口
.zoneskip Stormwind City
.zoneskip Elwynn Forest
.xp >73,1
.skill coldweatherflying,1,1
.target Derek Rammel
step << !DK !Druid !Mage
.goto BoreanTundra,59.70,69.26
.zone Stormwind City >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.zoneskip Elwynn Forest
.skipgossip
.xp >73,1
.skill coldweatherflying,1,1
.target Nelno Copperbeam
step << !Druid !DK !Mage
#completewith Modera
.goto Dragonblight,39.51,25.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derek|r
.fly Stars' Rest >>飞往星空休息区。或者，支付|T626001:0|t|cFF3FC7EBMage|r购买暴风城入口
.zoneskip Stormwind City
.zoneskip Elwynn Forest
.zoneskip Dalaran
.xp <74,1
.skill coldweatherflying,1,1
.target Derek Rammel
step << !Druid !DK !Mage
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.accept 12794 >>接任务: |cRXP_LOOT_魔法王国达拉然|r
.zoneskip Elwynn Forest
.zoneskip Stormwind City
.zoneskip Dalaran
.xp <74,1
.skill coldweatherflying,1,1
.target Image of Archmage Modera
step << !DK !Druid !Mage
#label Modera
.goto Dragonblight,29.00,55.45
.zone Dalaran >>前往: |cRXP_PICK_达拉然|r
.zoneskip Stormwind City
.skipgossip
.xp <74,1
.skill coldweatherflying,1,1
.isOnQuest 12794
.target Image of Archmage Modera
step << !DK !Druid !Mage
.abandon 12794 >>放弃达拉然魔法王国|cRXP_WARN_请勿将其打开|r
step << !DK !Druid !Mage
.goto Dalaran,40.10,62.78,150 >>Travel to Dalaran
.zoneskip Stormwind City
.skill coldweatherflying,<1,1
.isOnQuest 13347
step << !DK !Druid !Mage
.goto Dalaran,40.2,56.3,50,0
.goto Dalaran,40.10,62.78
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.skill coldweatherflying,<1,1
.zoneskip Stormwind City
.isOnQuest 13347
step << !DK !Druid !Mage
.goto Dalaran,40.2,56.3,50,0
.goto Dalaran,40.10,62.78
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <74,1
.skill coldweatherflying,1,1
.zoneskip Stormwind City
.isOnQuest 13347
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知安布洛尔|r
.train 49237 >>训练你的职业技能
.xp <73,1
.target Farseer Umbrua
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知安布洛尔|r
.train 49270 >>训练你的职业技能
.xp <74,1
.target Farseer Umbrua
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知安布洛尔|r
.train 49280 >>训练你的职业技能
.xp <75,1
.target Farseer Umbrua
step << Warlock
.goto StormwindNew,42.26,81.77,20,0
.goto StormwindNew,40.64,84.94,15,0
.goto StormwindNew,39.88,84.19
>>走进屠宰羔羊，下楼去
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Ursula, |cRXP_FRIENDLY_德米赛特·克劳斯|r, |cRXP_FRIENDLY_山达尔|r
.train 47892 >>训练你的职业技能
.xp <74,1
.target Ursula Deline
.target Demisette Cloyce
.target Sandahl
step << Paladin/Priest
#completewith PaPrTraining1
.goto StormwindNew,52.9,50.9,20 >>进入暴风大教堂
step << Paladin
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48931 >>训练你的职业技能
.xp <73,1
.target Arthur the Faithful
.target Katherine the Pure
step << Paladin
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48805 >>训练你的职业技能
.xp <74,1
.target Arthur the Faithful
.target Katherine the Pure
step << Paladin
#label PaPrTraining1
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48818 >>训练你的职业技能
.xp <75,1
.target Arthur the Faithful
.target Katherine the Pure
step << Priest
.goto StormwindNew,49.51,45.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
.train 48126 >>训练你的职业技能
.xp <74,1
.target Brother Joshua
step << Priest
#label PaPrTraining1
.goto StormwindNew,49.51,45.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
.train 48124 >>训练你的职业技能
.xp <75,1
.target Brother Joshua
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.train 49044 >>训练你的职业技能
.xp <73,1
.target Einris Brightspear
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.train 61846 >>训练你的职业技能
.xp <74,1
.target Einris Brightspear
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.train 61005 >>训练你的职业技能
.xp <75,1
.target Einris Brightspear
step << Rogue
.goto StormwindNew,77.42,65.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.train 48667 >>训练你的职业技能
.xp <73,1
.target Osborne the Night Man
step << Warrior
.goto StormwindNew,78.31,63.53,15,0
.goto StormwindNew,81.66,59.50,15,0
.goto StormwindNew,80.56,59.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 47470 >>训练你的职业技能
.xp <73,1
.target Wu Shen
.target Ilsa Corbin
step << Warrior
.goto StormwindNew,78.31,63.53,15,0
.goto StormwindNew,81.66,59.50,15,0
.goto StormwindNew,80.56,59.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 55694 >>训练你的职业技能
.xp <75,1
.target Wu Shen
.target Ilsa Corbin
step << !Druid !DK
#completewith next
.goto StormwindNew,73.69,45.98,20 >>前往: |cRXP_PICK_暴风城|r Keep
step << !Druid !DK
.goto StormwindNew,80.01,38.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varian|r
.turnin 13347 >>交任务: |cRXP_FRIENDLY_浴火重生|r
.accept 13369 >>接任务: |cRXP_LOOT_造化弄人|r
.target King Varian Wrynn
step << !Druid !DK
#completewith next
.goto StormwindNew,80.06,38.63
.gossipoption 94297 >>Talk to |cRXP_FRIENDLY_Jaina|r. She will open a portal to Orgrimmar
.timer 12,Jaina Portal to Orgrimmar
.isOnQuest 13369
.target Lady Jaina Proudmoore
step << !Druid !DK
#completewith next
.goto StormwindNew,80.08,38.90
.zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step << !Druid !DK
.goto Orgrimmar,32.5,37.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
.turnin 13369 >>交任务: |cRXP_FRIENDLY_造化弄人|r
.accept 13370 >>接任务: |cRXP_LOOT_政变|r
.target Thrall
step << !Druid !DK
#completewith Varian
.goto Orgrimmar,33.22,37.69
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << !Druid !DK
#questguide
.goto StormwindNew,80.01,38.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varian|r
.turnin 13370 >>交任务: |cRXP_FRIENDLY_政变|r
.accept 13371 >>接任务: |cRXP_LOOT_杀戮时刻|r
.target King Varian Wrynn
step << !Druid !DK
#label Varian
.goto StormwindNew,80.01,38.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varian|r
>>|cRXP_WARN_跳过“地下城之战”后续行动。强烈建议您跳过它，因为它的XP/Hr很糟糕|r
.turnin 13370 >>交任务: |cRXP_FRIENDLY_政变|r
.target King Varian Wrynn
step << skip
#questguide
#completewith next
.goto Stormwind City,80.5,39.4
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step << skip
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Broll|r in Tirisfal
.turnin 13371 >>交任务: |cRXP_FRIENDLY_杀戮时刻|r
.target Broll Bearmantle
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知安布洛尔|r
.train 49237 >>训练你的职业技能
.xp <73,1
.target Farseer Umbrua
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知安布洛尔|r
.train 49270 >>训练你的职业技能
.xp <74,1
.target Farseer Umbrua
step << Shaman
.goto StormwindNew,67.52,89.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知安布洛尔|r
.train 49280 >>训练你的职业技能
.xp <75,1
.target Farseer Umbrua
step << Warlock
.goto StormwindNew,42.26,81.77,20,0
.goto StormwindNew,40.64,84.94,15,0
.goto StormwindNew,39.88,84.19
>>走进屠宰羔羊，下楼去
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Ursula, |cRXP_FRIENDLY_德米赛特·克劳斯|r, |cRXP_FRIENDLY_山达尔|r
.train 47892 >>训练你的职业技能
.xp <74,1
.target Ursula Deline
.target Demisette Cloyce
.target Sandahl
step << Paladin/Priest
#completewith PaPrTraining2
.goto StormwindNew,52.9,50.9,20 >>进入暴风大教堂
step << Paladin
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48931 >>训练你的职业技能
.xp <73,1
.target Arthur the Faithful
.target Katherine the Pure
step << Paladin
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48805 >>训练你的职业技能
.xp <74,1
.target Arthur the Faithful
.target Katherine the Pure
step << Paladin
#label PaPrTraining
.goto StormwindNew,49.8,48.5,20,0
.goto StormwindNew,49.60,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
.train 48818 >>训练你的职业技能
.xp <75,1
.target Arthur the Faithful
.target Katherine the Pure
step << Priest
.goto StormwindNew,49.51,45.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
.train 48126 >>训练你的职业技能
.xp <74,1
.target Brother Joshua
step << Priest
#label PaPrTraining2
.goto StormwindNew,49.51,45.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
.train 48124 >>训练你的职业技能
.xp <75,1
.target Brother Joshua
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.train 49044 >>训练你的职业技能
.xp <73,1
.target Einris Brightspear
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.train 61846 >>训练你的职业技能
.xp <74,1
.target Einris Brightspear
step << Hunter
.goto StormwindNew,67.3,37.1,15,0
.goto StormwindNew,67.35,36.25
.train 61005 >>训练你的职业技能
.xp <75,1
step << Rogue
.goto StormwindNew,77.42,65.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.train 48667 >>训练你的职业技能
.xp <73,1
.target Osborne the Night Man
step << Warrior
.goto StormwindNew,78.31,63.53,15,0
.goto StormwindNew,81.66,59.50,15,0
.goto StormwindNew,80.56,59.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 47470 >>训练你的职业技能
.xp <73,1
.target Wu Shen
.target Ilsa Corbin
step << Warrior
.goto StormwindNew,78.31,63.53,15,0
.goto StormwindNew,81.66,59.50,15,0
.goto StormwindNew,80.56,59.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.train 55694 >>训练你的职业技能
.xp <75,1
.target Wu Shen
.target Ilsa Corbin
step << !DK !Druid
#completewith Hills
.hs >>壁炉到温姆雷斯特神庙
step << !DK !Druid
#completewith Hills
.goto Dragonblight,60.32,51.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟斯塔兹|r
.fly Wintergarde Keep >>飞到温特加德要塞
.target Nethestrasz
step << DK/Druid
#completewith Hills
.goto Dragonblight,39.51,25.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derek|r
.fly Wintergarde Keep >>飞到温特加德要塞
.target Derek Rammel
step
#label end
.groundgoto Dragonblight,78.2,46.7,40,0
.goto Dragonblight,76.81,47.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eligor|r
.turnin 12464 >>交任务: |cRXP_FRIENDLY_我的老对手|r
.target Commander Eligor Dawnbringer
.isQuestComplete 12464
step
.abandon 12464 >>抛弃我的老敌人
step
.goto Dragonblight,25.61,51.30,0
#loop
.line Dragonblight,87.90,41.21,87.00,42.19,86.45,40.12,85.51,41.24,83.78,41.98,84.14,40.72,84.49,37.06,87.64,35.43,87.90,41.21
.goto Dragonblight,87.90,41.21,50,0
.goto Dragonblight,87.00,42.19,50,0
.goto Dragonblight,86.45,40.12,50,0
.goto Dragonblight,85.51,41.24,50,0
.goto Dragonblight,83.78,41.98,50,0
.goto Dragonblight,84.14,40.72,50,0
.goto Dragonblight,84.49,37.06,50,0
.goto Dragonblight,87.64,35.43,50,0
.goto Dragonblight,87.90,41.21,50,0
.xp 73 >>升级|cRXP_ENEMY_Scarlet Onslaught|r至73级。或者，做阿兹约尔·尼鲁和它的任务
.mob Onslaught Bloodhound
.mob Onslaught Infantry
.mob Onslaught Mason
step
#label Hills
.goto Dragonblight,77.10,50.12
>>|cRXP_WARN_这会带你去灰熊丘陵|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
.accept 12511 >>接任务: |cRXP_LOOT_丘陵援兵|r
.timer 150,飞往琥珀旅馆
.target Gryphon Commander Urik
step
.zone Grizzly Hills >>前往: |cRXP_PICK_灰熊丘陵|r
]])
RXPGuides.RegisterGuide([[
#cata
#Cata
#speedrunguide
#xprate >1.49 << wotlk
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 73-74 Dragonblight
#version 5
#next 74-75 Grizzly Hills

#include 72-74 龙骨荒野@pt1start-pt1end
step
.goto Dragonblight,29.00,55.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Modera|r
.turnin 12107 >>交任务: |cRXP_FRIENDLY_魔网能量线的终端|r
>>|cRXP_WARN_Skip the follow-up|r
.target Image of Archmage Modera
step

#include 72-74 龙骨荒野@pt2start-pt2end
step
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12287 >>交任务: |cRXP_FRIENDLY_欧瑞克·图哈特|r
.accept 12290 >>接任务: |cRXP_LOOT_黑暗草|r
.target Orik Trueheart
step
#label chief
#sticky
.goto Dragonblight,90.67,72.89
>>杀死|cRXP_ENEMY_High萨满血爪|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r << wotlk
>>|cRXP_WARN_施法|r|T136075:0|t[清除]|cRXP_WARN_当他有嗜血欲望时|r << Shaman wotlk
>>|cRXP_WARN_施法|r|T135894:0|t[驱散魔法]|cRXP_WARN_当他有嗜血欲望时|r << Priest wotlk
.complete 12441,1 
.mob High Shaman Bloodpaw
step
.goto Dragonblight,89.2,65.4,70,0
.goto Dragonblight,90.2,74.6,70,0
.goto Dragonblight,89.28,65.60,70,0
.goto Dragonblight,90.22,72.24
>>在地面上抢劫|cRXP_Loot_Murkweed|r
.complete 12290,1 
step
#requires chief
.goto Dragonblight,87.17,57.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik|r
.turnin 12290 >>交任务: |cRXP_FRIENDLY_黑暗草|r
step << !wotlk
.goto Dragonblight,90.1,52.7
>>杀死|cRXP_ENEMY_Kreug誓言破坏者|r
.complete 12438,1 
.mob Kreug Oathbreaker
step
.goto Dragonblight,87.4,38.1
>>|cRXP_WARN_Travel up the Tower|r
>>杀死|cRXP_ENEMY_Commander Iustus|r
>>|cRXP_WARN_这个任务非常困难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r << wotlk
.complete 12442,1 
.mob Onslaught Commander Iustus
step
.goto 115/571,-780.500,3772.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
.target High Commander Halford Wyrmbane
.turnin 12319 >>交任务: |cRXP_FRIENDLY_血之魔典|r
>>|cRXP_WARN_Skip the follow-up|r
step
.goto 115/571,-736.100,3692.600
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_李奥瑞克·冯·泽尔迪格公爵|r
.target Highlord Leoric Von Zeldig
.turnin 12438 >>交任务: |cRXP_FRIENDLY_悬赏：克留格·碎誓者|r << !wotlk
.turnin 12441 >>交任务: |cRXP_FRIENDLY_通缉：高阶萨满祭司德金·血爪|r
.turnin 12442 >>交任务: |cRXP_FRIENDLY_悬赏：先锋军指挥官尤斯图斯|r
step
.goto Dragonblight,77.10,50.12
>>|cRXP_WARN_这会带你去灰熊丘陵|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urik|r
.accept 12511 >>接任务: |cRXP_LOOT_丘陵援兵|r
.timer 150,飞往琥珀旅馆
.target Gryphon Commander Urik
step
.zone Grizzly Hills >>前往: |cRXP_PICK_灰熊丘陵|r
]])
RXPGuides.RegisterGuide([[
#cata
#Cata
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 73-75 灰熊丘陵
#version 5
#next 75-77 祖达克
#xprate <1.5 << wotlk
#questguide << !wotlk
step
#label pt1start
.goto Grizzly Hills,31.80,59.55
>>一进入小屋，就点击左边的|cRXP_PICK_Basket|r|cRXP-WARN_（楼上|cRXP_WARN_NOT|r）
.accept 12225 >>接任务: |cRXP_LOOT_美味的琥珀种子！|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护林主管安德霍尔|r, |cRXP_FRIENDLY_杜蒙特中尉|r
.turnin 12225 >>交任务: |cRXP_FRIENDLY_美味的琥珀种子！|r
.accept 12226 >>接任务: |cRXP_LOOT_种子穿肠过……|r
.accept 12212 >>接任务: |cRXP_LOOT_补充食物|r
.accept 12215 >>接任务: |cRXP_LOOT_你死我活！|r
.goto Grizzly Hills,32.10,59.97
.turnin 12511 >>交任务: |cRXP_FRIENDLY_丘陵援兵|r
.accept 12292 >>接任务: |cRXP_LOOT_当地人的支持|r
.goto Grizzly Hills,31.83,60.16
.isOnQuest 12511
.target Master Woodsman Anderhol
.target Lieutenant Dumont
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护林主管安德霍尔|r, |cRXP_FRIENDLY_杜蒙特中尉|r
.turnin 12225 >>交任务: |cRXP_FRIENDLY_美味的琥珀种子！|r
.accept 12226 >>接任务: |cRXP_LOOT_种子穿肠过……|r
.accept 12212 >>接任务: |cRXP_LOOT_补充食物|r
.accept 12215 >>接任务: |cRXP_LOOT_你死我活！|r
.goto Grizzly Hills,32.10,59.97
.accept 12292 >>接任务: |cRXP_LOOT_当地人的支持|r
.goto Grizzly Hills,31.83,60.16
.target Master Woodsman Anderhol
.target Lieutenant Dumont
step
#completewith Cedar
.goto Grizzly Hills,31.96,60.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennifer|r
.home >>将您的Hearthstone设置为Amberpine Lodge
>>|cRXP_BUY_如果需要，购买食物/水|r
.target Jennifer Bell
step
.goto Grizzly Hills,31.31,59.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦娜·格雷|r
.fp Amberpine Lodge >>获得Amberpine Lodge航线
.target Vana Grey
step
.goto Grizzly Hills,29.01,55.09,60,0
.goto Grizzly Hills,29.56,59.02
>>沿河掠夺|cRXP_PICK_Plants|r
.complete 12226,1 
step
#pvp
.goto Grizzly Hills,29.91,59.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carter|r
>>|cRXP_WARN_此任务|r（|cRXP_WARN_并将其保存在您的任务日志中|r）|cRXP_WARN_标记您进行PVP|r。如果您愿意，请跳过它|r
.accept 12444 >>接任务: |cRXP_LOOT_黑水伐木场的战斗|r
.target Scout Captain Carter
step
#pvp
.goto Grizzly Hills,28.42,60.96,60,0
.goto Grizzly Hills,27.57,64.80,60,0
.goto Grizzly Hills,27.67,68.24
>>杀死Blackriver中的|cRXP_ENEMY_Conquest Hold Raiders|r（或|cRXX_ENEMY_Horde Players |r）
.complete 12444,1 
.isOnQuest 12444
.mob Conquest Hold Raider
step
#completewith next
>>杀死|cRXP_ENEMY_Stags|r。掠夺它们的|cRXX_Loot_Venison|r
.complete 12212,1 
.mob Tallhorn Stag
step
.goto Grizzly Hills,26.05,67.22,60,0
.goto Grizzly Hills,24.70,67.38,60,0
.goto Grizzly Hills,25.19,70.50,60,0
.goto Grizzly Hills,24.01,71.68,60,0
.goto Grizzly Hills,19.95,73.83,60,0
.goto Grizzly Hills,26.05,67.22
>>杀死|cRXP_ENEMY_灰灰灰猎人|r
.complete 12215,1 
.mob Graymist Hunter
step
.goto Grizzly Hills,23.10,71.92,60,0
.goto Grizzly Hills,21.32,73.82,60,0
.goto Grizzly Hills,20.65,71.32,60,0
.goto Grizzly Hills,17.42,71.30,60,0
.goto Grizzly Hills,14.37,69.89,60,0
.goto Grizzly Hills,12.74,72.29,60,0
.goto Grizzly Hills,11.17,69.22,60,0
.goto Grizzly Hills,12.97,65.10,60,0
.goto Grizzly Hills,17.77,66.23,60,0
.goto Grizzly Hills,23.10,71.92
>>杀死|cRXP_ENEMY_Stags|r。掠夺它们的|cRXX_Loot_Venison|r
.complete 12212,1 
.mob Tallhorn Stag
step
#label Cedar
.goto Grizzly Hills,15.87,65.27
>>进入有警卫的大楼。掠夺|cRXP_PICK_箱子|r
.complete 12292,1 
step
#completewith next
.hs >>Hearth to Amberpine旅馆
.cooldown item,6948,>2
step
>>返回Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜蒙特中尉|r, |cRXP_FRIENDLY_护林主管安德霍尔|r
.turnin 12292 >>交任务: |cRXP_FRIENDLY_当地人的支持|r
.accept 12293 >>接任务: |cRXP_LOOT_完成交易|r
.goto Grizzly Hills,31.83,60.16
.turnin 12212 >>交任务: |cRXP_FRIENDLY_补充食物|r
.accept 12216 >>接任务: |cRXP_LOOT_猎熊！|r
.turnin 12226 >>交任务: |cRXP_FRIENDLY_种子穿肠过……|r
.accept 12227 >>接任务: |cRXP_LOOT_尽你的职责|r
.turnin 12215 >>交任务: |cRXP_FRIENDLY_你死我活！|r
.accept 12217 >>接任务: |cRXP_LOOT_鹰的眼睛|r
.goto Grizzly Hills,32.10,59.97
.target Lieutenant Dumont
.target Master Woodsman Anderhol
step
.goto Grizzly Hills,32.22,58.89
>>在外部使用|cRXP_PICK_Amberpine Outhouse |r
.complete 12227,1 
.skipgossip
step
#completewith next
.goto Grizzly Hills,32.0,47.1,0
>>杀死你看到的|cRXP_ENEMY_Imperial Eagles|r
.complete 12217,1 
.mob Imperial Eagle
step
.goto Grizzly Hills,34.77,55.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊凡|r
.turnin 12293 >>交任务: |cRXP_FRIENDLY_完成交易|r
.accept 12294 >>接任务: |cRXP_LOOT_暂时的协议|r
.target Ivan
step
.goto Grizzly Hills,34.68,51.30,60,0
.goto Grizzly Hills,31.21,49.57,60,0
.goto Grizzly Hills,32.53,47.63
>>杀死你看到的|cRXP_ENEMY_Imperial Eagles|r
.complete 12217,1 
.mob Imperial Eagle
step
.goto Grizzly Hills,30.41,45.04,60,0
.goto Grizzly Hills,29.41,52.57,60,0
.goto Grizzly Hills,28.73,58.30
>>杀死|cRXP_ENEMY_Grizzly Bears |r。掠夺它们的|cRXX_Loot_Franks |r
.complete 12216,1 
.mob Grizzly Bear
step
#pvp
.goto Grizzly Hills,29.91,59.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carter|r
.turnin 12444 >>交任务: |cRXP_FRIENDLY_黑水伐木场的战斗|r
.isQuestComplete 12444
.target Scout Captain Carter
step
.abandon 12444 >>放弃Blackriver Skirmish
step
>>返回Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Dumont|r, |cRXP_FRIENDLY_Anderhol|r, and |cRXP_FRIENDLY_Drake, 他在外面
.turnin 12294 >>交任务: |cRXP_FRIENDLY_暂时的协议|r
.accept 12295 >>接任务: |cRXP_LOOT_外交活动|r
.accept 12210 >>接任务: |cRXP_LOOT_狩猎巨魔的季节！|r
.goto Grizzly Hills,31.83,60.16
.turnin 12217 >>交任务: |cRXP_FRIENDLY_鹰的眼睛|r
.turnin 12216 >>交任务: |cRXP_FRIENDLY_猎熊！|r
.turnin 12227 >>交任务: |cRXP_FRIENDLY_尽你的职责|r
.goto Grizzly Hills,32.10,59.97
.accept 12222 >>接任务: |cRXP_LOOT_缚焰者的秘密|r
.accept 12223 >>接任务: |cRXP_LOOT_削弱邪兽人|r
.goto Grizzly Hills,32.42,59.94
.target Lieutenant Dumont
.target Master Woodsman Anderhol
.target Woodsman Drake
step
#sticky
#label Talismans
.goto Grizzly Hills,30.2,77.3,0,0
>>杀死|cRXP_ENEMY_Dragonflyer火焰绑定器|r。掠夺他们的|cRXX_Loot_Talismans|r
.complete 12222,1 
.mob Dragonflayer Flamebinder
step
.goto Grizzly Hills,31.61,78.70,60,0
.goto Grizzly Hills,31.51,80.42,60,0
.goto Grizzly Hills,28.23,75.89,60,0
.goto Grizzly Hills,27.82,72.09
>>杀死|cRXP_ENEMY_Dragonflyer Huscalls|r
.complete 12223,1 
.mob Dragonflayer Huscarl
step << Shaman
#requires Talismans
#completewith next
.hs >>Hearth to Amberpine旅馆
.cooldown item,6948,>2
step
#requires Talismans
.goto Grizzly Hills,32.42,59.94
>>乘车返回Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drake|r
.turnin 12222 >>交任务: |cRXP_FRIENDLY_缚焰者的秘密|r
.turnin 12223 >>交任务: |cRXP_FRIENDLY_削弱邪兽人|r
.accept 12255 >>接任务: |cRXP_LOOT_沃德伦的领主|r
.target Woodsman Drake
step << wotlk
#pvp
>>乘车前往风险湾
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴布芬克|r, |cRXP_FRIENDLY_弗里曼男爵|r, Stuart, |cRXP_FRIENDLY_杜内恩中士|r
>>|cRXP_WARN_此任务|r（|cRXP_WARN_并将其保存在您的任务日志中|r）|cRXP_WARN_标记您进行PVP|r。如果您愿意，请跳过它|r
.accept 12443 >>接任务: |cRXP_LOOT_寻找溶解剂|r
.goto Grizzly Hills,23.02,80.16
.accept 12314 >>接任务: |cRXP_LOOT_除掉佐娜船长！|r
.goto Grizzly Hills,22.11,81.28
.accept 12316 >>接任务: |cRXP_LOOT_夺取港口！|r
.goto Grizzly Hills,22.07,81.30
.accept 12323 >>接任务: |cRXP_LOOT_把他们熏出来！|r
.goto Grizzly Hills,21.98,80.72
.target Barblefink
.target Baron Freeman
.target Lieutenant Stuart
.target Sergeant Downey
step << wotlk
#completewith Zorna
#pvp
.goto Grizzly Hills,18.1,79.5,40,0
.goto Grizzly Hills,16.4,76.5,40,0
.goto Grizzly Hills,14.5,76.4,0
.use 37621 >>在建筑物中的|cRXP_ENEMY_Venture Co.Stragglers|r上使用您包中的|T133717:0|t[烟雾弹]|cRXP_WARN_你可以用身体拉动它们，以便更好地堆放炸弹|r
.complete 12323,1 
.isOnQuest 12323
.mob Venture Co. Straggler
step << wotlk
#completewith Smoke
#pvp
.goto Grizzly Hills,15.4,76.6,0
>>在Venture Bay杀死|cRXP_ENEMY_Conquest Hold狂战士|r（或|cRXX_ENEMY_Horde玩家|r）
.complete 12316,1 
.isOnQuest 12316
.mob Conquest Hold Berserker
step << skip
#pvp
#questguide
>>查看风险湾是否由联盟或部落控制。如果它是部落控制的，跳过这一步
>>|cRXP_WARN_此任务|r（|cRXP_WARN_并将其保存在您的任务日志中|r）|cRXP_WARN_标记您进行PVP|r。如果您愿意，请跳过它|r
.goto Grizzly Hills,14.8,86.6
.accept 12437 >>接任务: |cRXP_LOOT_红色鱼雷|r
step << skip
#pvp
#questguide
.goto Grizzly Hills,16.0,81.1,20,0
.goto Grizzly Hills,16.4,80.4
>>加入合资企业。合作。去船尾的底层掠夺元素115。小心，因为它有3分钟的持续时间
.collect 37664,1 
.isOnQuest 12437

step << skip
#pvp
#questguide
#completewith next
.goto Grizzly Hills,13.7,89.1
.vehicle >>前往创业湾码头。进入火箭推进弹头
.isOnQuest 12437
step << skip
#pvp
#questguide
.goto Grizzly Hills,9.6,79.0
>>你可以沿着相机所面对的方向移动火箭。乘坐它进入战歌木船。如果它撞到冰山或陆地上，它就会爆炸，你需要再次获得元素115并一路返回。
.complete 12437,1 
.isOnQuest 12437
step << skip
#pvp
#questguide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t游回风险湾码头。与豪瑟交谈
.goto Grizzly Hills,14.8,86.6
.turnin 12437 >>交任务: |cRXP_FRIENDLY_红色鱼雷|r
.isQuestComplete 12437
step << wotlk
#pvp
#label Zorna
.goto Grizzly Hills,13.36,80.19
>>杀死码头上的|cRXP_ENEMY_Zorna|r船长|cRXP_WARN_使用所有冷却|r。|cRXP_WARN_如果你不能杀死她|r，|cRXP-WARN_跳过这一步|r
.complete 12314,1 
.isOnQuest 12314
.mob Captain Zorna
step << wotlk
#pvp
#label Smoke
.goto Grizzly Hills,14.5,76.4,40,0
.goto Grizzly Hills,16.4,76.5,40,0
.goto Grizzly Hills,18.1,79.5
.use 37621 >>在建筑物中的|cRXP_ENEMY_Venture Co.Stragglers|r上使用您包中的|T133717:0|t[烟雾弹]|cRXP_WARN_你可以用身体拉动它们，以便更好地堆放炸弹|r
.complete 12323,1 
.isOnQuest 12323
.mob Venture Co. Straggler
step << wotlk
#pvp
.goto Grizzly Hills,11.57,79.32,60,0
.goto Grizzly Hills,15.14,78.52,60,0
.goto Grizzly Hills,14.84,76.47
>>在Venture Bay杀死|cRXP_ENEMY_Conquest Hold狂战士|r（或|cRXX_ENEMY_Horde玩家|r）
.complete 12316,1 
.isOnQuest 12316
.mob Conquest Hold Berserker
step << wotlk
#pvp
.goto Grizzly Hills,16.0,81.1,20,0
.goto Grizzly Hills,16.36,80.26
>>进入Venture Co.船舶
>>|cRXP_WARN_走到船的底层，掠夺|r|cRXP_PICK_Element 115|r|cRXP_WARN_小心，因为它有3分钟的持续时间|r
.complete 12443,1 
.isOnQuest 12443
step << wotlk
#pvp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜内恩中士|r
.goto Grizzly Hills,21.98,80.72
.turnin 12323 >>交任务: |cRXP_FRIENDLY_把他们熏出来！|r
.isQuestComplete 12323
.target Sergeant Downey
step << wotlk
#completewith end
#label CZorna
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stuart|r
.goto Grizzly Hills,22.07,81.30
.turnin 12316 >>交任务: |cRXP_FRIENDLY_夺取港口！|r
.isQuestComplete 12316
.target Lieutenant Stuart
step << wotlk
#pvp
.goto Grizzly Hills,22.11,81.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗里曼男爵|r
.turnin 12314 >>交任务: |cRXP_FRIENDLY_除掉佐娜船长！|r
.isQuestComplete 12314
.target Baron Freeman
step << wotlk
#pvp
#requires CZorna
.goto Grizzly Hills,23.02,80.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴布芬克|r
.turnin 12443 >>交任务: |cRXP_FRIENDLY_寻找溶解剂|r
.isQuestComplete 12443
.target Barblefink
step << wotlk
#completewith Sacrifices
>>放弃你无法完成的PVP任务
.abandon 12314 >>放弃Zorna上尉！
.abandon 12316 >>放弃让他们远离！
.abandon 12443 >>放弃寻找溶剂
.abandon 12323 >>放弃烟雾排放
step
#completewith next
.goto Grizzly Hills,26.59,77.85
.vehicle >>在Voldrune中装入|cRXP_WARN_Flamebringer|r
.skipgossip
.target Flamebringer
step
#label pt1end
.goto Grizzly Hills,27.6,72.9
>>杀死|cRXP_ENEMY_Torvald|r
>>使用|T134316:0|t“翅膀自助餐”（2）与|T135830:0|t“熔怒”（3）组合。垃圾邮件|T135805:0|t“火焰之息”（1），当其他法术冷却时
>>|cRXP_WARN_如果你有一个非常强壮的角色，你可以在|r|cRXP_ENEMY_Torvald|r|cRXP_WARN_旁边下车，然后正常杀死他|r
.complete 12255,1 
.mob Thane Torvald Eriksson
step
.goto Grizzly Hills,16.19,47.60
>>前往|cRXP_FRIENDLY_Flamebringer|r上的Granite Springs，然后前往您的坐骑
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨米尔|r
.turnin 12210 >>交任务: |cRXP_FRIENDLY_狩猎巨魔的季节！|r
.accept 11984 >>接任务: |cRXP_LOOT_抓巨魔|r
.target Samir
step
.goto Grizzly Hills,16.37,48.26,10,0
.goto Grizzly Hills,15.0,60.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德|r, |cRXP_ENEMY_茉拉·狼女|r
.use 35736 >>在|cRXP_ENEMY_Ice Troll|r上使用|cRXP_FRIENDLY_Budd的|r|T132310:0|t“标记Troll”能力（|cRXP_WARN_It在您的宠物栏上|r）。然后，在|cRXP_ENEMY_Troll|r上使用包中的|T132599:0|t[赏金猎人笼子]
.complete 11984,1 
.skipgossip
.target Budd
.mob Drakkari Shaman
.mob Drakkari Warrior
step
>>返回Granite Springs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨米尔|r, |cRXP_FRIENDLY_达库鲁|r
.turnin 11984 >>交任务: |cRXP_FRIENDLY_抓巨魔|r
.goto Grizzly Hills,16.19,47.60
.accept 11989 >>接任务: |cRXP_LOOT_停战？|r
.goto Grizzly Hills,16.43,47.77
.target Samir
.target Drakuru
step
#completewith next
.goto Grizzly Hills,16.54,47.76
.cast 50141 >>将|cRXP_PICK_Knife |r放入|cRXP_FRIENDLY_Drakuru|r右侧的日志中。使用|T135650:0|t[钝雕刀]
.collect 38083,1,11989,1 
.use 38083
step
.use 38083 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达库鲁|r
.complete 11989,1 
.turnin 11989 >>交任务: |cRXP_FRIENDLY_停战？|r
.accept 11990 >>接任务: |cRXP_LOOT_幻象之瓶|r
.goto Grizzly Hills,16.43,47.77
.skipgossip
.target Drakuru
step
.goto Grizzly Hills,15.96,47.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃门纳|r
.complete 11990,1 

.target Ameenah
step
.goto Grizzly Hills,16.7,43.4,70,0
.goto Grizzly Hills,12.6,41.4
>>掠夺地上的小|cRXP_PICK_Bruiseweed-sque|r植物
.complete 11990,2 
step
.goto Grizzly Hills,15.30,40.08
>>在水下掠夺|cRXP_PICK_Waterweed Frond|r
.complete 11990,3 
step
.goto Grizzly Hills,16.43,47.77
>>返回Granite Springs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达库鲁|r
.turnin 11990 >>交任务: |cRXP_FRIENDLY_幻象之瓶|r
.accept 11991 >>接任务: |cRXP_LOOT_解读象形文字|r
.target Drakuru
step
.accept 12484 >>接任务: |cRXP_LOOT_清理天灾|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普雷蒙|r, Scourged Troll Mummys
.goto Grizzly Hills,15.73,46.69
.collect 38149,1,12484,1 
.goto Grizzly Hills,15.84,46.72,-1
.goto Grizzly Hills,15.70,46.85,-1
.target Prigmon
step
.use 38149 >>用包里的|T133798:0|t[被洗劫的巨魔木乃伊]把它扔进火里
.complete 12484,1 
.goto Grizzly Hills,16.84,48.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克|r, 等待RP事件
.turnin 12484 >>交任务: |cRXP_FRIENDLY_清理天灾|r
.accept 12029 >>接任务: |cRXP_LOOT_净化天灾巨魔|r
.goto Grizzly Hills,16.67,48.30
.target Mack Fearsen
step
.goto Grizzly Hills,15.73,46.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普雷蒙|r
.accept 12483 >>接任务: |cRXP_LOOT_蘑菇汤！|r
.target Prigmon
step
#completewith IEyes
#label FrozenMojo
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3,70,0
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3
>>杀死该区域的|cRXP_ENEMY_Ice Trolls|r。为|cRXP_Loot_5冻结Mojo|r掠夺它们
.collect 35799,5 
.mob Drakkari Shaman
.mob Drakkari Warrior
step
#completewith next
>>杀死该区域的|cRXP_ENEMY_Ice Serpents|r。掠夺他们的|cRXP_Loot_Eyes |r
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3
.complete 12483,1 
.mob Ice Serpent
step
.goto Grizzly Hills,10.70,64.19,60,0
.goto Grizzly Hills,11.1,59.3
>>在地上掠夺|cRXP_PICK_冷冻蘑菇|r
.complete 12483,2 
step
#label IEyes
>>杀死该区域的|cRXP_ENEMY_Ice Serpents|r。掠夺他们的|cRXP_Loot_Eyes |r
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3,70,0
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3
.complete 12483,1 
.mob Ice Serpent
step
#completewith end
#label FrozenMojo3
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3,70,0
.goto Grizzly Hills,13.7,58.1,70,0
.goto Grizzly Hills,14.2,62.3,70,0
.goto Grizzly Hills,10.9,62.4,70,0
.goto Grizzly Hills,11.7,59.3
>>杀死该区域的|cRXP_ENEMY_Ice Trolls|r。为|cRXP_Loot_5冻结Mojo|r掠夺它们
.collect 35799,5 
.mob Drakkari Shaman
.mob Drakkari Warrior
step
#requires FrozenMojo3
.goto Grizzly Hills,13.24,60.87
>>使用|T134812:0|t[德拉库鲁灵药]在德拉克津废墟的破碎建筑顶部召唤|cRXP_FRIENDLY_Drakuru|r
.use 35797 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达库鲁|r
.turnin 11991 >>交任务: |cRXP_FRIENDLY_解读象形文字|r
.accept 12007 >>接任务: |cRXP_LOOT_必要的牺牲|r
.target Drakuru
step
#completewith next
.goto Grizzly Hills,16.8,37.0,0
.goto Grizzly Hills,13.6,38.7,0
.goto Grizzly Hills,12.6,36.9,0
.goto Grizzly Hills,13.8,34.8,0
.goto Grizzly Hills,17.1,34.4,0
>>掠夺散布在Zeb'Halak各处的|cRXP_PICK_小型绿色植物|r
.complete 12483,3 
step
#completewith end
#label ZimBom
.goto Grizzly Hills,14.50,38.01
>>杀死|cRXP_ENEMY_Warlord Zim'Bo|r。掠夺他的|cRXP_Loot_Mojo|r
.collect 35836,1 
.mob Warlord Zim'bo
step
#requires ZimBom
.goto Grizzly Hills,16.0,28.7
.use 35908 >>在您的库存中使用|T132798:0|t[Mack‘s Dark Grog]。垃圾邮件将其扔到该区域的|cRXP_ENEMY_Undead Trolls|r上
>>T132798:0|tGrog|cRXP_WARN_要求你从至少30码外扔出去|r，但它可以在战斗中使用 << !Mage !Hunter !Warlock
>>|T132798:0|tGrog|cRXP_WARN_要求你从至少30码外扔出去|r。尽可能多地召集暴徒，|T135848:0|t杀死他们，然后在射程内对他们使用|T1327980:0|t格罗格 << Mage
>>|T132798:0|tGrog|cRXP_WARN_要求你从至少30码外扔它|r。尽可能多地召集暴徒和你的宠物，然后在射程内对他们使用|T1327980:0|tGrg << Hunter/Warlock
.complete 12029,1 
step
#completewith Sacrifices
.goto Grizzly Hills,16.8,37.0,0
.goto Grizzly Hills,13.6,38.7,0
.goto Grizzly Hills,12.6,36.9,0
.goto Grizzly Hills,13.8,34.8,0
.goto Grizzly Hills,17.1,34.4,0
>>掠夺散布在Zeb'Halak各处的|cRXP_PICK_小型绿色植物|r
.complete 12483,3 
step
.goto Grizzly Hills,17.96,36.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Statue|r at the top of Zeb'Halak. Loot it for the |cRXP_LOOT_Eye of the Prophets|r
.complete 12007,1 
.skipgossip
step
#label Sacrifices
.goto Grizzly Hills,17.42,36.36
>>在楼梯顶部使用|T134812:0|t[Drakuru的灵丹妙药]
.use 35797 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达库鲁|r
.turnin 12007 >>交任务: |cRXP_FRIENDLY_必要的牺牲|r
.accept 12042 >>接任务: |cRXP_LOOT_古树精华宝石|r
.target Drakuru
step
.goto Grizzly Hills,17.1,34.4,70,0
.goto Grizzly Hills,16.8,37.0,70,0
.goto Grizzly Hills,13.6,38.7,70,0
.goto Grizzly Hills,12.6,36.9,70,0
.goto Grizzly Hills,13.8,34.8
>>掠夺散布在Zeb'Halak各处的|cRXP_PICK_小型绿色植物|r
.complete 12483,3 
step
>>返回Granite Springs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普雷蒙|r, |cRXP_FRIENDLY_马克|r
.turnin 12483 >>交任务: |cRXP_FRIENDLY_蘑菇汤！|r
.accept 12190 >>接任务: |cRXP_LOOT_跟我的小朋友打招呼|r
.goto Grizzly Hills,15.73,46.69
.turnin 12029 >>交任务: |cRXP_FRIENDLY_净化天灾巨魔|r


.goto Grizzly Hills,16.67,48.30
.target Prigmon
.target Mack Fearsen
step
#label pt2start
>>Travel to Silverbrook
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Ducal, |cRXP_FRIENDLY_瑟尔基|r, |cRXP_FRIENDLY_卡娅|r
.turnin 12295 >>交任务: |cRXP_FRIENDLY_外交活动|r
.goto Grizzly Hills,26.41,35.70
.accept 12299 >>接任务: |cRXP_LOOT_北边的敌人|r
.goto Grizzly Hills,26.48,35.78
.accept 12307 >>接任务: |cRXP_LOOT_破狼草|r
.goto Grizzly Hills,25.61,33.30
.target Envoy Ducal
.target Sergei
.target Katja
step
#completewith next
.goto Grizzly Hills,23.9,37.7,0
.goto Grizzly Hills,24.4,29.7,0
.goto Grizzly Hills,22.5,30.7,0
>>单击地面上的|cRXP_PICK_Roots|r
.complete 12307,1 
step
.goto Grizzly Hills,24.05,31.18,60,0
.goto Grizzly Hills,23.90,36.26
>>杀死|cRXP_ENEMY_征服该地区的掠夺者|r
.complete 12299,1 
.mob Conquest Hold Marauder
step
.goto Grizzly Hills,24.22,37.23,60,0
.goto Grizzly Hills,28.29,38.63,60,0
.goto Grizzly Hills,30.09,34.83
>>单击地面上的|cRXP_PICK_Roots|r
.complete 12307,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡娅|r, |cRXP_FRIENDLY_瑟尔基|r
.turnin 12307 >>交任务: |cRXP_FRIENDLY_破狼草|r
.goto Grizzly Hills,25.61,33.30
.turnin 12299 >>交任务: |cRXP_FRIENDLY_北边的敌人|r
.accept 12300 >>接任务: |cRXP_LOOT_勇气的试炼|r
.goto Grizzly Hills,26.48,35.78
.target Sergei
.target Katja
step
#label pt2end
.goto Grizzly Hills,21.93,29.92
>>杀死围绕|cRXP_FRIENDLY_Captured Trapper|r的|cRXP_ENEMY_Orcs|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Trapper|r after
.complete 12300,1 
.turnin 12300 >>交任务: |cRXP_FRIENDLY_勇气的试炼|r
.accept 12302 >>接任务: |cRXP_LOOT_萨莎的警告|r
.target Captured Trapper
.mob Conquest Hold Marauder
step << skip
.goto Grizzly Hills,19.4,27.7
.use 35908 >>在您的库存中使用Mack’s Dark Grog。垃圾扔给该地区的不死巨魔
.complete 12038,1 
step
.goto Grizzly Hills,26.46,31.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_笼中的囚犯|r, 他在里面
.turnin 12302 >>交任务: |cRXP_FRIENDLY_萨莎的警告|r
.accept 12308 >>接任务: |cRXP_LOOT_逃离银溪镇|r
.target Caged Prisoner
step
#completewith next
.goto Grizzly Hills,26.25,31.10
.vehicle >>跟随|cRXP_FRIENDLY_Alliance Scout|r到达马匹处。出生时上车|cRXP_FRIENDLY_Ducal的马|r
.target Freed Alliance Scout
.target Ducal's Horse
step
.goto Grizzly Hills,32.50,59.04
>>冷却时使用|T132120:0|t“Gallop”（2）。当暴徒靠近你时，使用|T136105:0|t“Trample”（3）。使用|T135809:0|t“燃烧的油”（1）杀死追赶你的|cRXP_ENEMY_Worgen|r
.complete 12308,1 
.mob Silverbrook Worgen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Drake, |cRXP_FRIENDLY_杜蒙特中尉|r
.turnin 12255 >>交任务: |cRXP_FRIENDLY_沃德伦的领主|r
.goto Grizzly Hills,32.42,59.94
.turnin 12308 >>交任务: |cRXP_FRIENDLY_逃离银溪镇|r
.accept 12310 >>接任务: |cRXP_LOOT_快速反应|r
.goto Grizzly Hills,31.83,60.16
.target Woodsman Drake
.target Lieutenant Dumont
step
#sticky
#label SilverbrookH
.goto Grizzly Hills,35.6,68.1,0,0
>>杀死该区域的|cRXP_ENEMY_Silverbrook猎人|r
.complete 12310,1 
.mob Silverbrook Hunter
step
.goto Grizzly Hills,36.26,67.85
>>前往森林边缘哨所
.use 36940 >>杀死|cRXP_ENEMY_Vladek|r。抢他的|cRXP_Loot_Journal|r。点击你包里的|T133741:0|t[Michhail的日记]
.complete 12310,2 
.collect 36940,1,12105,1 
.accept 12105 >>接任务: |cRXP_LOOT_坠入黑暗|r
.mob Vladek
step
#requires SilverbrookH
>>返回Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜蒙特中尉|r, |cRXP_FRIENDLY_圣职者塞瑞恩|r
.turnin 12105 >>交任务: |cRXP_FRIENDLY_坠入黑暗|r
.accept 12109 >>接任务: |cRXP_LOOT_再次向格里安·斯托曼报到|r
.turnin 12310 >>交任务: |cRXP_FRIENDLY_快速反应|r
.goto Grizzly Hills,31.83,60.16
.accept 12219 >>接任务: |cRXP_LOOT_倒下的世界之树|r
.accept 12220 >>接任务: |cRXP_LOOT_黑暗的影响|r
.goto Grizzly Hills,31.16,59.47
.target Lieutenant Dumont
.target Hierophant Thayreen
step << skip
.goto Grizzly Hills,16.7,48.3
>>乘车前往花岗岩泉
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克|r
.turnin 12038 >>交任务: |cRXP_FRIENDLY_净化天灾巨魔|r
.target Mack Fearsen
step
#completewith Tears
.goto Grizzly Hills,27.1,46.0,0
.goto Grizzly Hills,34.6,50.1,0
.goto Grizzly Hills,38.9,49.3,0
>>杀死Vordrassil部分的|cRXP_ENEMY_Ooze|r。掠夺它们以获取|cRXP_OOT_Slime Samples|r
.complete 12219,1 
.mob Entropic Ooze
step
.goto Grizzly Hills,28.6,45.0,25,0
.goto Grizzly Hills,30.19,43.93
.use 37173 >>进入树上的洞。走到里面，最后用你包里的|T134125:0|t[Geomancer's Orb]
.complete 12220,3 
step
#label Tears
.goto Grizzly Hills,33.2,48.3,25,0
.goto Grizzly Hills,32.34,46.16
>>把树留在Vordrassil的眼泪
.use 37173 >>进入树上的洞。走到里面，最后用你包里的|T134125:0|t[Geomancer's Orb]
.complete 12220,2 
step
.goto Grizzly Hills,38.29,49.86,60,0
.goto Grizzly Hills,39.17,51.82,60,0
.goto Grizzly Hills,41.15,50.21,60,0
.goto Grizzly Hills,38.97,48.15
>>把树留在Vordrassil’s Limb
>>杀死Vordrassil部分的|cRXP_ENEMY_Ooze|r。掠夺它们以获取|cRXP_OOT_Slime Samples|r
.complete 12219,1 
.mob Entropic Ooze
step
.goto Grizzly Hills,40.8,52.1,25,0
.goto Grizzly Hills,41.16,54.27
.use 37173 >>进入树上的洞。走到里面，最后用你包里的|T134125:0|t[Geomancer's Orb]
.complete 12220,1 
step
#completewith next
.goto Grizzly Hills,40.93,54.90
.goto Grizzly Hills,33.75,56.64,70 >>|cRXP_WARN_跳到蘑菇上|r。|cRXP_WARN_注销|r，|cRXP-WARN_然后重新登录|r
.link https://www.youtube.com/watch?v=f_RtIujejaI >>单击此处获取指南
step
.goto Grizzly Hills,31.16,59.47
>>返回Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_圣职者塞瑞恩|r
.turnin 12219 >>交任务: |cRXP_FRIENDLY_倒下的世界之树|r
.turnin 12220 >>交任务: |cRXP_FRIENDLY_黑暗的影响|r
.accept 12246 >>接任务: |cRXP_LOOT_可能的关联|r
.accept 12247 >>接任务: |cRXP_LOOT_乌索克的孩子|r
.target Hierophant Thayreen
step
#completewith next
.goto Grizzly Hills,53.1,55.4,0
>>杀死区域中的|cRXP_ENEMY_Furbolgs|r。掠夺他们的|cRXP_Loot_Blood|r
.complete 12246,1 
.mob Frostpaw Warrior
.mob Frostpaw Shaman
step
.goto Grizzly Hills,48.37,58.40,30,0
.goto Grizzly Hills,48.07,58.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥索恩|r
.complete 12247,1 
.skipgossip
.target Orsonn
step
#completewith next
.goto Grizzly Hills,53.1,55.4,60,0
.goto Grizzly Hills,66.4,59.3,0
>>杀死区域中的|cRXP_ENEMY_Furbolgs|r。掠夺他们的|cRXP_Loot_Blood|r
>>|cRXP_WARN_您将获得剩余的|r|cRXP_OOT_Blood|r|cRXP_WARN_Water|r
.complete 12246,1 
.mob Frostpaw Warrior
.mob Frostpaw Shaman
step
.goto Grizzly Hills,66.79,61.86,30,0
.goto Grizzly Hills,66.89,62.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科蒂安|r
.complete 12247,2 
.skipgossip
.target Kodian
step
.goto Grizzly Hills,66.5,53.5
>>杀死区域中的|cRXP_ENEMY_Furbolgs|r。掠夺他们的|cRXP_Loot_Blood|r
.complete 12246,1 
.mob Redfang Elder
.mob Redfang Hunter
step << Druid
#completewith DruidTrain1
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <74,1
step << Druid
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 53307 >>训练你的职业技能
.xp <74,1
.target Loganaar
step << Druid
#label DruidTrain1
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48440 >>训练你的职业技能
.xp <75,1
.target Loganaar
step << DK
#completewith DKTrain1
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <74,1
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49929 >>训练你的职业技能
.xp <74,1
.target Amal'thazad
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49923 >>训练你的职业技能
.xp <75,1
.target Amal'thazad
step << DK
#label DKTrain1
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49894 >>训练你的职业技能
.xp <76,1
.target Amal'thazad
step << Mage
#completewith MageTrain1
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <74,1
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42939 >>训练你的职业技能
.xp <74,1
.target Elsharin
.target Jennea Cannon
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42955 >>训练你的职业技能
.xp <75,1
.target Elsharin
.target Jennea Cannon
step << Mage
#label MageTrain1
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42920 >>训练你的职业技能
.xp <76,1
.target Elsharin
.target Jennea Cannon
step
#completewith next
.hs >>Hearth to Amberpine旅馆
step
.goto Grizzly Hills,31.16,59.47
>>返回Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_圣职者塞瑞恩|r
.turnin 12246 >>交任务: |cRXP_FRIENDLY_可能的关联|r
.turnin 12247 >>交任务: |cRXP_FRIENDLY_乌索克的孩子|r
.accept 12248 >>接任务: |cRXP_LOOT_沃达希尔的树苗|r
.accept 12250 >>接任务: |cRXP_LOOT_沃达希尔的种子|r
.target Hierophant Thayreen
step
#completewith next
.goto Grizzly Hills,52.6,46.1,0
.goto Grizzly Hills,54.1,41.8,0
.goto Grizzly Hills,52.9,38.1,0
>>织机|cRXP_PICK_Seeds |r在Vordrassil内但主要在Vordrossil外
.complete 12250,1 
step
.goto Grizzly Hills,50.5,46.0,45,0
.goto Grizzly Hills,50.7,42.9
.use 37306 >>输入Vordrassil|cRXP_WARN_跳到树的底部|r，然后使用底部的|T135432:0|t[Verdant Torch]
.complete 12248,1 
step
.goto Grizzly Hills,52.6,46.1,60,0
.goto Grizzly Hills,54.1,41.8,60,0
.goto Grizzly Hills,52.9,38.1
>>退出Vordrassil
>>织机|cRXP_PICK_Seeds |r在Vordrassil内但主要在Vordrossil外
.complete 12250,1 
step
#questguide
#completewith next
.hs >>Hearth to Amberpine旅馆
.cooldown item,6948,>2
step
#questguide
.goto Grizzly Hills,31.16,59.47
>>返回Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_圣职者塞瑞恩|r
.turnin 12248 >>交任务: |cRXP_FRIENDLY_沃达希尔的树苗|r
.turnin 12250 >>交任务: |cRXP_FRIENDLY_沃达希尔的种子|r
.accept 12249 >>接任务: |cRXP_LOOT_乌索克，巨熊之神|r
.target Hierophant Thayreen
step
#questguide
#pvp
>>前往蓝天伐木场
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈斯曼中士|r, |cRXP_FRIENDLY_塞尼普斯|r, |cRXP_FRIENDLY_皮普斯维克|r, |cRXP_FRIENDLY_蕾安娜|r
>>|cRXP_WARN_此任务|r（|cRXP_WARN_并将其保存在您的任务日志中|r）|cRXP_WARN_标记您进行PVP|r。如果您愿意，请跳过它|r
.accept 12289 >>接任务: |cRXP_LOOT_乘胜追击|r
.goto Grizzly Hills,39.36,43.87
.accept 12244 >>接任务: |cRXP_LOOT_翻修伐木机|r
.goto Grizzly Hills,39.54,43.57
.accept 12268 >>接任务: |cRXP_LOOT_伐木机零件|r
.goto Grizzly Hills,39.64,43.38
.accept 12296 >>接任务: |cRXP_LOOT_生存或是死亡|r
.goto Grizzly Hills,40.47,42.66
.target Sergeant Hartsman
.target Synipus
.target Pipthwack
.target Rheanna
step
#questguide
#pvp
#completewith Dudes
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>掠夺您在该区域中看到的|cRXP_PICK_Cogs|r、|cRXP_PICK_Sprockets|r和|cRX_PICK_Springs|r
.complete 12268,1 
.complete 12268,2 
.complete 12268,3 
.isOnQuest 12268
step
#questguide
#pvp
#completewith Infantry
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>杀死该区域的|cRXP_ENEMY_受伤的滑雪者|r（或|cRXX_ENEMY_Horde Players |r）
.complete 12289,1 
.isOnQuest 12289
.mob Wounded Skirmisher
step
#questguide
#pvp
#completewith Engineer
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,39.6,43.5,0
>>输入一个|cRXP_FRIENDLY_Broken-down Shreder|r。使用|T136106:0|t“Overlock”（3）可运行得更快。
>>将其带回|cRXP_FRIENDLY_Pipthwack|r并使用|T134248:0|t“碎纸机传送”（4）。
.complete 12244,1 
.isOnQuest 12244
.target Broken-down Shredder
.target Pipthwack
step
#questguide
#pvp
#label Infantry
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
.use 37576 >>在|cRXP_FRIENDLY_Wounded Westfall Infantries|r.上使用包中的|T133686:0|t[更新绷带]
.complete 12296,1 
.isOnQuest 12296
.target Wounded Westfall Infantry
step
#questguide
#pvp
#label Dudes
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>杀死该区域的|cRXP_ENEMY_受伤的滑雪者|r（或|cRXX_ENEMY_Horde Players |r）
.complete 12289,1 
.isOnQuest 12289
.mob Wounded Skirmisher
step
#questguide
#pvp
#label Engineer
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>掠夺您在该区域中看到的|cRXP_PICK_Cogs|r、|cRXP_PICK_Sprockets|r和|cRX_PICK_Springs|r
.complete 12268,1 
.complete 12268,2 
.complete 12268,3 
.isOnQuest 12268
step
#questguide
#pvp
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,39.6,43.5
>>输入一个|cRXP_FRIENDLY_Broken-down Shreder|r。使用|T136106:0|t“Overlock”（3）可运行得更快。
>>将其带回|cRXP_FRIENDLY_Pipthwack|r并使用|T134248:0|t“碎纸机传送”（4）。
.complete 12244,1 
.isOnQuest 12244
.target Broken-down Shredder
.target Pipthwack
step
#questguide
#pvp
#label PiecesP
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮普斯维克|r
.turnin 12268 >>交任务: |cRXP_FRIENDLY_伐木机零件|r
.goto Grizzly Hills,39.64,43.38,-1
.isQuestComplete 12268
.target Pipthwack
step
#questguide
#pvp
#label ShredderR
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尼普斯|r
.turnin 12244 >>交任务: |cRXP_FRIENDLY_翻修伐木机|r
.goto Grizzly Hills,39.54,43.57,-1
.isQuestComplete 12244
.target Synipus
step
#questguide
#pvp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈斯曼中士|r
.turnin 12289 >>交任务: |cRXP_FRIENDLY_乘胜追击|r
.goto Grizzly Hills,39.36,43.87,-1
.isQuestComplete 12289
.target Sergeant Hartsman
step
#questguide
#pvp
#requires ShredderR
step
#questguide
#pvp
#requires PiecesP
.goto Grizzly Hills,40.47,42.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蕾安娜|r
.turnin 12296 >>交任务: |cRXP_FRIENDLY_生存或是死亡|r
.isQuestComplete 12296
.target Rheanna
step
#questguide
#completewith end
>>放弃你无法完成的PVP任务
.abandon 12268 >>废弃件零件
.abandon 12244 >>废弃碎纸机维修
.abandon 12289 >>在他们倒下时放弃踢腿
.abandon 12296 >>放弃生命或死亡
step
#questguide
.goto Grizzly Hills,38.1,32.0,30,0
.goto Grizzly Hills,36.95,32.36
>>|cRXP_WARN_登上蓝天伐木场北侧的水塔|r
>>进入顶部的小房间，掠夺地面上的|cRXP_PICK_gem|r
.turnin 12042 >>交任务: |cRXP_FRIENDLY_古树精华宝石|r
.accept 12802 >>接任务: |cRXP_LOOT_尽在掌控|r
step
#questguide
#completewith end
#label DesperateMojo
.goto Grizzly Hills,43.41,28.26,60,0
.goto Grizzly Hills,44.89,30.56,60,0
.goto Grizzly Hills,46.76,28.20,60,0
.goto Grizzly Hills,44.87,25.77
>>杀死该区域的|cRXP_ENEMY_Drakkari巨魔|r。掠夺他们的|cRXP_Loot_Mojo|r
>>|cRXP_ENEMY_Drakkari巫医|r|cRXP_WARN_不要放弃它|r
.collect 36743,5 
.mob Drakkari Defender
.mob Injured Drakkari Refugee
step
#questguide
#requires DesperateMojo
.goto Grizzly Hills,45.00,28.36
>>在巴西使用|T134812:0|t[Drakuru的灵丹妙药]
.use 35797 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达库鲁|r
.turnin 12802 >>交任务: |cRXP_FRIENDLY_尽在掌控|r
.accept 12068 >>接任务: |cRXP_LOOT_灰尘之声|r
.target Drakuru
step
#questguide
.goto Grizzly Hills,49.20,34.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾米莉|r
.accept 12027 >>接任务: |cRXP_LOOT_小毛球的冒险|r

.target Emily
step
#questguide
.goto Grizzly Hills,52.4,34.3,50,0
.goto Grizzly Hills,53.81,33.34
>>护送|cRXP_FRIENDLY_Emily|r
.complete 12027,1 
.target Emily
step
#questguide
#Level 74
>>前往Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侍从皮尔斯|r, Walter, Gryan
.accept 12414 >>接任务: |cRXP_LOOT_顺手牵马|r
.goto Grizzly Hills,59.09,26.61
.turnin 12027 >>交任务: |cRXP_FRIENDLY_小毛球的冒险|r
.goto Grizzly Hills,59.08,26.48
.turnin 12109 >>交任务: |cRXP_FRIENDLY_再次向格里安·斯托曼报到|r
.accept 12158 >>接任务: |cRXP_LOOT_空石矿洞|r
.accept 11998 >>接任务: |cRXP_LOOT_灵活的手段|r
.accept 12770 >>接任务: |cRXP_LOOT_资源调配|r
.goto Grizzly Hills,59.42,26.00
.isQuestComplete 12027
.target Squire Percy
.target Squire Walter
.target Captain Gryan Stoutmantle
step
#questguide
>>前往Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侍从皮尔斯|r, Walter, Gryan
.accept 12414 >>接任务: |cRXP_LOOT_顺手牵马|r
.goto Grizzly Hills,59.09,26.61
.turnin 12027 >>交任务: |cRXP_FRIENDLY_小毛球的冒险|r
.goto Grizzly Hills,59.08,26.48
.turnin 12109 >>交任务: |cRXP_FRIENDLY_再次向格里安·斯托曼报到|r
.accept 12158 >>接任务: |cRXP_LOOT_空石矿洞|r
.accept 11998 >>接任务: |cRXP_LOOT_灵活的手段|r
.goto Grizzly Hills,59.42,26.00
.isQuestComplete 12027
.target Squire Percy
.target Squire Walter
.target Captain Gryan Stoutmantle
step
#questguide
#Level 74
>>前往Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侍从皮尔斯|r, Gryan
.accept 12414 >>接任务: |cRXP_LOOT_顺手牵马|r
.goto Grizzly Hills,59.09,26.61
.turnin 12109 >>交任务: |cRXP_FRIENDLY_再次向格里安·斯托曼报到|r
.accept 12158 >>接任务: |cRXP_LOOT_空石矿洞|r
.accept 11998 >>接任务: |cRXP_LOOT_灵活的手段|r
.accept 12770 >>接任务: |cRXP_LOOT_资源调配|r
.goto Grizzly Hills,59.42,26.00
.target Squire Percy
.target Captain Gryan Stoutmantle
step
#questguide
>>前往Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侍从皮尔斯|r, Gryan
.accept 12414 >>接任务: |cRXP_LOOT_顺手牵马|r
.goto Grizzly Hills,59.09,26.61
.turnin 12109 >>交任务: |cRXP_FRIENDLY_再次向格里安·斯托曼报到|r
.accept 12158 >>接任务: |cRXP_LOOT_空石矿洞|r
.accept 11998 >>接任务: |cRXP_LOOT_灵活的手段|r
.goto Grizzly Hills,59.42,26.00
.target Squire Percy
.target Captain Gryan Stoutmantle
step
#Level 74
>>前往Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
.turnin 12109 >>交任务: |cRXP_FRIENDLY_再次向格里安·斯托曼报到|r
.accept 12158 >>接任务: |cRXP_LOOT_空石矿洞|r
.accept 11998 >>接任务: |cRXP_LOOT_灵活的手段|r
.accept 12770 >>接任务: |cRXP_LOOT_资源调配|r
.goto Grizzly Hills,59.42,26.00
.target Captain Gryan Stoutmantle
step
>>前往Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
.turnin 12109 >>交任务: |cRXP_FRIENDLY_再次向格里安·斯托曼报到|r
.accept 12158 >>接任务: |cRXP_LOOT_空石矿洞|r
.accept 11998 >>接任务: |cRXP_LOOT_灵活的手段|r
.goto Grizzly Hills,59.42,26.00
.target Captain Gryan Stoutmantle
step
#completewith UMiners
.goto Grizzly Hills,59.56,26.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军需官米卡迪|r
.home >>把你的炉石放在威斯特福尔旅营地
.target Quartermaster McCarty
step
.goto Grizzly Hills,59.89,26.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samuel|r
.fp Westfall Brigade Encampment >>获取Westfall Brigade Encampment飞行路线
.target Samuel Clearbook
step
#questguide
.goto Grizzly Hills,61.9,32.1,80,0
.goto Grizzly Hills,59.1,26.6,30,0
.goto Grizzly Hills,61.9,32.1,80,0
.goto Grizzly Hills,59.1,26.6,30,0
.goto Grizzly Hills,61.9,32.1,80,0
.goto Grizzly Hills,59.1,26.6,30,0
.goto Grizzly Hills,61.9,32.1,80,0
.goto Grizzly Hills,59.1,26.6,30,0
.goto Grizzly Hills,61.9,32.1,80,0
.goto Grizzly Hills,59.1,26.6,30,0
.goto Grizzly Hills,61.9,32.1
.use 37707 >>为您必须返回的每个|cRXP_PRIENDLY_Mustang|r，在该区域周围散落一个|cRX_PICK_Wild Carrot|r
.use 37708 >>装备|T132932:0|t[棍子]，然后在|cRXP_FRIENDLY_Highland Mustang|r上使用它-骑回Westfall Bridge围栏中的|cRXP-FRIENDLY_Squire Percy |r，然后使用|T132226:0|t“移交缰绳”（1）|cRXP_WARN_你不能在骑马时掠夺胡萝卜。
.complete 12414,1 
.target Highland Mustang
.target Squire Percy

step
#questguide
.goto Grizzly Hills,59.09,26.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侍从皮尔斯|r
.turnin 12414 >>交任务: |cRXP_FRIENDLY_顺手牵马|r
.target Squire Percy
step
#questguide
#completewith next
.goto Grizzly Hills,51.65,26.79,40,0
.goto Grizzly Hills,51.70,25.75,40,0
.goto Grizzly Hills,50.61,24.29,40 >>沿着这条路走到|cRXP_FRIENDLY_Tur Ragepaw|r
step
#questguide
.goto Grizzly Hills,52.62,24.06,10,0
.goto Grizzly Hills,52.62,24.06,0
.goto Grizzly Hills,52.07,18.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图尔·怒爪|r
>>选择你想让他在杀死时扮演的角色|cRXP_ENEMY_Ursoc|r。|cRXD_WARN_Bear=Tank|r，|cRXT_WARN_Subdue=DPS|r，| cRXP_WARN_Healer=Healer|r
>>跟随他走向|cRXP_ENEMY_Ursoc|r。召唤时杀死|cRXD_ENEMY_Urlsoc|r和|cRXP_ENEMY_Blood|r
>>在|cRXP_ENEMY_Ursoc|r的尸体上使用|T133849:0|t[Vordrassil的净化灰烬]
>>|cRXP_WARN_这个任务很难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
.use 37307
.complete 12249,1 
.mob Ursoc
.mob Blood of the Old God
.isOnQuest 12249
step
.goto Grizzly Hills,55.13,23.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派特洛夫|r
.turnin 12158 >>交任务: |cRXP_FRIENDLY_空石矿洞|r
.accept 12159 >>接任务: |cRXP_LOOT_无法安息的灵魂|r
.target Petrov
step
#label UMiners
.goto Grizzly Hills,54.0,22.8,70,0
.goto Grizzly Hills,53.3,19.8
.use 37932 >>杀死|cRXP_ENEMY_Undead Miner|r。用你袋子里的|T134249:0|t[矿工之灯]放在他们的尸体上休息
.complete 12159,1 
.mob Undead Miner
step
.goto Grizzly Hills,55.13,23.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派特洛夫|r
.turnin 12159 >>交任务: |cRXP_FRIENDLY_无法安息的灵魂|r
.accept 12160 >>接任务: |cRXP_LOOT_往日的名字|r
.target Petrov
step
>>返回Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Gryan, |cRXP_FRIENDLY_列兵艾伦|r
.turnin 12160 >>交任务: |cRXP_FRIENDLY_往日的名字|r
.goto Grizzly Hills,59.42,26.00
.accept 12161 >>接任务: |cRXP_LOOT_盲眼卢娜|r
.goto Grizzly Hills,59.17,26.18
.target Captain Gryan Stoutmantle
.target Private Arun
step
.goto Grizzly Hills,44.04,47.94
>>Travel to Ruuna's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盲眼卢娜|r
.turnin 12161 >>交任务: |cRXP_FRIENDLY_盲眼卢娜|r
.accept 12328 >>接任务: |cRXP_LOOT_卢娜的要求|r
.target Ruuna the Blind
step
#pvp
>>前往蓝天伐木场
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈斯曼中士|r, |cRXP_FRIENDLY_塞尼普斯|r, |cRXP_FRIENDLY_皮普斯维克|r, |cRXP_FRIENDLY_蕾安娜|r
>>|cRXP_WARN_此任务|r（|cRXP_WARN_并将其保存在您的任务日志中|r）|cRXP_WARN_标记您进行PVP|r。如果您愿意，请跳过它|r
.accept 12289 >>接任务: |cRXP_LOOT_乘胜追击|r
.goto Grizzly Hills,39.36,43.87
.accept 12244 >>接任务: |cRXP_LOOT_翻修伐木机|r
.goto Grizzly Hills,39.54,43.57
.accept 12268 >>接任务: |cRXP_LOOT_伐木机零件|r
.goto Grizzly Hills,39.64,43.38
.accept 12296 >>接任务: |cRXP_LOOT_生存或是死亡|r
.goto Grizzly Hills,40.47,42.66
.target Sergeant Hartsman
.target Synipus
.target Pipthwack
.target Rheanna
step
#pvp
#completewith Dudes
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>掠夺您在该区域中看到的|cRXP_PICK_Cogs|r、|cRXP_PICK_Sprockets|r和|cRX_PICK_Springs|r
.complete 12268,1 
.complete 12268,2 
.complete 12268,3 
.isOnQuest 12268
step
#pvp
#completewith Infantry
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>杀死该区域的|cRXP_ENEMY_受伤的滑雪者|r（或|cRXX_ENEMY_Horde Players |r）
.complete 12289,1 
.isOnQuest 12289
.mob Wounded Skirmisher
step
#pvp
#completewith Engineer
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,39.6,43.5,0
>>输入一个|cRXP_FRIENDLY_Broken-down Shreder|r。使用|T136106:0|t“Overlock”（3）可运行得更快。
>>将其带回|cRXP_FRIENDLY_Pipthwack|r并使用|T134248:0|t“碎纸机传送”（4）。
.complete 12244,1 
.isOnQuest 12244
.target Broken-down Shredder
.target Pipthwack
step
#pvp
#label Infantry
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
.use 37576 >>在|cRXP_FRIENDLY_Wounded Westfall Infantries|r.上使用包中的|T133686:0|t[更新绷带]
.complete 12296,1 
.isOnQuest 12296
.target Wounded Westfall Infantry
step
#pvp
#label Dudes
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>杀死该区域的|cRXP_ENEMY_受伤的滑雪者|r（或|cRXX_ENEMY_Horde Players |r）
.complete 12289,1 
.isOnQuest 12289
.mob Wounded Skirmisher
step
#pvp
#label Engineer
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1
>>掠夺您在该区域中看到的|cRXP_PICK_Cogs|r、|cRXP_PICK_Sprockets|r和|cRX_PICK_Springs|r
.complete 12268,1 
.complete 12268,2 
.complete 12268,3 
.isOnQuest 12268
step
#pvp
.goto Grizzly Hills,33.8,40.9,70,0
.goto Grizzly Hills,35.7,38.1,70,0
.goto Grizzly Hills,39.6,43.5
>>输入一个|cRXP_FRIENDLY_Broken-down Shreder|r。使用|T136106:0|t“Overlock”（3）可运行得更快。
>>将其带回|cRXP_FRIENDLY_Pipthwack|r并使用|T134248:0|t“碎纸机传送”（4）。
.complete 12244,1 
.isOnQuest 12244
.target Broken-down Shredder
.target Pipthwack
step
#pvp
#label PiecesP
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮普斯维克|r
.turnin 12268 >>交任务: |cRXP_FRIENDLY_伐木机零件|r
.goto Grizzly Hills,39.64,43.38,-1
.isQuestComplete 12268
.target Pipthwack
step
#pvp
#label ShredderR
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尼普斯|r
.turnin 12244 >>交任务: |cRXP_FRIENDLY_翻修伐木机|r
.goto Grizzly Hills,39.54,43.57,-1
.isQuestComplete 12244
.target Synipus
step
#pvp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈斯曼中士|r
.turnin 12289 >>交任务: |cRXP_FRIENDLY_乘胜追击|r
.goto Grizzly Hills,39.36,43.87,-1
.isQuestComplete 12289
.target Sergeant Hartsman
step
#pvp
#requires ShredderR
step
#pvp
#requires PiecesP
.goto Grizzly Hills,40.47,42.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蕾安娜|r
.turnin 12296 >>交任务: |cRXP_FRIENDLY_生存或是死亡|r
.isQuestComplete 12296
.target Rheanna
step
#completewith end
>>放弃你无法完成的PVP任务
.abandon 12268 >>废弃件零件
.abandon 12244 >>废弃碎纸机维修
.abandon 12289 >>在他们倒下时放弃踢腿
.abandon 12296 >>放弃生命或死亡
step
.goto Grizzly Hills,38.1,32.0,30,0
.goto Grizzly Hills,36.95,32.36
>>|cRXP_WARN_登上蓝天伐木场北侧的水塔|r
>>进入顶部的小房间，掠夺地面上的|cRXP_PICK_gem|r
.turnin 12042 >>交任务: |cRXP_FRIENDLY_古树精华宝石|r
.accept 12802 >>接任务: |cRXP_LOOT_尽在掌控|r
step
#completewith end
#label DesperateMojo2
.goto Grizzly Hills,43.41,28.26,60,0
.goto Grizzly Hills,44.89,30.56,60,0
.goto Grizzly Hills,46.76,28.20,60,0
.goto Grizzly Hills,44.87,25.77
>>杀死该区域的|cRXP_ENEMY_Drakkari巨魔|r。掠夺他们的|cRXP_Loot_Mojo|r
>>|cRXP_ENEMY_Drakkari巫医|r|cRXP_WARN_不要放弃它|r
.collect 36743,5 
.mob Drakkari Defender
.mob Injured Drakkari Refugee
step
#requires DesperateMojo2
.goto Grizzly Hills,45.00,28.36
>>在巴西使用|T134812:0|t[Drakuru的灵丹妙药]
.use 35797 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达库鲁|r
.turnin 12802 >>交任务: |cRXP_FRIENDLY_尽在掌控|r
.accept 12068 >>接任务: |cRXP_LOOT_灰尘之声|r
.target Drakuru
step
.goto Grizzly Hills,52.1,29.7,70,0
.goto Grizzly Hills,46.5,40.8
>>杀死|cRXP_ENEMY_Fern Feeder蛾|r。掠夺它们的|cRXX_Loot_Dust|r
.complete 12328,1 
.mob Fern Feeder Moth
step
.goto Grizzly Hills,44.04,47.94
>>Travel to Ruuna's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盲眼卢娜|r
.turnin 12328 >>交任务: |cRXP_FRIENDLY_卢娜的要求|r
.accept 12327 >>接任务: |cRXP_LOOT_梦游体验|r
.target Ruuna the Blind
step
.goto Grizzly Hills,44.09,47.86
.use 37661 >>使用|T134810:0|t[Gossamer药剂]攻击鲁纳面前的水晶球|cRXP_WARN_等待RP事件|r
.cast 49097
.timer 15,Out of Body Experience RP
.complete 12327,1 
step
.goto Grizzly Hills,44.04,47.94
>>点击关闭|T135876:0|t“灵魂出窍体验”buff
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盲眼卢娜|r
.turnin 12327 >>交任务: |cRXP_FRIENDLY_梦游体验|r
.accept 12329 >>接任务: |cRXP_LOOT_命运与巧合|r
.target Ruuna the Blind
step
.goto Grizzly Hills,57.52,41.26
>>前往白松贸易站
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨莎|r
.turnin 12329 >>交任务: |cRXP_FRIENDLY_命运与巧合|r
.accept 12134 >>接任务: |cRXP_LOOT_萨莎的狩猎|r
.accept 12330 >>接任务: |cRXP_LOOT_阿纳托雷|r
.target Sasha
step
.goto Grizzly Hills,61.46,42.89,60,0
.goto Grizzly Hills,62.40,41.46
>>杀死该区域的|cRXP_ENEMY_Solstice猎人|r。如果需要，你可以把它们放进建筑物里（因为它们是有范围的）|cRXP_WARN_Do NOT kill |r|cRXP_ENEMY_Tatjana|r
.complete 12134,1 
.mob Solstice Hunter
step
#completewith next
.goto Grizzly Hills,62.19,42.39
.vehicle >>在|cRXP_ENEMY_Tatjana|r或|cRXX_ENEMY_Horse|r上使用包中的|T135660:0|t[镇静剂飞镖]
.timer 36,Tatjana Horse RP
>>骑|cRXP_ENEMY_Tatjana的马|r回到|cRXP_FRAINDLY_Sasha|r
.use 37665
.mob Tatjana
.mob Tatjana's Horse
step
.goto Grizzly Hills,57.78,41.66
.use 37665 >>骑|cRXP_ENEMY_Tatjana的马|r回到|cRXP_FRAINDLY_Sasha|r
.complete 12330,1 
step
.goto Grizzly Hills,57.52,41.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨莎|r
.turnin 12134 >>交任务: |cRXP_FRIENDLY_萨莎的狩猎|r
.turnin 12330 >>交任务: |cRXP_FRIENDLY_阿纳托雷|r
.accept 12411 >>接任务: |cRXP_LOOT_姐姐的誓言|r
.target Sasha
step
#questguide
.goto Grizzly Hills,65.7,43.3,25,0
.goto Grizzly Hills,64.80,43.41
>>进入黄昏巢穴（|cRXP_WARN_村庄下方的洞穴|r）
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娅|r, |cRXP_FRIENDLY_萨莎|r
.turnin 12411 >>交任务: |cRXP_FRIENDLY_姐姐的誓言|r
.goto Grizzly Hills,64.80,43.41
.accept 12164 >>接任务: |cRXP_LOOT_狼人的末日|r
.goto Grizzly Hills,64.94,43.43
.target Anya
.target Sasha
step
.goto Grizzly Hills,65.7,43.3,25,0
.goto Grizzly Hills,64.80,43.41
>>进入黄昏巢穴（|cRXP_WARN_村庄下方的洞穴|r）
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娅|r
.turnin 12411 >>交任务: |cRXP_FRIENDLY_姐姐的誓言|r
.target Anya
step
.goto Grizzly Hills,69.10,40.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_休·格兰斯|r
>>购买|T132621:0|tHowlin‘Good Moonshine
.accept 12279 >>接任务: |cRXP_LOOT_熊的美食|r

.complete 11998,1 
.target Hugh Glass
step
#completewith next
.hs >>Hearth回到Westfall旅营地
.cooldown item,6948,>2
step
.goto Grizzly Hills,59.80,27.57
>>返回Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布鲁加尔·石剪|r
.turnin 11998 >>交任务: |cRXP_FRIENDLY_灵活的手段|r
.accept 12002 >>接任务: |cRXP_LOOT_战斗中的兄弟|r
.target Brugar Stoneshear
step
#completewith JournalX
.goto Grizzly Hills,63.3,22.9,0
.goto Grizzly Hills,65.9,23.6,0
>>杀死该区域的|cRXP_ENEMY_Runic战斗傀儡|r
.complete 12002,1 
.mob Runic Battle Golem
step
.goto Grizzly Hills,63.68,23.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_倒下的土灵战士|r
.accept 11981 >>接任务: |cRXP_LOOT_找到库伦！|r
.target Fallen Earthen Warrior
step
#label JournalX
.goto Grizzly Hills,64.29,19.76
>>将|cRXP_PICK_journal|r洗劫一空
.accept 11986 >>接任务: |cRXP_LOOT_破损的日记|r
step
#completewith Golem
#label Pages
.goto Grizzly Hills,64.2,21.7,0
>>从Thor Modan各处散落在地上的卷轴上掠夺|cRXP_PICK_8丢失的日记页|r
.collect 35737,8,11986,1 
step
#completewith Golem
#label Journal
#requires Pages
.goto Grizzly Hills,64.2,21.7,0
.use 35739 >>单击库存中的|T133743:0|t[不完整日记账]，合并丢失的日记账页
.complete 11986,1 
step
#label Golem
.goto Grizzly Hills,63.3,22.9,60,0
.goto Grizzly Hills,65.9,23.6
>>杀死该区域的|cRXP_ENEMY_Runic战斗傀儡|r
.complete 12002,1 
.mob Runic Battle Golem
step
#completewith next
#label MJPage
#loop
.line Grizzly Hills,64.19,20.00,62.95,22.18,63.39,26.41,65.02,26.37,65.90,22.87,64.19,20.00
.goto Grizzly Hills,64.19,20.00,45,0
.goto Grizzly Hills,62.95,22.18,45,0
.goto Grizzly Hills,63.39,26.41,45,0
.goto Grizzly Hills,65.02,26.37,45,0
.goto Grizzly Hills,65.90,22.87,45,0
.goto Grizzly Hills,64.19,20.00,45,0
>>从Thor Modan各处散落在地上的卷轴上掠夺|cRXP_PICK_8丢失的日记页|r
.collect 35737,8,11986,1 
step
#completewith next
.goto Grizzly Hills,59.80,27.57,0,0
.use 35739 >>单击库存中的|T133743:0|t[不完整日记账]，合并丢失的日记账页
.complete 11986,1 
step
#requires MJPage
>>返回Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔森·迪普迪格|r, |cRXP_FRIENDLY_布鲁加尔·石剪|r
.turnin 11986 >>交任务: |cRXP_FRIENDLY_破损的日记|r
.accept 11988 >>接任务: |cRXP_LOOT_符文钥石|r
.goto Grizzly Hills,59.76,27.44
.turnin 12002 >>交任务: |cRXP_FRIENDLY_战斗中的兄弟|r
.accept 12003 >>接任务: |cRXP_LOOT_寻找隧道|r
.goto Grizzly Hills,59.80,27.57
.target Torthen Deepdig
.target Brugar Stoneshear
step
#completewith next
.goto Grizzly Hills,65.1,19.4,0
.goto Grizzly Hills,66.0,17.0,0
.goto Grizzly Hills,68.6,15.3,0
>>杀死该区域的|cRXP_ENEMY_Rune矮人|r。掠夺它们以获取|cRXP_Loot_Keystone碎片|r
.complete 11988,1 
.mob Iron Rune-Shaper
.mob Rune Reaver
step
#label EastB
>>|cRXP_WARN_深入托尔·莫丹的建筑内部|r
.complete 12003,3 
.goto Grizzly Hills,63.37,28.60
.complete 12003,2 
.goto Grizzly Hills,66.79,24.57
.complete 12003,1 
.goto Grizzly Hills,62.64,20.67
step
.goto Grizzly Hills,65.1,19.4,70,0
.goto Grizzly Hills,66.0,17.0,70,0
.goto Grizzly Hills,68.6,15.3
>>杀死该区域的|cRXP_ENEMY_Rune矮人|r。掠夺它们以获取|cRXP_Loot_Keystone碎片|r
.complete 11988,1 
.mob Iron Rune-Shaper
.mob Rune Reaver
step
>>返回Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔森·迪普迪格|r, |cRXP_FRIENDLY_布鲁加尔·石剪|r
.turnin 11988 >>交任务: |cRXP_FRIENDLY_符文钥石|r
.accept 11993 >>接任务: |cRXP_LOOT_符文中的预言|r
.goto Grizzly Hills,59.76,27.44
.turnin 12003 >>交任务: |cRXP_FRIENDLY_寻找隧道|r
.accept 12010 >>接任务: |cRXP_LOOT_奥尔隆德的命运|r
.goto Grizzly Hills,59.80,27.57
.target Torthen Deepdig
.target Brugar Stoneshear
step
.groundgoto Grizzly Hills,61.5,18.3,100,0
.goto Grizzly Hills,65.77,17.78
>>前往山顶|cRXP_WARN_BOVE|r Thor Modan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库伦|r
.turnin 11981 >>交任务: |cRXP_FRIENDLY_找到库伦！|r
.accept 11982 >>接任务: |cRXP_LOOT_巨石横飞|r
.target Kurun
step
.goto Grizzly Hills,65.34,13.06,20,0
.goto Grizzly Hills,67.43,12.42,20,0
>>收集地面上的|cRXP_PICK_发光巨石|r
.collect 35734,5,11982,1,-1 
.use 35734 >>将一个|T132384:0|t[Bolder]向下投掷5次到下面的|cRXP_ENEMY_Iron Dwarf|r上（|cRXP_WARN_it可以是相同的|r|cRXX_ENEMY_Dwarf| r）。收集更多|cRXP_PICK_Boulders|r（如果需要）
.complete 11982,1 
.goto Grizzly Hills,67.76,14.89
.mob Iron Rune-Shaper
.mob Rune Reaver
step
.goto Grizzly Hills,65.77,17.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库伦|r
.turnin 11982 >>交任务: |cRXP_FRIENDLY_巨石横飞|r
.accept 12070 >>接任务: |cRXP_LOOT_鼓舞士气|r
.target Kurun
step
.goto Grizzly Hills,67.37,10.52,60,0
.goto Grizzly Hills,70.41,8.54,60,0
.goto Grizzly Hills,69.99,3.76
.use 36764 >>前往一个|cRXP_FRIENDLY_Grizzly Hills Giant|r并在其上使用包中的|T133451:0|t[地球碎片]。杀死产生的|cRXP_ENEMY_Iron符文复仇者|r
.complete 12070,1 
.complete 12070,2 
.target Grizzly Hills Giant
.mob Iron Rune Avenger
step
.goto Grizzly Hills,65.77,17.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库伦|r
.turnin 12070 >>交任务: |cRXP_FRIENDLY_鼓舞士气|r
.accept 11985 >>接任务: |cRXP_LOOT_攻破防线|r
.target Kurun
step
.goto Grizzly Hills,67.50,15.27
>>|cRXP_WARN_小心地跳下雷神魔丹|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘查员奥尔隆德|r
.turnin 12010 >>交任务: |cRXP_FRIENDLY_奥尔隆德的命运|r
.accept 12014 >>接任务: |cRXP_LOOT_坚如磐石？|r
.target Surveyor Orlond
step
#completewith next
.goto Grizzly Hills,67.5,15.5,0
>>杀死水中的|cRXP_ENEMY_Threshadons|r。为|cRXP_Loot_便携式地震仪|r掠夺它们
.complete 12014,2 
.mob Subterranean Thresher
step
>>|cRXP_WARN_点击墙上的字母阅读预言|r
.complete 11993,3 
.goto Grizzly Hills,68.52,16.21
.complete 11993,1 
.goto Grizzly Hills,68.99,14.43
step
#completewith end
#label Secondpr
.goto Grizzly Hills,70.18,14.68,0,0
>>|cRXP_WARN_点击墙上的字母阅读预言|r
.complete 11993,2 
step
.goto Grizzly Hills,70.0,14.0,20,0
.goto Grizzly Hills,67.5,15.5
>>杀死水中的|cRXP_ENEMY_Threshadons|r。为|cRXP_Loot_便携式地震仪|r掠夺它们
.complete 12014,2 
.mob Subterranean Thresher
step
#completewith end
#label Argrum
.goto Grizzly Hills,70.21,12.93,0,0
>>杀死|cRXP_ENEMY_Iron Thane Argrum|r
.complete 11985,1 
.mob Iron Thane Argrum
step
.goto Grizzly Hills,70.61,13.38
.use 35837 >>在桥附近使用您包里的|T133870:0|t[便携式地震仪]。放置地震仪后，掠夺|cRXP_PICK_Stability Profile |r
.complete 12014,1 
step
#requires Argrum
.groundgoto Grizzly Hills,65.1,19.5,40,0
.groundgoto Grizzly Hills,60.9,19.8,70,0
.goto Grizzly Hills,65.77,17.78
>>Leave Thor Modan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库伦|r
.turnin 11985 >>交任务: |cRXP_FRIENDLY_攻破防线|r
.accept 12081 >>接任务: |cRXP_LOOT_加弗洛克|r
.target Kurun
step
#completewith Prophecies
.hs >>Hearth to Westfall旅营地
.cooldown item,6948,>2
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
.goto Grizzly Hills,59.42,26.00
.accept 12770 >>接任务: |cRXP_LOOT_资源调配|r
.target Captain Gryan Stoutmantle
step
#label Prophecies
>>返回Westfall旅营地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔森·迪普迪格|r, |cRXP_FRIENDLY_布鲁加尔·石剪|r
.turnin 11993 >>交任务: |cRXP_FRIENDLY_符文中的预言|r
.goto Grizzly Hills,59.76,27.44
.turnin 12014 >>交任务: |cRXP_FRIENDLY_坚如磐石？|r
.accept 12128 >>接任务: |cRXP_LOOT_找到莱加尔|r
.goto Grizzly Hills,59.80,27.57
.target Torthen Deepdig
.target Brugar Stoneshear
step
>>Travel to Harkor's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈考尔|r, |cRXP_FRIENDLY_克拉斯|r
.turnin 12190 >>交任务: |cRXP_FRIENDLY_跟我的小朋友打招呼|r
.accept 12113 >>接任务: |cRXP_LOOT_等肉下锅|r
.accept 12114 >>接任务: |cRXP_LOOT_心灵的创伤|r
.goto Grizzly Hills,73.77,34.02
.accept 12116 >>接任务: |cRXP_LOOT_孤胆英雄……|r
.goto Grizzly Hills,73.91,34.12
.target Harkor
.target Kraz
step
#completewith Gavrock12
.goto Grizzly Hills,72.5,33.1,0
.goto Grizzly Hills,65.8,33.3,0
.goto Grizzly Hills,68.8,32.9,0
.goto Grizzly Hills,75.8,39.2,0
>>杀死区域中的|cRXP_ENEMY_Shovelhorn|r和|cRXX_ENEMY_Prowlers |r。掠夺他们的|cRXP_Loot_牛排|r和|cRXP-Loot_肉|r
.complete 12113,1 
.complete 12113,2 
.mob Longhoof Grazer
.mob Duskhowl Prowler
step
#completewith next
.cast 43308 >>铸造Find Fish追踪北部鲑鱼学校
.spellmissing 43308
step
#completewith next
.goto Grizzly Hills,81.1,36.3,0
.use 37542 >>在|cRXP_PICK_Northern Salmon|r鱼群上使用您袋子里的|T134325:0|t[渔网]
.complete 12279,1 
step
#label Gavrock12
.goto Grizzly Hills,79.76,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加弗洛克|r
.turnin 12081 >>交任务: |cRXP_FRIENDLY_加弗洛克|r
.accept 12093 >>接任务: |cRXP_LOOT_压制符文|r
.target Gavrock
step
#questguide
>>前往血月岛。杀死|cRXP_ENEMY_Selas|r和|cRXX_ENEMY_Varlam|r
.complete 12164,2 
.goto Grizzly Hills,85.94,27.91
.complete 12164,1 
.goto Grizzly Hills,84.91,23.31
.isOnQuest 12164
.mob Selas
.mob Varlam

step
#questguide
.groundgoto Grizzly Hills,86.34,23.88,40,0
.groundgoto Grizzly Hills,86.5,26.8,20,0
.goto Grizzly Hills,86.96,26.50
>>沿着小路向上走，然后到马厩的一侧。杀死|cRXP_ENEMY_Goremaw|r
.complete 12164,3 
.unitscan Goremaw
step
#questguide
.groundgoto Grizzly Hills,86.82,25.85,15,0
.goto Grizzly Hills,87.65,26.48
>>进入影方楼。转到顶部，然后杀死|cRXP_ENEMY_Arugal|r
.complete 12164,4 
.mob Shade of Arugal
step
#completewith CJars
.goto Grizzly Hills,72.5,33.1,0
.goto Grizzly Hills,65.8,33.3,0
.goto Grizzly Hills,68.8,32.9,0
.goto Grizzly Hills,75.8,39.2,0
>>杀死区域中的|cRXP_ENEMY_Shovelhorn|r和|cRXX_ENEMY_Prowlers |r。掠夺他们的|cRXP_Loot_牛排|r和|cRXP-Loot_肉|r
.complete 12113,1 
.complete 12113,2 
.mob Longhoof Grazer
.mob Duskhowl Prowler
step
#completewith next
.goto Grizzly Hills,81.1,36.3,0
.use 37542 >>在|cRXP_PICK_Northern Salmon|r鱼群上使用您袋子里的|T134325:0|t[渔网]
.complete 12279,1 
step
.goto Grizzly Hills,75.03,37.18
>>杀死紫色圆圈周围的|cRXP_ENEMY_Iron符文编织者。当|cRXP_ENEMY_Oversear Lochli|r产卵时杀死他。
.complete 12093,3 
.mob Iron Rune-Weaver
.mob Overseer Lochli
step
.goto Grizzly Hills,71.85,34.26
>>杀死紫色圆圈周围的|cRXP_ENEMY_Iron符文编织者。当|cRXP_ENEMY_Oversear Korgan|r产卵时杀死他。
.complete 12093,2 
.mob Iron Rune-Weaver
.mob Overseer Korgan
step
.goto Grizzly Hills,67.52,29.46
>>杀死紫色圆圈周围的|cRXP_ENEMY_Iron符文编织者。杀死|cRXP_ENEMY_Oversear Durval|r。
.complete 12093,1 
.mob Iron Rune-Weaver
.mob Overseer Durval
step
.goto Grizzly Hills,78.79,43.70
>>杀死紫色圆圈周围的|cRXP_ENEMY_Iron符文编织者。在|cRXP_ENEMY_Oversear Brunon|r产卵时杀死他。
.complete 12093,4 
.mob Iron Rune-Weaver
.mob Overseer Brunon
step
#completewith Stones3
.goto Grizzly Hills,81.1,36.3,0
.use 37542 >>在|cRXP_PICK_Northern Salmon|r鱼群上使用您袋子里的|T134325:0|t[渔网]
.complete 12279,1 
step
.goto Grizzly Hills,79.76,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加弗洛克|r
.turnin 12093 >>交任务: |cRXP_FRIENDLY_压制符文|r
.accept 12094 >>接任务: |cRXP_LOOT_潜在的能量|r
.target Gavrock
step
#label Stones3
.use 36787 >>在东部灰熊山周围的|cRXP_PICK_blue发光石头|r上使用|T134562:0|t[Gavrock碎片]
.complete 12094,1 
.goto Grizzly Hills,71.25,39.73
step
.use 36787 >>在东部灰熊山周围的|cRXP_PICK_blue发光石头|r上使用|T134562:0|t[Gavrock碎片]
.complete 12094,3 
.goto Grizzly Hills,74.08,44.23
step
#completewith Gavrock4
.goto Grizzly Hills,81.1,36.3,0
.use 37542 >>在|cRXP_PICK_Northern Salmon|r鱼群上使用您袋子里的|T134325:0|t[渔网]
.complete 12279,1 
step
.use 36787 >>在东部灰熊山周围的|cRXP_PICK_blue发光石头|r上使用|T134562:0|t[Gavrock碎片]
.complete 12094,2 
.goto Grizzly Hills,78.88,39.97
step
#label Gavrock4
.goto Grizzly Hills,79.76,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加弗洛克|r
.turnin 12094 >>交任务: |cRXP_FRIENDLY_潜在的能量|r
.accept 12099 >>接任务: |cRXP_LOOT_终获解救|r
.target Gavrock
step
.goto Grizzly Hills,75.48,34.51,60,0
.goto Grizzly Hills,77.85,37.64,60,0
.goto Grizzly Hills,80.04,38.56,60,0
.goto Grizzly Hills,81.59,37.94,60,0
.goto Grizzly Hills,81.35,45.70,60,0
.goto Grizzly Hills,75.48,34.51
.use 37542 >>在|cRXP_PICK_Northern Salmon|r鱼群上使用您袋子里的|T134325:0|t[渔网]
.complete 12279,1 
step
.goto Grizzly Hills,76.1,41.4,70,0
.goto Grizzly Hills,66.4,29.7
.use 36796 >>在你的包里用|T134397:0|t[Gavrock的Runebreaker]攻击一个|cRXP_ENEMY_Runed Giant |r。|cRXP_WARN_如果它失败了，而这个巨人仍然是敌对的|r，|cRXP-WARN_再次使用它|r（|cRXP_WARN_直到它变成|r|cRXT_FRIENDLY_FRIENDLY|r）|cRXP_WARN_在等待物品冷却的同时杀死暴民或完成其他目标|r
.complete 12099,1 
.mob Runed Giant
step
.goto Grizzly Hills,69.10,40.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_休·格兰斯|r
.turnin 12279 >>交任务: |cRXP_FRIENDLY_熊的美食|r
.target Hugh Glass
step
#questguide
.goto Grizzly Hills,57.5,41.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨莎|r
.turnin 12164 >>交任务: |cRXP_FRIENDLY_狼人的末日|r
.isQuestComplete 12164
.target Sasha
step
#completewith next
.abandon 12164 >>Worg的放弃时间
step
.goto Grizzly Hills,79.76,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加弗洛克|r
.turnin 12099 >>交任务: |cRXP_FRIENDLY_终获解救|r
.target Gavrock
step
#completewith next
.goto Grizzly Hills,73.0,24.6,0
.goto Grizzly Hills,72.6,26.8,0
.goto Grizzly Hills,70.1,26.7,0
.goto Grizzly Hills,70.2,23.5,0
>>杀死该区域中的|cRXP_ENEMY_Drakkari Oracles|r和|cRXX_ENEMY_Protectors|r。掠夺他们的|cRXP_Loot_Mojo|r
.complete 12114,1 
.complete 12114,2 
.collect 36758,5,12120,1 
.mob Drakkari Oracle
.mob Drakkari Protector
step
#label CJars
.goto Grizzly Hills,71.4,22.9,30,0
.goto Grizzly Hills,71.2,21.4,30,0
.goto Grizzly Hills,70.7,19.1
>>进入德拉基尔金遗址
>>在装满烈酒的房间里偷走|cRXP_PICK_Drakkari Canopic Jars|r|cRXP_WARN_尝试一次将它们全部掠夺，这样你就不会聚集超过1个精灵|r
.complete 12116,1 
step
.goto Grizzly Hills,69.49,17.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈里森·琼斯|r
.accept 12082 >>接任务: |cRXP_LOOT_喔——哒！！|r
.timer 107,Campfire Room Closes
.target Harrison Jones
step
.goto Grizzly Hills,69.37,18.23
>>|cRXP_WARN_在营火室关闭之前，在笼子所在的同一个房间里快速掠夺|r|cRXP_PICK_Drakkari平板电脑|r|cRXP_WARN_in|r
.complete 12068,1 
step
#completewith next
.goto Grizzly Hills,73.0,24.6,0
.goto Grizzly Hills,72.6,26.8,0
.goto Grizzly Hills,70.1,26.7,0
.goto Grizzly Hills,70.2,23.5,0
>>杀死该区域中的|cRXP_ENEMY_Drakkari Oracles|r和|cRXX_ENEMY_Protectors|r。掠夺他们的|cRXP_Loot_Mojo|r
.complete 12114,1 
.complete 12114,2 
.collect 36758,5,12120,1 
.mob Drakkari Oracle
.mob Drakkari Protector
step
#label Harrison
.goto Grizzly Hills,70.5,17.7,25,0
.goto Grizzly Hills,73.52,24.02
>>|cRXP_WARN_在篝火房里等待|cRXP_ENEMY_Snake|r事件|r。专注于杀死添加的东西，而|cRXP_FRIENDLY_Harrison|r在|cRXT_ENEMY_斯内克|r上制造威胁。添加的东西死后，杀死|cRXD_ENEMY_斯内克|r（|cRXP-WARN_如果你足够强壮，你可以杀死|r|cRXP_ENEMY_Snake|r|cRXP_WARN_i）
>>|cRXP_WARN_跟随|r|cRXP_FRIENDLY_Harrison|r|cRXP_WARN_out走出废墟|r
.complete 12082,1 
.target Harrison Jones
.mob Tecahuna
step
.goto Grizzly Hills,73.0,24.6,70,0
.goto Grizzly Hills,72.6,26.8,70,0
.goto Grizzly Hills,70.1,26.7,70,0
.goto Grizzly Hills,73.0,24.6,70,0
.goto Grizzly Hills,72.6,26.8,70,0
.goto Grizzly Hills,70.1,26.7,70,0
.goto Grizzly Hills,70.2,23.5
>>杀死该区域中的|cRXP_ENEMY_Drakkari Oracles|r和|cRXX_ENEMY_Protectors|r。掠夺他们的|cRXP_Loot_Mojo|r
.complete 12114,1 
.complete 12114,2 
.collect 36758,5,12120,1 
.mob Drakkari Oracle
.mob Drakkari Protector
step
#completewith next
.goto Grizzly Hills,68.8,32.9,0
.goto Grizzly Hills,75.8,39.2,0
>>杀死该区域的|cRXP_ENEMY_Shovelhorn|r。掠夺他们的|cRXP_Loot_Steak|r
.complete 12113,2 
.mob Longhoof Grazer
step
.goto Grizzly Hills,72.5,33.1,60,0
.goto Grizzly Hills,65.8,33.3
>>杀死区域中的|cRXP_ENEMY_Prowlers|r。掠夺他们的|cRXP_Loot_Meat|r
.complete 12113,1 
.mob Duskhowl Prowler
step
.goto Grizzly Hills,68.84,32.96,60,0
.goto Grizzly Hills,77.90,43.10,60,0
.goto Grizzly Hills,78.40,39.37,60,0
.goto Grizzly Hills,69.64,38.64
>>杀死该区域的|cRXP_ENEMY_Shovelhorn|r。掠夺他们的|cRXP_Loot_Steak|r
.complete 12113,2 
.mob Longhoof Grazer
step
>>Return to Harkor's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈考尔|r, |cRXP_FRIENDLY_克拉斯|r
.turnin 12113 >>交任务: |cRXP_FRIENDLY_等肉下锅|r
.turnin 12082 >>交任务: |cRXP_FRIENDLY_喔——哒！！|r
.turnin 12114 >>交任务: |cRXP_FRIENDLY_心灵的创伤|r
.goto Grizzly Hills,73.77,34.02,-1
.turnin 12116 >>交任务: |cRXP_FRIENDLY_孤胆英雄……|r
.accept 12120 >>接任务: |cRXP_LOOT_达卡古尔之槌|r
.goto Grizzly Hills,73.91,34.12,-1
.target Harkor
.target Kraz
step
.goto Grizzly Hills,71.54,29.78,50,0
.goto Grizzly Hills,73.69,29.72
.line Grizzly Hills,71.54,29.78,,73.69,29.72
>>杀死|cRXP_ENEMY_Drak'aguul|r。掠夺他的|cRXX_Loot_Mallet|r
.complete 12120,1 
.unitscan Drak'aguul
step
.goto Grizzly Hills,73.91,34.12
>>Return to Harkor's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉斯|r
.turnin 12120 >>交任务: |cRXP_FRIENDLY_达卡古尔之槌|r
.accept 12121 >>接任务: |cRXP_LOOT_死后相见|r
.target Kraz
step
.goto Grizzly Hills,71.74,26.20
>>前往Brazier（|cRXP_WARN_NOT火被3个铜锣包围|r）。使用|T134812:0|t[德拉库鲁灵药]
.use 35797 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达库鲁|r
.turnin 12068 >>交任务: |cRXP_FRIENDLY_灰尘之声|r

.target Drakuru
step
.goto Grizzly Hills,71.41,24.55
.use 36834 >>前往德拉基金遗址的3个铜锣。使用您包中的|T133474:0|t[Charged Drakil'jin Mallet]
.cast 47701
.timer 13,See You on the Other Side RP
.complete 12121,1 
step
.goto Grizzly Hills,71.4,22.9,30,0
.goto Grizzly Hills,71.2,21.4,30,0
.goto Grizzly Hills,69.41,19.48
>>进入Drakil'jin废墟（|cRXP_WARN_你可以以幽灵形态施法|r）
>>在你护送|cRXP_FRIENDLY_Harrison|r离开的房间之前进入主房间
.use 36834 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘休|r, Use the Gong again if you somehow lose the, buff
.link /console ffxDeath 0 >>如果由于鬼影效果而看不到，请复制粘贴此命令(单击此处)，然后键入/reload
.turnin 12121 >>交任务: |cRXP_FRIENDLY_死后相见|r
.accept 12137 >>接任务: |cRXP_LOOT_冷静一下，伙计|r
.target Gan'jo
step
.goto Grizzly Hills,69.36,19.57
>>在小型喷泉状结构内偷走|cRXP_PICK_green胸脯|r
.complete 12137,1 
step
.goto Grizzly Hills,69.41,19.48,9,0
.goto Grizzly Hills,71.4,19.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘休|r, Ask him to return you to the world of the living
.use 36859 >>在你拿到罐子的房间里的|cRXP_ENEMY_Ancient Drakkaris|r上使用|T133850:0|t[永恒沉睡的雪]，然后掠夺他们跑去的|cRXP_PICK_Mummys|r
.complete 12137,2 
.skipgossip
.target Gan'jo
.mob Ancient Drakkari Soothsayer
.mob Ancient Drakkari Warmonger
step
.goto Grizzly Hills,73.91,34.12
>>Return to Harkor's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉斯|r
.turnin 12137 >>交任务: |cRXP_FRIENDLY_冷静一下，伙计|r
.accept 12152 >>接任务: |cRXP_LOOT_金亚拉克的末日|r
.target Kraz
step
#completewith end
#label SacreD
.goto Grizzly Hills,71.4,22.9,30,0
.goto Grizzly Hills,71.2,21.4,30,0
.goto Grizzly Hills,71.25,19.66
>>进入德拉基尔金遗址
>>偷走房间东北墙上的|cRXP_PICK_碗水果|r
.collect 36870,1 
step
#requires SacreD
#completewith next
.goto Grizzly Hills,71.4,22.9,30,0
.goto Grizzly Hills,71.41,24.55
.use 36873 >>使用库存中的|T132123:0|t[Drakari Spirit Dust]制作|T134056:0|t二手Drakkari产品
.collect 37063,1 
step
#requires SacreD
.goto Grizzly Hills,71.41,24.55
.use 37063 >>回到德拉基金遗址外的3个铜锣。使用|T134056:0|t[Infused Drakkari Offering]
.complete 12152,1 
step
.goto Grizzly Hills,73.91,34.12
>>Return to Harkor's Camp
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉斯|r
.turnin 12152 >>交任务: |cRXP_FRIENDLY_金亚拉克的末日|r
.target Kraz
step
>>行进到浏览者的点
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人基连|r, |cRXP_FRIENDLY_莱加尔·断眉|r
.turnin 12128 >>交任务: |cRXP_FRIENDLY_找到莱加尔|r
.accept 12129 >>接任务: |cRXP_LOOT_完美的计划|r
.goto Grizzly Hills,77.09,48.64
.accept 12180 >>接任务: |cRXP_LOOT_被俘虏的勘探员|r
.goto Grizzly Hills,76.97,48.44
.target Mountaineer Kilian
.target Raegar Breakbrow
step
#completewith Varana
#label Blueprints
.goto Grizzly Hills,81.5,60.3,0
.goto Grizzly Hills,76.3,62.9,0
.goto Grizzly Hills,75.0,57.0,0
>>杀死该区域的|cRXP_ENEMY_Iron Rune Smiths|r。掠夺它们以获取|cRXP_Loot_Golem蓝图|r
.collect 36849,1,12129,1 
.collect 36850,1,12129,1 
.collect 36851,1,12129,1 
.mob Iron Rune-Smith
step
#completewith next
#requires Blueprints
.use 36849 >>单击包中的任意一个|T134331:0|t[Golem Blueprint Section]，将它们组合成|T134332:0|tWar Golem Blueprint
.complete 12129,1 
step
#label Varana
>>杀死|cRXP_ENEMY_Oversers|r、|cRXD_ENEMY_War Golems|r和|cRXP_ENEMY_Sentrys|r。掠夺它们以获取|cRXP_Loot_Dun Argol笼钥匙|r
>>使用|cRXP_LOOT_Keys|r释放建筑中笼内的|cRXT_FRIENDLY_Prospector Gann|r、外部的|cRXP_FRIENDLY_Prosector Torgan|r和外部的|c
.collect 37013,3,12180,7,-1 
.complete 12180,1 
.goto Grizzly Hills,76.46,55.43
.complete 12180,2 
.goto Grizzly Hills,76.35,58.53
.complete 12180,3 
.goto Grizzly Hills,76.06,61.07
.mob Iron Rune Overseer
.mob Runic Lightning Gunner
.mob Runic War Golem
.mob Lightning Sentry
.target Prospector Gann
.target Prospector Torgan
.target Prospector Varana
step
.goto Grizzly Hills,76.68,63.62,30,0
.goto Grizzly Hills,76.77,58.73,30,0
.goto Grizzly Hills,75.19,57.22,30,0
.goto Grizzly Hills,76.56,55.09
>>杀死该区域的|cRXP_ENEMY_Iron Rune Smiths|r。掠夺它们以获取|cRXP_Loot_Golem蓝图|r
.collect 36849,1,12129,1 
.collect 36850,1,12129,1 
.collect 36851,1,12129,1 
.mob Iron Rune-Smith
step
.goto Grizzly Hills,77.09,48.64
.use 36849 >>单击包中的任意一个|T134331:0|t[Golem Blueprint Section]，将它们组合成|T134332:0|tWar Golem Blueprint
.complete 12129,1 
step
>>行进到浏览者的点
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱加尔·断眉|r, |cRXP_FRIENDLY_巡山人基连|r
.turnin 12129 >>交任务: |cRXP_FRIENDLY_完美的计划|r
.accept 12130 >>接任务: |cRXP_LOOT_抢夺零件|r
.goto Grizzly Hills,77.09,48.64
.turnin 12180 >>交任务: |cRXP_FRIENDLY_被俘虏的勘探员|r
.accept 12183 >>接任务: |cRXP_LOOT_搜集制服|r
.goto Grizzly Hills,76.97,48.44
.target Raegar Breakbrow
.target Mountaineer Kilian
step
#completewith next
.goto Grizzly Hills,76.2,62.8,0
>>掠夺|cRXP_PICK_War Golem零件|r，这些零件主要散布在Dun Argol的中高层主楼中|cRXP_WARN_不要下楼|r
.complete 12130,1 
step
.goto Grizzly Hills,75.99,57.88,30,0
.goto Grizzly Hills,77.81,59.06,30,0
.goto Grizzly Hills,79.13,59.52
>>杀死一个|cRXP_ENEMY_Iron符文监督|r。掠夺他的|cRXX_OOT_Uniform|r
.complete 12183,1 
.mob Iron Rune Overseer
step
.goto Grizzly Hills,75.77,57.02,40,0
.goto Grizzly Hills,75.49,58.20,40,0
.goto Grizzly Hills,73.56,60.02,40,0
.goto Grizzly Hills,76.18,62.77,30,0
.goto Grizzly Hills,77.07,62.52,30,0
.goto Grizzly Hills,75.90,63.94,30,0
.goto Grizzly Hills,75.99,57.88
>>掠夺|cRXP_PICK_War Golem零件|r，这些零件主要散布在Dun Argol的中高层主楼中|cRXP_WARN_不要下楼|r
.complete 12130,1 
step
>>返回浏览点
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱加尔·断眉|r, |cRXP_FRIENDLY_巡山人基连|r
.turnin 12130 >>交任务: |cRXP_FRIENDLY_抢夺零件|r
.accept 12131 >>接任务: |cRXP_LOOT_我们有能源|r
.goto Grizzly Hills,77.09,48.64
.turnin 12183 >>交任务: |cRXP_FRIENDLY_搜集制服|r
.accept 12184 >>接任务: |cRXP_LOOT_拍摄照片|r
.goto Grizzly Hills,76.97,48.44
.target Raegar Breakbrow
.target Mountaineer Kilian
step
#completewith next
.goto Grizzly Hills,76.2,62.8,0
.use 37045 >>在Dun Argol杀死|cRXP_ENEMY_铁矮人|r。在他们的尸体上使用|T134442:0|t[Kilian的相机]
.complete 12184,1 
.mob Iron Rune Overseer
.mob Iron Rune-Smith
.mob Runic Lightning Gunner
step
>>进入任一建筑
>>杀死|cRXP_ENEMY_Rune-Smith Durar|r和|cRXD_ENEMY_Rune-Smith Kalthorn |r。掠夺它们的|cRXP_Loot_动力电池|r
.complete 12131,1 
.goto Grizzly Hills,74.89,56.91,-1
.complete 12131,2 
.goto Grizzly Hills,76.83,59.35,-1
.mob Rune-Smith Durar
.mob Rune-Smith Kathorn
step
.goto Grizzly Hills,76.52,55.06,30,0
.goto Grizzly Hills,76.68,63.61
.use 37045 >>在Dun Argol杀死|cRXP_ENEMY_铁矮人|r。在他们的尸体上使用|T134442:0|t[Kilian的相机]
.complete 12184,1 
.mob Iron Rune Overseer
.mob Iron Rune-Smith
.mob Runic Lightning Gunner
step
>>返回浏览点
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱加尔·断眉|r, |cRXP_FRIENDLY_巡山人基连|r
.turnin 12131 >>交任务: |cRXP_FRIENDLY_我们有能源|r
.accept 12138 >>接任务: |cRXP_LOOT_……我们没有能源|r
.goto Grizzly Hills,77.09,48.64
.turnin 12184 >>交任务: |cRXP_FRIENDLY_拍摄照片|r
.accept 12185 >>接任务: |cRXP_LOOT_笑脸面对洛肯！|r
.goto Grizzly Hills,76.97,48.44
.target Raegar Breakbrow
.target Mountaineer Kilian
step
.goto Grizzly Hills,75.55,50.72,60,0
.goto Grizzly Hills,73.21,51.94,60,0
.goto Grizzly Hills,73.30,57.38
.use 36936 >>使用行李中的|T133015:0|t[Golem Control Unit]。用|cRXP_FRIENDLY_Deplated War Golem|r出局（|cRXP_WARN_within 30码或以下|r）杀死|cRXP _ENEMY_Lightning Sentry|r，然后等待它（|cRXP_WARN_again|r，|cRXP_WARN_within 30码或以下| r）收集|cRX_PICK_Sentry的冲锋|r
>>小心，因为|cRXP_ENEMY_Lightning哨兵|r对自然免疫 << Shaman/Druid
.complete 12138,1 
.mob Lightning Sentry
step
#completewith next
.cast 48064 >>安装好，然后使用包中的|T133665:0|t[监督伪装工具包]。
step
.groundgoto Grizzly Hills,78.20,59.20,60,0
.goto Grizzly Hills,81.60,60.34
.cast 3365 >>|cRXP_WARN_伪装时不要施放任何魔法|r。骑到最东边的建筑，点击|cRXP_PICK_Loken的基座|r。|cRXP_WARN_不要等待RP事件结束|r
.timer 24,Message from Loken RP

.use 37071
step
>>返回浏览点
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱加尔·断眉|r, |cRXP_FRIENDLY_巡山人基连|r
.turnin 12138 >>交任务: |cRXP_FRIENDLY_……我们没有能源|r
.accept 12153 >>接任务: |cRXP_LOOT_铁领主和他的保镖|r
.accept 12154 >>接任务: |cRXP_LOOT_停电|r
.goto Grizzly Hills,77.09,48.64
.turnin 12185 >>交任务: |cRXP_FRIENDLY_笑脸面对洛肯！|r
.goto Grizzly Hills,76.97,48.44
.target Raegar Breakbrow
.target Mountaineer Kilian
step
#completewith next
.goto Grizzly Hills,75.95,63.28
.vehicle >>前往顶层建筑，乘电梯到底层。使用|T133015:0|t[Golem Control Unit]
.use 36865
step
>>使用|T136099:0|t“EMP”（2）移除|cRXP_ENEMY_Furyhammer的|r刀枪不入和眩晕|cRXD_ENEMY_The Anvil|r垃圾邮件|T136049:0|t《带电粉碎》（1），右键点击他杀死|cRXX_ENEMY_ Furyhammer|r
.complete 12153,1 
.goto Grizzly Hills,76.36,63.72
.use 36865
.mob Iron Thane Furyhammer
step
>>|cRXP_WARN_Exit the golem|r
.use 36935 >>在底层中间使用|T133715:0|t[Raegar炸药]|cRXP_WARN_in摧毁电源核心|r
.complete 12154,1 
.goto Grizzly Hills,76.46,63.25
.use 36865
step
.goto Grizzly Hills,77.09,48.64
>>返回浏览点
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱加尔·断眉|r
.turnin 12153 >>交任务: |cRXP_FRIENDLY_铁领主和他的保镖|r
.turnin 12154 >>交任务: |cRXP_FRIENDLY_停电|r
.target Raegar Breakbrow
step << Druid
#completewith DruidTrain2
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <75,1
step << Druid
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48440 >>训练你的职业技能
.xp <75,1
.target Loganaar
step << Druid
#label DruidTrain2
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 48443 >>训练你的职业技能
.xp <77,1
.target Loganaar
step << DK
#completewith DKTrain2
.cast 50977 >>铸造死亡之门
.zoneskip Eastern Plaguelands
.xp <75,1
step << DK
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49923 >>训练你的职业技能
.xp <75,1
.target Amal'thazad
step << DK
#label DKTrain2
.goto Eastern Plaguelands,80.30,48.01
>>前往: |cRXP_PICK_东瘟疫之地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿曼萨加德|r
.train 49894 >>训练你的职业技能
.xp <76,1
.target Amal'thazad
step << Mage
#completewith MageTrain2
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <75,1
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42955 >>训练你的职业技能
.xp <75,1
.target Elsharin
.target Jennea Cannon
step << Mage
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42920 >>训练你的职业技能
.xp <76,1
.target Elsharin
.target Jennea Cannon
step << Mage
#label MageTrain2
.goto Stormwind City,49.55,85.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.train 42985 >>训练你的职业技能
.xp <77,1
.target Elsharin
.target Jennea Cannon
step << Shaman/Druid/DK/Mage
#completewith next
.hs >>Westfall旅营地之心
step
#completewith next
.goto Grizzly Hills,59.89,26.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samuel|r
.fly Amberpine Lodge >>飞往琥珀旅馆
.noflyable Grizzly Hills,300
.target Samuel Clearbook
step
#questguide
.goto Grizzly Hills,31.16,59.47
>>返回Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_圣职者塞瑞恩|r
.turnin 12248 >>交任务: |cRXP_FRIENDLY_沃达希尔的树苗|r
.turnin 12250 >>交任务: |cRXP_FRIENDLY_沃达希尔的种子|r
.turnin 12249 >>交任务: |cRXP_FRIENDLY_乌索克，巨熊之神|r
.isQuestComplete 12249
.target Hierophant Thayreen
step
#label end
.goto Grizzly Hills,31.16,59.47
>>返回Amberpine Lodge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_圣职者塞瑞恩|r
.turnin 12248 >>交任务: |cRXP_FRIENDLY_沃达希尔的树苗|r
.turnin 12250 >>交任务: |cRXP_FRIENDLY_沃达希尔的种子|r
.target Hierophant Thayreen
step << DK/Mage/Druid
.goto Grizzly Hills,31.31,59.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦娜·格雷|r
.fly Westfall Brigade >>飞往威斯特福尔旅营地
.target Vana Grey
step << !DK !Mage !Druid
#completewith next
.goto Grizzly Hills,32.00,59.78
.zone Dalaran >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_达拉然|r
.target Magistrix Haelenai
.accept 12794 >>接任务: |cRXP_LOOT_魔法王国达拉然|r
.zoneskip Stormwind City
.zoneskip Dalaran
.target Magistrix Haelenai
step << !DK !Mage !Druid
.goto Grizzly Hills,32.00,59.78
.zone Dalaran >>前往: |cRXP_PICK_达拉然|r
.target Magistrix Haelenai
.zoneskip Stormwind City
.skipgossip
step << !DK !Druid !Mage
.abandon 12794 >>放弃达拉然魔法王国|cRXP_WARN_请勿将其打开|r
step << Rogue/Warlock/Priest/Paladin
#completewith next
.goto Dalaran,38.65,59.33,15,0
.goto Dalaran,39.48,63.98
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Rogue/Warlock
#completewith next
.goto Ironforge,40.10,12.16,30,0
.goto Ironforge,52.92,12.82,10,0 << Rogue
.goto Ironforge,50.20,7.46,10 >>进入大楼 << Warlock
.goto Ironforge,51.88,14.30,10 >>进入大楼 << Rogue
step << Warlock
.goto Ironforge,50.35,5.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r
.target Briarthorn
.train 47813 >>训练你的职业技能
.xp <77,1
step << Rogue
.goto Ironforge,51.50,15.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r
.target Fenthwick
.train 48637 >>训练你的职业技能
.xp <76,1
step << Priest
.goto Ironforge,24.40,9.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱纳·火崖|r
.target Braenna Flintcrag
.train 48124 >>训练你的职业技能
.xp <75,1
step << Paladin
.goto Ironforge,24.55,4.47,-1
.goto Ironforge,23.11,6.13,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔杜克·凝眉|r, |cRXP_FRIENDLY_布兰度尔·铁锤|r
.target Beldruk Doombrow
.target Brandur Ironhammer
.train 48818 >>训练你的职业技能
.xp <75,1
step << Shaman/Hunter/Warrior
#completewith next
.goto Dalaran,38.65,59.33,15,0
.goto Dalaran,38.21,66.36
.zone The Exodar >>前往: |cRXP_PICK_埃索达|r
step << Shaman
#completewith ShamanTraining2
.goto The Exodar,35.15,48.76,20,0
.goto The Exodar,34.96,43.68,20 >>前往|cRXP_FRIENDLY_Gurrag|r
step << Shaman
.goto The Exodar,24.27,39.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古尔拉格|r
.target Gurrag
.train 49280 >>训练你的职业技能
.xp 75,1
step << Shaman
#label ShamanTraining2
.goto The Exodar,24.27,39.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古尔拉格|r
.target Gurrag
.train 58803 >>训练你的职业技能
.xp 75,1
step << Hunter/Warrior
#completewith next
.goto The Exodar,46.17,72.79,20,0
.goto The Exodar,49.21,74.94,20,0
.goto The Exodar,53.74,85.39,30,0 << Warrior
.goto The Exodar,53.74,85.39,30 >>前往|cRXP_FRIENDLY_DELEMIS|r << Hunter
.goto The Exodar,50.87,80.83,15,0 << Warrior
.goto The Exodar,54.07,78.05,15 >>向|cRXP_FRIENDLY_Behomat|r行进 << Warrior
step << Hunter
.goto The Exodar,47.07,86.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德雷米斯|r
.target Deremiis
.train 61005 >>训练你的职业技能
.xp <75,1
step << Hunter
.goto The Exodar,47.07,86.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德雷米斯|r
.target Deremiis
.train 53338 >>训练你的职业技能
.xp <76,1
step << Warrior
.goto The Exodar,55.58,82.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝霍玛特|r
.target Behomat
.train 55694 >>训练你的职业技能
.xp <75,1
step << !DK !Druid !Mage
#completewith ZulDrak
.hs >>Westfall旅营地之心
step
.goto Grizzly Hills,59.42,26.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
.accept 12770 >>接任务: |cRXP_LOOT_资源调配|r
.target Captain Gryan Stoutmantle
step
#label ZulDrak
.goto Grizzly Hills,59.89,26.69
.zone Zul'Drak >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_祖达克|r
.skipgossip 26876,2
.target Samuel Clearbook
]])
RXPGuides.RegisterGuide([[
#cata
#Cata
#speedrunguide
#xprate >1.49 << wotlk
#group RXP Cataclysm 60-80 (A)
<< Alliance
#name 74-75 Grizzly Hills
#version 5
#next 75-76 Zul'Drak
#include 73-75 灰熊丘陵@pt1start-pt1end
step
.goto 116/571,-2812.200,3418.200
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伐木工德拉克|r
.target Woodsman Drake
.turnin 12255 >>交任务: |cRXP_FRIENDLY_沃德伦的领主|r
step
#include 73-75 灰熊丘陵@pt2start-pt2end
step
.goto Grizzly Hills,26.46,31.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_笼中的囚犯|r, 他在里面
.turnin 12302 >>交任务: |cRXP_FRIENDLY_萨莎的警告|r
>>|cRXP_WARN_跳过后续任务|r
step
.goto ZulDrak,32.18,74.39
.zone ZulDrak >>向西北方向前往祖德拉克
]])
